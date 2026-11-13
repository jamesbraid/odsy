.section .text
.set noat
.set noreorder


glabel OdsyInitCSet
    sd         $zero,0($a0)
    sd         $zero,16($a0)
    sw         $zero,28($a0)
    sw         $zero,24($a0)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        OdsyInitCSetCursor
    sw         $a1,40($a0)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel OdsyDestroyCSet
    lw         $a3,40($a0)
    daddiu     $sp,$sp,-96
    sd         $a0,16($sp)
    sd         $s4,0($sp)
    ld         $s4,0($a0)
    sd         $s8,48($sp)
    sd         $s7,40($sp)
    sd         $s5,32($sp)
    sd         $s1,24($sp)
    sd         $s0,80($sp)
    sd         $ra,72($sp)
    lw         $at,24($a0)
    sd         $s3,64($sp)
    sd         $s6,8($sp)
    move       $s6,$a1
    blez       $at, .L0000019c
    sd         $s2,56($sp)
    li         $s2,208
    li         $s5,1
    li         $s3,209
    sllv       $s5,$s5,$a3
    move       $s7,$zero
    dsll       $s8,$s5,0x3
    b          .L00000180
    daddiu     $s1,$s8,-1
.L00000090:
    beqz       $a3, .L000000d0
    move       $s4,$a4
.L00000098:
    dsll       $a0,$s4,0x3
    daddu      $a0,$a5,$a0
    ld         $a0,0($a0)
    addiu      $a4,$s4,1
    beqz       $a0, .L00000090
    slt        $a3,$a4,$s5
    beqz       $s6, .L00000090
    nop
    jalr       $s6
    nop
    addiu      $s4,$s4,1
    slt        $a1,$s4,$s5
    bnez       $a1, .L00000194
    nop
.L000000d0:
    beqz       $s8, .L0000010c
    move       $a3,$zero
.L000000d8:
    ld         $a4,0($s0)
    daddu      $a4,$a3,$a4
    addiu      $a3,$a3,1
    sltu       $a2,$s1,$a3
    sb         $s2,0($a4)
    bnez       $a2, .L0000010c
    nop
    ld         $a5,0($s0)
    daddu      $a5,$a3,$a5
    addiu      $a3,$a3,1
    sltu       $a6,$s1,$a3
    beqz       $a6, .L000000d8
    sb         $s2,0($a5)
.L0000010c:
    ld         $a0,0($s0)
    jal        kmem_free
    move       $a1,$s8
.L00000118:
    ld         $s4,16($s0)
    move       $a3,$zero
.L00000120:
    daddu      $a7,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $a6,$a3,32
    sb         $s3,0($a7)
    beqz       $a6, .L0000015c
    daddu      $t1,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $t0,$a3,32
    sb         $s3,0($t1)
    beqz       $t0, .L0000015c
    daddu      $t2,$a3,$s0
    addiu      $a3,$a3,1
    sltiu      $t3,$a3,32
    bnez       $t3, .L00000120
    sb         $s3,0($t2)
.L0000015c:
    move       $a0,$s0
    jal        kmem_free
    li         $a1,32
    ld         $t8,16($sp)
    lw         $t8,24($t8)
    addiu      $s7,$s7,1
    slt        $t8,$s7,$t8
    beqz       $t8, .L000001a0
    ld         $a0,16($sp)
.L00000180:
    ld         $t9,0($s4)
    beqz       $t9, .L00000118
    move       $s0,$s4
    blez       $s5, .L000000d0
    move       $s4,$zero
.L00000194:
    b          .L00000098
    ld         $a5,0($s0)
.L0000019c:
    ld         $a0,16($sp)
.L000001a0:
    jal        OdsyInitCSet
    move       $a1,$zero
    ld         $s0,80($sp)
    ld         $s3,64($sp)
    ld         $s2,56($sp)
    ld         $s8,48($sp)
    ld         $s7,40($sp)
    ld         $s5,32($sp)
    ld         $ra,72($sp)
    ld         $s1,24($sp)
    ld         $s4,0($sp)
    ld         $s6,8($sp)
    jr         $ra
    daddiu     $sp,$sp,96

