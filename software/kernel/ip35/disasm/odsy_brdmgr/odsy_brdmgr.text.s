.section .text
.set noat
.set noreorder


glabel gfP_OdsyBRDMGRsetColors
    daddiu     $sp,$sp,-144
    sd         $s1,72($sp)
    sd         $s0,64($sp)
    sd         $s6,48($sp)
    move       $at,$a2
    li         $a2,16
    ld         $s6,40($a0)
    move       $s0,$a3
    daddiu     $a1,$sp,0
    sd         $ra,56($sp)
    move       $a0,$at
    jal        copyin
    ld         $s1,824($s6)
    sd         $s2,88($sp)
    sd         $s8,96($sp)
    sd         $s3,104($sp)
    sd         $s4,112($sp)
    sd         $s5,120($sp)
    bnez       $v0, .L00000648
    sd         $s7,128($sp)
    lhu        $v0,0($sp)
    beqz       $v0, .L000002f0
    move       $a1,$zero
    sll        $s2,$v0,0x3
    jal        kmem_alloc
    move       $a0,$s2
    bnez       $v0, .L000000a8
    sd         $v0,80($sp)
    li         $v0,12
    sw         $v0,0($s0)
.L00000078:
    ld         $s6,48($sp)
    ld         $s2,88($sp)
    ld         $s8,96($sp)
    ld         $s3,104($sp)
    ld         $s4,112($sp)
    ld         $s0,64($sp)
    ld         $ra,56($sp)
    ld         $s1,72($sp)
    ld         $s5,120($sp)
    ld         $s7,128($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L000000a8:
    move       $a1,$v0
    ld         $a0,8($sp)
    jal        copyin
    move       $a2,$s2
    bnez       $v0, .L00000660
    lui        $s7,0x1
    daddu      $s7,$s6,$s7
    lw         $a0,-19328($s7)
    sd         $s2,40($sp)
    beqz       $a0, .L000003c0
    sd         $s1,32($sp)
    lhu        $a6,0($sp)
.L000000d8:
    ld         $t8,80($sp)
    dsll       $a6,$a6,0x3
    move       $s2,$t8
    daddu      $a6,$t8,$a6
    move       $s1,$t8
    sltu       $t8,$t8,$a6
    beqz       $t8, .L000002cc
    sd         $s0,24($sp)
    lui        $a2,0x7000
    move       $s0,$zero
    li         $s4,-1
    li         $s3,-1
    dsll32     $s4,$s4,0x0
    ld         $ra,32($sp)
    lui        $s8,0x40
    dsrl32     $s3,$s3,0x0
    lw         $s5,16($sp)
    b          .L0000067c
    daddu      $s8,$s8,$ra
.L00000124:
    dsll32     $t8,$a6,0x0
    dsrl32     $t8,$t8,0x0
    and        $t8,$s3,$t8
    or         $t8,$t8,$t9
    sd         $t8,0($s8)
    sync
.L0000013c:
    beqz       $a7, .L00000220
.L00000140:
    lhu        $a7,0($sp)
.L00000144:
    ld         $a6,80($sp)
    dsll       $a7,$a7,0x3
    daddu      $a6,$a6,$a7
.L00000150:
    daddiu     $s2,$s2,8
    sltu       $t0,$s2,$a6
    daddiu     $t2,$a6,-8
    sra        $a7,$s0,0x1f
    beqz       $t0, .L00000264
    xor        $t1,$s0,$a7
.L00000168:
    beq        $s2, $t2, .L00000180
    subu       $t0,$t1,$a7
    lw         $t8,0($s2)
    lw         $t3,8($s2)
    addiu      $t8,$t8,1
    beq        $t3, $t8, .L00000150
.L00000180:
    andi       $t9,$t0,0x1f
    xor        $t9,$t9,$a7
    subu       $t9,$t9,$a7
    beqz       $t9, .L000002fc
    dsll32     $t9,$s5,0x0
.L00000194:
    dsubu      $t1,$s2,$s1
    sltu       $a7,$s2,$s1
    dsra       $t1,$t1,0x3
    andi       $t0,$s0,0x1
    lw         $a6,0($s1)
    daddiu     $t1,$t1,1
    addiu      $s0,$s0,1
    sll        $t1,$t1,0x0
    sll        $a6,$a6,0xe
    andi       $t1,$t1,0x3fff
    and        $t9,$s4,$t9
    or         $a6,$a6,$t1
    bnez       $t0, .L00000124
    or         $a6,$a2,$a6
    b          .L0000013c
    move       $s5,$a6
.L000001d4:
    ld         $a0,32($sp)
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    bnez       $v0, .L00000288
    lui        $a2,0x7000
    andi       $t2,$s0,0x1
    beqz       $t2, .L000003d8
    nop
.L000001f4:
    lwu        $t3,4($s1)
    dsll32     $t8,$s5,0x0
    and        $t8,$s4,$t8
    and        $t3,$s3,$t3
    or         $t3,$t3,$t8
    sd         $t3,0($s8)
    sync
.L00000210:
    daddiu     $s1,$s1,8
    sltu       $t8,$s2,$s1
    bnez       $t8, .L00000140
    addiu      $s0,$s0,1
.L00000220:
    sra        $ra,$s0,0x1f
    xor        $t9,$s0,$ra
    subu       $t9,$t9,$ra
    andi       $t9,$t9,0x1f
    xor        $t9,$t9,$ra
    subu       $t9,$t9,$ra
    beqz       $t9, .L000001d4
    andi       $a6,$s0,0x1
    bnez       $a6, .L000001f4
    daddiu     $ra,$s1,8
    sltu       $at,$s2,$ra
    addiu      $s0,$s0,1
    lw         $s5,4($s1)
    beqz       $at, .L00000220
    move       $s1,$ra
    b          .L00000144
    lhu        $a7,0($sp)
.L00000264:
    andi       $v0,$s0,0x1
    beqz       $v0, .L000002cc
    ld         $a0,32($sp)
    jal        odsy_poll_dfifo_level
    li         $a1,15
    beqz       $v0, .L000002ac
    sltu       $a3,$zero,$v0
    beqz       $a3, .L000002cc
    nop
.L00000288:
    lw         $v1,-19328($s7)
    beqz       $v1, .L00000318
    ld         $a0,80($sp)
.L00000294:
    jal        kmem_free
    ld         $a1,40($sp)
    ld         $a0,24($sp)
    li         $v0,5
    b          .L00000078
    sw         $v0,0($a0)
.L000002ac:
    dsll32     $a2,$s5,0x0
    lui        $a1,0x7000
    and        $a2,$s4,$a2
    or         $a1,$a1,$a2
    sd         $a1,0($s8)
    sync
    bnez       $a3, .L00000288
    nop
.L000002cc:
    lw         $a3,-19328($s7)
    beqz       $a3, .L0000036c
    ld         $s0,24($sp)
    ld         $a0,80($sp)
.L000002dc:
    jal        kmem_free
    ld         $a1,40($sp)
    sw         $zero,0($s0)
    b          .L00000078
    move       $v0,$zero
.L000002f0:
    sw         $zero,0($s0)
    b          .L00000078
    move       $v0,$zero
.L000002fc:
    ld         $a0,32($sp)
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    bnez       $v0, .L00000288
    lui        $a2,0x7000
    b          .L00000194
    dsll32     $t9,$s5,0x0
.L00000318:
    li         $s0,0x8540
    daddu      $s0,$s6,$s0
    jal        mutex_spinlock
    move       $a0,$s0
    ld         $t8,-31416($s7)
    move       $s2,$v0
    li         $s1,0x8530
    beqz       $t8, .L000003e0
    daddu      $s1,$s6,$s1
    move       $a0,$s0
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s6)
    beqz       $v0, .L00000418
    nop
.L0000035c:
    jal        vsema
    move       $a0,$s1
    b          .L00000294
    ld         $a0,80($sp)
.L0000036c:
    li         $s2,0x8540
    daddu      $s2,$s6,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s7)
    move       $s3,$v0
    li         $s1,0x8530
    beqz       $t8, .L000003fc
    daddu      $s1,$s6,$s1
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s6)
    beqz       $v0, .L0000052c
    nop
.L000003b0:
    jal        vsema
    move       $a0,$s1
    b          .L000002dc
    ld         $a0,80($sp)
.L000003c0:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s6,$a0
    b          .L000000d8
    lhu        $a6,0($sp)
.L000003d8:
    b          .L00000210
    lw         $s5,4($s1)
.L000003e0:
    jal        vsema
    move       $a0,$s1
    move       $a0,$s0
    jal        mutex_spinunlock
    move       $a1,$s2
    b          .L00000294
    ld         $a0,80($sp)
.L000003fc:
    jal        vsema
    move       $a0,$s1
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s3
    b          .L000002dc
    ld         $a0,80($sp)
.L00000418:
    jal        mutex_spinlock
    move       $a0,$s0
    lw         $a6,-19664($s7)
    lhu        $a7,-31408($s7)
    srl        $t0,$a6,0x5
    andi       $t0,$t0,0x1
    xor        $a7,$a7,$t0
    sltu       $a7,$zero,$a7
    beqz       $a7, .L000004b4
    move       $a1,$v0
    li         $t9,-3
    and        $t9,$a6,$t9
    sw         $t9,-19664($s7)
    ld         $ra,824($s6)
    dsll32     $t9,$t9,0x0
    ld         $t1,-30720($gp)
    lui        $t2,0x40
    dsrl32     $t9,$t9,0x0
    daddu      $ra,$t2,$ra
    and        $t9,$s3,$t9
    or         $t9,$t1,$t9
    sd         $t9,0($ra)
    sync
    lhu        $t8,-31408($s7)
    lw         $t3,-19664($s7)
    li         $t9,-33
    andi       $t8,$t8,0x1
    and        $t3,$t3,$t9
    sll        $t8,$t8,0x5
    or         $t3,$t3,$t8
    sw         $t3,-19664($s7)
    ld         $t8,824($s6)
    dsll32     $t3,$t3,0x0
    dsrl32     $t3,$t3,0x0
    daddu      $t2,$t2,$t8
    and        $t3,$s3,$t3
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
.L000004b4:
    ld         $v0,824($s6)
    lui        $at,0x40
    ld         $ra,-31416($s7)
    daddu      $at,$at,$v0
    sd         $ra,0($at)
    sync
    beqz       $a7, .L00000508
    li         $a6,-2
    lw         $v1,-19664($s7)
    and        $v1,$a6,$v1
    sw         $v1,-19664($s7)
    ld         $a3,824($s6)
    dsll32     $v1,$v1,0x0
    ld         $a2,-30720($gp)
    lui        $a0,0x40
    dsrl32     $v1,$v1,0x0
    daddu      $a0,$a0,$a3
    and        $v1,$s3,$v1
    or         $v1,$v1,$a2
    sd         $v1,0($a0)
    sync
.L00000508:
    lw         $a0,-19664($s7)
    ori        $a0,$a0,0x2
    sd         $zero,-31416($s7)
    and        $a0,$a6,$a0
    sw         $a0,-19664($s7)
    jal        mutex_spinunlock
    move       $a0,$s0
    b          .L0000035c
    nop
.L0000052c:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a6,-19664($s7)
    lhu        $a3,-31408($s7)
    srl        $a4,$a6,0x5
    andi       $a4,$a4,0x1
    xor        $a3,$a3,$a4
    sltu       $a3,$zero,$a3
    beqz       $a3, .L000005d0
    move       $a1,$v0
    li         $t0,-1
    li         $t8,-3
    dsrl32     $t0,$t0,0x0
    and        $t8,$a6,$t8
    sw         $t8,-19664($s7)
    ld         $t9,824($s6)
    dsll32     $t8,$t8,0x0
    ld         $a5,-30720($gp)
    lui        $a7,0x40
    dsrl32     $t8,$t8,0x0
    daddu      $t9,$a7,$t9
    and        $t8,$t0,$t8
    or         $t8,$a5,$t8
    sd         $t8,0($t9)
    sync
    lhu        $t3,-31408($s7)
    lw         $t2,-19664($s7)
    li         $t8,-33
    andi       $t3,$t3,0x1
    and        $t2,$t2,$t8
    sll        $t3,$t3,0x5
    or         $t2,$t2,$t3
    sw         $t2,-19664($s7)
    ld         $t1,824($s6)
    dsll32     $t2,$t2,0x0
    dsrl32     $t2,$t2,0x0
    daddu      $a7,$a7,$t1
    and        $t0,$t0,$t2
    or         $a5,$a5,$t0
    sd         $a5,0($a7)
    sync
.L000005d0:
    ld         $t3,824($s6)
    lui        $t2,0x40
    ld         $t1,-31416($s7)
    daddu      $t2,$t2,$t3
    sd         $t1,0($t2)
    sync
    beqz       $a3, .L00000624
    li         $a6,-2
    lw         $t8,-19664($s7)
    li         $t9,-1
    and        $t8,$a6,$t8
    sw         $t8,-19664($s7)
    dsrl32     $t9,$t9,0x0
    ld         $at,824($s6)
    ld         $ra,-30720($gp)
    and        $t8,$t8,$t9
    lui        $t9,0x40
    daddu      $t9,$t9,$at
    or         $t8,$t8,$ra
    sd         $t8,0($t9)
    sync
.L00000624:
    lw         $t9,-19664($s7)
    sd         $zero,-31416($s7)
    move       $a0,$s2
    ori        $t9,$t9,0x2
    and        $t9,$a6,$t9
    jal        mutex_spinunlock
    sw         $t9,-19664($s7)
    b          .L000003b0
    nop
.L00000648:
    ld         $a1,-30720($gp)
    jal        cmn_err
    li         $a0,4
    li         $v0,14
    b          .L00000078
    sw         $v0,0($s0)
.L00000660:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,40
    li         $v0,14
    b          .L00000078
    sw         $v0,0($s0)
.L0000067c:
    sra        $a7,$s0,0x1f
    daddiu     $t2,$a6,-8
    xor        $t1,$s0,$a7
    b          .L00000168
    nop

glabel odsyProbeFb
    lw         $a6,0($a1)
    andi       $a5,$a6,0xf
    lw         $a7,4($a1)
    srl        $a6,$a6,0x4
    sltu       $a5,$zero,$a5
    li         $t0,-2
    addu       $a5,$a5,$a6
    andi       $a6,$a7,0xf
    srl        $a7,$a7,0x4
    addiu      $a5,$a5,1
    sltu       $a6,$zero,$a6
    addu       $a6,$a6,$a7
    and        $a5,$a5,$t0
    multu      $a5,$a6
    li         $t8,8
    li         $t3,-4
    lw         $t1,252($a0)
    li         $t2,-4
    daddiu     $sp,$sp,-48
    lw         $a4,1360($a0)
    li         $t9,1
    li         $v0,-4
    sd         $a4,8($sp)
    li         $at,16
    srl        $a4,$a4,0x9
    lw         $a7,8($a1)
    sd         $v0,16($sp)
    sll        $a3,$t1,0x14
    and        $v0,$a4,$v0
    sd         $v0,24($sp)
    li         $t0,-4
    mflo       $v0
    lw         $a5,12($a1)
    beq        $a7, $at, .L000007d0
    andi       $a6,$a4,0x3
    beq        $a7, $t8, .L000007ec
    lw         $a7,0($sp)
.L00000724:
    beqz       $a6, .L00000738
    addu       $a6,$a4,$a7
    ld         $a4,24($sp)
    addiu      $a4,$a4,4
    addu       $a6,$a4,$a7
.L00000738:
    andi       $at,$a6,0x3
    srl        $a7,$v0,0x4
    beqz       $at, .L0000074c
    and        $t8,$a6,$t0
    addiu      $a6,$t8,4
.L0000074c:
    andi       $a4,$v0,0xf
    sltu       $a4,$zero,$a4
    addu       $a4,$a4,$a7
    addu       $a4,$a6,$a4
    andi       $v1,$a4,0x3
    beqz       $v1, .L0000076c
    and        $a7,$a4,$t3
    addiu      $a4,$a7,4
.L0000076c:
    andi       $a6,$a4,0x3
    beqz       $a6, .L0000077c
    and        $a6,$a4,$t2
    addiu      $a4,$a6,4
.L0000077c:
    beqz       $a5, .L000007e4
    nop
    beq        $a5, $t9, .L00000800
    lw         $a5,4($sp)
.L0000078c:
    multu      $v0,$a5
    mflo       $a6
    srl        $a6,$a6,0x2
    addu       $a6,$a4,$a6
    andi       $a7,$a6,0x3
    move       $v0,$zero
    beqz       $a7, .L000007b8
    move       $a1,$a6
    li         $a1,-4
    and        $a1,$a6,$a1
    addiu      $a1,$a1,4
.L000007b8:
    sll        $a2,$a1,0xd
    sltu       $a2,$a2,$a3
    beqz       $a2, .L00000808
    sd         $ra,32($sp)
.L000007c8:
    jr         $ra
    daddiu     $sp,$sp,48
.L000007d0:
    andi       $a7,$v0,0x1
    srl        $t8,$v0,0x1
    sltu       $a7,$zero,$a7
    b          .L00000724
    addu       $a7,$a7,$t8
.L000007e4:
    b          .L0000078c
    move       $a5,$zero
.L000007ec:
    andi       $a7,$v0,0x3
    srl        $t8,$v0,0x2
    sltu       $a7,$zero,$a7
    b          .L00000724
    addu       $a7,$a7,$t8
.L00000800:
    b          .L0000078c
    li         $a5,2
.L00000808:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,80
    ld         $ra,32($sp)
    b          .L000007c8
    li         $v0,-1

glabel odsyConfigFb
    daddiu     $sp,$sp,-112
    sd         $s2,72($sp)
    sd         $s3,80($sp)
    sd         $ra,88($sp)
    lw         $at,16($a1)
    sd         $s0,40($sp)
    move       $s0,$a0
    sd         $s1,48($sp)
    move       $s1,$a1
    beqz       $at, .L00000860
    sd         $s4,96($sp)
    jal        odsyProbeFb
    nop
    b          .L00000be8
    move       $a0,$v0
.L00000860:
    lw         $a2,4($a1)
    lw         $t8,0($a1)
    li         $a0,-2
    andi       $a1,$a2,0xf
    andi       $t3,$t8,0xf
    srl        $t8,$t8,0x4
    sltu       $t3,$zero,$t3
    srl        $a2,$a2,0x4
    addu       $t3,$t3,$t8
    sltu       $a1,$zero,$a1
    addiu      $t3,$t3,1
    addu       $a1,$a1,$a2
    and        $t3,$a0,$t3
    multu      $t3,$a1
    lw         $v0,8($s1)
    li         $v1,32
    mflo       $a1
    beq        $v0, $v1, .L00000c14
    li         $t8,16
    beq        $v0, $t8, .L00000cfc
    li         $a5,2
    li         $t9,8
    beq        $v0, $t9, .L00000d70
    li         $a5,2
    lw         $v0,0($sp)
.L000008c4:
    lw         $a7,1360($s0)
    srl        $a7,$a7,0x9
    andi       $ra,$a7,0x3
    beqz       $ra, .L000008e0
    li         $t0,-4
    and        $a7,$a7,$t0
    addiu      $a7,$a7,4
.L000008e0:
    sll        $at,$a7,0x9
    sw         $at,1360($s0)
    lw         $ra,8($s1)
    sb         $ra,1321($s0)
    lw         $t9,0($s1)
    sw         $t9,1336($s0)
    lw         $t8,4($s1)
    sw         $t8,1340($s0)
    lw         $t8,0($s1)
    andi       $s3,$t8,0xf
    sltu       $s3,$zero,$s3
    srl        $t8,$t8,0x4
    addu       $s3,$s3,$t8
    sw         $s3,1348($s0)
    lw         $t8,4($s1)
    daddiu     $t2,$s0,1304
    sd         $t2,2136($s0)
    addu       $a0,$a7,$v0
    sw         $zero,1332($s0)
    move       $t0,$a0
    andi       $t2,$a0,0x3
    sw         $zero,1328($s0)
    sw         $zero,1324($s0)
    li         $s3,1
    andi       $t1,$t8,0xf
    sw         $s3,1344($s0)
    sltu       $t1,$zero,$t1
    srl        $t8,$t8,0x4
    addu       $t1,$t1,$t8
    beqz       $t2, .L00000968
    sw         $t1,1352($s0)
    li         $t0,-4
    and        $t0,$a0,$t0
    addiu      $t0,$t0,4
.L00000968:
    sll        $a6,$t0,0x9
    sw         $a6,1496($s0)
    sb         $a5,1457($s0)
    lw         $a4,0($s1)
    sw         $a4,1472($s0)
    lw         $a3,4($s1)
    sw         $a3,1476($s0)
    lw         $a3,0($s1)
    andi       $a2,$a3,0xf
    sltu       $a2,$zero,$a2
    srl        $a3,$a3,0x4
    andi       $a0,$a1,0xf
    addu       $a2,$a2,$a3
    sw         $a2,1484($s0)
    sltu       $a0,$zero,$a0
    srl        $a2,$a1,0x4
    lw         $t8,4($s1)
    addu       $a0,$a0,$a2
    daddiu     $a2,$s0,1440
    sd         $a2,2144($s0)
    addu       $a0,$t0,$a0
    sw         $zero,1468($s0)
    move       $v0,$a0
    sw         $zero,1464($s0)
    andi       $t2,$a0,0x3
    sw         $zero,1460($s0)
    andi       $t1,$t8,0xf
    sw         $s3,1480($s0)
    sltu       $t1,$zero,$t1
    srl        $t8,$t8,0x4
    addu       $t1,$t1,$t8
    beqz       $t2, .L000009f8
    sw         $t1,1488($s0)
    li         $v0,-4
    and        $v0,$a0,$v0
    addiu      $v0,$v0,4
.L000009f8:
    andi       $v1,$v0,0x3
    move       $a4,$v0
    move       $t2,$v0
    beqz       $v1, .L00000a18
    sd         $zero,2152($s0)
    li         $a4,-4
    and        $a4,$v0,$a4
    addiu      $a4,$a4,4
.L00000a18:
    lw         $a0,12($s1)
    beqz       $a0, .L00000c0c
    nop
    beq        $s3, $a0, .L00000cf4
    nop
    beq        $a5, $a0, .L00000d18
    lw         $a6,8($sp)
.L00000a34:
    move       $v0,$zero
.L00000a38:
    dsll       $t8,$v0,0x4
    dsll       $a5,$v0,0x3
    daddu      $t8,$t8,$v0
    addiu      $v0,$v0,1
    dsll       $t8,$t8,0x3
    slti       $t1,$v0,4
    daddu      $t8,$s0,$t8
    daddu      $a5,$s0,$a5
    sw         $zero,1632($t8)
    bnez       $t1, .L00000a38
    sd         $zero,2160($a5)
    beqz       $a6, .L00000b14
    move       $a0,$zero
    li         $t1,8
    move       $v0,$zero
    addiu      $a5,$a6,-1
.L00000a78:
    dsll       $at,$a0,0x3
    dsll       $ra,$a0,0x4
    srl        $v1,$v0,0x2
    daddu      $ra,$ra,$a0
    dsll       $ra,$ra,0x3
    addu       $v1,$a4,$v1
    daddu      $ra,$s0,$ra
    daddu      $at,$s0,$at
    sll        $v1,$v1,0x9
    sw         $v1,1632($ra)
    daddiu     $t9,$ra,1576
    sd         $t9,2160($at)
    sb         $t1,1593($ra)
    lw         $t8,0($s1)
    sw         $t8,1608($ra)
    lw         $a3,4($s1)
    sw         $a3,1612($ra)
    lw         $a3,0($s1)
    andi       $a2,$a3,0xf
    srl        $a3,$a3,0x4
    sltu       $a2,$zero,$a2
    addu       $a2,$a2,$a3
    sw         $a2,1620($ra)
    lw         $a2,4($s1)
    sw         $zero,1604($ra)
    sw         $zero,1600($ra)
    addiu      $a0,$a0,1
    sw         $zero,1596($ra)
    andi       $v1,$a2,0xf
    sw         $s3,1616($ra)
    srl        $a2,$a2,0x4
    sltu       $v1,$zero,$v1
    sltu       $at,$a5,$a0
    addu       $v1,$v1,$a2
    sw         $v1,1624($ra)
    lw         $t9,12($s1)
    addu       $v0,$a1,$v0
    beqz       $at, .L00000a78
    sb         $t9,1595($ra)
.L00000b14:
    multu      $a1,$a6
    mflo       $a0
    srl        $a0,$a0,0x2
    addu       $a0,$a4,$a0
    andi       $at,$a0,0x3
    beqz       $at, .L00000b3c
    move       $v0,$a0
    li         $v0,-4
    and        $v0,$a0,$v0
    addiu      $v0,$v0,4
.L00000b3c:
    lw         $a1,252($s0)
    sll        $a0,$v0,0xd
    sll        $a1,$a1,0x14
    sltu       $a0,$a0,$a1
    sll        $v1,$v0,0x9
    beqz       $a0, .L00001070
    sw         $v1,1088($s0)
    lw         $a0,1360($s0)
    sw         $a0,20($s1)
    subu       $s4,$v0,$a4
    lw         $v1,1496($s0)
    subu       $t8,$a4,$t2
    sll        $s4,$s4,0xd
    sw         $s4,40($s1)
    subu       $t9,$t2,$t0
    sll        $t8,$t8,0xd
    sw         $t8,44($s1)
    subu       $ra,$t0,$a7
    sll        $t9,$t9,0xd
    sw         $t9,36($s1)
    sll        $ra,$ra,0xd
    sw         $ra,32($s1)
    sll        $at,$a7,0xd
    sw         $at,28($s1)
    sw         $v1,24($s1)
    lw         $a3,252($s0)
    lui        $s2,0x1
    daddu      $s2,$s0,$s2
    sll        $a3,$a3,0x14
    sw         $a3,48($s1)
    lw         $a2,-19328($s2)
    sd         $t3,32($sp)
    beqz       $a2, .L00000d88
    ld         $s4,824($s0)
    move       $a0,$s4
