.section .text
.set noat
.set noreorder


glabel mm_get_cond_list_cursor
    ld         $t0,-30720($gp)
    dsll       $t1,$a1,0x2
    daddu      $t0,$t0,$t1
    lw         $t0,0($t0)
    srav       $a5,$a2,$t0
    dsll       $a6,$t0,0x6
    slti       $a7,$a5,65
    daddiu     $v0,$a0,1640
    daddu      $a6,$a6,$t0
    beqz       $a7, .L0000003c
    daddu      $a5,$a5,$a6
    dsll       $v0,$a5,0x3
    daddu      $v0,$a0,$v0
    jr         $ra
    ld         $v0,1680($v0)
.L0000003c:
    jr         $ra
    nop

glabel mm_set_cond_list_cursor
    ld         $t0,-30720($gp)
    dsll       $t1,$a1,0x2
    daddu      $t0,$t0,$t1
    lw         $t0,0($t0)
    srav       $a5,$a2,$t0
    dsll       $a6,$t0,0x6
    slti       $a7,$a5,65
    li         $t2,1
    daddu      $a6,$a6,$t0
    beqz       $a7, .L00000080
    daddu      $a5,$a5,$a6
    dsll       $t3,$a5,0x3
    daddu      $t3,$a0,$t3
    sd         $a3,1680($t3)
    sw         $t2,4800($a0)
.L00000080:
    jr         $ra
    nop

glabel mm_rewind_cond_list_cursor
    ld         $a4,16($a2)
    daddiu     $sp,$sp,-32
    sd         $ra,16($sp)
    beqz       $a4, .L000000bc
    sd         $s1,0($sp)
    ld         $at,8($a4)
    bnez       $at, .L000000c0
    li         $s1,1
    lw         $a5,4($a4)
    sltu       $v0,$a1,$a5
    beqz       $v0, .L000000bc
    move       $a2,$a4
    move       $a1,$a5
.L000000bc:
    li         $s1,1
.L000000c0:
    li         $ra,-1640
    move       $t9,$zero
    daddiu     $t8,$a0,1640
    b          .L0000012c
    sd         $s0,8($sp)
.L000000d4:
    beqz       $t0, .L00000128
    daddu      $t1,$a6,$t3
.L000000dc:
    dsll       $t1,$t1,0x3
    daddu      $t1,$a0,$t1
    ld         $a5,1680($t1)
    addiu      $a6,$a6,1
    move       $a4,$t8
    slt        $a7,$t2,$a6
    beqz       $a5, .L0000015c
    slti       $t0,$a6,65
    beq        $ra, $a0, .L00000120
    nop
.L00000104:
    beq        $a4, $a5, .L00000120
    nop
    beq        $a4, $a2, .L00000150
    nop
    ld         $a4,24($a4)
    bnez       $a4, .L00000104
    nop
.L00000120:
    beqz       $a7, .L000000d4
    nop
.L00000128:
    beqz       $s0, .L00000164
.L0000012c:
    dsll       $t3,$t9,0x6
    move       $a6,$zero
    srav       $t2,$a1,$t9
    daddu      $t3,$t3,$t9
    addiu      $t9,$t9,1
    bltz       $t2, .L00000128
    slti       $s0,$t9,6
    b          .L000000dc
    daddu      $t1,$a6,$t3
.L00000150:
    sd         $a2,1680($t1)
    b          .L00000120
    sw         $s1,4800($a0)
.L0000015c:
    b          .L00000120
    sd         $a2,1680($t1)
.L00000164:
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    ld         $s1,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel mm_check_cond_list_cursor
    daddiu     $t2,$a0,1640
    b          .L00000218
    move       $t3,$zero
.L00000184:
    dsll       $t0,$t3,0x6
    slti       $at,$t3,6
    daddu      $t0,$t0,$t3
    beqz       $at, .L00000210
    addiu      $t3,$t3,1
.L00000198:
    b          .L000001a8
    move       $a3,$zero
.L000001a0:
    sd         $a7,1680($a4)
.L000001a4:
    beqz       $a5, .L00000184
.L000001a8:
    daddu      $a4,$a3,$t0
    dsll       $a4,$a4,0x3
    daddu      $a4,$a0,$a4
    ld         $t8,1680($a4)
    addiu      $a3,$a3,1
    slti       $a5,$a3,65
    daddu      $t1,$a3,$t0
    addiu      $a3,$a3,1
    bne        $t8, $a1, .L000001e0
    dsll       $a6,$t1,0x3
    ld         $a7,16($a1)
    beqz       $a7, .L00000208
    nop
    sd         $a7,1680($a4)
.L000001e0:
    beqz       $a5, .L00000184
    daddu      $a4,$a0,$a6
    ld         $a5,1680($a4)
    bne        $a5, $a1, .L000001a4
    slti       $a5,$a3,65
    ld         $a7,16($a1)
    bnez       $a7, .L000001a0
    nop
    b          .L000001a4
    sd         $t2,1680($a4)
.L00000208:
    b          .L000001e0
    sd         $t2,1680($a4)
.L00000210:
    jr         $ra
    nop
.L00000218:
    dsll       $t0,$t3,0x6
    daddu      $t0,$t0,$t3
    addiu      $t3,$t3,1
    b          .L00000198
    nop

glabel mm_set_all_cond_list_cursor
    lw         $at,4800($a0)
    beqz       $at, .L00000290
    move       $a5,$zero
    move       $a3,$zero
.L0000023c:
    dsll       $a4,$a5,0x6
    daddu      $a4,$a4,$a5
    addiu      $a5,$a5,1
.L00000248:
    daddu      $a7,$a3,$a4
    addiu      $a3,$a3,1
    slti       $a6,$a3,65
    dsll       $a7,$a7,0x3
    daddu      $a7,$a0,$a7
    sd         $a1,1680($a7)
    beqz       $a6, .L00000280
    daddu      $t0,$a3,$a4
    addiu      $a3,$a3,1
    slti       $t1,$a3,65
    dsll       $t0,$t0,0x3
    daddu      $t0,$a0,$t0
    bnez       $t1, .L00000248
    sd         $a1,1680($t0)
.L00000280:
    slti       $t1,$a5,6
    bnez       $t1, .L0000023c
    move       $a3,$zero
    sw         $zero,4800($a0)
.L00000290:
    jr         $ra
    nop

glabel odsyMMinit
    daddiu     $sp,$sp,-16
    sd         $s0,8($sp)
    sd         $ra,0($sp)
    jal        odsyPipeNrFromBase
    move       $s0,$a1
    daddiu     $t1,$s0,568
    daddiu     $a3,$s0,1248
    ld         $at,0($gp)
    li         $t0,2
    dsll       $v0,$v0,0x3
    li         $t3,1
    ld         $ra,0($sp)
    daddu      $at,$at,$v0
    li         $a4,8
    li         $a7,-1
    ld         $at,0($at)
    li         $a5,-9
    li         $a6,-5
    sd         $zero,1256($s0)
    daddiu     $t2,$s0,432
    li         $v0,-2
    sw         $v0,1248($s0)
    move       $a1,$zero
    li         $v0,256
    sd         $at,0($s0)
.L000002fc:
    dsll       $a0,$a1,0x3
    addiu      $a1,$a1,1
    slti       $v1,$a1,16
    daddu      $a0,$s0,$a0
    sd         $zero,1264($a0)
    beqz       $v1, .L0000032c
    dsll       $a2,$a1,0x3
    addiu      $a1,$a1,1
    slti       $t8,$a1,16
    daddu      $a2,$s0,$a2
    bnez       $t8, .L000002fc
    sd         $zero,1264($a2)
.L0000032c:
    sd         $t2,1264($s0)
    sd         $t1,1272($s0)
    move       $a1,$zero
    li         $v1,16
.L0000033c:
    dsll       $t1,$a1,0x4
    daddu      $t1,$t1,$a1
    dsll       $t2,$a1,0x3
    addiu      $a1,$a1,1
    slti       $t8,$a1,4
    dsll       $t1,$t1,0x3
    daddu      $t1,$s0,$t1
    daddu      $t2,$s0,$t2
    daddiu     $t1,$t1,704
    bnez       $t8, .L0000033c
    sd         $t1,1288($t2)
    sd         $zero,1400($s0)
    move       $a1,$zero
    sw         $t0,1392($s0)
    dsll       $a2,$a1,0x3
    daddu      $a2,$s0,$a2
.L0000037c:
    ld         $a2,1264($a2)
    beqz       $a2, .L000003b8
    nop
    sd         $a7,96($a2)
    sd         $zero,80($a2)
    lw         $t1,64($a2)
    sw         $zero,76($a2)
    sw         $zero,56($a2)
    ori        $t1,$t1,0x1
    sh         $a1,0($a2)
    ori        $t1,$t1,0x2
    sd         $a3,8($a2)
    and        $t1,$t1,$a6
    and        $t1,$t1,$a5
    sw         $t1,64($a2)
.L000003b8:
    addiu      $a1,$a1,1
    slti       $t2,$a1,16
    dsll       $a2,$a1,0x3
    bnez       $t2, .L0000037c
    daddu      $a2,$s0,$a2
    sb         $t3,448($s0)
    move       $a1,$zero
    sb         $t0,584($s0)
