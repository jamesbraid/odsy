.section .text
.set noat
.set noreorder


glabel odsy_usdelay
    li         $at,0xb480
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
    li         $a6,0xb480
    ld         $s0,8($sp)
    daddiu     $sp,$sp,32
    daddu      $a6,$a6,$a3
    li         $a5,1
    jr         $ra
    sw         $a5,0($a6)
.L0000016c:
    li         $a0,0xb4f8
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

glabel find_odsypipe
    daddiu     $sp,$sp,-32
    sd         $a1,0($sp)
    sd         $s0,8($sp)
    sd         $ra,16($sp)
    jal        find_gfxpipe
    move       $s0,$a2
    beqz       $v0, .L0000020c
    li         $a5,-1
    li         $v1,84
    lbu        $at,5($v0)
    beq        $at, $v1, .L00000214
    move       $a5,$zero
.L000001f8:
    ld         $ra,16($sp)
.L000001fc:
    move       $v0,$a5
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000020c:
    b          .L000001fc
    ld         $ra,16($sp)
.L00000214:
    move       $a0,$v0
    jal        find_first_component
    li         $a1,10
    beqz       $v0, .L0000025c
    ld         $a0,0($sp)
    beqz       $a0, .L00000244
    nop
    lh         $a1,34($v0)
    bnez       $s0, .L0000024c
    sh         $a1,0($a0)
    b          .L00000254
    nop
.L00000244:
    beqz       $s0, .L00000254
    nop
.L0000024c:
    lbu        $a2,32($v0)
    sb         $a2,0($s0)
.L00000254:
    b          .L000001f8
    li         $a5,1
.L0000025c:
    b          .L000001f8
    move       $a5,$zero

glabel odsy_earlyinit
    ld         $a1,-30720($gp)
    daddiu     $a0,$gp,0
    daddiu     $sp,$sp,-80
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
    daddiu     $a0,$a0,88
    sd         $s4,16($sp)
    lbu        $a0,0($v0)
    sd         $s0,24($sp)
    li         $a2,100
    sd         $s2,32($sp)
    li         $a1,68
    beq        $a0, $a2, .L00000420
    sd         $s1,40($sp)
    beq        $a0, $a1, .L00000420
    li         $s4,1
    sw         $s4,-30684($gp)
    jal        odsyCheckBoardPointers
    sw         $zero,-30712($gp)
    lw         $a3,0($gp)
    sd         $s5,48($sp)
    sd         $s3,56($sp)
    li         $v0,-55
    move       $s0,$zero
    blez       $a3, .L00000430
    sd         $s6,64($sp)
    dsll32     $s5,$v0,0x19
    lui        $s3,0x1
    b          .L00000318
    move       $s6,$zero
.L00000308:
    lw         $a4,0($gp)
.L0000030c:
    addiu      $s0,$s0,1
    slt        $a4,$s0,$a4
    beqz       $a4, .L000003e4
.L00000318:
    move       $a0,$s0
    daddiu     $a1,$sp,0
    jal        find_odsypipe
    daddiu     $a2,$sp,2
    beqz       $v0, .L0000030c
    lw         $a4,0($gp)
    bltz       $v0, .L000003e4
    nop
    jal        odsyCheckBoardPointer
    move       $a0,$s0
    ld         $s1,0($gp)
    dsll       $s2,$s0,0x3
    daddu      $s1,$s1,$s2
    ld         $s1,0($s1)
    sh         $s4,788($s1)
    daddu      $s2,$s3,$s1
    lbu        $a1,2($sp)
    sb         $a1,-19392($s2)
    lbu        $a0,2($sp)
    sb         $a0,793($s1)
    lh         $v1,0($sp)
    li         $a1,-1
    sh         $a1,-19394($s2)
    sh         $v1,-19396($s2)
    sh         $s0,790($s1)
    lbu        $a5,2($sp)
    lw         $a4,-30688($gp)
    lh         $v0,0($sp)
    ld         $a0,-30720($gp)
    beqz       $a5, .L00000428
    dsll32     $v0,$v0,0x1
    dsll       $a0,$a5,0x18
    daddu      $a0,$v0,$a0
    daddu      $a0,$s5,$a0
.L000003a0:
    beqz       $a4, .L00000444
    sd         $a0,824($s1)
.L000003a8:
    sw         $s4,-19328($s2)
    lw         $a1,-30712($gp)
.L000003b0:
    bne        $a1, $s0, .L0000030c
    lw         $a4,0($gp)
    jal        odsyReset
    move       $a0,$s0
    jal        odsy_tport_lock_init
    nop
    lhu        $a3,234($s1)
    lhu        $a2,232($s1)
    ld         $a1,-30704($gp)
    jal        htp_register_board
    ld         $a0,824($s1)
    b          .L00000308
    li         $s6,1
.L000003e4:
    beqz       $s6, .L00000430
    li         $v0,1
    ld         $s5,48($sp)
    ld         $s3,56($sp)
    ld         $s6,64($sp)
    sw         $zero,-30688($gp)
    sw         $zero,-30684($gp)
    sw         $s0,0($gp)