.L00000bc8:
    jal        odsy_poll_dfifo_level
    li         $a1,10
    beqz       $v0, .L00000c28
    sd         $s4,64($sp)
    lw         $a1,-19328($s2)
    beqz       $a1, .L00000d20
    li         $s1,0x8540
    li         $a0,-1
.L00000be8:
    ld         $s2,72($sp)
    ld         $s3,80($sp)
    ld         $ra,88($sp)
    ld         $s0,40($sp)
    move       $v0,$a0
    ld         $s4,96($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00000c0c:
    b          .L00000a34
    move       $a6,$zero
.L00000c14:
    move       $v0,$a1
    li         $a5,2
    li         $a2,4
    b          .L000008c4
    sw         $a2,4($sp)
.L00000c28:
    ld         $t2,-30688($gp)
    ld         $t1,-30680($gp)
    lwu        $t3,1496($s0)
    ld         $a5,64($sp)
    li         $a7,-1
    ld         $t8,-30712($gp)
    lui        $s4,0x40
    dsrl32     $a7,$a7,0x0
    ld         $t0,32($sp)
    daddu      $a5,$s4,$a5
    and        $t3,$a7,$t3
    or         $t3,$t3,$t8
    sd         $t3,0($a5)
    sync
    lwu        $t8,1360($s0)
    ld         $t9,-30704($gp)
    ld         $t3,-30696($gp)
    dsll32     $t0,$t0,0x0
    and        $t8,$a7,$t8
    dsrl32     $t0,$t0,0x0
    or         $t8,$t8,$t9
    sd         $t8,0($a5)
    sync
    sd         $t3,0($a5)
    and        $t0,$a7,$t0
    sync
    sd         $t2,0($a5)
    or         $t0,$t0,$t1
    sync
    sd         $t0,0($a5)
    sync
    lw         $a4,4($sp)
    ld         $a6,-30672($gp)
    and        $a4,$a4,$a7
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    lw         $a3,-19328($s2)
    beqz       $a3, .L00000dbc
    li         $a0,0x8540
    lw         $t1,0($s1)
.L00000ccc:
    sh         $t1,232($s0)
    lw         $t0,4($s1)
    sw         $zero,796($s0)
    sh         $zero,798($s0)
    sh         $zero,796($s0)
    sw         $zero,800($s0)
    sh         $s3,804($s0)
    move       $a0,$zero
    b          .L00000be8
    sh         $t0,234($s0)
.L00000cf4:
    b          .L00000a34
    li         $a6,2
.L00000cfc:
    li         $a0,3
    andi       $v0,$a1,0x1
    sltu       $v0,$zero,$v0
    srl        $v1,$a1,0x1
    sw         $a0,4($sp)
    b          .L000008c4
    addu       $v0,$v0,$v1
.L00000d18:
    b          .L00000a34
    li         $a6,4
.L00000d20:
    daddu      $s1,$s0,$s1
    jal        mutex_spinlock
    move       $a0,$s1
    ld         $t8,-31416($s2)
    move       $s4,$v0
    li         $s3,0x8530
    beqz       $t8, .L00000da0
    daddu      $s3,$s0,$s3
    move       $a0,$s1
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00000e10
    nop
.L00000d60:
    jal        vsema
    move       $a0,$s3
    b          .L00000be8
    li         $a0,-1
.L00000d70:
    andi       $v0,$a1,0x3
    sltu       $v0,$zero,$v0
    srl        $v1,$a1,0x2
    sw         $a5,4($sp)
    b          .L000008c4
    addu       $v0,$v0,$v1
.L00000d88:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L00000bc8
    move       $a0,$s4
.L00000da0:
    jal        vsema
    move       $a0,$s3
    move       $a0,$s1
    jal        mutex_spinunlock
    move       $a1,$s4
    b          .L00000be8
    li         $a0,-1
.L00000dbc:
    daddu      $a0,$s0,$a0
    jal        mutex_spinlock
    sd         $a0,24($sp)
    ld         $a1,-31416($s2)
    sd         $v0,56($sp)
    li         $a0,0x8530
    daddu      $a0,$s0,$a0
    beqz       $a1, .L00000f2c
    sd         $a0,16($sp)
    ld         $a0,24($sp)
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L00000f4c
    nop
.L00000e00:
    jal        vsema
    ld         $a0,16($sp)
    b          .L00000ccc
    lw         $t1,0($s1)
.L00000e10:
    jal        mutex_spinlock
    move       $a0,$s1
    lw         $a4,-19664($s2)
    lhu        $a5,-31408($s2)
    srl        $a6,$a4,0x5
    andi       $a6,$a6,0x1
    xor        $a5,$a5,$a6
    sltu       $a5,$zero,$a5
    move       $a1,$v0
    beqz       $a5, .L00000eb4
    lui        $a0,0x40
    li         $t1,-1
    li         $t8,-3
    dsrl32     $t1,$t1,0x0
    and        $t8,$a4,$t8
    sw         $t8,-19664($s2)
    dsll32     $t8,$t8,0x0
    ld         $t9,824($s0)
    ld         $a7,-30720($gp)
    dsrl32     $t8,$t8,0x0
    and        $t8,$t1,$t8
    daddu      $t9,$a0,$t9
    or         $t8,$a7,$t8
    sd         $t8,0($t9)
    sync
    lhu        $t3,-31408($s2)
    lw         $t2,-19664($s2)
    li         $t8,-33
    andi       $t3,$t3,0x1
    and        $t2,$t2,$t8
    sll        $t3,$t3,0x5
    or         $t2,$t2,$t3
    sw         $t2,-19664($s2)
    dsll32     $t2,$t2,0x0
    ld         $t0,824($s0)
    dsrl32     $t2,$t2,0x0
    and        $t1,$t1,$t2
    daddu      $t0,$a0,$t0
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
.L00000eb4:
    ld         $t3,824($s0)
    daddu      $t3,$a0,$t3
    ld         $t2,-31416($s2)
    sd         $t2,0($t3)
    sync
    beqz       $a5, .L00000f04
    nop
    lw         $t9,-19664($s2)
    li         $t8,-2
    and        $t8,$t8,$t9
    sw         $t8,-19664($s2)
    li         $at,-1
    ld         $t9,824($s0)
    ld         $ra,-30720($gp)
    dsrl32     $at,$at,0x0
    and        $t8,$t8,$at
    daddu      $t9,$a0,$t9
    or         $t8,$t8,$ra
    sd         $t8,0($t9)
    sync
.L00000f04:
    lw         $at,-19664($s2)
    li         $ra,-2
    ori        $at,$at,0x2
    sd         $zero,-31416($s2)
    and        $ra,$ra,$at
    sw         $ra,-19664($s2)
    jal        mutex_spinunlock
    move       $a0,$s1
    b          .L00000d60
    nop
.L00000f2c:
    ld         $s2,24($sp)
    jal        vsema
    ld         $s4,56($sp)
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s4
    b          .L00000ccc
    lw         $t1,0($s1)
.L00000f4c:
    jal        mutex_spinlock
    ld         $a0,24($sp)
    lw         $a4,-19664($s2)
    lhu        $a6,-31408($s2)
    srl        $a7,$a4,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    ld         $a5,24($sp)
    beqz       $a6, .L00000ff0
    move       $a1,$v0
    li         $t2,-1
    li         $t9,-3
    dsrl32     $t2,$t2,0x0
    and        $t9,$a4,$t9
    sw         $t9,-19664($s2)
    ld         $ra,824($s0)
    dsll32     $t9,$t9,0x0
    ld         $t0,-30720($gp)
    dsrl32     $t9,$t9,0x0
    daddu      $ra,$s4,$ra
    and        $t9,$t2,$t9
    or         $t9,$t0,$t9
    sd         $t9,0($ra)
    sync
    lhu        $t8,-31408($s2)
    lw         $t3,-19664($s2)
    li         $t9,-33
    andi       $t8,$t8,0x1
    and        $t3,$t3,$t9
    sll        $t8,$t8,0x5
    or         $t3,$t3,$t8
    sw         $t3,-19664($s2)
    ld         $t1,824($s0)
    dsll32     $t3,$t3,0x0
    dsrl32     $t3,$t3,0x0
    daddu      $t1,$s4,$t1
    and        $t2,$t2,$t3
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
.L00000ff0:
    ld         $at,824($s0)
    daddu      $at,$s4,$at
    ld         $ra,-31416($s2)
    sd         $ra,0($at)
    sync
    beqz       $a6, .L00001048
    nop
    lw         $a3,-19664($s2)
    li         $v0,-1
    li         $a2,-2
    dsrl32     $v0,$v0,0x0
    and        $a2,$a2,$a3
    sw         $a2,-19664($s2)
    ld         $v1,824($s0)
    dsll32     $a2,$a2,0x0
    ld         $a0,-30720($gp)
    dsrl32     $a2,$a2,0x0
    daddu      $v1,$s4,$v1
    and        $v0,$v0,$a2
    or         $v0,$v0,$a0
    sd         $v0,0($v1)
    sync
.L00001048:
    lw         $a6,-19664($s2)
    move       $a0,$a5
    sd         $zero,-31416($s2)
    li         $a4,-2
    ori        $a6,$a6,0x2
    and        $a4,$a4,$a6
    jal        mutex_spinunlock
    sw         $a4,-19664($s2)
    b          .L00000e00
    nop
.L00001070:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,80
    b          .L00000be8
    li         $a0,-1

glabel gfP_OdsyBRDMGRconfigFb
    ld         $v0,40($a0)
    daddiu     $sp,$sp,-96
    sd         $s0,80($sp)
    move       $at,$a2
    move       $s0,$a3
    sd         $v0,64($sp)
    daddiu     $a1,$sp,0
    sd         $a2,72($sp)
    li         $a2,52
    sd         $ra,88($sp)
    jal        copyin
    move       $a0,$at
    lw         $a2,0($sp)
    bnez       $v0, .L00001154
    li         $a7,16
    lw         $a3,4($sp)
    sltiu      $v1,$a2,4096
    beqz       $v1, .L00001130
    sltiu      $a0,$a3,4096
    beqz       $a0, .L00001134
    lw         $a4,8($sp)
    li         $a1,8
    beq        $a4, $a1, .L000010f8
    ld         $a0,64($sp)
    beq        $a4, $a7, .L000010f4
    li         $a5,32
    bne        $a4, $a5, .L00001134
.L000010f4:
    ld         $a0,64($sp)
.L000010f8:
    jal        odsyConfigFb
    daddiu     $a1,$sp,0
    sd         $v0,56($sp)
    daddiu     $a0,$sp,0
    ld         $a1,72($sp)
    jal        copyout
    li         $a2,52
    bnez       $v0, .L00001170
    ld         $v0,56($sp)
    sw         $v0,0($s0)
.L00001120:
    ld         $ra,88($sp)
    ld         $s0,80($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00001130:
    lw         $a4,8($sp)
.L00001134:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,216
    li         $v0,-1
    li         $a2,22
    b          .L00001120
    sw         $a2,0($s0)
.L00001154:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,160
    li         $v0,14
    b          .L00001120
    sw         $v0,0($s0)
.L00001170:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,288
    li         $v0,14
    b          .L00001120
    sw         $v0,0($s0)

glabel gf_OdsyPositionCursor
    ld         $a7,-30656($gp)
    daddiu     $sp,$sp,-80
    sd         $s4,24($sp)
    ld         $s4,824($a0)
    sd         $s6,48($sp)
    sd         $ra,56($sp)
    sd         $s1,72($sp)
    sd         $s2,16($sp)
    lui        $t1,0x1
    lhu        $at,804($a0)
    li         $v0,2
    sd         $s0,32($sp)
    daddu      $s0,$a0,$t1
    lw         $a5,-19664($s0)
    move       $s2,$a0
    beq        $at, $v0, .L0000139c
    lhu        $a6,-19668($s0)
.L000011d0:
    move       $s1,$zero
.L000011d4:
    sll        $v1,$a5,0x1d
    li         $t0,-1
    lhu        $a0,-19666($s0)
    lui        $a4,0xffff
    subu       $v0,$a1,$a6
    sh         $a2,-19670($s0)
    sll        $v0,$v0,0x10
    subu       $a0,$a2,$a0
    lhu        $a3,-31408($s0)
    and        $v0,$v0,$a4
    andi       $a0,$a0,0xffff
    sh         $a1,-19672($s0)
    dsrl32     $t0,$t0,0x0
    or         $v0,$v0,$a0
    sd         $s3,40($sp)
    xor        $a3,$a3,$s1
    dsll32     $v0,$v0,0x0
    sltu       $a3,$zero,$a3
    sd         $a3,0($sp)
    dsrl32     $v0,$v0,0x0
    ld         $a0,-30664($gp)
    bltz       $v1, .L00001394
    and        $v0,$t0,$v0
    or         $s3,$v0,$a7
.L00001234:
    li         $s6,0x8540
    daddu      $s6,$s2,$s6
    sd         $s5,64($sp)
    jal        mutex_spinlock
    move       $a0,$s6
    move       $s5,$v0
    li         $a0,0x8530
    daddu      $a0,$s2,$a0
    jal        cpsema
    sd         $a0,8($sp)
    beqz       $v0, .L000013b4
    move       $a0,$s6
    sd         $zero,-31416($s0)
    jal        mutex_spinunlock
    move       $a1,$s5
    move       $a0,$s4
    jal        odsy_poll_dfifo_level
    li         $a1,12
    beqz       $v0, .L000012c0
    li         $a7,-3
    sh         $s1,-31408($s0)
    sd         $s3,-31416($s0)
.L0000128c:
    jal        vsema
    ld         $a0,8($sp)
    ld         $s2,16($sp)
.L00001298:
    ld         $s3,40($sp)
    ld         $s6,48($sp)
    ld         $s4,24($sp)
    ld         $ra,56($sp)
    ld         $s5,64($sp)
    move       $v0,$zero
    ld         $s1,72($sp)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000012c0:
    li         $a4,-33
    ld         $v1,0($sp)
    andi       $a3,$s1,0x1
    li         $a1,-1
    lui        $v0,0x40
    dsrl32     $a1,$a1,0x0
    ld         $a0,-30720($gp)
    beqz       $v1, .L00001338
    daddu      $v0,$s4,$v0
    sll        $a3,$a3,0x5
    lw         $a6,-19664($s0)
    and        $a6,$a6,$a7
    dsll32     $a5,$a6,0x0
    dsrl32     $a5,$a5,0x0
    sw         $a6,-19664($s0)
    and        $a5,$a1,$a5
    or         $a5,$a0,$a5
    sd         $a5,0($v0)
    sync
    lw         $a2,-19664($s0)
    and        $a2,$a2,$a4
    or         $a2,$a2,$a3
    dsll32     $a3,$a2,0x0
    sh         $s1,-31408($s0)
    dsrl32     $a3,$a3,0x0
    sw         $a2,-19664($s0)
    and        $a1,$a1,$a3
    or         $a0,$a0,$a1
    sd         $a0,0($v0)
    sync
.L00001338:
    li         $t2,-1
    ld         $t0,0($sp)
    sd         $s3,0($v0)
    sync
    ld         $t3,-30720($gp)
    beqz       $t0, .L0000128c
    dsrl32     $t2,$t2,0x0
    lw         $t8,-19664($s0)
    ori        $t8,$t8,0x1
    dsll32     $t9,$t8,0x0
    dsrl32     $t9,$t9,0x0
    sw         $t8,-19664($s0)
    and        $t2,$t2,$t9
    or         $t2,$t2,$t3
    sd         $t2,0($v0)
    sync
    lw         $t1,-19664($s0)
    li         $t2,-2
    ori        $t1,$t1,0x2
    sw         $t1,-19664($s0)
    and        $t1,$t1,$t2
    b          .L0000128c
    sw         $t1,-19664($s0)
.L00001394:
    b          .L00001234
    or         $s3,$v0,$a0
.L0000139c:
    lhu        $v0,800($a0)
    slt        $t9,$a1,$v0
    bnez       $t9, .L000011d0
    li         $s1,1
    b          .L000011d4
    subu       $a1,$a1,$v0
.L000013b4:
    sd         $s3,-31416($s0)
    move       $a0,$s6
    sh         $s1,-31408($s0)
    jal        mutex_spinunlock
    move       $a1,$s5
    b          .L00001298
    ld         $s2,16($sp)

glabel gfP_OdsyBRDMGRcursor
    daddiu     $sp,$sp,-992
    sd         $s3,888($sp)
    sd         $ra,896($sp)
    sd         $s7,904($sp)
    move       $at,$a2
    sd         $s1,912($sp)
    li         $a2,40
    move       $v0,$a0
    ld         $s1,40($a0)
    move       $s7,$a3
    daddiu     $a1,$sp,0
    sd         $a0,880($sp)
    move       $a0,$at
    jal        copyin
    ld         $s3,824($s1)
    sd         $s6,936($sp)
    sd         $s8,944($sp)
    sd         $s4,952($sp)
    sd         $s2,960($sp)
    sd         $s0,968($sp)
    bnez       $v0, .L000020f8
    sd         $s5,976($sp)
    lwu        $v0,0($sp)
    andi       $t8,$v0,0x1
    lui        $s0,0x1
    beqz       $t8, .L00001454
    daddu      $s0,$s1,$s0
    lw         $ra,4($sp)
    srl        $ra,$ra,0x10
    sh         $ra,-19668($s0)
    lw         $t9,4($sp)
    sh         $t9,-19666($s0)
    lwu        $v0,0($sp)
.L00001454:
    andi       $at,$v0,0x2
    beqz       $at, .L00001474
    lw         $a1,8($sp)
    ld         $a0,880($sp)
    ld         $a0,40($a0)
    andi       $a2,$a1,0xffff
    jal        gf_OdsyPositionCursor
    srl        $a1,$a1,0x10
.L00001474:
    lw         $a1,-19328($s0)
    beqz       $a1, .L00001638
    li         $a1,25
    lwu        $v0,0($sp)
.L00001484:
    andi       $a2,$v0,0x4
    beqz       $a2, .L000014f8
    andi       $a5,$v0,0x8
    li         $a1,15
    lw         $a3,12($sp)
    move       $a0,$s3
    jal        odsy_poll_dfifo_level
    sw         $a3,-19664($s0)
    beqz       $v0, .L000015b4
    sltu       $a0,$zero,$v0
.L000014ac:
    beqz       $a0, .L000014f4
    lwu        $v0,0($sp)
.L000014b4:
    lw         $a4,-19328($s0)
    beqz       $a4, .L000015e4
    li         $v0,5
.L000014c0:
    sw         $v0,0($s7)
.L000014c4:
    ld         $s6,936($sp)
    ld         $s3,888($sp)
    ld         $s8,944($sp)
    ld         $s4,952($sp)
    ld         $s2,960($sp)
    ld         $s7,904($sp)
    ld         $ra,896($sp)
    ld         $s0,968($sp)
    ld         $s1,912($sp)
    ld         $s5,976($sp)
    jr         $ra
    daddiu     $sp,$sp,992
.L000014f4:
    andi       $a5,$v0,0x8
.L000014f8:
    beqz       $a5, .L00001528
    li         $a2,60
    daddiu     $a1,$sp,40
    jal        copyin
    ld         $a0,16($sp)
    beqz       $v0, .L000016ec
    move       $a0,$s3
    lw         $a6,-19328($s0)
    beqz       $a6, .L0000169c
    li         $s2,0x8540
.L00001520:
    b          .L000014c4
    li         $v0,14
.L00001528:
    move       $s2,$zero
.L0000152c:
    andi       $a7,$v0,0x10
    beqz       $a7, .L00001580
    andi       $t1,$v0,0x20
    li         $a2,512
    daddiu     $a1,$sp,112
    jal        copyin
    ld         $a0,24($sp)
    beqz       $v0, .L00001564
    move       $a0,$s3
    lw         $t0,-19328($s0)
    beqz       $t0, .L0000172c
    li         $s2,0x8540
.L0000155c:
    b          .L000014c4
    li         $v0,14
.L00001564:
    jal        odsy_poll_dfifo_level
    li         $a1,15
    beqz       $v0, .L00001c48
    sltu       $a3,$zero,$v0
.L00001574:
    bnez       $a3, .L000014b4
    lwu        $v0,0($sp)
    andi       $t1,$v0,0x20
.L00001580:
    beqz       $t1, .L00001664
    andi       $a1,$s2,0x1
    li         $a2,256
    daddiu     $a1,$sp,624
    jal        copyin
    ld         $a0,32($sp)
    beqz       $v0, .L0000164c
    move       $a0,$s3
    lw         $t2,-19328($s0)
    beqz       $t2, .L000018c0
    li         $s2,0x8540
.L000015ac:
    b          .L000014c4
    li         $v0,14
.L000015b4:
    li         $ra,-1
    lwu        $t3,12($sp)
    dsrl32     $ra,$ra,0x0
    ld         $t9,-30720($gp)
    lui        $t8,0x40
    and        $t3,$t3,$ra
    daddu      $t8,$t8,$s3
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
    b          .L000014ac
    nop
.L000015e4:
    li         $s2,0x8540
    daddu      $s2,$s1,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s0)
    move       $s4,$v0
    li         $s3,0x8530
    beqz       $t8, .L00001790
    daddu      $s3,$s1,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L000017ac
    nop
.L00001628:
    jal        vsema
    move       $a0,$s3
    b          .L000014c0
    li         $v0,5
.L00001638:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s1,$a0
    b          .L00001484
    lwu        $v0,0($sp)
.L0000164c:
    jal        odsy_poll_dfifo_level
    li         $a1,15
    beqz       $v0, .L00001e54
    sltu       $a3,$zero,$v0
.L0000165c:
    bnez       $a3, .L000014b4
    andi       $a1,$s2,0x1
.L00001664:
    beqz       $a1, .L00001684
    move       $a0,$s3
    jal        odsy_poll_dfifo_level
    li         $a1,15
    beqz       $v0, .L00001a8c
    sltu       $a0,$zero,$v0
    bnez       $a0, .L000014b4
    nop
.L00001684:
    lw         $a2,-19328($s0)
.L00001688:
    beqz       $a2, .L00001ae4
    li         $s2,0x8540
    sw         $zero,0($s7)
.L00001694:
    b          .L000014c4
    move       $v0,$zero
.L0000169c:
    daddu      $s2,$s1,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s0)
    move       $s4,$v0
    li         $s3,0x8530
    beqz       $t8, .L0000195c
    daddu      $s3,$s1,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L00001978
    nop
.L000016dc:
    jal        vsema
    move       $a0,$s3
    b          .L00001520
    nop
.L000016ec:
    jal        odsy_poll_dfifo_level
    li         $a1,7
    bnez       $v0, .L0000177c
    sltu       $t1,$zero,$v0
    daddiu     $t2,$sp,40
    li         $s2,1
    move       $a5,$zero
    li         $a0,-1
    dsll32     $a0,$a0,0x0
    li         $a3,-1
    dsrl32     $a3,$a3,0x0
    lui        $a1,0x40
    daddu      $a1,$s3,$a1
    lui        $v0,0x3964
    b          .L00001928
    ori        $v0,$v0,0xf
.L0000172c:
    daddu      $s2,$s1,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s0)
    move       $s4,$v0
    li         $s3,0x8530
    beqz       $t8, .L00001ac8
    daddu      $s3,$s1,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L00001b34
    nop
.L0000176c:
    jal        vsema
    move       $a0,$s3
    b          .L0000155c
    nop
.L0000177c:
    move       $s2,$zero
.L00001780:
    bnez       $t1, .L000014b4
    nop
    b          .L0000152c
    lwu        $v0,0($sp)
.L00001790:
    jal        vsema
    move       $a0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s4
    b          .L000014c0
    li         $v0,5
.L000017ac:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a0,-19664($s0)
    lhu        $a3,-31408($s0)
    srl        $a4,$a0,0x5
    andi       $a4,$a4,0x1
    xor        $a3,$a3,$a4
    sltu       $a3,$zero,$a3
    move       $a1,$v0
    beqz       $a3, .L00001850
    lui        $a5,0x40
    li         $t0,-1
    li         $t3,-3
    dsrl32     $t0,$t0,0x0
    and        $t3,$a0,$t3
    sw         $t3,-19664($s0)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s1)
    ld         $a6,-30720($gp)
    dsrl32     $t3,$t3,0x0
    and        $t3,$t0,$t3
    daddu      $t8,$a5,$t8
    or         $t3,$a6,$t3
    sd         $t3,0($t8)
    sync
    lhu        $t2,-31408($s0)
    lw         $t1,-19664($s0)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x5
    or         $t1,$t1,$t2
    sw         $t1,-19664($s0)
    dsll32     $t1,$t1,0x0
    ld         $a7,824($s1)
    dsrl32     $t1,$t1,0x0
    and        $t0,$t0,$t1
    daddu      $a7,$a5,$a7
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
.L00001850:
    ld         $t2,824($s1)
    daddu      $t2,$a5,$t2
    ld         $t1,-31416($s0)
    sd         $t1,0($t2)
    sync
    beqz       $a3, .L0000189c
    li         $a6,-2
    lw         $t3,-19664($s0)
    and        $t3,$a6,$t3
    sw         $t3,-19664($s0)
    li         $ra,-1
    ld         $t8,824($s1)
    dsrl32     $ra,$ra,0x0
    ld         $t9,-30720($gp)
    and        $t3,$t3,$ra
    daddu      $t8,$a5,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L0000189c:
    lw         $t8,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s2
    ori        $t8,$t8,0x2
    and        $t8,$a6,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s0)
    b          .L00001628
    nop