.L000003d8:
    dsll       $t8,$a1,0x4
    daddu      $t8,$t8,$a1
    addiu      $a1,$a1,1
    slti       $t9,$a1,4
    dsll       $t8,$t8,0x3
    daddu      $t8,$s0,$t8
    bnez       $t9, .L000003d8
    sb         $a4,720($t8)
    sb         $zero,40($s0)
    sd         $zero,32($s0)
    sh         $zero,24($s0)
    sw         $zero,80($s0)
    sb         $t0,41($s0)
    li         $a0,4096
    sw         $a0,56($s0)
    sw         $v1,60($s0)
    sw         $t3,64($s0)
    sw         $zero,44($s0)
    sw         $zero,48($s0)
    sw         $zero,52($s0)
    sw         $v0,68($s0)
    sw         $v0,72($s0)
    lw         $t9,88($s0)
    li         $at,255
    sb         $at,176($s0)
    li         $at,8192
    sw         $at,488($s0)
    ori        $t9,$t9,0x1
    sw         $at,624($s0)
    ori        $t9,$t9,0x2
    sw         $at,216($s0)
    and        $t9,$t9,$a6
    and        $t9,$t9,$a5
    sw         $t9,88($s0)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsyInitMM
    daddiu     $sp,$sp,-32
    sd         $s8,8($sp)
    li         $a1,4
    sd         $s0,16($sp)
    move       $s0,$a0
    sd         $ra,0($sp)
    jal        OdsyInitCSet
    daddiu     $a0,$a0,2368
    li         $a1,4
    jal        OdsyInitCSet
    daddiu     $a0,$s0,2416
    sd         $zero,5688($s0)
    sw         $zero,5696($s0)
    sw         $zero,5704($s0)
    sw         $zero,5708($s0)
    sw         $zero,5720($s0)
    li         $v1,3200
    sw         $v1,5724($s0)
    sw         $zero,5700($s0)
    li         $v0,8192
    sw         $v0,5712($s0)
    sw         $zero,5716($s0)
    sw         $zero,5732($s0)
    sd         $zero,2520($s0)
    sw         $zero,2512($s0)
    sw         $zero,2516($s0)
    sd         $zero,2528($s0)
    daddiu     $a0,$s0,872
    sd         $zero,2536($s0)
    li         $at,1
    daddiu     $s8,$s0,2512
    sw         $at,5672($s0)
    jal        mm_set_all_cond_list_cursor
    move       $a1,$s8
    ld         $ra,0($sp)
    sd         $s8,5680($s0)
    ld         $s0,16($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel mm_init_freespace
    lw         $a3,4844($a0)
    lw         $a2,4852($a0)
    lw         $v1,4840($a0)
    lw         $v0,216($a0)
    daddiu     $sp,$sp,-48
    ld         $a1,0($a0)
    sd         $a1,0($sp)
    lw         $a1,252($a1)
    lw         $at,4828($a0)
    srl        $v0,$v0,0x5
    addu       $v1,$v1,$a2
    sll        $a1,$a1,0x14
    addu       $at,$at,$a3
    sra        $a1,$a1,0x9
    sd         $ra,24($sp)
    addu       $at,$at,$v1
    subu       $a1,$a1,$v0
    sd         $s0,16($sp)
    slt        $at,$a1,$at
    sd         $a1,8($sp)
    move       $s0,$a0
    bnez       $at, .L000006a4
    sw         $a1,4856($a0)
.L00000568:
    sd         $zero,1664($s0)
    sd         $zero,1656($s0)
    sw         $a1,1644($s0)
    sw         $v0,1640($s0)
    sd         $zero,1648($s0)
    lw         $a4,0($gp)
    slti       $a5,$a4,0
    li         $a6,100
    movn       $a4,$zero,$a5
    li         $a2,25
    slt        $a5,$a6,$a4
    move       $a3,$a2
    movn       $a4,$a6,$a5
    slt        $a3,$a3,$a4
    sw         $a4,0($gp)
    movn       $a2,$a4,$a3
    jal        kabi_num_lockable_pages
    sd         $a2,32($sp)
    lw         $a5,0($gp)
    ld         $a4,0($gp)
    move       $a1,$zero
    blez       $a5, .L0000069c
    ld         $a0,32($sp)
    move       $a1,$zero
    dsll       $a6,$a1,0x3
    daddu      $a6,$a4,$a6
.L000005d0:
    ld         $a6,0($a6)
    beqz       $a6, .L000005f0
    nop
    addiu      $a1,$a1,1
    slt        $a7,$a1,$a5
    dsll       $a6,$a1,0x3
    bnez       $a7, .L000005d0
    daddu      $a6,$a4,$a6
.L000005f0:
    dmult      $a0,$v0
    mflo       $t8
    li         $t9,100
    daddiu     $t8,$t8,99
    ddiv       $zero,$t8,$t9
    mflo       $t3
    nop
    dsll       $t3,$t3,0xe
    ddiv       $zero,$t3,$a1
    lui        $t2,0x70
    sd         $t2,4896($s0)
    teq        $a1,$zero,0x7
    lui        $t1,0xff90
    mflo       $t0
    sd         $t0,4888($s0)
    daddu      $t0,$t0,$t1
    jal        kabi_num_lockable_pages
    sd         $t0,4864($s0)
    dsll       $a1,$v0,0x2
    daddu      $a1,$a1,$v0
    dsll       $a1,$a1,0x1
    li         $a2,100
    daddiu     $a1,$a1,99
    ddiv       $zero,$a1,$a2
    sd         $zero,4880($s0)
    li         $a0,1
    sw         $a0,4920($s0)
    sw         $zero,4924($s0)
    sd         $zero,4912($s0)
    ld         $v1,8($sp)
    ld         $at,4864($s0)
    ld         $v0,4896($s0)
    sll        $v1,$v1,0x9
    ld         $ra,24($sp)
    daddu      $at,$at,$v1
    dsubu      $at,$at,$v0
    sd         $at,4904($s0)
    mflo       $t9
    dsll       $t9,$t9,0xe
    sd         $t9,4872($s0)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000069c:
    b          .L000005f0
    nop
.L000006a4:
    ld         $a2,0($sp)
    ld         $a1,-30712($gp)
    li         $a0,1
    jal        cmn_err
    lh         $a2,790($a2)
    ld         $a2,0($sp)
    ld         $a1,-30712($gp)
    li         $a0,1
    daddiu     $a1,$a1,96
    jal        cmn_err
    lh         $a2,790($a2)
    lw         $a1,4856($s0)
    sw         $zero,4828($s0)
    sw         $zero,4844($s0)
    sw         $zero,4840($s0)
    lw         $v0,216($s0)
    sw         $zero,4852($s0)
    b          .L00000568
    srl        $v0,$v0,0x5

glabel gfP_OdsyMMdebug
    sw         $zero,0($a3)
    daddiu     $sp,$sp,-112
    sd         $s3,64($sp)
    move       $at,$a2
    sd         $s0,80($sp)
    li         $a2,24
    move       $s0,$a3
    sd         $s2,88($sp)
    daddiu     $a1,$sp,0
    move       $s2,$a0
    ld         $s3,40($a0)
    sd         $ra,72($sp)
    jal        copyin
    move       $a0,$at
    sd         $s4,96($sp)
    bnez       $v0, .L000009cc
    sd         $s1,104($sp)
    lw         $v0,0($sp)
    li         $v1,2
    beq        $v0, $v1, .L00000870
    li         $a3,22
    li         $a0,1
    bne        $v0, $a0, .L000009e8
    ld         $a1,-30712($gp)
    lw         $s4,8($sp)
    ld         $a1,16($sp)
    slti       $a2,$s4,17
    sw         $zero,24($sp)
    daddiu     $a1,$a1,4
    bnez       $a2, .L00000964
    sd         $a1,32($sp)
    ld         $v0,40($s2)
    ld         $a2,72($v0)
    bne        $a2, $s2, .L00000988
    daddiu     $a5,$sp,24
.L0000077c:
    daddiu     $a4,$sp,32
    move       $a3,$zero
    li         $a2,-1
    lw         $a6,80($v0)
    li         $a1,-1
    daddiu     $a0,$s3,896
    addiu      $a6,$a6,1
    jal        SpewObjectToUser
    sw         $a6,80($v0)
    beqz       $v0, .L000007c0
    sw         $v0,0($s0)
    ld         $t0,40($s2)
    lw         $a7,80($t0)
    addiu      $a7,$a7,-1
    sw         $a7,80($t0)
    b          .L00000878
    lw         $v0,0($s0)
.L000007c0:
    b          .L000007d4
    move       $s1,$zero
.L000007c8:
    addiu      $s1,$s1,1
    slti       $t0,$s1,16
    beqz       $t0, .L00000824
.L000007d4:
    dsll       $a0,$s1,0x3
    daddu      $a0,$s3,$a0
    ld         $a0,2136($a0)
    beqz       $a0, .L000007c8
    nop
    lw         $a1,64($a0)
    andi       $a1,$a1,0x1
    beqz       $a1, .L000007c8
    move       $a1,$zero
    li         $a2,-2
    move       $a3,$s1
    daddiu     $a4,$sp,32
    jal        SpewObjectToUser
    daddiu     $a5,$sp,24
    sw         $v0,0($s0)
    bnez       $v0, .L00000970
    addiu      $a0,$s1,1
    slti       $a2,$s1,15
    bnez       $a2, .L000007d4
    move       $s1,$a0
.L00000824:
    daddiu     $s1,$s3,2368
    jal        OdsyInitCSetCursor
    move       $a0,$s1
    move       $a0,$s1
    jal        OdsyNextCSetElem
    sd         $s4,56($sp)
    beqz       $v0, .L00000934
    move       $s4,$v0
    sd         $s1,48($sp)
.L00000848:
    daddiu     $s1,$s4,72
    jal        OdsyInitCSetCursor
    move       $a0,$s1
    jal        OdsyNextCSetElem
    move       $a0,$s1
    beqz       $v0, .L00000924
    move       $s3,$v0
    sd         $s1,40($sp)
.L00000868:
    b          .L000008a4
    move       $s1,$zero
.L00000870:
    sw         $a3,0($s0)
    move       $v0,$a3
.L00000878:
    ld         $s3,64($sp)
    ld         $s4,96($sp)
    ld         $ra,72($sp)
    ld         $s0,80($sp)
    ld         $s2,88($sp)
    ld         $s1,104($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00000898:
    slti       $a4,$a3,16
    beqz       $a4, .L00000914
    move       $s1,$a3
.L000008a4:
    dsll       $a0,$s1,0x3
.L000008a8:
    daddu      $a0,$s3,$a0
    ld         $a0,16($a0)
    beqz       $a0, .L00000904
    ld         $a2,56($sp)
    lw         $a1,24($sp)
    sltu       $a1,$a1,$a2
    beqz       $a1, .L00000a00
    nop
    lw         $a1,20($s4)
    move       $a3,$s1
    daddiu     $a4,$sp,32
    lw         $a2,0($s3)
    jal        SpewObjectToUser
    daddiu     $a5,$sp,24
    sw         $v0,0($s0)
    beqz       $v0, .L00000898
    addiu      $a3,$s1,1
    ld         $a4,40($s2)
    lw         $a3,80($a4)
    addiu      $a3,$a3,-1
    sw         $a3,80($a4)
    b          .L00000878
    lw         $v0,0($s0)
.L00000904:
    addiu      $s1,$s1,1
    slti       $a4,$s1,16
    bnez       $a4, .L000008a8
    dsll       $a0,$s1,0x3
.L00000914:
    jal        OdsyNextCSetElem
    ld         $a0,40($sp)
    bnez       $v0, .L00000868
    move       $s3,$v0
.L00000924:
    jal        OdsyNextCSetElem
    ld         $a0,48($sp)
    bnez       $v0, .L00000848
    move       $s4,$v0
.L00000934:
    li         $a2,4
    ld         $a1,16($sp)
    jal        copyout
    daddiu     $a0,$sp,24
    bnez       $v0, .L00000a30
    ld         $a1,-30712($gp)
    ld         $a6,40($s2)
.L00000950:
    lw         $a5,80($a6)
    addiu      $a5,$a5,-1
    sw         $a5,80($a6)
    b          .L00000878
    lw         $v0,0($s0)
.L00000964:
    li         $v0,14
    b          .L00000878
    sw         $v0,0($s0)
.L00000970:
    ld         $a7,40($s2)
    lw         $a6,80($a7)
    addiu      $a6,$a6,-1
    sw         $a6,80($a7)
    b          .L00000878
    lw         $v0,0($s0)
.L00000988:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    ld         $t0,40($s2)
    sd         $s2,72($t0)
    ld         $v0,40($s2)
    lw         $a7,104($v0)
    beqz       $a7, .L0000077c
    daddiu     $a5,$sp,24
.L000009ac:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s2)
    lw         $t1,104($v0)
    bnez       $t1, .L000009ac
    nop
    b          .L0000077c
    daddiu     $a5,$sp,24
.L000009cc:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,160
    li         $v0,14
    b          .L00000878
    sw         $v0,0($s0)
.L000009e8:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,208
    li         $v0,22
    b          .L00000878
    sw         $v0,0($s0)
.L00000a00:
    ld         $a3,40($s2)
    lw         $a2,80($a3)
    ld         $a1,-30712($gp)
    li         $a0,4
    addiu      $a2,$a2,-1
    sw         $a2,80($a3)
    daddiu     $a1,$a1,248
    jal        cmn_err
    ld         $a2,56($sp)
    li         $v0,11
    b          .L00000878
    sw         $v0,0($s0)
.L00000a30:
    li         $a0,4
    li         $a2,14
    sw         $a2,0($s0)
    jal        cmn_err
    daddiu     $a1,$a1,296
    b          .L00000950
    ld         $a6,40($s2)

glabel SpewObjectToUser
    lw         $at,56($a0)
    daddiu     $sp,$sp,-96
    move       $t8,$a0
    move       $t9,$a1
    sd         $a5,72($sp)
    move       $t3,$a2
    daddiu     $t1,$a0,16
    sw         $at,0($sp)
    move       $v0,$zero
    li         $t0,10
    sd         $s0,80($sp)
    move       $s0,$a4
    daddiu     $t2,$sp,4
    sd         $ra,88($sp)
.L00000a84:
    daddu      $a1,$v0,$t1
    addiu      $a0,$v0,4
    daddu      $a2,$v0,$t2
    lw         $a1,0($a1)
    addiu      $t0,$t0,-2
    daddu      $v1,$a0,$t1
    sw         $a1,0($a2)
    daddu      $a0,$a0,$t2
    lw         $v1,0($v1)
    addiu      $v0,$v0,8
    bgtz       $t0, .L00000a84
    sw         $v1,0($a0)
    lw         $a6,60($t8)
    sh         $a3,52($sp)
    sw         $t3,48($sp)
    sw         $t9,44($sp)
    sw         $a6,40($sp)
    lw         $a5,64($t8)
    andi       $a5,$a5,0x1
    sw         $a5,56($sp)
    lw         $a4,64($t8)
    andi       $a4,$a4,0x2
    sw         $a4,60($sp)
    lw         $a3,104($t8)
    li         $a2,68
    sw         $a3,64($sp)
    daddiu     $a0,$sp,0
    jal        copyout
    ld         $a1,0($s0)
    bnez       $v0, .L00000b30
    ld         $a1,-30712($gp)
    ld         $t1,72($sp)
    lw         $t0,0($t1)
    addiu      $t0,$t0,1
    sw         $t0,0($t1)
    ld         $a7,0($s0)
    move       $v0,$zero
    daddiu     $a7,$a7,68
    sd         $a7,0($s0)
.L00000b20:
    ld         $ra,88($sp)
    ld         $s0,80($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00000b30:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,352
    b          .L00000b20
    li         $v0,14

glabel gfP_OdsyMMattach
    ld         $v0,40($a0)
    daddiu     $sp,$sp,-128
    sd         $a2,72($sp)
    move       $at,$a2
    sd         $s0,88($sp)
    move       $s0,$a3
    li         $a2,72
    sd         $v0,80($sp)
    daddiu     $a1,$sp,0
    sd         $s1,104($sp)
    move       $s1,$a0
    sd         $ra,96($sp)
    jal        copyin
    move       $a0,$at
    sd         $s3,112($sp)
    bnez       $v0, .L00000df8
    sd         $s2,120($sp)
    jal        odsyGctxFromRnid
    lhu        $a0,10($sp)
    beqz       $v0, .L00000e14
    move       $s2,$v0
    ld         $v1,184($v0)
    beqz       $v1, .L00000bd8
    move       $a0,$v0
    ld         $a0,8($s1)
    ld         $a0,8($a0)
    bne        $a0, $s1, .L00000e30
    ld         $a1,-30712($gp)
    sw         $zero,0($s0)
    move       $v0,$zero
.L00000bbc:
    ld         $s3,112($sp)
    ld         $ra,96($sp)
    ld         $s0,88($sp)
    ld         $s1,104($sp)
    ld         $s2,120($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L00000bd8:
    move       $a1,$s0
    jal        odsyPinAndMapGctxSwShadowRgn
    ld         $a2,16($sp)
    beqz       $v0, .L00000bf4
    li         $a1,4
    b          .L00000bbc
    sw         $v0,0($s0)
.L00000bf4:
    sw         $zero,584($s2)
    sd         $zero,232($s2)
    li         $a2,-1
    daddiu     $s3,$s2,264
    sw         $a2,240($s2)
    jal        OdsyInitCSet
    move       $a0,$s3
    li         $a1,4
    jal        OdsyInitCSet
    daddiu     $a0,$s2,312
    li         $a1,4
    jal        OdsyInitCSet
    daddiu     $a0,$s2,360
    move       $a0,$s3
    move       $a1,$zero
    jal        OdsyAllocSpecificCSetId
    li         $a2,1
    ld         $v0,40($s1)
    ld         $a3,72($v0)
    bne        $a3, $s1, .L00000d68
    li         $a1,537
.L00000c48:
    lw         $a4,80($v0)
.L00000c4c:
    addiu      $a4,$a4,1
    sw         $a4,80($v0)
    lw         $a2,4($sp)
    beqz       $a2, .L00000da8
    li         $a5,-1
    beq        $a5, $a2, .L00000dac
    ld         $a1,80($sp)
    jal        odsyGctxFromRnid
    andi       $a0,$a2,0xffff
    beqz       $v0, .L00000e48
    nop
    ld         $s3,232($v0)
    bnez       $s3, .L00000ca4
    daddiu     $a0,$s3,24
    ld         $a7,40($s1)
    lw         $a6,80($a7)
    addiu      $a6,$a6,-1
    sw         $a6,80($a7)
    li         $v0,22
    b          .L00000bbc
    sw         $v0,0($s0)
.L00000ca0:
    daddiu     $a0,$s3,24
.L00000ca4:
    jal        OdsyAllocCSetId
    move       $a1,$s2
    li         $a7,-1
    beq        $v0, $a7, .L00000e74
    nop
    sd         $s3,232($s2)
    sw         $v0,240($s2)
    lw         $v1,16($s3)
    ld         $v0,0($s3)
    addiu      $v1,$v1,1
    sw         $v1,16($s3)
    ld         $v0,32($v0)
    sd         $v0,24($sp)
    ld         $v0,40($s1)
    lw         $at,80($v0)
    addiu      $at,$at,-1
    sw         $at,80($v0)
    lw         $ra,0($sp)
    lw         $t9,244($s2)
    andi       $ra,$ra,0x1
    sltu       $ra,$zero,$ra
    sw         $ra,580($s2)
    sw         $t9,32($sp)
    lw         $t8,240($s2)
    sw         $t8,12($sp)
    ld         $t3,200($s2)
    daddiu     $t3,$t3,2304
    sd         $t3,40($sp)
    ld         $t2,0($s3)
    ld         $t2,48($t2)
    sd         $t2,48($sp)
    ld         $t1,0($s3)
    ld         $t2,80($sp)
    ld         $t1,48($t1)
    ld         $a1,72($sp)
    li         $t0,0x8554
    daddu      $t0,$t0,$t2
    daddiu     $t1,$t1,32
    sd         $t1,56($sp)
    li         $a2,72
    lw         $t0,0($t0)
    daddiu     $a0,$sp,0
    jal        copyout
    sw         $t0,64($sp)
    bnez       $v0, .L00000eb4
    ld         $a1,-30712($gp)
    sw         $zero,0($s0)
    b          .L00000bbc
    move       $v0,$zero
.L00000d68:
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a1,40($s1)
    sd         $s1,72($a1)
    ld         $v0,40($s1)
    lw         $a0,104($v0)
    beqz       $a0, .L00000c48
    nop
.L00000d88:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s1)
    lw         $a2,104($v0)
    bnez       $a2, .L00000d88
    nop
    b          .L00000c4c
    lw         $a4,80($v0)
.L00000da8:
    ld         $a1,80($sp)
.L00000dac:
    move       $a0,$s1
    move       $a2,$s0
    jal        odsy_mm_sg_new
    daddiu     $a1,$a1,872
    bnez       $v0, .L00000ca0
    move       $s3,$v0
    ld         $a4,40($s1)
    lw         $a3,80($a4)
    ld         $a1,72($sp)
    li         $a2,72
    addiu      $a3,$a3,-1
    sw         $a3,80($a4)
    daddiu     $a0,$sp,0
    jal        copyout
    sd         $zero,24($sp)
    bnez       $v0, .L00000ecc
    ld         $a1,-30712($gp)
    b          .L00000bbc
    lw         $v0,0($s0)
.L00000df8:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,408
    li         $v0,14
    b          .L00000bbc
    sw         $v0,0($s0)
.L00000e14:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,456
    li         $v0,22
    b          .L00000bbc
    sw         $v0,0($s0)
.L00000e30:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,480
    li         $v0,22
    b          .L00000bbc
    sw         $v0,0($s0)
.L00000e48:
    ld         $a3,40($s1)
    ld         $a1,-30712($gp)
    lw         $a2,80($a3)
    li         $a0,4
    daddiu     $a1,$a1,520
    addiu      $a2,$a2,-1
    jal        cmn_err
    sw         $a2,80($a3)
    li         $v0,22
    b          .L00000bbc
    sw         $v0,0($s0)
.L00000e74:
    lw         $a2,16($s3)
    bnez       $a2, .L00000e88
    nop
    jal        odsy_mm_sg_destroy
    move       $a0,$s3
.L00000e88:
    ld         $a4,40($s1)
    ld         $a1,-30712($gp)
    lw         $a3,80($a4)
    li         $a0,4
    daddiu     $a1,$a1,568
    addiu      $a3,$a3,-1
    jal        cmn_err
    sw         $a3,80($a4)
    li         $v0,12
    b          .L00000bbc
    sw         $v0,0($s0)
.L00000eb4:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,408
    li         $v0,14
    b          .L00000bbc
    sw         $v0,0($s0)
.L00000ecc:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,408
    li         $v0,14
    b          .L00000bbc
    sw         $v0,0($s0)

glabel odsyMMdetach
    daddiu     $sp,$sp,-32
    sd         $s1,16($sp)
    ld         $s1,232($a1)
    sd         $s0,8($sp)
    move       $s0,$a0
    sd         $s2,0($sp)
    beqz       $s1, .L00000f54
    move       $s2,$a1
    ld         $a3,40($a0)
    ld         $at,72($a3)
    bne        $at, $a0, .L00000f68
    sd         $ra,24($sp)
.L00000f14:
    lw         $v0,80($a3)
.L00000f18:
    move       $a0,$s1
    move       $a1,$s2
    addiu      $v0,$v0,1
    jal        odsy_mm_sg_remove_gctx
    sw         $v0,80($a3)
    sd         $zero,232($s2)
    lw         $v1,16($s1)
    addiu      $v1,$v1,-1
    beqz       $v1, .L00000fac
    sw         $v1,16($s1)
    ld         $a1,40($s0)
.L00000f44:
    lw         $a0,80($a1)
    ld         $ra,24($sp)
    addiu      $a0,$a0,-1
    sw         $a0,80($a1)
.L00000f54:
    ld         $s2,0($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000f68:
    li         $a1,537
    jal        psema
    daddiu     $a0,$a3,56
    ld         $a2,40($s0)
    sd         $s0,72($a2)
    ld         $a3,40($s0)
    lw         $a1,104($a3)
    beqz       $a1, .L00000f14
    nop
.L00000f8c:
    jal        us_delay
    li         $a0,2
    ld         $a3,40($s0)
    lw         $a4,104($a3)
    bnez       $a4, .L00000f8c
    nop
    b          .L00000f18
    lw         $v0,80($a3)
.L00000fac:
    jal        odsy_mm_sg_destroy
    move       $a0,$s1
    b          .L00000f44
    ld         $a1,40($s0)

glabel odsy_mm_sg_remove_gctx
    daddiu     $sp,$sp,-48
    sd         $s2,0($sp)
    ld         $s2,8($a0)
    sd         $s1,32($sp)
    move       $s1,$a1
    sd         $s4,16($sp)
    move       $s4,$a0
    sd         $s0,24($sp)
    daddiu     $s0,$a1,360
    sd         $ra,8($sp)
    jal        OdsyInitCSetCursor
    move       $a0,$s0
    jal        OdsyNextCSetElem
    move       $a0,$s0
    move       $a4,$v0
    beqz       $v0, .L00001020
    sd         $s3,40($sp)
.L00001000:
    jal        odsy_mm_grp_destroy
    move       $a0,$a4
    jal        OdsyInitCSetCursor
    move       $a0,$s0
    jal        OdsyNextCSetElem
    move       $a0,$s0
    bnez       $v0, .L00001000
    move       $a4,$v0
.L00001020:
    move       $a0,$s0
    jal        OdsyDestroyCSet
    move       $a1,$zero
    daddiu     $s0,$s1,264
    jal        OdsyInitCSetCursor
    move       $a0,$s0
    jal        OdsyNextCSetElem
    move       $a0,$s0
    li         $a1,1
    move       $s3,$zero
    beqz       $v0, .L00001080
    move       $a0,$v0
.L00001050:
    bne        $a1, $a0, .L00001080
    move       $a0,$s0
    jal        OdsyDeallocCSetId
    move       $a1,$s3
    jal        OdsyInitCSetCursor
    move       $a0,$s0
    addiu      $s3,$s3,1
    jal        OdsyNextCSetElem
    move       $a0,$s0
    li         $a1,1
    bnez       $v0, .L00001050
    move       $a0,$v0
.L00001080:
    jal        OdsyInitCSetCursor
    move       $a0,$s0
    jal        OdsyNextCSetElem
    move       $a0,$s0
    beqz       $v0, .L000010b8
    move       $a0,$v0
.L00001098:
    jal        odsy_mm_cores_destroy
    move       $a1,$s2
    jal        OdsyInitCSetCursor
    move       $a0,$s0
    jal        OdsyNextCSetElem
    move       $a0,$s0
    bnez       $v0, .L00001098
    move       $a0,$v0
.L000010b8:
    daddiu     $s2,$s4,72
    jal        OdsyInitCSetCursor
    move       $a0,$s2
    jal        OdsyNextCSetElem
    move       $a0,$s2
    beqz       $v0, .L00001114
    move       $a4,$v0
    b          .L000010f0
    daddiu     $s3,$a4,160
.L000010dc:
    jal        OdsyNextCSetElem
    move       $a0,$s2
    beqz       $v0, .L00001114
    move       $a4,$v0
    daddiu     $s3,$a4,160
.L000010f0:
    lw         $a1,240($s1)
    jal        OdsyLookupCSetId
    move       $a0,$s3
    beqz       $v0, .L000010dc
    move       $a0,$s3
    jal        OdsyDeallocCSetId
    lw         $a1,240($s1)
    b          .L000010dc
    nop
.L00001114:
    lw         $at,292($s1)
    beqz       $at, .L0000113c
    lh         $a0,0($gp)
    beqz       $a0, .L00001140
    ld         $s3,40($sp)
    jal        conbuf_flush
    li         $a0,3
    ld         $a0,-30712($gp)
    jal        debug
    daddiu     $a0,$a0,640
.L0000113c:
    ld         $s3,40($sp)
.L00001140:
    move       $a0,$s0
    ld         $s2,0($sp)
    jal        OdsyDestroyCSet
    move       $a1,$zero
    lw         $a1,240($s1)
    jal        OdsyDeallocCSetId
    daddiu     $a0,$s4,24
    ld         $s4,16($sp)
    ld         $ra,8($sp)
    ld         $s0,24($sp)
    li         $a1,-1
    sw         $a1,240($s1)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel gfP_OdsyMMalloc
    daddiu     $sp,$sp,-144
    sd         $s2,120($sp)
    sw         $zero,0($a3)
    sd         $s3,80($sp)
    ld         $s3,72($a0)
    sd         $s4,88($sp)
    ld         $s3,112($s3)
    move       $v0,$zero
    sd         $s0,96($sp)
    move       $s0,$a0
    move       $s4,$a2
    sd         $s1,104($sp)
    move       $s1,$a3
    beqz       $s3, .L000013d0
    sd         $ra,128($sp)
    ld         $s2,232($s3)
    beqz       $s2, .L000013ec
    sd         $zero,72($sp)
    move       $a0,$a2
    li         $a2,72
    jal        copyin
    daddiu     $a1,$sp,0
    bnez       $v0, .L00001408
    ld         $a1,-30712($gp)
    lhu        $a6,8($sp)
    slti       $t8,$a6,16
    beqz       $t8, .L00001420
    ld         $a1,-30712($gp)
    ld         $v0,40($s0)
    ld         $t9,72($v0)
    bne        $t9, $s0, .L0000134c
    li         $a1,537
.L000011fc:
    lw         $at,80($v0)
.L00001200:
    addiu      $at,$at,1
    sw         $at,80($v0)
    lw         $a1,4($sp)
    li         $ra,-1
    beq        $ra, $a1, .L0000138c
    move       $a0,$s3
    jal        OdsyLookupCSetId
    daddiu     $a0,$s2,72
    beqz       $v0, .L00001454
    move       $s3,$v0
    lhu        $a6,8($sp)
    dsll       $a0,$a6,0x3
    daddu      $a0,$v0,$a0
    ld         $a0,16($a0)
    beqz       $a0, .L000012ac
    nop
    lw         $a1,32($a0)
    lw         $a2,28($sp)
    bne        $a1, $a2, .L000012c0
    lw         $a4,32($sp)
    lw         $a3,36($a0)
    bne        $a3, $a4, .L000012c0
    lbu        $at,13($sp)
    lw         $a7,36($sp)
    lw         $a5,40($a0)
    bne        $a5, $a7, .L000012c0
    lbu        $v1,12($sp)
    lw         $t1,16($sp)
    lw         $t0,20($a0)
    bne        $t0, $t1, .L000012c0
    lw         $t3,20($sp)
    lw         $t2,24($a0)
    bne        $t2, $t3, .L000012c0
    lw         $t9,24($sp)
    lw         $t8,28($a0)
    bne        $t8, $t9, .L000012c0
    nop
    lbu        $ra,17($a0)
    bne        $ra, $at, .L000012c0
    nop
    lbu        $v0,16($a0)
    bne        $v0, $v1, .L000012c0
    nop
.L000012ac:
    lw         $a1,0($s3)
    bnez       $a0, .L00001300
    sw         $a1,4($sp)
    b          .L000012d8
    daddiu     $a3,$sp,12
.L000012c0:
    jal        odsy_mm_obj_destroy
    nop
    lh         $a6,8($sp)
    lw         $a2,0($s3)
    sw         $a2,4($sp)
.L000012d4:
    daddiu     $a3,$sp,12
.L000012d8:
    andi       $a2,$a6,0xffff
    move       $a1,$s3
    jal        odsy_mm_obj_new
    move       $a0,$s2
    bnez       $v0, .L00001300
    nop
    lw         $a3,144($s3)
    beqz       $a3, .L000013bc
.L000012f8:
    li         $a4,12
    sw         $a4,0($s1)
.L00001300:
    ld         $a6,40($s0)
    li         $a2,72
    lw         $a5,80($a6)
    move       $a1,$s4
    daddiu     $a0,$sp,0
    addiu      $a5,$a5,-1
    jal        copyout
    sw         $a5,80($a6)
    bnez       $v0, .L0000143c
    ld         $a1,-30712($gp)
    lw         $v0,0($s1)
.L0000132c:
    ld         $s2,120($sp)
    ld         $s3,80($sp)
    ld         $ra,128($sp)
    ld         $s4,88($sp)
    ld         $s0,96($sp)
    ld         $s1,104($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L0000134c:
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a7,40($s0)
    sd         $s0,72($a7)
    ld         $v0,40($s0)
    lw         $a6,104($v0)
    beqz       $a6, .L000011fc
    nop
.L0000136c:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s0)
    lw         $t0,104($v0)
    bnez       $t0, .L0000136c
    nop
    b          .L00001200
    lw         $at,80($v0)
.L0000138c:
    move       $a1,$s2
    jal        odsy_mm_grp_new
    daddiu     $a2,$sp,0
    sd         $v0,112($sp)
    beqz       $v0, .L00001478
    move       $s3,$v0
.L000013a4:
    ld         $t1,72($sp)
    bnez       $t1, .L00001300
    lhu        $a6,8($sp)
    lw         $t2,0($v0)
    b          .L000012d4
    sw         $t2,4($sp)
.L000013bc:
    jal        odsy_mm_grp_destroy
    move       $a0,$s3
    li         $t3,-1
    b          .L000012f8
    sw         $t3,4($sp)
.L000013d0:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,648
    li         $v0,1
    b          .L0000132c
    sw         $v0,0($s1)
.L000013ec:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,704
    li         $v0,14
    b          .L0000132c
    sw         $v0,0($s1)
.L00001408:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,752
    li         $v0,14
    b          .L0000132c
    sw         $v0,0($s1)
.L00001420:
    li         $a0,4
    move       $a2,$a6
    jal        cmn_err
    daddiu     $a1,$a1,792
    li         $v0,22
    b          .L0000132c
    sw         $v0,0($s1)
.L0000143c:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,952
    li         $v0,14
    b          .L0000132c
    sw         $v0,0($s1)
.L00001454:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,904
    li         $a3,22
    sw         $a3,0($s1)
    li         $a2,-1
    b          .L00001300
    sw         $a2,4($sp)
.L00001478:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,848
    ld         $v0,112($sp)
    li         $a3,1
    sd         $a3,72($sp)
    li         $a2,12
    b          .L000013a4
    sw         $a2,0($s1)

glabel gfP_OdsyMMdealloc
    daddiu     $sp,$sp,-112
    sd         $ra,96($sp)
    ld         $v0,72($a0)
    sd         $s3,72($sp)
    ld         $v0,112($v0)
    sd         $s0,80($sp)
    move       $s0,$a0
    move       $s3,$a2
    sd         $s2,88($sp)
    move       $s2,$a3
    beqz       $v0, .L00001634
    sd         $s1,104($sp)
    ld         $s1,232($v0)
    beqz       $s1, .L00001650
    daddiu     $a1,$sp,0
    move       $a0,$a2
    jal        copyin
    li         $a2,72
    bnez       $v0, .L0000166c
    ld         $a1,-30712($gp)
    ld         $v0,40($s0)
    ld         $v1,72($v0)
    bne        $v1, $s0, .L00001594
    li         $a1,537
.L00001500:
    lw         $a0,80($v0)
.L00001504:
    addiu      $a0,$a0,1
    sw         $a0,80($v0)
    daddiu     $a0,$s1,72
    jal        OdsyLookupCSetId
    lw         $a1,4($sp)
    beqz       $v0, .L000015d4
    move       $s1,$v0
    lw         $a1,52($sp)
    beqz       $a1, .L00001610
    lhu        $a2,8($sp)
    slti       $v1,$a2,16
    dsll       $v0,$a2,0x3
    beqz       $v1, .L00001684
    daddu      $v0,$s1,$v0
    ld         $a0,16($v0)
    beqz       $a0, .L0000155c
    nop
    jal        odsy_mm_obj_destroy
    nop
    lw         $a0,144($s1)
    beqz       $a0, .L00001620
    nop
.L0000155c:
    ld         $a3,40($s0)
.L00001560:
    lw         $a2,80($a3)
    addiu      $a2,$a2,-1
    sw         $a2,80($a3)
    lw         $a1,52($sp)
    beqz       $a1, .L000015f0
    move       $v0,$zero
.L00001578:
    ld         $s3,72($sp)
    ld         $ra,96($sp)
    ld         $s0,80($sp)
    ld         $s1,104($sp)
    ld         $s2,88($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00001594:
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a4,40($s0)
    sd         $s0,72($a4)
    ld         $v0,40($s0)
    lw         $a3,104($v0)
    beqz       $a3, .L00001500
    nop
.L000015b4:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s0)
    lw         $a5,104($v0)
    bnez       $a5, .L000015b4
    nop
    b          .L00001504
    lw         $a0,80($v0)
.L000015d4:
    ld         $a7,40($s0)
    lw         $a6,80($a7)
    addiu      $a6,$a6,-1
    sw         $a6,80($a7)
    li         $v0,22
    b          .L00001578
    sw         $v0,0($s2)
.L000015f0:
    li         $a2,72
    move       $a1,$s3
    jal        copyout
    daddiu     $a0,$sp,0
    beqz       $v0, .L00001578
    move       $v0,$zero
    b          .L000016a0
    ld         $a1,-30712($gp)
.L00001610:
    jal        odsy_mm_grp_destroy
    move       $a0,$v0
    b          .L00001560
    ld         $a3,40($s0)
.L00001620:
    sw         $zero,52($sp)
    jal        odsy_mm_grp_destroy
    move       $a0,$s1
    b          .L00001560
    ld         $a3,40($s0)
.L00001634:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,648
    li         $v0,1
    b          .L00001578
    sw         $v0,0($s2)
.L00001650:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,704
    li         $v0,14
    b          .L00001578
    sw         $v0,0($s2)
.L0000166c:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1000
    li         $v0,14
    b          .L00001578
    sw         $v0,0($s2)
.L00001684:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1040
    li         $v0,22
    b          .L00001578
    sw         $v0,0($s2)
.L000016a0:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1088
    li         $v0,14
    b          .L00001578
    sw         $v0,0($s2)

glabel odsy_mm_mkres_timeout
    daddiu     $sp,$sp,-16
    ld         $a1,-30712($gp)
    sd         $s8,8($sp)
    move       $s8,$a0
    li         $a0,1
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,1128
    jal        odsy_teardown
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel gfP_OdsyMMmakeResident
    daddiu     $sp,$sp,-80
    sd         $s1,72($sp)
    sd         $s4,32($sp)
    ld         $s4,72($a0)
    sd         $s0,64($sp)
    ld         $s4,112($s4)
    sd         $s3,40($sp)
    move       $v0,$a2
    move       $s3,$a0
    sd         $s2,48($sp)
    move       $s2,$a3
    beqz       $s4, .L00001974
    sd         $ra,56($sp)
    ld         $s0,232($s4)
    beqz       $s0, .L00001990
    ld         $a1,-30712($gp)
    li         $a2,8
    daddiu     $a1,$sp,0
    move       $a0,$v0
    jal        copyin
    ld         $s1,8($s0)
    bnez       $v0, .L000019a8
    ld         $a1,-30712($gp)
    lhu        $v0,4($sp)
    slti       $t8,$v0,16
    beqz       $t8, .L0000195c
    ld         $a1,-30712($gp)
    lhu        $a0,6($sp)
    slti       $t9,$a0,16
    beqz       $t9, .L00001958
    slt        $ra,$a0,$v0
    bnez       $ra, .L0000195c
    ld         $a1,-30712($gp)
    sw         $zero,0($s2)
    jal        RRM_CheckValidFault
    move       $a0,$s3
    bltz       $v0, .L00001950
    li         $v0,14
    ld         $v0,40($s3)
    ld         $at,72($v0)
    bne        $at, $s3, .L00001910
    li         $a1,537
.L00001798:
    lw         $v1,80($v0)
.L0000179c:
    addiu      $v1,$v1,1
    sw         $v1,80($v0)
    daddiu     $a0,$s0,72
    jal        OdsyLookupCSetId
    lw         $a1,0($sp)
    beqz       $v0, .L000019c0
    move       $s0,$v0
    lw         $a1,240($s4)
    jal        OdsyLookupCSetId
    daddiu     $a0,$v0,160
    beqz       $v0, .L000019dc
    ld         $a1,-30712($gp)
    ld         $a2,-30704($gp)
    sd         $s1,24($sp)
    lhu        $a3,6($sp)
    lhu        $a4,4($sp)
    lw         $a5,0($sp)
    sw         $a5,16($sp)
    daddiu     $a1,$sp,8
    sw         $a4,12($sp)
    move       $a0,$v0
    jal        OdsyFindMatchingCSetElem
    sw         $a3,8($sp)
    beqz       $v0, .L000019f8
    move       $s1,$v0
    ld         $a6,32($v0)
    ld         $v0,40($v0)
    lhu        $a6,0($a6)
    lhu        $a7,4($v0)
    beq        $a6, $a7, .L00001a14
    ld         $a1,-30712($gp)
    lw         $a6,4($s1)
    lw         $a2,0($s1)
    slt        $a7,$a6,$a2
    bnez       $a7, .L000018b0
    ld         $a1,24($sp)
    b          .L00001a64
    li         $a0,-3
.L00001834:
    sw         $v0,64($a5)
    lw         $a6,4($s1)
    slt        $t0,$a6,$a2
.L00001840:
    dsll       $a5,$a2,0x3
    addiu      $a2,$a2,1
    bnez       $t0, .L000018ac
    daddu      $a5,$s0,$a5
    ld         $a5,16($a5)
.L00001854:
    beqz       $a5, .L00001878
    slt        $v1,$a6,$a2
    lw         $v0,64($a5)
    andi       $v1,$v0,0x2
    beqz       $v1, .L00001874
    and        $v0,$v0,$a0
    sw         $v0,64($a5)
    lw         $a6,4($s1)
.L00001874:
    slt        $v1,$a6,$a2
.L00001878:
    dsll       $v0,$a2,0x3
    addiu      $a2,$a2,1
    bnez       $v1, .L000018ac
    daddu      $v0,$s0,$v0
    ld         $a5,16($v0)
    beqz       $a5, .L00001840
    slt        $t0,$a6,$a2
    lw         $v0,64($a5)
    andi       $v1,$v0,0x2
    bnez       $v1, .L00001834
    and        $v0,$v0,$a0
    b          .L00001840
    slt        $t0,$a6,$a2
.L000018ac:
    ld         $a1,24($sp)
.L000018b0:
    ld         $a0,-30696($gp)
    li         $a2,1500
    jal        timeout
    ld         $a1,0($a1)
    move       $s0,$v0
    jal        odsy_mm_commit
    move       $a0,$s1
    bnez       $v0, .L00001a30
    nop
    jal        untimeout_wait
    move       $a0,$s0
.L000018dc:
    ld         $a3,40($s3)
    lw         $a2,80($a3)
    addiu      $a2,$a2,-1
    sw         $a2,80($a3)
    lw         $v0,0($s2)
.L000018f0:
    ld         $s1,72($sp)
    ld         $s0,64($sp)
    ld         $ra,56($sp)
    ld         $s2,48($sp)
    ld         $s3,40($sp)
    ld         $s4,32($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00001910:
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a4,40($s3)
    sd         $s3,72($a4)
    ld         $v0,40($s3)
    lw         $a3,104($v0)
    beqz       $a3, .L00001798
    nop
.L00001930:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s3)
    lw         $a5,104($v0)
    bnez       $a5, .L00001930
    nop
    b          .L0000179c
    lw         $v1,80($v0)
.L00001950:
    b          .L000018f0
    sw         $v0,0($s2)
.L00001958:
    ld         $a1,-30712($gp)
.L0000195c:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1200
    li         $v0,22
    b          .L000018f0
    sw         $v0,0($s2)
.L00001974:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,648
    li         $v0,1
    b          .L000018f0
    sw         $v0,0($s2)
.L00001990:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,704
    li         $v0,14
    b          .L000018f0
    sw         $v0,0($s2)
.L000019a8:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1152
    li         $v0,14
    b          .L000018f0
    sw         $v0,0($s2)
.L000019c0:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1256
    li         $a2,22
    b          .L000018dc
    sw         $a2,0($s2)
.L000019dc:
    li         $a0,4
    lw         $a2,240($s4)
    jal        cmn_err
    daddiu     $a1,$a1,1304
    li         $a2,22
    b          .L000018dc
    sw         $a2,0($s2)
.L000019f8:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1376
    li         $a2,22
    b          .L000018dc
    sw         $a2,0($s2)
.L00001a14:
    li         $a0,4
    lhu        $a2,4($v0)
    jal        cmn_err
    daddiu     $a1,$a1,1440
    li         $a2,22
    b          .L000018dc
    sw         $a2,0($s2)
.L00001a30:
    ld         $a2,224($s4)
    ld         $a2,64($a2)
    ld         $a1,-30712($gp)
    ld         $a2,40($a2)
    li         $a0,4
    daddiu     $a1,$a1,1496
    jal        cmn_err
    lh         $a2,790($a2)
    jal        untimeout_wait
    move       $a0,$s0
    li         $a3,22
    b          .L000018dc
    sw         $a3,0($s2)
.L00001a64:
    dsll       $a5,$a2,0x3
    addiu      $a2,$a2,1
    daddu      $a5,$s0,$a5
    b          .L00001854
    ld         $a5,16($a5)

glabel MapKernelRegionIntoUserSpace
    daddiu     $sp,$sp,-48
    sd         $ra,32($sp)
    sw         $zero,28($sp)
    sw         $zero,24($sp)
    sw         $zero,20($sp)
    li         $a5,1
    sw         $a5,16($sp)
    sd         $zero,8($sp)
    sd         $zero,0($sp)
    ld         $at,24($a0)
    sw         $a1,24($sp)
    move       $a6,$a0
    sd         $at,8($sp)
    move       $a0,$zero
    daddiu     $a1,$a6,16
    ld         $a2,8($a6)
    daddiu     $a4,$sp,0
    jal        odsyMapPages
    lw         $a3,28($a6)
    ld         $ra,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel CoresidRangeFinder
    ld         $v0,8($a0)
    lw         $at,8($a1)
    lw         $v0,0($v0)
    bne        $at, $v0, .L00001b08
    li         $v0,1
    lw         $a2,4($a0)
    lw         $v1,0($a1)
    bne        $v1, $a2, .L00001b04
    move       $v0,$zero
    lw         $a4,4($a1)
    lw         $a3,0($a0)
    beq        $a3, $a4, .L00001b08
    nop
.L00001b04:
    li         $v0,1
.L00001b08:
    jr         $ra
    nop

glabel CoresidSubRangeFinder
    ld         $v0,8($a0)
    lw         $at,8($a1)
    lw         $v0,0($v0)
    bne        $at, $v0, .L00001b50
    li         $v0,1
    lw         $a2,0($a1)
    lw         $v1,4($a0)
    slt        $v1,$v1,$a2
    bnez       $v1, .L00001b4c
    move       $v0,$zero
    lw         $a4,0($a0)
    lw         $a3,4($a1)
    slt        $a3,$a3,$a4
    beqz       $a3, .L00001b50
    nop
.L00001b4c:
    li         $v0,1
.L00001b50:
    jr         $ra
    nop

glabel odsy_mm_cores_exists
    lw         $a1,240($a1)
    daddiu     $sp,$sp,-48
    sd         $a0,16($sp)
    ld         $a0,8($a0)
    sd         $ra,32($sp)
    sd         $a0,24($sp)
    jal        OdsyLookupCSetId
    daddiu     $a0,$a0,160
    bnez       $v0, .L00001b90
    ld         $a2,-30688($gp)
    move       $v0,$zero
.L00001b84:
    ld         $ra,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00001b90:
    ld         $a4,16($sp)
    ld         $a3,24($sp)
    lh         $a5,0($a4)
    sw         $a5,0($sp)
    lh         $a4,0($a4)
    sw         $a4,4($sp)
    daddiu     $a1,$sp,0
    lw         $a3,0($a3)
    move       $a0,$v0
    jal        OdsyFindMatchingCSetElem
    sw         $a3,8($sp)
    beqz       $v0, .L00001bcc
    nop
    b          .L00001b84
    li         $v0,1
.L00001bcc:
    b          .L00001b84
    move       $v0,$zero

glabel odsy_mm_cores_obj_in
    ld         $a4,8($a1)
    move       $v0,$zero
    dsll       $at,$v0,0x3
.L00001be0:
    daddu      $at,$a4,$at
    ld         $at,16($at)
    addiu      $v0,$v0,1
    beq        $at, $a0, .L00001c08
    slti       $a3,$v0,16
    bnez       $a3, .L00001be0
    dsll       $at,$v0,0x3
    move       $v0,$zero
    jr         $ra
    nop
.L00001c08:
    jr         $ra
    li         $v0,1

glabel gfP_OdsyMMquery
    daddiu     $sp,$sp,-176
    sd         $s2,136($sp)
    sd         $s3,144($sp)
    sd         $ra,152($sp)
    sd         $s4,104($sp)
    ld         $s4,72($a0)
    sd         $s5,120($sp)
    ld         $s4,112($s4)
    move       $a4,$zero
    move       $a1,$zero
    sd         $s1,112($sp)
    move       $s1,$a0
    move       $s5,$a2
    sd         $s0,128($sp)
    move       $s0,$a3
    beqz       $s4, .L00001ec0
    sd         $s7,160($sp)
    ld         $v0,232($s4)
    sd         $zero,88($sp)
    beqz       $v0, .L00001edc
    sd         $zero,80($sp)
    li         $a2,40
    daddiu     $a1,$sp,0
    sw         $zero,0($a3)
    move       $a0,$s5
    jal        copyin
    sd         $v0,72($sp)
    bnez       $v0, .L00001ef8
    lhu        $s3,8($sp)
    lhu        $s2,10($sp)
    bltz       $s3, .L00001ea4
    lw         $s7,4($sp)
    slti       $t8,$s3,16
    beqz       $t8, .L00001ea8
    ld         $a1,-30712($gp)
    bltz       $s2, .L00001ea8
    ld         $a1,-30712($gp)
    slti       $t9,$s2,16
    beqz       $t9, .L00001ea8
    ld         $a1,-30712($gp)
    slt        $ra,$s2,$s3
    bnez       $ra, .L00001ea8
    ld         $a1,-30712($gp)
    ld         $v0,40($s1)
    ld         $at,72($v0)
    bne        $at, $s1, .L00001dac
    ld         $a0,72($sp)
.L00001ccc:
    lw         $v1,80($v0)
    move       $a1,$s7
    daddiu     $a0,$a0,72
    addiu      $v1,$v1,1
    jal        OdsyLookupCSetId
    sw         $v1,80($v0)
    bnez       $v0, .L00001d48
    sd         $v0,96($sp)
    li         $a2,22
    sw         $a2,0($s0)
.L00001cf4:
    ld         $a4,40($s1)
    li         $a2,40
    lw         $a3,80($a4)
    move       $a1,$s5
    daddiu     $a0,$sp,0
    addiu      $a3,$a3,-1
    jal        copyout
    sw         $a3,80($a4)
    bnez       $v0, .L00001f14
    ld         $a1,-30712($gp)
    lw         $v0,0($s0)
.L00001d20:
    ld         $s2,136($sp)
    ld         $s3,144($sp)
    ld         $s4,104($sp)
    ld         $s7,160($sp)
    ld         $ra,152($sp)
    ld         $s1,112($sp)
    ld         $s5,120($sp)
    ld         $s0,128($sp)
    jr         $ra
    daddiu     $sp,$sp,176
.L00001d48:
    daddiu     $a0,$v0,160
    sd         $a0,56($sp)
    lw         $a1,0($v0)
    sh         $a1,12($sp)
    lw         $a4,208($v0)
    sh         $a4,14($sp)
    jal        OdsyLookupCSetId
    lw         $a1,240($s4)
    beqz       $v0, .L00001df0
    move       $a0,$v0
    sd         $v0,64($sp)
    ld         $a2,-30704($gp)
.L00001d78:
    sw         $s7,48($sp)
    sw         $s3,44($sp)
    ld         $a0,64($sp)
    daddiu     $a1,$sp,40
    jal        OdsyFindMatchingCSetElem
    sw         $s2,40($sp)
    beqz       $v0, .L00001e1c
    move       $a3,$v0
    lw         $a4,48($a3)
.L00001d9c:
    sh         $a4,18($sp)
    lw         $a2,24($a3)
    b          .L00001cf4
    sh         $a2,16($sp)
.L00001dac:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a6,40($s1)
    sd         $s1,72($a6)
    ld         $v0,40($s1)
    lw         $a5,104($v0)
    beqz       $a5, .L00001ccc
    ld         $a0,72($sp)
.L00001dd0:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s1)
    lw         $a7,104($v0)
    bnez       $a7, .L00001dd0
    nop
    b          .L00001ccc
    ld         $a0,72($sp)
.L00001df0:
    li         $a0,48
    move       $a1,$zero
    jal        kmem_alloc
    sd         $s6,168($sp)
    move       $s6,$v0
    bnez       $v0, .L00001e68
    sd         $v0,64($sp)
    ld         $s6,168($sp)
    li         $t1,12
    b          .L00001cf4
    sw         $t1,0($s0)
.L00001e1c:
    move       $a0,$s4
    move       $a2,$s2
    ld         $a1,96($sp)
    move       $a3,$s3
    daddiu     $a5,$s4,264
    ld         $a4,64($sp)
    jal        odsy_mm_cores_new
    daddiu     $a6,$sp,0
    bnez       $v0, .L00001e54
    move       $a3,$v0
    li         $t3,1
    sd         $t3,80($sp)
    li         $t2,12
    sw         $t2,0($s0)
.L00001e54:
    ld         $t8,80($sp)
    bnez       $t8, .L00001cf4
    nop
    b          .L00001d9c
    lw         $a4,48($a3)
.L00001e68:
    move       $a0,$v0
    jal        OdsyInitCSet
    li         $a1,2
    ld         $a0,56($sp)
    lw         $a1,240($s4)
    jal        OdsyAllocSpecificCSetId
    move       $a2,$s6
    li         $t9,-1
    beq        $v0, $t9, .L00001f2c
    ld         $a1,-30712($gp)
.L00001e90:
    ld         $ra,88($sp)
    bnez       $ra, .L00001cf4
    ld         $s6,168($sp)
    b          .L00001d78
    ld         $a2,-30704($gp)
.L00001ea4:
    ld         $a1,-30712($gp)
.L00001ea8:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1576
    li         $v0,22
    b          .L00001d20
    sw         $v0,0($s0)
.L00001ec0:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,648
    li         $v0,1
    b          .L00001d20
    sw         $v0,0($s0)
.L00001edc:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,704
    li         $v0,14
    b          .L00001d20
    sw         $v0,0($s0)
.L00001ef8:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1536
    li         $v0,14
    b          .L00001d20
    sw         $v0,0($s0)
.L00001f14:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1696
    li         $v0,14
    b          .L00001d20
    sw         $v0,0($s0)
.L00001f2c:
    li         $a0,7
    jal        cmn_err
    daddiu     $a1,$a1,1624
    move       $a0,$s6
    jal        OdsyDestroyCSet
    move       $a1,$zero
    move       $a3,$zero
    li         $a7,136
.L00001f4c:
    daddu      $a2,$a3,$s6
    addiu      $a3,$a3,1
    sltiu      $a4,$a3,48
    beqz       $a4, .L00001f88
    sb         $a7,0($a2)
    daddu      $a5,$a3,$s6
    addiu      $a3,$a3,1
    sltiu      $a6,$a3,48
    beqz       $a6, .L00001f88
    sb         $a7,0($a5)
    daddu      $t0,$a3,$s6
    addiu      $a3,$a3,1
    sltiu      $t1,$a3,48
    bnez       $t1, .L00001f4c
    sb         $a7,0($t0)
.L00001f88:
    move       $a0,$s6
    jal        kmem_free
    li         $a1,48
    li         $t3,1
    sd         $t3,88($sp)
    li         $t2,12
    b          .L00001e90
    sw         $t2,0($s0)

glabel gfP_OdsyMMxfr
    daddiu     $sp,$sp,-192
    sd         $s4,144($sp)
    sd         $ra,152($sp)
    sd         $s6,160($sp)
    sd         $s0,168($sp)
    sd         $s2,112($sp)
    ld         $s2,72($a0)
    sd         $s7,136($sp)
    move       $v0,$zero
    ld         $s2,112($s2)
    move       $a4,$zero
    move       $a1,$zero
    sd         $s1,128($sp)
    move       $s1,$a0
    move       $s7,$a2
    sd         $s3,120($sp)
    move       $s3,$a3
    beqz       $s2, .L000024f4
    sd         $s5,176($sp)
    ld         $s5,232($s2)
    sd         $zero,104($sp)
    sd         $zero,96($sp)
    beqz       $s5, .L00002510
    sd         $zero,88($sp)
    move       $a0,$a2
    li         $a2,80
    jal        copyin
    daddiu     $a1,$sp,0
    bnez       $v0, .L0000252c
    lw         $s0,4($sp)
    li         $s4,-1
    beq        $s0, $s4, .L00002110
    lhu        $s4,8($sp)
    ld         $s6,224($s2)
    ld         $s6,64($s6)
    move       $a0,$s1
    jal        RRM_CheckValidFault
    ld         $s6,40($s6)
    bltz       $v0, .L0000234c
    li         $v0,14
    ld         $v0,40($s1)
    ld         $t8,72($v0)
    bne        $t8, $s1, .L000020cc
    li         $ra,-2
.L00002058:
    lw         $t9,80($v0)
    addiu      $t9,$t9,1
    beq        $s0, $ra, .L0000211c
    sw         $t9,80($v0)
    li         $ra,-4
    beq        $s0, $ra, .L00002258
    li         $a0,-3
    beq        $a0, $s0, .L000022e0
    slti       $at,$s4,16
    bnez       $at, .L000022e8
    daddiu     $a0,$s5,72
    li         $s0,22
.L00002088:
    ld         $v1,40($s1)
    lw         $v0,80($v1)
    addiu      $v0,$v0,-1
    sw         $v0,80($v1)
    sw         $s0,0($s3)
    move       $v0,$s0
.L000020a0:
    ld         $s2,112($sp)
    ld         $s3,120($sp)
    ld         $s4,144($sp)
    ld         $s6,160($sp)
    ld         $s0,168($sp)
    ld         $ra,152($sp)
    ld         $s1,128($sp)
    ld         $s5,176($sp)
    ld         $s7,136($sp)
    jr         $ra
    daddiu     $sp,$sp,192
.L000020cc:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a0,40($s1)
    sd         $s1,72($a0)
    ld         $v0,40($s1)
    lw         $v1,104($v0)
    beqz       $v1, .L00002058
    li         $ra,-2
.L000020f0:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s1)
    lw         $a1,104($v0)
    bnez       $a1, .L000020f0
    nop
    b          .L00002058
    li         $ra,-2
.L00002110:
    sw         $zero,0($s3)
    b          .L000020a0
    move       $v0,$zero
.L0000211c:
    dsll       $s5,$s4,0x3
    daddu      $s5,$s6,$s5
    ld         $s5,2136($s5)
.L00002128:
    beqz       $s5, .L0000254c
    ld         $a1,-30712($gp)
.L00002130:
    li         $a0,-3
    beq        $a0, $s0, .L000021ac
    lw         $v0,28($sp)
    li         $t8,-4
    beq        $s0, $t8, .L000021ac
    lw         $v0,28($sp)
    lw         $t9,64($s5)
    andi       $t9,$t9,0x1
    beqz       $t9, .L00002480
    move       $a0,$s6
    move       $s0,$zero
    ld         $s4,-30712($gp)
.L00002160:
    ld         $a3,88($sp)
    sltiu      $a3,$a3,1
    beqz       $a3, .L00002088
    lui        $a1,0x1fff
    lw         $v0,28($sp)
    ori        $a1,$a1,0xffff
    and        $a2,$a1,$v0
    beqz       $a2, .L000024ac
    lui        $a0,0xe000
.L00002184:
    lw         $a4,64($sp)
    addu       $a4,$a4,$a2
    and        $a4,$a1,$a4
    and        $a5,$a0,$v0
    or         $a4,$a4,$a5
    beqz       $a3, .L00002088
    sw         $a4,28($sp)
    b          .L000021fc
    ld         $a7,96($sp)
    lw         $v0,28($sp)
.L000021ac:
    sll        $a5,$v0,0x2
    bgez       $a5, .L00002564
    srl        $a3,$v0,0x1c
    sll        $a6,$v0,0x3
    bgez       $a6, .L00002560
    srl        $a3,$v0,0x3
    beq        $a0, $s0, .L0000235c
    andi       $a3,$a3,0x7
    li         $a5,3
    bne        $a5, $a3, .L00002588
    li         $a4,1
    lw         $a6,44($sp)
    srl        $a6,$a6,0x1c
    andi       $a6,$a6,0x7
    bne        $a4, $a6, .L000025ac
    andi       $a2,$v0,0x7
    bne        $a4, $a2, .L000025b4
    move       $s0,$zero
.L000021f4:
    ld         $s4,-30712($gp)
    ld         $a7,96($sp)
.L000021fc:
    bnez       $a7, .L00002088
    lw         $a2,40($sp)
    lw         $a1,52($sp)
    lui        $a3,0xf
    srl        $a2,$a2,0x10
    lw         $v0,24($sp)
    ori        $a3,$a3,0xffff
    lw         $a0,48($sp)
    beqz       $a2, .L00002394
    and        $a1,$a1,$a3
    addiu      $a5,$a2,-1
    multu      $a0,$a5
    mflo       $a3
    multu      $a1,$a2
    mflo       $a4
    addu       $a3,$a3,$a4
    sltu       $a3,$v0,$a3
    beqz       $a3, .L000023b0
    daddiu     $a3,$sp,0
.L00002250:
    b          .L00002088
    li         $s0,22
.L00002258:
    beq        $a0, $s0, .L000022e0
    daddiu     $s5,$s2,512
.L00002260:
    lw         $v0,0($s5)
    andi       $a6,$v0,0x2
    beqz       $a6, .L00002354
    andi       $a7,$v0,0x4
    beqz       $a7, .L00002300
    move       $a1,$zero
    li         $a0,0x8660
    daddu      $a0,$s6,$a0
    jal        mraccessf
    sd         $a0,80($sp)
    lw         $a2,4($s5)
    andi       $a3,$a2,0xffff
    sra        $a1,$a2,0x10
    or         $a1,$a1,$a3
    li         $a3,13
    div        $zero,$a1,$a3
    li         $a0,0x8658
    daddu      $a0,$a0,$s6
    mfhi       $a1
    jal        odsyHashLookup
    ld         $a0,0($a0)
    move       $s5,$v0
    jal        mrunlock
    ld         $a0,80($sp)
    beqz       $s5, .L00002344
    nop
    ld         $v0,24($s5)
    beqz       $v0, .L00002344
    dsll       $s5,$s4,0x3
    daddu      $s5,$v0,$s5
    b          .L00002128
    ld         $s5,16($s5)
.L000022e0:
    b          .L00002260
    daddiu     $s5,$s2,464
.L000022e8:
    jal        OdsyLookupCSetId
    move       $a1,$s0
    bnez       $v0, .L0000231c
    dsll       $a4,$s4,0x3
    b          .L00002088
    li         $s0,22
.L00002300:
    ld         $s5,224($s2)
    ld         $s5,64($s5)
    ld         $s5,40($s5)
    dsll       $t8,$s4,0x3
    daddu      $s5,$s5,$t8
    b          .L00002128
    ld         $s5,2136($s5)
.L0000231c:
    daddu      $a4,$v0,$a4
    ld         $a4,16($a4)
    beqz       $a4, .L00002478
    move       $s5,$a4
    lw         $a5,60($sp)
    srl        $a5,$a5,0x10
    bnez       $a4, .L00002130
    sb         $a5,18($a4)
    b          .L0000254c
    ld         $a1,-30712($gp)
.L00002344:
    b          .L00002088
    li         $s0,22
.L0000234c:
    b          .L000020a0
    sw         $v0,0($s3)
.L00002354:
    b          .L00002088
    li         $s0,22
.L0000235c:
    slti       $a6,$s4,3
    beqz       $a6, .L000024c8
    li         $a5,2
    bne        $a5, $a3, .L000025f0
    andi       $a2,$v0,0x7
    lw         $a7,44($sp)
    srl        $a7,$a7,0x1c
    andi       $a7,$a7,0x7
    bnez       $a7, .L00002600
    andi       $a2,$v0,0x7
    bnez       $a2, .L00002610
    nop
    b          .L000021f4
    move       $s0,$zero
.L00002394:
    sll        $t0,$a0,0x10
    subu       $t0,$t0,$a0
    sll        $t1,$a1,0x10
    addu       $t0,$t0,$t1
    sltu       $t0,$v0,$t0
    bnez       $t0, .L00002250
    daddiu     $a3,$sp,0
.L000023b0:
    lw         $t1,56($sp)
    move       $a2,$s2
    move       $a1,$s1
    move       $a0,$s6
    srl        $t9,$t1,0x18
    andi       $t8,$t9,0x8
    andi       $t9,$t9,0x40
    move       $a4,$s5
    lw         $t2,60($sp)
    sltu       $t9,$zero,$t9
    sltu       $t8,$zero,$t8
    sll        $t9,$t9,0x6
    andi       $t2,$t2,0x1
    sll        $t8,$t8,0x3
    sltiu      $t2,$t2,1
    or         $t8,$t8,$t9
    lui        $t3,0xff
    or         $t2,$t2,$t8
    ori        $t3,$t3,0xffff
    ori        $t2,$t2,0x32
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x18
    or         $t1,$t1,$t2
    jal        odsyDMAOps
    sw         $t1,56($sp)
    bnez       $v0, .L00002088
    move       $s0,$v0
    ld         $at,40($s1)
    lw         $ra,80($at)
    addiu      $ra,$ra,-1
    sw         $ra,80($at)
    lw         $t9,60($sp)
    andi       $t9,$t9,0x2
    beqz       $t9, .L00002458
    li         $a2,80
    move       $a0,$s6
    move       $a1,$s2
    daddiu     $a3,$sp,72
    jal        odsyDMAWait
    li         $a2,1
    move       $s0,$v0
    li         $a2,80
.L00002458:
    move       $a1,$s7
    jal        copyout
    daddiu     $a0,$sp,0
    bnez       $v0, .L00002620
    daddiu     $a1,$s4,1744
    sw         $s0,0($s3)
    b          .L000020a0
    move       $v0,$s0
.L00002478:
    b          .L00002088
    li         $s0,22
.L00002480:
    move       $a1,$s2
    jal        odsyMMvalidatePcxSwap
    move       $a2,$zero
    lw         $at,64($s5)
    andi       $at,$at,0x1
    beqz       $at, .L000025bc
    move       $s0,$zero
    ld         $s4,-30712($gp)
.L000024a0:
    ld         $v0,104($sp)
    b          .L00002160
    sd         $v0,88($sp)
.L000024ac:
    lw         $v1,56($s5)
    and        $v1,$a1,$v1
    and        $v0,$a0,$v0
    or         $v0,$v1,$v0
    sw         $v0,28($sp)
    b          .L00002184
    and        $a2,$a1,$v0
.L000024c8:
    bne        $a5, $a3, .L000025f8
    addiu      $a4,$s4,1
    lw         $a0,44($sp)
    srl        $a0,$a0,0x1c
    andi       $a0,$a0,0x7
    bnez       $a0, .L00002608
    andi       $a2,$v0,0x7
    bne        $a4, $a2, .L00002618
    nop
    b          .L000021f4
    move       $s0,$zero
.L000024f4:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,648
    li         $v0,1
    b          .L000020a0
    sw         $v0,0($s3)
.L00002510:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,704
    li         $v0,14
    b          .L000020a0
    sw         $v0,0($s3)
.L0000252c:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1744
    li         $v0,14
    b          .L000020a0
    sw         $v0,0($s3)
    ld         $a1,-30712($gp)
.L0000254c:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1784
    b          .L00002088
    li         $s0,22
.L00002560:
    srl        $a3,$v0,0x1c
.L00002564:
    li         $a0,4
    srl        $a2,$v0,0x1d
    ld         $a1,-30712($gp)
    andi       $a3,$a3,0x1
    andi       $a2,$a2,0x1
    jal        cmn_err
    daddiu     $a1,$a1,1896
    b          .L00002088
    li         $s0,22
.L00002588:
    andi       $a2,$v0,0x7
.L0000258c:
    ld         $a1,-30712($gp)
.L00002590:
    li         $a0,5
    jal        cmn_err
    daddiu     $a1,$a1,1984
    li         $s0,22
    li         $a2,1
    b          .L000021f4
    sd         $a2,96($sp)
.L000025ac:
    b          .L00002590
    ld         $a1,-30712($gp)
.L000025b4:
    b          .L00002590
    ld         $a1,-30712($gp)
.L000025bc:
    lh         $a4,0($s5)
    ld         $a3,8($s5)
    ld         $s4,-30712($gp)
    ld         $a2,8($a3)
    li         $a0,4
    lw         $a3,0($a3)
    daddiu     $a1,$s4,1840
    jal        cmn_err
    lw         $a2,20($a2)
    li         $s0,22
    li         $a4,1
    b          .L000024a0
    sd         $a4,104($sp)
.L000025f0:
    b          .L0000258c
    move       $a4,$zero
.L000025f8:
    b          .L0000258c
    andi       $a2,$v0,0x7
.L00002600:
    b          .L0000258c
    move       $a4,$zero
.L00002608:
    b          .L00002590
    ld         $a1,-30712($gp)
.L00002610:
    b          .L0000258c
    move       $a4,$zero
.L00002618:
    b          .L00002590
    ld         $a1,-30712($gp)
.L00002620:
    jal        cmn_err
    li         $a0,4
    li         $v0,14
    b          .L000020a0
    sw         $v0,0($s3)

glabel odsy_mm_ctxsw_timeout
    daddiu     $sp,$sp,-16
    ld         $a1,-30712($gp)
    sd         $s8,8($sp)
    move       $s8,$a0
    li         $a0,1
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,2088
    jal        odsy_teardown
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsyMMvalidatePcxSwap
    lw         $at,0($a1)
    daddiu     $sp,$sp,-48
    move       $v0,$a0
    sd         $s0,16($sp)
    move       $s0,$a1
    beqz       $at, .L000026a4
    sd         $ra,24($sp)
    ld         $v1,232($a1)
    beqz       $v1, .L000026a4
    sd         $a0,8($sp)
    daddiu     $a0,$a1,312
    jal        OdsyLookupCSetId
    move       $a1,$zero
    bnez       $v0, .L000026b8
.L000026a4:
    move       $v0,$zero
.L000026a8:
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000026b8:
    ld         $a1,8($sp)
    ld         $a0,-30680($gp)
    li         $a2,1500
    jal        timeout
    sd         $s1,32($sp)
    daddiu     $s1,$s0,264
    sd         $v0,0($sp)
    jal        OdsyInitCSetCursor
    move       $a0,$s1
    jal        OdsyNextCSetElem
    move       $a0,$s1
    li         $s0,1
    bnez       $v0, .L00002708
    move       $a0,$v0
    b          .L0000273c
    nop
.L000026f8:
    jal        OdsyNextCSetElem
    move       $a0,$s1
    beqz       $v0, .L0000273c
    move       $a0,$v0
.L00002708:
    beq        $s0, $a0, .L000026f8
    nop
    ld         $a1,40($a0)
    lhu        $a1,6($a1)
    beqz       $a1, .L000026f8
    nop
    lw         $a2,64($a0)
    bnez       $a2, .L000026f8
    nop
    jal        odsy_mm_commit
    nop
    b          .L000026f8
    nop
.L0000273c:
    ld         $s1,32($sp)
    jal        untimeout_wait
    ld         $a0,0($sp)
    b          .L000026a8
    move       $v0,$zero

glabel odsy_mm_find_current_as
    daddiu     $sp,$sp,-48
    sd         $s1,32($sp)
    sd         $ra,16($sp)
    sd         $s2,24($sp)
    move       $s2,$a0
    daddiu     $a0,$sp,0
    jal        as_lookup_current
    sd         $s0,40($sp)
    daddiu     $s0,$s2,1544
    jal        OdsyInitCSetCursor
    move       $a0,$s0
    jal        OdsyNextCSetElem
    move       $a0,$s0
    beqz       $v0, .L000027dc
    move       $a1,$v0
    b          .L000027a8
    ld         $v0,8($sp)
.L00002794:
    jal        OdsyNextCSetElem
    move       $a0,$s0
    beqz       $v0, .L000027dc
    move       $a1,$v0
    ld         $v0,8($sp)
.L000027a8:
    ld         $at,24($a1)
    bne        $at, $v0, .L00002794
    ld         $a0,0($sp)
    ld         $v1,16($a1)
    bne        $v1, $a0, .L00002794
    move       $s1,$a1
.L000027c0:
    ld         $ra,16($sp)
.L000027c4:
    ld         $s0,40($sp)
    ld         $s2,24($sp)
    move       $v0,$s1
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000027dc:
    li         $a0,64
    jal        kmem_alloc
    move       $a1,$zero
    bnez       $v0, .L000027f8
    move       $s1,$v0
    b          .L000027c0
    move       $s1,$zero
.L000027f8:
    move       $a0,$s0
    li         $a1,-1
    sw         $a1,0($v0)
    jal        OdsyAllocCSetId
    move       $a1,$v0
    li         $a2,-1
    beq        $v0, $a2, .L00002850
    ld         $a1,-30712($gp)
    sw         $v0,0($s1)
    ld         $a4,0($sp)
    sd         $a4,16($s1)
    ld         $a3,8($sp)
    sd         $s2,8($s1)
    sw         $zero,4($s1)
    sd         $zero,32($s1)
    move       $a0,$s1
    jal        odsyPinAndMapASRegions
    sd         $a3,24($s1)
    bnez       $v0, .L000028b4
    ld         $a1,-30712($gp)
    b          .L000027c4
    ld         $ra,16($sp)
.L00002850:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2112
    move       $v0,$zero
    li         $a0,1
.L00002864:
    daddu      $a2,$v0,$s1
    addiu      $v0,$v0,1
    sltiu      $a3,$v0,64
    beqz       $a3, .L000028a0
    sb         $a0,0($a2)
    daddu      $a4,$v0,$s1
    addiu      $v0,$v0,1
    sltiu      $a5,$v0,64
    beqz       $a5, .L000028a0
    sb         $a0,0($a4)
    daddu      $a6,$v0,$s1
    addiu      $v0,$v0,1
    sltiu      $a7,$v0,64
    bnez       $a7, .L00002864
    sb         $a0,0($a6)
.L000028a0:
    move       $a0,$s1
    jal        kmem_free
    li         $a1,64
    b          .L000027c0
    move       $s1,$zero
.L000028b4:
    li         $a0,5
    jal        cmn_err
    daddiu     $a1,$a1,2160
    move       $a0,$s0
    jal        OdsyDeallocCSetId
    lw         $a1,0($s1)
    move       $v0,$zero
    li         $a0,1
.L000028d4:
    daddu      $a2,$v0,$s1
    addiu      $v0,$v0,1
    sltiu      $a3,$v0,64
    beqz       $a3, .L00002910
    sb         $a0,0($a2)
    daddu      $a4,$v0,$s1
    addiu      $v0,$v0,1
    sltiu      $a5,$v0,64
    beqz       $a5, .L00002910
    sb         $a0,0($a4)
    daddu      $a6,$v0,$s1
    addiu      $v0,$v0,1
    sltiu      $a7,$v0,64
    bnez       $a7, .L000028d4
    sb         $a0,0($a6)
.L00002910:
    move       $a0,$s1
    jal        kmem_free
    li         $a1,64
    b          .L000027c0
    move       $s1,$zero

glabel mm_as_remove_sg
    lw         $v0,4($a0)
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    addiu      $v0,$v0,-1
    sd         $s0,0($sp)
    sltiu      $at,$v0,1
    sw         $v0,4($a0)
    move       $s0,$a0
    bnez       $at, .L00002958
    sd         $zero,0($a1)
.L0000294c:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00002958:
    ld         $a0,8($a0)
    lw         $a1,0($s0)
    jal        OdsyDeallocCSetId
    daddiu     $a0,$a0,1544
    jal        odsyUnpinAndUnmapASRegions
    move       $a0,$s0
    move       $a2,$zero
    li         $a0,5
.L00002978:
    daddu      $a3,$a2,$s0
    addiu      $a2,$a2,1
    sltiu      $a1,$a2,64
    sb         $a0,0($a3)
    beqz       $a1, .L000029b4
    daddu      $a5,$a2,$s0
    addiu      $a2,$a2,1
    sltiu      $a4,$a2,64
    sb         $a0,0($a5)
    beqz       $a4, .L000029b4
    daddu      $a6,$a2,$s0
    addiu      $a2,$a2,1
    sltiu      $a7,$a2,64
    bnez       $a7, .L00002978
    sb         $a0,0($a6)
.L000029b4:
    move       $a0,$s0
    jal        kmem_free
    li         $a1,64
    b          .L0000294c
    ld         $ra,8($sp)

glabel odsy_mm_sg_new
    daddiu     $sp,$sp,-32
    sd         $s0,16($sp)
    li         $a0,216
    sd         $s1,0($sp)
    move       $s1,$a1
    sd         $ra,8($sp)
    jal        kmem_alloc
    move       $a1,$zero
    bnez       $v0, .L000029f8
    move       $s0,$v0
    b          .L00002a80
    move       $s0,$zero
.L000029f8:
    sw         $zero,16($v0)
    sd         $zero,0($v0)
    li         $a1,4
    daddiu     $a0,$v0,24
    sd         $s1,8($v0)
    li         $at,-1
    jal        OdsyInitCSet
    sw         $at,20($v0)
    li         $a1,4
    jal        OdsyInitCSet
    daddiu     $a0,$s0,72
    li         $a1,4
    jal        OdsyInitCSet
    daddiu     $a0,$s0,120
    sw         $zero,168($s0)
    sw         $zero,172($s0)
    sd         $zero,176($s0)
    sd         $zero,184($s0)
    daddiu     $a0,$s1,1496
    sw         $zero,208($s0)
    jal        OdsyAllocCSetId
    move       $a1,$s0
    li         $v1,-1
    beq        $v0, $v1, .L00002a98
    ld         $a1,-30712($gp)
    sw         $v0,20($s0)
    jal        odsy_mm_find_current_as
    move       $a0,$s1
    beqz       $v0, .L00002aac
    ld         $a1,-30712($gp)
    lw         $a0,4($v0)
    addiu      $a0,$a0,1
    sw         $a0,4($v0)
    sd         $v0,0($s0)
.L00002a80:
    ld         $ra,8($sp)
    ld         $s1,0($sp)
    move       $v0,$s0
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00002a98:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2200
    b          .L00002ab8
    nop
.L00002aac:
    li         $a0,5
    jal        cmn_err
    daddiu     $a1,$a1,2272
.L00002ab8:
    jal        odsy_mm_sg_destroy
    move       $a0,$s0
    b          .L00002a80
    move       $s0,$zero

glabel odsy_mm_sg_destroy
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s1,8($sp)
    daddiu     $s1,$a0,72
    sd         $ra,16($sp)
    jal        OdsyInitCSetCursor
    move       $a0,$s1
    jal        OdsyNextCSetElem
    move       $a0,$s1
    beqz       $v0, .L00002b18
    move       $a0,$v0
.L00002af8:
    jal        odsy_mm_grp_destroy
    nop
    jal        OdsyInitCSetCursor
    move       $a0,$s1
    jal        OdsyNextCSetElem
    move       $a0,$s1
    bnez       $v0, .L00002af8
    move       $a0,$v0
.L00002b18:
    ld         $a0,8($s0)
    lw         $a1,20($s0)
    jal        OdsyDeallocCSetId
    daddiu     $a0,$a0,1496
    jal        odsyUnpinAndUnmapSGRegions
    move       $a0,$s0
    ld         $a0,0($s0)
    jal        mm_as_remove_sg
    move       $a1,$s0
    move       $a0,$s1
    jal        OdsyDestroyCSet
    move       $a1,$zero
    daddiu     $a0,$s0,24
    ld         $s1,8($sp)
    jal        OdsyDestroyCSet
    move       $a1,$zero
    daddiu     $a0,$s0,120
    jal        OdsyDestroyCSet
    move       $a1,$zero
    move       $a3,$zero
    li         $a0,9
.L00002b6c:
    daddu      $a2,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $a1,$a3,216
    sb         $a0,0($a2)
    beqz       $a1, .L00002ba8
    daddu      $a5,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $a4,$a3,216
    sb         $a0,0($a5)
    beqz       $a4, .L00002ba8
    daddu      $a6,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $a7,$a3,216
    bnez       $a7, .L00002b6c
    sb         $a0,0($a6)
.L00002ba8:
    move       $a0,$s0
    jal        kmem_free
    li         $a1,216
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsy_mm_obj_new
    daddiu     $sp,$sp,-48
    sd         $s1,24($sp)
    li         $a6,4
    lbu        $v0,1($a3)
    li         $a0,8
    sd         $s2,16($sp)
    li         $at,32
    li         $a7,2
    move       $s2,$a1
    sd         $s0,8($sp)
    move       $s0,$a3
    beq        $v0, $at, .L00002c1c
    sd         $ra,32($sp)
    li         $v1,16
    beq        $v0, $v1, .L00002c1c
    nop
    beq        $v0, $a0, .L00002c1c
    nop
    beq        $v0, $a6, .L00002c1c
    nop
    bne        $v0, $a7, .L00002e78
    ld         $a1,-30712($gp)
.L00002c1c:
    lw         $v0,16($s0)
    beqz       $v0, .L00002e38
    ld         $a1,-30712($gp)
    lui        $a0,0x1
    sltu       $a0,$a0,$v0
    bnez       $a0, .L00002e38
    ld         $a1,-30712($gp)
    lw         $a1,20($s0)
    beqz       $a1, .L00002e38
    ld         $a1,-30712($gp)
    lw         $a3,24($s0)
    beqz       $a3, .L00002e38
    ld         $a1,-30712($gp)
    li         $a0,136
    move       $a1,$zero
    jal        kmem_alloc
    sd         $a2,0($sp)
    beqz       $v0, .L00002e0c
    move       $s1,$v0
    li         $t0,-2
    lw         $a7,64($v0)
    li         $a2,-1
    sd         $s2,8($v0)
    and        $a7,$a7,$t0
    li         $t0,-3
    sh         $a2,0($v0)
    and        $a7,$a7,$t0
    li         $t0,-5
    sd         $zero,128($v0)
    and        $a7,$a7,$t0
    li         $t0,-9
    and        $a7,$a7,$t0
    sw         $a7,64($v0)
    lbu        $a6,0($s0)
    sb         $a6,16($v0)
    lbu        $a5,2($s0)
    sb         $a5,18($v0)
    lbu        $a4,1($s0)
    sb         $a4,17($v0)
    lbu        $a3,3($s0)
    sb         $a3,19($v0)
    lw         $t0,16($s0)
    sw         $t0,32($v0)
    lw         $a7,20($s0)
    sw         $a7,36($v0)
    lw         $t1,24($s0)
    sw         $t1,40($v0)
    lw         $a1,4($s0)
    sw         $a1,20($v0)
    lw         $t8,8($s0)
    sw         $t8,24($v0)
    addu       $a1,$t0,$a1
    lw         $t2,12($s0)
    andi       $a0,$a1,0xf
    sw         $t2,28($v0)
    srl        $a1,$a1,0x4
    sltu       $a0,$zero,$a0
    lw         $v0,28($s0)
    addu       $t3,$a7,$t8
    addu       $a0,$a0,$a1
    sw         $v0,44($s1)
    andi       $t9,$t3,0xf
    andi       $a4,$a0,0x1
    lw         $a3,32($s0)
    srl        $a1,$t3,0x4
    sltu       $a6,$zero,$t9
    sw         $a3,48($s1)
    beqz       $a4, .L00002e14
    addu       $at,$a6,$a1
    beqz       $v0, .L00002e1c
    addiu      $a0,$a0,1
    sltu       $ra,$v0,$a0
.L00002d3c:
    bnez       $ra, .L00002e4c
    ld         $a1,-30712($gp)
.L00002d44:
    multu      $v0,$at
    mflo       $a0
    beqz       $a3, .L00002e28
    sltu       $v0,$a3,$a0
    bnez       $v0, .L00002e60
.L00002d58:
    addu       $a5,$t1,$t2
    multu      $a3,$a5
    mflo       $a0
    multu      $t0,$a7
    lbu        $a3,17($s1)
    sw         $zero,76($s1)
    mflo       $a4
    nop
    sd         $zero,80($s1)
    multu      $a3,$a4
    ld         $a1,-30720($gp)
    sd         $zero,88($s1)
    dsll       $a3,$a3,0x2
    sd         $a2,96($s1)
    daddu      $a1,$a1,$a3
    lw         $a1,0($a1)
    sw         $zero,104($s1)
    sllv       $a0,$a0,$a1
    sw         $a0,60($s1)
    move       $a0,$s1
    mflo       $v1
    jal        odsy_mm_reserve
    sw         $v1,72($s1)
    beqz       $v0, .L00002dec
    ld         $t0,0($sp)
    jal        odsy_mm_obj_destroy
    move       $a0,$s1
    move       $s1,$zero
.L00002dd0:
    ld         $ra,32($sp)
    ld         $s0,8($sp)
    ld         $s2,16($sp)
    move       $v0,$s1
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00002dec:
    dsll       $a7,$t0,0x3
    sh         $t0,0($s1)
    daddu      $a7,$s2,$a7
    sd         $s1,16($a7)
    lw         $a6,144($s2)
    addiu      $a6,$a6,1
    b          .L00002dd0
    sw         $a6,144($s2)
.L00002e0c:
    b          .L00002dd0
    move       $s1,$zero
.L00002e14:
    bnez       $v0, .L00002d3c
    sltu       $ra,$v0,$a0
.L00002e1c:
    move       $v0,$a0
    b          .L00002d44
    sw         $a0,44($s1)
.L00002e28:
    move       $a3,$a0
    b          .L00002d58
    sw         $a0,48($s1)
    ld         $a1,-30712($gp)
.L00002e38:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2376
    b          .L00002dd0
    move       $s1,$zero
.L00002e4c:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2440
    b          .L00002dd0
    move       $s1,$zero
.L00002e60:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2496
    b          .L00002dd0
    move       $s1,$zero
.L00002e78:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2312
    b          .L00002dd0
    move       $s1,$zero

glabel odsy_mm_obj_destroy
    lw         $a2,64($a0)
    daddiu     $sp,$sp,-16
    andi       $at,$a2,0x8
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $at, .L00002eb4
    sd         $ra,8($sp)
    jal        odsy_mm_decommit
    nop
    lw         $a2,64($s0)
.L00002eb4:
    andi       $v0,$a2,0x4
    beqz       $v0, .L00002ec8
    nop
    jal        odsy_mm_release
    move       $a0,$s0
.L00002ec8:
    ld         $a0,8($s0)
    ld         $a0,8($a0)
    ld         $a0,8($a0)
    daddiu     $a3,$s0,96
    li         $a2,1
    move       $a1,$zero
    jal        odsyDMAWait
    ld         $a0,0($a0)
    ld         $a1,88($s0)
    beqz       $a1, .L00002efc
    nop
    jal        odsy_mm_obj_free_bs
    move       $a0,$s0
.L00002efc:
    lh         $a2,0($s0)
    li         $a3,-1
    li         $a0,17
    beq        $a2, $a3, .L00002f2c
    dsll       $a6,$a2,0x3
    ld         $a5,8($s0)
    daddu      $a5,$a5,$a6
    sd         $zero,16($a5)
    ld         $a5,8($s0)
    lw         $a4,144($a5)
    addiu      $a4,$a4,-1
    sw         $a4,144($a5)
.L00002f2c:
    move       $a2,$zero
.L00002f30:
    daddu      $t0,$a2,$s0
    addiu      $a2,$a2,1
    sltiu      $a7,$a2,136
    sb         $a0,0($t0)
    beqz       $a7, .L00002f6c
    daddu      $t2,$a2,$s0
    addiu      $a2,$a2,1
    sltiu      $t1,$a2,136
    sb         $a0,0($t2)
    beqz       $t1, .L00002f6c
    daddu      $t3,$a2,$s0
    addiu      $a2,$a2,1
    sltiu      $t8,$a2,136
    bnez       $t8, .L00002f30
    sb         $a0,0($t3)
.L00002f6c:
    move       $a0,$s0
    jal        kmem_free
    li         $a1,136
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_mm_sg_remove_grp
    lw         $a3,0($a1)
    daddiu     $sp,$sp,-16
    li         $at,-1
    sd         $a1,0($sp)
    move       $a4,$a0
    beq        $at, $a3, .L00002fc0
    sd         $ra,8($sp)
    daddiu     $a0,$a0,72
    jal        OdsyDeallocCSetId
    move       $a1,$a3
    ld         $a0,0($sp)
    ld         $ra,8($sp)
    li         $v1,-1
    sw         $v1,0($a0)
.L00002fc0:
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_mm_sg_add_grp
    daddiu     $sp,$sp,-80
    sd         $a2,32($sp)
    sd         $zero,8($sp)
    sd         $ra,40($sp)
    sd         $s0,48($sp)
    move       $s0,$a1
    sd         $s2,56($sp)
    move       $s2,$a0
    daddiu     $a0,$a0,72
    jal        OdsyAllocCSetId
    sd         $a0,0($sp)
    li         $at,-1
    sd         $s2,64($sp)
    move       $s2,$v0
    beq        $v0, $at, .L00003104
    sd         $s1,72($sp)
    dsll32     $s2,$v0,0x0
    ld         $a0,64($sp)
    dsrl32     $s2,$s2,0x0
    sw         $v0,0($s0)
    dsrl       $s2,$s2,0x8
    daddiu     $a0,$a0,120
    sd         $s2,16($sp)
    sll        $s2,$s2,0x0
    sd         $a0,24($sp)
    jal        OdsyLookupCSetId
    move       $a1,$s2
    dsll32     $a1,$s2,0x0
    bnez       $v0, .L000030d0
    move       $s1,$v0
    dsrl32     $t8,$a1,0x0
    sltiu      $t8,$t8,128
    beqz       $t8, .L0000310c
    li         $a0,32
    jal        kmem_alloc
    move       $a1,$zero
    beqz       $v0, .L00003144
    move       $s1,$v0
    li         $a0,16384
    jal        kmem_alloc
    move       $a1,$zero
    beqz       $v0, .L0000315c
    sd         $v0,8($s1)
    move       $a1,$s2
    ld         $a0,24($sp)
    jal        OdsyAllocSpecificCSetId
    move       $a2,$s1
    li         $t9,-1
    beq        $v0, $t9, .L00003174
    ld         $a1,-30712($gp)
    li         $a1,1
    move       $a0,$s1
    sd         $zero,16($s1)
    li         $at,16384
    jal        MapKernelRegionIntoUserSpace
    sd         $at,24($s1)
    bnez       $v0, .L00003188
    ld         $a1,-30712($gp)
    ld         $v1,32($sp)
    lw         $a1,52($v1)
    ld         $a0,16($sp)
    ori        $a1,$a1,0x2
    sw         $a1,52($v1)
    ld         $v0,16($s1)
    sh         $a0,64($v1)
    sd         $v0,56($v1)
.L000030d0:
    lw         $a3,0($s0)
    ld         $a2,8($s1)
    andi       $a3,$a3,0xff
    dsll       $a3,$a3,0x6
    daddu      $a2,$a2,$a3
    sd         $a2,152($s0)
.L000030e8:
    ld         $ra,40($sp)
.L000030ec:
    ld         $s0,48($sp)
    ld         $s1,72($sp)
    move       $v0,$s2
    ld         $s2,56($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00003104:
    b          .L000030ec
    ld         $ra,40($sp)
.L0000310c:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2552
.L0000311c:
    lw         $a1,0($s0)
.L00003120:
    li         $a2,-1
    beq        $a2, $a1, .L0000313c
    ld         $v0,0($sp)
    jal        OdsyDeallocCSetId
    move       $a0,$v0
    li         $a3,-1
    sw         $a3,0($s0)
.L0000313c:
    b          .L000030e8
    li         $s2,-1
.L00003144:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2616
    b          .L00003120
    lw         $a1,0($s0)
.L0000315c:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2680
    b          .L00003120
    lw         $a1,0($s0)
.L00003174:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2744
    b          .L00003120
    lw         $a1,0($s0)
.L00003188:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2840
    li         $a2,1
    b          .L0000311c
    sd         $a2,8($sp)

glabel odsy_mm_grp_new
    daddiu     $sp,$sp,-48
    sd         $s0,32($sp)
    sd         $a2,8($sp)
    sd         $s1,16($sp)
    move       $s1,$a0
    li         $a0,248
    sd         $a1,0($sp)
    sd         $ra,24($sp)
    jal        kmem_alloc
    move       $a1,$zero
    bnez       $v0, .L000031ec
    move       $s0,$v0
    move       $s0,$zero
.L000031d4:
    ld         $ra,24($sp)
.L000031d8:
    ld         $s1,16($sp)
    move       $v0,$s0
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000031ec:
    li         $a1,128
    li         $at,-1
    sw         $at,212($v0)
    daddiu     $a0,$v0,16
    jal        bzero
    sw         $at,0($v0)
    sw         $zero,144($s0)
    sw         $zero,216($s0)
    li         $a1,2
    sd         $zero,240($s0)
    daddiu     $a0,$s0,160
    jal        OdsyInitCSet
    sd         $zero,232($s0)
    sd         $s1,224($s0)
    ld         $a0,0($sp)
    ld         $a2,8($sp)
    sd         $a0,8($s0)
    lbu        $v0,12($a2)
    move       $a1,$s0
    xori       $v0,$v0,0x6
    sltiu      $v0,$v0,1
    jal        odsy_mm_sg_add_grp
    sw         $v0,208($s0)
    lw         $v1,0($s0)
    li         $v0,-1
    beq        $v0, $v1, .L00003294
    nop
    lw         $a0,208($s0)
    beqz       $a0, .L00003284
    daddiu     $a0,$s1,360
    jal        OdsyAllocCSetId
    move       $a1,$s0
    li         $a1,-1
    xor        $a0,$v0,$a1
    beq        $v0, $a1, .L0000328c
    sltiu      $a0,$a0,1
    bnez       $a0, .L00003294
    sw         $v0,212($s0)
.L00003284:
    b          .L000031d8
    ld         $ra,24($sp)
.L0000328c:
    beqz       $a0, .L00003284
    nop
.L00003294:
    jal        odsy_mm_grp_destroy
    move       $a0,$s0
    b          .L000031d4
    move       $s0,$zero

glabel odsy_mm_grp_destroy
    daddiu     $sp,$sp,-64
    sd         $ra,16($sp)
    sd         $s0,24($sp)
    sd         $s5,32($sp)
    sd         $s3,40($sp)
    lw         $at,0($a0)
    sd         $s4,0($sp)
    li         $a1,-1
    ld         $s4,8($a0)
    sd         $s1,8($sp)
    move       $s1,$a0
    beq        $a1, $at, .L00003448
    ld         $s4,8($s4)
    move       $s0,$zero
    b          .L000032fc
    sd         $s2,48($sp)
.L000032e4:
    jal        odsy_mm_obj_destroy
    nop
    addiu      $s0,$s0,1
    slti       $t8,$s0,16
    beqz       $t8, .L0000331c
    sd         $zero,16($s2)
.L000032fc:
    dsll       $s2,$s0,0x3
    daddu      $s2,$s1,$s2
    ld         $a0,16($s2)
    bnez       $a0, .L000032e4
    nop
    addiu      $s0,$s0,1
    slti       $t8,$s0,16
    bnez       $t8, .L000032fc
.L0000331c:
    daddiu     $s5,$s1,160
    jal        OdsyInitCSetCursor
    move       $a0,$s5
    jal        OdsyNextCSetElem
    move       $a0,$s5
    li         $s2,33
    bnez       $v0, .L000033c0
    move       $s0,$v0
    b          .L0000340c
    nop
.L00003344:
    jal        OdsyDestroyCSet
    move       $a1,$zero
    move       $a0,$s5
    jal        OdsyDeallocCSetId
    lw         $a1,240($s3)
.L00003358:
    move       $a3,$zero
.L0000335c:
    daddu      $ra,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $t9,$a3,48
    sb         $s2,0($ra)
    beqz       $t9, .L0000339c
    daddu      $v0,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $at,$a3,48
    sb         $s2,0($v0)
    beqz       $at, .L000033a0
    move       $a0,$s0
    daddu      $v1,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $a0,$a3,48
    bnez       $a0, .L0000335c
    sb         $s2,0($v1)
.L0000339c:
    move       $a0,$s0
.L000033a0:
    jal        kmem_free
    li         $a1,48
    jal        OdsyInitCSetCursor
    move       $a0,$s5
    jal        OdsyNextCSetElem
    move       $a0,$s5
    beqz       $v0, .L0000340c
    move       $s0,$v0
.L000033c0:
    jal        OdsyInitCSetCursor
    move       $a0,$s0
    jal        OdsyNextCSetElem
    move       $a0,$s0
    beqz       $v0, .L00003358
    move       $a0,$v0
.L000033d8:
    ld         $s3,16($a0)
    jal        odsy_mm_cores_destroy
    move       $a1,$s4
    jal        OdsyInitCSetCursor
    move       $a0,$s0
    jal        OdsyNextCSetElem
    move       $a0,$s0
    bnez       $v0, .L000033d8
    move       $a0,$v0
    bnez       $s3, .L00003344
    move       $a0,$s0
    b          .L0000335c
    move       $a3,$zero
.L0000340c:
    move       $a0,$s5
    jal        OdsyDestroyCSet
    move       $a1,$zero
    lw         $a1,212($s1)
    li         $a2,-1
    beq        $a2, $a1, .L00003438
    ld         $s2,48($sp)
    ld         $a0,224($s1)
    jal        OdsyDeallocCSetId
    daddiu     $a0,$a0,360
    ld         $s2,48($sp)
.L00003438:
    ld         $s0,24($sp)
    ld         $a0,8($s1)
    jal        odsy_mm_sg_remove_grp
    move       $a1,$s1
.L00003448:
    ld         $s3,40($sp)
    ld         $s4,0($sp)
    ld         $s5,32($sp)
    move       $a3,$zero
    li         $a0,35
.L0000345c:
    daddu      $a2,$a3,$s1
    addiu      $a3,$a3,1
    sltiu      $a1,$a3,248
    sb         $a0,0($a2)
    beqz       $a1, .L00003498
    daddu      $a5,$a3,$s1
    addiu      $a3,$a3,1
    sltiu      $a4,$a3,248
    sb         $a0,0($a5)
    beqz       $a4, .L00003498
    daddu      $a6,$a3,$s1
    addiu      $a3,$a3,1
    sltiu      $a7,$a3,248
    bnez       $a7, .L0000345c
    sb         $a0,0($a6)
.L00003498:
    move       $a0,$s1
    jal        kmem_free
    li         $a1,248
    ld         $ra,16($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel odsy_mm_cores_destroy
    daddiu     $sp,$sp,-32
    sd         $a1,0($sp)
    lw         $a3,52($a0)
    sd         $s1,8($sp)
    li         $s1,-1
    sd         $s0,16($sp)
    move       $s0,$a0
    beq        $a3, $s1, .L000034e8
    sd         $ra,24($sp)
    ld         $a0,56($a0)
    jal        OdsyDeallocCSetId
    move       $a1,$a3
    sw         $s1,52($s0)
.L000034e8:
    lw         $a1,48($s0)
    beq        $a1, $s1, .L00003504
    nop
    ld         $a0,16($s0)
    jal        OdsyDeallocCSetId
    daddiu     $a0,$a0,264
    sw         $s1,48($s0)
.L00003504:
    lw         $a1,24($s0)
    beq        $a1, $s1, .L00003524
    ld         $s1,8($sp)
    ld         $a0,0($sp)
    ld         $a0,0($a0)
    jal        OdsyFree32kSlot
    daddiu     $a0,$a0,29952
    ld         $s1,8($sp)
.L00003524:
    move       $a1,$zero
    li         $a0,31
.L0000352c:
    daddu      $a3,$a1,$s0
    addiu      $a1,$a1,1
    sltiu      $a2,$a1,72
    sb         $a0,0($a3)
    beqz       $a2, .L00003568
    daddu      $a5,$a1,$s0
    addiu      $a1,$a1,1
    sltiu      $a4,$a1,72
    sb         $a0,0($a5)
    beqz       $a4, .L00003568
    daddu      $a6,$a1,$s0
    addiu      $a1,$a1,1
    sltiu      $a7,$a1,72
    bnez       $a7, .L0000352c
    sb         $a0,0($a6)
.L00003568:
    move       $a0,$s0
    jal        kmem_free
    li         $a1,72
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsy_mm_cores_new
    daddiu     $sp,$sp,-128
    sd         $s1,96($sp)
    sd         $a2,40($sp)
    sd         $a3,48($sp)
    sd         $a5,24($sp)
    sd         $a6,8($sp)
    sd         $zero,56($sp)
    sd         $ra,80($sp)
    sd         $a1,32($sp)
    sd         $s4,88($sp)
    ld         $at,8($a1)
    sd         $s0,72($sp)
    ld         $at,8($at)
    move       $v0,$a1
    move       $s0,$a4
    sd         $at,64($sp)
    move       $s4,$a0
    li         $a0,72
    ld         $at,0($at)
    move       $a1,$zero
    jal        kmem_alloc
    sd         $at,16($sp)
    sd         $s2,104($sp)
    move       $s1,$v0
    bnez       $v0, .L00003614
    sd         $s3,112($sp)
    move       $s1,$zero
.L000035f0:
    ld         $s2,104($sp)
    ld         $s0,72($sp)
    ld         $ra,80($sp)
    ld         $s3,112($sp)
    ld         $s4,88($sp)
    move       $v0,$s1
    ld         $s1,96($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L00003614:
    sd         $s4,16($v0)
    sd         $s0,56($v0)
    li         $s3,-1
    sw         $s3,48($v0)
    sw         $s3,52($v0)
    sw         $s3,24($v0)
    sw         $zero,64($v0)
    ld         $a1,32($sp)
    ld         $a0,48($sp)
    ld         $v1,40($sp)
    sw         $v1,4($v0)
    sw         $a0,0($v0)
    ld         $a0,24($sp)
    sd         $a1,8($v0)
    jal        OdsyAllocCSetId
    move       $a1,$v0
    beq        $v0, $s3, .L00003778
    move       $a0,$s0
    sw         $v0,48($s1)
    jal        OdsyAllocCSetId
    move       $a1,$s1
    beq        $v0, $s3, .L00003778
    ld         $a0,16($sp)
    sw         $v0,52($s1)
    jal        OdsyAlloc32kSlot
    daddiu     $a0,$a0,29952
    beq        $v0, $s3, .L0000377c
    move       $a0,$s1
    lw         $s2,48($s1)
    dsrl       $s2,$s2,0xa
    sw         $v0,24($s1)
    daddiu     $a0,$s4,312
    sll        $s2,$s2,0x0
    sd         $a0,0($sp)
    jal        OdsyLookupCSetId
    move       $a1,$s2
    bnez       $v0, .L0000378c
    move       $s0,$v0
    sltiu      $t8,$s2,32
    beqz       $t8, .L000037e0
    li         $a0,32
    jal        kmem_alloc
    move       $a1,$zero
    beqz       $v0, .L000037f8
    move       $s0,$v0
    sdl        $zero,0($v0)
    sdr        $zero,7($v0)
    sdl        $zero,8($v0)
    sdr        $zero,15($v0)
    sdl        $zero,16($v0)
    sdr        $zero,23($v0)
    li         $a0,16384
    sdl        $zero,24($v0)
    sdr        $zero,31($v0)
    jal        kmem_alloc
    move       $a1,$zero
    beqz       $v0, .L00003810
    sd         $v0,8($s0)
    li         $t9,16384
    sd         $t9,24($s0)
    move       $a1,$s2
    ld         $a0,0($sp)
    jal        OdsyAllocSpecificCSetId
    move       $a2,$s0
    beq        $v0, $s3, .L0000377c
    move       $a0,$s1
    move       $a0,$s0
    jal        MapKernelRegionIntoUserSpace
    li         $a1,3
    bnez       $v0, .L00003878
    ld         $a1,-30712($gp)
    bnez       $s2, .L00003754
    move       $v0,$zero
.L00003738:
    dsll       $v1,$v0,0x2
    addiu      $v0,$v0,1
    ld         $ra,8($s0)
    slti       $at,$v0,2
    daddu      $ra,$ra,$v1
    bnez       $at, .L00003738
    sw         $s3,0($ra)
.L00003754:
    ld         $a2,56($sp)
    ld         $a1,8($sp)
    lw         $a3,0($a1)
    sh         $s2,32($a1)
    ori        $a3,$a3,0x10
    sw         $a3,0($a1)
    ld         $a0,16($s0)
    beqz       $a2, .L0000378c
    sd         $a0,24($a1)
.L00003778:
    move       $a0,$s1
.L0000377c:
    jal        odsy_mm_cores_destroy
    ld         $a1,64($sp)
    b          .L000035f0
    move       $s1,$zero
.L0000378c:
    ld         $t0,64($sp)
    lw         $t1,24($s1)
    ld         $t0,8($t0)
    daddu      $t1,$t1,$t1
    daddu      $t0,$t0,$t1
    sd         $t0,32($s1)
    sh         $zero,0($t0)
    lw         $a7,48($s1)
    ld         $a6,8($s0)
    andi       $a7,$a7,0x3ff
    dsll       $a7,$a7,0x4
    daddu      $a6,$a6,$a7
    sd         $a6,40($s1)
    sw         $zero,12($a6)
    sw         $zero,8($a6)
    sw         $zero,4($a6)
    sw         $zero,0($a6)
    ld         $a5,40($s1)
    li         $a4,1
    b          .L000035f0
    sh         $a4,4($a5)
.L000037e0:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2904
    b          .L0000377c
    move       $a0,$s1
.L000037f8:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,2944
    b          .L0000377c
    move       $a0,$s1
.L00003810:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3000
    move       $v0,$zero
    li         $a0,37
.L00003828:
    daddu      $a2,$v0,$s0
    addiu      $v0,$v0,1
    sltiu      $a3,$v0,32
    beqz       $a3, .L00003864
    sb         $a0,0($a2)
    daddu      $a4,$v0,$s0
    addiu      $v0,$v0,1
    sltiu      $a5,$v0,32
    beqz       $a5, .L00003864
    sb         $a0,0($a4)
    daddu      $a6,$v0,$s0
    addiu      $v0,$v0,1
    sltiu      $a7,$v0,32
    bnez       $a7, .L00003828
    sb         $a0,0($a6)
.L00003864:
    move       $a0,$s0
    jal        kmem_free
    li         $a1,32
    b          .L0000377c
    move       $a0,$s1
.L00003878:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3048
    ld         $a0,0($sp)
    jal        OdsyDeallocCSetId
    move       $a1,$s2
    move       $a2,$zero
    li         $v0,39
.L00003898:
    ld         $a4,8($s0)
    daddu      $a4,$a2,$a4
    addiu      $a2,$a2,1
    slti       $a3,$a2,16384
    sb         $v0,0($a4)
    beqz       $a3, .L000038d0
    li         $a1,16384
    ld         $a5,8($s0)
    daddu      $a5,$a2,$a5
    addiu      $a2,$a2,1
    slti       $a6,$a2,16384
    bnez       $a6, .L00003898
    sb         $v0,0($a5)
    li         $a1,16384
.L000038d0:
    jal        kmem_free
    ld         $a0,8($s0)
    move       $v0,$zero
    li         $a0,41
.L000038e0:
    daddu      $a6,$v0,$s0
    addiu      $v0,$v0,1
    sltiu      $a7,$v0,32
    beqz       $a7, .L0000391c
    sb         $a0,0($a6)
    daddu      $t0,$v0,$s0
    addiu      $v0,$v0,1
    sltiu      $t1,$v0,32
    beqz       $t1, .L0000391c
    sb         $a0,0($t0)
    daddu      $t2,$v0,$s0
    addiu      $v0,$v0,1
    sltiu      $t3,$v0,32
    bnez       $t3, .L000038e0
    sb         $a0,0($t2)
.L0000391c:
    move       $a0,$s0
    jal        kmem_free
    li         $a1,32
    li         $s0,1
    b          .L00003778
    sd         $s0,56($sp)

glabel SetupDMAParams
    sw         $zero,28($a1)
    sw         $zero,24($a1)
    sw         $zero,20($a1)
    sw         $zero,16($a1)
    sw         $zero,12($a1)
    sw         $zero,8($a1)
    sw         $zero,4($a1)
    sw         $zero,0($a1)
    lw         $t1,56($a0)
    lui        $t2,0x1fff
    lw         $t0,0($a1)
    lui        $t3,0xe000
    ori        $t2,$t2,0xffff
    lw         $a5,8($a1)
    and        $t1,$t1,$t2
    and        $t0,$t0,$t3
    or         $t0,$t0,$t1
    sw         $t0,0($a1)
    lw         $a6,44($a0)
    li         $a7,-4096
    lw         $a4,12($a1)
    and        $a5,$a5,$a7
    andi       $a6,$a6,0xfff
    or         $a5,$a5,$a6
    sw         $a5,8($a1)
    lw         $a5,32($a0)
    lui        $v0,0xffff
    and        $a4,$v0,$a4
    andi       $a5,$a5,0xffff
    or         $a4,$a4,$a5
    sw         $a4,12($a1)
    lw         $a5,36($a0)
    lw         $a3,4($a1)
    andi       $a4,$a4,0xffff
    sll        $a5,$a5,0x10
    or         $a4,$a4,$a5
    sw         $a4,12($a1)
    lw         $v1,20($a0)
    and        $v0,$v0,$a3
    andi       $v1,$v1,0xffff
    or         $v0,$v0,$v1
    sw         $v0,4($a1)
    lw         $v1,24($a0)
    daddiu     $sp,$sp,-48
    sd         $a0,8($sp)
    andi       $v0,$v0,0xffff
    sll        $v1,$v1,0x10
    or         $v0,$v0,$v1
    sw         $v0,4($a1)
    lbu        $a5,17($a0)
    sd         $a1,24($sp)
    li         $at,16
    sd         $a2,16($sp)
    li         $a7,2
    li         $a6,4
    sd         $ra,32($sp)
    beq        $a5, $at, .L00003b28
    li         $a4,8
    beq        $a5, $a4, .L00003b18
    nop
    beq        $a5, $a6, .L00003b20
    li         $a4,1
    beq        $a5, $a7, .L00003b0c
    lw         $a4,0($sp)
.L00003a34:
    ld         $a6,-30720($gp)
.L00003a38:
    lui        $t9,0xf
    andi       $v0,$a4,0x7
    lw         $a7,16($a1)
    dsll       $t0,$a4,0x2
    daddiu     $a6,$a6,136
    daddu      $a6,$a6,$t0
    li         $t0,0xe000
    ori        $a7,$a7,0x1000
    nor        $t0,$t0,$zero
    and        $a7,$a7,$t0
    sll        $t0,$v0,0xd
    or         $a7,$a7,$t0
    nor        $t0,$t9,$zero
    sll        $v0,$v0,0x10
    and        $a7,$a7,$t0
    lw         $a6,0($a6)
    li         $t0,-249
    or         $a7,$v0,$a7
    and        $a7,$a7,$t0
    li         $t0,-8
    lw         $t3,24($a1)
    andi       $a6,$a6,0x7
    and        $a7,$a7,$t0
    or         $a6,$a6,$a7
    sw         $a6,16($a1)
    lw         $a4,32($a0)
    lui        $at,0xfff0
    lbu        $a3,17($a0)
    and        $t3,$t3,$at
    ori        $a2,$a2,0x32
    lw         $v1,28($a1)
    lui        $a5,0xff
    multu      $a3,$a4
    sll        $a2,$a2,0x18
    ori        $a5,$a5,0xffff
    and        $v1,$v1,$a5
    lui        $a0,0x7
    or         $v1,$v1,$a2
    nor        $a0,$a0,$zero
    ori        $t9,$t9,0xffff
    and        $v1,$v1,$a0
    or         $v0,$v0,$v1
    li         $v1,-481
    daddiu     $sp,$sp,48
    and        $v0,$v0,$v1
    li         $v1,-32
    mflo       $t8
    and        $v0,$v0,$v1
    sw         $v0,28($a1)
    and        $t8,$t8,$t9
    or         $t3,$t3,$t8
    jr         $ra
    sw         $t3,24($a1)
.L00003b0c:
    move       $a4,$zero
    b          .L00003a38
    ld         $a6,-30720($gp)
.L00003b18:
    b          .L00003a34
    li         $a4,2
.L00003b20:
    b          .L00003a38
    ld         $a6,-30720($gp)
.L00003b28:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3104
    ld         $ra,32($sp)
    ld         $a1,24($sp)
    ld         $a2,16($sp)
    ld         $a0,8($sp)
    b          .L00003a34
    li         $a4,2

glabel odsy_mm_check_for_mutations
    daddiu     $sp,$sp,-64
    sd         $s4,16($sp)
    daddiu     $s4,$a0,1496
    sd         $ra,24($sp)
    jal        OdsyInitCSetCursor
    move       $a0,$s4
    jal        OdsyNextCSetElem
    move       $a0,$s4
    sd         $s1,48($sp)
    sd         $s0,40($sp)
    sd         $s2,8($sp)
    move       $a3,$v0
    beqz       $v0, .L00003c58
    sd         $s3,32($sp)
    b          .L00003ba0
    move       $s2,$zero
.L00003b90:
    jal        OdsyNextCSetElem
    move       $a0,$s4
    beqz       $v0, .L00003c34
    move       $a3,$v0
.L00003ba0:
    daddiu     $s3,$a3,72
    jal        OdsyInitCSetCursor
    move       $a0,$s3
    jal        OdsyNextCSetElem
    move       $a0,$s3
    bnez       $v0, .L00003c2c
    move       $s1,$v0
    b          .L00003b90
    nop
.L00003bc4:
    addiu      $s0,$s0,1
    slti       $at,$s0,16
    beqz       $at, .L00003c1c
.L00003bd0:
    dsll       $a0,$s0,0x3
    daddu      $a0,$s1,$a0
    ld         $a0,16($a0)
    beqz       $a0, .L00003bc4
    nop
    lw         $a1,64($a0)
    andi       $a1,$a1,0x1
    beqz       $a1, .L00003bc4
    nop
    ld         $a2,88($a0)
    beqz       $a2, .L00003bc4
    li         $a2,1
    daddiu     $a1,$sp,0
    jal        odsy_mm_obj_xfr_bs
    sw         $zero,0($sp)
    addiu      $s0,$s0,1
    slti       $a3,$s0,16
    bnez       $a3, .L00003bd0
    or         $s2,$v0,$s2
.L00003c1c:
    jal        OdsyNextCSetElem
    move       $a0,$s3
    beqz       $v0, .L00003b90
    move       $s1,$v0
.L00003c2c:
    b          .L00003bd0
    move       $s0,$zero
.L00003c34:
    ld         $s1,48($sp)
    ld         $s0,40($sp)
    ld         $ra,24($sp)
    ld         $s3,32($sp)
    move       $v0,$s2
    ld         $s2,8($sp)
    ld         $s4,16($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00003c58:
    b          .L00003c34
    move       $s2,$zero

glabel odsy_mm_jettison_freerun_bs
    daddiu     $sp,$sp,-64
    sd         $s4,24($sp)
    move       $s4,$a1
    sd         $s3,0($sp)
    move       $s3,$a0
    sd         $s6,8($sp)
    daddiu     $s6,$a0,1496
    sd         $ra,16($sp)
    jal        OdsyInitCSetCursor
    move       $a0,$s6
    jal        OdsyNextCSetElem
    move       $a0,$s6
    sd         $s5,32($sp)
    sd         $s1,40($sp)
    sd         $s0,48($sp)
    move       $a1,$v0
    beqz       $v0, .L00003d78
    sd         $s2,56($sp)
.L00003ca8:
    daddiu     $s5,$a1,72
    jal        OdsyInitCSetCursor
    move       $a0,$s5
    jal        OdsyNextCSetElem
    move       $a0,$s5
    beqz       $v0, .L00003d68
    move       $s2,$v0
.L00003cc4:
    b          .L00003cd8
    move       $s1,$zero
.L00003ccc:
    addiu      $s1,$s1,1
    slti       $at,$s1,16
    beqz       $at, .L00003d58
.L00003cd8:
    dsll       $s0,$s1,0x3
.L00003cdc:
    daddu      $s0,$s2,$s0
    ld         $s0,16($s0)
    beqz       $s0, .L00003ccc
    nop
    lw         $t8,64($s0)
    andi       $t8,$t8,0x1
    beqz       $t8, .L00003ccc
    nop
    ld         $t9,88($s0)
    beqz       $t9, .L00003ccc
    nop
    ld         $a0,8($s0)
    ld         $a0,8($a0)
    ld         $a0,8($a0)
    daddiu     $a3,$s0,96
    li         $a2,1
    move       $a1,$zero
    jal        odsyDMAWait
    ld         $a0,0($a0)
    jal        odsy_mm_obj_free_bs
    move       $a0,$s0
    ld         $a2,4880($s3)
    ld         $a1,4872($s3)
    daddu      $a2,$a2,$s4
    addiu      $a3,$s1,1
    sltu       $a1,$a1,$a2
    move       $s1,$a3
    beqz       $a1, .L00003d78
    slti       $a4,$a3,16
    bnez       $a4, .L00003cdc
    dsll       $s0,$s1,0x3
.L00003d58:
    jal        OdsyNextCSetElem
    move       $a0,$s5
    bnez       $v0, .L00003cc4
    move       $s2,$v0
.L00003d68:
    jal        OdsyNextCSetElem
    move       $a0,$s6
    bnez       $v0, .L00003ca8
    move       $a1,$v0
.L00003d78:
    ld         $s2,56($sp)
    ld         $s3,0($sp)
    ld         $s6,8($sp)
    ld         $s4,24($sp)
    ld         $ra,16($sp)
    ld         $s0,48($sp)
    ld         $s1,40($sp)
    ld         $s5,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel odsy_mm_B_warn1
    li         $at,1
    jr         $ra
    sw         $at,4924($a0)

glabel odsy_mm_B_warn2
    daddiu     $sp,$sp,-32
    lw         $at,4924($a0)
    sd         $a1,0($sp)
    li         $a4,2
    sd         $s0,8($sp)
    move       $s0,$a0
    bne        $at, $a4, .L00003ddc
    sd         $ra,16($sp)
.L00003dcc:
    sw         $a4,4924($s0)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00003ddc:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3184
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3256
    ld         $a4,4864($s0)
    ld         $a1,-30712($gp)
    ld         $a2,0($sp)
    li         $a0,4
    ld         $a3,4880($s0)
    jal        cmn_err
    daddiu     $a1,$a1,3296
    ld         $ra,16($sp)
    b          .L00003dcc
    li         $a4,2

glabel odsy_mm_B_okay
    jr         $ra
    sw         $zero,4924($a0)

glabel odsy_mm_obj_xfr_bs
    daddiu     $sp,$sp,-176
    sd         $s2,120($sp)
    sd         $s8,128($sp)
    sd         $s3,136($sp)
    sd         $ra,144($sp)
    sd         $s4,152($sp)
    sd         $s7,160($sp)
    sd         $s1,96($sp)
    sd         $s6,80($sp)
    ld         $s6,8($a0)
    sd         $s0,88($sp)
    ld         $s6,8($s6)
    ld         $at,88($a0)
    ld         $s6,8($s6)
    sd         $s6,72($sp)
    ld         $s6,0($s6)
    move       $s0,$a0
    move       $s1,$a1
    sd         $s5,104($sp)
    move       $s5,$a2
    bnez       $at, .L00003ea4
    ld         $s6,824($s6)
    beqz       $a2, .L00004180
    nop
    jal        odsy_mm_obj_alloc_bs
    nop
    beqz       $v0, .L00003ea8
    move       $a0,$s0
    b          .L0000412c
    li         $v0,12
.L00003ea4:
    move       $a0,$s0
.L00003ea8:
    daddiu     $a1,$sp,32
    jal        SetupDMAParams
    move       $a2,$s5
    lbu        $a2,17($s0)
    slti       $t8,$a2,9
    beqz       $t8, .L000041c0
    li         $v0,1
.L00003ec4:
    daddiu     $s4,$s0,96
    beqz       $s5, .L00003ed4
    lui        $s7,0xe000
    sw         $v0,76($s0)
.L00003ed4:
    lw         $t9,40($s0)
    sd         $s6,168($sp)
    sd         $s5,64($sp)
    lui        $v0,0x11
    sd         $s1,112($sp)
    beqz       $t9, .L00004094
    daddu      $s8,$v0,$s6
    move       $s1,$zero
    lui        $s5,0x1
    lui        $s6,0x1fff
    ori        $s3,$s5,0x443
    ori        $s2,$s5,0x46
    ori        $s5,$s5,0x19
    b          .L00003f5c
    ori        $s6,$s6,0xffff
.L00003f10:
    li         $t8,3
    sw         $t8,4($sp)
    sd         $zero,8($sp)
    move       $a0,$zero
    move       $a2,$zero
    ld         $a5,112($sp)
    daddu      $a3,$v0,$t2
    daddiu     $a6,$sp,32
    sd         $zero,16($sp)
    move       $a7,$s4
    jal        odsyDMAOp
    sw         $zero,28($sp)
    bnez       $v0, .L00004198
    ld         $a1,-30712($gp)
    lw         $t9,40($s0)
.L00003f4c:
    addiu      $s1,$s1,1
    sltu       $t9,$s1,$t9
    beqz       $t9, .L000040ac
    nop
.L00003f5c:
    lbu        $t1,17($s0)
    lw         $t0,48($s0)
    sll        $t1,$t1,0x8
    multu      $t0,$t1
    lw         $a7,28($s0)
    addu       $a7,$s1,$a7
    mflo       $t0
    multu      $a7,$t0
    lw         $a5,56($s0)
    mflo       $a6
    lw         $a4,32($sp)
    sra        $a6,$a6,0x4
    addu       $a5,$a5,$a6
    and        $a4,$s7,$a4
    and        $a5,$s6,$a5
    or         $a4,$a4,$a5
    sw         $a4,32($sp)
    sw         $s3,0($s8)
    li         $a2,250
    sync
    sw         $a2,0($s8)
    sync
    sw         $s2,0($s8)
    sync
    sw         $s2,0($s8)
    sync
    sw         $s5,0($s8)
    sync
    sw         $s3,0($s8)
    li         $a3,150
    sync
    sw         $a3,0($s8)
    sync
    sw         $s2,0($s8)
    sync
    sw         $s2,0($s8)
    sync
    sw         $s2,0($s8)
    sync
    sw         $s2,0($s8)
    sync
    sw         $s3,0($s8)
    sync
    sw         $a2,0($s8)
    sync
    sw         $s2,0($s8)
    sync
    sw         $s2,0($s8)
    sync
    lw         $a4,72($s0)
    ld         $a1,8($s0)
    mult       $a4,$s1
    ld         $a2,88($s0)
    ld         $a1,8($a1)
    sltiu      $a2,$a2,16384
    ld         $a1,8($a1)
    ld         $t2,80($s0)
    mflo       $v0
    bnez       $a2, .L00003f10
    ld         $a1,0($a1)
    ld         $a5,112($sp)
    move       $a2,$t2
    li         $t2,3
    sw         $t2,4($sp)
    move       $a0,$zero
    sd         $zero,8($sp)
    move       $a3,$v0
    daddiu     $a6,$sp,32
    sd         $zero,16($sp)
    move       $a7,$s4
    jal        odsyDMAOp
    sw         $zero,28($sp)
    beqzl      $v0, .L00003f4c
    lw         $t9,40($s0)
    b          .L000041ac
    ld         $a1,-30712($gp)
.L00004094:
    daddu      $s8,$v0,$s6
    daddiu     $s4,$s0,96
    lui        $s3,0x1
    sd         $s5,64($sp)
    ori        $s2,$s3,0x46
    ori        $s3,$s3,0x443
.L000040ac:
    ld         $a0,8($s0)
    ld         $a0,8($a0)
    ld         $a0,8($a0)
    move       $a1,$zero
    li         $a2,1
    move       $a3,$s4
    jal        odsyDMAWait
    ld         $a0,0($a0)
    sw         $s3,0($s8)
    sync
    li         $a2,250
    sw         $a2,0($s8)
    sync
    sw         $s2,0($s8)
    sync
    sw         $s2,0($s8)
    lui        $a3,0x1
    sync
    ori        $a3,$a3,0x18
    sw         $a3,0($s8)
    sync
    sw         $s3,0($s8)
    sync
    sw         $a2,0($s8)
    sync
    ld         $a1,64($sp)
    sw         $s2,0($s8)
    sync
    sw         $s2,0($s8)
    sync
    beqz       $a1, .L0000415c
.L00004128:
    move       $v0,$zero
.L0000412c:
    ld         $s6,80($sp)
    ld         $s2,120($sp)
    ld         $s8,128($sp)
    ld         $s3,136($sp)
    ld         $s4,152($sp)
    ld         $s0,88($sp)
    ld         $ra,144($sp)
    ld         $s1,96($sp)
    ld         $s5,104($sp)
    ld         $s7,160($sp)
    jr         $ra
    daddiu     $sp,$sp,176
.L0000415c:
    lw         $a5,104($s0)
    ld         $a4,72($sp)
    addiu      $a5,$a5,1
    sw         $a5,104($s0)
    lw         $a4,4920($a4)
    beqz       $a4, .L00004188
    nop
    b          .L00004128
    sw         $zero,76($s0)
.L00004180:
    b          .L0000412c
    li         $v0,22
.L00004188:
    jal        odsy_mm_obj_free_bs
    move       $a0,$s0
    b          .L0000412c
    move       $v0,$zero
.L00004198:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3376
    b          .L0000412c
    li         $v0,22
.L000041ac:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3424
    b          .L0000412c
    li         $v0,22
.L000041c0:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3344
    lh         $a2,0($gp)
    beqz       $a2, .L00003ec4
    li         $v0,1
    jal        conbuf_flush
    li         $a0,3
    ld         $a0,-30712($gp)
    jal        debug
    daddiu     $a0,$a0,640
    b          .L00003ec4
    li         $v0,1

glabel odsy_mm_obj_alloc_bs
    daddiu     $sp,$sp,-80
    sd         $s2,16($sp)
    lw         $s2,40($a0)
    sd         $s1,32($sp)
    lw         $s1,72($a0)
    multu      $s1,$s2
    sd         $s3,48($sp)
    sd         $ra,56($sp)
    sd         $s0,24($sp)
    ld         $s0,8($a0)
    sd         $s5,40($sp)
    mflo       $s1
    ld         $s0,8($s0)
    slti       $at,$s1,16384
    move       $s5,$a0
    sd         $s4,64($sp)
    move       $v0,$s1
    ld         $s0,8($s0)
    bne        $zero, $at, .L00004254
    xori       $s2,$at,0x1
    daddiu     $v0,$s1,16383
    dsrl       $v0,$v0,0xe
    dsll       $v0,$v0,0xe
.L00004254:
    ld         $s3,4880($s0)
    ld         $v1,4872($s0)
    daddu      $s3,$s3,$v0
    sltu       $v1,$v1,$s3
    beqz       $v1, .L000042ac
    move       $a1,$s1
    lw         $t8,4920($s0)
    daddiu     $a0,$s1,16383
    beqz       $t8, .L000042ac
    dsrl       $v0,$a0,0xe
    beqz       $s2, .L00004288
    sw         $zero,4920($s0)
    dsll       $a1,$v0,0xe
.L00004288:
    jal        odsy_mm_jettison_freerun_bs
    move       $a0,$s0
    move       $v0,$s1
    beqz       $s2, .L000042a8
    ld         $a0,4880($s0)
    daddiu     $v0,$s1,16383
    dsrl       $v0,$v0,0xe
    dsll       $v0,$v0,0xe
.L000042a8:
    daddu      $s3,$a0,$v0
.L000042ac:
    ld         $v1,4864($s0)
    sltu       $v1,$v1,$s3
    bnez       $v1, .L0000437c
    nop
.L000042bc:
    beqz       $s2, .L000043f4
    move       $a0,$s1
    jal        alenlist_create
    li         $a0,1
    li         $a1,12
    beqz       $v0, .L000043ac
    move       $s2,$v0
    daddiu     $s4,$s1,16383
    dsrl       $s4,$s4,0xe
    beqz       $s4, .L00004344
    dsll       $t9,$s4,0xe
    b          .L000042fc
    move       $s1,$zero
.L000042f0:
    daddiu     $s1,$s1,1
    sltu       $t8,$s1,$s4
    beqz       $t8, .L00004338
.L000042fc:
    li         $a0,1
    li         $a1,256
    jal        kvpalloc
    move       $a2,$zero
    beqz       $v0, .L00004338
    sd         $v0,0($sp)
    move       $a0,$s2
    move       $a1,$v0
    li         $a2,16384
    jal        alenlist_append
    li         $a3,1
    beqz       $v0, .L000042f0
    li         $a1,1
    jal        kvpfree
    ld         $a0,0($sp)
.L00004338:
    bne        $s4, $s1, .L000043b4
    move       $a0,$s2
    dsll       $t9,$s4,0xe
.L00004344:
    sd         $t9,88($s5)
    sd         $s2,80($s5)
.L0000434c:
    sd         $s3,4880($s0)
    move       $a1,$zero
.L00004354:
    ld         $s2,16($sp)
.L00004358:
    ld         $s3,48($sp)
    ld         $s4,64($sp)
    ld         $ra,56($sp)
    ld         $s0,24($sp)
    move       $v0,$a1
    ld         $s1,32($sp)
    ld         $s5,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0000437c:
    jal        odsy_mm_B_warn1
    move       $a0,$s0
    ld         $at,4896($s0)
    ld         $ra,4888($s0)
    daddu      $ra,$ra,$at
    sltu       $ra,$ra,$s3
    beqz       $ra, .L000042bc
    move       $a0,$s0
    jal        odsy_mm_B_warn2
    move       $a1,$s1
    b          .L00004354
    li         $a1,12
.L000043ac:
    b          .L00004358
    ld         $s2,16($sp)
.L000043b4:
    move       $a1,$zero
    jal        alenlist_cursor_init
    move       $a2,$zero
    move       $a0,$s2
    move       $a1,$zero
    li         $a2,16384
    daddiu     $a3,$sp,0
    daddiu     $a4,$sp,8
    jal        alenlist_get
    move       $a5,$zero
    beqz       $v0, .L0000440c
    nop
.L000043e4:
    jal        alenlist_destroy
    move       $a0,$s2
    b          .L00004354
    li         $a1,12
.L000043f4:
    jal        kmem_alloc
    li         $a1,1
    beqz       $v0, .L00004444
    sd         $v0,80($s5)
    b          .L0000434c
    sd         $s1,88($s5)
.L0000440c:
    li         $a1,1
.L00004410:
    jal        kvpfree
    ld         $a0,0($sp)
    move       $a0,$s2
    move       $a1,$zero
    li         $a2,16384
    daddiu     $a3,$sp,0
    daddiu     $a4,$sp,8
    jal        alenlist_get
    move       $a5,$zero
    beqz       $v0, .L00004410
    li         $a1,1
    b          .L000043e4
    nop
.L00004444:
    move       $a0,$s0
    jal        odsy_mm_B_warn2
    move       $a1,$s1
    b          .L00004354
    li         $a1,12

glabel odsy_mm_obj_free_bs
    daddiu     $sp,$sp,-48
    sd         $s1,16($sp)
    ld         $s1,8($a0)
    ld         $s1,8($s1)
    sd         $s0,24($sp)
    ld         $s1,8($s1)
    ld         $a2,88($a0)
    lw         $at,4920($s1)
    move       $a3,$zero
    ld         $a1,4880($s1)
    li         $a4,238
    move       $s0,$a0
    sd         $ra,32($sp)
    dsubu      $a1,$a1,$a2
    beqz       $at, .L00004584
    sd         $a1,4880($s1)
.L00004498:
    ld         $a1,88($s0)
    sltiu      $t8,$a1,16384
    bnez       $t8, .L000044f4
    nop
    ld         $a0,80($s0)
    beqz       $a0, .L000044f4
    nop
    move       $a1,$zero
    jal        alenlist_cursor_init
    move       $a2,$zero
    move       $a1,$zero
    li         $a2,16384
    daddiu     $a3,$sp,0
    daddiu     $a4,$sp,8
    ld         $a0,80($s0)
    jal        alenlist_get
    move       $a5,$zero
    beqz       $v0, .L0000459c
    nop
.L000044e4:
    jal        alenlist_destroy
    ld         $a0,80($s0)
    b          .L00004544
    sd         $zero,80($s0)
.L000044f4:
    beqz       $a1, .L0000453c
    nop
    ld         $ra,80($s0)
.L00004500:
    daddu      $ra,$a3,$ra
    sb         $a4,0($ra)
    ld         $a1,88($s0)
    addiu      $a3,$a3,1
    sltu       $t9,$a3,$a1
    beqz       $t9, .L0000453c
    nop
    ld         $v0,80($s0)
    daddu      $v0,$a3,$v0
    sb         $a4,0($v0)
    ld         $a1,88($s0)
    addiu      $a3,$a3,1
    sltu       $at,$a3,$a1
    bnezl      $at, .L00004500
    ld         $ra,80($s0)
.L0000453c:
    jal        kmem_free
    ld         $a0,80($s0)
.L00004544:
    sd         $zero,88($s0)
    sd         $zero,80($s0)
    sw         $zero,76($s0)
    ld         $a0,4864($s1)
    ld         $v1,4880($s1)
    sltu       $v1,$v1,$a0
    bnez       $v1, .L00004574
    ld         $ra,32($sp)
.L00004564:
    ld         $s0,24($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00004574:
    jal        odsy_mm_B_okay
    move       $a0,$s1
    b          .L00004564
    ld         $ra,32($sp)
.L00004584:
    ld         $a2,4872($s1)
    sltu       $a2,$a2,$a1
    bnez       $a2, .L00004498
    li         $a0,1
    b          .L00004498
    sw         $a0,4920($s1)
.L0000459c:
    li         $a1,1
.L000045a0:
    jal        kvpfree
    ld         $a0,0($sp)
    move       $a1,$zero
    li         $a2,16384
    daddiu     $a3,$sp,0
    daddiu     $a4,$sp,8
    ld         $a0,80($s0)
    jal        alenlist_get
    move       $a5,$zero
    beqz       $v0, .L000045a0
    li         $a1,1
    b          .L000044e4
    nop

glabel odsy_mm_reserve
    lwu        $t8,40($a0)
    daddiu     $sp,$sp,-64
    sd         $s1,32($sp)
    lw         $s1,72($a0)
    dmultu     $s1,$t8
    sd         $s2,24($sp)
    sd         $s0,16($sp)
    ld         $s0,8($a0)
    sd         $s0,8($sp)
    mflo       $a3
    ld         $s0,8($s0)
    sltiu      $at,$a3,16384
    move       $s2,$a0
    sd         $ra,48($sp)
    ld         $s0,8($s0)
    daddiu     $v0,$a3,16383
    bnez       $at, .L00004624
    dsrl       $v0,$v0,0xe
    b          .L00004628
    dsll       $s1,$v0,0xe
.L00004624:
    move       $s1,$a3
.L00004628:
    lw         $t9,4860($s0)
    li         $ra,1
    addiu      $t9,$t9,1
    beq        $ra, $t9, .L00004798
    sw         $t9,4860($s0)
    ld         $a6,4912($s0)
.L00004640:
    li         $a3,4
    ld         $ra,4904($s0)
    li         $a4,20
    daddu      $a6,$a6,$s1
    li         $a0,3
    sltu       $ra,$ra,$a6
    li         $a5,6
    li         $a7,12
    bnez       $ra, .L000046b4
    move       $s1,$a7
    lbu        $v0,16($s2)
    beq        $v0, $a0, .L000046dc
    sd         $a6,0($sp)
    beq        $v0, $a3, .L000046c8
    nop
    beq        $v0, $a4, .L000046c8
    nop
    beq        $v0, $a5, .L000047a8
    nop
.L0000468c:
    lw         $a7,4860($s0)
    addiu      $a7,$a7,-1
    sw         $a7,4860($s0)
.L00004698:
    ld         $ra,48($sp)
.L0000469c:
    ld         $s0,16($sp)
    ld         $s2,24($sp)
    move       $v0,$s1
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000046b4:
    lw         $t0,4860($s0)
    move       $s1,$a7
    addiu      $t0,$t0,-1
    b          .L00004698
    sw         $t0,4860($s0)
.L000046c8:
    jal        odsy_mm_reserve_texture
    move       $a0,$s2
    li         $s1,12
    b          .L000046ec
    movz       $s1,$zero,$v0
.L000046dc:
    jal        odsy_mm_reserve_pbuffer
    move       $a0,$s2
    li         $s1,12
    movz       $s1,$zero,$v0
.L000046ec:
    bnez       $s1, .L0000468c
    ld         $t1,0($sp)
.L000046f4:
    ld         $a0,8($sp)
    lw         $a1,64($s2)
    daddiu     $a0,$a0,160
    sd         $a0,40($sp)
    ori        $a1,$a1,0x4
    sw         $a1,64($s2)
    jal        OdsyInitCSetCursor
    sd         $t1,4912($s0)
    ld         $s2,40($sp)
    jal        OdsyNextCSetElem
    move       $a0,$s2
    beqz       $v0, .L00004790
    move       $s0,$v0
.L00004728:
    jal        OdsyInitCSetCursor
    move       $a0,$s0
    jal        OdsyNextCSetElem
    move       $a0,$s0
    beqz       $v0, .L00004780
    move       $a3,$v0
.L00004740:
    sync
    ld         $a6,40($a3)
    li         $a5,1
    sh         $a5,2($a6)
    sync
    ld         $a4,40($a3)
    sh         $zero,0($a4)
    sync
    ld         $a2,40($a3)
    sh         $zero,2($a2)
    sync
    move       $a0,$s0
    jal        OdsyNextCSetElem
    sw         $zero,64($a3)
    bnez       $v0, .L00004740
    move       $a3,$v0
.L00004780:
    jal        OdsyNextCSetElem
    move       $a0,$s2
    bnez       $v0, .L00004728
    move       $s0,$v0
.L00004790:
    b          .L0000469c
    ld         $ra,48($sp)
.L00004798:
    jal        mm_init_freespace
    move       $a0,$s0
    b          .L00004640
    ld         $a6,4912($s0)
.L000047a8:
    jal        odsy_mm_reserve_scratch
    move       $a0,$s2
    li         $s1,12
    movz       $s1,$zero,$v0
    bnez       $s1, .L0000468c
    nop
    b          .L000046f4
    ld         $t1,0($sp)

glabel odsy_mm_release
    lw         $t0,40($a0)
    lw         $a7,72($a0)
    multu      $a7,$t0
    lbu        $a2,16($a0)
    daddiu     $sp,$sp,-32
    ld         $t0,8($a0)
    mflo       $a6
    sd         $ra,24($sp)
    dsll32     $a6,$a6,0x0
    li         $a5,6
    ld         $t0,8($t0)
    dsrl32     $a6,$a6,0x0
    li         $a4,4
    sd         $s0,16($sp)
    sltiu      $at,$a6,16384
    li         $a3,3
    move       $s0,$a0
    ld         $t0,8($t0)
    sd         $t0,0($sp)
    daddiu     $a7,$a6,16383
    bnez       $at, .L0000482c
    dsrl       $a7,$a7,0xe
    dsll       $t1,$a7,0xe
    b          .L00004830
    sd         $t1,8($sp)
.L0000482c:
    sd         $a6,8($sp)
.L00004830:
    beq        $a2, $a3, .L000048b4
    nop
    beq        $a2, $a4, .L000048a4
    li         $t3,20
    beq        $a2, $t3, .L000048a4
    nop
    beq        $a2, $a5, .L0000485c
.L0000484c:
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000485c:
    jal        odsy_mm_release_scratch
    move       $a0,$s0
    lw         $v1,64($s0)
.L00004868:
    li         $a0,-5
    ld         $v0,8($s0)
    and        $v1,$v1,$a0
    sw         $v1,64($s0)
    ld         $v0,8($v0)
    ld         $v0,8($v0)
    ld         $ra,8($sp)
    lw         $at,4860($v0)
    ld         $t9,0($sp)
    addiu      $at,$at,-1
    sw         $at,4860($v0)
    ld         $t8,4912($t9)
    dsubu      $t8,$t8,$ra
    b          .L0000484c
    sd         $t8,4912($t9)
.L000048a4:
    jal        odsy_mm_release_texture
    move       $a0,$s0
    b          .L00004868
    lw         $v1,64($s0)
.L000048b4:
    jal        odsy_mm_release_pbuffer
    move       $a0,$s0
    b          .L00004868
    lw         $v1,64($s0)

glabel odsy_mm_reserve_texture
    daddiu     $sp,$sp,-32
    sd         $s1,8($sp)
    ld         $s1,8($a0)
    sd         $s0,0($sp)
    ld         $s0,8($s1)
    ld         $a4,8($s0)
    lw         $at,4924($a4)
    beqz       $at, .L00004900
    sd         $ra,16($sp)
    li         $v0,1
.L000048ec:
    ld         $ra,16($sp)
.L000048f0:
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00004900:
    lw         $a5,60($a0)
    lbu        $v0,16($a0)
    lw         $a6,216($s1)
    li         $a7,4
    beq        $v0, $a7, .L000049ec
    addu       $a5,$a5,$a6
    li         $t0,20
    bne        $v0, $t0, .L00004aac
    ld         $a1,-30712($gp)
    lw         $a6,4824($a4)
    lw         $a0,4828($a4)
    slt        $t1,$a6,$a0
    beqz       $t1, .L0000493c
    move       $t0,$a6
    move       $t0,$a0
.L0000493c:
    lw         $v0,208($s0)
    lw         $a1,4852($a4)
    sltu       $t2,$v0,$a1
    bnez       $t2, .L00004954
    nop
    move       $a1,$v0
.L00004954:
    lw         $v0,4840($a4)
    lw         $a6,168($s0)
    sltu       $t3,$v0,$a6
    bnez       $t3, .L0000496c
    nop
    move       $a6,$v0
.L0000496c:
    lw         $a0,172($s0)
    sltu       $t8,$a5,$a0
    beqz       $t8, .L00004980
    move       $a7,$a5
    move       $a7,$a0
.L00004980:
    lw         $t9,4856($a4)
    addu       $at,$a1,$a6
    addu       $ra,$t0,$a7
    addu       $ra,$ra,$at
    sltu       $t9,$t9,$ra
    bnez       $t9, .L000049e4
    li         $v0,1
    sltu       $v0,$a0,$a5
    beqz       $v0, .L000049c4
    move       $a0,$s0
    sw         $a5,172($s0)
    lw         $v1,4836($a4)
    slt        $v1,$v1,$a5
    beqz       $v1, .L000049c4
    move       $a0,$s0
    sw         $a5,4836($a4)
    move       $a0,$s0
.L000049c4:
    sw         $a5,216($s1)
    jal        odsy_mm_sg_remove_detail_texture_group_from_list
    move       $a1,$s1
    move       $a0,$s0
    jal        odsy_mm_sg_insert_detail_texture_group_into_list
    move       $a1,$s1
.L000049dc:
    b          .L000048ec
    move       $v0,$zero
.L000049e4:
    b          .L000048f0
    ld         $ra,16($sp)
.L000049ec:
    lw         $a0,4828($a4)
    lw         $a6,4824($a4)
    lw         $v0,208($s0)
    slt        $a1,$a6,$a0
    move       $t0,$a6
    lw         $a6,168($s0)
    beqz       $a1, .L00004a10
    lw         $a1,4852($a4)
    move       $t0,$a0
.L00004a10:
    sltu       $a2,$v0,$a1
    lw         $a7,4844($a4)
    sltu       $a3,$a5,$a6
    sltu       $t2,$a6,$a5
    move       $t1,$a5
    bnez       $a2, .L00004a30
    lw         $a0,172($s0)
    move       $a1,$v0
.L00004a30:
    beqz       $a3, .L00004a3c
    lw         $v0,4856($a4)
    move       $t1,$a6
.L00004a3c:
    sltu       $t3,$a7,$a0
    beqz       $t3, .L00004a4c
    addu       $t9,$a1,$t1
    move       $a7,$a0
.L00004a4c:
    addu       $t8,$t0,$a7
    addu       $t8,$t8,$t9
    sltu       $t8,$v0,$t8
    bnez       $t8, .L00004aa4
    nop
    beqz       $t2, .L00004a84
    move       $a0,$s0
    sw         $a5,168($s0)
    lw         $ra,4832($a4)
    slt        $ra,$ra,$a5
    beqz       $ra, .L00004a84
    move       $a0,$s0
    sw         $a5,4832($a4)
    move       $a0,$s0
.L00004a84:
    sw         $a5,216($s1)
    jal        odsy_mm_sg_remove_image_texture_group_from_list
    move       $a1,$s1
    move       $a0,$s0
    jal        odsy_mm_sg_insert_image_texture_group_into_list
    move       $a1,$s1
    b          .L000049dc
    nop
.L00004aa4:
    b          .L000048ec
    li         $v0,1
.L00004aac:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3472
    b          .L000048ec
    li         $v0,1

glabel odsy_mm_release_texture
    daddiu     $sp,$sp,-48
    sd         $s0,8($sp)
    lw         $v1,60($a0)
    sd         $s2,24($sp)
    ld         $s2,8($a0)
    sd         $s1,16($sp)
    ld         $s1,8($s2)
    lw         $v0,216($s2)
    ld         $s0,8($s1)
    subu       $v0,$v0,$v1
    sw         $v0,216($s2)
    lbu        $a1,16($a0)
    li         $at,4
    li         $a3,20
    beq        $a1, $at, .L00004b90
    sd         $ra,32($sp)
    beq        $a1, $a3, .L00004b1c
.L00004b04:
    ld         $ra,32($sp)
.L00004b08:
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    ld         $s2,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00004b1c:
    move       $a1,$s2
    lw         $a0,172($s1)
    sd         $a0,0($sp)
    jal        odsy_mm_sg_remove_detail_texture_group_from_list
    move       $a0,$s1
    lw         $a1,216($s2)
    beqz       $a1, .L00004b44
    move       $a0,$s1
    jal        odsy_mm_sg_insert_detail_texture_group_into_list
    move       $a1,$s2
.L00004b44:
    ld         $a1,184($s1)
    ld         $a3,0($sp)
    beqz       $a1, .L00004b58
    move       $a0,$zero
    lw         $a0,216($a1)
.L00004b58:
    sw         $a0,172($s1)
    lw         $a2,4836($s0)
    bne        $a2, $a3, .L00004b08
    ld         $ra,32($sp)
    daddiu     $s1,$s0,1496
    sw         $zero,4836($s0)
    jal        OdsyInitCSetCursor
    move       $a0,$s1
    jal        OdsyNextCSetElem
    move       $a0,$s1
    beqz       $v0, .L00004b04
    move       $a4,$v0
    b          .L00004c28
    ld         $a1,184($a4)
.L00004b90:
    move       $a0,$s1
    jal        odsy_mm_sg_remove_image_texture_group_from_list
    move       $a1,$s2
    lw         $a4,216($s2)
    beqz       $a4, .L00004bb0
    move       $a0,$s1
    jal        odsy_mm_sg_insert_image_texture_group_into_list
    move       $a1,$s2
.L00004bb0:
    ld         $a1,176($s1)
    lw         $a5,168($s1)
    move       $a0,$zero
    beqz       $a1, .L00004bc8
    sd         $a5,0($sp)
    lw         $a0,216($a1)
.L00004bc8:
    ld         $a7,0($sp)
    sw         $a0,168($s1)
    lw         $a6,4832($s0)
    bne        $a6, $a7, .L00004b08
    ld         $ra,32($sp)
    daddiu     $s1,$s0,1496
    sw         $zero,4832($s0)
    jal        OdsyInitCSetCursor
    move       $a0,$s1
    jal        OdsyNextCSetElem
    move       $a0,$s1
    beqz       $v0, .L00004b04
    move       $a4,$v0
    b          .L00004c6c
    ld         $a1,176($a4)
.L00004c04:
    slt        $t0,$a3,$a0
    beqz       $t0, .L00004c14
    nop
    sw         $a0,4836($s0)
.L00004c14:
    jal        OdsyNextCSetElem
    move       $a0,$s1
    beqz       $v0, .L00004c3c
    move       $a4,$v0
    ld         $a1,184($a4)
.L00004c28:
    move       $a0,$zero
    beqz       $a1, .L00004c04
    lw         $a3,4836($s0)
    b          .L00004c04
    lw         $a0,216($a1)
.L00004c3c:
    b          .L00004b08
    ld         $ra,32($sp)
.L00004c44:
    lw         $a0,216($a1)
.L00004c48:
    slt        $t1,$a3,$a0
    beqz       $t1, .L00004c58
    nop
    sw         $a0,4832($s0)
.L00004c58:
    jal        OdsyNextCSetElem
    move       $a0,$s1
    beqz       $v0, .L00004c80
    move       $a4,$v0
    ld         $a1,176($a4)
.L00004c6c:
    move       $a0,$zero
    bnez       $a1, .L00004c44
    lw         $a3,4832($s0)
    b          .L00004c48
    nop
.L00004c80:
    b          .L00004b08
    ld         $ra,32($sp)

glabel odsy_mm_sg_insert_image_texture_group_into_list
    ld         $a3,176($a0)
    beqz       $a3, .L00004ddc
    nop
    ld         $at,232($a3)
    bnez       $at, .L00004cc0
    lw         $a5,216($a1)
    lw         $v0,216($a3)
    slt        $v0,$a5,$v0
    beqz       $v0, .L00004dc4
    nop
    sd         $a1,232($a3)
    sd         $a3,240($a1)
    b          .L00004dd4
    sd         $zero,232($a1)
.L00004cc0:
    ld         $a4,192($a0)
    lw         $a7,216($a4)
    slt        $a6,$a5,$a7
    beqz       $a6, .L00004d34
    move       $a3,$a4
    beqz       $a4, .L00004d24
    nop
    beqz       $a6, .L00004d24
    nop
.L00004ce4:
    move       $a4,$a3
    ld         $a3,232($a3)
    beqz       $a3, .L00004d24
    nop
    lw         $v1,216($a3)
    slt        $v1,$a5,$v1
    beqz       $v1, .L00004d24
    nop
    move       $a4,$a3
    ld         $a3,232($a3)
    beqz       $a3, .L00004d24
    nop
    lw         $a2,216($a3)
    slt        $a2,$a5,$a2
    bnez       $a2, .L00004ce4
    nop
.L00004d24:
    bne        $a3, $a4, .L00004d90
    nop
    b          .L00004d90
    ld         $a4,240($a3)
.L00004d34:
    beqz       $a4, .L00004d84
    nop
    bnez       $a6, .L00004d84
    nop
.L00004d44:
    move       $a3,$a4
    ld         $a4,240($a4)
    beqz       $a4, .L00004d84
    nop
    lw         $a6,216($a4)
    slt        $a6,$a5,$a6
    bnez       $a6, .L00004d84
    nop
    move       $a3,$a4
    ld         $a4,240($a4)
    beqz       $a4, .L00004d84
    nop
    lw         $a7,216($a4)
    slt        $a7,$a5,$a7
    beqz       $a7, .L00004d44
    nop
.L00004d84:
    bne        $a3, $a4, .L00004d90
    nop
    ld         $a3,232($a4)
.L00004d90:
    sd         $a3,232($a1)
    beqz       $a4, .L00004dac
    sd         $a4,240($a1)
    bnez       $a3, .L00004db4
    sd         $a1,232($a4)
    jr         $ra
    sd         $a1,192($a0)
.L00004dac:
    beqz       $a3, .L00004db8
    sd         $a1,176($a0)
.L00004db4:
    sd         $a1,240($a3)
.L00004db8:
    sd         $a1,192($a0)
    jr         $ra
    nop
.L00004dc4:
    sd         $zero,240($a1)
    sd         $a3,232($a1)
    sd         $a1,240($a3)
    sd         $a1,176($a0)
.L00004dd4:
    jr         $ra
    sd         $a1,192($a0)
.L00004ddc:
    sd         $a1,176($a0)
    sd         $zero,240($a1)
    sd         $zero,232($a1)
    jr         $ra
    sd         $a1,192($a0)

glabel odsy_mm_sg_insert_detail_texture_group_into_list
    ld         $a3,184($a0)
    beqz       $a3, .L00004f44
    nop
    ld         $at,232($a3)
    bnez       $at, .L00004e28
    lw         $a5,216($a1)
    lw         $v0,216($a3)
    slt        $v0,$a5,$v0
    beqz       $v0, .L00004f2c
    nop
    sd         $a1,232($a3)
    sd         $a3,240($a1)
    b          .L00004f3c
    sd         $zero,232($a1)
.L00004e28:
    ld         $a4,200($a0)
    lw         $a7,216($a4)
    slt        $a6,$a5,$a7
    beqz       $a6, .L00004e9c
    move       $a3,$a4
    beqz       $a4, .L00004e8c
    nop
    beqz       $a6, .L00004e8c
    nop
.L00004e4c:
    move       $a4,$a3
    ld         $a3,232($a3)
    beqz       $a3, .L00004e8c
    nop
    lw         $v1,216($a3)
    slt        $v1,$a5,$v1
    beqz       $v1, .L00004e8c
    nop
    move       $a4,$a3
    ld         $a3,232($a3)
    beqz       $a3, .L00004e8c
    nop
    lw         $a2,216($a3)
    slt        $a2,$a5,$a2
    bnez       $a2, .L00004e4c
    nop
.L00004e8c:
    bne        $a3, $a4, .L00004ef8
    nop
    b          .L00004ef8
    ld         $a4,240($a3)
.L00004e9c:
    beqz       $a4, .L00004eec
    nop
    bnez       $a6, .L00004eec
    nop
.L00004eac:
    move       $a3,$a4
    ld         $a4,240($a4)
    beqz       $a4, .L00004eec
    nop
    lw         $a6,216($a4)
    slt        $a6,$a5,$a6
    bnez       $a6, .L00004eec
    nop
    move       $a3,$a4
    ld         $a4,240($a4)
    beqz       $a4, .L00004eec
    nop
    lw         $a7,216($a4)
    slt        $a7,$a5,$a7
    beqz       $a7, .L00004eac
    nop
.L00004eec:
    bne        $a3, $a4, .L00004ef8
    nop
    ld         $a3,232($a4)
.L00004ef8:
    sd         $a3,232($a1)
    beqz       $a4, .L00004f14
    sd         $a4,240($a1)
    bnez       $a3, .L00004f1c
    sd         $a1,232($a4)
    jr         $ra
    sd         $a1,200($a0)
.L00004f14:
    beqz       $a3, .L00004f20
    sd         $a1,184($a0)
.L00004f1c:
    sd         $a1,240($a3)
.L00004f20:
    sd         $a1,200($a0)
    jr         $ra
    nop
.L00004f2c:
    sd         $zero,240($a1)
    sd         $a3,232($a1)
    sd         $a1,240($a3)
    sd         $a1,184($a0)
.L00004f3c:
    jr         $ra
    sd         $a1,200($a0)
.L00004f44:
    sd         $a1,184($a0)
    sd         $zero,240($a1)
    sd         $zero,232($a1)
    jr         $ra
    sd         $a1,200($a0)

glabel odsy_mm_sg_remove_image_texture_group_from_list
    ld         $at,192($a0)
    bne        $at, $a1, .L00004f6c
    nop
    ld         $v0,240($a1)
    sd         $v0,192($a0)
.L00004f6c:
    ld         $a4,232($a1)
    beqz       $a4, .L00004f94
    ld         $a3,240($a1)
    sd         $a3,240($a4)
    ld         $a3,240($a1)
    beqz       $a3, .L00004fb0
    ld         $a4,232($a1)
.L00004f88:
    sd         $a4,232($a3)
.L00004f8c:
    jr         $ra
    nop
.L00004f94:
    bnez       $a3, .L00004f88
    nop
    ld         $v1,176($a0)
    bne        $v1, $a1, .L00004f8c
    nop
    jr         $ra
    sd         $zero,176($a0)
.L00004fb0:
    sd         $a4,192($a0)
    jr         $ra
    sd         $a4,176($a0)

glabel odsy_mm_sg_remove_detail_texture_group_from_list
    ld         $at,200($a0)
    bne        $at, $a1, .L00004fd0
    nop
    ld         $v0,240($a1)
    sd         $v0,200($a0)
.L00004fd0:
    ld         $a4,232($a1)
    beqz       $a4, .L00004ff8
    ld         $a3,240($a1)
    sd         $a3,240($a4)
    ld         $a3,240($a1)
    beqz       $a3, .L00005014
    ld         $a4,232($a1)
.L00004fec:
    sd         $a4,232($a3)
.L00004ff0:
    jr         $ra
    nop
.L00004ff8:
    bnez       $a3, .L00004fec
    nop
    ld         $v1,184($a0)
    bne        $v1, $a1, .L00004ff0
    nop
    jr         $ra
    sd         $zero,184($a0)
.L00005014:
    sd         $a4,200($a0)
    jr         $ra
    sd         $a4,184($a0)

glabel odsy_mm_reserve_pbuffer
    daddiu     $sp,$sp,-32
    sd         $s1,16($sp)
    ld         $s1,8($a0)
    sd         $s0,8($sp)
    ld         $s0,8($s1)
    lw         $a4,60($a0)
    ld         $s0,8($s0)
    lw         $a5,216($s1)
    ld         $at,4816($s0)
    sw         $zero,4($sp)
    li         $a1,2
    sw         $zero,0($sp)
    addu       $a4,$a4,$a5
    sd         $ra,24($sp)
    beqz       $at, .L000050c0
    move       $a5,$at
    daddiu     $a6,$sp,0
    move       $v0,$zero
    dsll       $t9,$v0,0x2
    addiu      $v0,$v0,1
    daddu      $t9,$a6,$t9
.L00005074:
    ld         $a0,232($a5)
    lw         $t8,216($a5)
    dsll       $a2,$v0,0x2
    daddu      $a2,$a6,$a2
    beqz       $a0, .L000050c0
    sw         $t8,0($t9)
    slti       $ra,$v0,2
    beqz       $ra, .L000050c0
    addiu      $v0,$v0,1
    ld         $at,232($a0)
    lw         $v1,216($a0)
    sw         $v1,0($a2)
    beqz       $at, .L000050c0
    move       $a5,$at
    slti       $a3,$v0,2
    dsll       $t9,$v0,0x2
    addiu      $v0,$v0,1
    bnez       $a3, .L00005074
    daddu      $t9,$a6,$t9
.L000050c0:
    daddiu     $a6,$sp,0
    move       $v0,$zero
    dsll       $a5,$v0,0x2
    daddu      $a5,$a6,$a5
.L000050d0:
    lw         $a7,0($a5)
    slt        $a7,$a7,$a4
    bnez       $a7, .L000051a4
    nop
    addiu      $v0,$v0,1
    slti       $a7,$v0,2
    dsll       $a5,$v0,0x2
    bnez       $a7, .L000050d0
    daddu      $a5,$a6,$a5
.L000050f4:
    beq        $v0, $a1, .L00005174
    move       $a0,$s0
    lw         $a6,0($sp)
    lw         $t0,4852($s0)
    lw         $a5,4848($s0)
    lw         $a1,4840($s0)
    lw         $t1,4832($s0)
    slt        $t2,$a5,$t0
    lw         $a0,4844($s0)
    lw         $v0,4836($s0)
    beqz       $t2, .L00005128
    slt        $a7,$t1,$a1
    move       $a5,$t0
.L00005128:
    bnez       $a7, .L00005134
    slt        $t0,$v0,$a0
    move       $a1,$t1
.L00005134:
    bnez       $t0, .L00005140
    nop
    move       $a0,$v0
.L00005140:
    addu       $t8,$a5,$a1
    lw         $a7,4($sp)
    addu       $a7,$a6,$a7
    lw         $t3,4856($s0)
    addu       $t9,$a0,$a7
    addu       $t8,$t8,$t9
    slt        $t3,$t3,$t8
    beqz       $t3, .L0000516c
    li         $v0,1
    b          .L00005194
    ld         $ra,24($sp)
.L0000516c:
    sw         $a7,4824($s0)
    move       $a0,$s0
.L00005174:
    sw         $a4,216($s1)
    jal        odsy_mm_remove_pbuffer_group_from_list
    move       $a1,$s1
    move       $a0,$s0
    jal        odsy_mm_insert_pbuffer_group_into_list
    move       $a1,$s1
    move       $v0,$zero
    ld         $ra,24($sp)
.L00005194:
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000051a4:
    b          .L000050f4
    sw         $a4,0($a5)

glabel odsy_mm_release_pbuffer
    lw         $v0,60($a0)
    daddiu     $sp,$sp,-32
    sd         $s1,0($sp)
    ld         $s1,8($a0)
    sd         $s0,16($sp)
    ld         $s0,8($s1)
    lw         $at,216($s1)
    ld         $s0,8($s0)
    sd         $ra,8($sp)
    move       $a1,$s1
    subu       $at,$at,$v0
    sw         $at,216($s1)
    jal        odsy_mm_remove_pbuffer_group_from_list
    move       $a0,$s0
    lw         $t8,216($s1)
    beqz       $t8, .L000051f8
    move       $a0,$s0
    jal        odsy_mm_insert_pbuffer_group_into_list
    move       $a1,$s1
.L000051f8:
    ld         $t9,4816($s0)
    move       $a1,$zero
    move       $a3,$zero
    ld         $s1,0($sp)
    beqz       $t9, .L00005248
    move       $a4,$t9
    move       $a1,$zero
.L00005214:
    addiu      $a3,$a3,1
    lw         $at,216($a4)
    ld         $ra,232($a4)
    slti       $a5,$a3,2
    addu       $a1,$at,$a1
    beqz       $ra, .L00005234
    move       $a4,$ra
    bnez       $a5, .L00005214
.L00005234:
    ld         $ra,8($sp)
.L00005238:
    sw         $a1,4824($s0)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00005248:
    b          .L00005238
    ld         $ra,8($sp)

glabel odsy_mm_remove_pbuffer_group_from_list
    ld         $a4,232($a1)
    beqz       $a4, .L00005278
    ld         $a3,240($a1)
    sd         $a3,240($a4)
    ld         $a3,240($a1)
    beqz       $a3, .L00005294
    ld         $a4,232($a1)
.L0000526c:
    sd         $a4,232($a3)
.L00005270:
    jr         $ra
    nop
.L00005278:
    bnez       $a3, .L0000526c
    nop
    ld         $at,4816($a0)
    bne        $at, $a1, .L00005270
    nop
    jr         $ra
    sd         $zero,4816($a0)
.L00005294:
    jr         $ra
    sd         $a4,4816($a0)

glabel odsy_mm_insert_pbuffer_group_into_list
    ld         $a3,4816($a0)
    beqz       $a3, .L00005340
    move       $a4,$a3
    lw         $a6,216($a3)
    ld         $a7,232($a3)
    lw         $a5,216($a1)
    bnez       $a7, .L000052d4
    slt        $a6,$a5,$a6
    beqz       $a6, .L00005350
    nop
    sd         $a1,232($a3)
    sd         $a3,240($a1)
    jr         $ra
    sd         $zero,232($a1)
.L000052d4:
    beqz       $a6, .L0000531c
    nop
.L000052dc:
    move       $a4,$a3
    ld         $a3,232($a3)
    beqz       $a3, .L0000531c
    nop
    lw         $t0,216($a3)
    slt        $t0,$a5,$t0
    beqz       $t0, .L0000531c
    nop
    move       $a4,$a3
    ld         $a3,232($a3)
    beqz       $a3, .L0000531c
    nop
    lw         $t1,216($a3)
    slt        $t1,$a5,$t1
    bnez       $t1, .L000052dc
    nop
.L0000531c:
    beq        $a3, $a4, .L00005364
    nop
    sd         $a3,232($a1)
    sd         $a4,240($a1)
    beqz       $a3, .L00005338
    sd         $a1,232($a4)
    sd         $a1,240($a3)
.L00005338:
    jr         $ra
    nop
.L00005340:
    sd         $a1,4816($a0)
    sd         $zero,240($a1)
    jr         $ra
    sd         $zero,232($a1)
.L00005350:
    sd         $zero,240($a1)
    sd         $a3,232($a1)
    sd         $a1,240($a3)
    jr         $ra
    sd         $a1,4816($a0)
.L00005364:
    sd         $zero,240($a1)
    sd         $a3,232($a1)
    sd         $a1,240($a3)
    jr         $ra
    sd         $a1,4816($a0)

glabel odsy_mm_reserve_scratch
    ld         $t0,8($a0)
    ld         $a4,8($t0)
    ld         $t0,224($t0)
    lw         $a3,60($a0)
    lw         $a5,584($t0)
    lw         $at,208($a4)
    addu       $a3,$a3,$a5
    sltu       $at,$at,$a3
    daddiu     $sp,$sp,-16
    beqz       $at, .L0000542c
    ld         $a5,8($a4)
    lw         $t3,4828($a5)
    lw         $t8,4840($a5)
    lw         $t2,168($a4)
    lw         $t9,172($a4)
    lw         $at,4848($a5)
    lw         $a2,4844($a5)
    lw         $t1,4824($a5)
    slt        $at,$at,$a3
    sd         $a2,0($sp)
    sltu       $a2,$t9,$a2
    sltu       $v0,$t2,$t8
    lw         $a6,4856($a5)
    beqz       $at, .L0000543c
    slt        $a7,$t1,$t3
    beqz       $a7, .L000053fc
    nop
    bnez       $v0, .L00005404
    nop
.L000053ec:
    beqz       $a2, .L0000540c
    move       $t8,$t2
.L000053f4:
    b          .L0000540c
    ld         $t9,0($sp)
.L000053fc:
    beqz       $v0, .L000053ec
    move       $t3,$t1
.L00005404:
    bnez       $a2, .L000053f4
    nop
.L0000540c:
    addu       $v1,$a3,$t8
    addu       $v0,$t3,$t9
    addu       $v0,$v0,$v1
    sltu       $v0,$a6,$v0
    bnez       $v0, .L00005434
    li         $v0,1
    sw         $a3,4848($a5)
.L00005428:
    sw         $a3,208($a4)
.L0000542c:
    sw         $a3,584($t0)
    move       $v0,$zero
.L00005434:
    jr         $ra
    daddiu     $sp,$sp,16
.L0000543c:
    beqz       $a7, .L0000545c
    nop
    bnez       $v0, .L00005464
    nop
.L0000544c:
    beqz       $a2, .L0000546c
    move       $t8,$t2
.L00005454:
    b          .L0000546c
    ld         $t9,0($sp)
.L0000545c:
    beqz       $v0, .L0000544c
    move       $t3,$t1
.L00005464:
    bnez       $a2, .L00005454
    nop
.L0000546c:
    addu       $a1,$a3,$t8
    addu       $a0,$t3,$t9
    addu       $a0,$a0,$a1
    sltu       $a0,$a6,$a0
    beqz       $a0, .L00005428
    li         $v0,1
    b          .L00005434
    nop

glabel odsy_mm_release_scratch
    daddiu     $sp,$sp,-48
    sd         $s2,24($sp)
    sd         $s3,8($sp)
    sd         $s1,16($sp)
    ld         $s1,8($a0)
    lw         $v1,60($a0)
    ld         $a1,224($s1)
    ld         $s1,8($s1)
    lw         $at,584($a1)
    ld         $s3,8($s1)
    subu       $v1,$at,$v1
    sw         $v1,584($a1)
    lw         $v0,208($s1)
    sd         $s0,32($sp)
    sd         $ra,40($sp)
    bne        $at, $v0, .L0000556c
    sd         $at,0($sp)
    daddiu     $s2,$s1,24
    jal        OdsyInitCSetCursor
    move       $a0,$s2
    jal        OdsyNextCSetElem
    move       $a0,$s2
    beqz       $v0, .L00005588
    move       $a3,$v0
    move       $s0,$zero
.L000054f0:
    lw         $a2,584($a3)
    slt        $t8,$s0,$a2
    beqz       $t8, .L00005504
    nop
    move       $s0,$a2
.L00005504:
    jal        OdsyNextCSetElem
    move       $a0,$s2
    bnez       $v0, .L000054f0
    move       $a3,$v0
.L00005514:
    ld         $ra,0($sp)
    sw         $s0,208($s1)
    lw         $t9,4848($s3)
    bne        $t9, $ra, .L0000556c
    daddiu     $s2,$s3,1496
    jal        OdsyInitCSetCursor
    move       $a0,$s2
    jal        OdsyNextCSetElem
    move       $a0,$s2
    beqz       $v0, .L00005594
    move       $s1,$v0
    move       $s0,$zero
.L00005544:
    lw         $a0,208($s1)
    sltu       $at,$s0,$a0
    beqz       $at, .L00005558
    nop
    move       $s0,$a0
.L00005558:
    jal        OdsyNextCSetElem
    move       $a0,$s2
    bnez       $v0, .L00005544
    move       $s1,$v0
.L00005568:
    sw         $s0,4848($s3)
.L0000556c:
    ld         $s3,8($sp)
    ld         $ra,40($sp)
    ld         $s0,32($sp)
    ld         $s1,16($sp)
    ld         $s2,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00005588:
    move       $s0,$zero
    b          .L00005514
    nop
.L00005594:
    move       $s0,$zero
    b          .L00005568
    nop

glabel odsy_mm_commit
    daddiu     $sp,$sp,-80
    sd         $s0,56($sp)
    sd         $s2,32($sp)
    ld         $s2,8($a0)
    lw         $at,64($a0)
    ld         $v0,8($s2)
    sd         $s3,24($sp)
    move       $s3,$a0
    beqz       $at, .L000055d0
    ld         $v0,8($v0)
    b          .L000056b8
    move       $v0,$zero
.L000055d0:
    sd         $v0,16($sp)
    sd         $s1,48($sp)
    move       $s0,$zero
    b          .L000055f0
    sd         $ra,64($sp)
.L000055e4:
    addiu      $s0,$s0,1
    slti       $v1,$s0,16
    beqz       $v1, .L0000567c
.L000055f0:
    dsll       $s1,$s0,0x3
.L000055f4:
    daddu      $s1,$s2,$s1
    ld         $s1,16($s1)
    beqz       $s1, .L000055e4
    nop
    lw         $v0,64($s1)
    andi       $v1,$v0,0x1
    bnez       $v1, .L000055e4
    andi       $v0,$v0,0x2
    beqz       $v0, .L000055e4
    move       $a1,$s3
    ld         $a0,16($sp)
    jal        mm_get_extent
    move       $a2,$s1
    beqz       $v0, .L00005788
    nop
    lw         $a0,76($s1)
    lw         $a1,64($s1)
    sd         $v0,8($sp)
    ori        $a1,$a1,0x1
    beqz       $a0, .L0000566c
    sw         $a1,64($s1)
    lw         $a2,32($v0)
    move       $a0,$s1
    daddiu     $a1,$sp,0
    sltiu      $a2,$a2,1
    sw         $a2,0($sp)
    jal        odsy_mm_obj_xfr_bs
    move       $a2,$zero
    ld         $a3,8($sp)
    sw         $zero,32($a3)
.L0000566c:
    addiu      $s0,$s0,1
    slti       $a4,$s0,16
    bnez       $a4, .L000055f4
    dsll       $s1,$s0,0x3
.L0000567c:
    lw         $s0,0($s3)
    lw         $v0,4($s3)
    slt        $a5,$v0,$s0
    bnez       $a5, .L00005698
    nop
    b          .L00005790
    dsll       $s1,$s0,0x3
.L00005698:
    ld         $a7,40($s3)
    li         $a6,1
    sh         $a6,0($a7)
    move       $v0,$zero
    sw         $a6,64($s3)
.L000056ac:
    ld         $ra,64($sp)
    ld         $s0,56($sp)
    ld         $s1,48($sp)
.L000056b8:
    ld         $s3,24($sp)
    ld         $s2,32($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000056c8:
    lw         $t2,64($s1)
    lw         $t0,0($v0)
    ori        $t2,$t2,0x1
    andi       $t1,$t2,0x8
    sw         $t2,64($s1)
    sll        $t0,$t0,0x5
    beqz       $t1, .L00005714
    sw         $t0,56($s1)
    lw         $t8,32($v0)
    sltiu      $t8,$t8,1
    sw         $t8,4($sp)
    lw         $t3,76($s1)
    beqz       $t3, .L00005714
    sd         $v0,40($sp)
    move       $a0,$s1
    daddiu     $a1,$sp,4
    jal        odsy_mm_obj_xfr_bs
    move       $a2,$zero
    ld         $v0,40($sp)
.L00005714:
    sw         $zero,32($v0)
.L00005718:
    ld         $at,8($s1)
    lh         $v0,0($s1)
    ld         $at,152($at)
    dsll       $v0,$v0,0x2
    lw         $ra,56($s1)
    daddu      $at,$at,$v0
    sw         $ra,0($at)
    lw         $t9,64($s1)
    ori        $t9,$t9,0x8
    sw         $t9,64($s1)
    lw         $v0,4($s3)
.L00005744:
    addiu      $s0,$s0,1
    slt        $v1,$v0,$s0
    dsll       $s1,$s0,0x3
    bnez       $v1, .L00005698
    daddu      $s1,$s2,$s1
    ld         $s1,16($s1)
.L0000575c:
    beqz       $s1, .L00005744
    nop
    lw         $t8,64($s1)
    andi       $t8,$t8,0x1
    bnez       $t8, .L00005718
    move       $a1,$s3
    ld         $a0,16($sp)
    jal        mm_get_extent
    move       $a2,$s1
    bnez       $v0, .L000056c8
    nop
.L00005788:
    b          .L000056ac
    li         $v0,12
.L00005790:
    daddu      $s1,$s2,$s1
    b          .L0000575c
    ld         $s1,16($s1)

glabel odsy_mm_decommit
    ld         $a3,128($a0)
    daddiu     $sp,$sp,-16
    sd         $a0,0($sp)
    beqz       $a3, .L000057bc
    sd         $ra,8($sp)
    move       $a0,$a3
    jal        mm_release_extent
    move       $a1,$zero
.L000057bc:
    ld         $v1,0($sp)
    li         $a1,-1
    sw         $a1,56($v1)
    ld         $a2,8($v1)
    lh         $a3,0($v1)
    ld         $a2,152($a2)
    dsll       $a3,$a3,0x2
    ld         $ra,8($sp)
    daddu      $a2,$a2,$a3
    sw         $a1,0($a2)
    lw         $v0,64($v1)
    li         $a0,-9
    daddiu     $sp,$sp,16
    and        $v0,$v0,$a0
    sw         $v0,64($v1)
    jr         $ra
    move       $v0,$zero

glabel mm_get_extent
    daddiu     $sp,$sp,-96
    sd         $s1,8($sp)
    lw         $s1,60($a2)
    sd         $s5,0($sp)
    sd         $s0,80($sp)
    sd         $s8,72($sp)
    sd         $s7,64($sp)
    sd         $s3,56($sp)
    lw         $at,64($a2)
    sd         $s6,16($sp)
    sd         $s4,24($sp)
    andi       $at,$at,0x2
    move       $s4,$a0
    move       $s6,$a1
    sd         $s2,32($sp)
    move       $s2,$a2
    beqz       $at, .L00005858
    sd         $ra,48($sp)
    ld         $v0,40($a1)
    lhu        $v0,6($v0)
    bnez       $v0, .L00005afc
    move       $a2,$a1
.L00005858:
    move       $s5,$zero
    move       $s8,$zero
    sd         $zero,40($sp)
    move       $a0,$s4
.L00005868:
    lbu        $a1,17($s2)
    jal        mm_get_cond_list_cursor
    move       $a2,$s1
    beqz       $v0, .L00005a9c
    move       $s0,$v0
.L0000587c:
    lw         $a2,4($s0)
    sltu       $v1,$a2,$s1
    bnez       $v1, .L00005a88
    nop
    ld         $a0,8($s0)
    bnez       $a0, .L00005a88
    li         $v0,1
    lbu        $a6,17($s2)
    ld         $v1,-30720($gp)
    dsll       $a0,$a6,0x2
    daddu      $v1,$v1,$a0
    lw         $v1,0($v1)
    addu       $v1,$v1,$v0
    lw         $t0,0($s0)
    sllv       $v0,$v0,$v1
    addiu      $v0,$v0,-1
    and        $a1,$v0,$t0
    move       $s7,$t0
    beqz       $a1, .L00005c20
    nor        $a3,$v0,$zero
    and        $s7,$t0,$a3
    addu       $s7,$v0,$s7
    addiu      $s7,$s7,1
    addu       $a1,$a2,$t0
    addu       $a7,$s1,$s7
    sltu       $a1,$a1,$a7
    bnez       $a1, .L00005a88
    li         $a1,1
    ld         $a3,16($s0)
    beqz       $a3, .L00005c50
    ld         $v0,24($s0)
    beqz       $v0, .L00005cbc
    ld         $a7,8($a3)
.L00005900:
    beqz       $a7, .L00005cb4
    ld         $a3,8($v0)
    lbu        $t8,17($a7)
    beq        $t8, $a6, .L00005c04
.L00005910:
    ld         $t2,-30720($gp)
    lw         $t2,128($t2)
    li         $t1,1
    addiu      $t2,$t2,1
    sllv       $t1,$t1,$t2
    addiu      $a7,$t1,-1
    and        $t2,$a7,$s7
    addu       $v0,$a2,$t0
    nor        $a7,$a7,$zero
    beqz       $t2, .L00005cd8
    and        $a7,$t0,$a7
    addu       $s7,$t1,$a7
    addu       $t3,$s1,$s7
    sltu       $t3,$v0,$t3
    bnez       $t3, .L00005c48
    li         $s3,1
    li         $a1,1
.L00005954:
    beqz       $s3, .L00005a88
    nop
    beqz       $a3, .L000059ac
    nop
    lbu        $t8,17($a3)
    beq        $t8, $a6, .L000059ac
.L0000596c:
    ld         $at,-30720($gp)
    lw         $at,128($at)
    li         $ra,1
    addiu      $at,$at,1
    addu       $t9,$s1,$s7
    sllv       $ra,$ra,$at
    lw         $at,56($a3)
    addiu      $t9,$t9,-1
    addiu      $ra,$ra,-1
    srl        $at,$at,0x5
    nor        $ra,$ra,$zero
    and        $t9,$ra,$t9
    and        $ra,$ra,$at
    xor        $t9,$t9,$ra
    sltiu      $t9,$t9,1
    movn       $s3,$zero,$t9
.L000059ac:
    beqz       $s3, .L00005a88
    nop
.L000059b4:
    beqz       $a1, .L00005a80
.L000059b8:
    li         $a0,40
.L000059bc:
    jal        kmem_alloc
    move       $a1,$zero
    beqz       $v0, .L00005dec
    ld         $a1,-30712($gp)
    sw         $s7,0($v0)
    lw         $a0,4($s0)
    lw         $a1,0($s0)
    sd         $s0,16($v0)
    sd         $zero,8($v0)
    subu       $a1,$s7,$a1
    subu       $a0,$a0,$a1
    sw         $a0,4($v0)
    ld         $v1,24($s0)
    sw         $zero,32($v0)
    sd         $v1,24($v0)
    sd         $v0,24($s0)
    ld         $a1,24($v0)
    beqz       $a1, .L00005a0c
    nop
    sd         $v0,16($a1)
.L00005a0c:
    lw         $a2,0($s0)
    subu       $a2,$s7,$a2
    sw         $a2,4($s0)
    beqz       $s3, .L00005a88
    move       $s0,$v0
.L00005a20:
    b          .L00005a9c
    move       $s5,$s0
.L00005a28:
    beqz       $v0, .L00005d14
    nop
    ld         $a3,8($v0)
    beqz       $a3, .L00005a20
    nop
    lbu        $a4,17($a3)
    beq        $a4, $a6, .L00005a20
    ld         $t9,-30720($gp)
    lw         $t9,128($t9)
    li         $t8,1
    addiu      $t9,$t9,1
    addu       $s3,$s1,$t0
    sllv       $t8,$t8,$t9
    lw         $t9,56($a3)
    addiu      $s3,$s3,-1
    addiu      $t8,$t8,-1
    srl        $t9,$t9,0x5
    nor        $t8,$t8,$zero
    and        $s3,$t8,$s3
    and        $t8,$t8,$t9
    xor        $s3,$s3,$t8
    sltu       $s3,$zero,$s3
.L00005a80:
    bnez       $s3, .L00005a20
    nop
.L00005a88:
    beqz       $s0, .L00005a9c
    nop
    ld         $s0,24($s0)
    bnez       $s0, .L0000587c
    nop
.L00005a9c:
    beqz       $s8, .L00005d2c
    move       $a0,$s4
.L00005aa4:
    bnez       $s5, .L00005b48
    ld         $a0,40($sp)
    move       $a1,$s1
    move       $a2,$s6
    lbu        $a4,17($s2)
    jal        mm_shake
    li         $a3,-1
    ld         $ra,40($sp)
    move       $s5,$v0
    addiu      $ra,$ra,1
    bnez       $v0, .L00005d1c
    sd         $ra,40($sp)
    bnez       $v0, .L00005b48
    li         $s8,1
    ld         $at,40($sp)
    sltiu      $at,$at,3
    bnez       $at, .L00005868
    move       $a0,$s4
    bnezl      $v0, .L00005b4c
    lw         $t0,4($s5)
    b          .L00005db0
    nop
.L00005afc:
    move       $a1,$s1
    lw         $a3,56($s2)
    lbu        $a4,17($s2)
    li         $a0,-1
    jal        mm_shake
    srl        $a3,$a3,0x5
    lw         $a6,64($s2)
    lw         $a5,56($s2)
    li         $a7,-3
    and        $a6,$a6,$a7
    sw         $a6,64($s2)
    lw         $a4,0($v0)
    srl        $a5,$a5,0x5
    sltu       $a4,$a4,$a5
    move       $s0,$v0
    bnez       $a4, .L00005b94
    move       $s5,$v0
.L00005b40:
    beqz       $s5, .L00005db0
    li         $s8,1
.L00005b48:
    lw         $t0,4($s5)
.L00005b4c:
    bne        $s1, $t0, .L00005d44
    li         $a0,40
.L00005b54:
    sd         $s2,8($s5)
    sw         $s1,4($s5)
    sd         $s5,128($s2)
.L00005b60:
    ld         $s0,80($sp)
    ld         $s8,72($sp)
    ld         $s7,64($sp)
    ld         $s3,56($sp)
    ld         $s1,8($sp)
    ld         $s2,32($sp)
    ld         $ra,48($sp)
    ld         $s4,24($sp)
    move       $v0,$s5
    ld         $s5,0($sp)
    ld         $s6,16($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00005b94:
    li         $a0,40
    jal        kmem_alloc
    move       $a1,$zero
    beqz       $v0, .L00005e00
    move       $s5,$v0
    lw         $t8,56($s2)
    srl        $t8,$t8,0x5
    sw         $t8,0($v0)
    lw         $t9,0($s0)
    lw         $t3,4($s0)
    subu       $t8,$t8,$t9
    subu       $t3,$t3,$t8
    sw         $t3,4($v0)
    lw         $t2,4($s0)
    subu       $t2,$t2,$t3
    sw         $t2,4($s0)
    sd         $s0,16($v0)
    sw         $zero,32($v0)
    sd         $zero,8($v0)
    ld         $t1,24($s0)
    sd         $t1,24($v0)
    sd         $v0,24($s0)
    ld         $v0,24($v0)
    beqz       $v0, .L00005b40
    nop
    sd         $s5,16($v0)
    b          .L00005b40
    nop
.L00005c04:
    beqz       $a3, .L00005c40
    nop
    lbu        $t9,17($a3)
    beq        $t9, $a6, .L00005c40
    nop
    b          .L0000596c
    li         $s3,1
.L00005c20:
    ld         $a3,16($s0)
    move       $a1,$zero
    beqz       $a3, .L00005a28
    ld         $v0,24($s0)
    bnez       $v0, .L00005900
    ld         $a7,8($a3)
    b          .L00005cf0
    nop
.L00005c40:
    b          .L000059b4
    li         $s3,1
.L00005c48:
    b          .L00005954
    move       $s3,$zero
.L00005c50:
    beqz       $v0, .L00005d0c
    nop
    ld         $a3,8($v0)
    beqz       $a3, .L00005ce8
    nop
    lbu        $ra,17($a3)
    beq        $ra, $a6, .L00005ce8
    ld         $t9,-30720($gp)
    lw         $t9,128($t9)
    li         $t8,1
    addiu      $t9,$t9,1
    sllv       $t8,$t8,$t9
    lw         $t9,56($a3)
    addiu      $s3,$a7,-1
    addiu      $t8,$t8,-1
    srl        $t9,$t9,0x5
    nor        $t8,$t8,$zero
    and        $s3,$t8,$s3
    and        $t8,$t8,$t9
    xor        $s3,$s3,$t8
    sltu       $s3,$zero,$s3
    bnez       $s3, .L000059bc
    li         $a0,40
    b          .L00005a80
    nop
.L00005cb4:
    b          .L00005954
    li         $s3,1
.L00005cbc:
    beqz       $a7, .L00005ce0
    nop
    lbu        $ra,17($a7)
    beq        $ra, $a6, .L00005ce0
    li         $a1,1
.L00005cd0:
    b          .L00005910
    move       $a3,$zero
.L00005cd8:
    b          .L00005954
    li         $s3,1
.L00005ce0:
    b          .L000059b8
    li         $s3,1
.L00005ce8:
    b          .L000059b8
    li         $s3,1
.L00005cf0:
    beqz       $a7, .L00005a20
    nop
    lbu        $at,17($a7)
    beq        $at, $a6, .L00005a20
    nop
    b          .L00005cd0
    move       $a1,$zero
.L00005d0c:
    b          .L000059b8
    li         $s3,1
.L00005d14:
    b          .L00005a80
    li         $s3,1
.L00005d1c:
    move       $s0,$v0
    move       $s5,$zero
    b          .L0000587c
    li         $s8,1
.L00005d2c:
    move       $a2,$s1
    lbu        $a1,17($s2)
    jal        mm_set_cond_list_cursor
    move       $a3,$s5
    b          .L00005aa4
    nop
.L00005d44:
    jal        kmem_alloc
    move       $a1,$zero
    beqz       $v0, .L00005e18
    ld         $a1,-30712($gp)
    lw         $a1,0($s5)
    addu       $a1,$s1,$a1
    sw         $a1,0($v0)
    lw         $a0,4($s5)
    subu       $a0,$a0,$s1
    sw         $a0,4($v0)
    sd         $zero,8($v0)
    sd         $s5,16($v0)
    ld         $v1,24($s5)
    sd         $v1,24($v0)
    sw         $zero,32($v0)
    sd         $v0,24($s5)
    ld         $a0,24($v0)
    beqz       $a0, .L00005d94
    nop
    sd         $v0,16($a0)
.L00005d94:
    beqz       $s8, .L00005b54
    move       $a0,$s4
    lw         $a1,4($v0)
    jal        mm_rewind_cond_list_cursor
    move       $a2,$s5
    b          .L00005b54
    nop
.L00005db0:
    ld         $a1,-30712($gp)
    li         $a0,4
    move       $a2,$s1
    jal        cmn_err
    daddiu     $a1,$a1,3536
    lh         $a2,0($gp)
    beqz       $a2, .L00005de4
    nop
    jal        conbuf_flush
    li         $a0,3
    ld         $a0,-30712($gp)
    jal        debug
    daddiu     $a0,$a0,640
.L00005de4:
    b          .L00005b60
    move       $s5,$zero
.L00005dec:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3496
    b          .L00005b60
    move       $s5,$zero
.L00005e00:
    ld         $a1,-30712($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3496
    b          .L00005b60
    move       $s5,$zero
.L00005e18:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3496
    b          .L00005b60
    move       $s5,$zero

glabel mm_release_extent
    daddiu     $sp,$sp,-80
    sd         $s7,72($sp)
    sd         $s1,64($sp)
    sd         $s0,56($sp)
    sd         $s4,48($sp)
    sd         $ra,40($sp)
    sd         $s6,32($sp)
    sd         $s2,16($sp)
    move       $s2,$a0
    sd         $s5,8($sp)
    move       $s5,$a1
    beqz       $a0, .L0000621c
    sd         $s3,24($sp)
    ld         $s1,8($a0)
    beqz       $s1, .L00006240
    nop
    ld         $s3,8($s1)
    ld         $s4,8($s3)
    daddiu     $s7,$s3,160
    move       $a0,$s7
    jal        OdsyInitCSetCursor
    ld         $s4,8($s4)
    jal        OdsyNextCSetElem
    move       $a0,$s7
    beqz       $v0, .L00005ff4
    move       $s0,$v0
    b          .L00005eac
    li         $s6,1
.L00005e9c:
    jal        OdsyNextCSetElem
    move       $a0,$s7
    beqz       $v0, .L00005ff4
    move       $s0,$v0
.L00005eac:
    jal        OdsyInitCSetCursor
    move       $a0,$s0
    jal        OdsyNextCSetElem
    move       $a0,$s0
    beqz       $v0, .L00005e9c
    move       $a6,$v0
    b          .L00005f84
    lw         $a4,0($a6)
.L00005ecc:
    lw         $t0,4($a6)
    lw         $a7,0($a6)
    slt        $t8,$a7,$t0
    dsll       $t1,$a7,0x3
    addiu      $a7,$a7,1
    beqz       $t8, .L00005f48
    daddu      $t1,$s3,$t1
.L00005ee8:
    ld         $t1,16($t1)
    beqz       $t1, .L00005f08
    slt        $v1,$a7,$t0
    lw         $t2,64($t1)
    ori        $t2,$t2,0x2
    sw         $t2,64($t1)
    lw         $t0,4($a6)
    slt        $v1,$a7,$t0
.L00005f08:
    dsll       $v0,$a7,0x3
    addiu      $a7,$a7,1
    beqz       $v1, .L00005f48
    daddu      $v0,$s3,$v0
    ld         $t1,16($v0)
    beqz       $t1, .L00005f38
    slt        $a1,$a7,$t0
    lw         $a0,64($t1)
    ori        $a0,$a0,0x2
    sw         $a0,64($t1)
    lw         $t0,4($a6)
    slt        $a1,$a7,$t0
.L00005f38:
    dsll       $t1,$a7,0x3
    addiu      $a7,$a7,1
    bnez       $a1, .L00005ee8
    daddu      $t1,$s3,$t1
.L00005f48:
    sw         $s6,32($s2)
.L00005f4c:
    sync
    ld         $a3,40($a6)
    sh         $zero,0($a3)
    sync
    sync
    ld         $a2,40($a6)
    sh         $zero,2($a2)
    sync
    sw         $zero,64($a6)
.L00005f70:
    jal        OdsyNextCSetElem
    move       $a0,$s0
    beqz       $v0, .L00005e9c
    move       $a6,$v0
    lw         $a4,0($a6)
.L00005f84:
    lh         $a7,0($s1)
    slt        $a4,$a7,$a4
    bnez       $a4, .L00005f70
    nop
    lw         $a5,4($a6)
    slt        $a5,$a5,$a7
    bnez       $a5, .L00005f70
    nop
    sync
    ld         $t0,40($a6)
    sh         $s6,2($t0)
    sync
    ld         $v0,40($a6)
    lhu        $a7,6($v0)
    beqz       $a7, .L00005fd0
    nop
    lhu        $t1,0($v0)
    bnez       $t1, .L00005ecc
    nop
.L00005fd0:
    ld         $t2,32($a6)
    lhu        $t3,4($v0)
    lhu        $t2,0($t2)
    xor        $t2,$t2,$t3
    lw         $t3,32($s2)
    sltu       $t2,$zero,$t2
    or         $t2,$t2,$t3
    b          .L00005f4c
    sw         $t2,32($s2)
.L00005ff4:
    beqz       $s5, .L00006014
    li         $a2,1
    lw         $t3,32($s2)
    daddiu     $a1,$sp,0
    move       $a0,$s1
    sltiu      $t3,$t3,1
    jal        odsy_mm_obj_xfr_bs
    sw         $t3,0($sp)
.L00006014:
    lw         $t8,64($s1)
    sd         $zero,128($s1)
    li         $t9,-2
    and        $t8,$t8,$t9
    sw         $t8,64($s1)
    ld         $a0,16($s2)
    beqz       $a0, .L00006100
    sd         $zero,8($s2)
    ld         $ra,8($a0)
    bnez       $ra, .L00006100
    nop
    b          .L000060a8
    li         $s1,183
.L00006048:
    daddu      $v0,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $at,$a3,40
    sb         $s1,0($v0)
    beqz       $at, .L00006084
    daddu      $a0,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $v1,$a3,40
    sb         $s1,0($a0)
    beqz       $v1, .L00006084
    daddu      $a1,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $a2,$a3,40
    bnez       $a2, .L00006048
    sb         $s1,0($a1)
.L00006084:
    move       $a0,$s0
    jal        kmem_free
    li         $a1,40
    ld         $a0,16($s2)
    beqz       $a0, .L00006100
    nop
    ld         $a3,8($a0)
    bnez       $a3, .L00006100
    nop
.L000060a8:
    lw         $a7,4($s2)
    lw         $a6,4($a0)
    addu       $a6,$a6,$a7
    sw         $a6,4($a0)
    ld         $a5,16($s2)
    ld         $a4,24($s2)
    sd         $a4,24($a5)
    ld         $v0,24($s2)
    beqz       $v0, .L000060d8
    move       $s0,$s2
    ld         $t0,16($s2)
    sd         $t0,16($v0)
.L000060d8:
    beqz       $s5, .L000060ec
    ld         $s2,16($s0)
    move       $a0,$s4
    jal        mm_check_cond_list_cursor
    move       $a1,$s0
.L000060ec:
    ld         $t1,4808($s4)
    bne        $t1, $s0, .L00006048
    move       $a3,$zero
    b          .L00006048
    sd         $s2,4808($s4)
.L00006100:
    ld         $v0,24($s2)
    beqz       $v0, .L000061e4
    nop
    ld         $t2,8($v0)
    bnez       $t2, .L000061e4
    nop
    b          .L00006184
    li         $s1,185
.L00006120:
    daddu      $t8,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $t3,$a3,40
    sb         $s1,0($t8)
    beqz       $t3, .L00006160
    daddu      $ra,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $t9,$a3,40
    sb         $s1,0($ra)
    beqz       $t9, .L00006164
    move       $a0,$s0
    daddu      $at,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $v0,$a3,40
    bnez       $v0, .L00006120
    sb         $s1,0($at)
.L00006160:
    move       $a0,$s0
.L00006164:
    jal        kmem_free
    li         $a1,40
    ld         $v0,24($s2)
    beqz       $v0, .L000061cc
    nop
    ld         $v1,8($v0)
    bnez       $v1, .L000061cc
    nop
.L00006184:
    lw         $a1,4($s2)
    lw         $a0,4($v0)
    addu       $a0,$a0,$a1
    sw         $a0,4($s2)
    move       $s0,$v0
    ld         $v0,24($v0)
    beqz       $v0, .L000061a8
    sd         $v0,24($s2)
    sd         $s2,16($v0)
.L000061a8:
    beqz       $s5, .L000061b8
    move       $a0,$s4
    jal        mm_check_cond_list_cursor
    move       $a1,$s0
.L000061b8:
    ld         $a2,4808($s4)
    bne        $a2, $s0, .L00006120
    move       $a3,$zero
    b          .L00006120
    sd         $s2,4808($s4)
.L000061cc:
    bnez       $s5, .L000061ec
    move       $a0,$s4
.L000061d4:
    jal        mm_set_all_cond_list_cursor
    daddiu     $a1,$s4,1640
    b          .L000061ec
    nop
.L000061e4:
    beqz       $s5, .L000061d4
    move       $a0,$s4
.L000061ec:
    ld         $s7,72($sp)
    ld         $s1,64($sp)
    ld         $s0,56($sp)
    ld         $s4,48($sp)
    ld         $s6,32($sp)
    ld         $ra,40($sp)
    ld         $s3,24($sp)
    move       $v0,$s2
    ld         $s2,16($sp)
    ld         $s5,8($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0000621c:
    move       $s1,$zero
    li         $a0,4
.L00006224:
    ld         $a1,-30712($gp)
    move       $a2,$s2
    move       $a3,$s1
    jal        cmn_err
    daddiu     $a1,$a1,3592
    b          .L000061ec
    move       $s2,$zero
.L00006240:
    b          .L00006224
    li         $a0,4

glabel mm_check_enode
    lw         $a7,4($a1)
    sltu       $at,$a7,$a3
    daddiu     $sp,$sp,-32
    bnez       $at, .L00006390
    dsll       $t0,$a2,0x2
    li         $v0,1
    ld         $v1,-30720($gp)
    daddu      $t8,$t0,$v1
    lw         $t8,0($t8)
    lw         $t3,0($a1)
    addiu      $t8,$t8,1
    sllv       $t8,$v0,$t8
    addiu      $t2,$t8,-1
    addu       $t8,$t8,$t3
    ld         $a5,24($a1)
    addiu      $t8,$t8,-1
    nor        $t2,$t2,$zero
    lw         $v1,128($v1)
    and        $t2,$t2,$t8
    ld         $t9,16($a1)
    addu       $t3,$a7,$t3
    addu       $t1,$a3,$t2
    sd         $v1,8($sp)
    addiu      $v1,$v1,1
    slt        $a6,$t3,$t1
    sd         $v1,0($sp)
    sllv       $v0,$v0,$v1
    xori       $t8,$a6,0x1
    sd         $v0,16($sp)
    beqz       $t9, .L00006344
    move       $v0,$t8
    beqz       $a5, .L0000639c
    ld         $a1,8($t9)
    bne        $zero, $a6, .L00006348
    nop
    beqz       $a1, .L00006348
    nop
    lbu        $t9,17($a1)
    beq        $a2, $t9, .L00006348
    li         $a6,1
    ld         $a7,-30720($gp)
    lw         $at,56($a1)
    lw         $a7,128($a7)
    lw         $t9,60($a1)
    srl        $at,$at,0x5
    addiu      $a7,$a7,1
    addu       $t9,$t9,$at
    sllv       $a6,$a6,$a7
    addu       $a7,$a6,$t2
    addiu      $a6,$a6,-1
    addiu      $t9,$t9,-1
    nor        $a6,$a6,$zero
    and        $t9,$a6,$t9
    and        $t0,$a6,$t2
    addiu      $a7,$a7,-1
    bne        $t0, $t9, .L00006348
    and        $a6,$a6,$a7
    addu       $t0,$a3,$a6
    move       $v0,$t8
    move       $t1,$t0
    slt        $t0,$t3,$t0
    b          .L00006348
    movn       $v0,$zero,$t0
.L00006344:
    beqz       $a5, .L00006394
.L00006348:
    addiu      $t3,$t1,-1
    beqz       $v0, .L00006394
    ld         $a1,8($a5)
    beqz       $a1, .L00006394
    nop
    lbu        $t2,17($a1)
    beq        $a2, $t2, .L00006394
    ld         $t8,16($sp)
    lw         $t9,56($a1)
    addiu      $t8,$t8,-1
    srl        $t9,$t9,0x5
    nor        $t8,$t8,$zero
    and        $t3,$t8,$t3
    and        $t8,$t8,$t9
    xor        $t3,$t3,$t8
    sltiu      $t3,$t3,1
    b          .L00006394
    movn       $v0,$zero,$t3
.L00006390:
    move       $v0,$zero
.L00006394:
    jr         $ra
    daddiu     $sp,$sp,32
.L0000639c:
    bne        $zero, $a6, .L00006394
    nop
    beqz       $a1, .L00006394
    nop
    lbu        $t9,17($a1)
    beq        $a2, $t9, .L00006394
    ld         $a4,-30720($gp)
    lw         $a7,56($a1)
    lw         $a4,128($a4)
    li         $a2,1
    lw         $a6,60($a1)
    srl        $a7,$a7,0x5
    addiu      $a4,$a4,1
    addu       $a6,$a6,$a7
    sllv       $a2,$a2,$a4
    addu       $a4,$a2,$t2
    addiu      $a2,$a2,-1
    addiu      $a6,$a6,-1
    nor        $a2,$a2,$zero
    and        $a6,$a2,$a6
    and        $a5,$a2,$t2
    addiu      $a4,$a4,-1
    bne        $a5, $a6, .L00006394
    and        $a2,$a2,$a4
    move       $v0,$t8
    addu       $a5,$a3,$a2
    slt        $a5,$t3,$a5
    b          .L00006394
    movn       $v0,$zero,$a5

glabel mm_shake
    ld         $a7,16($a2)
    daddiu     $sp,$sp,-144
    sd         $a1,48($sp)
    sd         $a4,72($sp)
    sd         $s7,120($sp)
    sd         $s5,112($sp)
    sd         $s6,104($sp)
    sd         $s4,96($sp)
    sd         $ra,88($sp)
    sd         $s2,80($sp)
    sd         $s8,24($sp)
    ld         $s8,8($a2)
    sd         $s0,16($sp)
    ld         $s8,8($s8)
    sd         $s3,40($sp)
    move       $v0,$a2
    li         $at,-1
    ld         $s8,8($s8)
    move       $s3,$a0
    move       $s0,$a3
    sd         $s1,32($sp)
    daddiu     $s1,$s8,1640
    beq        $a0, $at, .L00006638
    sd         $s1,56($sp)
    li         $ra,2
    beq        $a0, $ra, .L00006948
    sd         $a2,128($sp)
    ld         $v0,4808($s8)
    beqz       $v0, .L000066d0
    sd         $a7,8($sp)
    beq        $v0, $s1, .L00006630
    nop
    move       $s1,$v0
    li         $v1,1
    sd         $v1,64($sp)
.L0000649c:
    beqz       $s1, .L000065c4
    li         $s7,1
    li         $s5,-2
    b          .L0000652c
    li         $s4,3
.L000064b0:
    ld         $s6,8($v0)
    daddiu     $s6,$s6,160
    jal        OdsyInitCSetCursor
    move       $a0,$s6
    jal        OdsyNextCSetElem
    move       $a0,$s6
    beqz       $v0, .L00006618
    move       $s2,$v0
    move       $s0,$zero
.L000064d4:
    jal        OdsyInitCSetCursor
    move       $a0,$s2
    jal        OdsyNextCSetElem
    move       $a0,$s2
    beqz       $v0, .L00006508
    move       $a7,$v0
.L000064ec:
    ld         $t8,40($a7)
    lhu        $t8,6($t8)
    move       $a0,$s2
    jal        OdsyNextCSetElem
    or         $s0,$s0,$t8
    bnez       $v0, .L000064ec
    move       $a7,$v0
.L00006508:
    jal        OdsyNextCSetElem
    move       $a0,$s6
    bnez       $v0, .L000064d4
    move       $s2,$v0
.L00006518:
    beqz       $s0, .L000066d8
    move       $a0,$s1
.L00006520:
    ld         $s1,24($s1)
.L00006524:
    beqz       $s1, .L000065ac
    ld         $a3,64($sp)
.L0000652c:
    ld         $v0,8($s1)
    beqz       $v0, .L000065cc
    move       $a0,$s8
    lbu        $t9,16($v0)
    beq        $s4, $t9, .L00006520
    nop
    beq        $s3, $s5, .L000064b0
    nop
    beqz       $s3, .L000064b0
    nop
    bne        $s3, $s7, .L00006520
    nop
    ld         $a0,8($v0)
    ld         $a1,8($sp)
    lw         $a1,240($a1)
    jal        OdsyLookupCSetId
    daddiu     $a0,$a0,160
    move       $s2,$v0
    jal        OdsyNextCSetElem
    move       $a0,$v0
    beqz       $v0, .L00006624
    move       $a7,$v0
    move       $s0,$zero
.L00006588:
    ld         $a2,40($a7)
    lhu        $a2,6($a2)
    move       $a0,$s2
    jal        OdsyNextCSetElem
    or         $s0,$s0,$a2
    bnez       $v0, .L00006588
    move       $a7,$v0
    b          .L00006518
    nop
.L000065ac:
    beqz       $a3, .L000065bc
    nop
    ld         $s1,56($sp)
    sd         $zero,64($sp)
.L000065bc:
    bnez       $s1, .L0000652c
    nop
.L000065c4:
    b          .L000065e4
    move       $s1,$zero
.L000065cc:
    ld         $a2,72($sp)
    move       $a1,$s1
    jal        mm_check_enode
    ld         $a3,48($sp)
    beqz       $v0, .L00006520
    nop
.L000065e4:
    ld         $s7,120($sp)
.L000065e8:
    ld         $s5,112($sp)
    ld         $s6,104($sp)
    ld         $s4,96($sp)
    ld         $s2,80($sp)
    ld         $s0,16($sp)
    ld         $ra,88($sp)
    move       $v0,$s1
    ld         $s1,32($sp)
    ld         $s3,40($sp)
    ld         $s8,24($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L00006618:
    move       $s0,$zero
    b          .L00006518
    nop
.L00006624:
    move       $s0,$zero
    b          .L00006518
    nop
.L00006630:
    b          .L0000649c
    sd         $zero,64($sp)
.L00006638:
    ld         $v0,1664($s8)
    beqz       $v0, .L00006694
    nop
    lw         $a4,0($v0)
    sltu       $a4,$a4,$a3
    beqz       $a4, .L00006694
    nop
.L00006654:
    move       $s1,$v0
    ld         $v0,24($v0)
    beqz       $v0, .L00006694
    nop
    lw         $a5,0($v0)
    sltu       $a5,$a5,$s0
    beqz       $a5, .L00006694
    nop
    move       $s1,$v0
    ld         $v0,24($v0)
    beqz       $v0, .L00006694
    nop
    lw         $a6,0($v0)
    sltu       $a6,$a6,$s0
    bnez       $a6, .L00006654
    nop
.L00006694:
    beqz       $s1, .L00006a94
    ld         $a1,-30712($gp)
    ld         $a7,8($s1)
    bnez       $a7, .L0000691c
    move       $a0,$s1
.L000066a8:
    lw         $t8,0($s1)
    ld         $s2,48($sp)
    lw         $v0,4($s1)
    subu       $t8,$s0,$t8
    addu       $s2,$s2,$t8
    sltu       $v0,$v0,$s2
    beqz       $v0, .L0000676c
    ld         $s3,-30720($gp)
    b          .L00006aa8
    lh         $a7,0($gp)
.L000066d0:
    b          .L0000649c
    sd         $zero,64($sp)
.L000066d8:
    jal        mm_release_extent
    li         $a1,1
    ld         $a0,24($v0)
    beqz       $a0, .L00006a7c
    move       $s1,$v0
    sd         $a0,4808($s8)
.L000066f0:
    move       $a0,$s8
    ld         $a2,72($sp)
    move       $a1,$s1
    jal        mm_check_enode
    ld         $a3,48($sp)
    beqz       $v0, .L0000692c
    move       $a0,$s8
    b          .L000065e8
    ld         $s7,120($sp)
.L00006714:
    beqz       $v0, .L0000676c
    ld         $s3,-30720($gp)
.L0000671c:
    bnez       $a0, .L00006758
    nop
    beqz       $a7, .L00006714
    nop
    jal        conbuf_flush
    li         $a0,3
    ld         $a0,-30712($gp)
    jal        debug
    daddiu     $a0,$a0,640
.L00006740:
    lw         $v0,4($s1)
    sltu       $v0,$v0,$s2
    beqz       $v0, .L00006768
    lh         $a7,0($gp)
.L00006750:
    b          .L0000671c
    ld         $a0,24($s1)
.L00006758:
    jal        mm_release_extent
    li         $a1,1
    b          .L00006740
    move       $s1,$v0
.L00006768:
    ld         $s3,-30720($gp)
.L0000676c:
    lw         $s3,128($s3)
    li         $s2,1
    addu       $s3,$s3,$s2
    sllv       $s2,$s2,$s3
    ld         $s3,48($sp)
    addiu      $s2,$s2,-1
    nor        $s2,$s2,$zero
    addu       $s3,$s3,$s0
    and        $s4,$s2,$s0
    addiu      $s3,$s3,-1
    b          .L000067dc
    and        $s3,$s2,$s3
.L0000679c:
    beqz       $a3, .L000068d4
    ld         $t8,72($sp)
    lbu        $t9,17($a3)
    beq        $t8, $t9, .L000068d8
    nop
    lw         $ra,56($a3)
    srl        $ra,$ra,0x5
    and        $ra,$s2,$ra
    bne        $s3, $ra, .L000068d8
    nop
    move       $s0,$zero
.L000067c8:
    li         $a1,1
.L000067cc:
    jal        mm_release_extent
    ori        $s0,$s0,0x1
    beqz       $s0, .L000068d8
    move       $s1,$v0
.L000067dc:
    ld         $a7,16($s1)
.L000067e0:
    beqz       $a7, .L000068e0
    ld         $a0,24($s1)
    beqz       $a0, .L0000685c
    ld         $v0,8($a7)
    ld         $a3,8($a0)
    beqz       $v0, .L00006a4c
    move       $s0,$a3
    ld         $at,72($sp)
    lbu        $v1,17($v0)
    beq        $at, $v1, .L0000679c
    nop
    lw         $a2,56($v0)
    lw         $a1,60($v0)
    srl        $a2,$a2,0x5
    addu       $a1,$a1,$a2
    addiu      $a1,$a1,-1
    and        $a1,$s2,$a1
    beq        $s4, $a1, .L00006894
    nop
    beqz       $a3, .L000068d8
    ld         $a4,72($sp)
    lbu        $a5,17($a3)
    beq        $a4, $a5, .L000068d8
    nop
    lw         $a6,56($a3)
    srl        $a6,$a6,0x5
    and        $a6,$s2,$a6
    bne        $s3, $a6, .L000068d8
    move       $s0,$zero
    b          .L000067cc
    li         $a1,1
.L0000685c:
    ld         $t0,72($sp)
    beqz       $v0, .L000068d8
    nop
    lbu        $t1,17($v0)
    beq        $t0, $t1, .L000068d8
    nop
    lw         $t3,56($v0)
    lw         $t2,60($v0)
    srl        $t3,$t3,0x5
    addu       $t2,$t2,$t3
    addiu      $t2,$t2,-1
    and        $t2,$s2,$t2
    bne        $s4, $t2, .L000068d8
    move       $s0,$zero
.L00006894:
    move       $a0,$a7
    jal        mm_release_extent
    li         $a1,1
    ld         $t8,72($sp)
    beqz       $s0, .L00006940
    move       $s1,$v0
    lbu        $t9,17($s0)
    beq        $t8, $t9, .L00006940
    nop
    lw         $ra,56($s0)
    srl        $ra,$ra,0x5
    and        $ra,$s2,$ra
    bne        $s3, $ra, .L00006940
    li         $s0,1
    b          .L000067c8
    ld         $a0,24($v0)
.L000068d4:
    nop
.L000068d8:
    b          .L000065e8
    ld         $s7,120($sp)
.L000068e0:
    beqz       $a0, .L000068d8
    ld         $at,72($sp)
    ld         $a3,8($a0)
    beqz       $a3, .L000068d8
    nop
    lbu        $v0,17($a3)
    beq        $at, $v0, .L000068d8
    nop
    lw         $v1,56($a3)
    srl        $v1,$v1,0x5
    and        $v1,$s2,$v1
    bne        $s3, $v1, .L000068d8
    move       $s0,$zero
    b          .L000067cc
    li         $a1,1
.L0000691c:
    jal        mm_release_extent
    li         $a1,1
    b          .L000066a8
    move       $s1,$v0
.L0000692c:
    lw         $a1,4($s1)
    jal        mm_rewind_cond_list_cursor
    move       $a2,$s1
    b          .L00006524
    ld         $s1,24($s1)
.L00006940:
    b          .L000067e0
    ld         $a7,16($s1)
.L00006948:
    move       $s1,$a2
    daddiu     $s0,$s8,1496
    jal        OdsyInitCSetCursor
    move       $a0,$s0
    jal        OdsyNextCSetElem
    move       $a0,$s0
    beqz       $v0, .L00006a44
    move       $a7,$v0
    li         $s4,3
    sd         $s0,0($sp)
.L00006970:
    ld         $a0,8($s1)
    ld         $a0,8($a0)
    beq        $a0, $a7, .L00006a34
    daddiu     $s5,$a7,72
    jal        OdsyInitCSetCursor
    move       $a0,$s5
    jal        OdsyNextCSetElem
    move       $a0,$s5
    beqz       $v0, .L00006a34
    move       $s3,$v0
.L00006998:
    move       $s0,$zero
    dsll       $v0,$s0,0x3
    daddu      $v0,$s3,$v0
.L000069a4:
    ld         $v0,16($v0)
    beqz       $v0, .L00006a10
    nop
    ld         $a0,128($v0)
    beqz       $a0, .L00006a10
    nop
    lbu        $v1,16($v0)
    beq        $s4, $v1, .L00006a10
    nop
    jal        mm_release_extent
    li         $a1,1
    ld         $a7,24($v0)
    beqz       $a7, .L00006a88
    move       $s2,$v0
    sd         $a7,4808($s8)
.L000069e0:
    move       $a0,$s8
    ld         $a2,72($sp)
    move       $a1,$s2
    jal        mm_check_enode
    ld         $a3,48($sp)
    beqz       $v0, .L00006a04
    move       $a0,$s8
    b          .L000065e4
    move       $s1,$s2
.L00006a04:
    lw         $a1,4($s2)
    jal        mm_rewind_cond_list_cursor
    move       $a2,$s2
.L00006a10:
    addiu      $s0,$s0,1
    slti       $a0,$s0,16
    dsll       $v0,$s0,0x3
    bnez       $a0, .L000069a4
    daddu      $v0,$s3,$v0
    jal        OdsyNextCSetElem
    move       $a0,$s5
    bnez       $v0, .L00006998
    move       $s3,$v0
.L00006a34:
    jal        OdsyNextCSetElem
    ld         $a0,0($sp)
    bnez       $v0, .L00006970
    move       $a7,$v0
.L00006a44:
    b          .L000065e4
    move       $s1,$zero
.L00006a4c:
    beqz       $a3, .L000068d8
    ld         $a1,72($sp)
    lbu        $a2,17($a3)
    beq        $a1, $a2, .L000068d8
    nop
    lw         $a4,56($a3)
    srl        $a4,$a4,0x5
    and        $a4,$s2,$a4
    bne        $s3, $a4, .L000068d8
    move       $s0,$zero
    b          .L000067cc
    li         $a1,1
.L00006a7c:
    ld         $a5,56($sp)
    b          .L000066f0
    sd         $a5,4808($s8)
.L00006a88:
    ld         $a6,56($sp)
    b          .L000069e0
    sd         $a6,4808($s8)
.L00006a94:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3648
    b          .L000065e4
    move       $s1,$zero
.L00006aa8:
    b          .L00006750
    nop