.L00000404:
    ld         $s4,16($sp)
    ld         $ra,8($sp)
    ld         $s0,24($sp)
    ld         $s2,32($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000420:
    b          .L00000404
    move       $v0,$zero
.L00000428:
    b          .L000003a0
    daddu      $a0,$a0,$v0
.L00000430:
    ld         $s6,64($sp)
    ld         $s3,56($sp)
    ld         $s5,48($sp)
    b          .L00000404
    move       $v0,$zero
.L00000444:
    jal        in_panic_mode
    nop
    bnez       $v0, .L000003a8
    nop
    lw         $a1,-19328($s2)
    bnez       $a1, .L000003a8
    nop
    b          .L000003b0
    lw         $a1,-30712($gp)

glabel odsy_init
    daddiu     $sp,$sp,-64
    sd         $ra,8($sp)
    jal        odsyCheckBoardPointers
    nop
    ld         $a0,-30696($gp)
    sd         $s3,16($sp)
    sd         $s4,24($sp)
    sd         $s2,40($sp)
    li         $a1,25
    jal        psema
    sd         $s1,48($sp)
    lw         $at,0($gp)
    li         $s4,-1
    lui        $s1,0x1
    li         $s3,1
    sd         $s0,32($sp)
    li         $s2,-55
    blez       $at, .L00000574
    dsll32     $s2,$s2,0x19
    move       $s0,$zero
    b          .L000004dc
    move       $a0,$s0
.L000004c0:
    jal        odsyInitBoardGfx
    move       $a0,$s0
    lw         $t8,0($gp)
.L000004cc:
    addiu      $s0,$s0,1
    slt        $t8,$s0,$t8
    beqz       $t8, .L00000578
    move       $a0,$s0
.L000004dc:
    daddiu     $a1,$sp,0
    jal        find_odsypipe
    daddiu     $a2,$sp,2
    beqz       $v0, .L000004cc
    lw         $t8,0($gp)
    bltz       $v0, .L00000578
    nop
    jal        odsyCheckBoardPointer
    move       $a0,$s0
    ld         $a5,0($gp)
    dsll       $a6,$s0,0x3
    daddu      $a5,$a5,$a6
    ld         $a5,0($a5)
    sh         $s3,788($a5)
    daddu      $v1,$s1,$a5
    lbu        $a2,2($sp)
    sb         $a2,-19392($v1)
    lbu        $a1,2($sp)
    sb         $a1,793($a5)
    lh         $a0,0($sp)
    sh         $s4,-19394($v1)
    sh         $a0,-19396($v1)
    sh         $s0,790($a5)
    lbu        $a6,2($sp)
    lw         $a4,-30712($gp)
    lh         $v0,0($sp)
    ld         $a3,-30720($gp)
    beqz       $a6, .L000005bc
    dsll32     $v0,$v0,0x1
    dsll       $a3,$a6,0x18
    daddu      $a3,$v0,$a3
    daddu      $a3,$s2,$a3
.L0000055c:
    beq        $a4, $s0, .L000004c0
    sd         $a3,824($a5)
    jal        odsyReset
    move       $a0,$s0
    b          .L000004c0
    nop
.L00000574:
    move       $s0,$zero
.L00000578:
    sw         $s0,0($gp)
    jal        vsema
    ld         $a0,-30696($gp)
    ld         $s3,16($sp)
    ld         $s4,24($sp)
    ld         $s0,32($sp)
    li         $a0,0xc013
    ld         $a2,-30720($gp)
    ld         $s2,40($sp)
    li         $a1,35
    move       $a3,$zero
    ld         $s1,48($sp)
    jal        xwidget_driver_register
    daddiu     $a2,$a2,96
    ld         $ra,8($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000005bc:
    b          .L0000055c
    daddu      $a3,$a3,$v0

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
    beqz       $a1, .L000006f4
    sd         $s0,1064($sp)
    jal        nic_vertex_info_get
    move       $a0,$a1
    beqz       $v0, .L000006fc
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
    daddiu     $s1,$s1,152
    sb         $zero,0($t8)
.L00000654:
    ld         $a1,-30720($gp)
.L00000658:
    move       $a0,$s0
    daddiu     $a2,$sp,1024
    jal        strtok_r
    daddiu     $a1,$a1,156
    sltu       $a2,$zero,$s0
    beqz       $v0, .L000006a8
    movn       $s0,$zero,$a2
    ld         $a1,-30720($gp)
    move       $a0,$v0
    jal        strcmp
    daddiu     $a1,$a1,160
    bnez       $v0, .L00000658
    ld         $a1,-30720($gp)
    ld         $a1,-30720($gp)
    move       $a0,$s0
    daddiu     $a2,$sp,1024
    jal        strtok_r
    daddiu     $a1,$a1,156
    bnez       $v0, .L00000654
    move       $s1,$v0
.L000006a8:
    jal        strlen
    move       $a0,$s1
    move       $a1,$s1
    li         $a0,0xb4d0
    sll        $s0,$v0,0x0
    daddu      $a0,$s2,$a0
    jal        strncpy
    move       $a2,$s0
    daddu      $a2,$s0,$s2
    lui        $a1,0x1
    ld         $s1,1072($sp)
    daddu      $a1,$a1,$a2
    move       $v0,$zero
    sb         $zero,-19247($a1)
.L000006e0:
    ld         $ra,1056($sp)
    ld         $s2,1048($sp)
    ld         $s0,1064($sp)
    jr         $ra
    daddiu     $sp,$sp,1088
.L000006f4:
    b          .L000006e0
    sb         $zero,-19248($a2)
.L000006fc:
    ld         $a1,-30720($gp)
    ld         $a2,1040($sp)
    li         $a0,1
    sb         $zero,-19248($a2)
    jal        cmn_err
    daddiu     $a1,$a1,104
    b          .L000006e0
    li         $v0,1

glabel odsy_attach
    daddiu     $sp,$sp,-80
    sd         $ra,16($sp)
    li         $a1,25
    sd         $s3,8($sp)
    move       $s3,$a0
    jal        psema
    ld         $a0,-30696($gp)
    move       $a0,$s3
    jal        xwidget_info_get
    sd         $s1,40($sp)
    move       $s1,$v0
    move       $a0,$v0
    jal        xwidget_info_id_get
    sd         $s0,56($sp)
    move       $s0,$v0
    jal        xwidget_info_master_get
    move       $a0,$s1
    sd         $s4,32($sp)
    sd         $s6,48($sp)
    move       $a0,$v0
    jal        master_node_get
    sd         $s5,64($sp)
    lw         $at,0($gp)
    ld         $s4,-30688($gp)
    lui        $s5,0x1
    daddu      $s6,$v0,$v0
    sd         $s2,24($sp)
    daddu      $s4,$s4,$s6
    andi       $s6,$s0,0xff
    move       $s0,$zero
    blez       $at, .L00000804
    lh         $s4,0($s4)
    b          .L000007b8
    ld         $s2,0($gp)
.L000007a4:
    addiu      $s0,$s0,1
    slt        $t8,$s0,$t8
    beqz       $t8, .L00000814
    li         $a5,1
    ld         $s2,0($gp)
.L000007b8:
    dsll       $t8,$s0,0x3
    daddu      $s2,$s2,$t8
    ld         $s2,0($s2)
    daddu      $s1,$s5,$s2
    jal        get_xbow_peer
    lh         $a0,-19396($s1)
    lbu        $t9,-19392($s1)
    sh         $v0,-19394($s1)
    dsll32     $a2,$v0,0x10
    lw         $t8,0($gp)
    bne        $t9, $s6, .L000007a4
    dsra32     $a1,$a2,0x10
    lh         $ra,-19396($s1)
    beq        $ra, $s4, .L00000814
    li         $a5,1
    bne        $s4, $a1, .L000007a4
    nop
    b          .L00000814
    li         $a5,1
.L00000804:
    ld         $s2,0($sp)
    move       $s0,$zero
    daddu      $s1,$s5,$s2
    li         $a5,1
.L00000814:
    move       $a2,$zero
    move       $a1,$zero
    move       $a0,$s3
    lui        $a3,0x40
    li         $at,2
    sh         $at,788($s2)
    ori        $a3,$a3,0x1000
    sw         $s3,-19400($s1)
    jal        xtalk_piomap_alloc
    move       $a4,$a3
    ld         $s6,48($sp)
    move       $a0,$v0
    ld         $s5,64($sp)
    move       $a1,$zero
    lui        $a2,0x40
    sd         $v0,-19384($s1)
    jal        xtalk_piomap_addr
    ori        $a2,$a2,0x1000
    move       $s1,$v0
    sd         $v0,824($s2)
    jal        kvtophys
    move       $a0,$v0
    move       $a0,$s3
    ld         $a3,824($s2)
    sd         $v0,832($s2)
    move       $a1,$s2
    lui        $a4,0x11
    daddu      $a3,$a3,$a4
    jal        GfxAddHwgraphEdge
    sd         $a3,864($s2)
    jal        xwidget_info_get
    move       $a0,$s3
    jal        xwidget_info_id_get
    move       $a0,$v0
    sb         $v0,793($s2)
    jal        xwidget_info_get
    move       $a0,$s3
    jal        xwidget_info_masterid_get
    move       $a0,$v0
    sb         $v0,792($s2)
    lw         $a5,4($s1)
    srl        $a5,$a5,0x1c
    sltiu      $a5,$a5,2
    li         $a7,16384
    bnez       $a5, .L0000090c
    ld         $a1,-30712($gp)
    ld         $a6,0($a1)
    andi       $a6,$a6,0xf000
    beq        $a6, $a7, .L000008ec
    li         $a0,2048
    jal        get_chimera_type
    move       $a0,$s4
    beqz       $v0, .L00000960
    li         $a0,2048
.L000008ec:
    move       $a1,$s4
    move       $a2,$s3
    move       $a3,$zero
    jal        eeprom_vertex_info_set
    move       $a4,$zero
.L00000900:
    jal        odsy_set_gfx_mfg_nic_name
    move       $a0,$s2
    bnez       $v0, .L00000978
.L0000090c:
    lw         $a7,-30712($gp)
.L00000910:
    bne        $a7, $s0, .L00000950
    ld         $s2,24($sp)
.L00000918:
    ld         $s4,32($sp)
    move       $a0,$s0
    move       $a1,$s3
    ld         $s1,40($sp)
    jal        odsyInitIntr
    move       $a2,$s3
    ld         $s3,8($sp)
    ld         $s0,56($sp)
    jal        vsema
    ld         $a0,-30696($gp)
    ld         $ra,16($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,80
.L00000950:
    jal        odsyReset
    move       $a0,$s0
    b          .L00000918
    ld         $s2,24($sp)
.L00000960:
    daddiu     $a1,$s1,4316
    ld         $a0,-30680($gp)
    jal        nic_vertex_info_set
    move       $a2,$s3
    b          .L00000900
    nop
.L00000978:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,168
    b          .L00000910
    lw         $a7,-30712($gp)

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
    sd         $a1,16($sp)
    beqz       $a0, .L00000b8c
    sd         $s1,40($sp)
    ld         $v0,824($a0)
.L00000b78:
    ld         $ra,32($sp)
    ld         $s1,40($sp)
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000b8c:
    move       $a0,$s0
    daddiu     $a1,$sp,0
    jal        find_odsypipe
    daddiu     $a2,$sp,2
    lbu        $a0,2($sp)
    lh         $v0,0($sp)
    dsll       $s1,$a0,0x18
    beqz       $a0, .L00000c50
    dsll32     $v0,$v0,0x1
    li         $t8,-55
    daddu      $s1,$v0,$s1
    dsll32     $t8,$t8,0x19
    daddu      $s1,$s1,$t8
.L00000bc0:
    beqz       $s1, .L00000c48
    nop
    lw         $t8,36($s1)
    move       $a0,$s0
    jal        odsyCheckBoardPointer
    sd         $t8,8($sp)
    ld         $v0,16($sp)
    ld         $a4,0($gp)
    ld         $a3,8($sp)
    daddu      $a4,$a4,$v0
    ld         $a4,0($a4)
    andi       $a3,$a3,0xf
    sb         $a3,793($a4)
    ld         $a2,0($gp)
    daddu      $a2,$a2,$v0
    ld         $a2,0($a2)
    sd         $s1,824($a2)
    ld         $a1,0($gp)
    daddu      $a1,$a1,$v0
    ld         $a1,0($a1)
    sh         $s0,790($a1)
    ld         $a0,0($gp)
    daddu      $a0,$a0,$v0
    ld         $a0,0($a0)
    lui        $ra,0x1
    lbu        $v1,2($sp)
    daddu      $a0,$ra,$a0
    sb         $v1,-19392($a0)
    ld         $at,0($gp)
    daddu      $at,$at,$v0
    ld         $at,0($at)
    lh         $t9,0($sp)
    daddu      $ra,$ra,$at
    sh         $t9,-19396($ra)
.L00000c48:
    b          .L00000b78
    move       $v0,$s1
.L00000c50:
    ld         $s1,-30720($gp)
    b          .L00000bc0
    daddu      $s1,$v0,$s1

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
    daddiu     $a2,$s2,216
    jal        init_sema
    sw         $t9,-19500($at)
    daddiu     $a1,$s2,232
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
    beq        $a0, $a1, .L00000dcc
    li         $a1,64
    beq        $a0, $a1, .L00000eb0
    lui        $a4,0x2
    beq        $a0, $a3, .L00000eb8
    lui        $a4,0x3
    move       $a4,$zero
.L00000dcc:
    lw         $a0,280($s0)
.L00000dd0:
    beqz       $a0, .L00000e9c
    lui        $a1,0x100
    beq        $a5, $a0, .L00000ea4
.L00000ddc:
    li         $a0,7
    li         $a1,21
    move       $a2,$zero
    jal        add_to_inventory
    move       $a3,$s1
    lhu        $a6,296($s0)
    beqz       $a6, .L00000e0c
    nop
    lhu        $a7,298($s0)
    li         $t0,3
    beq        $a7, $t0, .L00000ec0
    li         $a0,17
.L00000e0c:
    ld         $s1,0($sp)
.L00000e10:
    li         $a3,-1
    daddiu     $a2,$s2,256
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
    daddiu     $a2,$s2,272
    move       $a1,$zero
    li         $a0,0xb370
    jal        init_mutex
    daddu      $a0,$s0,$a0
    li         $a3,-1
    daddiu     $a2,$s2,288
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
.L00000e9c:
    b          .L00000ddc
    or         $a4,$a4,$a1
.L00000ea4:
    lui        $a1,0x200
    b          .L00000ddc
    or         $a4,$a4,$a1
.L00000eb0:
    b          .L00000dd0
    lw         $a0,280($s0)
.L00000eb8:
    b          .L00000dd0
    lw         $a0,280($s0)
.L00000ec0:
    li         $a1,3
    move       $a2,$zero
    move       $a3,$s1
    jal        add_to_inventory
    move       $a4,$zero
    b          .L00000e10
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
    beqz       $a1, .L00000fb4
    ld         $s2,824($s0)
.L00000f10:
    li         $a0,1
    beq        $v0, $a0, .L00000f34
.L00000f18:
    move       $v0,$zero
.L00000f1c:
    ld         $ra,64($sp)
    ld         $s2,24($sp)
    ld         $s1,72($sp)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00000f34:
    lw         $s1,4204($s2)
    srl        $v0,$s1,0x1e
    srl        $t8,$s1,0x18
    andi       $v0,$v0,0xffff
    andi       $t8,$t8,0xf
    andi       $t8,$t8,0xffff
    beqz       $v0, .L00000ff0
    sw         $t8,292($s0)
    beq        $a0, $v0, .L00001014
    li         $t1,64
    li         $v1,2
    beq        $v0, $v1, .L0000100c
    li         $t0,128
    li         $a1,33
    sw         $a1,252($s0)
.L00000f70:
    srl        $v0,$s1,0x1c
    andi       $v0,$v0,0x1
    andi       $v0,$v0,0xffff
    beq        $a0, $v0, .L00000ffc
    li         $a6,2
    bnez       $v0, .L00001434
    li         $v1,3
    sw         $v1,256($s0)
.L00000f90:
    srl        $v0,$s1,0x1d
    andi       $v0,$v0,0x1
    andi       $v0,$v0,0xffff
    beqz       $v0, .L00001004
    li         $a7,2
    bne        $a0, $v0, .L0000144c
    li         $v1,4
    b          .L00000f18
    sw         $v1,260($s0)
.L00000fb4:
    lw         $a3,4($s2)
    srl        $a3,$a3,0x1c
    dsll32     $a4,$a3,0x0
    ld         $a0,-30720($gp)
    dsrl32     $a1,$a4,0x0
    sltiu      $a1,$a1,16
    sd         $v0,56($sp)
    daddiu     $a0,$a0,464
    dsrl       $a4,$a4,0x1d
    sw         $a3,264($s0)
    beqz       $a1, .L00001464
    daddu      $a0,$a0,$a4
    ld         $a4,0($a0)
    jr         $a4
    sd         $v0,56($sp)
.L00000ff0:
    li         $a5,32
    b          .L00000f70
    sw         $a5,252($s0)
.L00000ffc:
    b          .L00000f90
    sw         $a6,256($s0)
.L00001004:
    b          .L00000f18
    sw         $a7,260($s0)
.L0000100c:
    b          .L00000f70
    sw         $t0,252($s0)
.L00001014:
    b          .L00000f70
    sw         $t1,252($s0)
.L0000101c:
    b          .L00001034
    sw         $zero,280($s0)
.L00001024:
    li         $t3,5
    sw         $t3,264($s0)
    li         $t2,1
    sw         $t2,280($s0)
.L00001034:
    lui        $s1,0x1
.L00001038:
    daddu      $s1,$s0,$s1
    lw         $t8,-19328($s1)
    beqz       $t8, .L00001160
    li         $a1,25
    move       $a0,$s2
.L0000104c:
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    beqz       $v0, .L0000106c
    lw         $a0,-19328($s1)
    beqz       $a0, .L0000110c
    li         $s2,0x8540
.L00001064:
    b          .L00000f1c
    li         $v0,-1
.L0000106c:
    lui        $t8,0x23
    ori        $t8,$t8,0x380c
    daddu      $t8,$t8,$s2
    lw         $t8,0($t8)
    beqz       $a0, .L000012ac
    sd         $t8,40($sp)
    ld         $t9,40($sp)
.L00001088:
    ld         $v0,56($sp)
    andi       $t9,$t9,0x7
    b          .L00000f10
    sw         $t9,268($s0)
.L00001098:
    li         $at,7
    sw         $at,264($s0)
    li         $ra,1
    b          .L00001034
    sw         $ra,280($s0)
.L000010ac:
    li         $v1,6
    sw         $v1,264($s0)
    li         $v0,1
    b          .L00001034
    sw         $v0,280($s0)
.L000010c0:
    li         $a1,4
    sw         $a1,264($s0)
    li         $a0,1
    b          .L00001034
    sw         $a0,280($s0)
.L000010d4:
    li         $a3,3
    sw         $a3,264($s0)
    li         $a2,1
    b          .L00001034
    sw         $a2,280($s0)
.L000010e8:
    li         $a5,2
    sw         $a5,264($s0)
    li         $a4,1
    b          .L00001034
    sw         $a4,280($s0)
.L000010fc:
    li         $a6,1
    sw         $a6,264($s0)
    b          .L00001034
    sw         $a6,280($s0)
.L0000110c:
    daddu      $s2,$s0,$s2
    sd         $s3,80($sp)
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    li         $s3,0x8530
    sd         $v0,48($sp)
    beqz       $t8, .L00001174
    daddu      $s3,$s0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00001198
    nop
.L00001150:
    jal        vsema
    move       $a0,$s3
    b          .L00001064
    ld         $s3,80($sp)
.L00001160:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L0000104c
    move       $a0,$s2
.L00001174:
    ld         $s0,48($sp)
    jal        vsema
    move       $a0,$s3
    move       $a0,$s2
    ld         $s3,80($sp)
    jal        mutex_spinunlock
    move       $a1,$s0
    b          .L00001064
    nop
.L00001198:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a3,-19664($s1)
    lhu        $a0,-31408($s1)
    srl        $a2,$a3,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    move       $a1,$v0
    beqz       $a0, .L0000123c
    lui        $a2,0x40
    li         $a6,-1
    li         $t1,-3
    dsrl32     $a6,$a6,0x0
    and        $t1,$a3,$t1
    sw         $t1,-19664($s1)
    dsll32     $t1,$t1,0x0
    ld         $t2,824($s0)
    ld         $a4,-30704($gp)
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
.L0000123c:
    ld         $t0,824($s0)
    daddu      $t0,$a2,$t0
    ld         $a7,-31416($s1)
    sd         $a7,0($t0)
    sync
    beqz       $a0, .L00001288
    li         $a3,-2
    lw         $t1,-19664($s1)
    and        $t1,$a3,$t1
    sw         $t1,-19664($s1)
    li         $t8,-1
    ld         $t2,824($s0)
    dsrl32     $t8,$t8,0x0
    ld         $t3,-30704($gp)
    and        $t1,$t1,$t8
    daddu      $t2,$a2,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
.L00001288:
    lw         $t2,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t2,$t2,0x2
    and        $t2,$a3,$t2
    jal        mutex_spinunlock
    sw         $t2,-19664($s1)
    b          .L00001150
    nop
.L000012ac:
    li         $a0,0x8540
    daddu      $a0,$s0,$a0
    jal        mutex_spinlock
    sd         $a0,16($sp)
    ld         $a1,-31416($s1)
    sd         $v0,0($sp)
    li         $a0,0x8530
    daddu      $a0,$s0,$a0
    beqz       $a1, .L00001304
    sd         $a0,8($sp)
    ld         $a0,16($sp)
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00001320
    nop
.L000012f4:
    jal        vsema
    ld         $a0,8($sp)
    b          .L00001088
    ld         $t9,40($sp)
.L00001304:
    jal        vsema
    ld         $s1,16($sp)
    move       $a0,$s1
    jal        mutex_spinunlock
    ld         $a1,0($sp)
    b          .L00001088
    ld         $t9,40($sp)
.L00001320:
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
    beqz       $a6, .L000013c8
    lui        $a2,0x40
    li         $t2,-1
    li         $t9,-3
    dsrl32     $t2,$t2,0x0
    and        $t9,$a3,$t9
    sw         $t9,-19664($s1)
    dsll32     $t9,$t9,0x0
    ld         $ra,824($s0)
    ld         $t0,-30704($gp)
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
.L000013c8:
    ld         $t8,824($s0)
    daddu      $t8,$a2,$t8
    ld         $t3,-31416($s1)
    sd         $t3,0($t8)
    sync
    beqz       $a6, .L00001414
    li         $a3,-2
    lw         $t9,-19664($s1)
    and        $t9,$a3,$t9
    sw         $t9,-19664($s1)
    li         $v0,-1
    ld         $ra,824($s0)
    dsrl32     $v0,$v0,0x0
    ld         $at,-30704($gp)
    and        $t9,$t9,$v0
    daddu      $ra,$a2,$ra
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
.L00001414:
    lw         $ra,-19664($s1)
    ori        $ra,$ra,0x2
    and        $ra,$a3,$ra
    sw         $ra,-19664($s1)
    jal        mutex_spinunlock
    sd         $zero,-31416($s1)
    b          .L000012f4
    nop
.L00001434:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,368
    b          .L00000f90
    li         $a0,1
.L0000144c:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,416
    b          .L00000f1c
    move       $v0,$zero
.L00001464:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,304
    b          .L00001038
    lui        $s1,0x1

glabel odsy_init_ddrncount_timeout
    daddiu     $sp,$sp,-16
    ld         $a1,-30720($gp)
    sd         $s8,8($sp)
    move       $s8,$a0
    li         $a0,4
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,592
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
    b          .L000015d0
    ori        $t2,$t3,0x9014
.L00001514:
    sw         $t0,0($a2)
    sync
.L0000151c:
    addiu      $a1,$a5,-1
.L00001520:
    addiu      $a1,$a1,-1
.L00001524:
    sw         $zero,0($a2)
    sync
    bltz       $a1, .L00001544
    addiu      $a1,$a1,-1
    sw         $zero,0($a2)
    sync
    bgez       $a1, .L00001524
    addiu      $a1,$a1,-1
.L00001544:
    addiu      $a3,$a3,16
.L00001548:
    slti       $a6,$a3,576
    addiu      $a4,$a4,-16
    beqz       $a6, .L000015a0
    slti       $t8,$a3,561
    li         $a5,16
.L0000155c:
    sll        $a6,$a4,0xa
    bnez       $t8, .L00001514
    ori        $a1,$a6,0x341
    beq        $a3, $a7, .L0000158c
    li         $a5,1
    move       $a5,$a4
    sw         $a1,0($a2)
    sync
    bgtz       $a4, .L00001520
    addiu      $a1,$a5,-1
    b          .L00001548
    addiu      $a3,$a3,16
.L0000158c:
    addiu      $a4,$a4,15
    sw         $t1,0($a2)
    sync
    b          .L0000151c
    addiu      $a3,$a3,-15
.L000015a0:
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
.L000015d0:
    slti       $t8,$a3,561
    b          .L0000155c
    li         $a5,16

glabel gf_OdsyInitialize
    daddiu     $sp,$sp,-112
    sd         $s7,96($sp)
    sd         $s5,88($sp)
    sd         $ra,80($sp)
    sd         $s0,24($sp)
    ld         $s0,40($a0)
    sd         $s1,16($sp)
    lui        $s1,0x1
    sd         $s8,72($sp)
    daddu      $s1,$s0,$s1
    sw         $zero,-19328($s1)
    lw         $a3,28480($s0)
    sd         $s2,64($sp)
    sd         $s4,32($sp)
    move       $s4,$a0
    bnez       $a3, .L00001bd0
    sd         $s6,56($sp)
.L00001620:
    ld         $v0,40($s4)
    ld         $t8,72($v0)
    bne        $t8, $s4, .L00001a50
    li         $a1,537
.L00001630:
    lw         $ra,80($v0)
.L00001634:
    move       $a0,$zero
    move       $a1,$zero
    ld         $s6,-30696($gp)
    move       $a2,$zero
    addiu      $ra,$ra,1
    sw         $ra,80($v0)
    move       $a3,$zero
    jal        htp_register_board
    ld         $t9,0($s6)
    lw         $s5,4($s4)
    andi       $s5,$s5,0x3
    beqz       $s5, .L000016e0
    nop
    jal        splhi
    nop
    ld         $a0,808($s0)
    beqz       $a0, .L00001a90
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000016c0
    nop
    lw         $t8,104($s0)
    beqz       $t8, .L00001b78
    li         $ra,1
.L00001698:
    sw         $ra,-31288($s1)
    ld         $at,824($s0)
    sw         $ra,4220($at)
    sync
    ld         $t9,824($s0)
    ld         $a0,808($s0)
    lw         $t9,4220($t9)
    move       $a1,$s4
    jal        gfx_flow_detach_me
    sw         $t9,0($sp)
.L000016c0:
    lw         $v0,4($s4)
.L000016c4:
    move       $a0,$s2
    nor        $v1,$s5,$zero
    and        $v0,$v0,$v1
    jal        splx
    sw         $v0,4($s4)
    b          .L000016e4
    ld         $a0,808($s0)
.L000016e0:
    ld         $a0,808($s0)
.L000016e4:
    beqz       $a0, .L000016f4
    nop
    jal        gfx_flow_dealloc
    nop
.L000016f4:
    sd         $zero,48($sp)
    lui        $s5,0x11
    daddiu     $t8,$s0,840
    sd         $t8,40($sp)
    lui        $s7,0x10
    ld         $s8,-30712($gp)
    lui        $s6,0x1
    sd         $s3,8($sp)
    b          .L000017f8
    ori        $s6,$s6,0x86a0
.L0000171c:
    jal        us_delay
    li         $a0,5
.L00001724:
    ld         $v0,824($s0)
    lw         $t9,4204($v0)
    srl        $t9,$t9,0x7
    andi       $t9,$t9,0x1ff
    bnez       $t9, .L0000171c
    nop
    sw         $zero,4228($v0)
    sync
    ld         $a0,824($s0)
    li         $v1,1
    sw         $v1,4228($a0)
    sync
    ld         $at,824($s0)
    sw         $zero,4228($at)
    sync
    lw         $ra,0($gp)
    lui        $a1,0x80
    beqz       $ra, .L000018e0
    lui        $a2,0x180
    sw         $a1,-31292($s1)
.L00001774:
    jal        xtalk_intr_target_get
    ld         $a0,-19744($s1)
    move       $s3,$v0
    jal        gfx_flow_credit_tnum_get
    ld         $a0,808($s0)
    lw         $a2,-31292($s1)
    sll        $a3,$s3,0x11
    or         $a2,$a2,$a3
    sll        $a3,$v0,0xc
    or         $a2,$a2,$a3
    ori        $a2,$a2,0xc8
    sw         $a2,-31292($s1)
    ld         $a3,824($s0)
    sw         $a2,4212($a3)
    sync
    li         $a1,1
    jal        odsyInitCfifo
    lh         $a0,790($s0)
    beqz       $v0, .L000017f0
    move       $s3,$v0
    jal        gfx_flow_dealloc
    ld         $a0,808($s0)
    move       $a0,$s0
    jal        odsy_usdelay
    li         $a1,10000
    ld         $s2,48($sp)
    addiu      $s2,$s2,1
    sd         $s2,48($sp)
    slti       $s2,$s2,6
    beqz       $s2, .L00001a48
    nop
.L000017f0:
    beqz       $s2, .L000018e8
    move       $a1,$zero
.L000017f8:
    move       $s2,$zero
    jal        odsyReset
    lh         $a0,790($s0)
    ld         $t9,0($s8)
    li         $t8,16384
    andi       $t9,$t9,0xf000
    beq        $t8, $t9, .L000018ac
    ld         $s3,-30616($gp)
    jal        get_nasid
    nop
    jal        get_chimera_type
    move       $a0,$v0
    li         $ra,3
    beq        $v0, $ra, .L000018b0
    li         $a7,1
    jal        get_nasid
    nop
    jal        get_chimera_type
    move       $a0,$v0
    li         $at,5
    beq        $v0, $at, .L000018b0
    li         $a7,1
    ld         $a1,832($s0)
    li         $a7,1
    move       $a6,$s0
    lw         $a3,0($gp)
    move       $a5,$s3
    move       $a4,$s6
    daddu      $a2,$s5,$a1
    dsll       $a3,$a3,0x3
    lw         $a0,-19400($s1)
    daddu      $a1,$s7,$a1
    jal        gfx_flow_alloc
    sll        $a3,$a3,0x0
    move       $a0,$v0
    sd         $v0,808($s0)
.L00001888:
    beqz       $a0, .L0000189c
    nop
    jal        gfx_flow_wg_info_get
    ld         $a1,40($sp)
    ld         $a0,808($s0)
.L0000189c:
    jal        gfx_flow_credit_tnum_get
    nop
    b          .L00001724
    sw         $v0,-19376($s1)
.L000018ac:
    li         $a7,1
.L000018b0:
    move       $a6,$s0
    ld         $a1,832($s0)
    move       $a5,$s3
    move       $a4,$s6
    li         $a3,2048
    daddu      $a2,$s5,$a1
    lw         $a0,-19400($s1)
    jal        gfx_flow_alloc
    daddu      $a1,$s7,$a1
    move       $a0,$v0
    b          .L00001888
    sd         $v0,808($s0)
.L000018e0:
    b          .L00001774
    sw         $a2,-31292($s1)
.L000018e8:
    daddiu     $s2,$s0,29952
    jal        OdsyInit32kSlotMask
    move       $a0,$s2
    jal        OdsyAlloc32kSlot
    move       $a0,$s2
    jal        OdsyAlloc32kSlot
    move       $a0,$s2
    sw         $v0,-19356($s1)
    ld         $a3,880($s0)
    daddu      $a4,$v0,$v0
    daddu      $a3,$a3,$a4
    sd         $a3,-19352($s1)
    move       $a0,$s0
    jal        odsyInitMM
    sh         $zero,0($a3)
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
    lw         $a5,4($s4)
    ori        $a5,$a5,0x2
    sw         $a5,4($s4)
    ld         $a0,808($s0)
    beqz       $a0, .L00001978
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00001af0
    nop
.L00001978:
    jal        splx
    move       $a0,$s2
    jal        odsyZeroOut
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a0,808($s0)
    beqz       $a0, .L000019e0
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000019e0
    nop
    lw         $a6,104($s0)
    beqz       $a6, .L00001a98
    li         $t0,1
.L000019b8:
    sw         $t0,-31288($s1)
    ld         $t1,824($s0)
    sw         $t0,4220($t1)
    sync
    ld         $a7,824($s0)
    ld         $a0,808($s0)
    lw         $a7,4220($a7)
    move       $a1,$s4
    jal        gfx_flow_detach_me
    sw         $a7,4($sp)
.L000019e0:
    lw         $t2,4($s4)
    ld         $s0,-30696($gp)
    move       $a0,$s2
    li         $t3,-3
    and        $t2,$t2,$t3
    jal        splx
    sw         $t2,4($s4)
    sw         $zero,-19328($s1)
    ld         $t9,40($s4)
    lw         $t8,80($t9)
    ld         $ra,0($s0)
    addiu      $t8,$t8,-1
    sw         $t8,80($t9)
.L00001a14:
    ld         $s7,96($sp)
    ld         $s5,88($sp)
    ld         $s8,72($sp)
    ld         $s2,64($sp)
    ld         $s6,56($sp)
    ld         $s0,24($sp)
    ld         $ra,80($sp)
    ld         $s1,16($sp)
    move       $v0,$s3
    ld         $s3,8($sp)
    ld         $s4,32($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00001a48:
    b          .L00001a14
    li         $s3,-1
.L00001a50:
    jal        psema
    daddiu     $a0,$v0,56
    ld         $v0,40($s4)
    sd         $s4,72($v0)
    ld         $v0,40($s4)
    lw         $at,104($v0)
    beqz       $at, .L00001630
    nop
.L00001a70:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s4)
    lw         $v1,104($v0)
    bnez       $v1, .L00001a70
    nop
    b          .L00001634
    lw         $ra,80($v0)
.L00001a90:
    b          .L000016c4
    lw         $v0,4($s4)
.L00001a98:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    move       $s5,$v0
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    sltu       $a0,$s5,$v0
    beqz       $a0, .L000019b8
    li         $t0,1
    jal        rt_pin_thread
    nop
    move       $s5,$v0
    jal        splx
    move       $a0,$s2
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    move       $s2,$v0
    jal        rt_unpin_thread
    move       $a0,$s5
    b          .L000019b8
    li         $t0,1
.L00001af0:
    jal        rt_pin_thread
    nop
    move       $s5,$v0
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    move       $a1,$s4
    ld         $a4,-30688($gp)
    lw         $a2,-31292($s1)
    lw         $a3,-19376($s1)
    sll        $a3,$a3,0xc
    and        $a2,$a2,$a4
    or         $a2,$a2,$a3
    sw         $a2,-31292($s1)
    ld         $a3,824($s0)
    sw         $a2,4212($a3)
    sync
    sw         $zero,-31288($s1)
    ld         $a1,824($s0)
    sw         $zero,4220($a1)
    sync
    jal        splx
    move       $a0,$s2
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    ld         $a0,808($s0)
    move       $s2,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a1,72($s0)
    jal        rt_unpin_thread
    move       $a0,$s5
    b          .L00001978
    nop
.L00001b78:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    move       $s7,$v0
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    sltu       $a5,$s7,$v0
    beqz       $a5, .L00001698
    li         $ra,1
    jal        rt_pin_thread
    nop
    move       $s7,$v0
    jal        splx
    move       $a0,$s2
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    move       $s2,$v0
    jal        rt_unpin_thread
    move       $a0,$s7
    b          .L00001698
    li         $ra,1
.L00001bd0:
    ld         $s7,-30720($gp)
    ld         $s6,-30624($gp)
    move       $s5,$zero
    daddiu     $s2,$s0,28464
    daddiu     $a1,$s7,624
.L00001be4:
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
    slti       $a6,$s5,11
    beqz       $a6, .L00001c40
    sd         $s3,8($sp)
    lw         $a3,28480($s0)
    beqz       $a3, .L00001620
    addiu      $s5,$s5,1
    b          .L00001be4
    daddiu     $a1,$s7,624
.L00001c40:
    b          .L00001a14
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
    daddiu     $sp,$sp,-64
    sd         $ra,48($sp)
    sd         $s0,32($sp)
    lbu        $s0,793($a0)
    sd         $s8,8($sp)
    lui        $a2,0x1
    ld         $s8,824($a0)
    sd         $s2,40($sp)
    daddu      $a2,$a0,$a2
    sd         $s1,24($sp)
    andi       $s0,$s0,0x7
    dsrl32     $t8,$s8,0x1
    lw         $a2,-19400($a2)
    dsll       $s0,$s0,0x6
    andi       $t8,$t8,0x7f
    ld         $s1,-30720($gp)
    dsll32     $t8,$t8,0x1
    move       $s2,$a0
    daddu      $s0,$s0,$t8
    lw         $t8,36($s8)
    sd         $t8,16($sp)
    beqz       $a2, .L00001d78
    daddu      $s0,$s0,$s1
    jal        xwidget_reset
    move       $a0,$a2
    lw         $s1,0($sp)
.L00001d40:
    lbu        $a3,793($s2)
    sw         $s1,268($s0)
    ld         $s0,32($sp)
    ld         $s1,24($sp)
    ld         $a4,16($sp)
    ld         $ra,48($sp)
    ld         $s2,40($sp)
    or         $a3,$a3,$a4
    ori        $a3,$a3,0x4000
    sw         $a3,36($s8)
    sync
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00001d78:
    lw         $s1,268($s0)
    li         $a1,10000
    jal        odsy_usdelay
    sw         $zero,308($s0)
    b          .L00001d40
    sw         $s1,268($s0)

glabel odsy_fc_attach
    daddiu     $sp,$sp,-64
    sd         $s0,40($sp)
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    lh         $ra,-15320($zero)
    ld         $s8,-30608($gp)
    sd         $s1,32($sp)
    dsll       $ra,$ra,0x4
    sd         $s2,56($sp)
    daddu      $s8,$s8,$ra
    ld         $t8,8($s8)
    sd         $s3,48($sp)
    lbu        $s3,1320($t8)
    move       $s2,$a0
    lh         $t8,1068($t8)
    sd         $t8,24($sp)
    jal        odsyPipeNrFromBase
    andi       $s3,$s3,0x1
    sll        $s1,$s3,0x2
    dsll       $a3,$v0,0x3
    addu       $s1,$s1,$s3
    li         $a2,1
    sll        $s1,$s1,0x3
    dsll32     $v0,$a2,0x8
    ld         $a1,0($gp)
    addiu      $v1,$s1,768
    lui        $a0,0x10
    ld         $s0,-30680($gp)
    dsll32     $v1,$v1,0x0
    ld         $at,-30712($gp)
    daddu      $a1,$a1,$a3
    dsrl32     $v1,$v1,0x0
    daddu      $a0,$s2,$a0
    ld         $a1,0($a1)
    daddu      $v1,$s0,$v1
    or         $v0,$a0,$v0
    sd         $v0,0($v1)
    sync
    ld         $at,0($at)
    li         $v0,16384
    andi       $at,$at,0xf000
    beq        $at, $v0, .L00001f7c
    sd         $a1,16($sp)
    jal        get_nasid
    nop
    jal        get_chimera_type
    move       $a0,$v0
    li         $t8,3
    beq        $v0, $t8, .L00001f80
    addiu      $t9,$s1,776
    jal        get_nasid
    nop
    jal        get_chimera_type
    move       $a0,$v0
    li         $a3,5
    li         $a4,100
    addiu      $a2,$s1,776
    beq        $v0, $a3, .L00001f7c
    dsll32     $a2,$a2,0x0
    dsrl32     $a5,$a2,0x0
    daddu      $a5,$s0,$a5
    sd         $a4,0($a5)
.L00001e88:
    andi       $t8,$s3,0x1
    sll        $t8,$t8,0x10
    dsrl32     $t3,$s2,0x1
    sync
    ld         $at,8($s8)
    dsrl       $s8,$s2,0x18
    andi       $t3,$t3,0x7f
    dsll32     $t3,$t3,0x10
    lui        $a7,0x1
    dsra32     $t3,$t3,0x10
    lbu        $at,1320($at)
    ld         $s3,-30672($gp)
    addiu      $s1,$s1,784
    dsll32     $t3,$t3,0x1
    andi       $s8,$s8,0xf
    ld         $t9,24($sp)
    sra        $at,$at,0x1
    daddu      $t3,$t3,$s3
    andi       $at,$at,0x1
    ld         $ra,0($sp)
    andi       $t9,$t9,0xff
    sll        $at,$at,0x4
    ld         $s3,48($sp)
    sll        $t9,$t9,0x5
    or         $s2,$s8,$at
    ld         $a6,16($sp)
    dsll32     $s1,$s1,0x0
    or         $s2,$s2,$t9
    ld         $t2,-30688($gp)
    dsrl32     $s1,$s1,0x0
    or         $s2,$s2,$t8
    ld         $s8,8($sp)
    daddu      $a7,$a6,$a7
    dsll32     $s2,$s2,0x0
    daddu      $s1,$s0,$s1
    dsrl32     $s2,$s2,0x0
    sd         $s2,320($t3)
    li         $s0,68
    sync
    sd         $s0,0($s1)
    sync
    lw         $t0,-31292($a7)
    lui        $t1,0x1
    ld         $t3,320($t3)
    ori        $t1,$t1,0x1000
    and        $t0,$t0,$t2
    sw         $t0,-31292($a7)
    or         $t0,$t0,$t1
    sw         $t0,-31292($a7)
    ld         $t1,824($a6)
    ld         $s0,40($sp)
    sw         $t0,4212($t1)
    sync
    sw         $zero,-31288($a7)
    ld         $a6,824($a6)
    ld         $s1,32($sp)
    sw         $zero,4220($a6)
    sync
    ld         $s2,56($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00001f7c:
    addiu      $t9,$s1,776
.L00001f80:
    dsll32     $t9,$t9,0x0
    dsrl32     $t9,$t9,0x0
    daddu      $t9,$s0,$t9
    li         $t8,256
    b          .L00001e88
    sd         $t8,0($t9)

glabel odsy_fc_detach
    daddiu     $sp,$sp,-32
    sd         $s8,16($sp)
    sd         $ra,8($sp)
    lh         $ra,-15320($zero)
    ld         $s8,-30608($gp)
    dsll       $ra,$ra,0x4
    daddu      $s8,$s8,$ra
    ld         $s8,8($s8)
    lbu        $s8,1320($s8)
    jal        odsyPipeNrFromBase
    andi       $s8,$s8,0x1
    sll        $a0,$s8,0x2
    addu       $a0,$a0,$s8
    ld         $v1,0($gp)
    sll        $a0,$a0,0x3
    dsll       $a1,$v0,0x3
    addiu      $a5,$a0,768
    ld         $v0,-30680($gp)
    daddu      $v1,$v1,$a1
    dsll32     $a5,$a5,0x0
    ld         $v1,0($v1)
    dsrl32     $a5,$a5,0x0
    ld         $a4,-30664($gp)
    li         $a3,0x85c8
    daddu      $a5,$v0,$a5
    daddu      $a3,$a3,$v1
    sd         $a4,0($a5)
    li         $a1,1
    sync
    sw         $a1,0($a3)
    ld         $a2,824($v1)
    sw         $a1,4220($a2)
    addiu      $a0,$a0,776
    sync
    ld         $v1,824($v1)
    ld         $ra,8($sp)
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    lw         $v1,4204($v1)
    daddu      $v0,$v0,$a0
    sw         $v1,0($sp)
    li         $at,64
    sd         $at,0($v0)
    sync
    ld         $s8,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsyLowLevelReset
    ld         $a6,824($a0)
    ld         $a7,-30656($gp)
    daddiu     $sp,$sp,-80
    sd         $s1,24($sp)
    dsrl32     $a6,$a6,0x1
    ld         $a5,-30720($gp)
    andi       $a6,$a6,0x7f
    sd         $ra,16($sp)
    dsll32     $a6,$a6,0x1
    sd         $s0,48($sp)
    daddu      $s0,$a5,$a6
    li         $a3,132
    li         $t0,1
    lw         $at,4($s0)
    li         $t9,8
    sd         $s3,64($sp)
    lui        $s3,0x1
    sd         $s2,72($sp)
    daddu      $s3,$a0,$s3
    srl        $at,$at,0xc
    li         $v0,0xd100
    lw         $a4,-31340($s3)
    andi       $at,$at,0xffff
    lui        $s2,0x8000
    sd         $s4,56($sp)
    move       $s4,$a0
    sd         $a7,40($sp)
    beq        $at, $v0, .L00002390
    andi       $a4,$a4,0xf
.L000020c8:
    li         $ra,9
    li         $s1,14
    move       $a7,$zero
.L000020d4:
    li         $v1,1
    ld         $a0,40($sp)
    addiu      $t2,$a4,-8
    move       $a1,$t9
    lw         $t1,124($s0)
    sllv       $t2,$t0,$t2
    dsubu      $a0,$a6,$a0
    nor        $t2,$t2,$zero
    and        $t1,$t2,$t1
    b          .L00002124
    sw         $t1,124($s0)
.L00002100:
    daddu      $t1,$t0,$a6
.L00002104:
    daddu      $t1,$a5,$t1
    lw         $a2,0($t1)
    and        $a2,$t2,$a2
    sw         $a2,0($t1)
.L00002114:
    addiu      $a1,$a1,1
    slti       $t3,$a1,16
    beqz       $t3, .L0000219c
    addiu      $a3,$a3,8
.L00002124:
    beq        $a4, $a1, .L00002114
    andi       $t0,$a1,0x7
    beqz       $a7, .L0000214c
    sltiu      $t3,$a1,1
    beq        $a1, $t9, .L00002114
    nop
    beq        $a1, $ra, .L00002114
    nop
    beq        $a1, $s1, .L00002114
    sltiu      $t3,$a1,1
.L0000214c:
    dsll       $t1,$t0,0x6
    daddu      $t1,$a6,$t1
    daddu      $t1,$a5,$t1
    lw         $t8,276($t1)
    li         $t0,124
    and        $t8,$s2,$t8
    movz       $t0,$zero,$t3
    beqz       $t8, .L00002114
    slti       $t8,$a1,16
    lw         $at,316($t1)
    andi       $at,$at,0x20
    beqz       $at, .L00002114
    slti       $v0,$a1,8
    bnez       $v0, .L00002100
    nop
    beqz       $t8, .L00002100
    nop
    move       $t0,$a3
    b          .L00002104
    daddu      $t1,$t0,$a6
.L0000219c:
    beqz       $a7, .L000021c4
    nop
    lw         $a1,4($s0)
    srl        $a1,$a1,0x1c
    sllv       $v1,$v1,$a1
    beqz       $v1, .L000021c4
    nop
    lw         $a2,188($a0)
    and        $a2,$t2,$a2
    sw         $a2,188($a0)
.L000021c4:
    lw         $v0,36($s0)
    sw         $v0,0($sp)
    sw         $v0,4($sp)
    lw         $at,4($sp)
    li         $a2,-33
    and        $at,$a2,$at
    sw         $at,4($sp)
    lw         $t9,4($sp)
    li         $ra,-5
    and        $t9,$t9,$ra
    sw         $t9,4($sp)
    lw         $t8,4($sp)
    li         $t3,-3
    andi       $s1,$a4,0x7
    and        $t8,$t3,$t8
    sw         $t8,4($sp)
    dsll       $s1,$s1,0x6
    lw         $t8,4($sp)
    daddu      $s1,$a6,$s1
    sw         $t8,36($s0)
    daddu      $s1,$a5,$s1
    lw         $ra,36($s0)
    lw         $t9,268($s1)
    sw         $t9,8($sp)
    sw         $t9,12($sp)
    lw         $t8,12($sp)
    and        $t3,$t3,$t8
    sw         $t3,12($sp)
    lw         $t1,12($sp)
    li         $t2,-9
    and        $t1,$t1,$t2
    sw         $t1,12($sp)
    lw         $a7,12($sp)
    li         $t0,-17
    and        $a7,$a7,$t0
    sw         $a7,12($sp)
    lw         $a3,12($sp)
    and        $a2,$a2,$a3
    sw         $a2,12($sp)
    lw         $a0,12($sp)
    li         $a1,-65
    and        $a0,$a0,$a1
    sw         $a0,12($sp)
    lw         $v0,12($sp)
    li         $v1,-129
    and        $v0,$v0,$v1
    sw         $v0,12($sp)
    lw         $ra,12($sp)
    li         $at,-257
    and        $ra,$ra,$at
    sw         $ra,12($sp)
    lui        $t9,0x1
    lw         $t8,12($sp)
    nor        $t9,$t9,$zero
    and        $t8,$t8,$t9
    sw         $t8,12($sp)
    lui        $t3,0x2
    lw         $t2,12($sp)
    nor        $t3,$t3,$zero
    and        $t2,$t2,$t3
    sw         $t2,12($sp)
    lui        $t1,0x7fff
    lw         $t0,12($sp)
    sd         $zero,32($sp)
    ori        $t1,$t1,0xffff
    and        $t0,$t0,$t1
    sw         $t0,12($sp)
    lw         $a7,12($sp)
    sw         $a7,268($s1)
    lw         $a3,268($s1)
    move       $a3,$zero
    sw         $zero,-31320($s3)
.L000022e4:
    ori        $a3,$a3,0x200
    sw         $a3,-31320($s3)
    ld         $a4,824($s4)
    move       $a0,$s4
    lui        $a1,0xf
    sw         $a3,4108($a4)
    sync
    ori        $a1,$a1,0x4240
    jal        odsy_usdelay
    lw         $a2,268($s1)
    sw         $zero,-31320($s3)
    lw         $a5,276($s1)
    and        $a5,$s2,$a5
    beqz       $a5, .L000023b4
    ld         $a1,-30720($gp)
    lw         $a6,316($s1)
    andi       $a6,$a6,0x20
    beqz       $a6, .L000023b4
    ld         $a1,-30720($gp)
    lw         $a4,8($sp)
    lui        $a5,0x7c
    nor        $a5,$a5,$zero
    and        $a4,$a4,$a5
    lui        $a5,0x10
    or         $a4,$a4,$a5
    sw         $a4,8($sp)
    lw         $a3,8($sp)
    sw         $a3,268($s1)
    lw         $a2,0($sp)
    move       $a0,$s4
    lui        $a1,0x1
    sw         $a2,36($s0)
    ori        $a1,$a1,0x86a0
    jal        odsy_usdelay
    lw         $a7,268($s1)
.L00002370:
    ld         $s0,48($sp)
    ld         $s1,24($sp)
    ld         $ra,16($sp)
    ld         $s2,72($sp)
    ld         $s3,64($sp)
    ld         $s4,56($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00002390:
    lw         $a7,4($s0)
    srl        $a7,$a7,0x1
    andi       $a7,$a7,0x7ff
    li         $ra,9
    bnez       $a7, .L000020c8
    li         $s1,14
    b          .L000020d4
    li         $a7,1
    ld         $a1,-30720($gp)
.L000023b4:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,688
    ld         $a2,32($sp)
    addiu      $a2,$a2,2
    sd         $a2,32($sp)
    slti       $a2,$a2,7
    beqz       $a2, .L00002370
    nop
    b          .L000022e4
    lw         $a3,-31320($s3)

glabel odsyReset
    daddiu     $sp,$sp,-64
    sd         $s0,56($sp)
    sd         $s1,32($sp)
    ld         $s1,0($gp)
    sd         $s2,16($sp)
    dsll       $s2,$a0,0x3
    sd         $s4,8($sp)
    daddu      $s1,$s1,$s2
    ld         $s1,0($s1)
    move       $a1,$zero
    move       $s4,$a0
    sd         $ra,24($sp)
    ld         $s2,824($s1)
    jal        odsyFifoTimer
    move       $a0,$s1
    li         $v0,1
    sw         $v0,816($s1)
    lui        $s0,0x1
    sh         $zero,794($s1)
    daddu      $s0,$s0,$s1
    lw         $t8,-19328($s0)
    beqz       $t8, .L00002b1c
    sd         $s3,40($sp)
    jal        mutex_spinlock
    daddiu     $a0,$gp,0
    sw         $v0,0($sp)
    lw         $a0,-19400($s0)
.L0000244c:
    ld         $t8,-30696($gp)
    beqz       $a0, .L00002484
    ld         $t8,0($t8)
    jal        xwidget_info_get
    nop
    jal        xwidget_info_master_get
    move       $a0,$v0
    jal        master_node_get
    move       $a0,$v0
    ld         $s3,-30688($gp)
    daddu      $t8,$v0,$v0
    daddu      $s3,$s3,$t8
    b          .L00002488
    lh         $s3,0($s3)
.L00002484:
    lh         $s3,-19396($s0)
.L00002488:
    move       $a0,$s3
    lbu        $a1,-19392($s0)
    li         $a2,1
    jal        hub_widget_flags_set
    sd         $s5,48($sp)
    ld         $ra,-30672($gp)
    li         $a1,588
    dsll32     $t9,$s3,0x1
    daddiu     $s5,$s1,200
    daddu      $t9,$t9,$ra
    move       $a0,$s5
    jal        bzero
    ld         $t9,272($t9)
    ld         $a1,-30720($gp)
    li         $a2,16
    move       $a0,$s5
    lh         $a3,790($s1)
    sw         $a3,240($s1)
    jal        strncpy
    daddiu     $a1,$a1,848
    li         $s5,-1
    sw         $s5,248($s1)
    sw         $s5,288($s1)
    sw         $s5,284($s1)
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
    move       $a0,$s4
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
    move       $a0,$s4
    lw         $t2,36($s2)
    move       $a1,$zero
    jal        odsyGatherInfo
    sw         $t2,-31340($s0)
    ld         $a1,-30600($gp)
    lw         $a2,36($s2)
    ld         $a0,-30720($gp)
    sw         $a2,-31340($s0)
    sd         $a1,0($gp)
    jal        kopt_find
    daddiu     $a0,$a0,856
    bnez       $v0, .L00002a74
    move       $s4,$v0
.L000025e4:
    ld         $a3,-30712($gp)
.L000025e8:
    ld         $a3,0($a3)
    andi       $a3,$a3,0xf000
    li         $a4,16384
    beq        $a3, $a4, .L0000260c
    move       $a0,$s3
    jal        get_chimera_type
    move       $a0,$s3
    beqz       $v0, .L00002ac4
    move       $a0,$s3
.L0000260c:
    li         $a2,2
    jal        hub_widget_flags_set
    lbu        $a1,-19392($s0)
    lw         $v0,-19328($s0)
    beqz       $v0, .L00002af8
    lw         $a1,0($sp)
.L00002624:
    jal        mutex_spinunlock
    daddiu     $a0,$gp,0
.L0000262c:
    sw         $zero,-31312($s0)
    ld         $a0,824($s1)
    sw         $s5,4156($a0)
    sync
    sw         $zero,-31316($s0)
    ld         $v1,824($s1)
    sw         $s5,4124($v1)
    sync
    sw         $zero,-31308($s0)
    ld         $v0,824($s1)
    sw         $zero,4164($v0)
    sync
    sw         $zero,-31304($s0)
    ld         $at,824($s1)
    sw         $zero,4172($at)
    sync
    sw         $zero,-31300($s0)
    ld         $ra,824($s1)
    sw         $zero,4180($ra)
    sync
    sw         $zero,-31296($s0)
    ld         $t9,824($s1)
    sw         $zero,4188($t9)
    sync
    sw         $zero,-31292($s0)
    ld         $t8,824($s1)
    sw         $zero,4212($t8)
    sync
    sw         $zero,-31288($s0)
    ld         $s4,824($s1)
    sw         $zero,4220($s4)
    sync
    lw         $t3,36($s2)
    sw         $zero,-31276($s0)
    sw         $t3,-31340($s0)
    ld         $t2,824($s1)
    sw         $zero,4236($t2)
    sync
    sw         $zero,-31272($s0)
    ld         $t1,824($s1)
    sw         $zero,4252($t1)
    sync
    sw         $zero,-31268($s0)
    ld         $t0,824($s1)
    sw         $zero,4260($t0)
    sync
    sw         $zero,-31264($s0)
    ld         $a7,824($s1)
    sw         $zero,4268($a7)
    sync
    sw         $zero,-31260($s0)
    ld         $a6,824($s1)
    sw         $zero,16412($a6)
    sync
    sw         $zero,-31256($s0)
    ld         $a5,824($s1)
    sw         $zero,16420($a5)
    sync
    sw         $zero,-31252($s0)
    ld         $a4,824($s1)
    sw         $zero,16428($a4)
    sync
    sw         $zero,-31248($s0)
    ld         $a3,824($s1)
    sw         $zero,16436($a3)
    sync
    sw         $zero,-31244($s0)
    ld         $a2,824($s1)
    sw         $zero,16444($a2)
    sync
    lw         $a0,-31240($s0)
    li         $v1,-16
    lw         $a1,36($s2)
    sw         $a1,-31340($s0)
    and        $v1,$v1,$a0
    lui        $v0,0x1
    ori        $v1,$v1,0xc
    sw         $v1,-31240($s0)
    or         $v0,$v0,$v1
    sw         $v0,-31240($s0)
    lbu        $v1,792($s1)
    li         $ra,0xff00
    li         $a0,-241
    andi       $v1,$v1,0xf
    and        $v0,$v0,$a0
    sll        $v1,$v1,0x4
    nor        $ra,$ra,$zero
    or         $v0,$v0,$v1
    lui        $at,0x1
    sw         $v0,-31240($s0)
    and        $ra,$v0,$ra
    ori        $at,$at,0xffff
    ori        $ra,$ra,0xc000
    sw         $ra,-31240($s0)
    and        $ra,$ra,$at
    sw         $ra,-31240($s0)
    ld         $at,824($s1)
    sw         $ra,16452($at)
    sync
    lw         $t8,-31224($s0)
    lui        $t9,0xffff
    lui        $t2,0xf
    and        $t8,$t8,$t9
    nor        $t2,$t2,$zero
    ori        $t8,$t8,0x12
    lui        $s4,0x4
    sw         $t8,-31224($s0)
    and        $t2,$t8,$t2
    lui        $t3,0x100
    or         $t2,$t2,$s4
    sw         $t2,-31224($s0)
    or         $t2,$t2,$t3
    sw         $t2,-31224($s0)
    lbu        $t3,792($s1)
    lui        $s4,0xf0
    nor        $s4,$s4,$zero
    andi       $t3,$t3,0xf
    and        $t2,$t2,$s4
    sll        $t3,$t3,0x14
    or         $t2,$t2,$t3
    sw         $t2,-31224($s0)
    ld         $t3,824($s1)
    sw         $t2,16404($t3)
    sync
    lw         $t1,36($s2)
    sw         $zero,-31236($s0)
    sw         $t1,-31340($s0)
    ld         $t0,824($s1)
    sw         $zero,16460($t0)
    sync
    sw         $zero,-31232($s0)
    ld         $a7,824($s1)
    sw         $zero,16468($a7)
    sync
    sw         $zero,-31228($s0)
    ld         $a6,824($s1)
    sw         $zero,16476($a6)
    sync
    lw         $a5,36($s2)
    sw         $a5,-31340($s0)
    sw         $zero,4284($s2)
    sync
    sw         $s5,4300($s2)
    sync
    lw         $a4,36($s2)
    sw         $a4,-31340($s0)
    lw         $a1,260($s1)
    li         $s4,2
    beq        $a1, $s4, .L00002b34
    li         $a6,-5
    li         $a2,4
    beq        $a1, $a2, .L00002a50
    ld         $a0,-30720($gp)
    jal        printf
    daddiu     $a0,$a0,728
.L00002898:
    lw         $a1,256($s1)
    beq        $a1, $s4, .L00002b44
    ld         $s3,-30720($gp)
    li         $a2,3
    beq        $a1, $a2, .L00002a60
    nop
    jal        printf
    daddiu     $a0,$s3,768
.L000028b8:
    lw         $a1,252($s1)
    li         $v0,32
    beq        $a1, $v0, .L00002b54
    li         $a3,33
    beq        $a1, $a3, .L00002b68
    li         $a4,64
    beq        $a1, $a4, .L00002b84
    li         $a5,128
    beq        $a1, $a5, .L00002b08
    li         $a4,-25
    jal        printf
    daddiu     $a0,$s3,808
.L000028e8:
    move       $a0,$s1
    jal        odsy_usdelay
    li         $a1,400
    lw         $a7,-31324($s0)
    ld         $s3,40($sp)
    li         $a6,-33
    and        $a6,$a6,$a7
    sw         $a6,-31324($s0)
    ld         $a7,824($s1)
    ld         $s4,8($sp)
    li         $a1,400
    sw         $a6,4100($a7)
    sync
    ld         $s5,48($sp)
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
    ld         $s0,56($sp)
    sw         $zero,816($s1)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00002a50:
    lw         $t1,-31324($s0)
    ori        $t1,$t1,0x4
    b          .L00002898
    sw         $t1,-31324($s0)
.L00002a60:
    lw         $t2,-31324($s0)
    li         $t3,-3
    and        $t2,$t2,$t3
    b          .L000028b8
    sw         $t2,-31324($s0)
.L00002a74:
    jal        strlen
    move       $a0,$v0
    sltiu      $t8,$v0,9
    beqz       $t8, .L000025e8
    ld         $a3,-30712($gp)
    ld         $a1,-30720($gp)
    move       $a0,$s4
    li         $a2,5
    jal        strncmp
    daddiu     $a1,$a1,864
    beqz       $v0, .L00002bac
.L00002aa0:
    ld         $a1,-30720($gp)
.L00002aa4:
    move       $a0,$s4
    li         $a2,5
    jal        strncmp
    daddiu     $a1,$a1,872
    bnez       $v0, .L000025e4
    ld         $a2,-30600($gp)
    b          .L000025e4
    sd         $a2,0($gp)
.L00002ac4:
    move       $a0,$s3
    jal        hub_set_piomode
    li         $a1,2
    lw         $v0,-19328($s0)
    beqz       $v0, .L00002af8
    nop
    lh         $a0,-19394($s0)
    beq        $a0, $s5, .L00002af0
    nop
    bne        $s3, $a0, .L00002b9c
    nop
.L00002af0:
    bnez       $v0, .L00002624
    lw         $a1,0($sp)
.L00002af8:
    jal        mutex_unlock
    ld         $a0,-30712($gp)
    b          .L0000262c
    nop
.L00002b08:
    lw         $a3,-31324($s0)
    and        $a3,$a3,$a4
    ori        $a3,$a3,0x10
    b          .L000028e8
    sw         $a3,-31324($s0)
.L00002b1c:
    ld         $s3,-30712($gp)
    li         $a1,25
    jal        mutex_lock
    move       $a0,$s3
    b          .L0000244c
    lw         $a0,-19400($s0)
.L00002b34:
    lw         $a5,-31324($s0)
    and        $a5,$a5,$a6
    b          .L00002898
    sw         $a5,-31324($s0)
.L00002b44:
    lw         $a7,-31324($s0)
    ori        $a7,$a7,0x2
    b          .L000028b8
    sw         $a7,-31324($s0)
.L00002b54:
    lw         $t0,-31324($s0)
    li         $t1,-25
    and        $t0,$t0,$t1
    b          .L000028e8
    sw         $t0,-31324($s0)
.L00002b68:
    lw         $t2,-31324($s0)
    li         $t3,-25
    and        $t2,$t2,$t3
    ori        $t2,$t2,0x10
    sw         $t2,-31324($s0)
    b          .L000028e8
    sw         $v0,252($s1)
.L00002b84:
    lw         $t8,-31324($s0)
    li         $t9,-25
    and        $t8,$t8,$t9
    ori        $t8,$t8,0x8
    b          .L000028e8
    sw         $t8,-31324($s0)
.L00002b9c:
    jal        hub_set_piomode
    li         $a1,2
    b          .L00002af0
    lw         $v0,-19328($s0)
.L00002bac:
    lw         $at,280($s1)
    li         $ra,1
    bne        $ra, $at, .L00002aa4
    ld         $a1,-30720($gp)
    ld         $v0,-30592($gp)
    b          .L00002aa0
    sd         $v0,0($gp)

glabel odsyInitCfifo
    daddiu     $sp,$sp,-64
    sd         $ra,48($sp)
    sd         $s1,24($sp)
    ld         $s1,0($gp)
    sd         $s2,32($sp)
    dsll       $s2,$a0,0x3
    sd         $s0,56($sp)
    daddu      $s1,$s1,$s2
    ld         $s1,0($s1)
    sd         $s3,16($sp)
    ld         $s2,72($s1)
    ld         $at,824($s1)
    move       $s3,$a1
    beqz       $a1, .L00002c3c
    sd         $at,40($sp)
    jal        splhi
    nop
    lw         $t8,4($s2)
    ori        $t8,$t8,0x2
    sw         $t8,4($s2)
    ld         $a0,808($s1)
    beqz       $a0, .L00002c34
    move       $s0,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00002f7c
    nop
.L00002c34:
    jal        splx
    move       $a0,$s0
.L00002c3c:
    ld         $at,-30624($gp)
    ld         $v0,-30632($gp)
    ld         $v1,-30640($gp)
    lui        $a3,0x1
    ld         $t8,40($sp)
    ld         $a0,-30648($gp)
    li         $a1,107
    lui        $s0,0x11
    dsll32     $a1,$a1,0x4
    ld         $t9,-30696($gp)
    daddu      $s0,$s0,$t8
    ori        $a3,$a3,0x854
    sw         $a3,0($s0)
    sync
    lui        $a2,0xfff
    sw         $zero,0($s0)
    sync
    ori        $a2,$a2,0xffff
    sw         $a2,0($s0)
    sync
    sd         $a1,0($s0)
    sync
    sd         $a0,0($s0)
    sync
    sd         $v1,0($s0)
    sync
    lui        $ra,0x1
    sd         $v0,0($s0)
    sync
    ori        $ra,$ra,0x46
    sd         $at,0($s0)
    sync
    li         $a1,2000
    sw         $ra,0($s0)
    sync
    move       $a0,$s1
    jal        odsy_usdelay
    ld         $t9,0($t9)
    ld         $a3,824($s1)
    lui        $a2,0x20
    ori        $a2,$a2,0x1594
    daddu      $a2,$a2,$a3
    lui        $a3,0x3d
    lw         $a2,0($a2)
    ori        $a3,$a3,0x46
    bne        $a2, $a3, .L00002e44
    lui        $a0,0x11
    move       $a7,$zero
    li         $t0,5
    lui        $a5,0x4000
    ori        $a5,$a5,0x8000
    lui        $a3,0x2700
    ld         $a6,-30584($gp)
    lui        $a4,0x2600
    lui        $t1,0x2e00
    ori        $t1,$t1,0x8380
    sw         $t1,0($s0)
    sync
    ori        $a4,$a4,0x807f
    sw         $a4,0($s0)
    sync
    ori        $a3,$a3,0x8000
    sw         $a3,0($s0)
    sync
    addiu      $a7,$a7,1
.L00002d40:
    li         $a4,5
    move       $v0,$t0
    daddu      $t1,$v0,$v0
.L00002d4c:
    daddu      $t1,$a6,$t1
    lhu        $t1,2000($t1)
    addiu      $v0,$v0,-1
    sra        $t2,$t1,0xa
    andi       $t1,$t1,0x3ff
    sll        $t2,$t2,0x17
    addiu      $a4,$a4,-1
    or         $t1,$t1,$t2
    or         $t1,$a5,$t1
    sw         $t1,0($s0)
    sync
    bgez       $a4, .L00002d4c
    daddu      $t1,$v0,$v0
    addiu      $t0,$t0,6
    slti       $t2,$a7,2048
    bnez       $t2, .L00002d40
    addiu      $a7,$a7,1
    ld         $t8,824($s1)
    ld         $t3,-30616($gp)
    daddu      $t8,$a0,$t8
    sd         $t3,0($t8)
    sync
    beqz       $s3, .L00002e28
    move       $v0,$zero
    jal        splhi
    nop
    ld         $a0,808($s1)
    beqz       $a0, .L00002e0c
    move       $s0,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00002e0c
    nop
    lw         $t9,104($s1)
    beqz       $t9, .L00002ecc
    li         $v1,0x85c8
.L00002ddc:
    daddu      $v1,$v1,$s1
    li         $at,1
    sw         $at,0($v1)
    ld         $v0,824($s1)
    sw         $at,4220($v0)
    sync
    ld         $ra,824($s1)
    lw         $ra,4220($ra)
    sw         $ra,4($sp)
    move       $a1,$s2
    jal        gfx_flow_detach_me
    ld         $a0,808($s1)
.L00002e0c:
    lw         $a0,4($s2)
    li         $a1,-3
    and        $a0,$a0,$a1
    sw         $a0,4($s2)
    jal        splx
    move       $a0,$s0
    move       $v0,$zero
.L00002e28:
    ld         $s3,16($sp)
    ld         $ra,48($sp)
    ld         $s1,24($sp)
    ld         $s0,56($sp)
    ld         $s2,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00002e44:
    beqz       $s3, .L00002ec4
    nop
    jal        splhi
    nop
    ld         $a0,808($s1)
    beqz       $a0, .L00002eac
    move       $s0,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00002eac
    nop
    lw         $a2,104($s1)
    beqz       $a2, .L00002f24
    li         $a6,0x85c8
.L00002e7c:
    daddu      $a6,$a6,$s1
    li         $a4,1
    sw         $a4,0($a6)
    ld         $a5,824($s1)
    sw         $a4,4220($a5)
    sync
    ld         $a3,824($s1)
    ld         $a0,808($s1)
    lw         $a3,4220($a3)
    move       $a1,$s2
    jal        gfx_flow_detach_me
    sw         $a3,0($sp)
.L00002eac:
    lw         $a7,4($s2)
    move       $a0,$s0
    li         $t0,-3
    and        $a7,$a7,$t0
    jal        splx
    sw         $a7,4($s2)
.L00002ec4:
    b          .L00002e28
    li         $v0,1
.L00002ecc:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s1)
    move       $s3,$v0
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s1)
    sltu       $t1,$s3,$v0
    beqz       $t1, .L00002ddc
    li         $v1,0x85c8
    jal        rt_pin_thread
    nop
    move       $s3,$v0
    jal        splx
    move       $a0,$s0
    jal        odsy_flow_await_returned_credits
    move       $a0,$s1
    jal        splhi
    nop
    move       $s0,$v0
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L00002ddc
    li         $v1,0x85c8
.L00002f24:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s1)
    move       $s3,$v0
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s1)
    sltu       $t2,$s3,$v0
    beqz       $t2, .L00002e7c
    li         $a6,0x85c8
    jal        rt_pin_thread
    nop
    move       $s3,$v0
    jal        splx
    move       $a0,$s0
    jal        odsy_flow_await_returned_credits
    move       $a0,$s1
    jal        splhi
    nop
    move       $s0,$v0
    jal        rt_unpin_thread
    move       $a0,$s3
    b          .L00002e7c
    li         $a6,0x85c8
.L00002f7c:
    jal        rt_pin_thread
    nop
    sd         $v0,8($sp)
    ld         $a0,808($s1)
    jal        gfx_flow_attach_me
    move       $a1,$s2
    lui        $t8,0x1
    ld         $at,-30688($gp)
    daddu      $t8,$s1,$t8
    lw         $t9,-31292($t8)
    lw         $ra,-19376($t8)
    sll        $ra,$ra,0xc
    and        $t9,$t9,$at
    or         $t9,$t9,$ra
    sw         $t9,-31292($t8)
    ld         $ra,824($s1)
    sw         $t9,4212($ra)
    sync
    sw         $zero,-31288($t8)
    ld         $t3,824($s1)
    sw         $zero,4220($t3)
    sync
    jal        splx
    move       $a0,$s0
    jal        odsy_flow_await_returned_credits
    move       $a0,$s1
    jal        splhi
    nop
    ld         $a1,72($s1)
    move       $s0,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a0,808($s1)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L00002c34
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
    ld         $at,-30608($gp)
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
.L000035ac:
    li         $a1,3
    jal        odsy_i2cDDCRegRead
    daddiu     $a2,$sp,0
    li         $a1,1000
    jal        odsy_usdelay
    ld         $a0,16($s0)
    lbu        $v0,0($sp)
    andi       $v0,$v0,0x2
    addiu      $s1,$s1,1
    beqz       $v0, .L000035f0
    slti       $v0,$s1,5000
    li         $v0,1
.L000035dc:
    ld         $ra,24($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000035f0:
    bnez       $v0, .L000035ac
    move       $a0,$s0
    b          .L000035dc
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
    lw         $at,-19328($s1)
    sd         $s7,224($sp)
    sd         $s0,104($sp)
    move       $s0,$a0
    beqz       $at, .L00003a20
    sd         $s4,232($sp)
    move       $a0,$s5
.L00003650:
    jal        odsy_poll_dfifo_level
    li         $a1,10
    bnez       $v0, .L00003998
    lui        $s3,0x40
    ld         $a0,-30600($gp)
    daddu      $s7,$s3,$s5
    move       $v0,$zero
    sd         $a0,0($s7)
    sync
.L00003674:
    addiu      $v0,$v0,1
    slti       $t8,$v0,4
    sd         $a0,0($s7)
    sync
    bnez       $t8, .L00003674
    ld         $t9,-30592($gp)
    sd         $t9,0($s7)
    sync
    move       $a1,$zero
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    bnez       $v0, .L0000399c
    lw         $a5,-19328($s1)
    lui        $ra,0x23
    daddu      $ra,$ra,$s5
    lw         $at,9244($ra)
    sw         $at,-19496($s1)
    lw         $ra,9236($ra)
    beqz       $a5, .L00003b68
    sw         $ra,-19492($s1)
    move       $a1,$s0
.L000036c8:
    li         $s2,0xb3e0
    move       $a2,$zero
    daddu      $s2,$s0,$s2
    jal        odsy_i2c_init_port_handle
    move       $a0,$s2
    bnez       $v0, .L00004670
    sd         $s2,72($sp)
    li         $a2,1
.L000036e8:
    li         $s6,0xb408
    move       $a1,$s0
    daddu      $s6,$s0,$s6
    ld         $s2,-30720($gp)
    jal        odsy_i2c_init_port_handle
    move       $a0,$s6
    bnez       $v0, .L00004688
    daddiu     $a1,$s2,928
    lw         $t8,-19328($s1)
.L0000370c:
    beqz       $t8, .L00003bbc
    li         $a1,25
    li         $a1,15
.L00003718:
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    bnez       $v0, .L0000399c
    lw         $a5,-19328($s1)
    ld         $ra,824($s0)
    lui        $t9,0x23
    daddu      $t9,$t9,$ra
    lw         $t9,14348($t9)
    beqz       $a5, .L00003d14
    sd         $t9,160($sp)
    ld         $at,160($sp)
.L00003744:
    sll        $at,$at,0x15
    bltz       $at, .L00003bd0
    nop
    lhu        $v1,296($s0)
    beqz       $v1, .L00003e7c
    li         $v0,3
.L0000375c:
    lhu        $a0,298($s0)
    li         $s2,1024
    sw         $zero,700($s0)
    li         $s4,1280
    beq        $v0, $a0, .L00003d68
    sw         $zero,704($s0)
    lhu        $a1,308($s0)
    beqz       $a1, .L00003c04
.L0000377c:
    move       $a0,$s0
.L00003780:
    jal        odsy_ProbeCompositor
    daddiu     $a1,$s0,700
    beqz       $v0, .L00003c20
.L0000378c:
    move       $a0,$s0
.L00003790:
    jal        odsy_ProbeRainier
    daddiu     $a1,$s0,708
    sw         $s2,12($sp)
    sw         $s4,8($sp)
.L000037a0:
    sw         $s2,12($sp)
    sw         $s4,8($sp)
    lw         $a2,704($s0)
    beqz       $a2, .L00003e0c
    move       $a0,$s0
    sw         $zero,24($sp)
.L000037b8:
    daddiu     $a1,$sp,8
    move       $a0,$s0
    sw         $zero,20($sp)
    li         $a3,8
    jal        odsyConfigFb
    sw         $a3,16($sp)
    ld         $a4,96($sp)
    beqz       $a4, .L00003bd8
    lw         $a5,-19328($s1)
    beqz       $a5, .L00003e64
    move       $a0,$s5
.L000037e4:
    jal        odsy_poll_dfifo_level
    li         $a1,14
    beqz       $v0, .L00003c70
    sltu       $a1,$zero,$v0
    lw         $a5,-19328($s1)
.L000037f8:
    bnez       $a1, .L0000399c
    nop
.L00003800:
    beqz       $a5, .L000040d4
    li         $s4,-1
.L00003808:
    lw         $a2,64($sp)
    move       $s2,$zero
    dsll32     $s4,$s4,0x0
    ld         $a4,-30568($gp)
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
.L00003850:
    sra        $t9,$s2,0x1f
    xor        $t8,$s2,$t9
    subu       $t8,$t8,$t9
    andi       $t8,$t8,0xf
    xor        $t8,$t8,$t9
    subu       $t8,$t8,$t9
    sd         $a2,144($sp)
    beqz       $t8, .L00003cec
    sd         $a1,184($sp)
.L00003874:
    sll        $ra,$a1,0xe
    or         $ra,$a0,$ra
    addiu      $s2,$s2,1
    dsll32     $ra,$ra,0x0
    slti       $t9,$s2,32
    and        $ra,$s4,$ra
    or         $ra,$a2,$ra
    sd         $ra,0($s7)
    sync
    bnez       $t9, .L00003850
    addiu      $a1,$a1,1
    lw         $a2,68($sp)
    li         $a3,-256
    and        $a2,$a2,$a3
    dsll32     $a2,$a2,0x0
    move       $s2,$zero
    dsrl32     $a2,$a2,0x0
    li         $a1,10528
    and        $a2,$s6,$a2
.L000038c0:
    sra        $a5,$s2,0x1f
    xor        $a4,$s2,$a5
    subu       $a4,$a4,$a5
    andi       $a4,$a4,0xf
    xor        $a4,$a4,$a5
    subu       $a4,$a4,$a5
    sd         $a2,136($sp)
    beqz       $a4, .L00003e3c
    sd         $a1,176($sp)
.L000038e4:
    sll        $a6,$a1,0xe
    or         $a6,$a0,$a6
    addiu      $s2,$s2,1
    dsll32     $a6,$a6,0x0
    slti       $a5,$s2,8
    and        $a6,$s4,$a6
    or         $a6,$a2,$a6
    sd         $a6,0($s7)
    sync
    bnez       $a5, .L000038c0
    addiu      $a1,$a1,1
    move       $a0,$s5
    jal        odsy_poll_dfifo_level
    li         $a1,11
    ld         $t2,-30536($gp)
    ld         $t3,-30544($gp)
    ld         $t8,-30552($gp)
    ld         $t9,-30560($gp)
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
    ld         $t0,-30528($gp)
    daddu      $t1,$s3,$t1
    sd         $t0,0($t1)
    sync
    lw         $a7,-19328($s1)
    beqz       $a7, .L00004050
    li         $a3,-1
.L00003970:
    move       $a2,$zero
    li         $a1,1
    li         $a0,0xb488
    jal        init_sema
    daddu      $a0,$s0,$a0
    move       $a0,$s0
    jal        odsyBlankScreen
    move       $a1,$zero
    b          .L000039a4
    ld         $s2,192($sp)
.L00003998:
    lw         $a5,-19328($s1)
.L0000399c:
    beqz       $a5, .L000039cc
    ld         $s2,192($sp)
.L000039a4:
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
.L000039cc:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    move       $s3,$v0
    li         $s4,0x8530
    beqz       $t8, .L00003b4c
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00003a38
    nop
.L00003a10:
    jal        vsema
    move       $a0,$s4
    b          .L000039a4
    ld         $s2,192($sp)
.L00003a20:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00003650
    move       $a0,$s5
.L00003a38:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a0,-31408($s1)
    srl        $a2,$a5,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    move       $a1,$v0
    beqz       $a0, .L00003adc
    lui        $s3,0x40
    li         $a6,-1
    li         $t1,-3
    dsrl32     $a6,$a6,0x0
    and        $t1,$a5,$t1
    sw         $t1,-19664($s1)
    dsll32     $t1,$t1,0x0
    ld         $t2,824($s0)
    ld         $a3,-30704($gp)
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
.L00003adc:
    ld         $t0,824($s0)
    daddu      $t0,$s3,$t0
    ld         $a7,-31416($s1)
    sd         $a7,0($t0)
    sync
    beqz       $a0, .L00003b28
    li         $a5,-2
    lw         $t1,-19664($s1)
    and        $t1,$a5,$t1
    sw         $t1,-19664($s1)
    li         $t8,-1
    ld         $t2,824($s0)
    dsrl32     $t8,$t8,0x0
    ld         $t3,-30704($gp)
    and        $t1,$t1,$t8
    daddu      $t2,$s3,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
.L00003b28:
    lw         $t2,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t2,$t2,0x2
    and        $t2,$a5,$t2
    jal        mutex_spinunlock
    sw         $t2,-19664($s1)
    b          .L00003a10
    nop
.L00003b4c:
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L000039a4
    ld         $s2,192($sp)
.L00003b68:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    move       $s6,$v0
    li         $s4,0x8530
    beqz       $t8, .L00003e20
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00003f40
    nop
.L00003bac:
    jal        vsema
    move       $a0,$s4
    b          .L000036c8
    move       $a1,$s0
.L00003bbc:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00003718
    li         $a1,15
.L00003bd0:
    b          .L0000375c
    li         $v0,3
.L00003bd8:
    beqz       $a5, .L000040a4
    li         $a1,25
    move       $a0,$s5
.L00003be4:
    jal        odsy_poll_dfifo_level
    li         $a1,14
    beqz       $v0, .L00003ee8
    sltu       $a0,$zero,$v0
.L00003bf4:
    beqz       $a0, .L00003ee0
    nop
    b          .L0000399c
    lw         $a5,-19328($s1)
.L00003c04:
    lw         $a1,292($s0)
    blez       $a1, .L0000377c
    ld         $a0,72($sp)
    jal        odsy_i2cProbe2b
    daddiu     $a1,$s0,308
    b          .L00003780
    move       $a0,$s0
.L00003c20:
    lw         $v0,700($s0)
    lui        $a0,0xf000
    and        $a0,$v0,$a0
    lui        $a2,0x1000
    beq        $a0, $a2, .L0000378c
    nop
    bnez       $a0, .L0000378c
    srl        $a1,$v0,0x1
    andi       $a1,$a1,0x3
    bnez       $a1, .L00003790
    move       $a0,$s0
    move       $a0,$s0
    daddiu     $a1,$s0,712
    srl        $a2,$v0,0x3
    jal        odsy_ReadCompositorNic
    andi       $a2,$a2,0x1
    beqz       $v0, .L00003790
    move       $a0,$s0
    b          .L0000378c
    sw         $zero,700($s0)
.L00003c70:
    ld         $a3,-30576($gp)
    ld         $a4,-30584($gp)
    sd         $a4,0($s7)
    sync
    sd         $a3,0($s7)
    sync
    lw         $a5,-19328($s1)
    bnez       $a5, .L000037f8
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    sd         $a1,152($sp)
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    move       $s6,$v0
    li         $s4,0x8530
    beqz       $t8, .L0000441c
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00004438
    nop
.L00003cd8:
    jal        vsema
    move       $a0,$s4
    ld         $a1,152($sp)
.L00003ce4:
    b          .L000037f8
    lw         $a5,-19328($s1)
.L00003cec:
    move       $a0,$s5
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    ld         $a1,184($sp)
    lui        $a0,0x3000
    ld         $a2,144($sp)
    beqz       $v0, .L00003874
    ori        $a0,$a0,0x1
    b          .L0000399c
    lw         $a5,-19328($s1)
.L00003d14:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    li         $s4,0x8530
    sd         $v0,80($sp)
    beqz       $t8, .L000040b8
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00004138
    nop
.L00003d58:
    jal        vsema
    move       $a0,$s4
    b          .L00003744
    ld         $at,160($sp)
.L00003d68:
    jal        odsy_DCDResetDone
    move       $a0,$s6
    beqz       $v0, .L00003e00
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
    beqz       $ra, .L00004264
    lbu        $a2,0($sp)
    move       $a0,$s6
.L00003dac:
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    li         $a2,32
    lhu        $at,568($s0)
    beqz       $at, .L00004294
    lbu        $a2,0($sp)
    move       $a0,$s6
.L00003dc8:
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
    beqz       $v0, .L000040ec
.L00003df4:
    move       $a0,$s0
.L00003df8:
    jal        odsy_ProbeRainier
    daddiu     $a1,$s0,708
.L00003e00:
    sw         $s2,12($sp)
    b          .L000037a0
    sw         $s4,8($sp)
.L00003e0c:
    daddiu     $a1,$s0,704
    jal        odsy_ProbeDenali
    move       $a2,$zero
    b          .L000037b8
    sw         $zero,24($sp)
.L00003e20:
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s6
    b          .L000036c8
    move       $a1,$s0
.L00003e3c:
    move       $a0,$s5
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    ld         $a1,176($sp)
    lui        $a0,0x3000
    ld         $a2,136($sp)
    beqz       $v0, .L000038e4
    ori        $a0,$a0,0x1
    b          .L0000399c
    lw         $a5,-19328($s1)
.L00003e64:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L000037e4
    move       $a0,$s5
.L00003e7c:
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
    bne        $v0, $a5, .L0000375c
    sb         $a5,2($sp)
    daddiu     $a2,$sp,1
    li         $a1,7
    move       $a0,$s6
    jal        odsy_i2cDDCRegRead
    sh         $a5,298($s0)
    lbu        $a6,1($sp)
    li         $v0,3
    b          .L0000375c
    sh         $a6,300($s0)
.L00003ee0:
    b          .L00003800
    lw         $a5,-19328($s1)
.L00003ee8:
    lwu        $t1,8($sp)
    li         $s6,-1
    ld         $t2,-30584($gp)
    dsrl32     $s6,$s6,0x0
    and        $t1,$s6,$t1
    or         $t1,$t1,$t2
    sd         $t1,0($s7)
    sync
    lwu        $t0,12($sp)
    ld         $t1,-30576($gp)
    and        $t0,$s6,$t0
    or         $t0,$t0,$t1
    sd         $t0,0($s7)
    sync
    lw         $a7,-19328($s1)
    beqz       $a7, .L000043c8
    sd         $a0,128($sp)
    move       $a0,$s0
.L00003f30:
    jal        odsyLoadTimingTable
    ld         $a1,88($sp)
    b          .L00003bf4
    ld         $a0,128($sp)
.L00003f40:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a0,-31408($s1)
    srl        $a2,$a5,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    beqz       $a0, .L00003fe0
    move       $a1,$v0
    li         $a6,-1
    li         $t1,-3
    dsrl32     $a6,$a6,0x0
    and        $t1,$a5,$t1
    sw         $t1,-19664($s1)
    dsll32     $t1,$t1,0x0
    ld         $t2,824($s0)
    ld         $a3,-30704($gp)
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
.L00003fe0:
    ld         $t0,824($s0)
    daddu      $t0,$s3,$t0
    ld         $a7,-31416($s1)
    sd         $a7,0($t0)
    sync
    beqz       $a0, .L0000402c
    li         $a5,-2
    lw         $t1,-19664($s1)
    and        $t1,$a5,$t1
    sw         $t1,-19664($s1)
    li         $t8,-1
    ld         $t2,824($s0)
    dsrl32     $t8,$t8,0x0
    ld         $t3,-30704($gp)
    and        $t1,$t1,$t8
    daddu      $t2,$s3,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
.L0000402c:
    lw         $t2,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t2,$t2,0x2
    and        $t2,$a5,$t2
    jal        mutex_spinunlock
    sw         $t2,-19664($s1)
    b          .L00003bac
    nop
.L00004050:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    move       $s5,$v0
    li         $s4,0x8530
    beqz       $t8, .L00004248
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L000042c0
    nop
.L00004094:
    jal        vsema
    move       $a0,$s4
    b          .L00003970
    li         $a3,-1
.L000040a4:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00003be4
    move       $a0,$s5
.L000040b8:
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    ld         $a1,80($sp)
    b          .L00003744
    ld         $at,160($sp)
.L000040d4:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00003808
    li         $s4,-1
.L000040ec:
    lw         $v0,700($s0)
    lui        $a0,0xf000
    and        $a0,$v0,$a0
    lui        $a1,0x1000
    beq        $a0, $a1, .L00003df4
    nop
    bnez       $a0, .L00003df4
    srl        $a1,$v0,0x1
    andi       $a1,$a1,0x3
    bnez       $a1, .L00003df4
    move       $a0,$s0
    daddiu     $a1,$s0,712
    srl        $a2,$v0,0x3
    jal        odsy_ReadCompositorNic
    andi       $a2,$a2,0x1
    beqz       $v0, .L00003df8
    move       $a0,$s0
    b          .L00003df4
    sw         $zero,700($s0)
.L00004138:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a6,-31408($s1)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L000041d8
    move       $a1,$v0
    li         $t2,-1
    li         $t9,-3
    dsrl32     $t2,$t2,0x0
    and        $t9,$a5,$t9
    sw         $t9,-19664($s1)
    dsll32     $t9,$t9,0x0
    ld         $ra,824($s0)
    ld         $t0,-30704($gp)
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
.L000041d8:
    ld         $t8,824($s0)
    daddu      $t8,$s3,$t8
    ld         $t3,-31416($s1)
    sd         $t3,0($t8)
    sync
    beqz       $a6, .L00004224
    li         $a5,-2
    lw         $t9,-19664($s1)
    and        $t9,$a5,$t9
    sw         $t9,-19664($s1)
    li         $v0,-1
    ld         $ra,824($s0)
    dsrl32     $v0,$v0,0x0
    ld         $at,-30704($gp)
    and        $t9,$t9,$v0
    daddu      $ra,$s3,$ra
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
.L00004224:
    lw         $ra,-19664($s1)
    ori        $ra,$ra,0x2
    sd         $zero,-31416($s1)
    and        $ra,$a5,$ra
    sw         $ra,-19664($s1)
    jal        mutex_spinunlock
    move       $a0,$s2
    b          .L00003d58
    nop
.L00004248:
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s5
    b          .L00003970
    li         $a3,-1
.L00004264:
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
    b          .L00003dac
    move       $a0,$s6
.L00004294:
    li         $a1,5
    move       $a0,$s6
    ori        $a2,$a2,0x20
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,0($sp)
    move       $a0,$s6
    jal        odsy_i2cProbe2b
    daddiu     $a1,$s0,568
    b          .L00003dc8
    move       $a0,$s6
.L000042c0:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a0,-31408($s1)
    srl        $a2,$a5,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    beqz       $a0, .L00004358
    move       $a1,$v0
    li         $t0,-3
    and        $t0,$a5,$t0
    sw         $t0,-19664($s1)
    dsll32     $t0,$t0,0x0
    ld         $t1,824($s0)
    ld         $a3,-30704($gp)
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
.L00004358:
    ld         $t2,824($s0)
    daddu      $t2,$s3,$t2
    ld         $t1,-31416($s1)
    sd         $t1,0($t2)
    sync
    beqz       $a0, .L000043a4
    li         $a5,-2
    lw         $t3,-19664($s1)
    and        $t3,$a5,$t3
    sw         $t3,-19664($s1)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s0)
    dsrl32     $t3,$t3,0x0
    ld         $t9,-30704($gp)
    and        $t3,$s6,$t3
    daddu      $t8,$s3,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L000043a4:
    lw         $t8,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t8,$t8,0x2
    and        $t8,$a5,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s1)
    b          .L00004094
    nop