.L000018c0:
    daddu      $s2,$s1,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s0)
    move       $s4,$v0
    li         $s3,0x8530
    beqz       $t8, .L00001d24
    daddu      $s3,$s1,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L00001d40
    nop
.L00001900:
    jal        vsema
    move       $a0,$s3
    b          .L000015ac
    nop
.L00001910:
    and        $ra,$a0,$t0
    and        $t9,$a3,$a6
    or         $t9,$t9,$ra
    sd         $t9,0($a1)
    sync
.L00001924:
    beqz       $a7, .L00001954
.L00001928:
    dsll32     $t0,$v0,0x0
    andi       $t3,$s2,0x1
    addiu      $s2,$s2,1
    dsll       $a6,$a5,0x2
    addiu      $a5,$a5,1
    daddu      $a6,$t2,$a6
    slti       $a7,$a5,15
    bnez       $t3, .L00001910
    lwu        $a6,0($a6)
    b          .L00001924
    sll        $v0,$a6,0x0
.L00001954:
    b          .L00001780
    sw         $v0,104($sp)
.L0000195c:
    jal        vsema
    move       $a0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s4
    b          .L00001520
    nop
.L00001978:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a0,-19664($s0)
    lhu        $a3,-31408($s0)
    srl        $a4,$a0,0x5
    andi       $a4,$a4,0x1
    xor        $a3,$a3,$a4
    sltu       $a3,$zero,$a3
    move       $a1,$v0
    beqz       $a3, .L00001a1c
    lui        $a5,0x40
    li         $t0,-1
    li         $t3,-3
    dsrl32     $t0,$t0,0x0
    and        $t3,$a0,$t3
    sw         $t3,-19664($s0)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s1)
    ld         $a6,-30720($gp)
    dsrl32     $t3,$t3,0x0
    and        $t3,$t0,$t3
    daddu      $t8,$a5,$t8
    or         $t3,$a6,$t3
    sd         $t3,0($t8)
    sync
    lhu        $t2,-31408($s0)
    lw         $t1,-19664($s0)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x5
    or         $t1,$t1,$t2
    sw         $t1,-19664($s0)
    dsll32     $t1,$t1,0x0
    ld         $a7,824($s1)
    dsrl32     $t1,$t1,0x0
    and        $t0,$t0,$t1
    daddu      $a7,$a5,$a7
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
.L00001a1c:
    ld         $t2,824($s1)
    daddu      $t2,$a5,$t2
    ld         $t1,-31416($s0)
    sd         $t1,0($t2)
    sync
    beqz       $a3, .L00001a68
    li         $a6,-2
    lw         $t3,-19664($s0)
    and        $t3,$a6,$t3
    sw         $t3,-19664($s0)
    li         $ra,-1
    ld         $t8,824($s1)
    dsrl32     $ra,$ra,0x0
    ld         $t9,-30720($gp)
    and        $t3,$t3,$ra
    daddu      $t8,$a5,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L00001a68:
    lw         $t8,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s2
    ori        $t8,$t8,0x2
    and        $t8,$a6,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s0)
    b          .L000016dc
    nop
.L00001a8c:
    lw         $t9,104($sp)
    dsll32     $t9,$t9,0x0
    li         $ra,-1
    dsll32     $ra,$ra,0x0
    and        $t9,$t9,$ra
    lui        $ra,0x40
    lui        $at,0x3970
    daddu      $ra,$ra,$s3
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
    bnez       $a0, .L000014b4
    nop
    b          .L00001688
    lw         $a2,-19328($s0)
.L00001ac8:
    jal        vsema
    move       $a0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s4
    b          .L0000155c
    nop
.L00001ae4:
    daddu      $s2,$s1,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s0)
    move       $s4,$v0
    li         $s3,0x8530
    beqz       $t8, .L00001f70
    daddu      $s3,$s1,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L00001f8c
    nop
.L00001b24:
    jal        vsema
    move       $a0,$s3
    b          .L00001694
    sw         $zero,0($s7)
.L00001b34:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a0,-19664($s0)
    lhu        $a3,-31408($s0)
    srl        $a4,$a0,0x5
    andi       $a4,$a4,0x1
    xor        $a3,$a3,$a4
    sltu       $a3,$zero,$a3
    move       $a1,$v0
    beqz       $a3, .L00001bd8
    lui        $a5,0x40
    li         $t0,-1
    li         $t3,-3
    dsrl32     $t0,$t0,0x0
    and        $t3,$a0,$t3
    sw         $t3,-19664($s0)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s1)
    ld         $a6,-30720($gp)
    dsrl32     $t3,$t3,0x0
    and        $t3,$t0,$t3
    daddu      $t8,$a5,$t8
    or         $t3,$a6,$t3
    sd         $t3,0($t8)
    sync
    lhu        $t2,-31408($s0)
    lw         $t1,-19664($s0)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x5
    or         $t1,$t1,$t2
    sw         $t1,-19664($s0)
    dsll32     $t1,$t1,0x0
    ld         $a7,824($s1)
    dsrl32     $t1,$t1,0x0
    and        $t0,$t0,$t1
    daddu      $a7,$a5,$a7
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
.L00001bd8:
    ld         $t2,824($s1)
    daddu      $t2,$a5,$t2
    ld         $t1,-31416($s0)
    sd         $t1,0($t2)
    sync
    beqz       $a3, .L00001c24
    li         $a6,-2
    lw         $t3,-19664($s0)
    and        $t3,$a6,$t3
    sw         $t3,-19664($s0)
    li         $ra,-1
    ld         $t8,824($s1)
    dsrl32     $ra,$ra,0x0
    ld         $t9,-30720($gp)
    and        $t3,$t3,$ra
    daddu      $t8,$a5,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L00001c24:
    lw         $t8,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s2
    ori        $t8,$t8,0x2
    and        $t8,$a6,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s0)
    b          .L0000176c
    nop
.L00001c48:
    lui        $v0,0x3940
    ori        $v0,$v0,0x80
    li         $s5,-1
    andi       $ra,$s2,0x1
    dsll32     $s5,$s5,0x0
    lui        $s8,0x40
    beqz       $ra, .L000020a0
    daddu      $s8,$s3,$s8
    lw         $s4,104($sp)
    dsll32     $v1,$s4,0x0
    and        $v1,$s5,$v1
    or         $v1,$v0,$v1
    sd         $v1,0($s8)
    sync
.L00001c80:
    daddiu     $a1,$sp,112
    move       $s6,$zero
    li         $a0,-1
    addiu      $s2,$s2,1
    dsrl32     $a0,$a0,0x0
.L00001c94:
    sra        $a4,$s6,0x1f
    xor        $a2,$s6,$a4
    subu       $a2,$a2,$a4
    andi       $a2,$a2,0x1f
    xor        $a2,$a2,$a4
    subu       $a2,$a2,$a4
    beqz       $a2, .L00001f30
    sd         $a3,928($sp)
    andi       $a4,$s2,0x1
    beqz       $a4, .L00001cf8
    dsll       $a5,$s6,0x2
.L00001cc0:
    daddu      $a5,$a1,$a5
    lwu        $a5,0($a5)
    dsll32     $a6,$s4,0x0
    and        $a5,$a0,$a5
    and        $a6,$s5,$a6
    or         $a5,$a5,$a6
    sd         $a5,0($s8)
    sync
.L00001ce0:
    addiu      $s6,$s6,1
    slti       $a6,$s6,128
    bnez       $a6, .L00001c94
    addiu      $s2,$s2,1
    b          .L00001574
    nop
.L00001cf8:
    addiu      $t0,$s6,1
    dsll       $s4,$s6,0x2
    slti       $a7,$s6,127
    daddu      $s4,$a1,$s4
    addiu      $s2,$s2,1
    lw         $s4,0($s4)
    move       $s6,$t0
    bnez       $a7, .L00001c94
    sw         $s4,104($sp)
    b          .L00001574
    nop
.L00001d24:
    jal        vsema
    move       $a0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s4
    b          .L000015ac
    nop
.L00001d40:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a0,-19664($s0)
    lhu        $a3,-31408($s0)
    srl        $a4,$a0,0x5
    andi       $a4,$a4,0x1
    xor        $a3,$a3,$a4
    sltu       $a3,$zero,$a3
    move       $a1,$v0
    beqz       $a3, .L00001de4
    lui        $a5,0x40
    li         $t0,-1
    li         $t3,-3
    dsrl32     $t0,$t0,0x0
    and        $t3,$a0,$t3
    sw         $t3,-19664($s0)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s1)
    ld         $a6,-30720($gp)
    dsrl32     $t3,$t3,0x0
    and        $t3,$t0,$t3
    daddu      $t8,$a5,$t8
    or         $t3,$a6,$t3
    sd         $t3,0($t8)
    sync
    lhu        $t2,-31408($s0)
    lw         $t1,-19664($s0)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x5
    or         $t1,$t1,$t2
    sw         $t1,-19664($s0)
    dsll32     $t1,$t1,0x0
    ld         $a7,824($s1)
    dsrl32     $t1,$t1,0x0
    and        $t0,$t0,$t1
    daddu      $a7,$a5,$a7
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
.L00001de4:
    ld         $t2,824($s1)
    daddu      $t2,$a5,$t2
    ld         $t1,-31416($s0)
    sd         $t1,0($t2)
    sync
    beqz       $a3, .L00001e30
    li         $a6,-2
    lw         $t3,-19664($s0)
    and        $t3,$a6,$t3
    sw         $t3,-19664($s0)
    li         $ra,-1
    ld         $t8,824($s1)
    dsrl32     $ra,$ra,0x0
    ld         $t9,-30720($gp)
    and        $t3,$t3,$ra
    daddu      $t8,$a5,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L00001e30:
    lw         $t8,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s2
    ori        $t8,$t8,0x2
    and        $t8,$a6,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s0)
    b          .L00001900
    nop
.L00001e54:
    lui        $v0,0x3970
    ori        $v0,$v0,0x40
    li         $s5,-1
    andi       $ra,$s2,0x1
    dsll32     $s5,$s5,0x0
    lui        $s8,0x40
    beqz       $ra, .L000020ec
    daddu      $s8,$s3,$s8
    lw         $s4,104($sp)
    dsll32     $v1,$s4,0x0
    and        $v1,$s5,$v1
    or         $v1,$v0,$v1
    sd         $v1,0($s8)
    sync
.L00001e8c:
    daddiu     $a1,$sp,624
    move       $s6,$zero
    li         $a0,-1
    addiu      $s2,$s2,1
    dsrl32     $a0,$a0,0x0
.L00001ea0:
    sra        $a4,$s6,0x1f
    xor        $a2,$s6,$a4
    subu       $a2,$a2,$a4
    andi       $a2,$a2,0x1f
    xor        $a2,$a2,$a4
    subu       $a2,$a2,$a4
    beqz       $a2, .L000020ac
    sd         $a3,920($sp)
    andi       $a4,$s2,0x1
    beqz       $a4, .L00001f08
    addiu      $t0,$s6,1
    dsll       $a5,$s6,0x2
.L00001ed0:
    daddu      $a5,$a1,$a5
    lwu        $a5,0($a5)
    dsll32     $a6,$s4,0x0
    and        $a5,$a0,$a5
    and        $a6,$s5,$a6
    or         $a5,$a5,$a6
    sd         $a5,0($s8)
    sync
.L00001ef0:
    addiu      $s6,$s6,1
    slti       $a6,$s6,64
    bnez       $a6, .L00001ea0
    addiu      $s2,$s2,1
    b          .L0000165c
    nop
.L00001f08:
    dsll       $s4,$s6,0x2
    slti       $a7,$s6,63
    daddu      $s4,$a1,$s4
    addiu      $s2,$s2,1
    lw         $s4,0($s4)
    move       $s6,$t0
    bnez       $a7, .L00001ea0
    sw         $s4,104($sp)
    b          .L0000165c
    nop
.L00001f30:
    move       $a0,$s3
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    daddiu     $a1,$sp,112
    ld         $a3,928($sp)
    li         $a0,-1
    bnez       $v0, .L000014b4
    dsrl32     $a0,$a0,0x0
    andi       $a2,$s2,0x1
    bnez       $a2, .L00001cc0
    dsll       $a5,$s6,0x2
    dsll       $s4,$s6,0x2
    daddu      $s4,$a1,$s4
    lw         $s4,0($s4)
    b          .L00001ce0
    sw         $s4,104($sp)
.L00001f70:
    jal        vsema
    move       $a0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s4
    b          .L00001694
    sw         $zero,0($s7)
.L00001f8c:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a0,-19664($s0)
    lhu        $a3,-31408($s0)
    srl        $a4,$a0,0x5
    andi       $a4,$a4,0x1
    xor        $a3,$a3,$a4
    sltu       $a3,$zero,$a3
    move       $a1,$v0
    beqz       $a3, .L00002030
    lui        $a5,0x40
    li         $t0,-1
    li         $t3,-3
    dsrl32     $t0,$t0,0x0
    and        $t3,$a0,$t3
    sw         $t3,-19664($s0)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s1)
    ld         $a6,-30720($gp)
    dsrl32     $t3,$t3,0x0
    and        $t3,$t0,$t3
    daddu      $t8,$a5,$t8
    or         $t3,$a6,$t3
    sd         $t3,0($t8)
    sync
    lhu        $t2,-31408($s0)
    lw         $t1,-19664($s0)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x5
    or         $t1,$t1,$t2
    sw         $t1,-19664($s0)
    dsll32     $t1,$t1,0x0
    ld         $a7,824($s1)
    dsrl32     $t1,$t1,0x0
    and        $t0,$t0,$t1
    daddu      $a7,$a5,$a7
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
.L00002030:
    ld         $t2,824($s1)
    daddu      $t2,$a5,$t2
    ld         $t1,-31416($s0)
    sd         $t1,0($t2)
    sync
    beqz       $a3, .L0000207c
    li         $a6,-2
    lw         $t3,-19664($s0)
    and        $t3,$a6,$t3
    sw         $t3,-19664($s0)
    li         $ra,-1
    ld         $t8,824($s1)
    dsrl32     $ra,$ra,0x0
    ld         $t9,-30720($gp)
    and        $t3,$t3,$ra
    daddu      $t8,$a5,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L0000207c:
    lw         $t8,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s2
    ori        $t8,$t8,0x2
    and        $t8,$a6,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s0)
    b          .L00001b24
    nop
.L000020a0:
    move       $s4,$v0
    b          .L00001c80
    sw         $v0,104($sp)
.L000020ac:
    move       $a0,$s3
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    daddiu     $a1,$sp,624
    ld         $a3,920($sp)
    li         $a0,-1
    bnez       $v0, .L000014b4
    dsrl32     $a0,$a0,0x0
    andi       $a2,$s2,0x1
    bnez       $a2, .L00001ed0
    dsll       $a5,$s6,0x2
    dsll       $s4,$s6,0x2
    daddu      $s4,$a1,$s4
    lw         $s4,0($s4)
    b          .L00001ef0
    sw         $s4,104($sp)
.L000020ec:
    move       $s4,$v0
    b          .L00001e8c
    sw         $v0,104($sp)
.L000020f8:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,344
    li         $v0,14
    b          .L000014c4
    sw         $v0,0($s7)

glabel gfP_OdsyBRDMGRsetDpyMode
    daddiu     $sp,$sp,-32
    sd         $s0,16($sp)
    move       $s0,$a3
    daddiu     $a1,$sp,0
    sd         $a0,8($sp)
    move       $a0,$a2
    sd         $ra,24($sp)
    jal        copyin
    li         $a2,8
    bnez       $v0, .L00002168
    ld         $a0,8($sp)
    lw         $a1,0($sp)
    jal        gf_OdsySetDisplayMode
    lw         $a2,4($sp)
    sw         $v0,0($s0)
    move       $a0,$zero
.L00002154:
    ld         $ra,24($sp)
    move       $v0,$a0
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00002168:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,400
    li         $a0,14
    b          .L00002154
    sw         $a0,0($s0)

glabel gfP_OdsyBRDMGRsetBlanking
    ld         $v0,40($a0)
    daddiu     $sp,$sp,-32
    move       $at,$a2
    li         $a2,4
    sd         $s0,16($sp)
    move       $s0,$a3
    sd         $v0,8($sp)
    daddiu     $a1,$sp,0
    sd         $ra,24($sp)
    jal        copyin
    move       $a0,$at
    bnez       $v0, .L000021dc
    ld         $a0,8($sp)
    jal        odsyBlankScreen
    lw         $a1,0($sp)
    move       $a0,$v0
    sw         $v0,0($s0)
.L000021c8:
    ld         $ra,24($sp)
    move       $v0,$a0
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000021dc:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,448
    li         $a0,14
    b          .L000021c8
    sw         $a0,0($s0)

glabel odsyBlankScreen
    daddiu     $sp,$sp,-112
    sd         $s5,24($sp)
    ld         $s5,824($a0)
    sd         $s2,56($sp)
    sd         $s3,64($sp)
    sd         $s6,72($sp)
    sd         $s4,80($sp)
    sd         $s0,88($sp)
    move       $a2,$a1
    sd         $s1,16($sp)
    move       $s1,$a0
    beqz       $a1, .L00002318
    sd         $ra,96($sp)
    li         $v0,1
    beq        $a1, $v0, .L000022b8
    li         $at,2
    bne        $a1, $at, .L00003448
    ld         $a1,-30720($gp)
    lhu        $t8,298($a0)
    li         $t9,3
    lui        $s0,0x1
    beq        $t8, $t9, .L000023b0
    daddu      $s0,$a0,$s0
    lw         $at,-19328($s0)
    lw         $ra,-19492($s0)
    li         $s6,-33
    and        $ra,$s6,$ra
    beqz       $at, .L00002440
    sw         $ra,-19492($s0)
    li         $a1,10
.L00002270:
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L00002458
    lui        $a1,0x23
    lw         $at,-19328($s0)
    beqz       $at, .L00002360
    li         $s2,0x8540
    li         $v0,5
.L00002290:
    ld         $s2,56($sp)
    ld         $s3,64($sp)
    ld         $s6,72($sp)
    ld         $s4,80($sp)
    ld         $ra,96($sp)
    ld         $s0,88($sp)
    ld         $s1,16($sp)
    ld         $s5,24($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L000022b8:
    lhu        $t8,298($a0)
    li         $t9,3
    lui        $s0,0x1
    beq        $t8, $t9, .L00002650
    daddu      $s0,$a0,$s0
    lw         $at,-19328($s0)
.L000022d0:
    lw         $ra,-19492($s0)
    li         $s6,-33
    and        $ra,$s6,$ra
    beqz       $at, .L00002820
    sw         $ra,-19492($s0)
    lw         $at,-19496($s0)
.L000022e8:
    ori        $at,$at,0x23
    sw         $at,-19496($s0)
    li         $a1,14
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L000024fc
    li         $s2,-1
    lw         $v0,-19328($s0)
    beqz       $v0, .L000025e4
    li         $s3,0x8540
.L00002310:
    b          .L00002290
    li         $v0,5
.L00002318:
    lui        $s0,0x1
    daddu      $s0,$a0,$s0
    lw         $a0,-19328($s0)
    lw         $v1,-19492($s0)
    li         $s2,-33
    and        $v1,$s2,$v1
    beqz       $a0, .L00002808
    sw         $v1,-19492($s0)
    li         $a1,11
.L0000233c:
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L0000287c
    lui        $a1,0x23
    lw         $t8,-19328($s0)
    beqz       $t8, .L00002594
    li         $s3,0x8540
.L00002358:
    b          .L00002290
    li         $v0,5
.L00002360:
    daddu      $s2,$s1,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s0)
    move       $s4,$v0
    li         $s3,0x8530
    beqz       $t8, .L00002634
    daddu      $s3,$s1,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L000026e0
    nop
.L000023a0:
    jal        vsema
    move       $a0,$s3
    b          .L00002290
    li         $v0,5
.L000023b0:
    li         $s2,0xb488
    li         $a1,25
    daddu      $s2,$a0,$s2
    jal        psema
    move       $a0,$s2
    lw         $t8,-19420($s0)
    beqz       $t8, .L000027f0
    ld         $a2,-19432($s0)
    li         $a1,25
    li         $a0,0x8520
    jal        mutex_lock
    daddu      $a0,$a2,$a0
    daddiu     $a2,$sp,0