glabel OdsyInitCSetCursor
    sw         $zero,36($a0)
    sw         $zero,32($a0)
    ld         $at,0($a0)
    jr         $ra
    sd         $at,8($a0)

glabel OdsyNextCSetElem
    ld         $a3,8($a0)
    beqz       $a3, .L0000028c
    nop
    lw         $at,36($a0)
    bnez       $at, .L0000028c
    nop
    lw         $v0,28($a0)
    beqz       $v0, .L0000028c
    li         $t0,1
    lw         $a5,40($a0)
    lw         $v1,32($a0)
    sllv       $a5,$t0,$a5
    div        $zero,$v1,$a5
    move       $v0,$zero
    teq        $a5,$zero,0x7
    mfhi       $a4
    nop
    sw         $a4,32($a0)
.L00000234:
    lw         $a6,8($a3)
    beqz       $a6, .L000002c8
    slt        $a6,$a4,$a5
    beqz       $a6, .L000002a4
    nop
.L00000248:
    dsll       $v1,$a4,0x3
    ld         $v0,0($a3)
    daddu      $v0,$v0,$v1
    ld         $v0,0($v0)
    addiu      $a7,$a4,1
    move       $a4,$a7
    beqz       $v0, .L0000029c
    slt        $a6,$a7,$a5
    bne        $a5, $a7, .L00000294
    sw         $a7,32($a0)
    sw         $zero,32($a0)
    ld         $a2,16($a3)
    ld         $a4,0($a0)
    bne        $a4, $a2, .L00000294
    sd         $a2,8($a0)
    jr         $ra
    sw         $t0,36($a0)
.L0000028c:
    sw         $zero,36($a0)
    move       $v0,$zero
.L00000294:
    jr         $ra
    nop
.L0000029c:
    bnez       $a6, .L00000248
    sw         $a7,32($a0)
.L000002a4:
    sw         $zero,32($a0)
    ld         $a3,16($a3)
    move       $a4,$zero
    sd         $a3,8($a0)
.L000002b4:
    ld         $a6,0($a0)
    bne        $a6, $a3, .L00000234
    nop
    b          .L00000294
    nop
.L000002c8:
    ld         $a3,16($a3)
    b          .L000002b4
    sd         $a3,8($a0)

glabel OdsyFindMatchingCSetElem
    daddiu     $sp,$sp,-80
    sd         $s1,32($sp)
    sd         $s0,64($sp)
    sd         $s4,56($sp)
    sd         $ra,48($sp)
    sd         $s3,40($sp)
    sd         $s5,16($sp)
    lw         $a5,40($a0)
    sd         $s7,8($sp)
    move       $s7,$a0
    move       $s5,$a1
    sd         $s6,24($sp)
    move       $s6,$a2
    beqz       $a5, .L000003d8
    sd         $s2,0($sp)
    lw         $v0,24($a0)
    blez       $v0, .L0000039c
    ld         $s3,0($a0)
    move       $s4,$zero
    li         $s1,1
    b          .L00000380
    sllv       $s1,$s1,$a5
.L0000032c:
    beqz       $a5, .L0000036c
    move       $s0,$a6
.L00000334:
    dsll       $s2,$s0,0x3
    daddu      $s2,$a7,$s2
    ld         $s2,0($s2)
    addiu      $a6,$s0,1
    beqz       $s2, .L0000032c
    slt        $a5,$a6,$s1
    move       $a0,$s2
    jalr       $s6
    move       $a1,$s5
    beqz       $v0, .L000003d0
    addiu      $s0,$s0,1
    slt        $t8,$s0,$s1
    bnez       $t8, .L00000394
    nop
.L0000036c:
    lw         $v0,24($s7)
.L00000370:
    addiu      $s4,$s4,1
    slt        $t9,$s4,$v0
    beqz       $t9, .L0000039c
    ld         $s3,16($s3)
.L00000380:
    lw         $ra,8($s3)
    beqz       $ra, .L00000370
    move       $s0,$zero
    blez       $s1, .L00000370
    nop
.L00000394:
    b          .L00000334
    ld         $a7,0($s3)
.L0000039c:
    move       $s2,$zero
.L000003a0:
    ld         $s0,64($sp)