.L000043c8:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    li         $s4,0x8530
    sd         $v0,168($sp)
    beqz       $t8, .L00004548
    daddu      $s4,$s0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00004568
    nop
.L0000440c:
    jal        vsema
    move       $a0,$s4
    b          .L00003f30
    move       $a0,$s0
.L0000441c:
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s6
    b          .L00003ce4
    ld         $a1,152($sp)
.L00004438:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a0,-31408($s1)
    srl        $a2,$a5,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    beqz       $a0, .L000044d8
    move       $a1,$v0
    li         $a6,-1
    li         $t1,-3
    dsrl32     $a6,$a6,0x0
    and        $t1,$a5,$t1
    sw         $t1,-19664($s1)
    dsll32     $t1,$t1,0x0
    ld         $t2,824($s0)
    ld         $a3,-30704($gp)
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
.L000044d8:
    ld         $t0,824($s0)
    daddu      $t0,$s3,$t0
    ld         $a7,-31416($s1)
    sd         $a7,0($t0)
    sync
    beqz       $a0, .L00004524
    li         $a5,-2
    lw         $t1,-19664($s1)
    and        $t1,$a5,$t1
    sw         $t1,-19664($s1)
    li         $t8,-1
    ld         $t2,824($s0)
    dsrl32     $t8,$t8,0x0
    ld         $t3,-30704($gp)
    and        $t1,$t1,$t8
    daddu      $t2,$s3,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