.L000023e4:
    move       $a1,$zero
    li         $s3,0xb408
    li         $s4,23
    daddu      $s3,$s1,$s3
    sb         $s4,-19416($s0)
    jal        odsy_i2cDDCRegRead
    move       $a0,$s3
    beqz       $v0, .L0000283c
    daddiu     $a2,$sp,0
    jal        odsy_reconfigDCD2FPLD
    move       $a0,$s3
    beqz       $v0, .L00002a80
    nop
    lw         $t8,-19420($s0)
    beqz       $t8, .L00002a34
    ld         $a2,-19432($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L00002430:
    jal        vsema
    move       $a0,$s2
    b          .L00002290
    li         $v0,11
.L00002440:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s1,$a0
    b          .L00002270
    li         $a1,10
.L00002458:
    daddu      $a1,$s5,$a1
    sd         $a1,8($sp)
    lw         $a1,13828($a1)
    li         $s4,-1
    dsrl32     $s4,$s4,0x0
    ori        $a1,$a1,0x1
    dsll32     $a1,$a1,0x0
    ld         $a2,-30648($gp)
    lui        $s2,0x40
    dsrl32     $a1,$a1,0x0
    daddu      $s3,$s2,$s5
    and        $a1,$s4,$a1
    or         $a1,$a1,$a2
    sd         $a1,0($s3)
    sync
    jal        odsy_monitor_type
    move       $a0,$s1
    li         $a2,1
    beq        $v0, $a2, .L000029b4
    ld         $a1,8($sp)
.L000024a8:
    lw         $a7,-19496($s0)
    lwu        $a5,-19492($s0)
    ld         $a6,-30632($gp)
    li         $t0,-36
    and        $a5,$s4,$a5
    and        $a7,$a7,$t0
    sw         $a7,-19496($s0)
    or         $a5,$a5,$a6
    sd         $a5,0($s3)
    sync
    lwu        $a4,-19496($s0)
    ld         $a5,-30624($gp)
    and        $a4,$s4,$a4
    or         $a4,$a4,$a5
    sd         $a4,0($s3)
    sync
    lw         $a3,-19328($s0)
    beqz       $a3, .L000029e4
    li         $s3,0x8540
.L000024f4:
    b          .L00002290
    move       $v0,$zero
.L000024fc:
    lwu        $t1,-19492($s0)
    dsrl32     $s2,$s2,0x0
    ld         $t2,-30632($gp)
    lui        $s4,0x40
    and        $t1,$s2,$t1
    daddu      $t0,$s4,$s5
    or         $t1,$t1,$t2
    sd         $t1,0($t0)
    sync
    lwu        $a7,-19496($s0)
    ld         $t1,-30624($gp)
    and        $a7,$s2,$a7
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
    lw         $a6,-19328($s0)
    bnez       $a6, .L000024f4
    li         $s3,0x8540
    daddu      $s3,$s1,$s3
    jal        mutex_spinlock
    move       $a0,$s3
    ld         $t8,-31416($s0)
    li         $s5,0x8530
    sd         $v0,40($sp)
    beqz       $t8, .L00002de0
    daddu      $s5,$s1,$s5
    move       $a0,$s3
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L00003004
    nop
.L00002584:
    jal        vsema
    move       $a0,$s5
    b          .L000024f4
    nop
.L00002594:
    daddu      $s3,$s1,$s3
    jal        mutex_spinlock
    move       $a0,$s3
    ld         $t8,-31416($s0)
    move       $s4,$v0
    li         $s5,0x8530
    beqz       $t8, .L00002a48
    daddu      $s5,$s1,$s5
    move       $a0,$s3
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L00002ab8
    nop
.L000025d4:
    jal        vsema
    move       $a0,$s5
    b          .L00002358
    nop
.L000025e4:
    daddu      $s3,$s1,$s3
    jal        mutex_spinlock
    move       $a0,$s3
    ld         $t8,-31416($s0)
    move       $s2,$v0
    li         $s5,0x8530
    beqz       $t8, .L00002a64
    daddu      $s5,$s1,$s5
    move       $a0,$s3
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L00002bc8
    nop
.L00002624:
    jal        vsema
    move       $a0,$s5
    b          .L00002310
    nop
.L00002634:
    jal        vsema
    move       $a0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s4
    b          .L00002290
    li         $v0,5
.L00002650:
    li         $s3,0xb488
    li         $a1,25
    daddu      $s3,$a0,$s3
    jal        psema
    move       $a0,$s3
    lw         $t8,-19420($s0)
    beqz       $t8, .L00002cd8
    ld         $a2,-19432($s0)
    li         $a1,25
    li         $a0,0x8520
    jal        mutex_lock
    daddu      $a0,$a2,$a0
    daddiu     $a2,$sp,1
.L00002684:
    move       $a1,$zero
    li         $s2,0xb408
    li         $s4,23
    daddu      $s2,$s1,$s2
    sb         $s4,-19416($s0)
    jal        odsy_i2cDDCRegRead
    move       $a0,$s2
    beqz       $v0, .L00002cf4
    daddiu     $a2,$sp,1
    jal        odsy_reconfigDCD2FPLD
    move       $a0,$s2
    beqz       $v0, .L00002da8
    nop
    lw         $t8,-19420($s0)
    beqz       $t8, .L00002d80
    ld         $a2,-19432($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L000026d0:
    jal        vsema
    move       $a0,$s3
    b          .L00002290
    li         $v0,11
.L000026e0:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a0,-19664($s0)
    lhu        $a5,-31408($s0)
    srl        $a6,$a0,0x5
    andi       $a6,$a6,0x1
    xor        $a5,$a5,$a6
    sltu       $a5,$zero,$a5
    move       $a1,$v0
    beqz       $a5, .L00002780
    lui        $s4,0x40
    li         $t1,-1
    li         $t8,-3
    dsrl32     $t1,$t1,0x0
    and        $t8,$a0,$t8
    sw         $t8,-19664($s0)
    dsll32     $t8,$t8,0x0
    ld         $t9,824($s1)
    ld         $a7,-30720($gp)
    dsrl32     $t8,$t8,0x0
    and        $t8,$t1,$t8
    daddu      $t9,$s4,$t9
    or         $t8,$a7,$t8
    sd         $t8,0($t9)
    sync
    lhu        $t3,-31408($s0)
    lw         $t2,-19664($s0)
    andi       $t3,$t3,0x1
    and        $t2,$s6,$t2
    sll        $t3,$t3,0x5
    or         $t2,$t2,$t3
    sw         $t2,-19664($s0)
    dsll32     $t2,$t2,0x0
    ld         $t0,824($s1)
    dsrl32     $t2,$t2,0x0
    and        $t1,$t1,$t2
    daddu      $t0,$s4,$t0
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
.L00002780:
    ld         $t3,824($s1)
    daddu      $t3,$s4,$t3
    ld         $t2,-31416($s0)
    sd         $t2,0($t3)
    sync
    beqz       $a5, .L000027cc
    li         $a2,-2
    lw         $t8,-19664($s0)
    and        $t8,$a2,$t8
    sw         $t8,-19664($s0)
    li         $at,-1
    ld         $t9,824($s1)
    dsrl32     $at,$at,0x0
    ld         $ra,-30720($gp)
    and        $t8,$t8,$at
    daddu      $t9,$s4,$t9
    or         $t8,$t8,$ra
    sd         $t8,0($t9)
    sync
.L000027cc:
    lw         $t9,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s2
    ori        $t9,$t9,0x2
    and        $t9,$a2,$t9
    jal        mutex_spinunlock
    sw         $t9,-19664($s0)
    b          .L000023a0
    nop
.L000027f0:
    li         $a1,25
    li         $a0,0x8510
    jal        mutex_lock
    daddu      $a0,$a2,$a0
    b          .L000023e4
    daddiu     $a2,$sp,0
.L00002808:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s1,$a0
    b          .L0000233c
    li         $a1,11
.L00002820:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s1,$a0
    b          .L000022e8
    lw         $at,-19496($s0)
    daddiu     $a2,$sp,0
.L0000283c:
    move       $a1,$zero
    move       $a0,$s3
    jal        odsy_i2cDDCRegRead
    sb         $s4,-19416($s0)
    beqz       $v0, .L00002e50
    lbu        $a2,0($sp)
    lw         $a1,-19420($s0)
    beqz       $a1, .L00002d94
    ld         $a2,-19432($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L0000286c:
    jal        vsema
    move       $a0,$s2
    b          .L00002290
    li         $v0,5
.L0000287c:
    daddu      $a1,$s5,$a1
    sd         $a1,8($sp)
    lw         $a1,13828($a1)
    li         $s2,-1
    li         $s6,-2
    dsrl32     $s2,$s2,0x0
    and        $a1,$s6,$a1
    dsll32     $a1,$a1,0x0
    ld         $a2,-30648($gp)
    lui        $s4,0x40
    dsrl32     $a1,$a1,0x0
    daddu      $s3,$s4,$s5
    and        $a1,$s2,$a1
    or         $a1,$a1,$a2
    sd         $a1,0($s3)
    sync
    jal        odsy_monitor_type
    move       $a0,$s1
    li         $a2,1
    beq        $v0, $a2, .L00002d34
    ld         $a1,8($sp)
.L000028d0:
    lw         $a7,-19496($s0)
    lwu        $a5,-19492($s0)
    ld         $a6,-30632($gp)
    and        $a5,$s2,$a5
    ori        $a7,$a7,0x23
    sw         $a7,-19496($s0)
    or         $a5,$a5,$a6
    sd         $a5,0($s3)
    sync
    lwu        $a4,-19496($s0)
    ld         $a5,-30624($gp)
    and        $a4,$s2,$a4
    or         $a4,$a4,$a5
    sd         $a4,0($s3)
    sync
    lw         $a3,-19328($s0)
    beqz       $a3, .L00002e00
    li         $s3,0x8540
    lhu        $a6,298($s1)
.L0000291c:
    li         $a7,3
    bne        $a6, $a7, .L000024f4
    li         $s3,0xb488
    li         $a1,25
    daddu      $s3,$s1,$s3
    jal        psema
    move       $a0,$s3
    lw         $t8,-19420($s0)
    beqz       $t8, .L00002fac
    ld         $a2,-19432($s0)
    li         $a1,25
    li         $a0,0x8520
    jal        mutex_lock
    daddu      $a0,$a2,$a0
    daddiu     $a2,$sp,2
.L00002958:
    move       $a1,$zero
    li         $s2,0xb408
    li         $a3,23
    daddu      $s2,$s1,$s2
    sb         $a3,-19416($s0)
    jal        odsy_i2cDDCRegRead
    move       $a0,$s2
    beqz       $v0, .L00002fc8
    move       $a0,$s2
    jal        odsy_reconfigDCD2FPLD
    move       $a0,$s2
    beqz       $v0, .L000031c0
    nop
    lw         $t8,-19420($s0)
    beqz       $t8, .L00003184
    ld         $a2,-19432($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L000029a4:
    jal        vsema
    move       $a0,$s3
    b          .L00002290
    li         $v0,11
.L000029b4:
    lw         $a1,12292($a1)
    li         $a2,-2
    and        $a1,$a1,$a2
    dsll32     $a1,$a1,0x0
    ld         $a2,-30640($gp)
    dsrl32     $a1,$a1,0x0
    and        $a1,$s4,$a1
    or         $a1,$a1,$a2
    sd         $a1,0($s3)
    sync
    b          .L000024a8
    nop
.L000029e4:
    daddu      $s3,$s1,$s3
    jal        mutex_spinlock
    move       $a0,$s3
    ld         $t8,-31416($s0)
    li         $s5,0x8530
    sd         $v0,48($sp)
    beqz       $t8, .L00002d60
    daddu      $s5,$s1,$s5
    move       $a0,$s3
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L00002e94
    nop
.L00002a24:
    jal        vsema
    move       $a0,$s5
    b          .L000024f4
    nop
.L00002a34:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L00002430
    nop
.L00002a48:
    jal        vsema
    move       $a0,$s5
    move       $a0,$s3
    jal        mutex_spinunlock
    move       $a1,$s4
    b          .L00002358
    nop
.L00002a64:
    jal        vsema
    move       $a0,$s5
    move       $a0,$s3
    jal        mutex_spinunlock
    move       $a1,$s2
    b          .L00002310
    nop
.L00002a80:
    jal        odsy_restoreDCD2FPGA
    move       $a0,$s1
    beqz       $v0, .L0000283c
    daddiu     $a2,$sp,0
    lw         $a1,-19420($s0)
    beqz       $a1, .L00002f98
    ld         $a2,-19432($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L00002aa8:
    jal        vsema
    move       $a0,$s2
    b          .L00002290
    li         $v0,11
.L00002ab8:
    jal        mutex_spinlock
    move       $a0,$s3
    lw         $a0,-19664($s0)
    lhu        $a2,-31408($s0)
    srl        $a3,$a0,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    move       $a1,$v0
    beqz       $a2, .L00002b58
    lui        $s4,0x40
    li         $a6,-1
    li         $t1,-3
    dsrl32     $a6,$a6,0x0
    and        $t1,$a0,$t1
    sw         $t1,-19664($s0)
    dsll32     $t1,$t1,0x0
    ld         $t2,824($s1)
    ld         $a4,-30720($gp)
    dsrl32     $t1,$t1,0x0
    and        $t1,$a6,$t1
    daddu      $t2,$s4,$t2
    or         $t1,$a4,$t1
    sd         $t1,0($t2)
    sync
    lhu        $t0,-31408($s0)
    lw         $a7,-19664($s0)
    andi       $t0,$t0,0x1
    and        $a7,$s2,$a7
    sll        $t0,$t0,0x5
    or         $a7,$a7,$t0
    sw         $a7,-19664($s0)
    dsll32     $a7,$a7,0x0
    ld         $a5,824($s1)
    dsrl32     $a7,$a7,0x0
    and        $a6,$a6,$a7
    daddu      $a5,$s4,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
.L00002b58:
    ld         $t0,824($s1)
    daddu      $t0,$s4,$t0
    ld         $a7,-31416($s0)
    sd         $a7,0($t0)
    sync
    beqz       $a2, .L00002ba4
    li         $s6,-2
    lw         $t1,-19664($s0)
    and        $t1,$s6,$t1
    sw         $t1,-19664($s0)
    li         $t8,-1
    ld         $t2,824($s1)
    dsrl32     $t8,$t8,0x0
    ld         $t3,-30720($gp)
    and        $t1,$t1,$t8
    daddu      $t2,$s4,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
.L00002ba4:
    lw         $t2,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s3
    ori        $t2,$t2,0x2
    and        $t2,$s6,$t2
    jal        mutex_spinunlock
    sw         $t2,-19664($s0)
    b          .L000025d4
    nop
.L00002bc8:
    jal        mutex_spinlock
    move       $a0,$s3
    lw         $a0,-19664($s0)
    lhu        $a2,-31408($s0)
    srl        $a3,$a0,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    move       $a1,$v0
    beqz       $a2, .L00002c68
    lui        $s4,0x40
    li         $a6,-1
    li         $t1,-3
    dsrl32     $a6,$a6,0x0
    and        $t1,$a0,$t1
    sw         $t1,-19664($s0)
    dsll32     $t1,$t1,0x0
    ld         $t2,824($s1)
    ld         $a4,-30720($gp)
    dsrl32     $t1,$t1,0x0
    and        $t1,$a6,$t1
    daddu      $t2,$s4,$t2
    or         $t1,$a4,$t1
    sd         $t1,0($t2)
    sync
    lhu        $t0,-31408($s0)
    lw         $a7,-19664($s0)
    andi       $t0,$t0,0x1
    and        $a7,$s6,$a7
    sll        $t0,$t0,0x5
    or         $a7,$a7,$t0
    sw         $a7,-19664($s0)
    dsll32     $a7,$a7,0x0
    ld         $a5,824($s1)
    dsrl32     $a7,$a7,0x0
    and        $a6,$a6,$a7
    daddu      $a5,$s4,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
.L00002c68:
    ld         $t0,824($s1)
    daddu      $t0,$s4,$t0
    ld         $a7,-31416($s0)
    sd         $a7,0($t0)
    sync
    beqz       $a2, .L00002cb4
    li         $s6,-2
    lw         $t1,-19664($s0)
    and        $t1,$s6,$t1
    sw         $t1,-19664($s0)
    li         $t8,-1
    ld         $t2,824($s1)
    dsrl32     $t8,$t8,0x0
    ld         $t3,-30720($gp)
    and        $t1,$t1,$t8
    daddu      $t2,$s4,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
.L00002cb4:
    lw         $t2,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s3
    ori        $t2,$t2,0x2
    and        $t2,$s6,$t2
    jal        mutex_spinunlock
    sw         $t2,-19664($s0)
    b          .L00002624
    nop
.L00002cd8:
    li         $a1,25
    li         $a0,0x8510
    jal        mutex_lock
    daddu      $a0,$a2,$a0
    b          .L00002684
    daddiu     $a2,$sp,1
    daddiu     $a2,$sp,1
.L00002cf4:
    move       $a1,$zero
    move       $a0,$s2
    jal        odsy_i2cDDCRegRead
    sb         $s4,-19416($s0)
    beqz       $v0, .L0000311c
    lbu        $a2,1($sp)
    lw         $a1,-19420($s0)
    beqz       $a1, .L00003108
    ld         $a2,-19432($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L00002d24:
    jal        vsema
    move       $a0,$s3
    b          .L00002290
    li         $v0,5
.L00002d34:
    lw         $a1,12292($a1)
    ori        $a1,$a1,0x1
    dsll32     $a1,$a1,0x0
    ld         $a2,-30640($gp)
    dsrl32     $a1,$a1,0x0
    and        $a1,$s2,$a1
    or         $a1,$a1,$a2
    sd         $a1,0($s3)
    sync
    b          .L000028d0
    nop
.L00002d60:
    ld         $s0,48($sp)
    jal        vsema
    move       $a0,$s5
    move       $a0,$s3
    jal        mutex_spinunlock
    move       $a1,$s0
    b          .L000024f4
    nop
.L00002d80:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L000026d0
    nop
.L00002d94:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L0000286c
    nop
.L00002da8:
    jal        odsy_restoreDCD2FPGA
    move       $a0,$s1
    beqz       $v0, .L00002cf4
    daddiu     $a2,$sp,1
    lw         $a1,-19420($s0)
    beqz       $a1, .L000031f8
    ld         $a2,-19432($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L00002dd0:
    jal        vsema
    move       $a0,$s3
    b          .L00002290
    li         $v0,11
.L00002de0:
    ld         $s0,40($sp)
    jal        vsema
    move       $a0,$s5
    move       $a0,$s3
    jal        mutex_spinunlock
    move       $a1,$s0
    b          .L000024f4
    nop
.L00002e00:
    daddu      $s3,$s1,$s3
    jal        mutex_spinlock
    move       $a0,$s3
    ld         $t8,-31416($s0)
    li         $s5,0x8530
    sd         $v0,32($sp)
    beqz       $t8, .L00003164
    daddu      $s5,$s1,$s5
    move       $a0,$s3
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L00003220
    nop
.L00002e40:
    jal        vsema
    move       $a0,$s5
    b          .L0000291c
    lhu        $a6,298($s1)
.L00002e50:
    move       $a0,$s3
    move       $a1,$zero
    ori        $a2,$a2,0xe
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,0($sp)
    ld         $a2,-19432($s0)
    beqz       $v0, .L00003198
    lw         $a0,-19420($s0)
    beqz       $a0, .L0000320c
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L00002e84:
    jal        vsema
    move       $a0,$s2
    b          .L00002290
    li         $v0,5
.L00002e94:
    jal        mutex_spinlock
    move       $a0,$s3
    lw         $a0,-19664($s0)
    lhu        $a2,-31408($s0)
    srl        $a3,$a0,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L00002f28
    move       $a1,$v0
    li         $t0,-3
    and        $t0,$a0,$t0
    sw         $t0,-19664($s0)
    dsll32     $t0,$t0,0x0
    ld         $t1,824($s1)
    ld         $a4,-30720($gp)
    dsrl32     $t0,$t0,0x0
    and        $t0,$s4,$t0
    daddu      $t1,$s2,$t1
    or         $t0,$a4,$t0
    sd         $t0,0($t1)
    sync
    lhu        $a7,-31408($s0)
    lw         $a6,-19664($s0)
    andi       $a7,$a7,0x1
    and        $a6,$s6,$a6
    sll        $a7,$a7,0x5
    or         $a6,$a6,$a7
    sw         $a6,-19664($s0)
    dsll32     $a6,$a6,0x0
    ld         $a5,824($s1)
    dsrl32     $a6,$a6,0x0
    and        $a6,$s4,$a6
    daddu      $a5,$s2,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
.L00002f28:
    ld         $t2,824($s1)
    daddu      $t2,$s2,$t2
    ld         $t1,-31416($s0)
    sd         $t1,0($t2)
    sync
    beqz       $a2, .L00002f74
    li         $s6,-2
    lw         $t3,-19664($s0)
    and        $t3,$s6,$t3
    sw         $t3,-19664($s0)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s1)
    dsrl32     $t3,$t3,0x0
    ld         $t9,-30720($gp)
    and        $t3,$s4,$t3
    daddu      $t8,$s2,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L00002f74:
    lw         $t8,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s3
    ori        $t8,$t8,0x2
    and        $t8,$s6,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s0)
    b          .L00002a24
    nop
.L00002f98:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L00002aa8
    nop
.L00002fac:
    li         $a1,25
    li         $a0,0x8510
    jal        mutex_lock
    daddu      $a0,$a2,$a0
    b          .L00002958
    daddiu     $a2,$sp,2
    move       $a0,$s2
.L00002fc8:
    move       $a1,$zero
    jal        odsy_i2cDDCRegRead
    daddiu     $a2,$sp,2
    beqz       $v0, .L00003378
    lbu        $a2,2($sp)
    lw         $a1,-19420($s0)
    beqz       $a1, .L00003328
    ld         $a2,-19432($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L00002ff4:
    jal        vsema
    move       $a0,$s3
    b          .L00002290
    li         $v0,5
.L00003004:
    jal        mutex_spinlock
    move       $a0,$s3
    lw         $a0,-19664($s0)
    lhu        $a2,-31408($s0)
    srl        $a3,$a0,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L00003098
    move       $a1,$v0
    li         $t0,-3
    and        $t0,$a0,$t0
    sw         $t0,-19664($s0)
    dsll32     $t0,$t0,0x0
    ld         $t1,824($s1)
    ld         $a4,-30720($gp)
    dsrl32     $t0,$t0,0x0
    and        $t0,$s2,$t0
    daddu      $t1,$s4,$t1
    or         $t0,$a4,$t0
    sd         $t0,0($t1)
    sync
    lhu        $a7,-31408($s0)
    lw         $a6,-19664($s0)
    andi       $a7,$a7,0x1
    and        $a6,$s6,$a6
    sll        $a7,$a7,0x5
    or         $a6,$a6,$a7
    sw         $a6,-19664($s0)
    dsll32     $a6,$a6,0x0
    ld         $a5,824($s1)
    dsrl32     $a6,$a6,0x0
    and        $a6,$s2,$a6
    daddu      $a5,$s4,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
.L00003098:
    ld         $t2,824($s1)
    daddu      $t2,$s4,$t2
    ld         $t1,-31416($s0)
    sd         $t1,0($t2)
    sync
    beqz       $a2, .L000030e4
    li         $s6,-2
    lw         $t3,-19664($s0)
    and        $t3,$s6,$t3
    sw         $t3,-19664($s0)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s1)
    dsrl32     $t3,$t3,0x0
    ld         $t9,-30720($gp)
    and        $t3,$s2,$t3
    daddu      $t8,$s4,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L000030e4:
    lw         $t8,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s3
    ori        $t8,$t8,0x2
    and        $t8,$s6,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s0)
    b          .L00002584
    nop
.L00003108:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L00002d24
    nop
.L0000311c:
    move       $a0,$s2
    move       $a1,$zero
    ori        $a2,$a2,0x8
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,1($sp)
    ld         $a2,-19432($s0)
    beqz       $v0, .L0000333c
    lw         $a0,-19420($s0)
    beqz       $a0, .L000033c4
    li         $a0,0x8510
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L00003154:
    jal        vsema
    move       $a0,$s3
    b          .L00002290
    li         $v0,5
.L00003164:
    ld         $s2,32($sp)
    jal        vsema
    move       $a0,$s5
    move       $a0,$s3
    jal        mutex_spinunlock
    move       $a1,$s2
    b          .L0000291c
    lhu        $a6,298($s1)
.L00003184:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L000029a4
    nop
.L00003198:
    lbu        $a1,0($sp)
    beqz       $a0, .L00003364
    sw         $a1,-31168($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L000031b0:
    jal        vsema
    move       $a0,$s2
    b          .L000024f4
    nop
.L000031c0:
    jal        odsy_restoreDCD2FPGA
    move       $a0,$s1
    beqz       $v0, .L00002fc8
    move       $a0,$s2
    lw         $a1,-19420($s0)
    beqz       $a1, .L000033d4
    ld         $a2,-19432($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L000031e8:
    jal        vsema
    move       $a0,$s3
    b          .L00002290
    li         $v0,11
.L000031f8:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L00002dd0
    nop
.L0000320c:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L00002e84
    nop
.L00003220:
    jal        mutex_spinlock
    move       $a0,$s3
    lw         $a0,-19664($s0)
    lhu        $a2,-31408($s0)
    srl        $a3,$a0,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L000032b8
    move       $a1,$v0
    li         $t0,-3
    and        $t0,$a0,$t0
    sw         $t0,-19664($s0)
    ld         $t1,824($s1)
    dsll32     $t0,$t0,0x0
    ld         $a4,-30720($gp)
    dsrl32     $t0,$t0,0x0
    daddu      $t1,$s4,$t1
    and        $t0,$s2,$t0
    or         $t0,$a4,$t0
    sd         $t0,0($t1)
    sync
    lhu        $a7,-31408($s0)
    lw         $t0,-19664($s0)
    li         $a6,-33
    andi       $a7,$a7,0x1
    and        $a6,$a6,$t0
    sll        $a7,$a7,0x5
    or         $a6,$a6,$a7
    sw         $a6,-19664($s0)
    ld         $a5,824($s1)
    dsll32     $a6,$a6,0x0
    dsrl32     $a6,$a6,0x0
    daddu      $a5,$s4,$a5
    and        $a6,$s2,$a6
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
.L000032b8:
    ld         $t2,824($s1)
    daddu      $t2,$s4,$t2
    ld         $t1,-31416($s0)
    sd         $t1,0($t2)
    sync
    beqz       $a2, .L00003304
    nop
    lw         $t3,-19664($s0)
    and        $t3,$s6,$t3
    sw         $t3,-19664($s0)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s1)
    dsrl32     $t3,$t3,0x0
    ld         $t9,-30720($gp)
    and        $t3,$s2,$t3
    daddu      $t8,$s4,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
.L00003304:
    lw         $t8,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s3
    ori        $t8,$t8,0x2
    and        $t8,$s6,$t8
    jal        mutex_spinunlock
    sw         $t8,-19664($s0)
    b          .L00002e40
    nop
.L00003328:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L00002ff4
    nop
.L0000333c:
    lbu        $a1,1($sp)
    beqz       $a0, .L000033e8
    sw         $a1,-31168($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L00003354:
    jal        vsema
    move       $a0,$s3
    b          .L000022d0
    lw         $at,-19328($s0)
.L00003364:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L000031b0
    nop
.L00003378:
    move       $a0,$s2
    li         $a3,-15
    move       $a1,$zero
    and        $a2,$a2,$a3
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    sb         $a2,2($sp)
    ld         $a2,-19432($s0)
    beqz       $v0, .L000033fc
    lw         $a0,-19420($s0)
    beqz       $a0, .L00003424
    li         $a0,0x8510
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L000033b4:
    jal        vsema
    move       $a0,$s3
    b          .L00002290
    li         $v0,5
.L000033c4:
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L00003154
    nop
.L000033d4:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L000031e8
    nop
.L000033e8:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L00003354
    nop
.L000033fc:
    lbu        $a1,2($sp)
    beqz       $a0, .L00003434
    sw         $a1,-31168($s0)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
.L00003414:
    jal        vsema
    move       $a0,$s3
    b          .L000024f4
    nop
.L00003424:
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L000033b4
    nop
.L00003434:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$a2,$a0
    b          .L00003414
    nop
.L00003448:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,496
    b          .L00002290
    li         $v0,5

glabel odsy_copyin_frame_line_tables
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    lwu        $a0,8($a0)
    sd         $ra,8($sp)
    li         $a1,2
    jal        kern_calloc
    sd         $s1,16($sp)
    li         $a4,12
    bnez       $v0, .L000034a0
    move       $s1,$v0
.L00003488:
    ld         $ra,8($sp)
    move       $v0,$a4
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000034a0:
    lw         $a2,8($s0)
    move       $a1,$v0
    ld         $a0,0($s0)
    jal        copyin
    addu       $a2,$a2,$a2
    beqz       $v0, .L000034cc
    nop
    jal        kern_free
    move       $a0,$s1
    b          .L00003488
    li         $a4,14
.L000034cc:
    lwu        $a0,24($s0)
    li         $a1,2
    jal        kern_calloc
    sd         $s1,0($s0)
    beqz       $v0, .L00003520
    move       $s1,$v0
    lw         $a2,24($s0)
    move       $a1,$v0
    ld         $a0,16($s0)
    jal        copyin
    addu       $a2,$a2,$a2
    beqz       $v0, .L00003518
    move       $a4,$zero
    jal        kern_free
    ld         $a0,0($s0)
    jal        kern_free
    move       $a0,$s1
    b          .L00003488
    li         $a4,14
.L00003518:
    b          .L00003488
    sd         $s1,16($s0)
.L00003520:
    jal        kern_free
    ld         $a0,0($s0)
    b          .L00003488
    li         $a4,12

glabel setDACreg
    li         $at,31
    sb         $at,32($a0)
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    move       $a5,$a2
    move       $s0,$a0
    sd         $s1,16($sp)
    move       $s1,$a3
    beqz       $a1, .L00003574
    sd         $ra,24($sp)
    andi       $a2,$a2,0x3
    li         $a1,5
    ori        $a2,$a2,0x18
    sd         $a2,0($sp)
    jal        odsy_i2cPLLRegWrite
    andi       $a2,$a2,0xff
    bnez       $v0, .L000035b8
.L00003574:
    move       $a0,$s0
    li         $a1,4
    jal        odsy_i2cPLLRegWrite
    andi       $a2,$s1,0xff
    bnez       $v0, .L0000359c
    ld         $ra,24($sp)
.L0000358c:
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000359c:
    ld         $a1,-30720($gp)
    li         $a0,1
    move       $a2,$s1
    jal        cmn_err
    daddiu     $a1,$a1,600
    b          .L0000358c
    ld         $ra,24($sp)
.L000035b8:
    ld         $a1,-30720($gp)
    li         $a0,1
    ld         $a2,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,544
    b          .L0000358c
    ld         $ra,24($sp)

glabel odsy_initDCD2DAC
    li         $at,31
    sb         $at,32($a1)
    ld         $v0,16($a1)
    daddiu     $sp,$sp,-32
    move       $a2,$zero
    sd         $v0,0($sp)
    sd         $s1,8($sp)
    move       $s1,$a1
    li         $a1,3
    sd         $ra,16($sp)
    jal        odsy_i2cPLLRegWrite
    move       $a0,$s1
    bnez       $v0, .L000037a0
    sd         $s0,24($sp)
    move       $a0,$s1
    li         $a1,1
    move       $a2,$zero
    jal        setDACreg
    move       $a3,$zero
    move       $a0,$s1
    li         $a1,1
    li         $a2,3
    jal        setDACreg
    li         $a3,9
    move       $a0,$s1
    move       $a1,$zero
    li         $a2,3
    jal        setDACreg
    li         $a3,8
    move       $a0,$s1
    move       $a1,$zero
    li         $a2,3
    jal        setDACreg
    li         $a3,9
    move       $a0,$s1
    move       $a1,$zero
    li         $a2,3
    jal        setDACreg
    li         $a3,41
    move       $a0,$s1
    move       $a1,$zero
    li         $a2,3
    jal        setDACreg
    li         $a3,9
    move       $a0,$s1
    li         $a1,1
    move       $a2,$zero
    jal        setDACreg
    li         $a3,4
    move       $a0,$s1
    li         $a1,1
    li         $a2,2
    jal        setDACreg
    li         $a3,255
    move       $a0,$s1
    li         $a1,1
    move       $a2,$zero
    jal        setDACreg
    li         $a3,5
    move       $a0,$s1
    li         $a1,1
    li         $a2,2
    jal        setDACreg
    move       $a3,$zero
    move       $a0,$s1
    li         $a1,1
    move       $a2,$zero
    jal        setDACreg
    li         $a3,6
    move       $a0,$s1
    li         $a1,1
    li         $a2,2
    jal        setDACreg
    li         $a3,236
    move       $a0,$s1
    li         $a1,1
    move       $a2,$zero
    jal        setDACreg
    li         $a3,7
    move       $a0,$s1
    li         $a1,1
    li         $a2,2
    jal        setDACreg
    li         $a3,65
    move       $a0,$s1
    li         $a1,1
    move       $a2,$zero
    jal        setDACreg
    move       $a3,$zero
    move       $s0,$zero
    move       $a0,$s1
.L00003740:
    li         $a1,1
    li         $a2,1
    jal        setDACreg
    move       $a3,$s0
    move       $a0,$s1
    move       $a1,$zero
    li         $a2,1
    jal        setDACreg
    move       $a3,$s0
    move       $a0,$s1
    move       $a1,$zero
    li         $a2,1
    jal        setDACreg
    move       $a3,$s0
    addiu      $s0,$s0,1
    slti       $v1,$s0,256
    bnez       $v1, .L00003740
    move       $a0,$s1
    move       $v0,$zero
.L0000378c:
    ld         $ra,16($sp)
    ld         $s0,24($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000037a0:
    ld         $a1,-30720($gp)
    ld         $a2,0($sp)
    li         $a0,1
    lh         $a2,790($a2)
    jal        cmn_err
    daddiu     $a1,$a1,656
    b          .L0000378c
    li         $v0,1

glabel odsy_reconfigDCD2FPLD
    li         $at,31
    sb         $at,32($a0)
    daddiu     $sp,$sp,-16
    li         $a1,3
    li         $a2,8
    sd         $s0,0($sp)
    nop
    sd         $ra,8($sp)
    jal        odsy_i2cPLLRegWrite
    move       $s0,$a0
    bnez       $v0, .L00003854
    move       $a0,$s0
    li         $a1,1
    jal        odsy_i2cPLLRegWrite
    move       $a2,$zero
    bnez       $v0, .L0000386c
    ld         $a1,-30720($gp)
    move       $a0,$s0
    li         $a1,2
    jal        odsy_i2cPLLRegWrite
    move       $a2,$zero
    bnez       $v0, .L00003880
    ld         $a1,-30720($gp)
    move       $a0,$s0
    li         $a1,3
    jal        odsy_i2cPLLRegWrite
    li         $a2,1
    bnez       $v0, .L00003894
    lui        $a1,0x9
    ld         $a0,16($s0)
    jal        odsy_usdelay
    ori        $a1,$a1,0x27c0
    move       $v0,$zero
.L00003844:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00003854:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,720
    b          .L00003844
    li         $v0,1
.L0000386c:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,776
    b          .L00003844
    li         $v0,1
.L00003880:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,832
    b          .L00003844
    li         $v0,1
.L00003894:
    ld         $a1,-30720($gp)
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,888
    b          .L00003844
    li         $v0,1

glabel odsy_LoadDCD2Regs
    daddiu     $sp,$sp,-32
    sd         $s2,0($sp)
    sd         $ra,16($sp)
    sd         $s1,24($sp)
    move       $s1,$a0
    sd         $s0,8($sp)
    move       $s0,$a1
    jal        odsy_initDCD2DAC
    ld         $s2,16($a1)
    bnez       $v0, .L00003ab4
    li         $at,92
    sb         $at,32($s0)
    move       $a1,$zero
    lbu        $a2,287($s1)
    jal        odsy_i2cPLLRegWrite
    move       $a0,$s0
    bnez       $v0, .L00003ad0
    ld         $a1,-30720($gp)
    move       $a0,$s0
    lbu        $a2,291($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,1
    bnez       $v0, .L00003aec
    move       $a0,$s0
    lbu        $a2,295($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,2
    bnez       $v0, .L00003b0c
    move       $a0,$s0
    lbu        $a2,299($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,3
    bnez       $v0, .L00003b2c
    ld         $a1,-30720($gp)
    move       $a0,$s0
    lbu        $a2,303($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,4
    bnez       $v0, .L00003b48
    move       $a0,$s0
    lbu        $a2,307($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,5
    bnez       $v0, .L00003b68
    move       $a0,$s0
    lbu        $a2,311($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,6
    bnez       $v0, .L00003b88
    move       $a0,$s0
    lbu        $a2,315($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,7
    bnez       $v0, .L00003ba8
    lui        $a1,0x9
    ld         $a0,16($s0)
    jal        odsy_usdelay
    ori        $a1,$a1,0x27c0
    li         $a2,31
    sb         $a2,32($s0)
    li         $a1,5
    lbu        $a2,259($s1)
    jal        odsy_i2cPLLRegWrite
    move       $a0,$s0
    bnez       $v0, .L00003bc8
    move       $a0,$s0
    lbu        $a2,263($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,6
    bnez       $v0, .L00003be4
    ld         $a1,-30720($gp)
    jal        odsy_reconfigDCD2FPLD
    move       $a0,$s0
    bnez       $v0, .L00003bfc
    li         $a3,23
    sb         $a3,32($s0)
    move       $a1,$zero
    lbu        $a2,267($s1)
    jal        odsy_i2cPLLRegWrite
    move       $a0,$s0
    bnez       $v0, .L00003c18
    move       $a0,$s0
    lbu        $a2,271($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,1
    bnez       $v0, .L00003c3c
    move       $a0,$s0
    lbu        $a2,275($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,2
    bnez       $v0, .L00003c58
    ld         $a1,-30720($gp)
    move       $a0,$s0
    lbu        $a2,279($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,3
    bnez       $v0, .L00003c70
    ld         $a1,-30720($gp)
    move       $a0,$s0
    lbu        $a2,283($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,4
    bnez       $v0, .L00003c88
    ld         $a1,-30720($gp)
    lw         $a2,280($s1)
    move       $a0,$s0
    li         $a1,5
    srl        $a2,$a2,0x8
    jal        odsy_i2cPLLRegWrite
    andi       $a2,$a2,0xff
    bnez       $v0, .L00003ca0
    ld         $a1,-30720($gp)
    lw         $a3,200($s1)
    andi       $a3,$a3,0x10
    beqz       $a3, .L00003a94
    move       $v0,$zero
.L00003a7c:
    ld         $ra,16($sp)
    ld         $s2,0($sp)
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00003a94:
    move       $a0,$s0
    li         $a2,7
    jal        odsy_i2cPLLRegWrite
    li         $a1,50
    beqz       $v0, .L00003a7c
    move       $v0,$zero
    b          .L00003cb8
    ld         $a1,-30720($gp)
.L00003ab4:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,952
    b          .L00003a7c
    li         $v0,1
.L00003ad0:
    li         $a0,1
    move       $a3,$zero
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1016
    b          .L00003a7c
    li         $v0,1
.L00003aec:
    ld         $a1,-30720($gp)
    li         $a3,1
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1016
    b          .L00003a7c
    li         $v0,1
.L00003b0c:
    ld         $a1,-30720($gp)
    li         $a3,2
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1016
    b          .L00003a7c
    li         $v0,1
.L00003b2c:
    li         $a3,3
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1016
    b          .L00003a7c
    li         $v0,1
.L00003b48:
    ld         $a1,-30720($gp)
    li         $a0,1
    move       $a3,$zero
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1016
    b          .L00003a7c
    li         $v0,1
.L00003b68:
    ld         $a1,-30720($gp)
    li         $a3,5
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1016
    b          .L00003a7c
    li         $v0,1
.L00003b88:
    ld         $a1,-30720($gp)
    li         $a3,6
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1016
    b          .L00003a7c
    li         $v0,1
.L00003ba8:
    ld         $a1,-30720($gp)
    li         $a3,7
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1016
    b          .L00003a7c
    li         $v0,1
.L00003bc8:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1088
    b          .L00003a7c
    li         $v0,1
.L00003be4:
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1192
    b          .L00003a7c
    li         $v0,1
.L00003bfc:
    ld         $a1,-30720($gp)
    li         $a0,4
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1296
    b          .L00003a7c
    li         $v0,1
.L00003c18:
    lw         $a3,264($s1)
    ld         $a1,-30720($gp)
    li         $a0,1
    andi       $a3,$a3,0xff
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1368
    b          .L00003a7c
    li         $v0,1
.L00003c3c:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1456
    b          .L00003a7c
    li         $v0,1
.L00003c58:
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1536
    b          .L00003a7c
    li         $v0,1
.L00003c70:
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1608
    b          .L00003a7c
    li         $v0,1
.L00003c88:
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1688
    b          .L00003a7c
    li         $v0,1
.L00003ca0:
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1776
    b          .L00003a7c
    li         $v0,1
.L00003cb8:
    li         $a0,1
    lh         $a2,790($s2)
    jal        cmn_err
    daddiu     $a1,$a1,1864
    b          .L00003a7c
    li         $v0,1

glabel odsyLoadTimingTable
    ld         $v0,824($a0)
    daddiu     $sp,$sp,-4896
    sd         $zero,4688($sp)
    sd         $zero,4680($sp)
    sd         $zero,4664($sp)
    sd         $zero,4672($sp)
    sd         $zero,4784($sp)
    sd         $zero,4624($sp)
    sd         $v0,4792($sp)
    sd         $s7,4872($sp)
    sd         $s5,4864($sp)
    sd         $ra,4856($sp)
    sd         $s8,4848($sp)
    sd         $s3,4656($sp)
    lhu        $at,298($a0)
    sd         $s6,4648($sp)
    li         $s6,3
    move       $s3,$a0
    sd         $s0,4640($sp)
    move       $s0,$a1
    beq        $s6, $at, .L000050e0
    sd         $s2,4840($sp)
    lui        $s8,0x1
.L00003d2c:
    daddu      $s8,$s3,$s8
    lw         $v1,-19420($s8)
    beqz       $v1, .L00004c60
    ld         $v0,-19432($s8)
    li         $a1,25
    li         $a0,0x8520
    jal        mutex_lock
    daddu      $a0,$v0,$a0
    lw         $a1,-19328($s8)
.L00003d50:
    beqz       $a1, .L000050f8
    li         $a1,25
    ld         $a0,824($s3)
.L00003d5c:
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    sd         $s1,4832($sp)
    bnez       $v0, .L00005a88
    sd         $s4,4824($sp)
    lui        $s1,0x40
    lw         $a7,208($s0)
    lui        $a5,0x23
    li         $s4,-1
    ld         $t0,824($s3)
    dsrl32     $s4,$s4,0x0
    andi       $a7,$a7,0x7
    ori        $a5,$a5,0x3804
    dsll32     $a7,$a7,0x0
    ld         $t1,-30616($gp)
    daddu      $a5,$a5,$t0
    dsrl32     $a7,$a7,0x0
    daddu      $t0,$s1,$t0
    lw         $a5,0($a5)
    and        $a7,$s4,$a7
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
    lw         $a6,216($s0)
    ld         $a7,-30608($gp)
    and        $a5,$a5,$a7
    lw         $a7,212($s0)
    andi       $a6,$a6,0x7
    sll        $a6,$a6,0xf
    andi       $a7,$a7,0x7
    or         $a5,$a5,$a6
    li         $a6,-28673
    sll        $a7,$a7,0xc
    and        $a5,$a5,$a6
    lui        $a6,0x4
    nor        $a6,$a6,$zero
    or         $a5,$a5,$a7
    sd         $a5,4632($sp)
    and        $a5,$a5,$a6
    ld         $a4,824($s3)
    dsll32     $a5,$a5,0x0
    ld         $a3,-30600($gp)
    dsrl32     $a5,$a5,0x0
    daddu      $a4,$s1,$a4
    and        $a5,$s4,$a5
    or         $a3,$a3,$a5
    sd         $a3,0($a4)
    sync
    lw         $a2,-19328($s8)
    beqz       $a2, .L0000510c
    li         $s2,0x8540
    lw         $t8,292($s3)
.L00003e2c:
    blez       $t8, .L00004c78
    li         $t2,88
    sb         $t2,-19416($s8)
    lw         $t1,136($s0)
    sd         $t1,4768($sp)
    lw         $t0,140($s0)
    sd         $t0,4760($sp)
    lw         $a7,144($s0)
    sd         $a7,4752($sp)
    lw         $a4,156($s0)
    lw         $a5,152($s0)
    lw         $a6,148($s0)
    lw         $v0,128($s0)
    lw         $s5,132($s0)
    sw         $s5,-31204($s8)
    lw         $a3,136($s0)
    sw         $a3,-31200($s8)
    lw         $a2,148($s0)
    sw         $a2,-31196($s8)
    lw         $a1,152($s0)
    sw         $a1,-31192($s8)
    lw         $a0,236($s0)
    sw         $a0,-31188($s8)
    lw         $v1,240($s0)
    sw         $v1,-31184($s8)
    lw         $at,244($s0)
    sw         $at,-31180($s8)
    lw         $ra,248($s0)
    sw         $ra,-31176($s8)
    lhu        $t9,298($s3)
    sd         $a6,4736($sp)
    sd         $a5,4720($sp)
    beq        $s6, $t9, .L00004f74
    sd         $a4,4696($sp)
.L00003eb4:
    li         $ra,4
    sd         $ra,4744($sp)
    li         $t9,5
    sd         $t9,4728($sp)
    li         $s7,1
    li         $t8,6
    sd         $t8,4712($sp)
    li         $t3,7
    sd         $t3,4704($sp)
    move       $a5,$zero
.L00003edc:
    ld         $t8,824($s3)
    andi       $a1,$a5,0xff
    andi       $a2,$v0,0xff
    ld         $at,-30592($gp)
    li         $s2,0xb408
    daddu      $v0,$s1,$t8
    daddu      $s2,$s3,$s2
    sd         $at,0($v0)
    sync
    jal        odsy_i2cPLLRegWrite
    move       $a0,$s2
    bnez       $v0, .L00005b3c
    move       $a0,$s2
    andi       $a2,$s5,0xff
    jal        odsy_i2cPLLRegWrite
    andi       $a1,$s7,0xff
    bnez       $v0, .L00005b58
    ld         $s5,-30720($gp)
    ld         $a2,4768($sp)
    move       $a0,$s2
    li         $a1,2
    jal        odsy_i2cPLLRegWrite
    andi       $a2,$a2,0xff
    bnez       $v0, .L00005b70
    ld         $s5,-30720($gp)
    ld         $a2,4760($sp)
    move       $a0,$s2
    li         $a1,3
    jal        odsy_i2cPLLRegWrite
    andi       $a2,$a2,0xff
    bnez       $v0, .L00005b88
    ld         $a2,4752($sp)
    ld         $a1,4744($sp)
    move       $a0,$s2
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    andi       $a1,$a1,0xff
    bnez       $v0, .L00005ba4
    ld         $a2,4736($sp)
    ld         $a1,4728($sp)
    move       $a0,$s2
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    andi       $a1,$a1,0xff
    bnez       $v0, .L00005bc0
    ld         $s5,-30720($gp)
    ld         $a2,4720($sp)
    ld         $a1,4712($sp)
    move       $a0,$s2
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    andi       $a1,$a1,0xff
    bnez       $v0, .L00005bd8
    ld         $a2,4696($sp)
    ld         $a1,4704($sp)
    move       $a0,$s2
    andi       $a2,$a2,0xff
    jal        odsy_i2cPLLRegWrite
    andi       $a1,$a1,0xff
    bnez       $v0, .L00005bf4
    ld         $s5,-30720($gp)
    lw         $a3,292($s3)
    blez       $a3, .L000051c8
    move       $a0,$s2
.L00003fdc:
    move       $a0,$s3
.L00003fe0:
    lui        $a1,0x1
    jal        odsy_usdelay
    ori        $a1,$a1,0x86a0
    lw         $a2,-19328($s8)
    beqz       $a2, .L0000515c
    li         $a1,25
    li         $a1,13
.L00003ffc:
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s3)
    bnez       $v0, .L00005a88
    ld         $a7,4632($sp)
    lui        $t0,0x4
    ld         $a4,4792($sp)
    or         $a7,$a7,$t0
    ld         $a6,824($s3)
    dsll32     $a7,$a7,0x0
    ld         $a5,-30600($gp)
    daddu      $a4,$s1,$a4
    dsrl32     $a7,$a7,0x0
    ld         $a3,-30584($gp)
    daddu      $a6,$s1,$a6
    and        $a7,$s4,$a7
    or         $a5,$a5,$a7
    sd         $a5,0($a6)
    sync
    li         $a1,512
    sd         $a3,0($a4)
    sync
    daddiu     $a0,$sp,0
    jal        bzero
    sd         $a4,4808($sp)
    li         $a1,4096
    sd         $s2,4776($sp)
    daddiu     $a0,$sp,512
    jal        bzero
    sd         $s0,4800($sp)
    li         $a4,1
    lui        $a0,0xffff
    move       $s5,$zero
    li         $s2,256
    daddiu     $a1,$sp,0
    li         $a5,2
    lui        $s6,0x3900
    li         $s7,-1
    dsll32     $s7,$s7,0x0
    ori        $s6,$s6,0x80
    b          .L000040d4
    move       $s0,$a5
.L000040a0:
    and        $t9,$a0,$t9
    or         $s5,$s5,$t9
    dsll32     $t9,$s6,0x0
    dsll32     $t8,$s5,0x0
    dsrl32     $t8,$t8,0x0
    and        $t9,$s7,$t9
    and        $t8,$s4,$t8
    or         $t8,$t8,$t9
    ld         $t9,4808($sp)
    sd         $t8,0($t9)
    sync
.L000040cc:
    blez       $s2, .L00004138
    andi       $v0,$s0,0x1
.L000040d4:
    sra        $at,$s0,0x1f
    xor        $ra,$s0,$at
    subu       $ra,$ra,$at
    andi       $ra,$ra,0x3f
    xor        $ra,$ra,$at
    subu       $ra,$ra,$at
    beqz       $ra, .L00004af8
    sd         $a1,4880($sp)
.L000040f4:
    andi       $s1,$s0,0x3
    addiu      $s0,$s0,1
    daddiu     $a1,$a1,2
    lh         $v0,-2($a1)
    beqz       $s1, .L00004124
    addiu      $s2,$s2,-1
    beq        $s1, $a4, .L0000412c
    sll        $at,$v0,0x10
    bne        $s1, $a5, .L000040a0
    sll        $t9,$v0,0x10
    b          .L000040cc
    andi       $s5,$v0,0xffff
.L00004124:
    b          .L000040cc
    andi       $s6,$v0,0xffff
.L0000412c:
    and        $at,$a0,$at
    b          .L000040cc
    or         $s6,$s6,$at
.L00004138:
    beqz       $v0, .L000041b0
    sra        $a2,$s0,0x1f
    sra        $a1,$s0,0x1f
    xor        $v1,$s0,$a1
    subu       $v1,$v1,$a1
    andi       $v1,$v1,0x3f
    xor        $v1,$v1,$a1
    subu       $v1,$v1,$a1
    beqz       $v1, .L000052b4
.L0000415c:
    ld         $v0,4688($sp)
    sltiu      $v0,$v0,1
    beqz       $v0, .L00005a88
    andi       $s1,$s0,0x3
    beqz       $s1, .L00004f44
    nop
    beq        $s1, $a4, .L000041a4
    nop
    beq        $s1, $a5, .L0000508c
    dsll32     $a1,$s6,0x0
    dsll32     $v1,$s5,0x0
    dsrl32     $v1,$v1,0x0
    and        $a1,$s7,$a1
    and        $v1,$s4,$v1
    or         $v1,$v1,$a1
    ld         $a1,4808($sp)
    sd         $v1,0($a1)
    sync
.L000041a4:
    beqz       $v0, .L00005a88
    addiu      $s0,$s0,1
    sra        $a2,$s0,0x1f
.L000041b0:
    xor        $a1,$s0,$a2
    subu       $a1,$a1,$a2
    andi       $a1,$a1,0x3f
    xor        $a1,$a1,$a2
    subu       $a1,$a1,$a2
    beqz       $a1, .L00005170
.L000041c8:
    li         $a2,3
    andi       $s1,$s0,0x3
    beq        $s1, $a2, .L00004bb0
    dsll32     $a3,$s6,0x0
    beqz       $s1, .L00004bd4
    nop
    beq        $s1, $a4, .L00004c2c
    nop
    beq        $s1, $a5, .L00004c30
.L000041ec:
    li         $s2,2048
    b          .L0000422c
    daddiu     $a1,$sp,512
.L000041f8:
    and        $a6,$a0,$a6
    or         $s5,$s5,$a6
    dsll32     $a6,$s6,0x0
    dsll32     $a3,$s5,0x0
    dsrl32     $a3,$a3,0x0
    and        $a6,$s7,$a6
    and        $a3,$s4,$a3
    or         $a3,$a3,$a6
    ld         $a6,4808($sp)
    sd         $a3,0($a6)
    sync
.L00004224:
    blez       $s2, .L00004290
    andi       $t1,$s0,0x1
.L0000422c:
    sra        $t0,$s0,0x1f
    xor        $a7,$s0,$t0
    subu       $a7,$a7,$t0
    andi       $a7,$a7,0x3f
    xor        $a7,$a7,$t0
    subu       $a7,$a7,$t0
    beqz       $a7, .L00004b20
    sd         $a1,4888($sp)
.L0000424c:
    andi       $s1,$s0,0x3
    addiu      $s0,$s0,1
    daddiu     $a1,$a1,2
    lh         $v0,-2($a1)
    beqz       $s1, .L0000427c
    addiu      $s2,$s2,-1
    beq        $s1, $a4, .L00004284
    sll        $t0,$v0,0x10
    bne        $s1, $a5, .L000041f8
    sll        $a6,$v0,0x10
    b          .L00004224
    andi       $s5,$v0,0xffff
.L0000427c:
    b          .L00004224
    andi       $s6,$v0,0xffff
.L00004284:
    and        $t0,$a0,$t0
    b          .L00004224
    or         $s6,$s6,$t0
.L00004290:
    beqz       $t1, .L00004308
    andi       $s1,$s0,0x3
    sra        $t3,$s0,0x1f
    xor        $t2,$s0,$t3
    subu       $t2,$t2,$t3
    andi       $t2,$t2,0x3f
    xor        $t2,$t2,$t3
    subu       $t2,$t2,$t3
    beqz       $t2, .L000052d8
.L000042b4:
    ld         $v0,4680($sp)
    sltiu      $v0,$v0,1
    beqz       $v0, .L00005a88
    andi       $s1,$s0,0x3
    beqz       $s1, .L00004f4c
    nop
    beq        $s1, $a4, .L000042fc
    nop
    beq        $s1, $a5, .L00005094
    dsll32     $a1,$s6,0x0
    dsll32     $v1,$s5,0x0
    dsrl32     $v1,$v1,0x0
    and        $a1,$s7,$a1
    and        $v1,$s4,$v1
    or         $v1,$v1,$a1
    ld         $a1,4808($sp)
    sd         $v1,0($a1)
    sync
.L000042fc:
    beqz       $v0, .L00005a88
    addiu      $s0,$s0,1
    andi       $s1,$s0,0x3
.L00004308:
    beq        $s1, $a5, .L00005198
    ld         $a6,4800($sp)
.L00004310:
    lw         $s2,8($a6)
    addiu      $t8,$s2,1
    srl        $s6,$t8,0x1f
    addu       $s6,$s6,$t8
    sra        $s6,$s6,0x1
    lui        $t8,0x3900
    andi       $s6,$s6,0x3fff
    ld         $a6,0($a6)
    blez       $s2, .L00004e64
    or         $s6,$s6,$t8
    b          .L00004374
    li         $s0,2
.L00004340:
    and        $ra,$a0,$ra
    or         $s5,$s5,$ra
    dsll32     $ra,$s6,0x0
    dsll32     $t9,$s5,0x0
    dsrl32     $t9,$t9,0x0
    and        $ra,$s7,$ra
    and        $t9,$s4,$t9
    or         $t9,$t9,$ra
    ld         $ra,4808($sp)
    sd         $t9,0($ra)
    sync
.L0000436c:
    blez       $s2, .L000043d8
    andi       $a1,$s0,0x1
.L00004374:
    sra        $v0,$s0,0x1f
    xor        $at,$s0,$v0
    subu       $at,$at,$v0
    andi       $at,$at,0x3f
    xor        $at,$at,$v0
    subu       $at,$at,$v0
    beqz       $at, .L00004b48
    sd         $a6,4880($sp)
.L00004394:
    andi       $s1,$s0,0x3
    addiu      $s0,$s0,1
    daddiu     $a6,$a6,2
    lh         $v0,-2($a6)
    beqz       $s1, .L000043c4
    addiu      $s2,$s2,-1
    beq        $s1, $a4, .L000043cc
    sll        $v1,$v0,0x10
    bne        $s1, $a5, .L00004340
    sll        $ra,$v0,0x10
    b          .L0000436c
    andi       $s5,$v0,0xffff
.L000043c4:
    b          .L0000436c
    andi       $s6,$v0,0xffff
.L000043cc:
    and        $v1,$a0,$v1
    b          .L0000436c
    or         $s6,$s6,$v1
.L000043d8:
    beqz       $a1, .L00004450
    sra        $a2,$s0,0x1f
    sra        $a3,$s0,0x1f
    xor        $a2,$s0,$a3
    subu       $a2,$a2,$a3
    andi       $a2,$a2,0x3f
    xor        $a2,$a2,$a3
    subu       $a2,$a2,$a3
    beqz       $a2, .L00005334
.L000043fc:
    ld         $v0,4664($sp)
    sltiu      $v0,$v0,1
    beqz       $v0, .L00005a88
    andi       $s1,$s0,0x3
    beqz       $s1, .L00004f6c
    nop
    beq        $s1, $a4, .L00004444
    nop
    beq        $s1, $a5, .L000050ac
    dsll32     $a1,$s6,0x0
    dsll32     $v1,$s5,0x0
    dsrl32     $v1,$v1,0x0
    and        $a1,$s7,$a1
    and        $v1,$s4,$v1
    or         $v1,$v1,$a1
    ld         $a1,4808($sp)
    sd         $v1,0($a1)
    sync
.L00004444:
    beqz       $v0, .L00005a88
    addiu      $s0,$s0,1
    sra        $a2,$s0,0x1f
.L00004450:
    xor        $a1,$s0,$a2
    subu       $a1,$a1,$a2
    andi       $a1,$a1,0x3f
    xor        $a1,$a1,$a2
    ld         $s2,4800($sp)
    subu       $a1,$a1,$a2
    beqz       $a1, .L000050b8
    lw         $s2,24($s2)
.L00004470:
    li         $a2,3
    andi       $s1,$s0,0x3
    beq        $s1, $a2, .L00004be4
    dsll32     $t9,$s6,0x0
    beqz       $s1, .L00004c0c
    addiu      $t8,$s2,1
    beq        $s1, $a4, .L000050a4
    nop
    beq        $s1, $a5, .L00004e8c
.L00004494:
    ld         $a6,4800($sp)
    blez       $s2, .L00004540
    ld         $a6,16($a6)
    b          .L000044e0
    sra        $t2,$s0,0x1f
.L000044a8:
    and        $t0,$a0,$t0
    or         $s5,$s5,$t0
    dsll32     $t0,$s6,0x0
    dsll32     $a7,$s5,0x0
    dsrl32     $a7,$a7,0x0
    and        $t0,$s7,$t0
    and        $a7,$s4,$a7
    or         $a7,$a7,$t0
    ld         $t0,4808($sp)
    sd         $a7,0($t0)
    sync
.L000044d4:
    blez       $s2, .L00004544
    andi       $t3,$s0,0x1
    sra        $t2,$s0,0x1f
.L000044e0:
    xor        $t1,$s0,$t2
    subu       $t1,$t1,$t2
    andi       $t1,$t1,0x3f
    xor        $t1,$t1,$t2
    subu       $t1,$t1,$t2
    beqz       $t1, .L00004b70
    sd         $a6,4888($sp)
.L000044fc:
    andi       $s1,$s0,0x3
    addiu      $s0,$s0,1
    daddiu     $a6,$a6,2
    lh         $v0,-2($a6)
    beqz       $s1, .L0000452c
    addiu      $s2,$s2,-1
    beq        $s1, $a4, .L00004534
    sll        $t2,$v0,0x10
    bne        $s1, $a5, .L000044a8
    sll        $t0,$v0,0x10
    b          .L000044d4
    andi       $s5,$v0,0xffff
.L0000452c:
    b          .L000044d4
    andi       $s6,$v0,0xffff
.L00004534:
    and        $t2,$a0,$t2
    b          .L000044d4
    or         $s6,$s6,$t2
.L00004540:
    andi       $t3,$s0,0x1
.L00004544:
    beqz       $t3, .L000045bc
    andi       $s1,$s0,0x3
    sra        $t9,$s0,0x1f
    xor        $t8,$s0,$t9
    subu       $t8,$t8,$t9
    andi       $t8,$t8,0x3f
    xor        $t8,$t8,$t9
    subu       $t8,$t8,$t9
    beqz       $t8, .L000052fc
.L00004568:
    ld         $v0,4672($sp)
    sltiu      $v0,$v0,1
    beqz       $v0, .L00005a88
    andi       $s1,$s0,0x3
    beqz       $s1, .L00004f54
    nop
    beq        $s1, $a4, .L000045b0
    nop
    beq        $s1, $a5, .L0000509c
    dsll32     $a0,$s6,0x0
    dsll32     $v1,$s5,0x0
    dsrl32     $v1,$v1,0x0
    and        $a0,$s7,$a0
    and        $v1,$s4,$v1
    or         $v1,$v1,$a0
    ld         $a0,4808($sp)
    sd         $v1,0($a0)
    sync
.L000045b0:
    beqz       $v0, .L00005a88
    addiu      $s0,$s0,1
    andi       $s1,$s0,0x3
.L000045bc:
    beq        $s1, $a5, .L00004ce0
    lui        $s2,0x40
    li         $s6,3
.L000045c8:
    ld         $a0,824($s3)
    jal        odsy_poll_dfifo_level
    move       $a1,$s6
    bnez       $v0, .L00005a88
    ld         $a0,4800($sp)
    lw         $a0,200($a0)
    andi       $a0,$a0,0x10
    beqz       $a0, .L000045f8
    ld         $a2,4800($sp)
    lhu        $a1,298($s3)
    beq        $s6, $a1, .L00004ed4
    ld         $a2,4800($sp)
.L000045f8:
    ld         $a3,824($s3)
    lwu        $a2,176($a2)
    ld         $a4,-30696($gp)
    daddu      $a3,$s2,$a3
    and        $a2,$s4,$a2
    or         $a2,$a2,$a4
    sd         $a2,0($a3)
    sync
    sh         $zero,302($s3)
.L0000461c:
    ld         $a5,4800($sp)
    ld         $t2,824($s3)
    lwu        $t1,180($a5)
    ld         $t3,-30688($gp)
    daddu      $t2,$s2,$t2
    and        $t1,$s4,$t1
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
    lw         $t0,200($a5)
    andi       $t0,$t0,0x3
    ld         $t1,824($s3)
    dsll32     $t0,$t0,0x0
    ld         $t2,-30576($gp)
    dsrl32     $t0,$t0,0x0
    daddu      $t1,$s2,$t1
    and        $t0,$s4,$t0
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    lhu        $a7,302($s3)
    ld         $t0,824($s3)
    ld         $t1,-30568($gp)
    daddu      $t0,$s2,$t0
    and        $a7,$s4,$a7
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
    lw         $a6,200($a5)
    andi       $a6,$a6,0x20
    ld         $a7,824($s3)
    dsll32     $a6,$a6,0x0
    ld         $t0,-30560($gp)
    dsrl32     $a6,$a6,0x0
    daddu      $a7,$s2,$a7
    and        $a6,$s4,$a6
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
    lw         $a5,200($a5)
    andi       $a5,$a5,0x20
    ld         $a6,824($s3)
    dsll32     $a5,$a5,0x0
    ld         $a7,-30552($gp)
    dsrl32     $a5,$a5,0x0
    daddu      $a6,$s2,$a6
    and        $a5,$s4,$a5
    or         $a5,$a5,$a7
    sd         $a5,0($a6)
    sync
    lw         $a3,-19664($s8)
    li         $a4,-9
    li         $s5,-3
    and        $a3,$a3,$a4
    sw         $a3,-19664($s8)
    and        $a3,$s5,$a3
    sw         $a3,-19664($s8)
    lhu        $a4,302($s3)
    li         $a5,-17
    sltu       $a4,$zero,$a4
    and        $a3,$a3,$a5
    sll        $a4,$a4,0x4
    or         $a3,$a3,$a4
    sw         $a3,-19664($s8)
    ld         $a4,824($s3)
    dsll32     $a3,$a3,0x0
    ld         $a5,-30544($gp)
    dsrl32     $a3,$a3,0x0
    daddu      $a4,$s2,$a4
    and        $a3,$s4,$a3
    or         $a3,$a3,$a5
    sd         $a3,0($a4)
    sync
    li         $a1,1
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s3)
    bnez       $v0, .L00005a88
    ld         $v0,4800($sp)
    lw         $a0,164($v0)
    lwu        $v1,160($v0)
    ori        $a0,$a0,0x1
    sw         $a0,164($v0)
    ld         $a0,824($s3)
    ld         $a1,-30648($gp)
    and        $v1,$s4,$v1
    daddu      $a0,$s2,$a0
    or         $v1,$v1,$a1
    sd         $v1,0($a0)
    sync
    lw         $v0,164($v0)
    andi       $t2,$v0,0x40
    beqz       $t2, .L00004798
    ld         $a1,4800($sp)
    ori        $v0,$v0,0x80
    sw         $v0,164($a1)
.L00004798:
    ld         $a0,824($s3)
    dsll32     $v1,$v0,0x0
    ld         $a1,-30640($gp)
    dsrl32     $v1,$v1,0x0
    ld         $a2,4800($sp)
    daddu      $a0,$s2,$a0
    and        $v1,$s4,$v1
    or         $v1,$v1,$a1
    sd         $v1,0($a0)
    sync
    lwu        $at,168($a2)
    ld         $v1,824($s3)
    ld         $a0,-30536($gp)
    daddu      $v1,$s2,$v1
    and        $at,$s4,$at
    or         $at,$at,$a0
    sd         $at,0($v1)
    sync
    lwu        $ra,40($a2)
    ld         $at,824($s3)
    ld         $v1,-30528($gp)
    daddu      $at,$s2,$at
    and        $ra,$s4,$ra
    or         $ra,$ra,$v1
    sd         $ra,0($at)
    sync
    lwu        $t9,44($a2)
    ld         $ra,824($s3)
    ld         $at,-30520($gp)
    daddu      $ra,$s2,$ra
    and        $t9,$s4,$t9
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
    lwu        $t8,48($a2)
    ld         $t9,824($s3)
    ld         $ra,-30512($gp)
    daddu      $t9,$s2,$t9
    and        $t8,$s4,$t8
    or         $t8,$t8,$ra
    sd         $t8,0($t9)
    sync
    lwu        $t3,52($a2)
    ld         $t8,824($s3)
    ld         $t9,-30504($gp)
    daddu      $t8,$s2,$t8
    and        $t3,$s4,$t3
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
    lwu        $t2,56($a2)
    ld         $t3,824($s3)
    ld         $t8,-30496($gp)
    daddu      $t3,$s2,$t3
    and        $t2,$s4,$t2
    or         $t2,$t2,$t8
    sd         $t2,0($t3)
    sync
    lwu        $t1,60($a2)
    ld         $t2,824($s3)
    ld         $t3,-30488($gp)
    daddu      $t2,$s2,$t2
    and        $t1,$s4,$t1
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
    lwu        $t0,64($a2)
    ld         $t1,824($s3)
    ld         $t2,-30480($gp)
    daddu      $t1,$s2,$t1
    and        $t0,$s4,$t0
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    lwu        $a7,68($a2)
    ld         $t0,824($s3)
    ld         $t1,-30472($gp)
    daddu      $t0,$s2,$t0
    and        $a7,$s4,$a7
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
    lwu        $a6,72($a2)
    ld         $a7,824($s3)
    ld         $t0,-30464($gp)
    daddu      $a7,$s2,$a7
    and        $a6,$s4,$a6
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
    lwu        $a5,76($a2)
    ld         $a6,824($s3)
    ld         $a7,-30456($gp)
    daddu      $a6,$s2,$a6
    and        $a5,$s4,$a5
    or         $a5,$a5,$a7
    sd         $a5,0($a6)
    sync
    lwu        $a4,80($a2)
    ld         $a5,824($s3)
    ld         $a6,-30448($gp)
    daddu      $a5,$s2,$a5
    and        $a4,$s4,$a4
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    lwu        $a3,84($a2)
    ld         $a4,824($s3)
    ld         $a5,-30440($gp)
    daddu      $a4,$s2,$a4
    and        $a3,$s4,$a3
    or         $a3,$a3,$a5
    sd         $a3,0($a4)
    sync
    lw         $a3,-19328($s8)
    lw         $a2,224($a2)
    beqz       $a3, .L000051e4
    sw         $a2,-19504($s8)
    li         $s7,-2
.L00004974:
    ld         $a0,4800($sp)
.L00004978:
    lw         $a0,220($a0)
    beq        $a0, $s7, .L00004d04
    nop
    lw         $v1,-19500($s8)
    ld         $v0,4800($sp)
    andi       $v1,$v1,0x40
    beqz       $v1, .L00004f5c
    lw         $v0,28($v0)
    sw         $v0,-19500($s8)
.L0000499c:
    lw         $a0,-19328($s8)
    beqz       $a0, .L0000531c
    li         $a1,13
.L000049a8:
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s3)
    sltu       $a1,$zero,$v0
    beqz       $v0, .L00004fa0
    sd         $a1,4784($sp)
.L000049bc:
    ld         $a2,4784($sp)
.L000049c0:
    bnez       $a2, .L00005a88
    nop
    lw         $a3,-19328($s8)
.L000049cc:
    beqz       $a3, .L00005238
    li         $a1,15
.L000049d4:
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s3)
    bnez       $v0, .L00005a88
    ld         $a4,4800($sp)
    lw         $a4,220($a4)
    beq        $a4, $s7, .L000049fc
    ld         $a5,4800($sp)
    lw         $a5,224($a5)
    beqz       $a5, .L00004f20
    lui        $a0,0x7fff
.L000049fc:
    lw         $t1,-31312($s8)
    lui        $t2,0x8000
    or         $t1,$t1,$t2
    sw         $t1,-31312($s8)
    ld         $t2,824($s3)
    ld         $t0,4800($sp)
    sw         $t1,4148($t2)
    sync
    lwu        $t0,88($t0)
    ld         $a7,824($s3)
    ld         $a6,-30592($gp)
    daddu      $a7,$s2,$a7
    and        $t0,$s4,$t0
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
    lw         $t3,-19328($s8)
.L00004a40:
    beqz       $t3, .L00005250
    li         $s0,0x8540
    lhu        $t8,298($s3)
.L00004a4c:
    beq        $s6, $t8, .L00004e2c
    ld         $a1,-30720($gp)
.L00004a54:
    li         $a2,10
    li         $s0,0xb4d0
    daddu      $s0,$s3,$s0
    daddiu     $a1,$a1,3064
    jal        strncmp
    move       $a0,$s0
    beqz       $v0, .L00004b98
    ld         $a1,-30720($gp)
    move       $a0,$s0
    li         $a2,8
    jal        strncmp
    daddiu     $a1,$a1,3080
    beqz       $v0, .L00004b98
    ld         $a1,-30720($gp)
    move       $a0,$s0
    li         $a2,6
    jal        strncmp
    daddiu     $a1,$a1,3208
    beqz       $v0, .L00004b98
    nop
    lw         $a2,-19420($s8)
.L00004aa8:
    beqz       $a2, .L00004e50
    ld         $v0,-19432($s8)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    lhu        $a1,298($s3)
.L00004ac0:
    beq        $s6, $a1, .L000052a0
    move       $v0,$zero
.L00004ac8:
    ld         $s7,4872($sp)
    ld         $s5,4864($sp)
    ld         $s8,4848($sp)
    ld         $s2,4840($sp)
    ld         $s1,4832($sp)
    ld         $s4,4824($sp)
    ld         $ra,4856($sp)
    ld         $s0,4640($sp)
    ld         $s3,4656($sp)
    ld         $s6,4648($sp)
    jr         $ra
    daddiu     $sp,$sp,4896
.L00004af8:
    ld         $a0,824($s3)
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    lui        $a0,0xffff
    li         $a4,1
    ld         $a1,4880($sp)
    beqz       $v0, .L000040f4
    li         $a5,2
    b          .L00005a8c
    ld         $a1,-30720($gp)
.L00004b20:
    ld         $a0,4792($sp)
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    lui        $a0,0xffff
    li         $a4,1
    ld         $a1,4888($sp)
    beqz       $v0, .L0000424c
    li         $a5,2
    b          .L00005a8c
    ld         $a1,-30720($gp)
.L00004b48:
    ld         $a0,824($s3)
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    lui        $a0,0xffff
    li         $a4,1
    li         $a5,2
    beqz       $v0, .L00004394
    ld         $a6,4880($sp)
    b          .L00005a8c
    ld         $a1,-30720($gp)
.L00004b70:
    ld         $a0,4792($sp)
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    lui        $a0,0xffff
    li         $a4,1
    li         $a5,2
    beqz       $v0, .L000044fc
    ld         $a6,4888($sp)
    b          .L00005a8c
    ld         $a1,-30720($gp)
.L00004b98:
    jal        odsy_setDVIRegs
    ld         $a0,4776($sp)
    beqzl      $v0, .L00004aa8
    lw         $a2,-19420($s8)
    b          .L00005a78
    ld         $a1,-30720($gp)
.L00004bb0:
    dsll32     $a2,$s5,0x0
    dsrl32     $a2,$a2,0x0
    and        $a3,$s7,$a3
    and        $a2,$s4,$a2
    or         $a2,$a2,$a3
    ld         $a3,4808($sp)
    addiu      $s0,$s0,1
    sd         $a2,0($a3)
    sync
.L00004bd4:
    addiu      $s0,$s0,2
    lui        $s6,0x3800
    b          .L000041ec
    ori        $s6,$s6,0x400
.L00004be4:
    dsll32     $t8,$s5,0x0
    dsrl32     $t8,$t8,0x0
    and        $t9,$s7,$t9
    and        $t8,$s4,$t8
    or         $t8,$t8,$t9
    ld         $t9,4808($sp)
    addiu      $s0,$s0,1
    sd         $t8,0($t9)
    sync
    addiu      $t8,$s2,1
.L00004c0c:
    srl        $s6,$t8,0x1f
    addu       $s6,$s6,$t8
    addiu      $s0,$s0,2
    sra        $s6,$s6,0x1
    andi       $s6,$s6,0x3fff
    lui        $t8,0x3800
    b          .L00004494
    or         $s6,$s6,$t8
.L00004c2c:
    addiu      $s0,$s0,1
.L00004c30:
    lui        $s5,0x3800
    dsll32     $t8,$s6,0x0
    move       $t9,$s5
    and        $t8,$s7,$t8
    ori        $t9,$t9,0x400
    or         $t8,$t8,$t9
    ld         $t9,4808($sp)
    addiu      $s0,$s0,2
    sd         $t8,0($t9)
    sync
    b          .L000041ec
    ori        $s5,$s5,0x400
.L00004c60:
    li         $a1,25
    li         $a0,0x8510
    jal        mutex_lock
    daddu      $a0,$v0,$a0
    b          .L00003d50
    lw         $a1,-19328($s8)
.L00004c78:
    sd         $zero,4744($sp)
    li         $a3,1
    sd         $a3,4728($sp)
    li         $a2,7
    sd         $a2,4712($sp)
    li         $t3,38
    sb         $t3,-19416($s8)
    lw         $s5,100($s0)
    li         $a1,6
    sd         $a1,4704($sp)
    lw         $v0,96($s0)
    lw         $a4,104($s0)
    lw         $a6,108($s0)
    lw         $a7,112($s0)
    lw         $t0,116($s0)
    lw         $t1,120($s0)
    lw         $t2,124($s0)
    sd         $t2,4696($sp)
    sd         $t1,4720($sp)
    sd         $t0,4736($sp)
    sd         $a7,4752($sp)
    li         $a5,5
    sd         $a6,4760($sp)
    li         $s7,4
    b          .L00003edc
    sd         $a4,4768($sp)
.L00004ce0:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s3)
    beqz       $v0, .L00005358
    sltu       $a4,$zero,$v0
.L00004cf4:
    beqz       $a4, .L000045c8
    li         $s6,3
    b          .L00005a88
    nop
.L00004d04:
    lw         $t8,292($s3)
    blez       $t8, .L000053f4
    ld         $a2,4800($sp)
    lw         $t9,-19328($s8)
    beqz       $t9, .L0000546c
    ld         $v0,4800($sp)
.L00004d1c:
    lw         $a0,28($v0)
    ori        $a0,$a0,0x42
    sw         $a0,-19500($s8)
    ld         $a1,824($s3)
    dsll32     $a0,$a0,0x0
    ld         $a2,-30432($gp)
    dsrl32     $a0,$a0,0x0
    daddu      $a1,$s2,$a1
    and        $a0,$s4,$a0
    or         $a0,$a0,$a2
    sd         $a0,0($a1)
    sync
    lwu        $v1,32($v0)
    ld         $a0,824($s3)
    ld         $a1,-30632($gp)
    daddu      $a0,$s2,$a0
    and        $v1,$s4,$v1
    or         $v1,$v1,$a1
    sd         $v1,0($a0)
    sync
    lw         $v0,36($v0)
    lw         $v1,-19496($s8)
    li         $a4,-33
    andi       $v1,$v1,0x20
    and        $v0,$a4,$v0
    or         $v0,$v0,$v1
    sw         $v0,-19496($s8)
    lhu        $ra,298($s3)
    beq        $s6, $ra, .L0000538c
    nop
.L00004d94:
    ld         $a3,824($s3)
    dsll32     $a2,$v0,0x0
    ld         $a5,-30624($gp)
    dsrl32     $a2,$a2,0x0
    daddu      $a3,$s2,$a3
    and        $a2,$s4,$a2
    or         $a2,$a2,$a5
    sd         $a2,0($a3)
    sync
    lw         $a1,-19328($s8)
    beqz       $a1, .L00005484
    ld         $a2,4800($sp)
.L00004dc4:
    ld         $a0,4776($sp)
    li         $a1,1
    jal        odsy_i2cPLLRegWrite
    lbu        $a2,239($a2)
    bnez       $v0, .L00005d74
    ld         $a2,4800($sp)
.L00004ddc:
    ld         $a0,4776($sp)
    li         $a1,2
    jal        odsy_i2cPLLRegWrite
    lbu        $a2,243($a2)
    bnez       $v0, .L00005d90
    ld         $a2,4800($sp)
.L00004df4:
    ld         $a0,4776($sp)
    li         $a1,5
    jal        odsy_i2cPLLRegWrite
    lbu        $a2,247($a2)
    bnez       $v0, .L00005dac
    ld         $a2,4800($sp)
.L00004e0c:
    ld         $a0,4776($sp)
    li         $a1,6
    jal        odsy_i2cPLLRegWrite
    lbu        $a2,251($a2)
    beqz       $v0, .L000049c0
    ld         $a2,4784($sp)
    b          .L00005dc8
    ld         $a1,-30720($gp)
.L00004e2c:
    ld         $a0,4800($sp)
    jal        odsy_LoadDCD2Regs
    ld         $a1,4776($sp)
    bnez       $v0, .L00005d54
.L00004e3c:
    ld         $a3,4624($sp)
    beqz       $a3, .L00004a54
    ld         $a1,-30720($gp)
    b          .L00005a88
    nop
.L00004e50:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    b          .L00004ac0
    lhu        $a1,298($s3)
.L00004e64:
    sra        $t9,$a5,0x1f
    xor        $t8,$a5,$t9
    subu       $t8,$t8,$t9
    andi       $t8,$t8,0x3f
    xor        $t8,$t8,$t9
    ld         $s2,4800($sp)
    subu       $t8,$t8,$t9
    beqz       $t8, .L000050b4
    lw         $s2,24($s2)
    li         $s0,2
.L00004e8c:
    addiu      $t8,$s2,1
    srl        $s5,$t8,0x1f
    addu       $s5,$s5,$t8
    sra        $s5,$s5,0x1
    lui        $t8,0x3800
    andi       $s5,$s5,0x3fff
    dsll32     $ra,$s6,0x0
    or         $s5,$s5,$t8
    dsll32     $t9,$s5,0x0
    dsrl32     $t9,$t9,0x0
    and        $ra,$s7,$ra
    and        $t9,$s4,$t9
    or         $t9,$t9,$ra
    ld         $ra,4808($sp)
    sd         $t9,0($ra)
    sync
    b          .L00004494
    addiu      $s0,$s0,2
.L00004ed4:
    ld         $t9,4800($sp)
    lw         $v0,176($t9)
    sll        $v0,$v0,0x1
    ld         $v1,824($s3)
    dsll32     $v0,$v0,0x0
    ld         $a0,-30696($gp)
    dsrl32     $v0,$v0,0x0
    daddu      $v1,$s2,$v1
    and        $v0,$s4,$v0
    or         $v0,$v0,$a0
    sd         $v0,0($v1)
    li         $ra,2
    sync
    sh         $ra,804($s3)
    li         $at,1
    sh         $at,302($s3)
    lw         $t9,176($t9)
    b          .L0000461c
    sh         $t9,800($s3)
.L00004f20:
    lw         $v1,-31312($s8)
    ori        $a0,$a0,0xffff
    and        $v1,$v1,$a0
    sw         $v1,-31312($s8)
    ld         $a0,824($s3)
    sw         $v1,4148($a0)
    sync
    b          .L00004a40
    lw         $t3,-19328($s8)
.L00004f44:
    b          .L000041a4
    move       $s6,$zero
.L00004f4c:
    b          .L000042fc
    move       $s6,$zero
.L00004f54:
    b          .L000045b0
    move       $s6,$zero
.L00004f5c:
    li         $a1,-65
    and        $a1,$v0,$a1
    b          .L0000499c
    sw         $a1,-19500($s8)
.L00004f6c:
    b          .L00004444
    move       $s6,$zero
.L00004f74:
    lw         $a6,264($s0)
    sw         $a6,-31168($s8)
    lw         $a5,268($s0)
    sw         $a5,-31164($s8)
    lw         $a4,272($s0)
    sw         $a4,-31160($s8)
    lw         $a3,276($s0)
    sw         $a3,-31156($s8)
    lw         $a2,280($s0)
    b          .L00003eb4
    sw         $a2,-31152($s8)
.L00004fa0:
    lwu        $a0,-19500($s8)
    ld         $a1,824($s3)
    ld         $a2,-30432($gp)
    ld         $v0,4800($sp)
    daddu      $a1,$s2,$a1
    and        $a0,$s4,$a0
    or         $a0,$a0,$a2
    sd         $a0,0($a1)
    sync
    lwu        $v1,32($v0)
    ld         $a0,824($s3)
    ld         $a1,-30632($gp)
    daddu      $a0,$s2,$a0
    and        $v1,$s4,$v1
    or         $v1,$v1,$a1
    sd         $v1,0($a0)
    sync
    lw         $v0,36($v0)
    lw         $v1,-19496($s8)
    li         $a4,-33
    andi       $v1,$v1,0x20
    and        $v0,$a4,$v0
    or         $v0,$v0,$v1
    sw         $v0,-19496($s8)
    lhu        $a7,298($s3)
    beq        $s6, $a7, .L00005398
    nop
.L0000500c:
    ld         $a3,824($s3)
    dsll32     $a2,$v0,0x0
    ld         $a5,-30624($gp)
    dsrl32     $a2,$a2,0x0
    daddu      $a3,$s2,$a3
    and        $a2,$s4,$a2
    or         $a2,$a2,$a5
    sd         $a2,0($a3)
    sync
    lw         $a1,-19328($s8)
    bnez       $a1, .L000049bc
    li         $s0,0x8540
    daddu      $s0,$s3,$s0
    jal        mutex_spinlock
    move       $a0,$s0
    ld         $t8,-31416($s8)
    li         $s1,0x8530
    sd         $v0,4608($sp)
    beqz       $t8, .L00005854
    daddu      $s1,$s3,$s1
    move       $a0,$s0
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s3)
    beqz       $v0, .L00005974
    nop
.L0000507c:
    jal        vsema
    move       $a0,$s1
    b          .L000049c0
    ld         $a2,4784($sp)
.L0000508c:
    b          .L000041a4
    move       $s5,$zero
.L00005094:
    b          .L000042fc
    move       $s5,$zero
.L0000509c:
    b          .L000045b0
    move       $s5,$zero
.L000050a4:
    b          .L00004e8c
    addiu      $s0,$s0,1
.L000050ac:
    b          .L00004444
    move       $s5,$zero
.L000050b4:
    li         $s0,2
.L000050b8:
    ld         $a0,824($s3)
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    sltu       $t9,$zero,$v0
    lui        $a0,0xffff
    li         $a4,1
    beqz       $t9, .L00004470
    li         $a5,2
    b          .L00005a88
    nop
.L000050e0:
    li         $a1,25
    li         $a0,0xb488
    jal        psema
    daddu      $a0,$s3,$a0
    b          .L00003d2c
    lui        $s8,0x1
.L000050f8:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s3,$a0
    b          .L00003d5c
    ld         $a0,824($s3)
.L0000510c:
    daddu      $s2,$s3,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s8)
    move       $s7,$v0
    li         $s5,0x8530
    beqz       $t8, .L000053a4
    daddu      $s5,$s3,$s5
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s3)
    beqz       $v0, .L00005500
    nop
.L0000514c:
    jal        vsema
    move       $a0,$s5
    b          .L00003e2c
    lw         $t8,292($s3)
.L0000515c:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s3,$a0
    b          .L00003ffc
    li         $a1,13
.L00005170:
    ld         $a0,824($s3)
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    sltu       $a1,$zero,$v0
    lui        $a0,0xffff
    li         $a4,1
    beqz       $a1, .L000041c8
    li         $a5,2
    b          .L00005a88
    nop
.L00005198:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s3)
    lui        $a0,0xffff
    li         $a4,1
    li         $a5,2
    beqz       $v0, .L000053c0
    sltu       $a6,$zero,$v0
.L000051b8:
    beqz       $a6, .L00004310
    ld         $a6,4800($sp)
    b          .L00005a88
    nop
.L000051c8:
    li         $a2,90
    jal        odsy_i2cPLLRegWrite
    li         $a1,8
    beqz       $v0, .L00003fdc
    ld         $a1,-30720($gp)
    b          .L00005de0
    nop
.L000051e4:
    li         $s0,0x8540
    daddu      $s0,$s3,$s0
    jal        mutex_spinlock
    move       $a0,$s0
    ld         $t8,-31416($s8)
    move       $s7,$v0
    li         $s1,0x8530
    beqz       $t8, .L00005430
    daddu      $s1,$s3,$s1
    move       $a0,$s0
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s3)
    beqz       $v0, .L00005608
    li         $s7,-2
.L00005228:
    jal        vsema
    move       $a0,$s1
    b          .L00004978
    ld         $a0,4800($sp)
.L00005238:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s3,$a0
    b          .L000049d4
    li         $a1,15
.L00005250:
    daddu      $s0,$s3,$s0
    jal        mutex_spinlock
    move       $a0,$s0
    ld         $t8,-31416($s8)
    li         $s1,0x8530
    sd         $v0,4816($sp)
    beqz       $t8, .L0000544c
    daddu      $s1,$s3,$s1
    move       $a0,$s0
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s3)
    beqz       $v0, .L0000570c
    nop
.L00005290:
    jal        vsema
    move       $a0,$s1
    b          .L00004a4c
    lhu        $t8,298($s3)
.L000052a0:
    li         $a0,0xb488
    jal        vsema
    daddu      $a0,$s3,$a0
    b          .L00004ac8
    move       $v0,$zero
.L000052b4:
    ld         $a0,824($s3)
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    lui        $a0,0xffff
    li         $a4,1
    li         $a5,2
    sltu       $a1,$zero,$v0
    b          .L0000415c
    sd         $a1,4688($sp)
.L000052d8:
    ld         $a0,4792($sp)
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    lui        $a0,0xffff
    li         $a4,1
    li         $a5,2
    sltu       $a2,$zero,$v0
    b          .L000042b4
    sd         $a2,4680($sp)
.L000052fc:
    ld         $a0,4792($sp)
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    li         $a4,1
    li         $a5,2
    sltu       $a3,$zero,$v0
    b          .L00004568
    sd         $a3,4672($sp)
.L0000531c:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s3,$a0
    b          .L000049a8
    li         $a1,13
.L00005334:
    ld         $a0,824($s3)
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    lui        $a0,0xffff
    li         $a4,1
    li         $a5,2
    sltu       $a1,$zero,$v0
    b          .L000043fc
    sd         $a1,4664($sp)
.L00005358:
    li         $a2,3
    beq        $s1, $a2, .L000054d8
    dsll32     $ra,$s6,0x0
    beqz       $s1, .L00004cf4
    dsll32     $a3,$s6,0x0
    lui        $a5,0x3800
    and        $a3,$s7,$a3
    or         $a3,$a3,$a5
    ld         $a5,4808($sp)
    sd         $a3,0($a5)
    sync
    b          .L00004cf4
    nop
.L0000538c:
    ori        $v0,$v0,0xe3
    b          .L00004d94
    sw         $v0,-19496($s8)
.L00005398:
    ori        $v0,$v0,0xe3
    b          .L0000500c
    sw         $v0,-19496($s8)
.L000053a4:
    jal        vsema
    move       $a0,$s5
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s7
    b          .L00003e2c
    lw         $t8,292($s3)
.L000053c0:
    li         $a7,3
    beq        $s1, $a7, .L0000582c
    dsll32     $v1,$s6,0x0
    beqz       $s1, .L000051b8
    dsll32     $t0,$s6,0x0
    lui        $t1,0x3800
    and        $t0,$s7,$t0
    or         $t0,$t0,$t1
    ld         $t1,4808($sp)
    sd         $t0,0($t1)
    sync
    b          .L000051b8
    lui        $s5,0x3800
.L000053f4:
    ld         $a0,4776($sp)
    move       $a1,$zero
    jal        odsy_i2cPLLRegWrite
    lbu        $a2,231($a2)
    bnez       $v0, .L00005df8
    ld         $a2,4800($sp)
.L0000540c:
    lw         $a2,120($a2)
    li         $a1,7
    ld         $a0,4776($sp)
    jal        odsy_i2cPLLRegWrite
    andi       $a2,$a2,0x7f
    beqzl      $v0, .L000049cc
    lw         $a3,-19328($s8)
    b          .L00005e14
    ld         $a1,-30720($gp)
.L00005430:
    jal        vsema
    move       $a0,$s1
    move       $a0,$s0
    jal        mutex_spinunlock
    move       $a1,$s7
    b          .L00004974
    li         $s7,-2
.L0000544c:
    ld         $s2,4816($sp)
    jal        vsema
    move       $a0,$s1
    move       $a0,$s0
    jal        mutex_spinunlock
    move       $a1,$s2
    b          .L00004a4c
    lhu        $t8,298($s3)
.L0000546c:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s3,$a0
    b          .L00004d1c
    ld         $v0,4800($sp)
.L00005484:
    li         $s0,0x8540
    daddu      $s0,$s3,$s0
    jal        mutex_spinlock
    move       $a0,$s0
    ld         $t8,-31416($s8)
    li         $s1,0x8530
    sd         $v0,4616($sp)
    beqz       $t8, .L00005810
    daddu      $s1,$s3,$s1
    move       $a0,$s0
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s3)
    beqz       $v0, .L00005870
    nop
.L000054c8:
    jal        vsema
    move       $a0,$s1
    b          .L00004dc4
    ld         $a2,4800($sp)
.L000054d8:
    dsll32     $t9,$s5,0x0
    dsrl32     $t9,$t9,0x0
    and        $ra,$s7,$ra
    and        $t9,$s4,$t9
    or         $t9,$t9,$ra
    ld         $ra,4808($sp)
    sd         $t9,0($ra)
    sync
    b          .L00004cf4
    nop
.L00005500:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a4,-19664($s8)
    lhu        $a5,-31408($s8)
    srl        $a6,$a4,0x5
    andi       $a6,$a6,0x1
    xor        $a5,$a5,$a6
    sltu       $a5,$zero,$a5
    beqz       $a5, .L00005598
    move       $a1,$v0
    li         $t3,-3
    and        $t3,$a4,$t3
    sw         $t3,-19664($s8)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s3)
    ld         $a7,-30720($gp)
    dsrl32     $t3,$t3,0x0
    and        $t3,$s4,$t3
    daddu      $t8,$s1,$t8
    or         $t3,$a7,$t3
    sd         $t3,0($t8)
    sync
    lhu        $t2,-31408($s8)
    lw         $t1,-19664($s8)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x5
    or         $t1,$t1,$t2
    sw         $t1,-19664($s8)
    dsll32     $t1,$t1,0x0
    ld         $t0,824($s3)
    dsrl32     $t1,$t1,0x0
    and        $t1,$s4,$t1
    daddu      $t0,$s1,$t0
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
.L00005598:
    ld         $t8,824($s3)
    daddu      $t8,$s1,$t8
    ld         $s7,-31416($s8)
    sd         $s7,0($t8)
    sync
    beqz       $a5, .L000055e4
    li         $s7,-2
    lw         $t9,-19664($s8)
    and        $t9,$s7,$t9
    sw         $t9,-19664($s8)
    dsll32     $t9,$t9,0x0
    ld         $ra,824($s3)
    dsrl32     $t9,$t9,0x0
    ld         $at,-30720($gp)
    and        $t9,$s4,$t9
    daddu      $ra,$s1,$ra
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
.L000055e4:
    lw         $ra,-19664($s8)
    ori        $ra,$ra,0x2
    sd         $zero,-31416($s8)
    and        $ra,$s7,$ra
    sw         $ra,-19664($s8)
    jal        mutex_spinunlock
    move       $a0,$s2
    b          .L0000514c
    nop
.L00005608:
    jal        mutex_spinlock
    move       $a0,$s0
    lw         $a4,-19664($s8)
    lhu        $a5,-31408($s8)
    srl        $a6,$a4,0x5
    andi       $a6,$a6,0x1
    xor        $a5,$a5,$a6
    sltu       $a5,$zero,$a5
    beqz       $a5, .L0000569c
    move       $a1,$v0
    and        $t3,$s5,$a4
    sw         $t3,-19664($s8)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s3)
    ld         $a7,-30720($gp)
    dsrl32     $t3,$t3,0x0
    and        $t3,$s4,$t3
    daddu      $t8,$s2,$t8
    or         $t3,$a7,$t3
    sd         $t3,0($t8)
    sync
    lhu        $t2,-31408($s8)
    lw         $t1,-19664($s8)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x5
    or         $t1,$t1,$t2
    sw         $t1,-19664($s8)
    dsll32     $t1,$t1,0x0
    ld         $t0,824($s3)
    dsrl32     $t1,$t1,0x0
    and        $t1,$s4,$t1
    daddu      $t0,$s2,$t0
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
.L0000569c:
    ld         $t8,824($s3)
    daddu      $t8,$s2,$t8
    ld         $s7,-31416($s8)
    sd         $s7,0($t8)
    sync
    beqz       $a5, .L000056e8
    li         $s7,-2
    lw         $t9,-19664($s8)
    and        $t9,$s7,$t9
    sw         $t9,-19664($s8)
    dsll32     $t9,$t9,0x0
    ld         $ra,824($s3)
    dsrl32     $t9,$t9,0x0
    ld         $at,-30720($gp)
    and        $t9,$s4,$t9
    daddu      $ra,$s2,$ra
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
.L000056e8:
    lw         $ra,-19664($s8)
    ori        $ra,$ra,0x2
    sd         $zero,-31416($s8)
    and        $ra,$s7,$ra
    sw         $ra,-19664($s8)
    jal        mutex_spinunlock
    move       $a0,$s0
    b          .L00005228
    nop
.L0000570c:
    jal        mutex_spinlock
    move       $a0,$s0
    lw         $a4,-19664($s8)
    lhu        $a5,-31408($s8)
    srl        $a6,$a4,0x5
    andi       $a6,$a6,0x1
    xor        $a5,$a5,$a6
    sltu       $a5,$zero,$a5
    beqz       $a5, .L000057a0
    move       $a1,$v0
    and        $t3,$s5,$a4
    sw         $t3,-19664($s8)
    dsll32     $t3,$t3,0x0
    ld         $t8,824($s3)
    ld         $a7,-30720($gp)
    dsrl32     $t3,$t3,0x0
    and        $t3,$s4,$t3
    daddu      $t8,$s2,$t8
    or         $t3,$a7,$t3
    sd         $t3,0($t8)
    sync
    lhu        $t2,-31408($s8)
    lw         $t1,-19664($s8)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x5
    or         $t1,$t1,$t2
    sw         $t1,-19664($s8)
    dsll32     $t1,$t1,0x0
    ld         $t0,824($s3)
    dsrl32     $t1,$t1,0x0
    and        $t1,$s4,$t1
    daddu      $t0,$s2,$t0
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
.L000057a0:
    ld         $t9,824($s3)
    daddu      $t9,$s2,$t9
    ld         $t8,-31416($s8)
    sd         $t8,0($t9)
    sync
    beqz       $a5, .L000057ec
    nop
    lw         $ra,-19664($s8)
    and        $ra,$s7,$ra
    sw         $ra,-19664($s8)
    dsll32     $ra,$ra,0x0
    ld         $at,824($s3)
    dsrl32     $ra,$ra,0x0
    ld         $v0,-30720($gp)
    and        $ra,$s4,$ra
    daddu      $at,$s2,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L000057ec:
    lw         $at,-19664($s8)
    sd         $zero,-31416($s8)
    move       $a0,$s0
    ori        $at,$at,0x2
    and        $at,$s7,$at
    jal        mutex_spinunlock
    sw         $at,-19664($s8)
    b          .L00005290
    nop
.L00005810:
    jal        vsema
    move       $a0,$s1
    move       $a0,$s0
    jal        mutex_spinunlock
    ld         $a1,4616($sp)
    b          .L00004dc4
    ld         $a2,4800($sp)
.L0000582c:
    dsll32     $v0,$s5,0x0
    dsrl32     $v0,$v0,0x0
    and        $v1,$s7,$v1
    and        $v0,$s4,$v0
    or         $v0,$v0,$v1
    ld         $v1,4808($sp)
    sd         $v0,0($v1)
    sync
    b          .L000051b8
    nop
.L00005854:
    jal        vsema
    move       $a0,$s1
    move       $a0,$s0
    jal        mutex_spinunlock
    ld         $a1,4608($sp)
    b          .L000049c0
    ld         $a2,4784($sp)
.L00005870:
    jal        mutex_spinlock
    move       $a0,$s0
    lw         $a4,-19664($s8)
    lhu        $a5,-31408($s8)
    srl        $a6,$a4,0x5
    andi       $a6,$a6,0x1
    xor        $a5,$a5,$a6
    sltu       $a5,$zero,$a5
    beqz       $a5, .L00005904
    move       $a1,$v0
    and        $t3,$s5,$a4
    sw         $t3,-19664($s8)
    ld         $t8,824($s3)
    dsll32     $t3,$t3,0x0
    ld         $a7,-30720($gp)
    dsrl32     $t3,$t3,0x0
    daddu      $t8,$s2,$t8
    and        $t3,$s4,$t3
    or         $t3,$a7,$t3
    sd         $t3,0($t8)
    sync
    lhu        $t2,-31408($s8)
    lw         $t3,-19664($s8)
    li         $t1,-33
    andi       $t2,$t2,0x1
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x5
    or         $t1,$t1,$t2
    sw         $t1,-19664($s8)
    ld         $t0,824($s3)
    dsll32     $t1,$t1,0x0
    dsrl32     $t1,$t1,0x0
    daddu      $t0,$s2,$t0
    and        $t1,$s4,$t1
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
.L00005904:
    ld         $t9,824($s3)
    daddu      $t9,$s2,$t9
    ld         $t8,-31416($s8)
    sd         $t8,0($t9)
    sync
    beqz       $a5, .L00005950
    nop
    lw         $ra,-19664($s8)
    and        $ra,$s7,$ra
    sw         $ra,-19664($s8)
    dsll32     $ra,$ra,0x0
    ld         $at,824($s3)
    dsrl32     $ra,$ra,0x0
    ld         $v0,-30720($gp)
    and        $ra,$s4,$ra
    daddu      $at,$s2,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L00005950:
    lw         $at,-19664($s8)
    sd         $zero,-31416($s8)
    move       $a0,$s0
    ori        $at,$at,0x2
    and        $at,$s7,$at
    jal        mutex_spinunlock
    sw         $at,-19664($s8)
    b          .L000054c8
    nop
.L00005974:
    jal        mutex_spinlock
    move       $a0,$s0
    lw         $a4,-19664($s8)
    lhu        $a5,-31408($s8)
    srl        $a6,$a4,0x5
    andi       $a6,$a6,0x1
    xor        $a5,$a5,$a6
    sltu       $a5,$zero,$a5
    beqz       $a5, .L00005a08
    move       $a1,$v0
    and        $t3,$s5,$a4
    sw         $t3,-19664($s8)
    ld         $t8,824($s3)
    dsll32     $t3,$t3,0x0
    ld         $a7,-30720($gp)
    dsrl32     $t3,$t3,0x0
    daddu      $t8,$s2,$t8
    and        $t3,$s4,$t3
    or         $t3,$a7,$t3
    sd         $t3,0($t8)
    sync
    lhu        $t2,-31408($s8)
    lw         $t3,-19664($s8)
    li         $t1,-33
    andi       $t2,$t2,0x1
    and        $t1,$t1,$t3
    sll        $t2,$t2,0x5
    or         $t1,$t1,$t2
    sw         $t1,-19664($s8)
    ld         $t0,824($s3)
    dsll32     $t1,$t1,0x0
    dsrl32     $t1,$t1,0x0
    daddu      $t0,$s2,$t0
    and        $t1,$s4,$t1
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
.L00005a08:
    ld         $t9,824($s3)
    daddu      $t9,$s2,$t9
    ld         $t8,-31416($s8)
    sd         $t8,0($t9)
    sync
    beqz       $a5, .L00005a54
    nop
    lw         $ra,-19664($s8)
    and        $ra,$s7,$ra
    sw         $ra,-19664($s8)
    dsll32     $ra,$ra,0x0
    ld         $at,824($s3)
    dsrl32     $ra,$ra,0x0
    ld         $v0,-30720($gp)
    and        $ra,$s4,$ra
    daddu      $at,$s2,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L00005a54:
    lw         $at,-19664($s8)
    sd         $zero,-31416($s8)
    move       $a0,$s0
    ori        $at,$at,0x2
    and        $at,$s7,$at
    jal        mutex_spinunlock
    sw         $at,-19664($s8)
    b          .L0000507c
    nop
.L00005a78:
    li         $a0,4
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$a1,3096
.L00005a88:
    ld         $a1,-30720($gp)
.L00005a8c:
    li         $s6,3
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$a1,3152
    lw         $a2,-19420($s8)
    beqz       $a2, .L00005ad8
    ld         $v0,-19432($s8)
    li         $a0,0x8520
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    lhu        $a1,298($s3)
.L00005abc:
    beq        $s6, $a1, .L00005c0c
    li         $a0,0xb488
    lw         $a2,-19328($s8)
.L00005ac8:
    beqz       $a2, .L00005aec
    li         $s0,0x8540
.L00005ad0:
    b          .L00004ac8
    li         $v0,16
.L00005ad8:
    li         $a0,0x8510
    jal        mutex_unlock
    daddu      $a0,$v0,$a0
    b          .L00005abc
    lhu        $a1,298($s3)
.L00005aec:
    daddu      $s0,$s3,$s0
    jal        mutex_spinlock
    move       $a0,$s0
    ld         $t8,-31416($s8)
    move       $s2,$v0
    li         $s1,0x8530
    beqz       $t8, .L00005c1c
    daddu      $s1,$s3,$s1
    move       $a0,$s0
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s3)
    beqz       $v0, .L00005c38
    nop
.L00005b2c:
    jal        vsema
    move       $a0,$s1
    b          .L00005ad0
    nop
.L00005b3c:
    ld         $s5,-30720($gp)
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$s5,1936
    b          .L00003fe0
    move       $a0,$s3
.L00005b58:
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$s5,2016
    b          .L00003fe0
    move       $a0,$s3
.L00005b70:
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$s5,2096
    b          .L00003fe0
    move       $a0,$s3
.L00005b88:
    ld         $s5,-30720($gp)
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$s5,2176
    b          .L00003fe0
    move       $a0,$s3
.L00005ba4:
    ld         $s5,-30720($gp)
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$s5,2256
    b          .L00003fe0
    move       $a0,$s3
.L00005bc0:
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$s5,2344
    b          .L00003fe0
    move       $a0,$s3
.L00005bd8:
    ld         $s5,-30720($gp)
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$s5,2432
    b          .L00003fe0
    move       $a0,$s3
.L00005bf4:
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$s5,2512
    b          .L00003fe0
    move       $a0,$s3
.L00005c0c:
    jal        vsema
    daddu      $a0,$s3,$a0
    b          .L00005ac8
    lw         $a2,-19328($s8)
.L00005c1c:
    jal        vsema
    move       $a0,$s1
    move       $a0,$s0
    jal        mutex_spinunlock
    move       $a1,$s2
    b          .L00005ad0
    nop
.L00005c38:
    jal        mutex_spinlock
    move       $a0,$s0
    lw         $a4,-19664($s8)
    lhu        $a0,-31408($s8)
    srl        $a2,$a4,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    beqz       $a0, .L00005cdc
    move       $a1,$v0
    li         $a6,-1
    li         $t2,-3
    dsrl32     $a6,$a6,0x0
    and        $t2,$a4,$t2
    sw         $t2,-19664($s8)
    ld         $t3,824($s3)
    dsll32     $t2,$t2,0x0
    ld         $a3,-30720($gp)
    lui        $a5,0x40
    dsrl32     $t2,$t2,0x0
    daddu      $t3,$a5,$t3
    and        $t2,$a6,$t2
    or         $t2,$a3,$t2
    sd         $t2,0($t3)
    sync
    lhu        $t1,-31408($s8)
    lw         $t0,-19664($s8)
    li         $t2,-33
    andi       $t1,$t1,0x1
    and        $t0,$t0,$t2
    sll        $t1,$t1,0x5
    or         $t0,$t0,$t1
    sw         $t0,-19664($s8)
    ld         $a7,824($s3)
    dsll32     $t0,$t0,0x0
    dsrl32     $t0,$t0,0x0
    daddu      $a5,$a5,$a7
    and        $a6,$a6,$t0
    or         $a3,$a3,$a6
    sd         $a3,0($a5)
    sync
.L00005cdc:
    ld         $t1,824($s3)
    lui        $t0,0x40
    ld         $a7,-31416($s8)
    daddu      $t0,$t0,$t1
    sd         $a7,0($t0)
    sync
    beqz       $a0, .L00005d30
    li         $s7,-2
    lw         $t2,-19664($s8)
    li         $t3,-1
    and        $t2,$s7,$t2
    sw         $t2,-19664($s8)
    dsrl32     $t3,$t3,0x0
    ld         $t9,824($s3)
    ld         $t8,-30720($gp)
    and        $t2,$t2,$t3
    lui        $t3,0x40
    daddu      $t3,$t3,$t9
    or         $t2,$t2,$t8
    sd         $t2,0($t3)
    sync
.L00005d30:
    lw         $t3,-19664($s8)
    sd         $zero,-31416($s8)
    move       $a0,$s0
    ori        $t3,$t3,0x2
    and        $t3,$s7,$t3
    jal        mutex_spinunlock
    sw         $t3,-19664($s8)
    b          .L00005b2c
    nop
.L00005d54:
    ld         $a1,-30720($gp)
    li         $a0,4
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$a1,3000
    li         $a2,1
    b          .L00004e3c
    sd         $a2,4624($sp)
.L00005d74:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$a1,2680
    b          .L00004ddc
    ld         $a2,4800($sp)
.L00005d90:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$a1,2760
    b          .L00004df4
    ld         $a2,4800($sp)
.L00005dac:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$a1,2840
    b          .L00004e0c
    ld         $a2,4800($sp)
.L00005dc8:
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$a1,2920
    b          .L000049c0
    ld         $a2,4784($sp)
.L00005de0:
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$a1,2512
    b          .L00003fdc
    nop
.L00005df8:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$a1,2256
    b          .L0000540c
    ld         $a2,4800($sp)
.L00005e14:
    li         $a0,1
    lh         $a2,790($s3)
    jal        cmn_err
    daddiu     $a1,$a1,2600
    b          .L000049cc
    lw         $a3,-19328($s8)

glabel gfP_OdsyBRDMGRloadTimingTable
    daddiu     $sp,$sp,-352
    sd         $s2,320($sp)
    move       $at,$a2
    sd         $s0,328($sp)
    li         $a2,320
    move       $s0,$a3
    sd         $s1,344($sp)
    daddiu     $a1,$sp,0
    move       $s1,$a0
    ld         $s2,40($a0)
    sd         $ra,336($sp)
    jal        copyin
    move       $a0,$at
    bnez       $v0, .L00005f14
    ld         $a1,-30720($gp)
    jal        odsy_copyin_frame_line_tables
    daddiu     $a0,$sp,0
    beqz       $v0, .L00005e94
    nop
    sw         $v0,0($s0)
.L00005e7c:
    ld         $ra,336($sp)
    ld         $s2,320($sp)
    ld         $s0,328($sp)
    ld         $s1,344($sp)
    jr         $ra
    daddiu     $sp,$sp,352
.L00005e94:
    ld         $v0,808($s2)
    beqz       $v0, .L00005f2c
    ld         $a1,-30720($gp)
    jal        RRM_CheckValidFault
    move       $a0,$s1
    bltz       $v0, .L00005ef8
    nop
    ld         $a2,40($s1)
    lw         $v1,80($a2)
    daddiu     $a1,$sp,0
    move       $a0,$s2
    addiu      $v1,$v1,1
    jal        odsyLoadTimingTable
    sw         $v1,80($a2)
    sw         $v0,0($s0)
    ld         $a1,40($s1)
    lw         $a0,80($a1)
    addiu      $a0,$a0,-1
    sw         $a0,80($a1)
    jal        kern_free
    ld         $a0,0($sp)
    jal        kern_free
    ld         $a0,16($sp)
    b          .L00005e7c
    lw         $v0,0($s0)
.L00005ef8:
    jal        kern_free
    ld         $a0,0($sp)
    jal        kern_free
    ld         $a0,16($sp)
    li         $v0,14
    b          .L00005e7c
    sw         $v0,0($s0)
.L00005f14:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3216
    li         $v0,14
    b          .L00005e7c
    sw         $v0,0($s0)
.L00005f2c:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3264
    jal        kern_free
    ld         $a0,0($sp)
    jal        kern_free
    ld         $a0,16($sp)
    li         $v0,14
    b          .L00005e7c
    sw         $v0,0($s0)

glabel gfP_OdsyBRDMGRVTGcontrol
    daddiu     $sp,$sp,-80
    sd         $s2,24($sp)
    sd         $s3,16($sp)
    sd         $s1,40($sp)
    move       $at,$a2
    li         $a2,8
    ld         $s1,40($a0)
    move       $s3,$a3
    daddiu     $a1,$sp,0
    sd         $ra,32($sp)
    move       $a0,$at
    jal        copyin
    ld         $s2,824($s1)
    bnez       $v0, .L000063e8
    sd         $s0,64($sp)
    lui        $s0,0x1
    daddu      $s0,$s1,$s0
    lw         $v0,-19328($s0)
    beqz       $v0, .L000060c8
    li         $a1,25
    move       $a0,$s2
.L00005fa8:
    jal        odsy_poll_dfifo_level
    li         $a1,13
    beqz       $v0, .L00005fe8
    lwu        $v0,0($sp)
    lw         $t8,-19328($s0)
    beqz       $t8, .L00006074
    li         $s2,0x8540
.L00005fc4:
    li         $v0,5
.L00005fc8:
    sw         $v0,0($s3)
.L00005fcc:
    ld         $s3,16($sp)
    ld         $ra,32($sp)
    ld         $s2,24($sp)
    ld         $s0,64($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00005fe8:
    andi       $t9,$v0,0x1
    beqz       $t9, .L000060dc
    andi       $a1,$v0,0x2
    lw         $a3,-19500($s0)
    li         $ra,-1
    li         $a4,-2
    dsrl32     $ra,$ra,0x0
    and        $a3,$a3,$a4
    dsll32     $a1,$a3,0x0
    dsrl32     $a1,$a1,0x0
    ld         $a2,-30432($gp)
    lui        $at,0x40
    and        $a1,$ra,$a1
    daddu      $at,$s2,$at
    sw         $a3,-19500($s0)
    or         $a1,$a1,$a2
    sd         $a1,0($at)
    sync
    lw         $v1,-19496($s0)
    lui        $a0,0x2
    or         $v1,$v1,$a0
    dsll32     $a0,$v1,0x0
    dsrl32     $a0,$a0,0x0
    ld         $v0,-30624($gp)
    and        $ra,$ra,$a0
    sw         $v1,-19496($s0)
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L0000605c:
    lw         $at,-19328($s0)
.L00006060:
    beqz       $at, .L0000612c
    li         $s2,0x8540
    sw         $zero,0($s3)
.L0000606c:
    b          .L00005fcc
    move       $v0,$zero
.L00006074:
    daddu      $s2,$s1,$s2
    sd         $s4,72($sp)
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s0)
    li         $s4,0x8530
    sd         $v0,56($sp)
    beqz       $t8, .L00006180
    daddu      $s4,$s1,$s4
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L000061a4
    nop
.L000060b8:
    jal        vsema
    move       $a0,$s4
    b          .L00005fc4
    ld         $s4,72($sp)
.L000060c8:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s1,$a0
    b          .L00005fa8
    move       $a0,$s2
.L000060dc:
    beqz       $a1, .L0000605c
    li         $a2,-1
    lw         $a6,4($sp)
    dsrl32     $a2,$a2,0x0
    lw         $a5,-19500($s0)
    li         $a7,-65
    andi       $a6,$a6,0x1
    and        $a5,$a5,$a7
    sll        $a6,$a6,0x6
    ld         $a4,-30432($gp)
    lui        $a3,0x40
    or         $a5,$a5,$a6
    and        $a2,$a5,$a2
    daddu      $a3,$a3,$s2
    sw         $a5,-19500($s0)
    or         $a2,$a2,$a4
    sd         $a2,0($a3)
    sync
    b          .L00006060
    lw         $at,-19328($s0)
.L0000612c:
    daddu      $s2,$s1,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s0)
    sd         $v0,48($sp)
    li         $a0,0x8530
    daddu      $a0,$s1,$a0
    beqz       $t8, .L000062b8
    sd         $a0,8($sp)
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L000062d4
    nop
.L00006170:
    jal        vsema
    ld         $a0,8($sp)
    b          .L0000606c
    sw         $zero,0($s3)
.L00006180:
    ld         $s0,56($sp)
    jal        vsema
    move       $a0,$s4
    move       $a0,$s2
    ld         $s4,72($sp)
    jal        mutex_spinunlock
    move       $a1,$s0
    b          .L00005fc8
    li         $v0,5
.L000061a4:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a3,-19664($s0)
    lhu        $a0,-31408($s0)
    srl        $a2,$a3,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    move       $a1,$v0
    beqz       $a0, .L00006248
    lui        $a5,0x40
    li         $a7,-1
    li         $t2,-3
    dsrl32     $a7,$a7,0x0
    and        $t2,$a3,$t2
    sw         $t2,-19664($s0)
    dsll32     $t2,$t2,0x0
    ld         $t3,824($s1)
    ld         $a4,-30720($gp)
    dsrl32     $t2,$t2,0x0
    and        $t2,$a7,$t2
    daddu      $t3,$a5,$t3
    or         $t2,$a4,$t2
    sd         $t2,0($t3)
    sync
    lhu        $t1,-31408($s0)
    lw         $t0,-19664($s0)
    li         $t2,-33
    andi       $t1,$t1,0x1
    and        $t0,$t0,$t2
    sll        $t1,$t1,0x5
    or         $t0,$t0,$t1
    sw         $t0,-19664($s0)
    dsll32     $t0,$t0,0x0
    ld         $a6,824($s1)
    dsrl32     $t0,$t0,0x0
    and        $a7,$a7,$t0
    daddu      $a6,$a5,$a6
    or         $a4,$a4,$a7
    sd         $a4,0($a6)
    sync
.L00006248:
    ld         $t1,824($s1)
    daddu      $t1,$a5,$t1
    ld         $t0,-31416($s0)
    sd         $t0,0($t1)
    sync
    beqz       $a0, .L00006294
    li         $a3,-2
    lw         $t2,-19664($s0)
    and        $t2,$a3,$t2
    sw         $t2,-19664($s0)
    li         $t9,-1
    ld         $t3,824($s1)
    dsrl32     $t9,$t9,0x0
    ld         $t8,-30720($gp)
    and        $t2,$t2,$t9
    daddu      $t3,$a5,$t3
    or         $t2,$t2,$t8
    sd         $t2,0($t3)
    sync
.L00006294:
    lw         $t3,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s2
    ori        $t3,$t3,0x2
    and        $t3,$a3,$t3
    jal        mutex_spinunlock
    sw         $t3,-19664($s0)
    b          .L000060b8
    nop
.L000062b8:
    jal        vsema
    ld         $s0,48($sp)
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s0
    b          .L0000606c
    sw         $zero,0($s3)
.L000062d4:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a3,-19664($s0)
    lhu        $a6,-31408($s0)
    srl        $a7,$a3,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    move       $a1,$v0
    beqz       $a6, .L00006378
    lui        $a5,0x40
    li         $t2,-1
    li         $t9,-3
    dsrl32     $t2,$t2,0x0
    and        $t9,$a3,$t9
    sw         $t9,-19664($s0)
    dsll32     $t9,$t9,0x0
    ld         $ra,824($s1)
    ld         $t0,-30720($gp)
    dsrl32     $t9,$t9,0x0
    and        $t9,$t2,$t9
    daddu      $ra,$a5,$ra
    or         $t9,$t0,$t9
    sd         $t9,0($ra)
    sync
    lhu        $t8,-31408($s0)
    lw         $t3,-19664($s0)
    li         $t9,-33
    andi       $t8,$t8,0x1
    and        $t3,$t3,$t9
    sll        $t8,$t8,0x5
    or         $t3,$t3,$t8
    sw         $t3,-19664($s0)
    dsll32     $t3,$t3,0x0
    ld         $t1,824($s1)
    dsrl32     $t3,$t3,0x0
    and        $t2,$t2,$t3
    daddu      $t1,$a5,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
.L00006378:
    ld         $t8,824($s1)
    daddu      $t8,$a5,$t8
    ld         $t3,-31416($s0)
    sd         $t3,0($t8)
    sync
    beqz       $a6, .L000063c4
    li         $a3,-2
    lw         $t9,-19664($s0)
    and        $t9,$a3,$t9
    sw         $t9,-19664($s0)
    li         $v0,-1
    ld         $ra,824($s1)
    dsrl32     $v0,$v0,0x0
    ld         $at,-30720($gp)
    and        $t9,$t9,$v0
    daddu      $ra,$a5,$ra
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
.L000063c4:
    lw         $ra,-19664($s0)
    ori        $ra,$ra,0x2
    sd         $zero,-31416($s0)
    and        $ra,$a3,$ra
    sw         $ra,-19664($s0)
    jal        mutex_spinunlock
    move       $a0,$s2
    b          .L00006170
    nop
.L000063e8:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3320
    li         $v0,14
    b          .L00005fcc
    sw         $v0,0($s3)

glabel gfP_OdsyBRDMGRi2ccmd
    ld         $v0,40($a0)
    daddiu     $sp,$sp,-80
    sd         $s0,64($sp)
    move       $at,$a2
    move       $s0,$a3
    sd         $v0,56($sp)
    daddiu     $a1,$sp,0
    sd         $a2,48($sp)
    li         $a2,48
    sd         $ra,72($sp)
    jal        copyin
    move       $a0,$at
    bnez       $v0, .L00006474
    ld         $a0,56($sp)
    daddiu     $a1,$sp,0
    jal        odsy_i2c_cmd
    ld         $a2,48($sp)
    bltz       $v0, .L00006468
    move       $a0,$zero
    sw         $v0,0($s0)
.L00006454:
    move       $v0,$a0
.L00006458:
    ld         $ra,72($sp)
    ld         $s0,64($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00006468:
    negu       $a0,$v0
    b          .L00006454
    nop
.L00006474:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3384
    li         $v0,14
    b          .L00006458
    sw         $v0,0($s0)

glabel gfP_OdsyBRDMGRSetDACGain
    ld         $v0,40($a0)
    daddiu     $sp,$sp,-32
    move       $at,$a2
    li         $a2,4
    sd         $s0,16($sp)
    move       $s0,$a3
    sd         $v0,8($sp)
    daddiu     $a1,$sp,0
    sd         $ra,24($sp)
    jal        copyin
    move       $a0,$at
    bnez       $v0, .L000064e8
    ld         $a0,8($sp)
    jal        odsySetDACGain
    lw         $a1,0($sp)
    move       $a0,$v0
    sw         $v0,0($s0)
.L000064d4:
    ld         $ra,24($sp)
    move       $v0,$a0
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000064e8:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,3424
    li         $a0,14
    b          .L000064d4
    sw         $a0,0($s0)

glabel odsySetDACGain
    ld         $v0,824($a0)
    daddiu     $sp,$sp,-80
    sd         $a1,8($sp)
    sd         $v0,16($sp)
    sd         $s0,32($sp)
    lui        $s0,0x1
    sd         $s3,56($sp)
    daddu      $s0,$a0,$s0
    lw         $at,-19328($s0)
    sd         $s2,64($sp)
    sd         $s1,24($sp)
    move       $s1,$a0
    beqz       $at, .L0000662c
    sd         $ra,72($sp)
.L0000653c:
    move       $a0,$v0
    jal        odsy_poll_dfifo_level
    li         $a1,14
    beqz       $v0, .L00006578
    ld         $v1,16($sp)
    lw         $t8,-19328($s0)
    beqz       $t8, .L000065d8
    li         $v0,-1
.L0000655c:
    ld         $s3,56($sp)
    ld         $ra,72($sp)
    ld         $s2,64($sp)
    ld         $s1,24($sp)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00006578:
    lui        $v0,0x23
    ori        $v0,$v0,0x3604
    daddu      $v0,$v0,$v1
    ld         $v1,8($sp)
    beqz       $v1, .L00006644
    lw         $v0,0($v0)
    ori        $v0,$v0,0x2
.L00006594:
    dsll32     $a1,$v0,0x0
    li         $a0,-1
    dsrl32     $a1,$a1,0x0
    dsrl32     $a0,$a0,0x0
    and        $a0,$a0,$a1
    ld         $a1,16($sp)
    ld         $a2,-30648($gp)
    lui        $s3,0x40
    daddu      $a1,$s3,$a1
    or         $a0,$a0,$a2
    sd         $a0,0($a1)
    sync
    lw         $v1,-19328($s0)
    beqz       $v1, .L00006650
    li         $s2,0x8540
.L000065d0:
    b          .L0000655c
    move       $v0,$zero
.L000065d8:
    li         $s2,0x8540
    daddu      $s2,$s1,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s0)
    li         $s3,0x8530
    sd         $v0,48($sp)
    beqz       $t8, .L000066a4
    daddu      $s3,$s1,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L000066c4
    nop
.L0000661c:
    jal        vsema
    move       $a0,$s3
    b          .L0000655c
    li         $v0,-1
.L0000662c:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s1,$a0
    b          .L0000653c
    ld         $v0,824($s1)
.L00006644:
    li         $a1,-3
    b          .L00006594
    and        $v0,$v0,$a1
.L00006650:
    daddu      $s2,$s1,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s0)
    sd         $v0,40($sp)
    li         $a0,0x8530
    daddu      $a0,$s1,$a0
    beqz       $t8, .L000067d8
    sd         $a0,0($sp)
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s1)
    beqz       $v0, .L000067f4
    nop
.L00006694:
    jal        vsema
    ld         $a0,0($sp)
    b          .L000065d0
    nop
.L000066a4:
    ld         $s0,48($sp)
    jal        vsema
    move       $a0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s0
    b          .L0000655c
    li         $v0,-1
.L000066c4:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a4,-19664($s0)
    lhu        $a5,-31408($s0)
    srl        $a6,$a4,0x5
    andi       $a6,$a6,0x1
    xor        $a5,$a5,$a6
    sltu       $a5,$zero,$a5
    move       $a1,$v0
    beqz       $a5, .L00006768
    lui        $a0,0x40
    li         $t1,-1
    li         $t8,-3
    dsrl32     $t1,$t1,0x0
    and        $t8,$a4,$t8
    sw         $t8,-19664($s0)
    dsll32     $t8,$t8,0x0
    ld         $t9,824($s1)
    ld         $a7,-30720($gp)
    dsrl32     $t8,$t8,0x0
    and        $t8,$t1,$t8
    daddu      $t9,$a0,$t9
    or         $t8,$a7,$t8
    sd         $t8,0($t9)
    sync
    lhu        $t3,-31408($s0)
    lw         $t2,-19664($s0)
    li         $t8,-33
    andi       $t3,$t3,0x1
    and        $t2,$t2,$t8
    sll        $t3,$t3,0x5
    or         $t2,$t2,$t3
    sw         $t2,-19664($s0)
    dsll32     $t2,$t2,0x0
    ld         $t0,824($s1)
    dsrl32     $t2,$t2,0x0
    and        $t1,$t1,$t2
    daddu      $t0,$a0,$t0
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
.L00006768:
    ld         $t3,824($s1)
    daddu      $t3,$a0,$t3
    ld         $t2,-31416($s0)
    sd         $t2,0($t3)
    sync
    beqz       $a5, .L000067b4
    li         $a4,-2
    lw         $t8,-19664($s0)
    and        $t8,$a4,$t8
    sw         $t8,-19664($s0)
    li         $at,-1
    ld         $t9,824($s1)
    dsrl32     $at,$at,0x0
    ld         $ra,-30720($gp)
    and        $t8,$t8,$at
    daddu      $t9,$a0,$t9
    or         $t8,$t8,$ra
    sd         $t8,0($t9)
    sync
.L000067b4:
    lw         $t9,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s2
    ori        $t9,$t9,0x2
    and        $t9,$a4,$t9
    jal        mutex_spinunlock
    sw         $t9,-19664($s0)
    b          .L0000661c
    nop
.L000067d8:
    jal        vsema
    ld         $s0,40($sp)
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s0
    b          .L000065d0
    nop
.L000067f4:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a4,-19664($s0)
    lhu        $a5,-31408($s0)
    srl        $a6,$a4,0x5
    andi       $a6,$a6,0x1
    xor        $a5,$a5,$a6
    sltu       $a5,$zero,$a5
    beqz       $a5, .L00006894
    move       $a1,$v0
    li         $t1,-1
    li         $t8,-3
    dsrl32     $t1,$t1,0x0
    and        $t8,$a4,$t8
    sw         $t8,-19664($s0)
    ld         $t9,824($s1)
    dsll32     $t8,$t8,0x0
    ld         $a7,-30720($gp)
    dsrl32     $t8,$t8,0x0
    daddu      $t9,$s3,$t9
    and        $t8,$t1,$t8
    or         $t8,$a7,$t8
    sd         $t8,0($t9)
    sync
    lhu        $t3,-31408($s0)
    lw         $t2,-19664($s0)
    li         $t8,-33
    andi       $t3,$t3,0x1
    and        $t2,$t2,$t8
    sll        $t3,$t3,0x5
    or         $t2,$t2,$t3
    sw         $t2,-19664($s0)
    ld         $t0,824($s1)
    dsll32     $t2,$t2,0x0
    dsrl32     $t2,$t2,0x0
    daddu      $t0,$s3,$t0
    and        $t1,$t1,$t2
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
.L00006894:
    ld         $ra,824($s1)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($s0)
    sd         $t9,0($ra)
    sync
    beqz       $a5, .L000068e8
    li         $a4,-2
    lw         $a0,-19664($s0)
    li         $at,-1
    dsrl32     $at,$at,0x0
    and        $a0,$a4,$a0
    sw         $a0,-19664($s0)
    ld         $v0,824($s1)
    dsll32     $a0,$a0,0x0
    ld         $v1,-30720($gp)
    dsrl32     $a0,$a0,0x0
    daddu      $v0,$s3,$v0
    and        $at,$at,$a0
    or         $at,$at,$v1
    sd         $at,0($v0)
    sync
.L000068e8:
    lw         $a2,-19664($s0)
    sd         $zero,-31416($s0)
    move       $a0,$s2
    ori        $a2,$a2,0x2
    and        $a2,$a4,$a2
    jal        mutex_spinunlock
    sw         $a2,-19664($s0)
    b          .L00006694
    nop

glabel odsy_restoreDCD2FPGA
    daddiu     $sp,$sp,-48
    sd         $a0,8($sp)
    sd         $zero,16($sp)
    sd         $ra,40($sp)
    sb         $zero,0($sp)
    sd         $s1,32($sp)
    lui        $s1,0x1
    sd         $s0,24($sp)
    li         $s0,0xb408
    daddu      $s1,$a0,$s1
    li         $at,31
    daddu      $s0,$a0,$s0
    sb         $at,-19416($s1)
    move       $a0,$s0
.L00006944:
    li         $a1,3
    jal        odsy_i2cDDCRegRead
    daddiu     $a2,$sp,0
    lbu        $t8,0($sp)
    andi       $t8,$t8,0x2
    beqz       $t8, .L00006998
    lui        $a1,0x3
    lbu        $a2,-31165($s1)
.L00006964:
    move       $a1,$zero
    move       $a0,$s0
    li         $t9,23
    jal        odsy_i2cPLLRegWrite
    sb         $t9,-19416($s1)
    beqz       $v0, .L000069c4
    move       $a0,$s0
    li         $v0,1
.L00006984:
    ld         $ra,40($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00006998:
    ld         $a0,-19432($s1)
    jal        odsy_usdelay
    ori        $a1,$a1,0xd090
    ld         $a2,16($sp)
    addiu      $a2,$a2,1
    sd         $a2,16($sp)
    slti       $a2,$a2,10
    bnez       $a2, .L00006944
    move       $a0,$s0
    b          .L00006964
    lbu        $a2,-31165($s1)
.L000069c4:
    li         $a1,1
    jal        odsy_i2cPLLRegWrite
    lbu        $a2,-31161($s1)
    beqz       $v0, .L000069e0
    move       $a0,$s0
    b          .L00006984
    li         $v0,1
.L000069e0:
    lbu        $a2,-31157($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,2
    beqz       $v0, .L000069fc
    move       $a0,$s0
    b          .L00006984
    li         $v0,1
.L000069fc:
    lbu        $a2,-31153($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,3
    beqz       $v0, .L00006a18
    move       $a0,$s0
    b          .L00006984
    li         $v0,1
.L00006a18:
    lbu        $a2,-31149($s1)
    jal        odsy_i2cPLLRegWrite
    li         $a1,4
    beqz       $v0, .L00006a34
    nop
    b          .L00006984
    li         $v0,1
.L00006a34:
    lw         $a2,-31152($s1)
    move       $a0,$s0
    li         $a1,5
    srl        $a2,$a2,0x8
    jal        odsy_i2cPLLRegWrite
    andi       $a2,$a2,0xff
    beqz       $v0, .L00006a5c
    ld         $a3,8($sp)
    b          .L00006984
    li         $v0,1
.L00006a5c:
    lhu        $a3,302($a3)
    beqz       $a3, .L00006a70
    move       $a0,$s0
.L00006a68:
    b          .L00006984
    move       $v0,$zero
.L00006a70:
    li         $a2,7
    jal        odsy_i2cPLLRegWrite
    li         $a1,50
    beqz       $v0, .L00006a68
    nop
    b          .L00006984
    li         $v0,1