.L000003a4:
    ld         $s4,56($sp)
    ld         $s3,40($sp)
    ld         $s1,32($sp)
    move       $v0,$s2
    ld         $s2,0($sp)
    ld         $ra,48($sp)
    ld         $s5,16($sp)
    ld         $s6,24($sp)
    ld         $s7,8($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000003d0:
    b          .L000003a4
    ld         $s0,64($sp)
.L000003d8:
    b          .L000003a0
    move       $s2,$zero

glabel NewChunkNode
    li         $a0,32
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        kmem_alloc
    move       $a1,$zero
    bnez       $v0, .L00000404
    ld         $ra,0($sp)
    b          .L00000424
    move       $v0,$zero
.L00000404:
    sdl        $zero,0($v0)
    sdr        $zero,7($v0)
    sdl        $zero,8($v0)
    sdr        $zero,15($v0)
    sdl        $zero,16($v0)
    sdr        $zero,23($v0)
    sdl        $zero,24($v0)
    sdr        $zero,31($v0)
.L00000424:
    jr         $ra
    daddiu     $sp,$sp,16

glabel OdsyAllocSpecificCSetId
    daddiu     $sp,$sp,-80
    sd         $s3,48($sp)
    li         $a5,-1
    lw         $at,40($a0)
    sd         $s1,40($sp)
    move       $s1,$a0
    li         $a7,1
    sd         $s0,64($sp)
    move       $s0,$zero
    sllv       $a7,$a7,$at
    sd         $s2,32($sp)
    srav       $s2,$a1,$at
    addiu      $a6,$a7,-1
    sd         $ra,56($sp)
    beqz       $at, .L00000520
    and        $a6,$a1,$a6
    lw         $v0,24($a0)
    sd         $a7,24($sp)
    sd         $a1,16($sp)
    slt        $t0,$s2,$v0
    sd         $a2,8($sp)
    subu       $s3,$s2,$v0
    sd         $a6,0($sp)
    bnez       $t0, .L000004a4
    addiu      $s3,$s3,1
    bgtz       $s3, .L00000598
    subu       $a5,$v0,$s2
    b          .L000004a8
    nop
.L000004a0:
    lw         $v0,24($s1)
.L000004a4:
    subu       $a5,$v0,$s2
.L000004a8:
    ld         $a0,0($s1)
    slt        $a6,$a5,$s2
    move       $v0,$zero
    addiu      $a5,$a5,-2
    beqz       $a6, .L00000540
    move       $s0,$a0
    move       $v0,$zero
    bltz       $a5, .L000004dc
    ld         $s0,24($a0)
.L000004cc:
    addiu      $v0,$v0,1
    slt        $a7,$a5,$v0
    beqz       $a7, .L000004cc
    ld         $s0,24($s0)
.L000004dc:
    lw         $t0,8($s0)
.L000004e0:
    beqz       $t0, .L000005cc
    ld         $s2,24($sp)
    ld         $t9,0($sp)
.L000004ec:
    ld         $t8,0($s0)
    dsll       $t9,$t9,0x3
    ld         $t3,8($sp)
    daddu      $t8,$t8,$t9
    sd         $t3,0($t8)
    lw         $t2,8($s0)
    ld         $a5,16($sp)
    addiu      $t2,$t2,1
    sw         $t2,8($s0)
    lw         $t1,28($s1)
    sd         $s0,16($s1)
    addiu      $t1,$t1,1
    sw         $t1,28($s1)
.L00000520:
    ld         $s2,32($sp)
.L00000524:
    ld         $ra,56($sp)
    ld         $s3,48($sp)
    move       $v0,$a5
    ld         $s0,64($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000540:
    blez       $s2, .L000004dc
    nop
.L00000548:
    addiu      $v0,$v0,1
    slt        $ra,$v0,$s2
    bnez       $ra, .L00000548
    ld         $s0,16($s0)
    b          .L000004e0
    lw         $t0,8($s0)
.L00000560:
    sd         $a0,16($v0)
    ld         $a1,0($s1)
    ld         $a1,24($a1)
    sd         $a1,24($v0)
    ld         $v1,0($s1)
    sd         $v0,24($v1)
    ld         $at,24($v0)
    sd         $v0,16($at)
.L00000580:
    sw         $zero,8($v0)
    lw         $a2,24($s1)
    addiu      $a2,$a2,1
    sw         $a2,24($s1)
    beqz       $a3, .L000004a0
    sw         $a2,12($v0)
.L00000598:
    jal        NewChunkNode
    lw         $a0,40($s1)
    beqz       $v0, .L000005c4
    addiu      $s0,$s0,1
    ld         $a0,0($s1)
    bnez       $a0, .L00000560
    slt        $a3,$s0,$s3
    sd         $v0,24($v0)
    sd         $v0,16($v0)
    b          .L00000580
    sd         $v0,0($s1)
.L000005c4:
    b          .L00000520
    li         $a5,-1
.L000005cc:
    move       $a1,$zero
    dsll       $s2,$s2,0x3
    jal        kmem_alloc
    move       $a0,$s2
    sd         $v0,0($s0)
    bnez       $v0, .L000005f0
    li         $a5,-1
    b          .L00000524
    ld         $s2,32($sp)
.L000005f0:
    move       $a0,$v0
    jal        bzero
    move       $a1,$s2
    b          .L000004ec
    ld         $t9,0($sp)

glabel OdsyAllocCSetId
    daddiu     $sp,$sp,-80
    sd         $s2,32($sp)
    sd         $s6,40($sp)
    sd         $s0,48($sp)
    sd         $ra,56($sp)
    sd         $s5,64($sp)
    sd         $s4,8($sp)
    lw         $s4,40($a0)
    li         $a4,-1
    sd         $s3,0($sp)
    li         $a5,1
    move       $s3,$a0
    sd         $s7,16($sp)
    move       $s7,$a1
    sd         $s1,24($sp)
    beqz       $s4, .L000007b4
    sllv       $s1,$a5,$s4
    lw         $v0,24($a0)
    lw         $at,28($a0)
    sllv       $v1,$v0,$s4
    slt        $at,$at,$v1
    beqz       $at, .L000006cc
    nop
    blez       $v0, .L000006cc
    ld         $s2,16($a0)
    move       $s5,$zero
    dsll       $s6,$s1,0x3
.L00000670:
    lw         $a4,8($s2)
    beq        $a4, $s1, .L000006bc
    nop
    lw         $s0,12($s2)
    addiu      $s0,$s0,-1
    beqz       $a4, .L000007bc
    sllv       $s0,$s0,$s4
.L0000068c:
    blez       $s1, .L000006b8
    move       $v0,$zero
    ld         $a5,0($s2)
.L00000698:
    dsll       $a6,$v0,0x3
    daddu      $a6,$a5,$a6
    ld         $t8,0($a6)
    addiu      $v0,$v0,1
    beqz       $t8, .L000006e8
    slt        $a4,$v0,$s1
    bnez       $a4, .L00000698
    addiu      $s0,$s0,1
.L000006b8:
    lw         $v0,24($s3)
.L000006bc:
    addiu      $s5,$s5,1
    slt        $a7,$s5,$v0
    bnez       $a7, .L00000670
    ld         $s2,16($s2)
.L000006cc:
    jal        NewChunkNode
    move       $a0,$s4
    li         $a4,-1
    bnez       $v0, .L0000073c
    move       $s0,$v0
    b          .L00000710
    ld         $s2,32($sp)
.L000006e8:
    sd         $s7,0($a6)
    lw         $t1,8($s2)
    addiu      $t1,$t1,1
    sw         $t1,8($s2)
    lw         $t0,28($s3)
    sd         $s2,16($s3)
    move       $a4,$s0
    addiu      $t0,$t0,1
    sw         $t0,28($s3)
.L0000070c:
    ld         $s2,32($sp)
.L00000710:
    ld         $s3,0($sp)
    ld         $s6,40($sp)
    ld         $s4,8($sp)
    ld         $s7,16($sp)
    ld         $ra,56($sp)
    ld         $s0,48($sp)
    move       $v0,$a4
    ld         $s1,24($sp)
    ld         $s5,64($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0000073c:
    li         $s1,1
    sllv       $s6,$s1,$s4
    move       $a1,$zero
    dsll       $s6,$s6,0x3
    jal        kmem_alloc
    move       $a0,$s6
    sd         $v0,0($s0)
    bnez       $v0, .L000007e4
    li         $a4,210
    move       $a1,$zero
.L00000764:
    daddu      $t9,$a1,$s0
    addiu      $a1,$a1,1
    sltiu      $t8,$a1,32
    sb         $a4,0($t9)
    beqz       $t8, .L000007a0
    daddu      $at,$a1,$s0
    addiu      $a1,$a1,1
    sltiu      $ra,$a1,32
    sb         $a4,0($at)
    beqz       $ra, .L000007a0
    daddu      $v0,$a1,$s0
    addiu      $a1,$a1,1
    sltiu      $v1,$a1,32
    bnez       $v1, .L00000764
    sb         $a4,0($v0)
.L000007a0:
    move       $a0,$s0
    jal        kmem_free
    li         $a1,32
    b          .L0000070c
    li         $a4,-1
.L000007b4:
    b          .L00000710
    ld         $s2,32($sp)
.L000007bc:
    move       $a0,$s6
    jal        kmem_alloc
    move       $a1,$zero
    beqz       $v0, .L0000084c
    sd         $v0,0($s2)
    move       $a0,$v0
    jal        bzero
    move       $a1,$s6
    b          .L0000068c
    nop
.L000007e4:
    move       $a0,$v0
    jal        bzero
    move       $a1,$s6
    sw         $s1,8($s0)
    lw         $a0,24($s3)
    lw         $a4,28($s3)
    addiu      $a0,$a0,1
    sw         $a0,24($s3)
    addiu      $a1,$a4,1
    sw         $a1,28($s3)
    sw         $a0,12($s0)
    ld         $v0,0($s3)
    beqz       $v0, .L00000854
    nop
    sd         $v0,16($s0)
    ld         $a5,0($s3)
    ld         $a5,24($a5)
    sd         $a5,24($s0)
    ld         $a3,0($s3)
    sd         $s0,24($a3)
    ld         $a2,24($s0)
    sd         $s0,16($a2)
.L0000083c:
    ld         $a6,0($s0)
    sd         $s7,0($a6)
    b          .L0000070c
    sd         $s0,16($s3)
.L0000084c:
    b          .L0000070c
    li         $a4,-1
.L00000854:
    sd         $s0,16($s0)
    sd         $s0,24($s0)
    b          .L0000083c
    sd         $s0,0($s3)

glabel OdsyDeallocCSetId
    lw         $t2,40($a0)
    daddiu     $sp,$sp,-32
    lw         $a4,24($a0)
    sd         $s1,0($sp)
    move       $s1,$a0
    srav       $a3,$a1,$t2
    li         $a5,1
    subu       $a4,$a4,$a3
    sllv       $t1,$a5,$t2
    slt        $at,$a4,$a3
    ld         $a6,0($a0)
    addiu      $t0,$t1,-1
    addiu      $a4,$a4,-2
    sd         $s0,8($sp)
    beqz       $at, .L00000920
    and        $a7,$a1,$t0
    move       $a3,$zero
    bltz       $a4, .L000008c0
    ld         $s0,24($a6)
.L000008b0:
    addiu      $a3,$a3,1
    slt        $a6,$a4,$a3
    beqz       $a6, .L000008b0
    ld         $s0,24($s0)
.L000008c0:
    ld         $at,0($s0)
.L000008c4:
    dsll       $v0,$a7,0x3
    daddu      $at,$at,$v0
    sd         $zero,0($at)
    lw         $t9,8($s0)
    addiu      $t9,$t9,-1
    sw         $t9,8($s0)
    lw         $t8,28($s1)
    addiu      $t8,$t8,-1
    sw         $t8,28($s1)
    lw         $t3,8($s0)
    beqz       $t3, .L00000944
    nop
.L000008f4:
    ld         $a0,16($s1)
    lw         $v1,12($s0)
    lw         $a0,12($a0)
    slt        $v1,$v1,$a0
    beqz       $v1, .L00000910
    nop
    sd         $s0,16($s1)
.L00000910:
    ld         $s0,8($sp)
    ld         $s1,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000920:
    move       $s0,$a6
    blez       $a3, .L000008c0
    move       $a0,$zero
.L0000092c:
    addiu      $a0,$a0,1
    slt        $a2,$a0,$a3
    bnez       $a2, .L0000092c
    ld         $s0,16($s0)
    b          .L000008c4
    ld         $at,0($s0)
.L00000944:
    lw         $a1,40($s1)
    sllv       $a1,$a5,$a1
    dsll       $a1,$a1,0x3
    li         $a0,211
    move       $a3,$zero
    beqz       $a1, .L000009b0
    sd         $ra,16($sp)
    ld         $a2,0($s0)
.L00000964:
    daddu      $a2,$a3,$a2
    sb         $a0,0($a2)
    lw         $a1,40($s1)
    sllv       $a1,$a5,$a1
    addiu      $a3,$a3,1
    dsll       $a1,$a1,0x3
    sltu       $a2,$a3,$a1
    beqz       $a2, .L000009b0
    nop
    ld         $a2,0($s0)
    daddu      $a2,$a3,$a2
    sb         $a0,0($a2)
    lw         $a1,40($s1)
    sllv       $a1,$a5,$a1
    addiu      $a3,$a3,1
    dsll       $a1,$a1,0x3
    sltu       $a4,$a3,$a1
    bnezl      $a4, .L00000964
    ld         $a2,0($s0)
.L000009b0:
    jal        kmem_free
    ld         $a0,0($s0)
    ld         $ra,16($sp)
    b          .L000008f4
    sd         $zero,0($s0)

glabel OdsyLookupCSetId
    lw         $a6,40($a0)
    move       $v0,$zero
    beqz       $a6, .L00000a70
    srav       $a4,$a1,$a6
    li         $t9,1
    sllv       $t3,$t9,$a6
    addiu      $t2,$t3,-1
    lw         $at,24($a0)
    and        $t0,$a1,$t2
    subu       $t8,$at,$a4
    slt        $at,$a4,$at
    addiu      $a7,$t8,-1
    slti       $t1,$t8,2
    beqz       $at, .L00000a78
    slt        $v0,$t8,$a4
    beqz       $v0, .L00000a24
    ld         $a5,0($a0)
    move       $a0,$zero
    bnez       $t1, .L00000a50
    ld         $v0,24($a5)
    beqz       $v0, .L00000a80
    nop
    b          .L00000a90
    addiu      $a0,$a0,1
.L00000a24:
    blez       $a4, .L00000a50
    move       $v0,$a5
    beqz       $a5, .L00000a50
    move       $a0,$zero
    b          .L00000a44
    addiu      $a0,$a0,1
.L00000a3c:
    beqz       $v0, .L00000a80
    addiu      $a0,$a0,1
.L00000a44:
    slt        $v1,$a0,$a4
    bnez       $v1, .L00000a3c
    ld         $v0,16($v0)
.L00000a50:
    beqz       $v0, .L00000a80
    nop
    ld         $a0,0($v0)
    beqz       $a0, .L00000a70
    move       $v0,$zero
    dsll       $v0,$t0,0x3
    daddu      $v0,$a0,$v0
    ld         $v0,0($v0)
.L00000a70:
    jr         $ra
    nop
.L00000a78:
    jr         $ra
    move       $v0,$zero
.L00000a80:
    jr         $ra
    move       $v0,$zero
.L00000a88:
    beqz       $v0, .L00000a80
    addiu      $a0,$a0,1
.L00000a90:
    slt        $v1,$a0,$a7
    bnez       $v1, .L00000a88
    ld         $v0,24($v0)
    b          .L00000a50
    nop

glabel OdsyInit32kSlotMask
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s8,16($sp)
    move       $s8,$a1
    sd         $ra,8($sp)
    jal        bzero
    li         $a1,4112
    sd         $s8,0($s0)
    sw         $zero,8($s0)
    lw         $at,0($gp)
    li         $a3,-4
    li         $a1,1
    ld         $ra,8($sp)
    ld         $s8,16($sp)
    bnez       $at, .L00000b1c
    li         $a2,-2
    sd         $a3,16($s0)
.L00000aec:
    dsll       $v1,$a1,0x3
    addiu      $a1,$a1,1
    slti       $v0,$a1,512
    daddu      $v1,$s0,$v1
    sd         $a2,16($v1)
    beqz       $v0, .L00000b1c
    dsll       $a0,$a1,0x3
    addiu      $a1,$a1,1
    slti       $a3,$a1,512
    daddu      $a0,$s0,$a0
    bnez       $a3, .L00000aec
    sd         $a2,16($a0)
.L00000b1c:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel OdsyAlloc32kSlot
    ld         $a4,0($a0)
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    move       $s0,$a0
    beqz       $a4, .L00000b4c
    sd         $ra,16($sp)
    move       $a0,$a4
    jal        psema
    li         $a1,25
.L00000b4c:
    lw         $a0,8($s0)
    slti       $at,$a0,512
    dsll       $v0,$a0,0x3
    beqz       $at, .L00000bd8
    daddu      $a6,$s0,$v0
    bltz       $a0, .L00000bd8
    nop
    ld         $a5,16($a6)
    andi       $v1,$a5,0x1
    li         $a4,1
    sll        $t0,$a0,0x6
    move       $a3,$zero
    beqz       $v1, .L00000c34
    nop
    li         $a4,1
    move       $a3,$zero
.L00000b8c:
    dsll       $a4,$a4,0x1
    and        $a1,$a5,$a4
    beqz       $a1, .L00000ba4
    addiu      $a3,$a3,1
    slti       $a2,$a3,64
    bnez       $a2, .L00000b8c
.L00000ba4:
    nor        $a7,$a5,$a4
.L00000ba8:
    or         $t1,$a5,$a4
    sd         $t1,16($a6)
    addu       $t0,$a3,$t0
    beqz       $a7, .L00000c00
    sd         $t0,0($sp)
.L00000bbc:
    ld         $a4,0($s0)
.L00000bc0:
    beqz       $a4, .L00000bd0
    nop
    jal        vsema
    move       $a0,$a4
.L00000bd0:
    b          .L00000bf0
    ld         $v0,0($sp)
.L00000bd8:
    ld         $a4,0($s0)
    beqz       $a4, .L00000bf0
    li         $v0,-1
    jal        vsema
    move       $a0,$a4
    li         $v0,-1
.L00000bf0:
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000c00:
    lw         $a0,8($s0)
    slti       $a4,$a0,511
    addiu      $a0,$a0,1
    dsll       $a3,$a0,0x3
    sw         $a0,8($s0)
    beqz       $a4, .L00000bbc
    daddu      $a3,$s0,$a3
    ld         $a1,16($a3)
    li         $a4,-1
    bne        $a4, $a1, .L00000bbc
    nop
    b          .L00000c50
    addiu      $a0,$a0,1
.L00000c34:
    b          .L00000ba8
    nor        $a7,$a5,$a4
.L00000c3c:
    dsll       $a2,$a0,0x3
    daddu      $a2,$s0,$a2
    ld         $a2,16($a2)
    bne        $a4, $a2, .L00000c7c
    addiu      $a0,$a0,1
.L00000c50:
    slti       $a3,$a0,512
    beqz       $a3, .L00000c7c
    sw         $a0,8($s0)
    dsll       $a5,$a0,0x3
    daddu      $a5,$s0,$a5
    ld         $a5,16($a5)
    bne        $a4, $a5, .L00000c7c
    addiu      $a0,$a0,1
    slti       $a6,$a0,512
    bnez       $a6, .L00000c3c
    sw         $a0,8($s0)
.L00000c7c:
    b          .L00000bc0
    ld         $a4,0($s0)

glabel OdsyFree32kSlot
    daddiu     $sp,$sp,-32
    sd         $s2,16($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s1,8($sp)
    move       $s1,$a1
    beqz       $a0, .L00000d28
    sd         $ra,24($sp)
    sra        $s2,$a1,0x6
    sltiu      $at,$s2,512
    beqz       $at, .L00000d3c
    ld         $a1,-30720($gp)
    ld         $a0,0($a0)
    beqz       $a0, .L00000cc8
    nop
    jal        psema
    li         $a1,25
.L00000cc8:
    dsll       $a0,$s2,0x3
    li         $a1,1
    daddu      $a0,$s0,$a0
    dsllv      $a1,$a1,$s1
    ld         $v1,16($a0)
    nor        $a1,$a1,$zero
    and        $v1,$v1,$a1
    sd         $v1,16($a0)
    lw         $v0,8($s0)
    slt        $v0,$s2,$v0
    beqz       $v0, .L00000cfc
    nop
    sw         $s2,8($s0)
.L00000cfc:
    ld         $a0,0($s0)
    beqz       $a0, .L00000d14
    ld         $ra,24($sp)
    jal        vsema
    nop
    ld         $ra,24($sp)
.L00000d14:
    ld         $s2,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000d28:
    ld         $a1,-30720($gp)
    jal        cmn_err
    li         $a0,4
    b          .L00000d14
    ld         $ra,24($sp)
.L00000d3c:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,48
    b          .L00000d14
    ld         $ra,24($sp)

glabel odsyHashAlloc
    dsll       $a1,$a0,0x2
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    dsubu      $a0,$a1,$a0
    move       $a1,$zero
    dsll       $a0,$a0,0x3
    sd         $ra,8($sp)
    jal        kmem_alloc
    daddiu     $a0,$a0,8
    move       $a2,$zero
    beqz       $v0, .L00000ddc
    ld         $ra,8($sp)
    blez       $s0, .L00000ddc
    sw         $s0,0($v0)
.L00000d8c:
    dsll       $a5,$a2,0x2
    dsubu      $a5,$a5,$a2
    addiu      $a2,$a2,1
    dsll       $a5,$a5,0x3
    slt        $a3,$a2,$s0
    daddu      $a5,$v0,$a5
    daddiu     $a4,$a5,8
    sd         $a4,8($a5)
    sd         $a4,16($a5)
    beqz       $a3, .L00000ddc
    dsll       $a7,$a2,0x2
    dsubu      $a7,$a7,$a2
    addiu      $a2,$a2,1
    dsll       $a7,$a7,0x3
    slt        $t0,$a2,$s0
    daddu      $a7,$v0,$a7
    daddiu     $a6,$a7,8
    sd         $a6,8($a7)
    bnez       $t0, .L00000d8c
    sd         $a6,16($a7)
.L00000ddc:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsyHashDealloc
    lw         $a5,0($a0)
    dsll       $a4,$a5,0x2
    dsubu      $a4,$a4,$a5
    dsll       $a4,$a4,0x3
    move       $a3,$zero
    daddiu     $a1,$a4,8
    daddiu     $sp,$sp,-16
    li         $a5,212
    sd         $ra,0($sp)
    beqz       $a1, .L00000e44
    daddiu     $a4,$a4,7
.L00000e14:
    daddu      $a7,$a3,$a0
    addiu      $a3,$a3,1
    sltu       $a6,$a4,$a3
    sb         $a5,0($a7)
    pref       0x1,256($a7)
    bnez       $a6, .L00000e44
    daddu      $t0,$a3,$a0
    addiu      $a3,$a3,1
    sltu       $t1,$a4,$a3
    pref       0x1,256($t0)
    beqz       $t1, .L00000e14
    sb         $a5,0($t0)
.L00000e44:
    jal        kmem_free
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsyHashLookup
    dsll       $a5,$a1,0x2
    dsubu      $a5,$a5,$a1
    dsll       $a5,$a5,0x3
    daddu      $a5,$a0,$a5
    ld         $v0,8($a5)
    daddiu     $a5,$a5,8
    beq        $a5, $v0, .L00000e90
    nop
.L00000e78:
    lw         $a6,16($v0)
    beq        $a6, $a2, .L00000e94
    nop
    ld         $v0,0($v0)
    bne        $a5, $v0, .L00000e78
    nop
.L00000e90:
    move       $v0,$zero
.L00000e94:
    jr         $ra
    nop

glabel odsyHashInsert
    dsll       $at,$a1,0x2
    dsubu      $at,$at,$a1
    dsll       $at,$at,0x3
    daddu      $at,$a0,$at
    ld         $a0,8($at)
    sd         $a2,8($a0)
    ld         $v1,8($at)
    daddiu     $v0,$at,8
    sd         $v0,8($a2)
    sd         $v1,0($a2)
    jr         $ra
    sd         $a2,8($at)

glabel odsyHashRemove
    ld         $a1,8($a0)
    ld         $v1,0($a0)
    sd         $v1,0($a1)
    ld         $v0,0($a0)
    ld         $at,8($a0)
    sd         $at,8($v0)
    sd         $zero,8($a0)
    jr         $ra
    sd         $zero,0($a0)