.L00004524:
    lw         $t2,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t2,$t2,0x2
    and        $t2,$a5,$t2
    jal        mutex_spinunlock
    sw         $t2,-19664($s1)
    b          .L00003cd8
    nop
.L00004548:
    ld         $s6,168($sp)
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s6
    b          .L00003f30
    move       $a0,$s0
.L00004568:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a0,-31408($s1)
    srl        $a2,$a5,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    beqz       $a0, .L00004600
    move       $a1,$v0
    li         $t0,-3
    and        $t0,$a5,$t0
    sw         $t0,-19664($s1)
    dsll32     $t0,$t0,0x0
    ld         $t1,824($s0)
    ld         $a3,-30704($gp)
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
.L00004600:
    ld         $t2,824($s0)
    daddu      $t2,$s3,$t2
    ld         $t1,-31416($s1)
    sd         $t1,0($t2)
    sync
    beqz       $a0, .L0000464c
    li         $a5,-2
    lw         $t3,-19664($s1)
    and        $t3,$a5,$t3
    sw         $t3,-19664($s1)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s0)
    dsrl32     $t3,$t3,0x0
    ld         $t9,-30704($gp)
    and        $t3,$s6,$t3
    daddu      $t8,$s3,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L0000464c:
    lw         $t8,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t8,$t8,0x2
    and        $t8,$a5,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s1)
    b          .L0000440c
    nop
.L00004670:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,880
    b          .L000036e8
    li         $a2,1
.L00004688:
    jal        cmn_err
    li         $a0,1
    b          .L0000370c
    lw         $t8,-19328($s1)

glabel odsyInitHwWrRgn
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    ld         $s0,0($gp)
    dsll       $t8,$a0,0x3
    daddu      $s0,$s0,$t8
    ld         $s0,0($s0)
    ld         $at,880($s0)
    sd         $a0,0($sp)
    bnez       $at, .L0000480c
    sd         $ra,16($sp)
    lui        $a1,0x1
    daddu      $a1,$a1,$s0
    lh         $a1,-19396($a1)
    ld         $a0,-30576($gp)
    li         $a2,0x8000
    daddu      $a1,$a1,$a1
    move       $a3,$zero
    daddu      $a0,$a0,$a1
    li         $a1,8
    jal        kvpalloc_node_hint
    lh         $a0,0($a0)
    beqz       $v0, .L00004828
    move       $a0,$zero
    move       $a1,$v0
    andi       $a4,$v0,0xffff
.L000046fc:
    addiu      $a0,$a0,1
    sltiu      $a2,$a0,16384
    sd         $zero,0($a1)
    beqz       $a2, .L00004730
    addiu      $a0,$a0,1
    sltiu      $a3,$a0,16384
    sd         $zero,8($a1)
    beqz       $a3, .L00004730
    addiu      $a0,$a0,1
    sltiu      $a5,$a0,16384
    daddiu     $a1,$a1,24
    bnez       $a5, .L000046fc
    sd         $zero,-8($a1)
.L00004730:
    move       $a0,$zero
.L00004734:
    dsll       $a7,$a0,0x3
    dsll       $t0,$a0,0x2
    addiu      $a0,$a0,1
    daddu      $t0,$s0,$t0
    sltiu      $a6,$a0,4
    daddu      $a7,$s0,$a7
    sw         $zero,29920($t0)
    sd         $zero,29888($a7)
    beqz       $a6, .L0000477c
    dsll       $t1,$a0,0x3
    dsll       $t3,$a0,0x2
    addiu      $a0,$a0,1
    daddu      $t3,$s0,$t3
    sltiu      $t2,$a0,4
    daddu      $t1,$s0,$t1
    sw         $zero,29920($t3)
    bnez       $t2, .L00004734
    sd         $zero,29888($t1)
.L0000477c:
    beqz       $a4, .L0000481c
    move       $a0,$zero
.L00004784:
    addiu      $a0,$a0,1
    dsll       $t9,$a0,0x3
    daddu      $t9,$s0,$t9
    sd         $v0,29880($t9)
    daddiu     $v0,$v0,16384
    andi       $t8,$v0,0xffff
    beqz       $t8, .L000047c4
    sltiu      $v1,$a0,4
    addiu      $a0,$a0,1
    dsll       $at,$a0,0x3
    daddu      $at,$s0,$at
    sd         $v0,29880($at)
    daddiu     $v0,$v0,16384
    andi       $ra,$v0,0xffff
    bnez       $ra, .L00004784
    sltiu      $v1,$a0,4
.L000047c4:
    beqz       $v1, .L0000480c
    sd         $v0,880($s0)
.L000047cc:
    lui        $a1,0x1
    daddu      $a1,$a1,$v0
.L000047d4:
    dsll       $a3,$a0,0x3
    addiu      $a0,$a0,1
    sltiu      $a2,$a0,4
    daddu      $a3,$s0,$a3
    sd         $a1,29888($a3)
    daddiu     $a1,$a1,16384
    beqz       $a2, .L0000480c
    dsll       $a5,$a0,0x3
    addiu      $a0,$a0,1
    sltiu      $a4,$a0,4
    daddu      $a5,$s0,$a5
    sd         $a1,29888($a5)
    bnez       $a4, .L000047d4
    daddiu     $a1,$a1,16384
.L0000480c:
    ld         $ra,16($sp)
.L00004810:
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000481c:
    sd         $v0,880($s0)
    b          .L000047cc
    move       $a0,$zero
.L00004828:
    ld         $a0,-30720($gp)
    ld         $a1,0($sp)
    jal        printf
    daddiu     $a0,$a0,976
    b          .L00004810
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
    beq        $at, $v0, .L00004894
    sw         $at,816($s0)
    jal        vsema
    move       $a0,$s1
    ld         $ra,40($sp)
.L00004884:
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00004894:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1056
    lui        $a0,0x1
    daddu      $a0,$s0,$a0
    lw         $a3,-19304($a0)
    bnez       $a3, .L000048fc
    sd         $a0,48($sp)
.L000048bc:
    lw         $a3,-19300($a0)
    bnez       $a3, .L00004918
    ld         $a1,-30720($gp)
.L000048c8:
    jal        odsyPrintRegs
    ld         $a0,824($s0)
    ld         $a0,-30568($gp)
    sd         $zero,16($sp)
    daddiu     $a1,$sp,0
    sd         $s0,8($sp)
    li         $a2,9
    jal        gthread_scan
    sw         $a2,0($sp)
    jal        vsema
    move       $a0,$s1
    b          .L00004884
    ld         $ra,40($sp)
.L000048fc:
    ld         $a1,-30720($gp)
    li         $a0,5
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1088
    b          .L000048bc
    ld         $a0,48($sp)
.L00004918:
    li         $a0,5
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1128
    b          .L000048c8
    nop

glabel odsyPrintRegs
    ld         $a3,-30584($gp)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    lw         $s0,4196($a0)
    ld         $a1,-30720($gp)
    lw         $a2,4116($a0)
    li         $a0,7
    sd         $ra,8($sp)
    jal        cmn_err
    daddiu     $a1,$a1,1168
    ld         $a3,-30584($gp)
    move       $a2,$s0
    ld         $a1,-30720($gp)
    li         $a0,7
    daddiu     $a3,$a3,1120
    jal        cmn_err
    daddiu     $a1,$a1,1184
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
