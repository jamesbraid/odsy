.section .text
.set noat
.set noreorder


glabel odsy_i2c_read_comp_reg4
    ld         $a4,16($a0)
    daddiu     $sp,$sp,-128
    sd         $s1,40($sp)
    lui        $s1,0x1
    daddu      $at,$s1,$a4
    lw         $at,-19328($at)
    sd         $a1,32($sp)
    sd         $s0,48($sp)
    move       $s0,$a0
    beqz       $at, .L000000f8
    sd         $ra,104($sp)
.L0000002c:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a4)
    sd         $s8,56($sp)
    sd         $s3,64($sp)
    sd         $s6,72($sp)
    sd         $s4,80($sp)
    sd         $s2,88($sp)
    sd         $s7,96($sp)
    beqz       $v0, .L00000110
    sd         $s5,112($sp)
.L00000058:
    ld         $a4,16($s0)
    daddu      $v0,$s1,$a4
    lw         $v0,-19328($v0)
    beqz       $v0, .L0000009c
    li         $v0,1
.L0000006c:
    ld         $s8,56($sp)
    ld         $s3,64($sp)
    ld         $s6,72($sp)
    ld         $s1,40($sp)
    ld         $s4,80($sp)
    ld         $s0,48($sp)
    ld         $ra,104($sp)
    ld         $s2,88($sp)
    ld         $s7,96($sp)
    ld         $s5,112($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L0000009c:
    li         $s2,0x8540
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $v1,$s1,$a4
    ld         $v1,-31416($v1)
    move       $s3,$v0
    beqz       $v1, .L000002f8
    li         $s4,0x8530
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00000318
    nop
    ld         $a0,16($s0)
.L000000e8:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L0000006c
    li         $v0,1
.L000000f8:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a4,$a0
    b          .L0000002c
    ld         $a4,16($s0)
.L00000110:
    lhu        $t8,24($s0)
    ld         $t3,16($s0)
    ld         $t3,824($t3)
    addu       $t8,$t8,$t8
    dsll       $t8,$t8,0x2
    lui        $t2,0x22
    daddu      $t3,$t3,$t8
    daddu      $t2,$t2,$t3
    ld         $t3,0($s0)
    lw         $t2,0($t2)
    sw         $t2,0($t3)
    ld         $t0,0($s0)
    lw         $a7,0($t0)
    li         $t1,-4097
    and        $a7,$a7,$t1
    sw         $a7,0($t0)
    ld         $a5,0($s0)
    lw         $a4,0($a5)
    li         $a6,-257
    and        $a4,$a4,$a6
    sw         $a4,0($a5)
    ld         $a2,0($s0)
    lw         $a1,0($a2)
    li         $a3,-1025
    and        $a1,$a1,$a3
    sw         $a1,0($a2)
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    bnez       $v0, .L00000058
    daddiu     $a4,$sp,0
    li         $s8,-2
    li         $s4,0x8530
    li         $s2,0x8540
    li         $a0,3
    lui        $s3,0x40
    ld         $t9,16($s0)
    li         $s5,-1
    li         $ra,-1
    lhu        $v0,24($s0)
    dsll32     $ra,$ra,0x0
    ld         $t8,0($s0)
    lui        $at,0x3000
    ori        $at,$at,0x1
    ld         $t9,824($t9)
    sll        $v0,$v0,0xe
    dsrl32     $s5,$s5,0x0
    lwu        $t8,0($t8)
    or         $at,$at,$v0
    daddu      $t9,$s3,$t9
    dsll32     $at,$at,0x0
    ld         $s7,-30720($gp)
    and        $t8,$s5,$t8
    and        $ra,$ra,$at
    or         $t8,$t8,$ra
    sd         $t8,0($t9)
    sync
.L000001f8:
    li         $s6,133
    b          .L00000210
    sd         $a0,24($sp)
.L00000204:
    addiu      $s6,$s6,-1
.L00000208:
    blez       $s6, .L00000058
    nop
.L00000210:
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    bnez       $v0, .L00000058
    lui        $v1,0x22
    lhu        $a1,26($s0)
    ld         $a0,16($s0)
    ld         $a0,824($a0)
    addu       $a1,$a1,$a1
    dsll       $a1,$a1,0x2
    daddu      $a0,$a0,$a1
    daddu      $v1,$v1,$a0
    ld         $a0,8($s0)
    lw         $v1,0($v1)
    sw         $v1,0($a0)
    ld         $v0,8($s0)
    lw         $v0,0($v0)
    sll        $a1,$v0,0x16
    bltz       $a1, .L00000488
    ld         $a0,24($sp)
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    lw         $a1,-19328($a1)
    beqz       $a1, .L000002a4
.L00000274:
    move       $a0,$a4
    jal        odsy_usdelay
    li         $a1,100
    ld         $a4,16($s0)
    daddu      $a2,$s1,$a4
    lw         $a2,-19328($a2)
    bnez       $a2, .L00000204
    li         $a1,25
    jal        psema
    daddu      $a0,$s4,$a4
    b          .L00000208
    addiu      $s6,$s6,-1
.L000002a4:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    ld         $a3,-31416($a3)
    beqz       $a3, .L00000518
    sd         $v0,8($sp)
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00000538
    nop
    ld         $a0,16($s0)
.L000002e8:
    jal        vsema
    daddu      $a0,$s4,$a0
.L000002f0:
    b          .L00000274
    ld         $a4,16($s0)
.L000002f8:
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    move       $a1,$s3
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000006c
    li         $v0,1
.L00000318:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    move       $a1,$v0
    beqz       $a6, .L000003e0
    lui        $s3,0x40
    li         $at,-3
    and        $at,$a5,$at
    sw         $at,-19664($a0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    li         $t2,-1
    ld         $at,824($at)
    ld         $t0,-30720($gp)
    dsrl32     $t2,$t2,0x0
    and        $ra,$t2,$ra
    daddu      $at,$s3,$at
    or         $ra,$t0,$ra
    sd         $ra,0($at)
    sync
    ld         $t9,16($s0)
    daddu      $t9,$s1,$t9
    lhu        $ra,-31408($t9)
    lw         $t8,-19664($t9)
    li         $at,-33
    andi       $ra,$ra,0x1
    and        $t8,$t8,$at
    sll        $ra,$ra,0x5
    or         $t8,$t8,$ra
    sw         $t8,-19664($t9)
    ld         $t1,16($s0)
    daddu      $t3,$s1,$t1
    lwu        $t3,-19664($t3)
    ld         $t1,824($t1)
    and        $t2,$t2,$t3
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L000003e0:
    ld         $v1,824($a4)
    daddu      $v1,$s3,$v1
    ld         $v0,-31416($a0)
    sd         $v0,0($v1)
    sync
    beqz       $a6, .L00000440
    li         $s8,-2
    ld         $a3,16($s0)
    daddu      $a3,$s1,$a3
    lw         $a2,-19664($a3)
    and        $a2,$s8,$a2
    sw         $a2,-19664($a3)
    ld         $a2,16($s0)
    daddu      $a0,$s1,$a2
    lwu        $a0,-19664($a0)
    li         $a4,-1
    ld         $a2,824($a2)
    dsrl32     $a4,$a4,0x0
    ld         $a3,-30720($gp)
    and        $a0,$a0,$a4
    daddu      $a2,$s3,$a2
    or         $a0,$a0,$a3
    sd         $a0,0($a2)
    sync
.L00000440:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$s8,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000000e8
    ld         $a0,16($s0)
.L00000488:
    daddu      $a7,$a0,$sp
    blez       $s6, .L00000058
    sb         $v0,0($a7)
    addiu      $a0,$a0,-1
    bgtz       $a0, .L000001f8
    sd         $a0,24($sp)
    ld         $a2,0($s0)
    lw         $a1,0($a2)
    ori        $a1,$a1,0x400
    sw         $a1,0($a2)
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    bnez       $v0, .L00000058
    nop
    ld         $a3,16($s0)
    lhu        $a6,24($s0)
    li         $a4,-1
    ld         $a2,0($s0)
    lui        $a5,0x3000
    ori        $a5,$a5,0x1
    ld         $a3,824($a3)
    sll        $a6,$a6,0xe
    dsll32     $a4,$a4,0x0
    lwu        $a2,0($a2)
    or         $a5,$a5,$a6
    daddu      $a3,$s3,$a3
    dsll32     $a5,$a5,0x0
    and        $a2,$s5,$a2
    and        $a4,$a4,$a5
    or         $a2,$a2,$a4
    sd         $a2,0($a3)
    sync
    b          .L000006ec
    li         $s6,133
.L00000518:
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    ld         $a1,8($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000002f0
    nop
.L00000538:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L000005f0
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s3,$t8
    and        $t3,$s5,$t3
    or         $t3,$s7,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s3,$t1
    and        $t0,$s5,$t0
    or         $t0,$s7,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L000005f0:
    ld         $ra,824($a4)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00000644
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $v0,-19664($v1)
    and        $v0,$s8,$v0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    lwu        $at,-19664($at)
    ld         $v0,824($v0)
    and        $at,$s5,$at
    daddu      $v0,$s3,$v0
    or         $at,$s7,$at
    sd         $at,0($v0)
    sync
.L00000644:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$s8,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000002e8
    ld         $a0,16($s0)
.L0000068c:
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000007d8
    nop
    ld         $a0,16($s0)
.L000006b4:
    jal        vsema
    daddu      $a0,$s4,$a0
.L000006bc:
    ld         $a4,16($s0)
    move       $a0,$a4
.L000006c4:
    jal        odsy_usdelay
    li         $a1,100
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    lw         $a1,-19328($a1)
    beqz       $a1, .L00000794
    li         $a1,25
    addiu      $s6,$s6,-1
.L000006e4:
    blez       $s6, .L00000058
    nop
.L000006ec:
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    bnez       $v0, .L00000058
    nop
    lhu        $a1,26($s0)
    ld         $a0,16($s0)
    ld         $a0,824($a0)
    addu       $a1,$a1,$a1
    dsll       $a1,$a1,0x2
    lui        $v1,0x22
    daddu      $a0,$a0,$a1
    daddu      $v1,$v1,$a0
    ld         $a0,8($s0)
    lw         $v1,0($v1)
    sw         $v1,0($a0)
    ld         $v0,8($s0)
    lw         $v0,0($v0)
    sll        $a1,$v0,0x16
    bltz       $a1, .L000007a4
    ld         $a1,24($sp)
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    lw         $a1,-19328($a1)
    bnez       $a1, .L000006c4
    move       $a0,$a4
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a2,$s1,$a4
    ld         $a2,-31416($a2)
    bnez       $a2, .L0000068c
    sd         $v0,16($sp)
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    ld         $a1,16($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000006bc
    nop
.L00000794:
    jal        psema
    daddu      $a0,$s4,$a4
    b          .L000006e4
    addiu      $s6,$s6,-1
.L000007a4:
    daddu      $a1,$a1,$sp
    blez       $s6, .L00000058
    sb         $v0,0($a1)
    ld         $a5,32($sp)
    lw         $a4,0($sp)
    sw         $a4,0($a5)
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lw         $a3,-19328($a3)
    beqz       $a3, .L0000092c
    nop
.L000007d0:
    b          .L0000006c
    move       $v0,$zero
.L000007d8:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00000890
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s3,$t8
    and        $t3,$s5,$t3
    or         $t3,$s7,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s3,$t1
    and        $t0,$s5,$t0
    or         $t0,$s7,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00000890:
    ld         $ra,824($a4)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L000008e4
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $v0,-19664($v1)
    and        $v0,$s8,$v0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    lwu        $at,-19664($at)
    ld         $v0,824($v0)
    and        $at,$s5,$at
    daddu      $v0,$s3,$v0
    or         $at,$s7,$at
    sd         $at,0($v0)
    sync
.L000008e4:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$s8,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000006b4
    ld         $a0,16($s0)
.L0000092c:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a7,$s1,$a4
    ld         $a7,-31416($a7)
    beqz       $a7, .L00000980
    move       $s6,$v0
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000009a0
    nop
    ld         $a0,16($s0)
.L00000970:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L000007d0
    nop
.L00000980:
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    move       $a1,$s6
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000007d0
    nop
.L000009a0:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00000a58
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s3,$t8
    and        $t3,$s5,$t3
    or         $t3,$s7,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s3,$t1
    and        $t0,$s5,$t0
    or         $t0,$s7,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00000a58:
    ld         $ra,824($a4)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00000aac
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $v0,-19664($v1)
    and        $v0,$s8,$v0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    lwu        $at,-19664($at)
    ld         $v0,824($v0)
    and        $at,$s5,$at
    daddu      $v0,$s3,$v0
    or         $at,$s7,$at
    sd         $at,0($v0)
    sync
.L00000aac:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$s8,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00000970
    ld         $a0,16($s0)

glabel odsy_i2c_write_comp_reg4
    daddiu     $sp,$sp,-112
    sw         $a1,0($sp)
    sd         $s3,64($sp)
    sd         $s6,72($sp)
    sd         $s7,80($sp)
    sd         $s4,88($sp)
    ld         $a4,16($a0)
    sd         $s1,40($sp)
    lui        $s1,0x1
    sd         $s8,96($sp)
    daddu      $at,$s1,$a4
    lw         $at,-19328($at)
    sd         $s0,32($sp)
    move       $s0,$a0
    sd         $s5,48($sp)
    li         $s5,0x8530
    beqz       $at, .L00001084
    sd         $ra,104($sp)
    lui        $s3,0x22
.L00000b40:
    lui        $s6,0x40
    li         $s4,0x8540
    ld         $s8,-30720($gp)
    li         $s7,-1
    li         $v0,3
    sd         $s2,56($sp)
    dsrl32     $s7,$s7,0x0
    li         $s2,133
.L00000b60:
    b          .L00000bc8
    sd         $v0,16($sp)
.L00000b68:
    daddu      $a0,$s4,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00000f28
    nop
    ld         $a0,16($s0)
.L00000b90:
    jal        vsema
    daddu      $a0,$s5,$a0
    ld         $a4,16($s0)
.L00000b9c:
    move       $a0,$a4
.L00000ba0:
    jal        odsy_usdelay
    li         $a1,100
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    lw         $a1,-19328($a1)
    beqz       $a1, .L00000c6c
    li         $a1,25
    addiu      $s2,$s2,-1
.L00000bc0:
    blez       $s2, .L00000c7c
    nop
.L00000bc8:
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    bnez       $v0, .L00000c7c
    nop
    lhu        $a3,26($s0)
    ld         $a2,16($s0)
    ld         $a2,824($a2)
    addu       $a3,$a3,$a3
    dsll       $a3,$a3,0x2
    daddu      $a2,$a2,$a3
    ld         $a3,8($s0)
    daddu      $a2,$s3,$a2
    lw         $a2,0($a2)
    sw         $a2,0($a3)
    ld         $a1,8($s0)
    lw         $a1,0($a1)
    sll        $a1,$a1,0x9
    bltz       $a1, .L00000cc0
    nop
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lw         $a3,-19328($a3)
    bnez       $a3, .L00000ba0
    move       $a0,$a4
    jal        mutex_spinlock
    daddu      $a0,$s4,$a4
    ld         $a4,16($s0)
    daddu      $a5,$s1,$a4
    ld         $a5,-31416($a5)
    bnez       $a5, .L00000b68
    sd         $v0,8($sp)
    jal        vsema
    daddu      $a0,$s5,$a4
    ld         $a0,16($s0)
    ld         $a1,8($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s4,$a0
    b          .L00000b9c
    ld         $a4,16($s0)
.L00000c6c:
    jal        psema
    daddu      $a0,$s5,$a4
    b          .L00000bc0
    addiu      $s2,$s2,-1
.L00000c7c:
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    lw         $a1,-19328($a1)
    beqz       $a1, .L00000eb4
    li         $v0,1
.L00000c90:
    ld         $s2,56($sp)
    ld         $s3,64($sp)
    ld         $s6,72($sp)
    ld         $s7,80($sp)
    ld         $s4,88($sp)
    ld         $s8,96($sp)
    ld         $ra,104($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    ld         $s5,48($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00000cc0:
    blez       $s2, .L00000c7c
    nop
    ld         $t2,0($s0)
    lw         $t3,0($t2)
    li         $t1,-2049
    and        $t1,$t1,$t3
    sw         $t1,0($t2)
    ld         $a7,0($s0)
    lw         $t0,0($a7)
    li         $a6,-8193
    and        $a6,$a6,$t0
    sw         $a6,0($a7)
    ld         $a6,0($s0)
    lw         $a5,0($a6)
    ld         $a3,16($sp)
    ori        $a5,$a5,0x200
    sw         $a5,0($a6)
    ld         $a2,0($s0)
    daddu      $a3,$a3,$sp
    lw         $a4,0($a2)
    li         $a1,-256
    lbu        $a3,0($a3)
    and        $a1,$a1,$a4
    or         $a1,$a1,$a3
    sw         $a1,0($a2)
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    bnez       $v0, .L00000c7c
    lui        $ra,0x3000
    ld         $t8,16($s0)
    lhu        $at,24($s0)
    li         $t9,-1
    ld         $s2,0($s0)
    ori        $ra,$ra,0x1
    ld         $t8,824($t8)
    sll        $at,$at,0xe
    dsll32     $t9,$t9,0x0
    lwu        $s2,0($s2)
    or         $ra,$ra,$at
    daddu      $t8,$s6,$t8
    dsll32     $ra,$ra,0x0
    and        $s2,$s7,$s2
    and        $t9,$t9,$ra
    or         $s2,$s2,$t9
    sd         $s2,0($t8)
    sync
    b          .L00000d94
    li         $s2,133
.L00000d88:
    addiu      $s2,$s2,-1
.L00000d8c:
    blez       $s2, .L00000c7c
    nop
.L00000d94:
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    bnez       $v0, .L00000c7c
    nop
    lhu        $a0,26($s0)
    ld         $v1,16($s0)
    ld         $v1,824($v1)
    addu       $a0,$a0,$a0
    dsll       $a0,$a0,0x2
    daddu      $v1,$v1,$a0
    ld         $a0,8($s0)
    daddu      $v1,$s3,$v1
    lw         $v1,0($v1)
    sw         $v1,0($a0)
    ld         $v0,8($s0)
    lw         $v0,0($v0)
    sll        $a1,$v0,0x16
    bltz       $a1, .L00000e7c
    nop
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a0,-19328($a0)
    beqz       $a0, .L00000e28
.L00000df8:
    move       $a0,$a4
    jal        odsy_usdelay
    li         $a1,100
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    lw         $a1,-19328($a1)
    bnez       $a1, .L00000d88
    li         $a1,25
    jal        psema
    daddu      $a0,$s5,$a4
    b          .L00000d8c
    addiu      $s2,$s2,-1
.L00000e28:
    jal        mutex_spinlock
    daddu      $a0,$s4,$a4
    ld         $a4,16($s0)
    daddu      $a2,$s1,$a4
    ld         $a2,-31416($a2)
    beqz       $a2, .L00000f08
    sd         $v0,24($sp)
    daddu      $a0,$s4,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00001098
    nop
    ld         $a0,16($s0)
.L00000e6c:
    jal        vsema
    daddu      $a0,$s5,$a0
.L00000e74:
    b          .L00000df8
    ld         $a4,16($s0)
.L00000e7c:
    blez       $s2, .L00000c7c
    sll        $a1,$v0,0x17
    bltz       $a1, .L00000c7c
    ld         $v0,16($sp)
    addiu      $v0,$v0,-1
    bgez       $v0, .L00000b60
    li         $s2,133
    ld         $a4,16($s0)
    daddu      $a2,$s1,$a4
    lw         $a2,-19328($a2)
    beqz       $a2, .L00001370
    nop
.L00000eac:
    b          .L00000c90
    move       $v0,$zero
.L00000eb4:
    jal        mutex_spinlock
    daddu      $a0,$s4,$a4
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    ld         $a3,-31416($a3)
    beqz       $a3, .L000011f4
    move       $s2,$v0
    daddu      $a0,$s4,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00001214
    nop
    ld         $a0,16($s0)
.L00000ef8:
    jal        vsema
    daddu      $a0,$s5,$a0
    b          .L00000c90
    li         $v0,1
.L00000f08:
    jal        vsema
    daddu      $a0,$s5,$a4
    ld         $a0,16($s0)
    ld         $a1,24($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s4,$a0
    b          .L00000e74
    nop
.L00000f28:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s4,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a7,-19664($a0)
    lhu        $a5,-31408($a0)
    srl        $a6,$a7,0x5
    andi       $a6,$a6,0x1
    move       $a1,$v0
    xor        $a5,$a5,$a6
    li         $t0,-33
    sltu       $a5,$zero,$a5
    li         $ra,-2
    li         $a6,-3
    beqz       $a5, .L00000fe4
    and        $a6,$a6,$a7
    sw         $a6,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    ld         $t3,824($t3)
    lwu        $t2,-19664($t2)
    daddu      $t3,$s6,$t3
    and        $t2,$s7,$t2
    or         $t2,$s8,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t3,-19664($t1)
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $t0,16($s0)
    daddu      $a7,$s1,$t0
    ld         $t0,824($t0)
    lwu        $a7,-19664($a7)
    daddu      $t0,$s6,$t0
    and        $a7,$s7,$a7
    or         $a7,$s8,$a7
    sd         $a7,0($t0)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00000fe4:
    ld         $t8,824($a4)
    ld         $t3,-31416($a0)
    daddu      $t8,$s6,$t8
    sd         $t3,0($t8)
    sync
    beqz       $a5, .L00001038
    nop
    ld         $at,16($s0)
    daddu      $at,$s1,$at
    lw         $v0,-19664($at)
    and        $ra,$ra,$v0
    sw         $ra,-19664($at)
    ld         $ra,16($s0)
    daddu      $t9,$s1,$ra
    ld         $ra,824($ra)
    lwu        $t9,-19664($t9)
    daddu      $ra,$s6,$ra
    and        $t9,$s7,$t9
    or         $t9,$s8,$t9
    sd         $t9,0($ra)
    sync
.L00001038:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s4,$a0
    b          .L00000b90
    ld         $a0,16($s0)
.L00001084:
    li         $a1,25
    jal        psema
    daddu      $a0,$s5,$a4
    b          .L00000b40
    lui        $s3,0x22
.L00001098:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s4,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a7,-19664($a0)
    lhu        $a5,-31408($a0)
    srl        $a6,$a7,0x5
    andi       $a6,$a6,0x1
    move       $a1,$v0
    xor        $a5,$a5,$a6
    li         $t0,-33
    sltu       $a5,$zero,$a5
    li         $ra,-2
    li         $a6,-3
    beqz       $a5, .L00001154
    and        $a6,$a6,$a7
    sw         $a6,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    ld         $t3,824($t3)
    lwu        $t2,-19664($t2)
    daddu      $t3,$s6,$t3
    and        $t2,$s7,$t2
    or         $t2,$s8,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t3,-19664($t1)
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $t0,16($s0)
    daddu      $a7,$s1,$t0
    ld         $t0,824($t0)
    lwu        $a7,-19664($a7)
    daddu      $t0,$s6,$t0
    and        $a7,$s7,$a7
    or         $a7,$s8,$a7
    sd         $a7,0($t0)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00001154:
    ld         $t8,824($a4)
    ld         $t3,-31416($a0)
    daddu      $t8,$s6,$t8
    sd         $t3,0($t8)
    sync
    beqz       $a5, .L000011a8
    nop
    ld         $at,16($s0)
    daddu      $at,$s1,$at
    lw         $v0,-19664($at)
    and        $ra,$ra,$v0
    sw         $ra,-19664($at)
    ld         $ra,16($s0)
    daddu      $t9,$s1,$ra
    ld         $ra,824($ra)
    lwu        $t9,-19664($t9)
    daddu      $ra,$s6,$ra
    and        $t9,$s7,$t9
    or         $t9,$s8,$t9
    sd         $t9,0($ra)
    sync
.L000011a8:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s4,$a0
    b          .L00000e6c
    ld         $a0,16($s0)
.L000011f4:
    jal        vsema
    daddu      $a0,$s5,$a4
    ld         $a0,16($s0)
    move       $a1,$s2
    jal        mutex_spinunlock
    daddu      $a0,$s4,$a0
    b          .L00000c90
    li         $v0,1
.L00001214:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s4,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L000012cc
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s6,$t8
    and        $t3,$s7,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s6,$t1
    and        $t0,$s7,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L000012cc:
    ld         $ra,824($a4)
    daddu      $ra,$s6,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00001324
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s6,$v0
    and        $at,$s7,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L00001324:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s4,$a0
    b          .L00000ef8
    ld         $a0,16($s0)
.L00001370:
    jal        mutex_spinlock
    daddu      $a0,$s4,$a4
    ld         $a4,16($s0)
    daddu      $a7,$s1,$a4
    ld         $a7,-31416($a7)
    beqz       $a7, .L000013c4
    move       $s2,$v0
    daddu      $a0,$s4,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000013e4
    nop
    ld         $a0,16($s0)
.L000013b4:
    jal        vsema
    daddu      $a0,$s5,$a0
    b          .L00000eac
    nop
.L000013c4:
    jal        vsema
    daddu      $a0,$s5,$a4
    ld         $a0,16($s0)
    move       $a1,$s2
    jal        mutex_spinunlock
    daddu      $a0,$s4,$a0
    b          .L00000eac
    nop
.L000013e4:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s4,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L0000149c
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s6,$t8
    and        $t3,$s7,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s6,$t1
    and        $t0,$s7,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L0000149c:
    ld         $ra,824($a4)
    daddu      $ra,$s6,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L000014f4
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s6,$v0
    and        $at,$s7,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L000014f4:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s4,$a0
    b          .L000013b4
    ld         $a0,16($s0)

glabel odsy_i2c_read_denali_byte
    daddiu     $sp,$sp,-96
    sd         $ra,32($sp)
    sd         $s0,24($sp)
    li         $a2,1
    move       $s0,$a0
    sd         $a1,8($sp)
    li         $a1,239
    jal        odsy_i2c_start
    sb         $a1,32($a0)
    sd         $s4,48($sp)
    sd         $s2,56($sp)
    sd         $s3,64($sp)
    sd         $s5,72($sp)
    sd         $s1,80($sp)
    beqz       $v0, .L000015ac
    sd         $s6,88($sp)
    li         $v0,1
.L00001584:
    ld         $s4,48($sp)
    ld         $s2,56($sp)
    ld         $s0,24($sp)
    ld         $s3,64($sp)
    ld         $ra,32($sp)
    ld         $s5,72($sp)
    ld         $s1,80($sp)
    ld         $s6,88($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L000015ac:
    li         $a1,20
    jal        odsy_usdelay
    ld         $a0,16($s0)
    ld         $a4,16($s0)
    lui        $s1,0x1
    daddu      $at,$s1,$a4
    lw         $at,-19328($at)
    beqz       $at, .L00001654
    li         $a1,25
.L000015d0:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a4)
    beqz       $v0, .L00001668
    ld         $a4,16($s0)
.L000015e4:
    daddu      $v0,$s1,$a4
    lw         $v0,-19328($v0)
    beqz       $v0, .L000015fc
    li         $s2,0x8540
.L000015f4:
    b          .L00001584
    li         $v0,1
.L000015fc:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $v1,$s1,$a4
    ld         $v1,-31416($v1)
    move       $s4,$v0
    beqz       $v1, .L0000175c
    li         $s3,0x8530
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000177c
    nop
    ld         $a0,16($s0)
.L00001644:
    jal        vsema
    daddu      $a0,$s3,$a0
    b          .L000015f4
    nop
.L00001654:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a4,$a0
    b          .L000015d0
    ld         $a4,16($s0)
.L00001668:
    lhu        $t3,24($s0)
    ld         $t2,824($a4)
    addu       $t3,$t3,$t3
    dsll       $t3,$t3,0x2
    lui        $t1,0x22
    daddu      $t2,$t2,$t3
    daddu      $t1,$t1,$t2
    ld         $t2,0($s0)
    lw         $t1,0($t1)
    sw         $t1,0($t2)
    ld         $a7,0($s0)
    lw         $a6,0($a7)
    li         $t0,-4097
    and        $a6,$a6,$t0
    sw         $a6,0($a7)
    ld         $a4,0($s0)
    lw         $a3,0($a4)
    li         $a5,-257
    and        $a3,$a3,$a5
    sw         $a3,0($a4)
    ld         $a3,0($s0)
    lw         $a2,0($a3)
    ori        $a2,$a2,0x400
    sw         $a2,0($a3)
    ld         $a2,0($s0)
    lw         $a1,0($a2)
    ori        $a1,$a1,0x800
    sw         $a1,0($a2)
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    bnez       $v0, .L000015e4
    ld         $a4,16($s0)
    li         $s3,0x8530
    li         $t8,133
    li         $s5,-1
    lhu        $at,24($s0)
    dsrl32     $s5,$s5,0x0
    lui        $v0,0x3000
    ld         $t9,0($s0)
    ori        $v0,$v0,0x1
    sll        $at,$at,0xe
    ld         $ra,824($a4)
    or         $at,$at,$v0
    li         $v0,-1
    lui        $s4,0x40
    lwu        $t9,0($t9)
    dsll32     $v0,$v0,0x0
    ld         $s6,-30720($gp)
    daddu      $ra,$s4,$ra
    dsll32     $at,$at,0x0
    sd         $t8,16($sp)
    and        $t9,$s5,$t9
    and        $at,$at,$v0
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
    li         $s2,0x8540
    b          .L000018fc
    ld         $a4,16($s0)
.L0000175c:
    jal        vsema
    daddu      $a0,$s3,$a4
    ld         $a0,16($s0)
    move       $a1,$s4
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000015f4
    nop
.L0000177c:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a5,$s1,$a4
    lw         $a6,-19664($a5)
    lhu        $a7,-31408($a5)
    srl        $t0,$a6,0x5
    andi       $t0,$t0,0x1
    xor        $a7,$a7,$t0
    sltu       $a7,$zero,$a7
    move       $a1,$v0
    beqz       $a7, .L00001844
    lui        $a0,0x40
    li         $v0,-3
    and        $v0,$a6,$v0
    sw         $v0,-19664($a5)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    lwu        $at,-19664($at)
    li         $t3,-1
    ld         $v0,824($v0)
    ld         $t1,-30720($gp)
    dsrl32     $t3,$t3,0x0
    and        $at,$t3,$at
    daddu      $v0,$a0,$v0
    or         $at,$t1,$at
    sd         $at,0($v0)
    sync
    ld         $ra,16($s0)
    daddu      $ra,$s1,$ra
    lhu        $at,-31408($ra)
    lw         $t9,-19664($ra)
    li         $v0,-33
    andi       $at,$at,0x1
    and        $t9,$t9,$v0
    sll        $at,$at,0x5
    or         $t9,$t9,$at
    sw         $t9,-19664($ra)
    ld         $t2,16($s0)
    daddu      $t8,$s1,$t2
    lwu        $t8,-19664($t8)
    ld         $t2,824($t2)
    and        $t3,$t3,$t8
    daddu      $t2,$a0,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
    ld         $a4,16($s0)
    daddu      $a5,$s1,$a4
.L00001844:
    ld         $a2,824($a4)
    daddu      $a2,$a0,$a2
    ld         $v1,-31416($a5)
    sd         $v1,0($a2)
    sync
    beqz       $a7, .L000018a4
    li         $a6,-2
    ld         $a5,16($s0)
    daddu      $a5,$s1,$a5
    lw         $a4,-19664($a5)
    and        $a4,$a6,$a4
    sw         $a4,-19664($a5)
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lwu        $a3,-19664($a3)
    li         $a7,-1
    ld         $a4,824($a4)
    dsrl32     $a7,$a7,0x0
    ld         $a5,-30720($gp)
    and        $a3,$a3,$a7
    daddu      $a4,$a0,$a4
    or         $a3,$a3,$a5
    sd         $a3,0($a4)
    sync
.L000018a4:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a5,-19664($a7)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a6,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00001644
    ld         $a0,16($s0)
.L000018ec:
    ld         $t0,16($sp)
    addiu      $t0,$t0,-1
    blez       $t0, .L000015e4
    sd         $t0,16($sp)
.L000018fc:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a4)
    bnez       $v0, .L000019e4
    nop
    lhu        $a1,26($s0)
    ld         $a0,16($s0)
    ld         $a0,824($a0)
    addu       $a1,$a1,$a1
    dsll       $a1,$a1,0x2
    lui        $v1,0x22
    daddu      $a0,$a0,$a1
    daddu      $v1,$v1,$a0
    ld         $a0,8($s0)
    lw         $v1,0($v1)
    sw         $v1,0($a0)
    ld         $v0,8($s0)
    lw         $v0,0($v0)
    sll        $t1,$v0,0x16
    bltz       $t1, .L000019ec
    ld         $a2,8($sp)
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    lw         $a1,-19328($a1)
    beqz       $a1, .L00001990
.L00001960:
    move       $a0,$a4
    jal        odsy_usdelay
    li         $a1,200
    ld         $a4,16($s0)
    daddu      $a2,$s1,$a4
    lw         $a2,-19328($a2)
    bnez       $a2, .L000018ec
    li         $a1,25
    jal        psema
    daddu      $a0,$s3,$a4
    b          .L000018ec
    ld         $a4,16($s0)
.L00001990:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    ld         $a3,-31416($a3)
    beqz       $a3, .L00001a14
    sd         $v0,0($sp)
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00001a34
    nop
    ld         $a0,16($s0)
.L000019d4:
    jal        vsema
    daddu      $a0,$s3,$a0
.L000019dc:
    b          .L00001960
    ld         $a4,16($s0)
.L000019e4:
    b          .L000015e4
    ld         $a4,16($s0)
.L000019ec:
    ld         $a1,16($sp)
    sb         $v0,0($a2)
    blez       $a1, .L000015e4
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lw         $a3,-19328($a3)
    beqz       $a3, .L00001b90
    nop
.L00001a0c:
    b          .L00001584
    move       $v0,$zero
.L00001a14:
    jal        vsema
    daddu      $a0,$s3,$a4
    ld         $a0,16($s0)
    ld         $a1,0($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000019dc
    nop
.L00001a34:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a5,$s1,$a4
    lw         $a6,-19664($a5)
    lhu        $a0,-31408($a5)
    srl        $a2,$a6,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    beqz       $a0, .L00001aec
    move       $a1,$v0
    li         $t0,-3
    and        $t0,$t0,$a6
    sw         $t0,-19664($a5)
    ld         $t0,16($s0)
    daddu      $a7,$s1,$t0
    ld         $t0,824($t0)
    lwu        $a7,-19664($a7)
    daddu      $t0,$s4,$t0
    and        $a7,$s5,$a7
    or         $a7,$s6,$a7
    sd         $a7,0($t0)
    sync
    ld         $a5,16($s0)
    daddu      $a5,$s1,$a5
    lhu        $a7,-31408($a5)
    lw         $t0,-19664($a5)
    li         $a4,-33
    andi       $a7,$a7,0x1
    and        $a4,$a4,$t0
    sll        $a7,$a7,0x5
    or         $a4,$a4,$a7
    sw         $a4,-19664($a5)
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    ld         $a4,824($a4)
    lwu        $a3,-19664($a3)
    daddu      $a4,$s4,$a4
    and        $a3,$s5,$a3
    or         $a3,$s6,$a3
    sd         $a3,0($a4)
    sync
    ld         $a4,16($s0)
    daddu      $a5,$s1,$a4
.L00001aec:
    ld         $t2,824($a4)
    daddu      $t2,$s4,$t2
    ld         $t1,-31416($a5)
    sd         $t1,0($t2)
    sync
    beqz       $a0, .L00001b44
    nop
    ld         $t9,16($s0)
    daddu      $t9,$s1,$t9
    lw         $ra,-19664($t9)
    li         $t8,-2
    and        $t8,$t8,$ra
    sw         $t8,-19664($t9)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s4,$t8
    and        $t3,$s5,$t3
    or         $t3,$s6,$t3
    sd         $t3,0($t8)
    sync
.L00001b44:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000019d4
    ld         $a0,16($s0)
.L00001b90:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a7,$s1,$a4
    ld         $a7,-31416($a7)
    beqz       $a7, .L00001be4
    sd         $v0,40($sp)
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00001c08
    nop
    ld         $a0,16($s0)
.L00001bd4:
    jal        vsema
    daddu      $a0,$s3,$a0
    b          .L00001a0c
    nop
.L00001be4:
    ld         $s1,40($sp)
    jal        vsema
    daddu      $a0,$s3,$a4
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00001a0c
    nop
.L00001c08:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a5,$s1,$a4
    lw         $a6,-19664($a5)
    lhu        $a0,-31408($a5)
    srl        $a2,$a6,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    beqz       $a0, .L00001cc0
    move       $a1,$v0
    li         $t0,-3
    and        $t0,$t0,$a6
    sw         $t0,-19664($a5)
    ld         $t0,16($s0)
    daddu      $a7,$s1,$t0
    ld         $t0,824($t0)
    lwu        $a7,-19664($a7)
    daddu      $t0,$s4,$t0
    and        $a7,$s5,$a7
    or         $a7,$s6,$a7
    sd         $a7,0($t0)
    sync
    ld         $a5,16($s0)
    daddu      $a5,$s1,$a5
    lhu        $a7,-31408($a5)
    lw         $t0,-19664($a5)
    li         $a4,-33
    andi       $a7,$a7,0x1
    and        $a4,$a4,$t0
    sll        $a7,$a7,0x5
    or         $a4,$a4,$a7
    sw         $a4,-19664($a5)
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    ld         $a4,824($a4)
    lwu        $a3,-19664($a3)
    daddu      $a4,$s4,$a4
    and        $a3,$s5,$a3
    or         $a3,$s6,$a3
    sd         $a3,0($a4)
    sync
    ld         $a4,16($s0)
    daddu      $a5,$s1,$a4
.L00001cc0:
    ld         $t2,824($a4)
    daddu      $t2,$s4,$t2
    ld         $t1,-31416($a5)
    sd         $t1,0($t2)
    sync
    beqz       $a0, .L00001d18
    nop
    ld         $t9,16($s0)
    daddu      $t9,$s1,$t9
    lw         $ra,-19664($t9)
    li         $t8,-2
    and        $t8,$t8,$ra
    sw         $t8,-19664($t9)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s4,$t8
    and        $t3,$s5,$t3
    or         $t3,$s6,$t3
    sd         $t3,0($t8)
    sync
.L00001d18:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00001bd4
    ld         $a0,16($s0)

glabel odsy_i2c_read_denali
    daddiu     $sp,$sp,-112
    sd         $a1,32($sp)
    sd         $s2,64($sp)
    sd         $s3,72($sp)
    sd         $s4,80($sp)
    sd         $ra,88($sp)
    ld         $a5,16($a0)
    sd         $s1,56($sp)
    lui        $s1,0x1
    sd         $s7,96($sp)
    daddu      $at,$s1,$a5
    lw         $at,-19328($at)
    sd         $s0,48($sp)
    move       $s0,$a0
    sd         $s6,40($sp)
    move       $s6,$a2
    beqz       $at, .L00001fb4
    sd         $s5,104($sp)
.L00001dac:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a5)
    bnez       $v0, .L00001e58
    ld         $a5,16($s0)
    ld         $a0,824($a5)
    lui        $s7,0x23
    ori        $s7,$s7,0x3804
    ld         $a1,-30704($gp)
    daddu      $s7,$s7,$a0
    lw         $s7,0($s7)
    lui        $a2,0x3
    and        $a1,$s7,$a1
    or         $a1,$a1,$a2
    li         $a2,-28673
    li         $s5,-1
    and        $a1,$a1,$a2
    dsrl32     $s5,$s5,0x0
    ori        $a1,$a1,0x6000
    dsll32     $a1,$a1,0x0
    ld         $v1,-30712($gp)
    lui        $s3,0x40
    dsrl32     $a1,$a1,0x0
    daddu      $a0,$s3,$a0
    and        $a1,$s5,$a1
    or         $v1,$v1,$a1
    sd         $v1,0($a0)
    sync
    ld         $a5,16($s0)
    daddu      $v0,$s1,$a5
    lw         $v0,-19328($v0)
    beqz       $v0, .L00002050
    li         $s2,0x8540
    move       $a0,$s0
.L00001e34:
    jal        odsy_i2c_read_denali_byte
    daddiu     $a1,$sp,0
    beqz       $v0, .L00001f44
    lbu        $a2,0($sp)
    ld         $a5,16($s0)
    daddu      $t8,$s1,$a5
    lw         $t8,-19328($t8)
    beqz       $t8, .L000020a8
    sw         $s7,4($sp)
.L00001e58:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a5)
    beqz       $v0, .L00001eb0
    nop
.L00001e6c:
    ld         $a5,16($s0)
    daddu      $t9,$s1,$a5
    lw         $t9,-19328($t9)
    beqz       $t9, .L00001ee8
    li         $v0,1
.L00001e80:
    sw         $zero,0($s6)
.L00001e84:
    ld         $s2,64($sp)
    ld         $s6,40($sp)
    ld         $s3,72($sp)
    ld         $s4,80($sp)
    ld         $s7,96($sp)
    ld         $ra,88($sp)
    ld         $s0,48($sp)
    ld         $s1,56($sp)
    ld         $s5,104($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00001eb0:
    ld         $v1,16($s0)
    lw         $ra,4($sp)
    li         $a0,-1
    ld         $v1,824($v1)
    dsrl32     $a0,$a0,0x0
    ld         $v0,-30712($gp)
    lui        $at,0x40
    and        $ra,$ra,$a0
    daddu      $at,$at,$v1
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
    b          .L00001e6c
    nop
.L00001ee8:
    li         $s2,0x8540
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    ld         $a0,-31416($a0)
    move       $s3,$v0
    beqz       $a0, .L00002030
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000020c0
    nop
    ld         $a0,16($s0)
.L00001f34:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00001e80
    li         $v0,1
.L00001f44:
    li         $v0,5
    li         $s4,32
    li         $a1,32
    slt        $a1,$a1,$a2
    beq        $v0, $a2, .L00002280
    movz       $s4,$a2,$a1
    blez       $s4, .L00002000
    nop
.L00001f64:
    li         $a2,10
    move       $s2,$zero
    slt        $a2,$a2,$s4
    sd         $a2,24($sp)
    move       $a0,$s0
.L00001f78:
    jal        odsy_i2c_read_denali_byte
    daddiu     $a1,$sp,8
    beqz       $v0, .L00001fcc
    ld         $a1,32($sp)
    ld         $a5,16($s0)
    daddu      $a3,$s1,$a5
    lw         $a3,-19328($a3)
    bnez       $a3, .L00001e58
    sw         $s7,4($sp)
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a5,$a0
    b          .L00001e58
    ld         $a5,16($s0)
.L00001fb4:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a5,$a0
    b          .L00001dac
    ld         $a5,16($s0)
.L00001fcc:
    lbu        $v0,8($sp)
    dsll       $a2,$s2,0x2
    daddu      $a1,$a1,$a2
    li         $a2,10
    addiu      $s2,$s2,1
    slt        $a4,$s2,$s4
    beq        $a2, $v0, .L00002230
    sw         $v0,0($a1)
    li         $a3,5
    beq        $a3, $v0, .L00002234
    ld         $a7,24($sp)
.L00001ff8:
    bnez       $a4, .L00001f78
    move       $a0,$s0
.L00002000:
    ld         $a5,16($s0)
.L00002004:
    daddu      $a6,$s1,$a5
    lw         $a6,-19328($a6)
    beqz       $a6, .L00002478
    li         $a1,25
.L00002014:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a5)
    beqz       $v0, .L000022b0
    ld         $a5,16($s0)
    b          .L00001e58
    sw         $s7,4($sp)
.L00002030:
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    move       $a1,$s3
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00001e80
    li         $v0,1
.L00002050:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    ld         $a1,-31416($a1)
    sd         $v0,16($sp)
    beqz       $a1, .L00002290
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000231c
    nop
    ld         $a0,16($s0)
.L00002098:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00001e34
    move       $a0,$s0
.L000020a8:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a5,$a0
    b          .L00001e58
    ld         $a5,16($s0)
.L000020c0:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a2,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a2,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    move       $a1,$v0
    beqz       $a6, .L00002188
    lui        $s3,0x40
    li         $at,-3
    and        $at,$a2,$at
    sw         $at,-19664($a0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    li         $t2,-1
    ld         $at,824($at)
    ld         $t0,-30720($gp)
    dsrl32     $t2,$t2,0x0
    and        $ra,$t2,$ra
    daddu      $at,$s3,$at
    or         $ra,$t0,$ra
    sd         $ra,0($at)
    sync
    ld         $t9,16($s0)
    daddu      $t9,$s1,$t9
    lhu        $ra,-31408($t9)
    lw         $t8,-19664($t9)
    li         $at,-33
    andi       $ra,$ra,0x1
    and        $t8,$t8,$at
    sll        $ra,$ra,0x5
    or         $t8,$t8,$ra
    sw         $t8,-19664($t9)
    ld         $t1,16($s0)
    daddu      $t3,$s1,$t1
    lwu        $t3,-19664($t3)
    ld         $t1,824($t1)
    and        $t2,$t2,$t3
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L00002188:
    ld         $v1,824($a5)
    daddu      $v1,$s3,$v1
    ld         $v0,-31416($a0)
    sd         $v0,0($v1)
    sync
    beqz       $a6, .L000021e8
    li         $a2,-2
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a2,$a3
    sw         $a3,-19664($a4)
    ld         $a3,16($s0)
    daddu      $a0,$s1,$a3
    lwu        $a0,-19664($a0)
    li         $a5,-1
    ld         $a3,824($a3)
    dsrl32     $a5,$a5,0x0
    ld         $a4,-30720($gp)
    and        $a0,$a0,$a5
    daddu      $a3,$s3,$a3
    or         $a0,$a0,$a4
    sd         $a0,0($a3)
    sync
.L000021e8:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a2,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00001f34
    ld         $a0,16($s0)
.L00002230:
    ld         $a7,24($sp)
.L00002234:
    beqz       $a7, .L00001ff8
    nop
    move       $s2,$zero
.L00002240:
    move       $a0,$s0
    jal        odsy_i2c_read_denali_byte
    daddiu     $a1,$sp,8
    beqz       $v0, .L000022f8
    ld         $a7,32($sp)
    ld         $a5,16($s0)
    daddu      $t0,$s1,$a5
    lw         $t0,-19328($t0)
    bnez       $t0, .L00001e58
    sw         $s7,4($sp)
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a5,$a0
    b          .L00001e58
    ld         $a5,16($s0)
.L00002280:
    li         $v0,10
    sb         $v0,0($sp)
    b          .L00001f64
    move       $s4,$v0
.L00002290:
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    ld         $a1,16($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00001e34
    move       $a0,$s0
.L000022b0:
    ld         $a3,824($a5)
    dsll32     $a4,$s7,0x0
    ld         $a2,-30712($gp)
    dsrl32     $a4,$a4,0x0
    daddu      $a3,$s3,$a3
    and        $a4,$s5,$a4
    or         $a2,$a2,$a4
    sd         $a2,0($a3)
    sync
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    lw         $a1,-19328($a1)
    beqz       $a1, .L0000248c
    li         $s2,0x8540
    lbu        $a5,0($sp)
.L000022ec:
    move       $v0,$zero
    b          .L00001e84
    sw         $a5,0($s6)
.L000022f8:
    dsll       $t1,$s2,0x2
    addiu      $s2,$s2,1
    slti       $t0,$s2,10
    lbu        $a6,8($sp)
    daddu      $a7,$a7,$t1
    bnez       $t0, .L00002240
    sw         $a6,0($a7)
    b          .L00002004
    ld         $a5,16($s0)
.L0000231c:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a2,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a2,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L000023d8
    move       $a1,$v0
    li         $ra,-3
    and        $ra,$a2,$ra
    sw         $ra,-19664($a0)
    ld         $ra,16($s0)
    daddu      $t9,$s1,$ra
    lwu        $t9,-19664($t9)
    ld         $ra,824($ra)
    ld         $t0,-30720($gp)
    and        $t9,$s5,$t9
    daddu      $ra,$s3,$ra
    or         $t9,$t0,$t9
    sd         $t9,0($ra)
    sync
    ld         $t8,16($s0)
    daddu      $t8,$s1,$t8
    lhu        $t9,-31408($t8)
    lw         $t3,-19664($t8)
    li         $ra,-33
    andi       $t9,$t9,0x1
    and        $t3,$t3,$ra
    sll        $t9,$t9,0x5
    or         $t3,$t3,$t9
    sw         $t3,-19664($t8)
    ld         $t1,16($s0)
    daddu      $t2,$s1,$t1
    lwu        $t2,-19664($t2)
    ld         $t1,824($t1)
    and        $t2,$s5,$t2
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L000023d8:
    ld         $v0,824($a5)
    daddu      $v0,$s3,$v0
    ld         $at,-31416($a0)
    sd         $at,0($v0)
    sync
    beqz       $a6, .L00002430
    li         $a2,-2
    ld         $a3,16($s0)
    daddu      $a3,$s1,$a3
    lw         $a0,-19664($a3)
    and        $a0,$a2,$a0
    sw         $a0,-19664($a3)
    ld         $a0,16($s0)
    daddu      $v1,$s1,$a0
    lwu        $v1,-19664($v1)
    ld         $a0,824($a0)
    ld         $a3,-30720($gp)
    and        $v1,$s5,$v1
    daddu      $a0,$s3,$a0
    or         $v1,$v1,$a3
    sd         $v1,0($a0)
    sync
.L00002430:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a2,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00002098
    ld         $a0,16($s0)
.L00002478:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a5,$a0
    b          .L00002014
    ld         $a5,16($s0)
.L0000248c:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    ld         $a1,-31416($a1)
    move       $s7,$v0
    beqz       $a1, .L000024e4
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00002504
    nop
    ld         $a0,16($s0)
.L000024d4:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L000022ec
    lbu        $a5,0($sp)
.L000024e4:
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    move       $a1,$s7
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000022ec
    lbu        $a5,0($sp)
.L00002504:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a2,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a2,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L000025c0
    move       $a1,$v0
    li         $ra,-3
    and        $ra,$a2,$ra
    sw         $ra,-19664($a0)
    ld         $ra,16($s0)
    daddu      $t9,$s1,$ra
    lwu        $t9,-19664($t9)
    ld         $ra,824($ra)
    ld         $t0,-30720($gp)
    and        $t9,$s5,$t9
    daddu      $ra,$s3,$ra
    or         $t9,$t0,$t9
    sd         $t9,0($ra)
    sync
    ld         $t8,16($s0)
    daddu      $t8,$s1,$t8
    lhu        $t9,-31408($t8)
    lw         $t3,-19664($t8)
    li         $ra,-33
    andi       $t9,$t9,0x1
    and        $t3,$t3,$ra
    sll        $t9,$t9,0x5
    or         $t3,$t3,$t9
    sw         $t3,-19664($t8)
    ld         $t1,16($s0)
    daddu      $t2,$s1,$t1
    lwu        $t2,-19664($t2)
    ld         $t1,824($t1)
    and        $t2,$s5,$t2
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L000025c0:
    ld         $v0,824($a5)
    daddu      $v0,$s3,$v0
    ld         $at,-31416($a0)
    sd         $at,0($v0)
    sync
    beqz       $a6, .L00002618
    li         $a2,-2
    ld         $a3,16($s0)
    daddu      $a3,$s1,$a3
    lw         $a0,-19664($a3)
    and        $a0,$a2,$a0
    sw         $a0,-19664($a3)
    ld         $a0,16($s0)
    daddu      $v1,$s1,$a0
    lwu        $v1,-19664($v1)
    ld         $a0,824($a0)
    ld         $a3,-30720($gp)
    and        $v1,$s5,$v1
    daddu      $a0,$s3,$a0
    or         $v1,$v1,$a3
    sd         $v1,0($a0)
    sync
.L00002618:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a2,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000024d4
    ld         $a0,16($s0)

glabel odsy_i2c_write_denali_byte
    daddiu     $sp,$sp,-112
    sd         $ra,24($sp)
    sd         $s0,32($sp)
    li         $a2,1
    move       $s0,$a0
    sd         $a1,16($sp)
    li         $a1,238
    jal        odsy_i2c_start
    sb         $a1,32($a0)
    sd         $s2,40($sp)
    sd         $s6,48($sp)
    sd         $s3,56($sp)
    sd         $s8,64($sp)
    sd         $s4,72($sp)
    sd         $s1,80($sp)
    sd         $s5,88($sp)
    beqz       $v0, .L000026dc
    sd         $s7,96($sp)
    li         $v0,1
.L000026ac:
    ld         $s2,40($sp)
    ld         $s6,48($sp)
    ld         $s3,56($sp)
    ld         $s8,64($sp)
    ld         $s4,72($sp)
    ld         $s0,32($sp)
    ld         $ra,24($sp)
    ld         $s1,80($sp)
    ld         $s5,88($sp)
    ld         $s7,96($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L000026dc:
    li         $a1,20
    jal        odsy_usdelay
    ld         $a0,16($s0)
    ld         $a4,16($s0)
    lui        $s1,0x1
    daddu      $at,$s1,$a4
    lw         $at,-19328($at)
    beqz       $at, .L00002acc
    li         $s5,0x8530
    lui        $s6,0x22
.L00002704:
    lui        $s4,0x40
    li         $s2,0x8540
    li         $s3,133
    ld         $s8,-30720($gp)
    li         $s7,-1
    b          .L00002780
    dsrl32     $s7,$s7,0x0
.L00002720:
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00002970
    nop
    ld         $a0,16($s0)
.L00002748:
    jal        vsema
    daddu      $a0,$s5,$a0
    ld         $a4,16($s0)
.L00002754:
    move       $a0,$a4
.L00002758:
    jal        odsy_usdelay
    li         $a1,100
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    lw         $a1,-19328($a1)
    beqz       $a1, .L00002824
    li         $a1,25
    addiu      $s3,$s3,-1
.L00002778:
    blez       $s3, .L0000283c
    nop
.L00002780:
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    bnez       $v0, .L00002834
    nop
    lhu        $a3,26($s0)
    ld         $a2,16($s0)
    ld         $a2,824($a2)
    addu       $a3,$a3,$a3
    dsll       $a3,$a3,0x2
    daddu      $a2,$a2,$a3
    ld         $a3,8($s0)
    daddu      $a2,$s6,$a2
    lw         $a2,0($a2)
    sw         $a2,0($a3)
    ld         $a1,8($s0)
    lw         $a1,0($a1)
    sll        $a1,$a1,0x9
    bltz       $a1, .L00002858
    nop
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lw         $a3,-19328($a3)
    bnez       $a3, .L00002758
    move       $a0,$a4
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a5,$s1,$a4
    ld         $a5,-31416($a5)
    bnez       $a5, .L00002720
    sd         $v0,8($sp)
    jal        vsema
    daddu      $a0,$s5,$a4
    ld         $a0,16($s0)
    ld         $a1,8($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00002754
    ld         $a4,16($s0)
.L00002824:
    jal        psema
    daddu      $a0,$s5,$a4
    b          .L00002778
    addiu      $s3,$s3,-1
.L00002834:
    b          .L00002840
    ld         $a4,16($s0)
.L0000283c:
    ld         $a4,16($s0)
.L00002840:
    daddu      $a1,$s1,$a4
.L00002844:
    lw         $a1,-19328($a1)
    beqz       $a1, .L0000291c
    nop
.L00002850:
    b          .L000026ac
    li         $v0,1
.L00002858:
    blez       $s3, .L0000283c
    nop
    ld         $a7,0($s0)
    lw         $a6,0($a7)
    ori        $a6,$a6,0x800
    sw         $a6,0($a7)
    ld         $a4,0($s0)
    lw         $a3,0($a4)
    li         $a5,-8193
    and        $a3,$a3,$a5
    sw         $a3,0($a4)
    ld         $a3,0($s0)
    lw         $a2,0($a3)
    ori        $a2,$a2,0x200
    sw         $a2,0($a3)
    ld         $a2,0($s0)
    ld         $a1,16($sp)
    lw         $a3,0($a2)
    li         $a4,-256
    andi       $a1,$a1,0xff
    and        $a3,$a3,$a4
    or         $a1,$a1,$a3
    sw         $a1,0($a2)
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    bnez       $v0, .L00002840
    ld         $a4,16($s0)
    lhu        $t1,24($s0)
    lui        $t2,0x3000
    ld         $a7,0($s0)
    sll        $t1,$t1,0xe
    ori        $t2,$t2,0x1
    or         $t1,$t1,$t2
    lwu        $a7,0($a7)
    dsll32     $t1,$t1,0x0
    li         $t2,-1
    ld         $t0,824($a4)
    and        $a7,$s7,$a7
    dsll32     $t2,$t2,0x0
    and        $t1,$t1,$t2
    daddu      $t0,$s4,$t0
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
    li         $s3,133
    b          .L00002b40
    ld         $a4,16($s0)
.L0000291c:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $t2,$s1,$a4
    ld         $t2,-31416($t2)
    beqz       $t2, .L00002bf0
    move       $s3,$v0
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00002c10
    nop
    ld         $a0,16($s0)
.L00002960:
    jal        vsema
    daddu      $a0,$s5,$a0
    b          .L00002850
    nop
.L00002970:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00002a28
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s4,$t8
    and        $t3,$s7,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s4,$t1
    and        $t0,$s7,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00002a28:
    ld         $ra,824($a4)
    daddu      $ra,$s4,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00002a80
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s4,$v0
    and        $at,$s7,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L00002a80:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00002748
    ld         $a0,16($s0)
.L00002acc:
    li         $a1,25
    jal        psema
    daddu      $a0,$s5,$a4
    b          .L00002704
    lui        $s6,0x22
.L00002ae0:
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00002da0
    nop
    ld         $a0,16($s0)
.L00002b08:
    jal        vsema
    daddu      $a0,$s5,$a0
    ld         $a4,16($s0)
.L00002b14:
    move       $a0,$a4
.L00002b18:
    jal        odsy_usdelay
    li         $a1,100
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    lw         $a1,-19328($a1)
    beqz       $a1, .L00002be0
    li         $a1,25
.L00002b34:
    addiu      $s3,$s3,-1
    blez       $s3, .L00002844
    daddu      $a1,$s1,$a4
.L00002b40:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a4)
    bnez       $v0, .L00002d6c
    nop
    lhu        $a0,26($s0)
    ld         $v1,16($s0)
    ld         $v1,824($v1)
    addu       $a0,$a0,$a0
    dsll       $a0,$a0,0x2
    daddu      $v1,$v1,$a0
    ld         $a0,8($s0)
    daddu      $v1,$s6,$v1
    lw         $v1,0($v1)
    sw         $v1,0($a0)
    ld         $v0,8($s0)
    lw         $v0,0($v0)
    sll        $a2,$v0,0x16
    bltz       $a2, .L00002d74
    nop
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a0,-19328($a0)
    bnez       $a0, .L00002b18
    move       $a0,$a4
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    ld         $a1,-31416($a1)
    bnez       $a1, .L00002ae0
    sd         $v0,0($sp)
    jal        vsema
    daddu      $a0,$s5,$a4
    ld         $a0,16($s0)
    ld         $a1,0($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00002b14
    ld         $a4,16($s0)
.L00002be0:
    jal        psema
    daddu      $a0,$s5,$a4
    b          .L00002b34
    ld         $a4,16($s0)
.L00002bf0:
    jal        vsema
    daddu      $a0,$s5,$a4
    ld         $a0,16($s0)
    move       $a1,$s3
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00002850
    nop
.L00002c10:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00002cc8
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s4,$t8
    and        $t3,$s7,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s4,$t1
    and        $t0,$s7,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00002cc8:
    ld         $ra,824($a4)
    daddu      $ra,$s4,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00002d20
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s4,$v0
    and        $at,$s7,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L00002d20:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00002960
    ld         $a0,16($s0)
.L00002d6c:
    b          .L00002840
    ld         $a4,16($s0)
.L00002d74:
    blez       $s3, .L00002840
    ld         $a4,16($s0)
    sll        $a7,$v0,0x17
    bltz       $a7, .L00002844
    daddu      $a1,$s1,$a4
    daddu      $t0,$s1,$a4
    lw         $t0,-19328($t0)
    beqz       $t0, .L00002efc
    nop
.L00002d98:
    b          .L000026ac
    move       $v0,$zero
.L00002da0:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00002e58
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s4,$t8
    and        $t3,$s7,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s4,$t1
    and        $t0,$s7,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00002e58:
    ld         $ra,824($a4)
    daddu      $ra,$s4,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00002eb0
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s4,$v0
    and        $at,$s7,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L00002eb0:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00002b08
    ld         $a0,16($s0)
.L00002efc:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a7,$s1,$a4
    ld         $a7,-31416($a7)
    beqz       $a7, .L00002f50
    move       $s3,$v0
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00002f70
    nop
    ld         $a0,16($s0)
.L00002f40:
    jal        vsema
    daddu      $a0,$s5,$a0
    b          .L00002d98
    nop
.L00002f50:
    jal        vsema
    daddu      $a0,$s5,$a4
    ld         $a0,16($s0)
    move       $a1,$s3
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00002d98
    nop
.L00002f70:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00003028
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s4,$t8
    and        $t3,$s7,$t3
    or         $t3,$s8,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s4,$t1
    and        $t0,$s7,$t0
    or         $t0,$s8,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00003028:
    ld         $ra,824($a4)
    daddu      $ra,$s4,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00003080
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s4,$v0
    and        $at,$s7,$at
    or         $at,$s8,$at
    sd         $at,0($v0)
    sync
.L00003080:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00002f40
    ld         $a0,16($s0)

glabel odsy_i2c_write_denali
    daddiu     $sp,$sp,-112
    sd         $a1,24($sp)
    sd         $a2,32($sp)
    sd         $s4,72($sp)
    sd         $ra,80($sp)
    ld         $a5,16($a0)
    sd         $s1,48($sp)
    lui        $s1,0x1
    sd         $s3,88($sp)
    daddu      $at,$s1,$a5
    lw         $at,-19328($at)
    sd         $s2,96($sp)
    sd         $s0,40($sp)
    move       $s0,$a0
    beqz       $at, .L00003310
    sd         $s5,104($sp)
.L0000310c:
    li         $a1,14
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a5)
    beqz       $v0, .L00003170
    nop
.L00003120:
    ld         $a5,16($s0)
.L00003124:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a5)
    beqz       $v0, .L0000323c
    nop
.L00003138:
    ld         $a5,16($s0)
    daddu      $v0,$s1,$a5
    lw         $v0,-19328($v0)
    beqz       $v0, .L00003274
    li         $v0,1
.L0000314c:
    ld         $s4,72($sp)
    ld         $s3,88($sp)
    ld         $s2,96($sp)
    ld         $ra,80($sp)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    ld         $s5,104($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00003170:
    ld         $a2,16($s0)
    lui        $a0,0x23
    ld         $a2,824($a2)
    ori        $a0,$a0,0x3804
    ld         $a3,-30704($gp)
    daddu      $a0,$a0,$a2
    lw         $a0,0($a0)
    lui        $a4,0x3
    and        $a3,$a0,$a3
    or         $a3,$a3,$a4
    li         $a4,-28673
    li         $s5,-1
    and        $a3,$a3,$a4
    dsrl32     $s5,$s5,0x0
    ori        $a3,$a3,0x6000
    dsll32     $a3,$a3,0x0
    ld         $a1,-30712($gp)
    lui        $s3,0x40
    dsrl32     $a3,$a3,0x0
    daddu      $a2,$s3,$a2
    and        $a3,$s5,$a3
    or         $a1,$a1,$a3
    sd         $a1,0($a2)
    sync
    ld         $a5,16($s0)
    daddu      $v1,$s1,$a5
    lw         $v1,-19328($v1)
    sd         $a0,16($sp)
    beqz       $v1, .L000034b8
    move       $s4,$a0
.L000031e8:
    ld         $a3,32($sp)
    blez       $a3, .L000032e0
    move       $s2,$zero
    ld         $a1,24($sp)
.L000031f8:
    daddu      $a1,$s2,$a1
    move       $a0,$s0
    jal        odsy_i2c_write_denali_byte
    lbu        $a1,0($a1)
    beqz       $v0, .L000032d0
    ld         $a1,32($sp)
    ld         $a5,16($s0)
    daddu      $a2,$s1,$a5
    lw         $a2,-19328($a2)
    bnez       $a2, .L00003124
    sw         $s4,0($sp)
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a5,$a0
    b          .L00003124
    ld         $a5,16($s0)
.L0000323c:
    ld         $a4,16($s0)
    lw         $a1,0($sp)
    li         $a5,-1
    ld         $a4,824($a4)
    dsrl32     $a5,$a5,0x0
    ld         $a3,-30712($gp)
    lui        $a2,0x40
    and        $a1,$a1,$a5
    daddu      $a2,$a2,$a4
    or         $a1,$a1,$a3
    sd         $a1,0($a2)
    sync
    b          .L00003138
    nop
.L00003274:
    li         $s2,0x8540
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $a6,$s1,$a5
    ld         $a6,-31416($a6)
    move       $s3,$v0
    beqz       $a6, .L00003328
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00003348
    nop
    ld         $a0,16($s0)
.L000032c0:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L0000314c
    li         $v0,1
.L000032d0:
    addiu      $s2,$s2,1
    slt        $a1,$s2,$a1
    bnez       $a1, .L000031f8
    ld         $a1,24($sp)
.L000032e0:
    ld         $a5,16($s0)
    daddu      $a2,$s1,$a5
    lw         $a2,-19328($a2)
    beqz       $a2, .L0000355c
    li         $a1,25
.L000032f4:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a5)
    beqz       $v0, .L00003518
    ld         $a4,16($sp)
    b          .L00003120
    sw         $s4,0($sp)
.L00003310:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a5,$a0
    b          .L0000310c
    ld         $a5,16($s0)
.L00003328:
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    move       $a1,$s3
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000314c
    li         $v0,1
.L00003348:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a6,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a6,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    move       $a1,$v0
    beqz       $a2, .L00003410
    lui        $s3,0x40
    li         $t8,-3
    and        $t8,$a6,$t8
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    lwu        $t3,-19664($t3)
    li         $a7,-1
    ld         $t8,824($t8)
    ld         $a4,-30720($gp)
    dsrl32     $a7,$a7,0x0
    and        $t3,$a7,$t3
    daddu      $t8,$s3,$t8
    or         $t3,$a4,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t1,-19664($t2)
    li         $t8,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $a5,16($s0)
    daddu      $t0,$s1,$a5
    lwu        $t0,-19664($t0)
    ld         $a5,824($a5)
    and        $a7,$a7,$t0
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a7
    sd         $a4,0($a5)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L00003410:
    ld         $ra,824($a5)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a2, .L00003470
    li         $a6,-2
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $v0,-19664($v1)
    and        $v0,$a6,$v0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    lwu        $at,-19664($at)
    li         $a0,-1
    ld         $v0,824($v0)
    dsrl32     $a0,$a0,0x0
    ld         $v1,-30720($gp)
    and        $at,$at,$a0
    daddu      $v0,$s3,$v0
    or         $at,$at,$v1
    sd         $at,0($v0)
    sync
.L00003470:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a5,-19664($a7)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a6,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000032c0
    ld         $a0,16($s0)
.L000034b8:
    li         $s2,0x8540
    sd         $s4,64($sp)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $t0,$s1,$a5
    ld         $t0,-31416($t0)
    sd         $v0,8($sp)
    beqz       $t0, .L00003570
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000035e8
    nop
    ld         $a0,16($s0)
.L00003508:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L000031e8
    ld         $s4,64($sp)
.L00003518:
    ld         $a3,16($s0)
    ld         $a3,824($a3)
    dsll32     $a4,$a4,0x0
    ld         $a2,-30712($gp)
    dsrl32     $a4,$a4,0x0
    daddu      $a3,$s3,$a3
    and        $a4,$s5,$a4
    or         $a2,$a2,$a4
    sd         $a2,0($a3)
    sync
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    lw         $a1,-19328($a1)
    beqz       $a1, .L00003590
    li         $s2,0x8540
.L00003554:
    b          .L0000314c
    move       $v0,$zero
.L0000355c:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a5,$a0
    b          .L000032f4
    ld         $a5,16($s0)
.L00003570:
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    ld         $a1,8($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000031e8
    ld         $s4,64($sp)
.L00003590:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    ld         $a1,-31416($a1)
    sd         $v0,56($sp)
    beqz       $a1, .L00003744
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00003768
    nop
    ld         $a0,16($s0)
.L000035d8:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00003554
    nop
.L000035e8:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a6,-19664($a0)
    lhu        $a7,-31408($a0)
    srl        $t0,$a6,0x5
    andi       $t0,$t0,0x1
    xor        $a7,$a7,$t0
    sltu       $a7,$zero,$a7
    beqz       $a7, .L000036a4
    move       $a1,$v0
    li         $at,-3
    and        $at,$a6,$at
    sw         $at,-19664($a0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $t1,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$t1,$ra
    sd         $ra,0($at)
    sync
    ld         $t9,16($s0)
    daddu      $t9,$s1,$t9
    lhu        $ra,-31408($t9)
    lw         $t8,-19664($t9)
    li         $at,-33
    andi       $ra,$ra,0x1
    and        $t8,$t8,$at
    sll        $ra,$ra,0x5
    or         $t8,$t8,$ra
    sw         $t8,-19664($t9)
    ld         $t2,16($s0)
    daddu      $t3,$s1,$t2
    lwu        $t3,-19664($t3)
    ld         $t2,824($t2)
    and        $t3,$s5,$t3
    daddu      $t2,$s3,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L000036a4:
    ld         $v1,824($a5)
    daddu      $v1,$s3,$v1
    ld         $v0,-31416($a0)
    sd         $v0,0($v1)
    sync
    beqz       $a7, .L000036fc
    li         $a6,-2
    ld         $a3,16($s0)
    daddu      $a3,$s1,$a3
    lw         $a2,-19664($a3)
    and        $a2,$a6,$a2
    sw         $a2,-19664($a3)
    ld         $a2,16($s0)
    daddu      $a0,$s1,$a2
    lwu        $a0,-19664($a0)
    ld         $a2,824($a2)
    ld         $a3,-30720($gp)
    and        $a0,$s5,$a0
    daddu      $a2,$s3,$a2
    or         $a0,$a0,$a3
    sd         $a0,0($a2)
    sync
.L000036fc:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a5,-19664($a7)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a6,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00003508
    ld         $a0,16($s0)
.L00003744:
    ld         $s1,56($sp)
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00003554
    nop
.L00003768:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a6,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a6,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L00003824
    move       $a1,$v0
    li         $t3,-3
    and        $t3,$a6,$t3
    sw         $t3,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    lwu        $t2,-19664($t2)
    ld         $t3,824($t3)
    ld         $a4,-30720($gp)
    and        $t2,$s5,$t2
    daddu      $t3,$s3,$t3
    or         $t2,$a4,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t0,-19664($t1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $a5,16($s0)
    daddu      $a7,$s1,$a5
    lwu        $a7,-19664($a7)
    ld         $a5,824($a5)
    and        $a7,$s5,$a7
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a7
    sd         $a4,0($a5)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L00003824:
    ld         $t9,824($a5)
    daddu      $t9,$s3,$t9
    ld         $t8,-31416($a0)
    sd         $t8,0($t9)
    sync
    beqz       $a2, .L0000387c
    li         $a6,-2
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lw         $at,-19664($v0)
    and        $at,$a6,$at
    sw         $at,-19664($v0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $v0,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L0000387c:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a5,-19664($a7)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a6,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000035d8
    ld         $a0,16($s0)

glabel odsy_i2c_read_rainier_byte
    daddiu     $sp,$sp,-96
    sd         $s0,32($sp)
    move       $s0,$a0
    ld         $a0,16($a0)
    sd         $ra,24($sp)
    sd         $a1,8($sp)
    li         $a1,20
    jal        odsy_usdelay
    sd         $s1,88($sp)
    ld         $a4,16($s0)
    lui        $s1,0x1
    daddu      $at,$s1,$a4
    lw         $at,-19328($at)
    beqz       $at, .L000039b8
.L000038fc:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a4)
    ld         $a4,16($s0)
    sd         $s6,48($sp)
    sd         $s3,56($sp)
    sd         $s2,64($sp)
    sd         $s5,72($sp)
    beqz       $v0, .L000039d0
    sd         $s4,80($sp)
.L00003924:
    daddu      $v0,$s1,$a4
    lw         $v0,-19328($v0)
    beqz       $v0, .L0000395c
    li         $v0,1
.L00003934:
    ld         $s6,48($sp)
    ld         $s3,56($sp)
    ld         $s2,64($sp)
    ld         $s5,72($sp)
    ld         $ra,24($sp)
    ld         $s4,80($sp)
    ld         $s1,88($sp)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L0000395c:
    li         $s2,0x8540
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $v1,$s1,$a4
    ld         $v1,-31416($v1)
    move       $s3,$v0
    beqz       $v1, .L00003ac4
    li         $s4,0x8530
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00003ae4
    nop
    ld         $a0,16($s0)
.L000039a8:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00003934
    li         $v0,1
.L000039b8:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a4,$a0
    b          .L000038fc
    ld         $a4,16($s0)
.L000039d0:
    lhu        $t3,24($s0)
    ld         $t2,824($a4)
    addu       $t3,$t3,$t3
    dsll       $t3,$t3,0x2
    lui        $t1,0x22
    daddu      $t2,$t2,$t3
    daddu      $t1,$t1,$t2
    ld         $t2,0($s0)
    lw         $t1,0($t1)
    sw         $t1,0($t2)
    ld         $a7,0($s0)
    lw         $a6,0($a7)
    li         $t0,-4097
    and        $a6,$a6,$t0
    sw         $a6,0($a7)
    ld         $a4,0($s0)
    lw         $a3,0($a4)
    li         $a5,-257
    and        $a3,$a3,$a5
    sw         $a3,0($a4)
    ld         $a3,0($s0)
    lw         $a2,0($a3)
    ori        $a2,$a2,0x400
    sw         $a2,0($a3)
    ld         $a2,0($s0)
    lw         $a1,0($a2)
    ori        $a1,$a1,0x800
    sw         $a1,0($a2)
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    bnez       $v0, .L00003924
    ld         $a4,16($s0)
    li         $s4,0x8530
    li         $t8,133
    li         $s5,-1
    lhu        $at,24($s0)
    dsrl32     $s5,$s5,0x0
    lui        $v0,0x3000
    ld         $t9,0($s0)
    ori        $v0,$v0,0x1
    sll        $at,$at,0xe
    ld         $ra,824($a4)
    or         $at,$at,$v0
    li         $v0,-1
    lui        $s3,0x40
    lwu        $t9,0($t9)
    dsll32     $v0,$v0,0x0
    ld         $s6,-30720($gp)
    daddu      $ra,$s3,$ra
    dsll32     $at,$at,0x0
    sd         $t8,16($sp)
    and        $t9,$s5,$t9
    and        $at,$at,$v0
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
    li         $s2,0x8540
    b          .L00003cb4
    ld         $a4,16($s0)
.L00003ac4:
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    move       $a1,$s3
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00003934
    li         $v0,1
.L00003ae4:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    move       $a1,$v0
    beqz       $a6, .L00003bac
    lui        $s3,0x40
    li         $at,-3
    and        $at,$a5,$at
    sw         $at,-19664($a0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    li         $t2,-1
    ld         $at,824($at)
    ld         $t0,-30720($gp)
    dsrl32     $t2,$t2,0x0
    and        $ra,$t2,$ra
    daddu      $at,$s3,$at
    or         $ra,$t0,$ra
    sd         $ra,0($at)
    sync
    ld         $t9,16($s0)
    daddu      $t9,$s1,$t9
    lhu        $ra,-31408($t9)
    lw         $t8,-19664($t9)
    li         $at,-33
    andi       $ra,$ra,0x1
    and        $t8,$t8,$at
    sll        $ra,$ra,0x5
    or         $t8,$t8,$ra
    sw         $t8,-19664($t9)
    ld         $t1,16($s0)
    daddu      $t3,$s1,$t1
    lwu        $t3,-19664($t3)
    ld         $t1,824($t1)
    and        $t2,$t2,$t3
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00003bac:
    ld         $v1,824($a4)
    daddu      $v1,$s3,$v1
    ld         $v0,-31416($a0)
    sd         $v0,0($v1)
    sync
    beqz       $a6, .L00003c0c
    li         $a5,-2
    ld         $a3,16($s0)
    daddu      $a3,$s1,$a3
    lw         $a2,-19664($a3)
    and        $a2,$a5,$a2
    sw         $a2,-19664($a3)
    ld         $a2,16($s0)
    daddu      $a0,$s1,$a2
    lwu        $a0,-19664($a0)
    li         $a4,-1
    ld         $a2,824($a2)
    dsrl32     $a4,$a4,0x0
    ld         $a3,-30720($gp)
    and        $a0,$a0,$a4
    daddu      $a2,$s3,$a2
    or         $a0,$a0,$a3
    sd         $a0,0($a2)
    sync
.L00003c0c:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a6,-19664($a7)
    ori        $a6,$a6,0x2
    sw         $a6,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a5,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000039a8
    ld         $a0,16($s0)
.L00003c54:
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00003d98
    nop
    ld         $a0,16($s0)
.L00003c7c:
    jal        vsema
    daddu      $a0,$s4,$a0
    ld         $a4,16($s0)
.L00003c88:
    move       $a0,$a4
.L00003c8c:
    jal        odsy_usdelay
    li         $a1,200
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    lw         $a1,-19328($a1)
    beqz       $a1, .L00003d54
.L00003ca4:
    ld         $a2,16($sp)
    addiu      $a2,$a2,-1
    blez       $a2, .L00003924
    sd         $a2,16($sp)
.L00003cb4:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a4)
    bnez       $v0, .L00003d68
    lui        $v1,0x22
    lhu        $a1,26($s0)
    ld         $a0,16($s0)
    ld         $a0,824($a0)
    addu       $a1,$a1,$a1
    dsll       $a1,$a1,0x2
    daddu      $a0,$a0,$a1
    daddu      $v1,$v1,$a0
    ld         $a0,8($s0)
    lw         $v1,0($v1)
    sw         $v1,0($a0)
    ld         $v0,8($s0)
    lw         $v0,0($v0)
    sll        $a3,$v0,0x16
    bltz       $a3, .L00003d70
    ld         $a2,8($sp)
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    lw         $a1,-19328($a1)
    bnez       $a1, .L00003c8c
    move       $a0,$a4
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a2,$s1,$a4
    ld         $a2,-31416($a2)
    bnez       $a2, .L00003c54
    sd         $v0,0($sp)
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    ld         $a1,0($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00003c88
    ld         $a4,16($s0)
.L00003d54:
    li         $a1,25
    jal        psema
    daddu      $a0,$s4,$a4
    b          .L00003ca4
    ld         $a4,16($s0)
.L00003d68:
    b          .L00003924
    ld         $a4,16($s0)
.L00003d70:
    ld         $a1,16($sp)
    sb         $v0,0($a2)
    blez       $a1, .L00003924
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lw         $a3,-19328($a3)
    beqz       $a3, .L00003ef4
    nop
.L00003d90:
    b          .L00003934
    move       $v0,$zero
.L00003d98:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00003e50
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s3,$t8
    and        $t3,$s5,$t3
    or         $t3,$s6,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s3,$t1
    and        $t0,$s5,$t0
    or         $t0,$s6,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00003e50:
    ld         $ra,824($a4)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00003ea8
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s3,$v0
    and        $at,$s5,$at
    or         $at,$s6,$at
    sd         $at,0($v0)
    sync
.L00003ea8:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00003c7c
    ld         $a0,16($s0)
.L00003ef4:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a7,$s1,$a4
    ld         $a7,-31416($a7)
    beqz       $a7, .L00003f48
    sd         $v0,40($sp)
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00003f6c
    nop
    ld         $a0,16($s0)
.L00003f38:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00003d90
    nop
.L00003f48:
    ld         $s1,40($sp)
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00003d90
    nop
.L00003f6c:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00004024
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s3,$t8
    and        $t3,$s5,$t3
    or         $t3,$s6,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s3,$t1
    and        $t0,$s5,$t0
    or         $t0,$s6,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00004024:
    ld         $ra,824($a4)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L0000407c
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s3,$v0
    and        $at,$s5,$at
    or         $at,$s6,$at
    sd         $at,0($v0)
    sync
.L0000407c:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00003f38
    ld         $a0,16($s0)

glabel odsy_i2c_start
    daddiu     $sp,$sp,-128
    sd         $a1,32($sp)
    sd         $a2,24($sp)
    sd         $s4,88($sp)
    sd         $s2,96($sp)
    ld         $a5,16($a0)
    sd         $s1,48($sp)
    lui        $s1,0x1
    sd         $s3,104($sp)
    daddu      $at,$s1,$a5
    lw         $at,-19328($at)
    sd         $s5,112($sp)
    sd         $s0,40($sp)
    move       $s0,$a0
    beqz       $at, .L00004274
    sd         $ra,120($sp)
.L00004108:
    li         $a1,14
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a5)
    beqz       $v0, .L00004158
    nop
    ld         $a5,16($s0)
    daddu      $v0,$s1,$a5
    lw         $v0,-19328($v0)
    beqz       $v0, .L0000421c
    li         $s2,0x8540
    li         $v0,3
.L00004134:
    ld         $s4,88($sp)
.L00004138:
    ld         $s2,96($sp)
    ld         $s3,104($sp)
    ld         $ra,120($sp)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    ld         $s5,112($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L00004158:
    ld         $a2,0($s0)
    lw         $a1,0($a2)
    ori        $a1,$a1,0x4000
    sw         $a1,0($a2)
    lui        $s3,0x40
    ld         $a1,16($s0)
    li         $s5,-1
    lui        $a3,0x3000
    lhu        $a4,24($s0)
    dsrl32     $s5,$s5,0x0
    ori        $a3,$a3,0x1
    ld         $a0,0($s0)
    li         $a2,-1
    ld         $a1,824($a1)
    sll        $a4,$a4,0xe
    dsll32     $a2,$a2,0x0
    lwu        $a0,0($a0)
    or         $a3,$a3,$a4
    daddu      $a1,$s3,$a1
    dsll32     $a3,$a3,0x0
    and        $a0,$s5,$a0
    and        $a2,$a2,$a3
    or         $a0,$a0,$a2
    sd         $a0,0($a1)
    sync
    ld         $a5,16($s0)
    daddu      $v1,$s1,$a5
    lw         $v1,-19328($v1)
    beqz       $v1, .L00004540
    li         $s2,0x8540
.L000041d0:
    move       $a0,$a5
    jal        odsy_usdelay
    li         $a1,20
    ld         $a5,16($s0)
    daddu      $a2,$s1,$a5
    lw         $a2,-19328($a2)
    beqz       $a2, .L00004598
.L000041ec:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a5)
    beqz       $v0, .L0000428c
    nop
    ld         $a5,16($s0)
    daddu      $a3,$s1,$a5
    lw         $a3,-19328($a3)
    beqz       $a3, .L00004378
    li         $s2,0x8540
.L00004214:
    b          .L00004134
    li         $v0,3
.L0000421c:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $a4,$s1,$a5
    ld         $a4,-31416($a4)
    move       $s3,$v0
    beqz       $a4, .L00004358
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000043d0
    nop
    ld         $a0,16($s0)
.L00004264:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00004134
    li         $v0,3
.L00004274:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a5,$a0
    b          .L00004108
    ld         $a5,16($s0)
.L0000428c:
    ld         $t1,0($s0)
    lw         $t0,0($t1)
    li         $t2,-16385
    and        $t0,$t0,$t2
    sw         $t0,0($t1)
    ld         $t0,0($s0)
    lw         $a7,0($t0)
    li         $s4,-8193
    and        $a7,$s4,$a7
    sw         $a7,0($t0)
    ld         $a3,16($s0)
    lhu        $a6,24($s0)
    li         $a4,-1
    lui        $a5,0x3000
    ld         $a2,0($s0)
    ori        $a5,$a5,0x1
    ld         $a3,824($a3)
    sll        $a6,$a6,0xe
    dsll32     $a4,$a4,0x0
    lwu        $a2,0($a2)
    or         $a5,$a5,$a6
    daddu      $a3,$s3,$a3
    dsll32     $a5,$a5,0x0
    and        $a2,$s5,$a2
    and        $a4,$a4,$a5
    or         $a2,$a2,$a4
    sd         $a2,0($a3)
    sync
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    lw         $a1,-19328($a1)
    beqz       $a1, .L000048f4
    li         $s2,0x8540
.L00004310:
    move       $a0,$a5
    jal        odsy_usdelay
    li         $a1,20
    ld         $a5,16($s0)
    daddu      $t3,$s1,$a5
    lw         $t3,-19328($t3)
    beqz       $t3, .L00004950
.L0000432c:
    li         $a1,13
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a5)
    beqz       $v0, .L000045b0
    ld         $a5,16($s0)
    daddu      $t8,$s1,$a5
    lw         $t8,-19328($t8)
    beqz       $t8, .L00004720
    li         $s2,0x8540
.L00004350:
    b          .L00004134
    li         $v0,3
.L00004358:
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    move       $a1,$s3
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00004134
    li         $v0,3
.L00004378:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    ld         $a1,-31416($a1)
    sd         $v0,80($sp)
    beqz       $a1, .L000046fc
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00004778
    nop
    ld         $a0,16($s0)
.L000043c0:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00004214
    nop
.L000043d0:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a6,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a6,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    move       $a1,$v0
    beqz       $a2, .L00004498
    lui        $s3,0x40
    li         $t8,-3
    and        $t8,$a6,$t8
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    lwu        $t3,-19664($t3)
    li         $a7,-1
    ld         $t8,824($t8)
    ld         $a4,-30720($gp)
    dsrl32     $a7,$a7,0x0
    and        $t3,$a7,$t3
    daddu      $t8,$s3,$t8
    or         $t3,$a4,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t1,-19664($t2)
    li         $t8,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $a5,16($s0)
    daddu      $t0,$s1,$a5
    lwu        $t0,-19664($t0)
    ld         $a5,824($a5)
    and        $a7,$a7,$t0
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a7
    sd         $a4,0($a5)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L00004498:
    ld         $ra,824($a5)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a2, .L000044f8
    li         $a6,-2
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $v0,-19664($v1)
    and        $v0,$a6,$v0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    lwu        $at,-19664($at)
    li         $a0,-1
    ld         $v0,824($v0)
    dsrl32     $a0,$a0,0x0
    ld         $v1,-30720($gp)
    and        $at,$at,$a0
    daddu      $v0,$s3,$v0
    or         $at,$at,$v1
    sd         $at,0($v0)
    sync
.L000044f8:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a5,-19664($a7)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a6,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00004264
    ld         $a0,16($s0)
.L00004540:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $t0,$s1,$a5
    ld         $t0,-31416($t0)
    sd         $v0,16($sp)
    beqz       $t0, .L000048d4
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000049a8
    nop
    ld         $a0,16($s0)
.L00004588:
    jal        vsema
    daddu      $a0,$s4,$a0
.L00004590:
    b          .L000041d0
    ld         $a5,16($s0)
.L00004598:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a5,$a0
    b          .L000041ec
    ld         $a5,16($s0)
.L000045b0:
    lhu        $a3,24($s0)
    ld         $a2,824($a5)
    addu       $a3,$a3,$a3
    dsll       $a3,$a3,0x2
    lui        $a0,0x22
    daddu      $a2,$a2,$a3
    ld         $a3,0($s0)
    daddu      $a2,$a0,$a2
    lw         $a2,0($a2)
    sw         $a2,0($a3)
    lhu        $a2,26($s0)
    ld         $a1,16($s0)
    ld         $a1,824($a1)
    addu       $a2,$a2,$a2
    dsll       $a2,$a2,0x2
    daddu      $a1,$a1,$a2
    daddu      $a0,$a0,$a1
    ld         $a1,8($s0)
    lw         $a0,0($a0)
    sw         $a0,0($a1)
    ld         $a0,0($s0)
    ld         $v1,32($sp)
    lw         $a1,0($a0)
    li         $a2,-256
    andi       $v1,$v1,0xff
    and        $a1,$a1,$a2
    or         $v1,$v1,$a1
    sw         $v1,0($a0)
    ld         $v1,0($s0)
    lw         $v0,0($v1)
    ori        $v0,$v0,0x100
    sw         $v0,0($v1)
    ld         $v0,0($s0)
    lw         $at,0($v0)
    ori        $at,$at,0x200
    sw         $at,0($v0)
    ld         $at,0($s0)
    lw         $ra,0($at)
    ori        $ra,$ra,0x1000
    sw         $ra,0($at)
    ld         $t8,0($s0)
    lw         $t3,0($t8)
    li         $t9,-2049
    and        $t3,$t3,$t9
    sw         $t3,0($t8)
    ld         $t3,0($s0)
    lw         $t2,0($t3)
    and        $t2,$s4,$t2
    sw         $t2,0($t3)
    ld         $a6,16($s0)
    lhu        $t1,24($s0)
    li         $a7,-1
    lui        $t0,0x3000
    ld         $a5,0($s0)
    ori        $t0,$t0,0x1
    ld         $a6,824($a6)
    sll        $t1,$t1,0xe
    dsll32     $a7,$a7,0x0
    lwu        $a5,0($a5)
    or         $t0,$t0,$t1
    daddu      $a6,$s3,$a6
    dsll32     $t0,$t0,0x0
    and        $a5,$s5,$a5
    and        $a7,$a7,$t0
    or         $a5,$a5,$a7
    sd         $a5,0($a6)
    sync
    ld         $a3,0($s0)
    lw         $a2,0($a3)
    li         $a4,-257
    and        $a2,$a2,$a4
    sw         $a2,0($a3)
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    lw         $a1,-19328($a1)
    beqz       $a1, .L00004c80
    li         $s2,0x8540
.L000046e4:
    jal        odsy_i2c_xfer_done_loop
    move       $a0,$s0
    beqz       $v0, .L0000498c
    ld         $a1,24($sp)
    b          .L00004138
    ld         $s4,88($sp)
.L000046fc:
    ld         $s1,80($sp)
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00004214
    nop
.L00004720:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    ld         $a1,-31416($a1)
    sd         $v0,72($sp)
    beqz       $a1, .L00004968
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00004b04
    nop
    ld         $a0,16($s0)
.L00004768:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00004350
    nop
.L00004778:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a6,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a6,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L00004834
    move       $a1,$v0
    li         $t3,-3
    and        $t3,$a6,$t3
    sw         $t3,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    lwu        $t2,-19664($t2)
    ld         $t3,824($t3)
    ld         $a4,-30720($gp)
    and        $t2,$s5,$t2
    daddu      $t3,$s3,$t3
    or         $t2,$a4,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t0,-19664($t1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $a5,16($s0)
    daddu      $a7,$s1,$a5
    lwu        $a7,-19664($a7)
    ld         $a5,824($a5)
    and        $a7,$s5,$a7
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a7
    sd         $a4,0($a5)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L00004834:
    ld         $t9,824($a5)
    daddu      $t9,$s3,$t9
    ld         $t8,-31416($a0)
    sd         $t8,0($t9)
    sync
    beqz       $a2, .L0000488c
    li         $a6,-2
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lw         $at,-19664($v0)
    and        $at,$a6,$at
    sw         $at,-19664($v0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $v0,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L0000488c:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a5,-19664($a7)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a6,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000043c0
    ld         $a0,16($s0)
.L000048d4:
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    ld         $a1,16($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00004590
    nop
.L000048f4:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    ld         $a1,-31416($a1)
    sd         $v0,0($sp)
    beqz       $a1, .L00004c60
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00004d14
    nop
    ld         $a0,16($s0)
.L0000493c:
    jal        vsema
    daddu      $a0,$s4,$a0
    li         $s4,-8193
.L00004948:
    b          .L00004310
    ld         $a5,16($s0)
.L00004950:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a5,$a0
    b          .L0000432c
    ld         $a5,16($s0)
.L00004968:
    ld         $s1,72($sp)
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00004350
    nop
.L0000498c:
    move       $a0,$s0
    jal        odsy_i2c_recv_ack
    sltiu      $a1,$a1,1
    beqz       $v0, .L00004cd8
    nop
    b          .L00004138
    ld         $s4,88($sp)
.L000049a8:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a6,-19664($a0)
    lhu        $a7,-31408($a0)
    srl        $t0,$a6,0x5
    andi       $t0,$t0,0x1
    xor        $a7,$a7,$t0
    sltu       $a7,$zero,$a7
    beqz       $a7, .L00004a64
    move       $a1,$v0
    li         $at,-3
    and        $at,$a6,$at
    sw         $at,-19664($a0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $t1,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$t1,$ra
    sd         $ra,0($at)
    sync
    ld         $t9,16($s0)
    daddu      $t9,$s1,$t9
    lhu        $ra,-31408($t9)
    lw         $t8,-19664($t9)
    li         $at,-33
    andi       $ra,$ra,0x1
    and        $t8,$t8,$at
    sll        $ra,$ra,0x5
    or         $t8,$t8,$ra
    sw         $t8,-19664($t9)
    ld         $t2,16($s0)
    daddu      $t3,$s1,$t2
    lwu        $t3,-19664($t3)
    ld         $t2,824($t2)
    and        $t3,$s5,$t3
    daddu      $t2,$s3,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L00004a64:
    ld         $v1,824($a5)
    daddu      $v1,$s3,$v1
    ld         $v0,-31416($a0)
    sd         $v0,0($v1)
    sync
    beqz       $a7, .L00004abc
    li         $a6,-2
    ld         $a3,16($s0)
    daddu      $a3,$s1,$a3
    lw         $a2,-19664($a3)
    and        $a2,$a6,$a2
    sw         $a2,-19664($a3)
    ld         $a2,16($s0)
    daddu      $a0,$s1,$a2
    lwu        $a0,-19664($a0)
    ld         $a2,824($a2)
    ld         $a3,-30720($gp)
    and        $a0,$s5,$a0
    daddu      $a2,$s3,$a2
    or         $a0,$a0,$a3
    sd         $a0,0($a2)
    sync
.L00004abc:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a5,-19664($a7)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a6,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00004588
    ld         $a0,16($s0)
.L00004b04:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a6,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a6,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L00004bc0
    move       $a1,$v0
    li         $t3,-3
    and        $t3,$a6,$t3
    sw         $t3,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    lwu        $t2,-19664($t2)
    ld         $t3,824($t3)
    ld         $a4,-30720($gp)
    and        $t2,$s5,$t2
    daddu      $t3,$s3,$t3
    or         $t2,$a4,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t0,-19664($t1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $a5,16($s0)
    daddu      $a7,$s1,$a5
    lwu        $a7,-19664($a7)
    ld         $a5,824($a5)
    and        $a7,$s5,$a7
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a7
    sd         $a4,0($a5)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L00004bc0:
    ld         $t9,824($a5)
    daddu      $t9,$s3,$t9
    ld         $t8,-31416($a0)
    sd         $t8,0($t9)
    sync
    beqz       $a2, .L00004c18
    li         $a6,-2
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lw         $at,-19664($v0)
    and        $at,$a6,$at
    sw         $at,-19664($v0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $v0,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L00004c18:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a5,-19664($a7)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a6,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00004768
    ld         $a0,16($s0)
.L00004c60:
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    ld         $a1,0($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00004948
    li         $s4,-8193
.L00004c80:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    ld         $a1,-31416($a1)
    sd         $v0,8($sp)
    beqz       $a1, .L00004e70
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00004f2c
    nop
    ld         $a0,16($s0)
.L00004cc8:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L000046e4
    nop
.L00004cd8:
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    lw         $a1,-19328($a1)
    beqz       $a1, .L00005088
.L00004ce8:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a5)
    beqz       $v0, .L00004e90
    ld         $a5,16($s0)
    daddu      $a2,$s1,$a5
    lw         $a2,-19328($a2)
    beqz       $a2, .L00004ed4
    li         $s2,0x8540
.L00004d0c:
    b          .L00004134
    li         $v0,3
.L00004d14:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a6,-19664($a0)
    lhu        $a7,-31408($a0)
    srl        $t0,$a6,0x5
    andi       $t0,$t0,0x1
    xor        $a7,$a7,$t0
    sltu       $a7,$zero,$a7
    beqz       $a7, .L00004dd0
    move       $a1,$v0
    li         $at,-3
    and        $at,$a6,$at
    sw         $at,-19664($a0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $t1,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$t1,$ra
    sd         $ra,0($at)
    sync
    ld         $t9,16($s0)
    daddu      $t9,$s1,$t9
    lhu        $ra,-31408($t9)
    lw         $t8,-19664($t9)
    li         $at,-33
    andi       $ra,$ra,0x1
    and        $t8,$t8,$at
    sll        $ra,$ra,0x5
    or         $t8,$t8,$ra
    sw         $t8,-19664($t9)
    ld         $t2,16($s0)
    daddu      $t3,$s1,$t2
    lwu        $t3,-19664($t3)
    ld         $t2,824($t2)
    and        $t3,$s5,$t3
    daddu      $t2,$s3,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L00004dd0:
    ld         $v1,824($a5)
    daddu      $v1,$s3,$v1
    ld         $v0,-31416($a0)
    sd         $v0,0($v1)
    sync
    beqz       $a7, .L00004e28
    li         $a6,-2
    ld         $a3,16($s0)
    daddu      $a3,$s1,$a3
    lw         $a2,-19664($a3)
    and        $a2,$a6,$a2
    sw         $a2,-19664($a3)
    ld         $a2,16($s0)
    daddu      $a0,$s1,$a2
    lwu        $a0,-19664($a0)
    ld         $a2,824($a2)
    ld         $a3,-30720($gp)
    and        $a0,$s5,$a0
    daddu      $a2,$s3,$a2
    or         $a0,$a0,$a3
    sd         $a0,0($a2)
    sync
.L00004e28:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a5,-19664($a7)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a6,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000493c
    ld         $a0,16($s0)
.L00004e70:
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    ld         $a1,8($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000046e4
    nop
.L00004e90:
    lhu        $a4,26($s0)
    ld         $a3,824($a5)
    addu       $a4,$a4,$a4
    dsll       $a4,$a4,0x2
    lui        $a2,0x22
    daddu      $a3,$a3,$a4
    daddu      $a2,$a2,$a3
    ld         $a3,8($s0)
    lw         $a2,0($a2)
    sw         $a2,0($a3)
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    lw         $a1,-19328($a1)
    beqz       $a1, .L000050c4
    li         $s2,0x8540
.L00004ecc:
    b          .L00004134
    move       $v0,$zero
.L00004ed4:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $a6,$s1,$a5
    ld         $a6,-31416($a6)
    sd         $v0,64($sp)
    beqz       $a6, .L000050a0
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000511c
    nop
    ld         $a0,16($s0)
.L00004f1c:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00004d0c
    nop
.L00004f2c:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a6,-19664($a0)
    lhu        $a7,-31408($a0)
    srl        $t0,$a6,0x5
    andi       $t0,$t0,0x1
    xor        $a7,$a7,$t0
    sltu       $a7,$zero,$a7
    beqz       $a7, .L00004fe8
    move       $a1,$v0
    li         $at,-3
    and        $at,$a6,$at
    sw         $at,-19664($a0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $t1,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$t1,$ra
    sd         $ra,0($at)
    sync
    ld         $t9,16($s0)
    daddu      $t9,$s1,$t9
    lhu        $ra,-31408($t9)
    lw         $t8,-19664($t9)
    li         $at,-33
    andi       $ra,$ra,0x1
    and        $t8,$t8,$at
    sll        $ra,$ra,0x5
    or         $t8,$t8,$ra
    sw         $t8,-19664($t9)
    ld         $t2,16($s0)
    daddu      $t3,$s1,$t2
    lwu        $t3,-19664($t3)
    ld         $t2,824($t2)
    and        $t3,$s5,$t3
    daddu      $t2,$s3,$t2
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L00004fe8:
    ld         $v1,824($a5)
    daddu      $v1,$s3,$v1
    ld         $v0,-31416($a0)
    sd         $v0,0($v1)
    sync
    beqz       $a7, .L00005040
    li         $a6,-2
    ld         $a3,16($s0)
    daddu      $a3,$s1,$a3
    lw         $a2,-19664($a3)
    and        $a2,$a6,$a2
    sw         $a2,-19664($a3)
    ld         $a2,16($s0)
    daddu      $a0,$s1,$a2
    lwu        $a0,-19664($a0)
    ld         $a2,824($a2)
    ld         $a3,-30720($gp)
    and        $a0,$s5,$a0
    daddu      $a2,$s3,$a2
    or         $a0,$a0,$a3
    sd         $a0,0($a2)
    sync
.L00005040:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a5,-19664($a7)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a6,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00004cc8
    ld         $a0,16($s0)
.L00005088:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a5,$a0
    b          .L00004ce8
    ld         $a5,16($s0)
.L000050a0:
    ld         $s1,64($sp)
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00004d0c
    nop
.L000050c4:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a5
    ld         $a5,16($s0)
    daddu      $a1,$s1,$a5
    ld         $a1,-31416($a1)
    sd         $v0,56($sp)
    beqz       $a1, .L00005278
    li         $s4,0x8530
    daddu      $a0,$s2,$a5
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000529c
    nop
    ld         $a0,16($s0)
.L0000510c:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00004ecc
    nop
.L0000511c:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a6,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a6,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L000051d8
    move       $a1,$v0
    li         $t3,-3
    and        $t3,$a6,$t3
    sw         $t3,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    lwu        $t2,-19664($t2)
    ld         $t3,824($t3)
    ld         $a4,-30720($gp)
    and        $t2,$s5,$t2
    daddu      $t3,$s3,$t3
    or         $t2,$a4,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t0,-19664($t1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $a5,16($s0)
    daddu      $a7,$s1,$a5
    lwu        $a7,-19664($a7)
    ld         $a5,824($a5)
    and        $a7,$s5,$a7
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a7
    sd         $a4,0($a5)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L000051d8:
    ld         $t9,824($a5)
    daddu      $t9,$s3,$t9
    ld         $t8,-31416($a0)
    sd         $t8,0($t9)
    sync
    beqz       $a2, .L00005230
    li         $a6,-2
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lw         $at,-19664($v0)
    and        $at,$a6,$at
    sw         $at,-19664($v0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $v0,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L00005230:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a5,-19664($a7)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a6,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00004f1c
    ld         $a0,16($s0)
.L00005278:
    ld         $s1,56($sp)
    jal        vsema
    daddu      $a0,$s4,$a5
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00004ecc
    nop
.L0000529c:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
    lw         $a6,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a6,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L00005358
    move       $a1,$v0
    li         $t3,-3
    and        $t3,$a6,$t3
    sw         $t3,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    lwu        $t2,-19664($t2)
    ld         $t3,824($t3)
    ld         $a4,-30720($gp)
    and        $t2,$s5,$t2
    daddu      $t3,$s3,$t3
    or         $t2,$a4,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t0,-19664($t1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $a5,16($s0)
    daddu      $a7,$s1,$a5
    lwu        $a7,-19664($a7)
    ld         $a5,824($a5)
    and        $a7,$s5,$a7
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a7
    sd         $a4,0($a5)
    sync
    ld         $a5,16($s0)
    daddu      $a0,$s1,$a5
.L00005358:
    ld         $t9,824($a5)
    daddu      $t9,$s3,$t9
    ld         $t8,-31416($a0)
    sd         $t8,0($t9)
    sync
    beqz       $a2, .L000053b0
    li         $a6,-2
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lw         $at,-19664($v0)
    and        $at,$a6,$at
    sw         $at,-19664($v0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $v0,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L000053b0:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a5,-19664($a7)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a6,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000510c
    ld         $a0,16($s0)

glabel odsy_i2c_stop
    daddiu     $sp,$sp,-80
    sd         $s2,40($sp)
    sd         $s3,48($sp)
    ld         $a4,16($a0)
    sd         $s1,16($sp)
    lui        $s1,0x1
    sd         $ra,56($sp)
    daddu      $at,$s1,$a4
    lw         $at,-19328($at)
    sd         $s4,64($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    beqz       $at, .L000055b8
    sd         $s5,72($sp)
.L00005430:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a4)
    beqz       $v0, .L00005480
    nop
    ld         $a4,16($s0)
    daddu      $v0,$s1,$a4
    lw         $v0,-19328($v0)
    beqz       $v0, .L00005560
    li         $s2,0x8540
    li         $v0,3
.L0000545c:
    ld         $s2,40($sp)
.L00005460:
    ld         $s3,48($sp)
    ld         $s4,64($sp)
    ld         $ra,56($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    ld         $s5,72($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00005480:
    ld         $a7,0($s0)
    lw         $a6,0($a7)
    ori        $a6,$a6,0x2000
    sw         $a6,0($a7)
    ld         $a4,0($s0)
    lw         $a3,0($a4)
    li         $a5,-16385
    and        $a3,$a3,$a5
    sw         $a3,0($a4)
    ld         $a1,0($s0)
    lw         $a0,0($a1)
    li         $a2,-513
    and        $a0,$a0,$a2
    sw         $a0,0($a1)
    ld         $v0,0($s0)
    lw         $at,0($v0)
    li         $v1,-257
    and        $at,$at,$v1
    sw         $at,0($v0)
    ld         $t9,0($s0)
    lw         $t8,0($t9)
    li         $ra,-2049
    and        $t8,$t8,$ra
    sw         $t8,0($t9)
    ld         $a0,0($s0)
    li         $s5,-1
    lhu        $a2,24($s0)
    dsrl32     $s5,$s5,0x0
    lui        $a3,0x3000
    lwu        $a0,0($a0)
    sll        $a2,$a2,0xe
    ori        $a3,$a3,0x1
    ld         $a1,16($s0)
    and        $a0,$s5,$a0
    or         $a2,$a2,$a3
    dsll32     $a2,$a2,0x0
    li         $a3,-1
    ld         $a1,824($a1)
    dsll32     $a3,$a3,0x0
    lui        $s3,0x40
    and        $a2,$a2,$a3
    daddu      $a1,$s3,$a1
    or         $a0,$a0,$a2
    sd         $a0,0($a1)
    sync
    ld         $a4,16($s0)
    daddu      $v1,$s1,$a4
    lw         $v1,-19328($v1)
    beqz       $v1, .L0000579c
    li         $s2,0x8540
.L00005548:
    jal        odsy_i2c_xfer_done_loop
    move       $a0,$s0
    beqz       $v0, .L000055d0
    nop
    b          .L00005460
    ld         $s2,40($sp)
.L00005560:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a7,$s1,$a4
    ld         $a7,-31416($a7)
    move       $s3,$v0
    beqz       $a7, .L0000560c
    li         $s4,0x8530
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000562c
    nop
    ld         $a0,16($s0)
.L000055a8:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L0000545c
    li         $v0,3
.L000055b8:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a4,$a0
    b          .L00005430
    ld         $a4,16($s0)
.L000055d0:
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    lw         $a1,-19328($a1)
    beqz       $a1, .L000058cc
.L000055e0:
    li         $a1,14
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a4)
    beqz       $v0, .L000057f4
    ld         $a4,16($s0)
    daddu      $a2,$s1,$a4
    lw         $a2,-19328($a2)
    beqz       $a2, .L00005874
    li         $s2,0x8540
.L00005604:
    b          .L0000545c
    li         $v0,3
.L0000560c:
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    move       $a1,$s3
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000545c
    li         $v0,3
.L0000562c:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    move       $a1,$v0
    beqz       $a6, .L000056f4
    lui        $s3,0x40
    li         $at,-3
    and        $at,$a5,$at
    sw         $at,-19664($a0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    li         $t2,-1
    ld         $at,824($at)
    ld         $t0,-30720($gp)
    dsrl32     $t2,$t2,0x0
    and        $ra,$t2,$ra
    daddu      $at,$s3,$at
    or         $ra,$t0,$ra
    sd         $ra,0($at)
    sync
    ld         $t9,16($s0)
    daddu      $t9,$s1,$t9
    lhu        $ra,-31408($t9)
    lw         $t8,-19664($t9)
    li         $at,-33
    andi       $ra,$ra,0x1
    and        $t8,$t8,$at
    sll        $ra,$ra,0x5
    or         $t8,$t8,$ra
    sw         $t8,-19664($t9)
    ld         $t1,16($s0)
    daddu      $t3,$s1,$t1
    lwu        $t3,-19664($t3)
    ld         $t1,824($t1)
    and        $t2,$t2,$t3
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L000056f4:
    ld         $v1,824($a4)
    daddu      $v1,$s3,$v1
    ld         $v0,-31416($a0)
    sd         $v0,0($v1)
    sync
    beqz       $a6, .L00005754
    li         $a5,-2
    ld         $a3,16($s0)
    daddu      $a3,$s1,$a3
    lw         $a2,-19664($a3)
    and        $a2,$a5,$a2
    sw         $a2,-19664($a3)
    ld         $a2,16($s0)
    daddu      $a0,$s1,$a2
    lwu        $a0,-19664($a0)
    li         $a4,-1
    ld         $a2,824($a2)
    dsrl32     $a4,$a4,0x0
    ld         $a3,-30720($gp)
    and        $a0,$a0,$a4
    daddu      $a2,$s3,$a2
    or         $a0,$a0,$a3
    sd         $a0,0($a2)
    sync
.L00005754:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a6,-19664($a7)
    ori        $a6,$a6,0x2
    sw         $a6,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a5,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000055a8
    ld         $a0,16($s0)
.L0000579c:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $t0,$s1,$a4
    ld         $t0,-31416($t0)
    sd         $v0,0($sp)
    beqz       $t0, .L000058e4
    li         $s4,0x8530
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00005ae4
    nop
    ld         $a0,16($s0)
.L000057e4:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00005548
    nop
.L000057f4:
    lhu        $a5,26($s0)
    ld         $a4,824($a4)
    addu       $a5,$a5,$a5
    dsll       $a5,$a5,0x2
    lui        $a2,0x22
    daddu      $a4,$a4,$a5
    daddu      $a4,$a2,$a4
    ld         $a5,8($s0)
    lw         $a4,0($a4)
    sw         $a4,0($a5)
    ld         $a3,16($s0)
    lhu        $a4,24($s0)
    ld         $a3,824($a3)
    addu       $a4,$a4,$a4
    dsll       $a4,$a4,0x2
    daddu      $a3,$a3,$a4
    daddu      $a2,$a2,$a3
    ld         $a3,0($s0)
    lw         $a2,0($a2)
    sw         $a2,0($a3)
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    lw         $a1,-19328($a1)
    beqz       $a1, .L00005a8c
    li         $s2,0x8540
    ld         $a6,8($s0)
.L0000585c:
    lw         $a6,0($a6)
    sll        $a6,$a6,0x9
    bltz       $a6, .L00005904
    nop
    b          .L0000545c
    move       $v0,$zero
.L00005874:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a7,$s1,$a4
    ld         $a7,-31416($a7)
    sd         $v0,32($sp)
    beqz       $a7, .L0000590c
    li         $s4,0x8530
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00005930
    nop
    ld         $a0,16($s0)
.L000058bc:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00005604
    nop
.L000058cc:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a4,$a0
    b          .L000055e0
    ld         $a4,16($s0)
.L000058e4:
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    ld         $a1,0($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00005548
    nop
.L00005904:
    b          .L0000545c
    li         $v0,1
.L0000590c:
    ld         $s1,32($sp)
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00005604
    nop
.L00005930:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L000059ec
    move       $a1,$v0
    li         $ra,-3
    and        $ra,$a5,$ra
    sw         $ra,-19664($a0)
    ld         $ra,16($s0)
    daddu      $t9,$s1,$ra
    lwu        $t9,-19664($t9)
    ld         $ra,824($ra)
    ld         $t0,-30720($gp)
    and        $t9,$s5,$t9
    daddu      $ra,$s3,$ra
    or         $t9,$t0,$t9
    sd         $t9,0($ra)
    sync
    ld         $t8,16($s0)
    daddu      $t8,$s1,$t8
    lhu        $t9,-31408($t8)
    lw         $t3,-19664($t8)
    li         $ra,-33
    andi       $t9,$t9,0x1
    and        $t3,$t3,$ra
    sll        $t9,$t9,0x5
    or         $t3,$t3,$t9
    sw         $t3,-19664($t8)
    ld         $t1,16($s0)
    daddu      $t2,$s1,$t1
    lwu        $t2,-19664($t2)
    ld         $t1,824($t1)
    and        $t2,$s5,$t2
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L000059ec:
    ld         $v0,824($a4)
    daddu      $v0,$s3,$v0
    ld         $at,-31416($a0)
    sd         $at,0($v0)
    sync
    beqz       $a6, .L00005a44
    li         $a5,-2
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    lw         $a0,-19664($a2)
    and        $a0,$a5,$a0
    sw         $a0,-19664($a2)
    ld         $a0,16($s0)
    daddu      $v1,$s1,$a0
    lwu        $v1,-19664($v1)
    ld         $a0,824($a0)
    ld         $a2,-30720($gp)
    and        $v1,$s5,$v1
    daddu      $a0,$s3,$a0
    or         $v1,$v1,$a2
    sd         $v1,0($a0)
    sync
.L00005a44:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a6,-19664($a7)
    ori        $a6,$a6,0x2
    sw         $a6,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a5,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000058bc
    ld         $a0,16($s0)
.L00005a8c:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $t0,$s1,$a4
    ld         $t0,-31416($t0)
    sd         $v0,24($sp)
    beqz       $t0, .L00005c40
    li         $s4,0x8530
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00005c64
    nop
    ld         $a0,16($s0)
.L00005ad4:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L0000585c
    ld         $a6,8($s0)
.L00005ae4:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00005ba0
    move       $a1,$v0
    li         $ra,-3
    and        $ra,$a5,$ra
    sw         $ra,-19664($a0)
    ld         $ra,16($s0)
    daddu      $t9,$s1,$ra
    lwu        $t9,-19664($t9)
    ld         $ra,824($ra)
    ld         $t0,-30720($gp)
    and        $t9,$s5,$t9
    daddu      $ra,$s3,$ra
    or         $t9,$t0,$t9
    sd         $t9,0($ra)
    sync
    ld         $t8,16($s0)
    daddu      $t8,$s1,$t8
    lhu        $t9,-31408($t8)
    lw         $t3,-19664($t8)
    li         $ra,-33
    andi       $t9,$t9,0x1
    and        $t3,$t3,$ra
    sll        $t9,$t9,0x5
    or         $t3,$t3,$t9
    sw         $t3,-19664($t8)
    ld         $t1,16($s0)
    daddu      $t2,$s1,$t1
    lwu        $t2,-19664($t2)
    ld         $t1,824($t1)
    and        $t2,$s5,$t2
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00005ba0:
    ld         $v0,824($a4)
    daddu      $v0,$s3,$v0
    ld         $at,-31416($a0)
    sd         $at,0($v0)
    sync
    beqz       $a6, .L00005bf8
    li         $a5,-2
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    lw         $a0,-19664($a2)
    and        $a0,$a5,$a0
    sw         $a0,-19664($a2)
    ld         $a0,16($s0)
    daddu      $v1,$s1,$a0
    lwu        $v1,-19664($v1)
    ld         $a0,824($a0)
    ld         $a2,-30720($gp)
    and        $v1,$s5,$v1
    daddu      $a0,$s3,$a0
    or         $v1,$v1,$a2
    sd         $v1,0($a0)
    sync
.L00005bf8:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a6,-19664($a7)
    ori        $a6,$a6,0x2
    sw         $a6,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a5,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000057e4
    ld         $a0,16($s0)
.L00005c40:
    ld         $s1,24($sp)
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000585c
    ld         $a6,8($s0)
.L00005c64:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00005d20
    move       $a1,$v0
    li         $ra,-3
    and        $ra,$a5,$ra
    sw         $ra,-19664($a0)
    ld         $ra,16($s0)
    daddu      $t9,$s1,$ra
    lwu        $t9,-19664($t9)
    ld         $ra,824($ra)
    ld         $t0,-30720($gp)
    and        $t9,$s5,$t9
    daddu      $ra,$s3,$ra
    or         $t9,$t0,$t9
    sd         $t9,0($ra)
    sync
    ld         $t8,16($s0)
    daddu      $t8,$s1,$t8
    lhu        $t9,-31408($t8)
    lw         $t3,-19664($t8)
    li         $ra,-33
    andi       $t9,$t9,0x1
    and        $t3,$t3,$ra
    sll        $t9,$t9,0x5
    or         $t3,$t3,$t9
    sw         $t3,-19664($t8)
    ld         $t1,16($s0)
    daddu      $t2,$s1,$t1
    lwu        $t2,-19664($t2)
    ld         $t1,824($t1)
    and        $t2,$s5,$t2
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00005d20:
    ld         $v0,824($a4)
    daddu      $v0,$s3,$v0
    ld         $at,-31416($a0)
    sd         $at,0($v0)
    sync
    beqz       $a6, .L00005d78
    li         $a5,-2
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    lw         $a0,-19664($a2)
    and        $a0,$a5,$a0
    sw         $a0,-19664($a2)
    ld         $a0,16($s0)
    daddu      $v1,$s1,$a0
    lwu        $v1,-19664($v1)
    ld         $a0,824($a0)
    ld         $a2,-30720($gp)
    and        $v1,$s5,$v1
    daddu      $a0,$s3,$a0
    or         $v1,$v1,$a2
    sd         $v1,0($a0)
    sync
.L00005d78:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a6,-19664($a7)
    ori        $a6,$a6,0x2
    sw         $a6,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a5,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00005ad4
    ld         $a0,16($s0)

glabel odsy_i2c_sendbyte
    daddiu     $sp,$sp,-144
    sd         $a1,32($sp)
    sd         $a2,16($sp)
    sd         $ra,48($sp)
    sd         $s0,40($sp)
    move       $s0,$a0
    jal        odsy_i2c_busy_high_loop
    sd         $a3,24($sp)
    sd         $s3,96($sp)
    sd         $s4,104($sp)
    sd         $s1,112($sp)
    sd         $s5,120($sp)
    beqz       $v0, .L00005e1c
    sd         $s2,128($sp)
.L00005df8:
    ld         $s3,96($sp)
.L00005dfc:
    ld         $s4,104($sp)
    ld         $s0,40($sp)
    ld         $ra,48($sp)
    ld         $s1,112($sp)
    ld         $s5,120($sp)
    ld         $s2,128($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L00005e1c:
    ld         $a6,16($s0)
    lui        $s1,0x1
    daddu      $at,$s1,$a6
    lw         $at,-19328($at)
    beqz       $at, .L00005fc8
.L00005e30:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a6)
    beqz       $v0, .L00005e60
    nop
    ld         $a6,16($s0)
    daddu      $v0,$s1,$a6
    lw         $v0,-19328($v0)
    beqz       $v0, .L00005f70
    li         $s2,0x8540
.L00005e58:
    b          .L00005df8
    li         $v0,3
.L00005e60:
    ld         $t8,0($s0)
    lw         $t9,0($t8)
    li         $s5,-8193
    and        $s5,$s5,$t9
    sw         $s5,0($t8)
    ld         $t3,0($s0)
    lw         $s3,0($t3)
    li         $t2,-16385
    and        $t2,$t2,$s3
    sw         $t2,0($t3)
    ld         $t2,0($s0)
    lw         $t1,0($t2)
    ori        $t1,$t1,0x1000
    sw         $t1,0($t2)
    ld         $a7,0($s0)
    lw         $t0,0($a7)
    li         $a6,-257
    and        $a6,$a6,$t0
    sw         $a6,0($a7)
    ld         $a4,0($s0)
    lw         $a3,0($a4)
    li         $a5,-2049
    and        $a3,$a3,$a5
    sw         $a3,0($a4)
    ld         $a3,0($s0)
    lw         $a2,0($a3)
    ori        $a2,$a2,0x200
    sw         $a2,0($a3)
    ld         $a2,0($s0)
    ld         $a1,32($sp)
    lw         $a3,0($a2)
    li         $a4,-256
    andi       $a1,$a1,0xff
    and        $a3,$a3,$a4
    or         $a1,$a1,$a3
    sw         $a1,0($a2)
    li         $s5,-1
    ld         $a1,16($s0)
    dsrl32     $s5,$s5,0x0
    lui        $s3,0x40
    lhu        $a4,24($s0)
    li         $a2,-1
    ld         $a0,0($s0)
    lui        $a3,0x3000
    ori        $a3,$a3,0x1
    ld         $a1,824($a1)
    sll        $a4,$a4,0xe
    dsll32     $a2,$a2,0x0
    lwu        $a0,0($a0)
    or         $a3,$a3,$a4
    daddu      $a1,$s3,$a1
    dsll32     $a3,$a3,0x0
    and        $a0,$s5,$a0
    and        $a2,$a2,$a3
    or         $a0,$a0,$a2
    sd         $a0,0($a1)
    sync
    ld         $a6,16($s0)
    daddu      $v1,$s1,$a6
    lw         $v1,-19328($v1)
    beqz       $v1, .L000061b0
    li         $s2,0x8540
.L00005f58:
    jal        odsy_i2c_xfer_done_loop
    move       $a0,$s0
    beqz       $v0, .L00005fe0
    move       $s4,$v0
    b          .L00005dfc
    ld         $s3,96($sp)
.L00005f70:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $ra,$s1,$a6
    ld         $ra,-31416($ra)
    move       $s4,$v0
    beqz       $ra, .L00006020
    li         $s3,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00006040
    nop
    ld         $a0,16($s0)
.L00005fb8:
    jal        vsema
    daddu      $a0,$s3,$a0
    b          .L00005e58
    nop
.L00005fc8:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a6,$a0
    b          .L00005e30
    ld         $a6,16($s0)
.L00005fe0:
    ld         $a6,16($s0)
    daddu      $a1,$s1,$a6
    lw         $a1,-19328($a1)
    beqz       $a1, .L000063e4
    li         $a1,25
.L00005ff4:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a6)
    beqz       $v0, .L00006208
    ld         $a6,16($s0)
    daddu      $a2,$s1,$a6
    lw         $a2,-19328($a2)
    beqz       $a2, .L00006318
    li         $s2,0x8540
.L00006018:
    b          .L00005df8
    li         $v0,3
.L00006020:
    jal        vsema
    daddu      $a0,$s3,$a6
    ld         $a0,16($s0)
    move       $a1,$s4
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00005e58
    nop
.L00006040:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $a3,-31408($a0)
    srl        $a4,$a7,0x5
    andi       $a4,$a4,0x1
    xor        $a3,$a3,$a4
    sltu       $a3,$zero,$a3
    move       $a1,$v0
    beqz       $a3, .L00006108
    lui        $a2,0x40
    li         $t9,-3
    and        $t9,$a7,$t9
    sw         $t9,-19664($a0)
    ld         $t9,16($s0)
    daddu      $t8,$s1,$t9
    lwu        $t8,-19664($t8)
    li         $t0,-1
    ld         $t9,824($t9)
    ld         $a5,-30720($gp)
    dsrl32     $t0,$t0,0x0
    and        $t8,$t0,$t8
    daddu      $t9,$a2,$t9
    or         $t8,$a5,$t8
    sd         $t8,0($t9)
    sync
    ld         $t3,16($s0)
    daddu      $t3,$s1,$t3
    lhu        $t8,-31408($t3)
    lw         $t2,-19664($t3)
    li         $t9,-33
    andi       $t8,$t8,0x1
    and        $t2,$t2,$t9
    sll        $t8,$t8,0x5
    or         $t2,$t2,$t8
    sw         $t2,-19664($t3)
    ld         $a6,16($s0)
    daddu      $t1,$s1,$a6
    lwu        $t1,-19664($t1)
    ld         $a6,824($a6)
    and        $t0,$t0,$t1
    daddu      $a6,$a2,$a6
    or         $a5,$a5,$t0
    sd         $a5,0($a6)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L00006108:
    ld         $at,824($a6)
    daddu      $at,$a2,$at
    ld         $ra,-31416($a0)
    sd         $ra,0($at)
    sync
    beqz       $a3, .L00006168
    li         $a7,-2
    ld         $a0,16($s0)
    daddu      $a0,$s1,$a0
    lw         $v1,-19664($a0)
    and        $v1,$a7,$v1
    sw         $v1,-19664($a0)
    ld         $v1,16($s0)
    daddu      $v0,$s1,$v1
    lwu        $v0,-19664($v0)
    li         $a3,-1
    ld         $v1,824($v1)
    dsrl32     $a3,$a3,0x0
    ld         $a0,-30720($gp)
    and        $v0,$v0,$a3
    daddu      $v1,$a2,$v1
    or         $v0,$v0,$a0
    sd         $v0,0($v1)
    sync
.L00006168:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00005fb8
    ld         $a0,16($s0)
.L000061b0:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    ld         $a7,-31416($a7)
    sd         $v0,0($sp)
    beqz       $a7, .L000063f8
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000065f4
    nop
    ld         $a0,16($s0)
.L000061f8:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00005f58
    nop
.L00006208:
    lhu        $a4,26($s0)
    ld         $a3,824($a6)
    addu       $a4,$a4,$a4
    dsll       $a4,$a4,0x2
    lui        $a2,0x22
    daddu      $a3,$a3,$a4
    daddu      $a2,$a2,$a3
    ld         $a3,8($s0)
    lw         $a2,0($a2)
    sw         $a2,0($a3)
    ld         $a6,16($s0)
    daddu      $a1,$s1,$a6
    lw         $a1,-19328($a1)
    beqz       $a1, .L00006598
    sd         $s4,80($sp)
    ld         $a6,8($s0)
.L00006248:
    lw         $a6,0($a6)
    ld         $a5,16($sp)
    li         $v0,1
    srl        $a6,$a6,0x8
    and        $a6,$v0,$a6
    xor        $a5,$a5,$a6
    ld         $a6,24($sp)
    ld         $s2,80($sp)
    sltiu      $a5,$a5,1
    bne        $v0, $a6, .L000063dc
    movn       $s2,$v0,$a5
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    lw         $a7,-19328($a7)
    beqz       $a7, .L000067a8
    li         $a1,25
    ld         $t8,0($s0)
.L0000628c:
    lw         $t9,0($t8)
    li         $t3,-8193
    and        $t3,$t3,$t9
    sw         $t3,0($t8)
    ld         $t1,0($s0)
    lw         $t2,0($t1)
    li         $t0,-16385
    and        $t0,$t0,$t2
    sw         $t0,0($t1)
    ld         $a6,0($s0)
    lw         $a7,0($a6)
    li         $a5,-257
    and        $a5,$a5,$a7
    sw         $a5,0($a6)
    ld         $a3,0($s0)
    lw         $a2,0($a3)
    li         $a4,-513
    and        $a2,$a2,$a4
    sw         $a2,0($a3)
    ld         $a2,0($s0)
    lw         $a1,0($a2)
    ori        $a1,$a1,0x800
    sw         $a1,0($a2)
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00006370
    ld         $a6,16($s0)
    daddu      $ra,$s1,$a6
    lw         $ra,-19328($ra)
    beqz       $ra, .L00006750
    li         $s2,0x8540
.L00006310:
    b          .L00005df8
    li         $v0,3
.L00006318:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $at,$s1,$a6
    ld         $at,-31416($at)
    sd         $v0,72($sp)
    beqz       $at, .L00006418
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000643c
    nop
    ld         $a0,16($s0)
.L00006360:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00006018
    nop
.L00006370:
    lhu        $a7,24($s0)
    li         $a4,-1
    ld         $a2,0($s0)
    lui        $a5,0x3000
    ld         $a3,824($a6)
    ori        $a5,$a5,0x1
    sll        $a7,$a7,0xe
    dsll32     $a4,$a4,0x0
    lwu        $a2,0($a2)
    or         $a5,$a5,$a7
    daddu      $a3,$s3,$a3
    dsll32     $a5,$a5,0x0
    and        $a2,$s5,$a2
    and        $a4,$a4,$a5
    or         $a2,$a2,$a4
    sd         $a2,0($a3)
    sync
    ld         $a6,16($s0)
    daddu      $a1,$s1,$a6
    lw         $a1,-19328($a1)
    beqz       $a1, .L0000695c
    sd         $s2,88($sp)
    ld         $s2,88($sp)
.L000063cc:
    jal        odsy_i2c_xfer_done_loop
    move       $a0,$s0
    li         $t0,1
    movn       $s2,$t0,$v0
.L000063dc:
    b          .L00005df8
    move       $v0,$s2
.L000063e4:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a6,$a0
    b          .L00005ff4
    ld         $a6,16($s0)
.L000063f8:
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    ld         $a1,0($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00005f58
    nop
.L00006418:
    ld         $s1,72($sp)
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00006018
    nop
.L0000643c:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a7,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L000064f8
    move       $a1,$v0
    li         $t3,-3
    and        $t3,$a7,$t3
    sw         $t3,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    lwu        $t2,-19664($t2)
    ld         $t3,824($t3)
    ld         $a4,-30720($gp)
    and        $t2,$s5,$t2
    daddu      $t3,$s3,$t3
    or         $t2,$a4,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t0,-19664($t1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $a5,16($s0)
    daddu      $a6,$s1,$a5
    lwu        $a6,-19664($a6)
    ld         $a5,824($a5)
    and        $a6,$s5,$a6
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L000064f8:
    ld         $t9,824($a6)
    daddu      $t9,$s3,$t9
    ld         $t8,-31416($a0)
    sd         $t8,0($t9)
    sync
    beqz       $a2, .L00006550
    li         $a7,-2
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lw         $at,-19664($v0)
    and        $at,$a7,$at
    sw         $at,-19664($v0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $v0,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L00006550:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00006360
    ld         $a0,16($s0)
.L00006598:
    li         $s2,0x8540
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    ld         $a7,-31416($a7)
    move       $a1,$v0
    sd         $v0,8($sp)
    beqz       $a7, .L000067bc
    li         $s4,0x8530
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a6
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000069b8
    nop
    ld         $a0,16($s0)
.L000065e4:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00006248
    ld         $a6,8($s0)
.L000065f4:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $t0,-31408($a0)
    srl        $t1,$a7,0x5
    andi       $t1,$t1,0x1
    xor        $t0,$t0,$t1
    sltu       $t0,$zero,$t0
    beqz       $t0, .L000066b0
    move       $a1,$v0
    li         $v0,-3
    and        $v0,$a7,$v0
    sw         $v0,-19664($a0)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    lwu        $at,-19664($at)
    ld         $v0,824($v0)
    ld         $t2,-30720($gp)
    and        $at,$s5,$at
    daddu      $v0,$s3,$v0
    or         $at,$t2,$at
    sd         $at,0($v0)
    sync
    ld         $ra,16($s0)
    daddu      $ra,$s1,$ra
    lhu        $at,-31408($ra)
    lw         $t9,-19664($ra)
    li         $v0,-33
    andi       $at,$at,0x1
    and        $t9,$t9,$v0
    sll        $at,$at,0x5
    or         $t9,$t9,$at
    sw         $t9,-19664($ra)
    ld         $t3,16($s0)
    daddu      $t8,$s1,$t3
    lwu        $t8,-19664($t8)
    ld         $t3,824($t3)
    and        $t8,$s5,$t8
    daddu      $t3,$s3,$t3
    or         $t2,$t2,$t8
    sd         $t2,0($t3)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L000066b0:
    ld         $a2,824($a6)
    daddu      $a2,$s3,$a2
    ld         $v1,-31416($a0)
    sd         $v1,0($a2)
    sync
    beqz       $t0, .L00006708
    li         $a7,-2
    ld         $a5,16($s0)
    daddu      $a5,$s1,$a5
    lw         $a4,-19664($a5)
    and        $a4,$a7,$a4
    sw         $a4,-19664($a5)
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lwu        $a3,-19664($a3)
    ld         $a4,824($a4)
    ld         $a5,-30720($gp)
    and        $a3,$s5,$a3
    daddu      $a4,$s3,$a4
    or         $a3,$a3,$a5
    sd         $a3,0($a4)
    sync
.L00006708:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000061f8
    ld         $a0,16($s0)
.L00006750:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    ld         $a7,-31416($a7)
    sd         $v0,64($sp)
    beqz       $a7, .L000067dc
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00006800
    nop
    ld         $a0,16($s0)
.L00006798:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00006310
    nop
.L000067a8:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a6,$a0
    b          .L0000628c
    ld         $t8,0($s0)
.L000067bc:
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    ld         $a1,8($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00006248
    ld         $a6,8($s0)
.L000067dc:
    ld         $s1,64($sp)
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00006310
    nop
.L00006800:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a7,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L000068bc
    move       $a1,$v0
    li         $t3,-3
    and        $t3,$a7,$t3
    sw         $t3,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    lwu        $t2,-19664($t2)
    ld         $t3,824($t3)
    ld         $a4,-30720($gp)
    and        $t2,$s5,$t2
    daddu      $t3,$s3,$t3
    or         $t2,$a4,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t0,-19664($t1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $a5,16($s0)
    daddu      $a6,$s1,$a5
    lwu        $a6,-19664($a6)
    ld         $a5,824($a5)
    and        $a6,$s5,$a6
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L000068bc:
    ld         $t9,824($a6)
    daddu      $t9,$s3,$t9
    ld         $t8,-31416($a0)
    sd         $t8,0($t9)
    sync
    beqz       $a2, .L00006914
    li         $a7,-2
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lw         $at,-19664($v0)
    and        $at,$a7,$at
    sw         $at,-19664($v0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $v0,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L00006914:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00006798
    ld         $a0,16($s0)
.L0000695c:
    li         $s2,0x8540
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    ld         $a7,-31416($a7)
    move       $a1,$v0
    sd         $v0,56($sp)
    beqz       $a7, .L00006b14
    li         $s4,0x8530
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a6
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00006b38
    nop
    ld         $a0,16($s0)
.L000069a8:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L000063cc
    ld         $s2,88($sp)
.L000069b8:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $t0,-31408($a0)
    srl        $t1,$a7,0x5
    andi       $t1,$t1,0x1
    xor        $t0,$t0,$t1
    sltu       $t0,$zero,$t0
    beqz       $t0, .L00006a74
    move       $a1,$v0
    li         $v0,-3
    and        $v0,$a7,$v0
    sw         $v0,-19664($a0)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    lwu        $at,-19664($at)
    ld         $v0,824($v0)
    ld         $t2,-30720($gp)
    and        $at,$s5,$at
    daddu      $v0,$s3,$v0
    or         $at,$t2,$at
    sd         $at,0($v0)
    sync
    ld         $ra,16($s0)
    daddu      $ra,$s1,$ra
    lhu        $at,-31408($ra)
    lw         $t9,-19664($ra)
    li         $v0,-33
    andi       $at,$at,0x1
    and        $t9,$t9,$v0
    sll        $at,$at,0x5
    or         $t9,$t9,$at
    sw         $t9,-19664($ra)
    ld         $t3,16($s0)
    daddu      $t8,$s1,$t3
    lwu        $t8,-19664($t8)
    ld         $t3,824($t3)
    and        $t8,$s5,$t8
    daddu      $t3,$s3,$t3
    or         $t2,$t2,$t8
    sd         $t2,0($t3)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L00006a74:
    ld         $a2,824($a6)
    daddu      $a2,$s3,$a2
    ld         $v1,-31416($a0)
    sd         $v1,0($a2)
    sync
    beqz       $t0, .L00006acc
    li         $a7,-2
    ld         $a5,16($s0)
    daddu      $a5,$s1,$a5
    lw         $a4,-19664($a5)
    and        $a4,$a7,$a4
    sw         $a4,-19664($a5)
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lwu        $a3,-19664($a3)
    ld         $a4,824($a4)
    ld         $a5,-30720($gp)
    and        $a3,$s5,$a3
    daddu      $a4,$s3,$a4
    or         $a3,$a3,$a5
    sd         $a3,0($a4)
    sync
.L00006acc:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000065e4
    ld         $a0,16($s0)
.L00006b14:
    ld         $s1,56($sp)
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000063cc
    ld         $s2,88($sp)
.L00006b38:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a7,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L00006bf4
    move       $a1,$v0
    li         $t3,-3
    and        $t3,$a7,$t3
    sw         $t3,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    lwu        $t2,-19664($t2)
    ld         $t3,824($t3)
    ld         $a4,-30720($gp)
    and        $t2,$s5,$t2
    daddu      $t3,$s3,$t3
    or         $t2,$a4,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t0,-19664($t1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $a5,16($s0)
    daddu      $a6,$s1,$a5
    lwu        $a6,-19664($a6)
    ld         $a5,824($a5)
    and        $a6,$s5,$a6
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L00006bf4:
    ld         $t9,824($a6)
    daddu      $t9,$s3,$t9
    ld         $t8,-31416($a0)
    sd         $t8,0($t9)
    sync
    beqz       $a2, .L00006c4c
    li         $a7,-2
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lw         $at,-19664($v0)
    and        $at,$a7,$at
    sw         $at,-19664($v0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $v0,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L00006c4c:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000069a8
    ld         $a0,16($s0)

glabel odsy_i2c_short_recvbyte
    daddiu     $sp,$sp,-32
    sd         $a0,16($sp)
    sd         $ra,0($sp)
    jal        odsy_i2c_xfer_done_loop
    sd         $a1,8($sp)
    beqz       $v0, .L00006cb8
    ld         $ra,0($sp)
.L00006cb0:
    jr         $ra
    daddiu     $sp,$sp,32
.L00006cb8:
    ld         $a3,16($sp)
    ld         $a3,8($a3)
    lw         $a3,0($a3)
    sll        $at,$a3,0x9
    bgez       $at, .L00006cb0
    li         $v0,1
    ld         $a4,8($sp)
    move       $v0,$zero
    b          .L00006cb0
    sb         $a3,0($a4)

glabel odsy_i2c_long_recvbyte
    daddiu     $sp,$sp,-96
    sd         $a2,8($sp)
    sd         $a3,16($sp)
    sd         $s2,56($sp)
    sd         $s3,64($sp)
    sd         $ra,72($sp)
    ld         $a6,16($a0)
    sd         $s1,40($sp)
    lui        $s1,0x1
    sd         $s4,80($sp)
    daddu      $at,$s1,$a6
    lw         $at,-19328($at)
    sd         $s0,32($sp)
    move       $s0,$a0
    sd         $s6,24($sp)
    move       $s6,$a1
    beqz       $at, .L00006ef0
    sd         $s5,88($sp)
.L00006d28:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a6)
    beqz       $v0, .L00006d78
    ld         $a6,16($s0)
    daddu      $v0,$s1,$a6
    lw         $v0,-19328($v0)
    beqz       $v0, .L00006e98
    li         $s2,0x8540
    li         $v0,3
.L00006d50:
    ld         $s2,56($sp)
    ld         $s3,64($sp)
    ld         $s6,24($sp)
    ld         $s0,32($sp)
    ld         $ra,72($sp)
    ld         $s4,80($sp)
    ld         $s1,40($sp)
    ld         $s5,88($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00006d78:
    lhu        $t0,24($s0)
    ld         $a7,824($a6)
    addu       $t0,$t0,$t0
    dsll       $t0,$t0,0x2
    lui        $a5,0x22
    daddu      $a7,$a7,$t0
    daddu      $a5,$a5,$a7
    ld         $a7,0($s0)
    lw         $a5,0($a5)
    sw         $a5,0($a7)
    ld         $a3,0($s0)
    lw         $a2,0($a3)
    li         $a4,-4097
    and        $a2,$a2,$a4
    sw         $a2,0($a3)
    ld         $a0,0($s0)
    lw         $v1,0($a0)
    li         $a1,-257
    and        $v1,$v1,$a1
    sw         $v1,0($a0)
    li         $v0,1
    ld         $a0,0($s0)
    beq        $v0, $s6, .L00006f08
    lw         $a7,0($a0)
    ori        $t1,$a7,0x400
    sw         $t1,0($a0)
.L00006de0:
    lui        $s3,0x40
    ld         $t8,16($s0)
    li         $s5,-1
    li         $t9,-1
    lhu        $at,24($s0)
    dsll32     $t9,$t9,0x0
    ld         $t3,0($s0)
    lui        $ra,0x3000
    ori        $ra,$ra,0x1
    ld         $t8,824($t8)
    sll        $at,$at,0xe
    dsrl32     $s5,$s5,0x0
    lwu        $t3,0($t3)
    or         $ra,$ra,$at
    daddu      $t8,$s3,$t8
    dsll32     $ra,$ra,0x0
    and        $t3,$s5,$t3
    and        $t9,$t9,$ra
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
    ld         $a6,16($s0)
    daddu      $t2,$s1,$a6
    lw         $t2,-19328($t2)
    beqz       $t2, .L00007184
    li         $s2,0x8540
    move       $a0,$s0
.L00006e4c:
    jal        odsy_i2c_short_recvbyte
    ld         $a1,16($sp)
    ld         $a6,16($s0)
    daddu      $t8,$s1,$a6
    lw         $t8,-19328($t8)
    beqz       $t8, .L000071dc
    move       $s2,$v0
.L00006e68:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a6)
    beqz       $v0, .L00006f18
    ld         $a3,8($sp)
    ld         $a6,16($s0)
    daddu      $t9,$s1,$a6
    lw         $t9,-19328($t9)
    beqz       $t9, .L00006fbc
    li         $s2,0x8540
.L00006e90:
    b          .L00006d50
    li         $v0,3
.L00006e98:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $ra,$s1,$a6
    ld         $ra,-31416($ra)
    move       $s3,$v0
    beqz       $ra, .L00006f9c
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00007014
    nop
    ld         $a0,16($s0)
.L00006ee0:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00006d50
    li         $v0,3
.L00006ef0:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a6,$a0
    b          .L00006d28
    ld         $a6,16($s0)
.L00006f08:
    li         $a1,-1025
    and        $a1,$a7,$a1
    b          .L00006de0
    sw         $a1,0($a0)
.L00006f18:
    ld         $a0,0($s0)
    li         $a2,1
    beq        $a2, $a3, .L000071f4
    lw         $a7,0($a0)
    li         $a4,-2049
    and        $a4,$a7,$a4
    beqz       $s6, .L00007200
    sw         $a4,0($a0)
.L00006f38:
    ld         $a7,16($s0)
    lhu        $t2,24($s0)
    li         $t0,-1
    ld         $a6,0($s0)
    lui        $t1,0x3000
    ori        $t1,$t1,0x1
    ld         $a7,824($a7)
    sll        $t2,$t2,0xe
    dsll32     $t0,$t0,0x0
    lwu        $a6,0($a6)
    or         $t1,$t1,$t2
    daddu      $a7,$s3,$a7
    dsll32     $t1,$t1,0x0
    and        $a6,$s5,$a6
    and        $t0,$t0,$t1
    or         $a6,$a6,$t0
    sd         $a6,0($a7)
    sync
    ld         $a6,16($s0)
    daddu      $a5,$s1,$a6
    lw         $a5,-19328($a5)
    beqz       $a5, .L00007218
    sd         $s2,48($sp)
.L00006f94:
    b          .L00006d50
    ld         $v0,48($sp)
.L00006f9c:
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    move       $a1,$s3
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00006d50
    li         $v0,3
.L00006fbc:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a1,$s1,$a6
    ld         $a1,-31416($a1)
    move       $s6,$v0
    beqz       $a1, .L00007274
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00007294
    nop
    ld         $a0,16($s0)
.L00007004:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00006e90
    nop
.L00007014:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a7,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    move       $a1,$v0
    beqz       $a2, .L000070dc
    lui        $s3,0x40
    li         $t8,-3
    and        $t8,$a7,$t8
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    lwu        $t3,-19664($t3)
    li         $a6,-1
    ld         $t8,824($t8)
    ld         $a4,-30720($gp)
    dsrl32     $a6,$a6,0x0
    and        $t3,$a6,$t3
    daddu      $t8,$s3,$t8
    or         $t3,$a4,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t1,-19664($t2)
    li         $t8,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $a5,16($s0)
    daddu      $t0,$s1,$a5
    lwu        $t0,-19664($t0)
    ld         $a5,824($a5)
    and        $a6,$a6,$t0
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L000070dc:
    ld         $ra,824($a6)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a2, .L0000713c
    li         $a7,-2
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $v0,-19664($v1)
    and        $v0,$a7,$v0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    lwu        $at,-19664($at)
    li         $a0,-1
    ld         $v0,824($v0)
    dsrl32     $a0,$a0,0x0
    ld         $v1,-30720($gp)
    and        $at,$at,$a0
    daddu      $v0,$s3,$v0
    or         $at,$at,$v1
    sd         $at,0($v0)
    sync
.L0000713c:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00006ee0
    ld         $a0,16($s0)
.L00007184:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    ld         $a7,-31416($a7)
    sd         $v0,0($sp)
    beqz       $a7, .L000073f0
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00007430
    nop
    ld         $a0,16($s0)
.L000071cc:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00006e4c
    move       $a0,$s0
.L000071dc:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a6,$a0
    b          .L00006e68
    ld         $a6,16($s0)
.L000071f4:
    ori        $a1,$a7,0x800
    bnez       $s6, .L00006f38
    sw         $a1,0($a0)
.L00007200:
    ld         $a3,0($s0)
    lw         $a2,0($a3)
    li         $a4,-1025
    and        $a2,$a2,$a4
    b          .L00006f38
    sw         $a2,0($a3)
.L00007218:
    li         $s2,0x8540
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a5,$s1,$a6
    ld         $a5,-31416($a5)
    move       $s6,$v0
    beqz       $a5, .L00007410
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000758c
    nop
    ld         $a0,16($s0)
.L00007264:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00006f94
    nop
.L00007274:
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    move       $a1,$s6
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00006e90
    nop
.L00007294:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a7,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L00007350
    move       $a1,$v0
    li         $t3,-3
    and        $t3,$a7,$t3
    sw         $t3,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    lwu        $t2,-19664($t2)
    ld         $t3,824($t3)
    ld         $a4,-30720($gp)
    and        $t2,$s5,$t2
    daddu      $t3,$s3,$t3
    or         $t2,$a4,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t0,-19664($t1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $a5,16($s0)
    daddu      $a6,$s1,$a5
    lwu        $a6,-19664($a6)
    ld         $a5,824($a5)
    and        $a6,$s5,$a6
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L00007350:
    ld         $t9,824($a6)
    daddu      $t9,$s3,$t9
    ld         $t8,-31416($a0)
    sd         $t8,0($t9)
    sync
    beqz       $a2, .L000073a8
    li         $a7,-2
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lw         $at,-19664($v0)
    and        $at,$a7,$at
    sw         $at,-19664($v0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $v0,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L000073a8:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00007004
    ld         $a0,16($s0)
.L000073f0:
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    ld         $a1,0($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00006e4c
    move       $a0,$s0
.L00007410:
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    move       $a1,$s6
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00006f94
    nop
.L00007430:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $t0,-31408($a0)
    srl        $t1,$a7,0x5
    andi       $t1,$t1,0x1
    xor        $t0,$t0,$t1
    sltu       $t0,$zero,$t0
    beqz       $t0, .L000074ec
    move       $a1,$v0
    li         $v0,-3
    and        $v0,$a7,$v0
    sw         $v0,-19664($a0)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    lwu        $at,-19664($at)
    ld         $v0,824($v0)
    ld         $t2,-30720($gp)
    and        $at,$s5,$at
    daddu      $v0,$s3,$v0
    or         $at,$t2,$at
    sd         $at,0($v0)
    sync
    ld         $ra,16($s0)
    daddu      $ra,$s1,$ra
    lhu        $at,-31408($ra)
    lw         $t9,-19664($ra)
    li         $v0,-33
    andi       $at,$at,0x1
    and        $t9,$t9,$v0
    sll        $at,$at,0x5
    or         $t9,$t9,$at
    sw         $t9,-19664($ra)
    ld         $t3,16($s0)
    daddu      $t8,$s1,$t3
    lwu        $t8,-19664($t8)
    ld         $t3,824($t3)
    and        $t8,$s5,$t8
    daddu      $t3,$s3,$t3
    or         $t2,$t2,$t8
    sd         $t2,0($t3)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L000074ec:
    ld         $a2,824($a6)
    daddu      $a2,$s3,$a2
    ld         $v1,-31416($a0)
    sd         $v1,0($a2)
    sync
    beqz       $t0, .L00007544
    li         $a7,-2
    ld         $a5,16($s0)
    daddu      $a5,$s1,$a5
    lw         $a4,-19664($a5)
    and        $a4,$a7,$a4
    sw         $a4,-19664($a5)
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lwu        $a3,-19664($a3)
    ld         $a4,824($a4)
    ld         $a5,-30720($gp)
    and        $a3,$s5,$a3
    daddu      $a4,$s3,$a4
    or         $a3,$a3,$a5
    sd         $a3,0($a4)
    sync
.L00007544:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000071cc
    ld         $a0,16($s0)
.L0000758c:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a7,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L00007648
    move       $a1,$v0
    li         $t3,-3
    and        $t3,$a7,$t3
    sw         $t3,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    lwu        $t2,-19664($t2)
    ld         $t3,824($t3)
    ld         $a4,-30720($gp)
    and        $t2,$s5,$t2
    daddu      $t3,$s3,$t3
    or         $t2,$a4,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t0,-19664($t1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $a5,16($s0)
    daddu      $a6,$s1,$a5
    lwu        $a6,-19664($a6)
    ld         $a5,824($a5)
    and        $a6,$s5,$a6
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L00007648:
    ld         $t9,824($a6)
    daddu      $t9,$s3,$t9
    ld         $t8,-31416($a0)
    sd         $t8,0($t9)
    sync
    beqz       $a2, .L000076a0
    li         $a7,-2
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lw         $at,-19664($v0)
    and        $at,$a7,$at
    sw         $at,-19664($v0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $v0,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L000076a0:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00007264
    ld         $a0,16($s0)

glabel odsy_i2c_recv_1byte
    daddiu     $sp,$sp,-112
    sd         $a1,16($sp)
    sd         $a2,24($sp)
    sd         $a3,8($sp)
    sd         $s3,64($sp)
    ld         $a6,16($a0)
    sd         $s1,40($sp)
    lui        $s1,0x1
    sd         $s2,72($sp)
    daddu      $at,$s1,$a6
    lw         $at,-19328($at)
    sd         $s4,80($sp)
    sd         $s0,32($sp)
    move       $s0,$a0
    beqz       $at, .L00007884
    sd         $ra,88($sp)
.L00007728:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a6)
    beqz       $v0, .L0000776c
    ld         $a6,16($s0)
    daddu      $v0,$s1,$a6
    lw         $v0,-19328($v0)
    beqz       $v0, .L00007828
    li         $v0,3
.L0000774c:
    ld         $s3,64($sp)
    ld         $s2,72($sp)
    ld         $ra,88($sp)
    ld         $s4,80($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L0000776c:
    lhu        $t1,24($s0)
    ld         $t0,824($a6)
    addu       $t1,$t1,$t1
    dsll       $t1,$t1,0x2
    lui        $a7,0x22
    daddu      $t0,$t0,$t1
    daddu      $a7,$a7,$t0
    ld         $t0,0($s0)
    lw         $a7,0($a7)
    sw         $a7,0($t0)
    ld         $a4,0($s0)
    lw         $a3,0($a4)
    li         $a5,-4097
    and        $a3,$a3,$a5
    sw         $a3,0($a4)
    ld         $a1,0($s0)
    lw         $a0,0($a1)
    ld         $v1,16($sp)
    li         $a2,-257
    and        $a0,$a0,$a2
    sw         $a0,0($a1)
    li         $s2,1
    ld         $v0,0($s0)
    beq        $s2, $v1, .L0000789c
    lw         $a0,0($v0)
    ori        $t2,$a0,0x400
    sw         $t2,0($v0)
.L000077d8:
    ld         $t3,24($sp)
    ld         $v0,0($s0)
    beq        $s2, $t3, .L000078ac
    lw         $a0,0($v0)
    li         $t8,-2049
    and        $t8,$a0,$t8
    sw         $t8,0($v0)
.L000077f4:
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    ld         $a6,16($s0)
    beqz       $v0, .L000078b8
    sd         $s5,96($sp)
    daddu      $a1,$s1,$a6
    lw         $a1,-19328($a1)
    beqz       $a1, .L00007954
    li         $s2,0x8540
.L00007820:
    b          .L0000774c
    li         $v0,3
.L00007828:
    li         $s2,0x8540
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a2,$s1,$a6
    ld         $a2,-31416($a2)
    move       $s4,$v0
    beqz       $a2, .L00007934
    li         $s3,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000079ac
    nop
    ld         $a0,16($s0)
.L00007874:
    jal        vsema
    daddu      $a0,$s3,$a0
    b          .L0000774c
    li         $v0,3
.L00007884:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a6,$a0
    b          .L00007728
    ld         $a6,16($s0)
.L0000789c:
    li         $a1,-1025
    and        $a1,$a0,$a1
    b          .L000077d8
    sw         $a1,0($v0)
.L000078ac:
    ori        $a2,$a0,0x800
    b          .L000077f4
    sw         $a2,0($v0)
.L000078b8:
    lui        $s3,0x40
    li         $s5,-1
    li         $a7,-1
    lhu        $t1,24($s0)
    dsll32     $a7,$a7,0x0
    ld         $a4,0($s0)
    lui        $t0,0x3000
    ld         $a5,824($a6)
    ori        $t0,$t0,0x1
    sll        $t1,$t1,0xe
    dsrl32     $s5,$s5,0x0
    lwu        $a4,0($a4)
    or         $t0,$t0,$t1
    daddu      $a5,$s3,$a5
    dsll32     $a6,$t0,0x0
    and        $a4,$s5,$a4
    and        $a6,$a7,$a6
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    ld         $a6,16($s0)
    daddu      $a3,$s1,$a6
    lw         $a3,-19328($a3)
    beqz       $a3, .L00007d18
    li         $s2,0x8540
.L0000791c:
    jal        odsy_i2c_xfer_done_loop
    move       $a0,$s0
    beqz       $v0, .L00007b1c
    ld         $t0,24($sp)
    b          .L0000774c
    ld         $s5,96($sp)
.L00007934:
    jal        vsema
    daddu      $a0,$s3,$a6
    ld         $a0,16($s0)
    move       $a1,$s4
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000774c
    li         $v0,3
.L00007954:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a1,$s1,$a6
    ld         $a1,-31416($a1)
    move       $s3,$v0
    beqz       $a1, .L00007b88
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00007ba8
    nop
    ld         $a0,16($s0)
.L0000799c:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00007820
    nop
.L000079ac:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $a3,-31408($a0)
    srl        $a4,$a7,0x5
    andi       $a4,$a4,0x1
    xor        $a3,$a3,$a4
    sltu       $a3,$zero,$a3
    move       $a1,$v0
    beqz       $a3, .L00007a74
    lui        $a2,0x40
    li         $t9,-3
    and        $t9,$a7,$t9
    sw         $t9,-19664($a0)
    ld         $t9,16($s0)
    daddu      $t8,$s1,$t9
    lwu        $t8,-19664($t8)
    li         $t0,-1
    ld         $t9,824($t9)
    ld         $a5,-30720($gp)
    dsrl32     $t0,$t0,0x0
    and        $t8,$t0,$t8
    daddu      $t9,$a2,$t9
    or         $t8,$a5,$t8
    sd         $t8,0($t9)
    sync
    ld         $t3,16($s0)
    daddu      $t3,$s1,$t3
    lhu        $t8,-31408($t3)
    lw         $t2,-19664($t3)
    li         $t9,-33
    andi       $t8,$t8,0x1
    and        $t2,$t2,$t9
    sll        $t8,$t8,0x5
    or         $t2,$t2,$t8
    sw         $t2,-19664($t3)
    ld         $a6,16($s0)
    daddu      $t1,$s1,$a6
    lwu        $t1,-19664($t1)
    ld         $a6,824($a6)
    and        $t0,$t0,$t1
    daddu      $a6,$a2,$a6
    or         $a5,$a5,$t0
    sd         $a5,0($a6)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L00007a74:
    ld         $at,824($a6)
    daddu      $at,$a2,$at
    ld         $ra,-31416($a0)
    sd         $ra,0($at)
    sync
    beqz       $a3, .L00007ad4
    li         $a7,-2
    ld         $a0,16($s0)
    daddu      $a0,$s1,$a0
    lw         $v1,-19664($a0)
    and        $v1,$a7,$v1
    sw         $v1,-19664($a0)
    ld         $v1,16($s0)
    daddu      $v0,$s1,$v1
    lwu        $v0,-19664($v0)
    li         $a3,-1
    ld         $v1,824($v1)
    dsrl32     $a3,$a3,0x0
    ld         $a0,-30720($gp)
    and        $v0,$v0,$a3
    daddu      $v1,$a2,$v1
    or         $v0,$v0,$a0
    sd         $v0,0($v1)
    sync
.L00007ad4:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00007874
    ld         $a0,16($s0)
.L00007b1c:
    ld         $t1,8($s0)
    ld         $t2,8($sp)
    lw         $t1,0($t1)
    sb         $t1,0($t2)
    li         $a7,1
    ld         $v0,0($s0)
    beq        $a7, $t0, .L00007d70
    lw         $a0,0($v0)
    ori        $t2,$a0,0x200
    sw         $t2,0($v0)
.L00007b44:
    ld         $a6,16($s0)
    daddu      $t3,$s1,$a6
    lw         $t3,-19328($t3)
    beqz       $t3, .L00007e3c
    li         $a1,25
.L00007b58:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a6)
    beqz       $v0, .L00007d80
    ld         $a6,16($s0)
    daddu      $t8,$s1,$a6
    lw         $t8,-19328($t8)
    beqz       $t8, .L00007de4
    li         $s2,0x8540
    ld         $s5,96($sp)
.L00007b80:
    b          .L0000774c
    li         $v0,3
.L00007b88:
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    move       $a1,$s3
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00007820
    nop
.L00007ba8:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $a3,-31408($a0)
    srl        $a4,$a7,0x5
    andi       $a4,$a4,0x1
    xor        $a3,$a3,$a4
    sltu       $a3,$zero,$a3
    move       $a1,$v0
    beqz       $a3, .L00007c70
    lui        $a2,0x40
    li         $t9,-3
    and        $t9,$a7,$t9
    sw         $t9,-19664($a0)
    ld         $t9,16($s0)
    daddu      $t8,$s1,$t9
    lwu        $t8,-19664($t8)
    li         $t0,-1
    ld         $t9,824($t9)
    ld         $a5,-30720($gp)
    dsrl32     $t0,$t0,0x0
    and        $t8,$t0,$t8
    daddu      $t9,$a2,$t9
    or         $t8,$a5,$t8
    sd         $t8,0($t9)
    sync
    ld         $t3,16($s0)
    daddu      $t3,$s1,$t3
    lhu        $t8,-31408($t3)
    lw         $t2,-19664($t3)
    li         $t9,-33
    andi       $t8,$t8,0x1
    and        $t2,$t2,$t9
    sll        $t8,$t8,0x5
    or         $t2,$t2,$t8
    sw         $t2,-19664($t3)
    ld         $a6,16($s0)
    daddu      $t1,$s1,$a6
    lwu        $t1,-19664($t1)
    ld         $a6,824($a6)
    and        $t0,$t0,$t1
    daddu      $a6,$a2,$a6
    or         $a5,$a5,$t0
    sd         $a5,0($a6)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L00007c70:
    ld         $at,824($a6)
    daddu      $at,$a2,$at
    ld         $ra,-31416($a0)
    sd         $ra,0($at)
    sync
    beqz       $a3, .L00007cd0
    li         $a7,-2
    ld         $a0,16($s0)
    daddu      $a0,$s1,$a0
    lw         $v1,-19664($a0)
    and        $v1,$a7,$v1
    sw         $v1,-19664($a0)
    ld         $v1,16($s0)
    daddu      $v0,$s1,$v1
    lwu        $v0,-19664($v0)
    li         $a3,-1
    ld         $v1,824($v1)
    dsrl32     $a3,$a3,0x0
    ld         $a0,-30720($gp)
    and        $v0,$v0,$a3
    daddu      $v1,$a2,$v1
    or         $v0,$v0,$a0
    sd         $v0,0($v1)
    sync
.L00007cd0:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000799c
    ld         $a0,16($s0)
.L00007d18:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    ld         $a7,-31416($a7)
    sd         $v0,0($sp)
    beqz       $a7, .L00007e50
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00008048
    nop
    ld         $a0,16($s0)
.L00007d60:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L0000791c
    nop
.L00007d70:
    li         $a1,-513
    and        $a1,$a0,$a1
    b          .L00007b44
    sw         $a1,0($v0)
.L00007d80:
    lhu        $t0,24($s0)
    li         $a5,-1
    ld         $a3,0($s0)
    lui        $a7,0x3000
    ld         $a4,824($a6)
    ori        $a7,$a7,0x1
    sll        $t0,$t0,0xe
    dsll32     $a5,$a5,0x0
    lwu        $a3,0($a3)
    or         $a7,$a7,$t0
    daddu      $a4,$s3,$a4
    dsll32     $a6,$a7,0x0
    and        $a3,$s5,$a3
    and        $a5,$a5,$a6
    or         $a3,$a3,$a5
    sd         $a3,0($a4)
    sync
    ld         $a6,16($s0)
    daddu      $a2,$s1,$a6
    lw         $a2,-19328($a2)
    beqz       $a2, .L00007e94
    li         $s2,0x8540
    ld         $s5,96($sp)
.L00007ddc:
    b          .L0000774c
    move       $v0,$zero
.L00007de4:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $t1,$s1,$a6
    ld         $t1,-31416($t1)
    sd         $v0,56($sp)
    beqz       $t1, .L00007e70
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00007eec
    nop
    ld         $a0,16($s0)
.L00007e2c:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00007b80
    ld         $s5,96($sp)
.L00007e3c:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a6,$a0
    b          .L00007b58
    ld         $a6,16($s0)
.L00007e50:
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    ld         $a1,0($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000791c
    nop
.L00007e70:
    ld         $s1,56($sp)
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00007b80
    ld         $s5,96($sp)
.L00007e94:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a1,$s1,$a6
    ld         $a1,-31416($a1)
    sd         $v0,48($sp)
    beqz       $a1, .L000081a4
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L000081c8
    nop
    ld         $a0,16($s0)
.L00007edc:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00007ddc
    ld         $s5,96($sp)
.L00007eec:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a7,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L00007fa8
    move       $a1,$v0
    li         $t3,-3
    and        $t3,$a7,$t3
    sw         $t3,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    lwu        $t2,-19664($t2)
    ld         $t3,824($t3)
    ld         $a4,-30720($gp)
    and        $t2,$s5,$t2
    daddu      $t3,$s3,$t3
    or         $t2,$a4,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t0,-19664($t1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $a5,16($s0)
    daddu      $a6,$s1,$a5
    lwu        $a6,-19664($a6)
    ld         $a5,824($a5)
    and        $a6,$s5,$a6
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L00007fa8:
    ld         $t9,824($a6)
    daddu      $t9,$s3,$t9
    ld         $t8,-31416($a0)
    sd         $t8,0($t9)
    sync
    beqz       $a2, .L00008000
    li         $a7,-2
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lw         $at,-19664($v0)
    and        $at,$a7,$at
    sw         $at,-19664($v0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $v0,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L00008000:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00007e2c
    ld         $a0,16($s0)
.L00008048:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $t0,-31408($a0)
    srl        $t1,$a7,0x5
    andi       $t1,$t1,0x1
    xor        $t0,$t0,$t1
    sltu       $t0,$zero,$t0
    beqz       $t0, .L00008104
    move       $a1,$v0
    li         $v0,-3
    and        $v0,$a7,$v0
    sw         $v0,-19664($a0)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    lwu        $at,-19664($at)
    ld         $v0,824($v0)
    ld         $t2,-30720($gp)
    and        $at,$s5,$at
    daddu      $v0,$s3,$v0
    or         $at,$t2,$at
    sd         $at,0($v0)
    sync
    ld         $ra,16($s0)
    daddu      $ra,$s1,$ra
    lhu        $at,-31408($ra)
    lw         $t9,-19664($ra)
    li         $v0,-33
    andi       $at,$at,0x1
    and        $t9,$t9,$v0
    sll        $at,$at,0x5
    or         $t9,$t9,$at
    sw         $t9,-19664($ra)
    ld         $t3,16($s0)
    daddu      $t8,$s1,$t3
    lwu        $t8,-19664($t8)
    ld         $t3,824($t3)
    and        $t8,$s5,$t8
    daddu      $t3,$s3,$t3
    or         $t2,$t2,$t8
    sd         $t2,0($t3)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L00008104:
    ld         $a2,824($a6)
    daddu      $a2,$s3,$a2
    ld         $v1,-31416($a0)
    sd         $v1,0($a2)
    sync
    beqz       $t0, .L0000815c
    li         $a7,-2
    ld         $a5,16($s0)
    daddu      $a5,$s1,$a5
    lw         $a4,-19664($a5)
    and        $a4,$a7,$a4
    sw         $a4,-19664($a5)
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lwu        $a3,-19664($a3)
    ld         $a4,824($a4)
    ld         $a5,-30720($gp)
    and        $a3,$s5,$a3
    daddu      $a4,$s3,$a4
    or         $a3,$a3,$a5
    sd         $a3,0($a4)
    sync
.L0000815c:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00007d60
    ld         $a0,16($s0)
.L000081a4:
    ld         $s1,48($sp)
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00007ddc
    ld         $s5,96($sp)
.L000081c8:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $a7,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$a7,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L00008284
    move       $a1,$v0
    li         $t3,-3
    and        $t3,$a7,$t3
    sw         $t3,-19664($a0)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    lwu        $t2,-19664($t2)
    ld         $t3,824($t3)
    ld         $a4,-30720($gp)
    and        $t2,$s5,$t2
    daddu      $t3,$s3,$t3
    or         $t2,$a4,$t2
    sd         $t2,0($t3)
    sync
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lhu        $t2,-31408($t1)
    lw         $t0,-19664($t1)
    li         $t3,-33
    andi       $t2,$t2,0x1
    and        $t0,$t0,$t3
    sll        $t2,$t2,0x5
    or         $t0,$t0,$t2
    sw         $t0,-19664($t1)
    ld         $a5,16($s0)
    daddu      $a6,$s1,$a5
    lwu        $a6,-19664($a6)
    ld         $a5,824($a5)
    and        $a6,$s5,$a6
    daddu      $a5,$s3,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L00008284:
    ld         $t9,824($a6)
    daddu      $t9,$s3,$t9
    ld         $t8,-31416($a0)
    sd         $t8,0($t9)
    sync
    beqz       $a2, .L000082dc
    li         $a7,-2
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lw         $at,-19664($v0)
    and        $at,$a7,$at
    sw         $at,-19664($v0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    ld         $at,824($at)
    ld         $v0,-30720($gp)
    and        $ra,$s5,$ra
    daddu      $at,$s3,$at
    or         $ra,$ra,$v0
    sd         $ra,0($at)
    sync
.L000082dc:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a7,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00007edc
    ld         $a0,16($s0)

glabel odsy_i2c_becomeSlaveRecv
    daddiu     $sp,$sp,-96
    sd         $a1,8($sp)
    sd         $a2,24($sp)
    sd         $ra,40($sp)
    sd         $s0,32($sp)
    move       $s0,$a0
    jal        odsy_i2c_busy_high_loop
    sd         $a3,16($sp)
    sd         $s2,56($sp)
    sd         $s3,64($sp)
    sd         $s1,72($sp)
    beqz       $v0, .L00008378
    sd         $s4,80($sp)
.L00008358:
    ld         $s2,56($sp)
.L0000835c:
    ld         $s3,64($sp)
    ld         $ra,40($sp)
    ld         $s0,32($sp)
    ld         $s1,72($sp)
    ld         $s4,80($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00008378:
    ld         $a6,16($s0)
    lui        $s1,0x1
    daddu      $at,$s1,$a6
    lw         $at,-19328($at)
    beqz       $at, .L00008500
    ld         $s3,8($sp)
.L00008390:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a6)
    beqz       $v0, .L000083bc
    ld         $a6,16($s0)
    daddu      $v0,$s1,$a6
    lw         $v0,-19328($v0)
    beqz       $v0, .L000084a8
    li         $s2,0x8540
.L000083b4:
    b          .L00008358
    li         $v0,3
.L000083bc:
    lhu        $a2,24($s0)
    ld         $a1,824($a6)
    addu       $a2,$a2,$a2
    dsll       $a2,$a2,0x2
    lui        $a0,0x22
    daddu      $a1,$a1,$a2
    daddu      $a0,$a0,$a1
    ld         $a1,0($s0)
    lw         $a0,0($a0)
    sw         $a0,0($a1)
    ld         $a6,16($s0)
    daddu      $v1,$s1,$a6
    lw         $v1,-19328($v1)
    beqz       $v1, .L000087a8
    li         $s2,0x8540
    ld         $t3,0($s0)
.L000083fc:
    lw         $t2,0($t3)
    ori        $t2,$t2,0x2000
    sw         $t2,0($t3)
    ld         $t0,0($s0)
    lw         $a7,0($t0)
    li         $t1,-513
    and        $a7,$a7,$t1
    sw         $a7,0($t0)
    ld         $a4,0($s0)
    li         $a5,1
    lw         $a3,0($a4)
    lui        $a6,0x2
    or         $a3,$a3,$a6
    beq        $s3, $a5, .L00008518
    sw         $a3,0($a4)
    beqz       $s3, .L000085cc
    nop
.L00008440:
    ld         $t9,0($s0)
    ld         $ra,24($sp)
    lui        $at,0x1fc
    lw         $t8,0($t9)
    nor        $at,$at,$zero
    andi       $ra,$ra,0x7f
    sll        $ra,$ra,0x12
    and        $t8,$t8,$at
    or         $t8,$t8,$ra
    sw         $t8,0($t9)
    ld         $a6,16($s0)
    daddu      $t3,$s1,$a6
    lw         $t3,-19328($t3)
    beqz       $t3, .L00008800
    li         $a1,25
.L0000847c:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a6)
    beqz       $v0, .L00008530
    ld         $a6,16($s0)
    daddu      $v0,$s1,$a6
    lw         $v0,-19328($v0)
    beqz       $v0, .L000085e0
    li         $s2,0x8540
.L000084a0:
    b          .L00008358
    li         $v0,3
.L000084a8:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $v1,$s1,$a6
    ld         $v1,-31416($v1)
    move       $s4,$v0
    beqz       $v1, .L000085ac
    li         $s3,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00008638
    nop
    ld         $a0,16($s0)
.L000084f0:
    jal        vsema
    daddu      $a0,$s3,$a0
    b          .L000083b4
    nop
.L00008500:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a6,$a0
    b          .L00008390
    ld         $a6,16($s0)
.L00008518:
    ld         $a2,0($s0)
    lw         $a1,0($a2)
    li         $a3,-1025
    and        $a1,$a1,$a3
    b          .L00008440
    sw         $a1,0($a2)
.L00008530:
    ld         $a5,0($s0)
    li         $v0,-1
    lhu        $a7,24($s0)
    dsrl32     $v0,$v0,0x0
    lui        $t0,0x3000
    lwu        $a5,0($a5)
    sll        $a7,$a7,0xe
    ori        $t0,$t0,0x1
    and        $a5,$v0,$a5
    or         $a7,$a7,$t0
    dsll32     $a7,$a7,0x0
    li         $t0,-1
    ld         $a6,824($a6)
    dsll32     $t0,$t0,0x0
    lui        $s3,0x40
    and        $a7,$a7,$t0
    daddu      $a6,$s3,$a6
    or         $a5,$a5,$a7
    sd         $a5,0($a6)
    sync
    ld         $a6,16($s0)
    daddu      $a4,$s1,$a6
    lw         $a4,-19328($a4)
    beqz       $a4, .L00008a08
    li         $s2,0x8540
.L00008594:
    jal        odsy_i2c_xfer_done_loop
    move       $a0,$s0
    beqz       $v0, .L00008814
    nop
    b          .L0000835c
    ld         $s2,56($sp)
.L000085ac:
    jal        vsema
    daddu      $a0,$s3,$a6
    ld         $a0,16($s0)
    move       $a1,$s4
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000083b4
    nop
.L000085cc:
    ld         $a2,0($s0)
    lw         $a1,0($a2)
    ori        $a1,$a1,0x400
    b          .L00008440
    sw         $a1,0($a2)
.L000085e0:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a2,$s1,$a6
    ld         $a2,-31416($a2)
    move       $s3,$v0
    beqz       $a2, .L00008850
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00008878
    nop
    ld         $a0,16($s0)
.L00008628:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L000084a0
    nop
.L00008638:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    lw         $t0,-19664($a7)
    lhu        $a2,-31408($a7)
    srl        $a3,$t0,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    move       $a1,$v0
    beqz       $a2, .L00008700
    lui        $a0,0x40
    li         $t8,-3
    and        $t8,$t0,$t8
    sw         $t8,-19664($a7)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    lwu        $t3,-19664($t3)
    li         $a6,-1
    ld         $t8,824($t8)
    ld         $a4,-30720($gp)
    dsrl32     $a6,$a6,0x0
    and        $t3,$a6,$t3
    daddu      $t8,$a0,$t8
    or         $t3,$a4,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t1,-19664($t2)
    li         $t8,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $a5,16($s0)
    daddu      $a7,$s1,$a5
    lwu        $a7,-19664($a7)
    ld         $a5,824($a5)
    and        $a6,$a6,$a7
    daddu      $a5,$a0,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
.L00008700:
    ld         $ra,824($a6)
    daddu      $ra,$a0,$ra
    ld         $t9,-31416($a7)
    sd         $t9,0($ra)
    sync
    beqz       $a2, .L00008760
    li         $t0,-2
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $v0,-19664($v1)
    and        $v0,$t0,$v0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    lwu        $at,-19664($at)
    li         $a2,-1
    ld         $v0,824($v0)
    dsrl32     $a2,$a2,0x0
    ld         $v1,-30720($gp)
    and        $at,$at,$a2
    daddu      $v0,$a0,$v0
    or         $at,$at,$v1
    sd         $at,0($v0)
    sync
.L00008760:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$t0,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000084f0
    ld         $a0,16($s0)
.L000087a8:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    ld         $a7,-31416($a7)
    sd         $v0,0($sp)
    beqz       $a7, .L000089e8
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00008a60
    nop
    ld         $a0,16($s0)
.L000087f0:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L000083fc
    ld         $t3,0($s0)
.L00008800:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a6,$a0
    b          .L0000847c
    ld         $a6,16($s0)
.L00008814:
    ld         $a0,8($s0)
    lw         $a0,0($a0)
    sll        $a1,$a0,0xb
    bltz       $a1, .L00008870
    sll        $a1,$a0,0xa
    bltz       $a1, .L00008870
    ld         $a5,16($sp)
    sb         $a0,0($a5)
    ld         $a3,0($s0)
    lw         $a2,0($a3)
    move       $v0,$zero
    li         $a4,-8193
    and        $a2,$a2,$a4
    b          .L00008358
    sw         $a2,0($a3)
.L00008850:
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    move       $a1,$s3
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000084a0
    nop
.L00008870:
    b          .L00008358
    li         $v0,1
.L00008878:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    lw         $t0,-19664($a7)
    lhu        $a2,-31408($a7)
    srl        $a3,$t0,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    move       $a1,$v0
    beqz       $a2, .L00008940
    lui        $a0,0x40
    li         $t8,-3
    and        $t8,$t0,$t8
    sw         $t8,-19664($a7)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    lwu        $t3,-19664($t3)
    li         $a6,-1
    ld         $t8,824($t8)
    ld         $a4,-30720($gp)
    dsrl32     $a6,$a6,0x0
    and        $t3,$a6,$t3
    daddu      $t8,$a0,$t8
    or         $t3,$a4,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t1,-19664($t2)
    li         $t8,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $a5,16($s0)
    daddu      $a7,$s1,$a5
    lwu        $a7,-19664($a7)
    ld         $a5,824($a5)
    and        $a6,$a6,$a7
    daddu      $a5,$a0,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
.L00008940:
    ld         $ra,824($a6)
    daddu      $ra,$a0,$ra
    ld         $t9,-31416($a7)
    sd         $t9,0($ra)
    sync
    beqz       $a2, .L000089a0
    li         $t0,-2
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $v0,-19664($v1)
    and        $v0,$t0,$v0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    lwu        $at,-19664($at)
    li         $a2,-1
    ld         $v0,824($v0)
    dsrl32     $a2,$a2,0x0
    ld         $v1,-30720($gp)
    and        $at,$at,$a2
    daddu      $v0,$a0,$v0
    or         $at,$at,$v1
    sd         $at,0($v0)
    sync
.L000089a0:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$t0,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00008628
    ld         $a0,16($s0)
.L000089e8:
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    ld         $a1,0($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000083fc
    ld         $t3,0($s0)
.L00008a08:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a1,$s1,$a6
    ld         $a1,-31416($a1)
    sd         $v0,48($sp)
    beqz       $a1, .L00008bd0
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00008bf4
    nop
    ld         $a0,16($s0)
.L00008a50:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00008594
    nop
.L00008a60:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    lw         $t0,-19664($a7)
    lhu        $t1,-31408($a7)
    srl        $t2,$t0,0x5
    andi       $t2,$t2,0x1
    xor        $t1,$t1,$t2
    sltu       $t1,$zero,$t1
    move       $a1,$v0
    beqz       $t1, .L00008b28
    lui        $a0,0x40
    li         $a2,-3
    and        $a2,$t0,$a2
    sw         $a2,-19664($a7)
    ld         $a2,16($s0)
    daddu      $v1,$s1,$a2
    lwu        $v1,-19664($v1)
    li         $t9,-1
    ld         $a2,824($a2)
    ld         $t3,-30720($gp)
    dsrl32     $t9,$t9,0x0
    and        $v1,$t9,$v1
    daddu      $a2,$a0,$a2
    or         $v1,$t3,$v1
    sd         $v1,0($a2)
    sync
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lhu        $v1,-31408($v0)
    lw         $at,-19664($v0)
    li         $a2,-33
    andi       $v1,$v1,0x1
    and        $at,$at,$a2
    sll        $v1,$v1,0x5
    or         $at,$at,$v1
    sw         $at,-19664($v0)
    ld         $t8,16($s0)
    daddu      $ra,$s1,$t8
    lwu        $ra,-19664($ra)
    ld         $t8,824($t8)
    and        $t9,$t9,$ra
    daddu      $t8,$a0,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
.L00008b28:
    ld         $a4,824($a6)
    daddu      $a4,$a0,$a4
    ld         $a3,-31416($a7)
    sd         $a3,0($a4)
    sync
    beqz       $t1, .L00008b88
    li         $t0,-2
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a6,-19664($a7)
    and        $a6,$t0,$a6
    sw         $a6,-19664($a7)
    ld         $a6,16($s0)
    daddu      $a5,$s1,$a6
    lwu        $a5,-19664($a5)
    li         $t1,-1
    ld         $a6,824($a6)
    dsrl32     $t1,$t1,0x0
    ld         $a7,-30720($gp)
    and        $a5,$a5,$t1
    daddu      $a6,$a0,$a6
    or         $a5,$a5,$a7
    sd         $a5,0($a6)
    sync
.L00008b88:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$t0,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000087f0
    ld         $a0,16($s0)
.L00008bd0:
    ld         $s1,48($sp)
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00008594
    nop
.L00008bf4:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    lw         $t0,-19664($a7)
    lhu        $a2,-31408($a7)
    srl        $a3,$t0,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    move       $a1,$v0
    li         $a0,-1
    beqz       $a2, .L00008cb8
    dsrl32     $a0,$a0,0x0
    li         $t2,-3
    and        $t2,$t0,$t2
    sw         $t2,-19664($a7)
    ld         $t2,16($s0)
    daddu      $t1,$s1,$t2
    lwu        $t1,-19664($t1)
    ld         $t2,824($t2)
    ld         $a3,-30720($gp)
    and        $t1,$a0,$t1
    daddu      $t2,$s3,$t2
    or         $t1,$a3,$t1
    sd         $t1,0($t2)
    sync
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lhu        $t1,-31408($a7)
    lw         $a6,-19664($a7)
    li         $t2,-33
    andi       $t1,$t1,0x1
    and        $a6,$a6,$t2
    sll        $t1,$t1,0x5
    or         $a6,$a6,$t1
    sw         $a6,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a5,$s1,$a4
    lwu        $a5,-19664($a5)
    ld         $a4,824($a4)
    and        $a5,$a0,$a5
    daddu      $a4,$s3,$a4
    or         $a3,$a3,$a5
    sd         $a3,0($a4)
    sync
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
.L00008cb8:
    ld         $t8,824($a6)
    daddu      $t8,$s3,$t8
    ld         $t3,-31416($a7)
    sd         $t3,0($t8)
    sync
    beqz       $a2, .L00008d10
    li         $t0,-2
    ld         $at,16($s0)
    daddu      $at,$s1,$at
    lw         $ra,-19664($at)
    and        $ra,$t0,$ra
    sw         $ra,-19664($at)
    ld         $ra,16($s0)
    daddu      $t9,$s1,$ra
    lwu        $t9,-19664($t9)
    ld         $ra,824($ra)
    ld         $at,-30720($gp)
    and        $t9,$a0,$t9
    daddu      $ra,$s3,$ra
    or         $t9,$t9,$at
    sd         $t9,0($ra)
    sync
.L00008d10:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$t0,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00008a50
    ld         $a0,16($s0)

glabel odsy_i2c_slave_recvbyte
    daddiu     $sp,$sp,-128
    sd         $s4,56($sp)
    sd         $s3,64($sp)
    ld         $a6,0($a0)
    sd         $s2,72($sp)
    lw         $v0,0($a6)
    sd         $s7,80($sp)
    sd         $s6,88($sp)
    srl        $at,$v0,0xa
    sd         $s1,96($sp)
    andi       $at,$at,0x1
    sd         $s0,32($sp)
    move       $s0,$a0
    beq        $a1, $at, .L00008dac
    sd         $s5,104($sp)
    li         $v1,-1025
    andi       $a0,$a1,0x1
    and        $v1,$v0,$v1
    sll        $a0,$a0,0xa
    or         $v1,$v1,$a0
    sw         $v1,0($a6)
.L00008dac:
    ld         $a6,16($s0)
    lui        $s1,0x1
    daddu      $a0,$s1,$a6
    lw         $a0,-19328($a0)
    sd         $a3,24($sp)
    sd         $a2,16($sp)
    beqz       $a0, .L00008ed0
    sd         $ra,112($sp)
.L00008dcc:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a6)
    beqz       $v0, .L00008e20
    ld         $a6,16($s0)
    daddu      $a1,$s1,$a6
    lw         $a1,-19328($a1)
    beqz       $a1, .L00008e78
    li         $s2,0x8540
    li         $v0,3
.L00008df4:
    ld         $s4,56($sp)
.L00008df8:
    ld         $s3,64($sp)
    ld         $s2,72($sp)
    ld         $s7,80($sp)
    ld         $s0,32($sp)
    ld         $ra,112($sp)
    ld         $s6,88($sp)
    ld         $s1,96($sp)
    ld         $s5,104($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L00008e20:
    lhu        $a5,26($s0)
    ld         $a4,824($a6)
    addu       $a5,$a5,$a5
    dsll       $a5,$a5,0x2
    lui        $a3,0x22
    daddu      $a4,$a4,$a5
    daddu      $a3,$a3,$a4
    ld         $a4,8($s0)
    lw         $a3,0($a3)
    sw         $a3,0($a4)
    ld         $a6,16($s0)
    daddu      $a2,$s1,$a6
    lw         $a2,-19328($a2)
    beqz       $a2, .L0000919c
    li         $s2,0x8540
    ld         $a6,8($s0)
.L00008e60:
    lw         $a6,0($a6)
    sll        $a6,$a6,0x9
    bltz       $a6, .L00008ee8
    move       $v0,$zero
.L00008e70:
    b          .L00008df4
    move       $v0,$zero
.L00008e78:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    ld         $a7,-31416($a7)
    move       $s4,$v0
    beqz       $a7, .L00008f90
    li         $s3,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000902c
    nop
    ld         $a0,16($s0)
.L00008ec0:
    jal        vsema
    daddu      $a0,$s3,$a0
    b          .L00008df4
    li         $v0,3
.L00008ed0:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a6,$a0
    b          .L00008dcc
    ld         $a6,16($s0)
.L00008ee8:
    li         $s5,-2
    lui        $s3,0x40
    li         $s4,0x8530
    li         $s6,-1
    ld         $s7,-30720($gp)
    li         $s2,0x8540
    dsrl32     $s6,$s6,0x0
.L00008f04:
    move       $a0,$s0
    jal        odsy_i2c_xfer_done_loop
    sd         $v0,48($sp)
    ld         $a0,48($sp)
    ld         $a1,16($sp)
    beqz       $v0, .L00008f28
    slt        $a1,$a1,$a0
    b          .L00008df8
    ld         $s4,56($sp)
.L00008f28:
    ld         $v0,8($s0)
    lw         $v0,0($v0)
    sll        $v1,$v0,0xb
    bltz       $v1, .L0000928c
    sll        $v0,$v0,0xa
    bltz       $v0, .L0000928c
    nop
    bnez       $a1, .L000091f4
    move       $v0,$a0
    ld         $a6,16($s0)
    daddu      $v1,$s1,$a6
    lw         $v1,-19328($v1)
    beqz       $v1, .L00009278
    sd         $a0,8($sp)
.L00008f60:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a6)
    beqz       $v0, .L00008fb0
    nop
    ld         $v0,16($s0)
    daddu      $a0,$s1,$v0
    lw         $a0,-19328($a0)
    beqz       $a0, .L00009224
    nop
.L00008f88:
    b          .L00008df4
    li         $v0,3
.L00008f90:
    jal        vsema
    daddu      $a0,$s3,$a6
    ld         $a0,16($s0)
    move       $a1,$s4
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00008df4
    li         $v0,3
.L00008fb0:
    lhu        $a4,26($s0)
    ld         $a3,16($s0)
    ld         $a3,824($a3)
    addu       $a4,$a4,$a4
    dsll       $a4,$a4,0x2
    lui        $a2,0x22
    daddu      $a3,$a3,$a4
    daddu      $a2,$a2,$a3
    ld         $a3,8($s0)
    lw         $a2,0($a2)
    sw         $a2,0($a3)
    ld         $a6,16($s0)
    daddu      $a1,$s1,$a6
    lw         $a1,-19328($a1)
    beqz       $a1, .L000092b4
    nop
    ld         $a0,8($s0)
.L00008ff4:
    ld         $a1,24($sp)
    ld         $v0,8($sp)
    daddu      $a1,$v0,$a1
    lw         $a0,0($a0)
    sb         $a0,0($a1)
    ld         $v1,8($s0)
    lw         $v1,0($v1)
    addiu      $v0,$v0,1
    sll        $v1,$v1,0x9
    dsll32     $v0,$v0,0x10
    bltz       $v1, .L00008f04
    dsra32     $v0,$v0,0x10
    b          .L00008e70
    nop
.L0000902c:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $t0,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$t0,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    move       $a1,$v0
    beqz       $a2, .L000090f4
    lui        $a7,0x40
    li         $t9,-3
    and        $t9,$t0,$t9
    sw         $t9,-19664($a0)
    ld         $t9,16($s0)
    daddu      $t8,$s1,$t9
    lwu        $t8,-19664($t8)
    li         $a6,-1
    ld         $t9,824($t9)
    ld         $a4,-30720($gp)
    dsrl32     $a6,$a6,0x0
    and        $t8,$a6,$t8
    daddu      $t9,$a7,$t9
    or         $t8,$a4,$t8
    sd         $t8,0($t9)
    sync
    ld         $t3,16($s0)
    daddu      $t3,$s1,$t3
    lhu        $t8,-31408($t3)
    lw         $t2,-19664($t3)
    li         $t9,-33
    andi       $t8,$t8,0x1
    and        $t2,$t2,$t9
    sll        $t8,$t8,0x5
    or         $t2,$t2,$t8
    sw         $t2,-19664($t3)
    ld         $a5,16($s0)
    daddu      $t1,$s1,$a5
    lwu        $t1,-19664($t1)
    ld         $a5,824($a5)
    and        $a6,$a6,$t1
    daddu      $a5,$a7,$a5
    or         $a4,$a4,$a6
    sd         $a4,0($a5)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L000090f4:
    ld         $at,824($a6)
    daddu      $at,$a7,$at
    ld         $ra,-31416($a0)
    sd         $ra,0($at)
    sync
    beqz       $a2, .L00009154
    li         $t0,-2
    ld         $a0,16($s0)
    daddu      $a0,$s1,$a0
    lw         $v1,-19664($a0)
    and        $v1,$t0,$v1
    sw         $v1,-19664($a0)
    ld         $v1,16($s0)
    daddu      $v0,$s1,$v1
    lwu        $v0,-19664($v0)
    li         $a2,-1
    ld         $v1,824($v1)
    dsrl32     $a2,$a2,0x0
    ld         $a0,-30720($gp)
    and        $v0,$v0,$a2
    daddu      $v1,$a7,$v1
    or         $v0,$v0,$a0
    sd         $v0,0($v1)
    sync
.L00009154:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$t0,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00008ec0
    ld         $a0,16($s0)
.L0000919c:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a7,$s1,$a6
    ld         $a7,-31416($a7)
    move       $s3,$v0
    beqz       $a7, .L00009294
    li         $s4,0x8530
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000932c
    nop
    ld         $a0,16($s0)
.L000091e4:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00008e60
    ld         $a6,8($s0)
.L000091f4:
    ld         $a2,0($s0)
    lw         $a1,0($a2)
    srl        $a3,$a1,0xa
    li         $v0,3
    nor        $a3,$a3,$zero
    li         $a4,-1025
    andi       $a3,$a3,0x1
    and        $a1,$a1,$a4
    sll        $a3,$a3,0xa
    or         $a1,$a1,$a3
    b          .L00008df4
    sw         $a1,0($a2)
.L00009224:
    jal        mutex_spinlock
    daddu      $a0,$s2,$v0
    ld         $a6,16($s0)
    daddu      $a4,$s1,$a6
    ld         $a4,-31416($a4)
    beqz       $a4, .L00009308
    sd         $v0,40($sp)
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000949c
    nop
    ld         $a0,16($s0)
.L00009268:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00008f88
    nop
.L00009278:
    li         $a1,25
    jal        psema
    daddu      $a0,$s4,$a6
    b          .L00008f60
    ld         $a6,16($s0)
.L0000928c:
    b          .L00008df4
    li         $v0,1
.L00009294:
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    move       $a1,$s3
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00008e60
    ld         $a6,8($s0)
.L000092b4:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a6
    ld         $a6,16($s0)
    daddu      $a1,$s1,$a6
    ld         $a1,-31416($a1)
    beqz       $a1, .L000095f0
    sd         $v0,0($sp)
    daddu      $a0,$s2,$a6
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00009610
    nop
    ld         $a0,16($s0)
.L000092f8:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00008ff4
    ld         $a0,8($s0)
.L00009308:
    ld         $s1,40($sp)
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00008f88
    nop
.L0000932c:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $t0,-19664($a0)
    lhu        $t1,-31408($a0)
    srl        $t2,$t0,0x5
    andi       $t2,$t2,0x1
    xor        $t1,$t1,$t2
    sltu       $t1,$zero,$t1
    move       $a1,$v0
    beqz       $t1, .L000093f4
    lui        $a7,0x40
    li         $a2,-3
    and        $a2,$t0,$a2
    sw         $a2,-19664($a0)
    ld         $a0,16($s0)
    daddu      $v1,$s1,$a0
    lwu        $v1,-19664($v1)
    li         $t9,-1
    ld         $a0,824($a0)
    ld         $t3,-30720($gp)
    dsrl32     $t9,$t9,0x0
    and        $v1,$t9,$v1
    daddu      $a0,$a7,$a0
    or         $v1,$t3,$v1
    sd         $v1,0($a0)
    sync
    ld         $v0,16($s0)
    daddu      $v0,$s1,$v0
    lhu        $v1,-31408($v0)
    lw         $at,-19664($v0)
    li         $a0,-33
    andi       $v1,$v1,0x1
    and        $at,$at,$a0
    sll        $v1,$v1,0x5
    or         $at,$at,$v1
    sw         $at,-19664($v0)
    ld         $t8,16($s0)
    daddu      $ra,$s1,$t8
    lwu        $ra,-19664($ra)
    ld         $t8,824($t8)
    and        $t9,$t9,$ra
    daddu      $t8,$a7,$t8
    or         $t3,$t3,$t9
    sd         $t3,0($t8)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L000093f4:
    ld         $a4,824($a6)
    daddu      $a4,$a7,$a4
    ld         $a3,-31416($a0)
    sd         $a3,0($a4)
    sync
    beqz       $t1, .L00009454
    li         $t0,-2
    ld         $t1,16($s0)
    daddu      $t1,$s1,$t1
    lw         $a6,-19664($t1)
    and        $a6,$t0,$a6
    sw         $a6,-19664($t1)
    ld         $a6,16($s0)
    daddu      $a5,$s1,$a6
    lwu        $a5,-19664($a5)
    li         $t2,-1
    ld         $a6,824($a6)
    dsrl32     $t2,$t2,0x0
    ld         $t1,-30720($gp)
    and        $a5,$a5,$t2
    daddu      $a6,$a7,$a6
    or         $a5,$a5,$t1
    sd         $a5,0($a6)
    sync
.L00009454:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$t0,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000091e4
    ld         $a0,16($s0)
.L0000949c:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $t0,-19664($a0)
    lhu        $a2,-31408($a0)
    srl        $a3,$t0,0x5
    andi       $a3,$a3,0x1
    xor        $a2,$a2,$a3
    sltu       $a2,$zero,$a2
    beqz       $a2, .L00009554
    move       $a1,$v0
    li         $t1,-3
    and        $t1,$t1,$t0
    sw         $t1,-19664($a0)
    ld         $t1,16($s0)
    daddu      $a7,$s1,$t1
    ld         $t1,824($t1)
    lwu        $a7,-19664($a7)
    daddu      $t1,$s3,$t1
    and        $a7,$s6,$a7
    or         $a7,$s7,$a7
    sd         $a7,0($t1)
    sync
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lhu        $a7,-31408($a6)
    lw         $t1,-19664($a6)
    li         $a5,-33
    andi       $a7,$a7,0x1
    and        $a5,$a5,$t1
    sll        $a7,$a7,0x5
    or         $a5,$a5,$a7
    sw         $a5,-19664($a6)
    ld         $a5,16($s0)
    daddu      $a4,$s1,$a5
    ld         $a5,824($a5)
    lwu        $a4,-19664($a4)
    daddu      $a5,$s3,$a5
    and        $a4,$s6,$a4
    or         $a4,$s7,$a4
    sd         $a4,0($a5)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L00009554:
    ld         $t3,824($a6)
    daddu      $t3,$s3,$t3
    ld         $t2,-31416($a0)
    sd         $t2,0($t3)
    sync
    beqz       $a2, .L000095a8
    nop
    ld         $ra,16($s0)
    daddu      $ra,$s1,$ra
    lw         $t9,-19664($ra)
    and        $t9,$s5,$t9
    sw         $t9,-19664($ra)
    ld         $t9,16($s0)
    daddu      $t8,$s1,$t9
    lwu        $t8,-19664($t8)
    ld         $t9,824($t9)
    and        $t8,$s6,$t8
    daddu      $t9,$s3,$t9
    or         $t8,$s7,$t8
    sd         $t8,0($t9)
    sync
.L000095a8:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$s5,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00009268
    ld         $a0,16($s0)
.L000095f0:
    jal        vsema
    daddu      $a0,$s4,$a6
    ld         $a0,16($s0)
    ld         $a1,0($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00008ff4
    ld         $a0,8($s0)
.L00009610:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
    lw         $t0,-19664($a0)
    lhu        $a7,-31408($a0)
    srl        $t1,$t0,0x5
    andi       $t1,$t1,0x1
    xor        $a7,$a7,$t1
    sltu       $a7,$zero,$a7
    beqz       $a7, .L000096c8
    move       $a1,$v0
    li         $ra,-3
    and        $ra,$ra,$t0
    sw         $ra,-19664($a0)
    ld         $ra,16($s0)
    daddu      $t9,$s1,$ra
    ld         $ra,824($ra)
    lwu        $t9,-19664($t9)
    daddu      $ra,$s3,$ra
    and        $t9,$s6,$t9
    or         $t9,$s7,$t9
    sd         $t9,0($ra)
    sync
    ld         $t8,16($s0)
    daddu      $t8,$s1,$t8
    lhu        $t9,-31408($t8)
    lw         $ra,-19664($t8)
    li         $t3,-33
    andi       $t9,$t9,0x1
    and        $t3,$t3,$ra
    sll        $t9,$t9,0x5
    or         $t3,$t3,$t9
    sw         $t3,-19664($t8)
    ld         $t3,16($s0)
    daddu      $t2,$s1,$t3
    ld         $t3,824($t3)
    lwu        $t2,-19664($t2)
    daddu      $t3,$s3,$t3
    and        $t2,$s6,$t2
    or         $t2,$s7,$t2
    sd         $t2,0($t3)
    sync
    ld         $a6,16($s0)
    daddu      $a0,$s1,$a6
.L000096c8:
    ld         $v0,824($a6)
    daddu      $v0,$s3,$v0
    ld         $at,-31416($a0)
    sd         $at,0($v0)
    sync
    beqz       $a7, .L0000971c
    nop
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    lw         $a0,-19664($a2)
    and        $a0,$s5,$a0
    sw         $a0,-19664($a2)
    ld         $a0,16($s0)
    daddu      $v1,$s1,$a0
    lwu        $v1,-19664($v1)
    ld         $a0,824($a0)
    and        $v1,$s6,$v1
    daddu      $a0,$s3,$a0
    or         $v1,$s7,$v1
    sd         $v1,0($a0)
    sync
.L0000971c:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$s5,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000092f8
    ld         $a0,16($s0)

glabel odsy_i2c_xfer_done_loop
    daddiu     $sp,$sp,-80
    sd         $s6,16($sp)
    ld         $s6,-30720($gp)
    sd         $s3,24($sp)
    sd         $s2,8($sp)
    sd         $s5,40($sp)
    sd         $s0,64($sp)
    move       $s0,$a0
    move       $s5,$zero
    sd         $s1,48($sp)
    lui        $s1,0x1
    li         $s2,0x8540
    sd         $s4,32($sp)
    li         $s4,0x8530
    sd         $s7,56($sp)
    li         $s7,-1
    lui        $s3,0x40
    sd         $ra,72($sp)
    dsrl32     $s7,$s7,0x0
    ld         $a4,16($s0)
.L000097b4:
    daddu      $t8,$s1,$a4
    lw         $t8,-19328($t8)
    beqz       $t8, .L000098dc
.L000097c0:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a4)
    beqz       $v0, .L00009818
    lui        $at,0x22
    ld         $v0,16($s0)
    daddu      $t9,$s1,$v0
    lw         $t9,-19328($t9)
    beqz       $t9, .L00009888
    nop
    li         $v0,3
.L000097ec:
    ld         $s2,8($sp)
    ld         $s6,16($sp)
    ld         $s3,24($sp)
    ld         $s4,32($sp)
    ld         $s5,40($sp)
    ld         $ra,72($sp)
    ld         $s1,48($sp)
    ld         $s7,56($sp)
    ld         $s0,64($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00009818:
    lhu        $v1,26($s0)
    ld         $v0,16($s0)
    ld         $v0,824($v0)
    addu       $v1,$v1,$v1
    dsll       $v1,$v1,0x2
    daddu      $v0,$v0,$v1
    daddu      $at,$at,$v0
    ld         $v0,8($s0)
    lw         $at,0($at)
    sw         $at,0($v0)
    ld         $a4,16($s0)
    daddu      $ra,$s1,$a4
    lw         $ra,-19328($ra)
    beqz       $ra, .L00009900
    nop
    daddiu     $s5,$s5,1
.L00009858:
    sltiu      $v1,$s5,800
    beqz       $v1, .L000098f0
    nop
    ld         $a0,8($s0)
    lw         $a0,0($a0)
    sll        $a0,$a0,0x16
    bltz       $a0, .L000098f8
    li         $a1,100
    jal        odsy_usdelay
    ld         $a0,16($s0)
    b          .L000097b4
    ld         $a4,16($s0)
.L00009888:
    jal        mutex_spinlock
    daddu      $a0,$s2,$v0
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    ld         $a1,-31416($a1)
    beqz       $a1, .L00009954
    move       $s5,$v0
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00009974
    nop
    ld         $a0,16($s0)
.L000098cc:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L000097ec
    li         $v0,3
.L000098dc:
    li         $a1,25
    jal        psema
    daddu      $a0,$s4,$a4
    b          .L000097c0
    ld         $a4,16($s0)
.L000098f0:
    b          .L000097ec
    li         $v0,2
.L000098f8:
    b          .L000097ec
    move       $v0,$zero
.L00009900:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    ld         $a1,-31416($a1)
    beqz       $a1, .L00009ad0
    sd         $v0,0($sp)
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00009af0
    nop
    ld         $a0,16($s0)
.L00009944:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00009858
    daddiu     $s5,$s5,1
.L00009954:
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    move       $a1,$s5
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000097ec
    li         $v0,3
.L00009974:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00009a2c
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s3,$t8
    and        $t3,$s7,$t3
    or         $t3,$s6,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s3,$t1
    and        $t0,$s7,$t0
    or         $t0,$s6,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00009a2c:
    ld         $ra,824($a4)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00009a84
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s3,$v0
    and        $at,$s7,$at
    or         $at,$s6,$at
    sd         $at,0($v0)
    sync
.L00009a84:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L000098cc
    ld         $a0,16($s0)
.L00009ad0:
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    ld         $a1,0($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00009858
    daddiu     $s5,$s5,1
.L00009af0:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00009ba8
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s3,$t8
    and        $t3,$s7,$t3
    or         $t3,$s6,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s3,$t1
    and        $t0,$s7,$t0
    or         $t0,$s6,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00009ba8:
    ld         $ra,824($a4)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00009c00
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s3,$v0
    and        $at,$s7,$at
    or         $at,$s6,$at
    sd         $at,0($v0)
    sync
.L00009c00:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00009944
    ld         $a0,16($s0)

glabel odsy_i2c_busy_high_loop
    daddiu     $sp,$sp,-80
    sd         $s6,16($sp)
    ld         $s6,-30720($gp)
    sd         $s3,24($sp)
    sd         $s2,8($sp)
    sd         $s5,40($sp)
    sd         $s0,64($sp)
    move       $s0,$a0
    move       $s5,$zero
    sd         $s1,48($sp)
    lui        $s1,0x1
    li         $s2,0x8540
    sd         $s4,32($sp)
    li         $s4,0x8530
    sd         $s7,56($sp)
    li         $s7,-1
    lui        $s3,0x40
    sd         $ra,72($sp)
    dsrl32     $s7,$s7,0x0
    ld         $a4,16($s0)
.L00009c9c:
    daddu      $t8,$s1,$a4
    lw         $t8,-19328($t8)
    beqz       $t8, .L00009dc8
    li         $a1,25
.L00009cac:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a4)
    beqz       $v0, .L00009d04
    lui        $at,0x22
    ld         $v0,16($s0)
    daddu      $t9,$s1,$v0
    lw         $t9,-19328($t9)
    beqz       $t9, .L00009d74
    nop
    li         $v0,3
.L00009cd8:
    ld         $s2,8($sp)
    ld         $s6,16($sp)
    ld         $s3,24($sp)
    ld         $s4,32($sp)
    ld         $s5,40($sp)
    ld         $ra,72($sp)
    ld         $s1,48($sp)
    ld         $s7,56($sp)
    ld         $s0,64($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00009d04:
    lhu        $v1,26($s0)
    ld         $v0,16($s0)
    ld         $v0,824($v0)
    addu       $v1,$v1,$v1
    dsll       $v1,$v1,0x2
    daddu      $v0,$v0,$v1
    daddu      $at,$at,$v0
    ld         $v0,8($s0)
    lw         $at,0($at)
    sw         $at,0($v0)
    ld         $a4,16($s0)
    daddu      $ra,$s1,$a4
    lw         $ra,-19328($ra)
    beqz       $ra, .L00009de8
    nop
    daddiu     $s5,$s5,1
.L00009d44:
    sltiu      $v1,$s5,400
    beqz       $v1, .L00009dd8
    nop
    ld         $a0,8($s0)
    lw         $a0,0($a0)
    sll        $a0,$a0,0x9
    bltz       $a0, .L00009de0
    li         $a1,100
    jal        odsy_usdelay
    ld         $a0,16($s0)
    b          .L00009c9c
    ld         $a4,16($s0)
.L00009d74:
    jal        mutex_spinlock
    daddu      $a0,$s2,$v0
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    ld         $a1,-31416($a1)
    beqz       $a1, .L00009e3c
    move       $s5,$v0
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00009e5c
    nop
    ld         $a0,16($s0)
.L00009db8:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00009cd8
    li         $v0,3
.L00009dc8:
    jal        psema
    daddu      $a0,$s4,$a4
    b          .L00009cac
    ld         $a4,16($s0)
.L00009dd8:
    b          .L00009cd8
    li         $v0,2
.L00009de0:
    b          .L00009cd8
    move       $v0,$zero
.L00009de8:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    ld         $a1,-31416($a1)
    beqz       $a1, .L00009fb8
    sd         $v0,0($sp)
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L00009fd8
    nop
    ld         $a0,16($s0)
.L00009e2c:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L00009d44
    daddiu     $s5,$s5,1
.L00009e3c:
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    move       $a1,$s5
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00009cd8
    li         $v0,3
.L00009e5c:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L00009f14
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s3,$t8
    and        $t3,$s7,$t3
    or         $t3,$s6,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s3,$t1
    and        $t0,$s7,$t0
    or         $t0,$s6,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L00009f14:
    ld         $ra,824($a4)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L00009f6c
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s3,$v0
    and        $at,$s7,$at
    or         $at,$s6,$at
    sd         $at,0($v0)
    sync
.L00009f6c:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00009db8
    ld         $a0,16($s0)
.L00009fb8:
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    ld         $a1,0($sp)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00009d44
    daddiu     $s5,$s5,1
.L00009fd8:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a5,-19664($a0)
    lhu        $a6,-31408($a0)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L0000a090
    move       $a1,$v0
    li         $t8,-3
    and        $t8,$t8,$a5
    sw         $t8,-19664($a0)
    ld         $t8,16($s0)
    daddu      $t3,$s1,$t8
    ld         $t8,824($t8)
    lwu        $t3,-19664($t3)
    daddu      $t8,$s3,$t8
    and        $t3,$s7,$t3
    or         $t3,$s6,$t3
    sd         $t3,0($t8)
    sync
    ld         $t2,16($s0)
    daddu      $t2,$s1,$t2
    lhu        $t3,-31408($t2)
    lw         $t8,-19664($t2)
    li         $t1,-33
    andi       $t3,$t3,0x1
    and        $t1,$t1,$t8
    sll        $t3,$t3,0x5
    or         $t1,$t1,$t3
    sw         $t1,-19664($t2)
    ld         $t1,16($s0)
    daddu      $t0,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t0,-19664($t0)
    daddu      $t1,$s3,$t1
    and        $t0,$s7,$t0
    or         $t0,$s6,$t0
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L0000a090:
    ld         $ra,824($a4)
    daddu      $ra,$s3,$ra
    ld         $t9,-31416($a0)
    sd         $t9,0($ra)
    sync
    beqz       $a6, .L0000a0e8
    nop
    ld         $v1,16($s0)
    daddu      $v1,$s1,$v1
    lw         $a0,-19664($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    sw         $v0,-19664($v1)
    ld         $v0,16($s0)
    daddu      $at,$s1,$v0
    ld         $v0,824($v0)
    lwu        $at,-19664($at)
    daddu      $v0,$s3,$v0
    and        $at,$s7,$at
    or         $at,$s6,$at
    sd         $at,0($v0)
    sync
.L0000a0e8:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L00009e2c
    ld         $a0,16($s0)

glabel odsy_i2c_recv_ack
    daddiu     $sp,$sp,-80
    sd         $s8,64($sp)
    sd         $s6,24($sp)
    sd         $s3,8($sp)
    sd         $s2,0($sp)
    sd         $s0,40($sp)
    move       $s0,$a0
    sd         $s4,16($sp)
    move       $s4,$a1
    move       $s2,$zero
    sd         $s1,48($sp)
    lui        $s1,0x1
    lui        $s3,0x22
    sd         $s5,56($sp)
    li         $s5,0x8540
    li         $s6,0x8530
    sd         $s7,32($sp)
    lui        $s7,0x40
    b          .L0000a1c4
    sd         $ra,72($sp)
.L0000a184:
    daddu      $a0,$s5,$a4
    jal        mutex_spinunlock
    move       $a1,$s8
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000a2e4
    nop
    ld         $a0,16($s0)
.L0000a1ac:
    jal        vsema
    daddu      $a0,$s6,$a0
.L0000a1b4:
    daddiu     $s2,$s2,1
.L0000a1b8:
    sltiu      $a1,$s2,400
    beqz       $a1, .L0000a298
    li         $v0,2
.L0000a1c4:
    ld         $a2,8($s0)
    lw         $a2,0($a2)
    srl        $a2,$a2,0x8
    andi       $a2,$a2,0x1
    beq        $s4, $a2, .L0000a294
    li         $a1,100
    jal        odsy_usdelay
    ld         $a0,16($s0)
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lw         $a3,-19328($a3)
    beqz       $a3, .L0000a280
.L0000a1f4:
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a4)
    bnez       $v0, .L0000a2c8
    nop
    lhu        $a7,26($s0)
    ld         $a6,16($s0)
    ld         $a6,824($a6)
    addu       $a7,$a7,$a7
    dsll       $a7,$a7,0x2
    daddu      $a6,$a6,$a7
    ld         $a7,8($s0)
    daddu      $a6,$s3,$a6
    lw         $a6,0($a6)
    sw         $a6,0($a7)
    ld         $a4,16($s0)
    daddu      $a5,$s1,$a4
    lw         $a5,-19328($a5)
    bnez       $a5, .L0000a1b4
    nop
    jal        mutex_spinlock
    daddu      $a0,$s5,$a4
    ld         $a4,16($s0)
    daddu      $a7,$s1,$a4
    ld         $a7,-31416($a7)
    bnez       $a7, .L0000a184
    move       $s8,$v0
    jal        vsema
    daddu      $a0,$s6,$a4
    ld         $a0,16($s0)
    move       $a1,$s8
    jal        mutex_spinunlock
    daddu      $a0,$s5,$a0
    b          .L0000a1b8
    daddiu     $s2,$s2,1
.L0000a280:
    li         $a1,25
    jal        psema
    daddu      $a0,$s6,$a4
    b          .L0000a1f4
    ld         $a4,16($s0)
.L0000a294:
    move       $v0,$zero
.L0000a298:
    ld         $s2,0($sp)
    ld         $s3,8($sp)
    ld         $s4,16($sp)
    ld         $s6,24($sp)
    ld         $s8,64($sp)
    ld         $s7,32($sp)
    ld         $ra,72($sp)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    ld         $s5,56($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0000a2c8:
    ld         $v0,16($s0)
    daddu      $a1,$s1,$v0
    lw         $a1,-19328($a1)
    beqz       $a1, .L0000a454
    nop
.L0000a2dc:
    b          .L0000a298
    li         $v0,3
.L0000a2e4:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s5,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a7,-19664($a0)
    move       $a1,$v0
    lhu        $a5,-31408($a0)
    srl        $a6,$a7,0x5
    li         $a3,-2
    andi       $a6,$a6,0x1
    li         $t3,-33
    xor        $a5,$a5,$a6
    li         $t1,-1
    sltu       $a5,$zero,$a5
    dsrl32     $t1,$t1,0x0
    li         $a6,-3
    beqz       $a5, .L0000a3ac
    and        $a6,$a6,$a7
    sw         $a6,-19664($a0)
    ld         $ra,16($s0)
    daddu      $t9,$s1,$ra
    ld         $ra,824($ra)
    lwu        $t9,-19664($t9)
    ld         $a7,-30720($gp)
    daddu      $ra,$s7,$ra
    and        $t9,$t1,$t9
    or         $t9,$a7,$t9
    sd         $t9,0($ra)
    sync
    ld         $t8,16($s0)
    daddu      $t8,$s1,$t8
    lhu        $t9,-31408($t8)
    lw         $ra,-19664($t8)
    andi       $t9,$t9,0x1
    and        $t3,$t3,$ra
    sll        $t9,$t9,0x5
    or         $t3,$t3,$t9
    sw         $t3,-19664($t8)
    ld         $t0,16($s0)
    daddu      $t2,$s1,$t0
    ld         $t0,824($t0)
    lwu        $t2,-19664($t2)
    daddu      $t0,$s7,$t0
    and        $t1,$t1,$t2
    or         $a7,$a7,$t1
    sd         $a7,0($t0)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L0000a3ac:
    ld         $at,824($a4)
    ld         $ra,-31416($a0)
    daddu      $at,$s7,$at
    sd         $ra,0($at)
    sync
    ld         $v0,-30720($gp)
    beqz       $a5, .L0000a408
    li         $a0,-1
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $v1,16($s0)
    daddu      $a2,$s1,$v1
    ld         $v1,824($v1)
    lwu        $a2,-19664($a2)
    dsrl32     $a0,$a0,0x0
    daddu      $v1,$s7,$v1
    and        $a0,$a0,$a2
    or         $v0,$v0,$a0
    sd         $v0,0($v1)
    sync
.L0000a408:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s5,$a0
    b          .L0000a1ac
    ld         $a0,16($s0)
.L0000a454:
    jal        mutex_spinlock
    daddu      $a0,$s5,$v0
    ld         $a4,16($s0)
    daddu      $a7,$s1,$a4
    ld         $a7,-31416($a7)
    beqz       $a7, .L0000a4a8
    move       $s2,$v0
    daddu      $a0,$s5,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000a4c8
    nop
    ld         $a0,16($s0)
.L0000a498:
    jal        vsema
    daddu      $a0,$s6,$a0
    b          .L0000a2dc
    nop
.L0000a4a8:
    jal        vsema
    daddu      $a0,$s6,$a4
    ld         $a0,16($s0)
    move       $a1,$s2
    jal        mutex_spinunlock
    daddu      $a0,$s5,$a0
    b          .L0000a2dc
    nop
.L0000a4c8:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s5,$a0
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a6,-19664($a0)
    lhu        $a5,-31408($a0)
    srl        $a7,$a6,0x5
    andi       $a7,$a7,0x1
    xor        $a5,$a5,$a7
    sltu       $a5,$zero,$a5
    beqz       $a5, .L0000a58c
    move       $a1,$v0
    li         $at,-3
    and        $at,$at,$a6
    sw         $at,-19664($a0)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    ld         $at,824($at)
    li         $t2,-1
    lwu        $ra,-19664($ra)
    ld         $t0,-30720($gp)
    dsrl32     $t2,$t2,0x0
    daddu      $at,$s7,$at
    and        $ra,$t2,$ra
    or         $ra,$t0,$ra
    sd         $ra,0($at)
    sync
    ld         $t9,16($s0)
    daddu      $t9,$s1,$t9
    lhu        $ra,-31408($t9)
    lw         $at,-19664($t9)
    li         $t8,-33
    andi       $ra,$ra,0x1
    and        $t8,$t8,$at
    sll        $ra,$ra,0x5
    or         $t8,$t8,$ra
    sw         $t8,-19664($t9)
    ld         $t1,16($s0)
    daddu      $t3,$s1,$t1
    ld         $t1,824($t1)
    lwu        $t3,-19664($t3)
    daddu      $t1,$s7,$t1
    and        $t2,$t2,$t3
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
.L0000a58c:
    ld         $v1,824($a4)
    daddu      $v1,$s7,$v1
    ld         $v0,-31416($a0)
    sd         $v0,0($v1)
    sync
    beqz       $a5, .L0000a5f0
    nop
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a7,-19664($a6)
    li         $a5,-2
    and        $a5,$a5,$a7
    sw         $a5,-19664($a6)
    ld         $a2,16($s0)
    daddu      $a4,$s1,$a2
    ld         $a2,824($a2)
    li         $a3,-1
    lwu        $a4,-19664($a4)
    ld         $a0,-30720($gp)
    dsrl32     $a3,$a3,0x0
    daddu      $a2,$s7,$a2
    and        $a3,$a3,$a4
    or         $a0,$a0,$a3
    sd         $a0,0($a2)
    sync
.L0000a5f0:
    ld         $a6,16($s0)
    daddu      $a6,$s1,$a6
    lw         $a5,-19664($a6)
    ori        $a5,$a5,0x2
    sw         $a5,-19664($a6)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a5,-19664($a4)
    li         $a3,-2
    and        $a3,$a3,$a5
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s5,$a0
    b          .L0000a498
    ld         $a0,16($s0)

glabel odsy_i2c_init_port_handle
    daddiu     $sp,$sp,-64
    sd         $ra,40($sp)
    sd         $s2,8($sp)
    move       $s2,$a0
    sd         $s0,16($sp)
    move       $s0,$a1
    bltz       $a2, .L0000a6cc
    sd         $s1,48($sp)
    slti       $at,$a2,2
    beqz       $at, .L0000a6cc
    nop
    beqz       $a2, .L0000a6d4
    li         $v0,10113
    li         $v0,1
    beq        $a2, $v0, .L0000a764
.L0000a678:
    lui        $s1,0x1
    sd         $s0,16($s2)
    daddu      $s1,$s0,$s1
    sw         $a2,28($s2)
    lw         $v1,-19328($s1)
    beqz       $v1, .L0000a7e8
    li         $a1,25
    li         $a1,14
.L0000a698:
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L0000a6fc
    nop
    lw         $t8,-19328($s1)
    beqz       $t8, .L0000a790
.L0000a6b0:
    li         $v0,3
.L0000a6b4:
    ld         $ra,40($sp)
    ld         $s2,8($sp)
    ld         $s0,16($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L0000a6cc:
    b          .L0000a6b4
    li         $v0,1
.L0000a6d4:
    sh         $v0,26($a0)
    li         $at,10112
    sh         $at,24($a0)
    li         $ra,0x8618
    daddu      $ra,$a1,$ra
    sd         $ra,8($a0)
    li         $t9,0x8614
    daddu      $t9,$a1,$t9
    b          .L0000a678
    sd         $t9,0($a0)
.L0000a6fc:
    ld         $a2,16($s2)
    lhu        $a3,24($s2)
    ld         $a2,824($a2)
    addu       $a3,$a3,$a3
    dsll       $a3,$a3,0x2
    lui        $a0,0x22
    daddu      $a2,$a2,$a3
    daddu      $a2,$a0,$a2
    ld         $a3,0($s2)
    lw         $a2,0($a2)
    sw         $a2,0($a3)
    ld         $a1,16($s2)
    lhu        $a2,26($s2)
    ld         $a1,824($a1)
    addu       $a2,$a2,$a2
    dsll       $a2,$a2,0x2
    daddu      $a1,$a1,$a2
    daddu      $a0,$a0,$a1
    ld         $a1,8($s2)
    lw         $a0,0($a0)
    sw         $a0,0($a1)
    lw         $v1,-19328($s1)
    beqz       $v1, .L0000a820
    li         $s2,0x8540
.L0000a75c:
    b          .L0000a6b4
    move       $v0,$zero
.L0000a764:
    li         $a6,10049
    sh         $a6,26($a0)
    li         $a5,10048
    sh         $a5,24($a0)
    li         $a4,0x8610
    daddu      $a4,$a1,$a4
    sd         $a4,8($a0)
    li         $a3,0x860c
    daddu      $a3,$a1,$a3
    b          .L0000a678
    sd         $a3,0($a0)
.L0000a790:
    li         $s2,0x8540
    daddu      $s2,$s0,$s2
    sd         $s3,56($sp)
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    li         $s3,0x8530
    sd         $v0,32($sp)
    beqz       $t8, .L0000a7fc
    daddu      $s3,$s0,$s3
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L0000a874
    nop
.L0000a7d8:
    jal        vsema
    move       $a0,$s3
    b          .L0000a6b0
    ld         $s3,56($sp)
.L0000a7e8:
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$s0,$a0
    b          .L0000a698
    li         $a1,14
.L0000a7fc:
    ld         $s0,32($sp)
    jal        vsema
    move       $a0,$s3
    move       $a0,$s2
    ld         $s3,56($sp)
    jal        mutex_spinunlock
    move       $a1,$s0
    b          .L0000a6b4
    li         $v0,3
.L0000a820:
    daddu      $s2,$s0,$s2
    jal        mutex_spinlock
    move       $a0,$s2
    ld         $t8,-31416($s1)
    sd         $v0,24($sp)
    li         $a0,0x8530
    daddu      $a0,$s0,$a0
    beqz       $t8, .L0000a988
    sd         $a0,0($sp)
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$v0
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($s0)
    beqz       $v0, .L0000a9a4
    nop
.L0000a864:
    jal        vsema
    ld         $a0,0($sp)
    b          .L0000a75c
    nop
.L0000a874:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a0,-31408($s1)
    srl        $a2,$a5,0x5
    andi       $a2,$a2,0x1
    xor        $a0,$a0,$a2
    sltu       $a0,$zero,$a0
    move       $a1,$v0
    beqz       $a0, .L0000a918
    lui        $a2,0x40
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
    daddu      $t2,$a2,$t2
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
    daddu      $a4,$a2,$a4
    or         $a3,$a3,$a6
    sd         $a3,0($a4)
    sync
.L0000a918:
    ld         $t0,824($s0)
    daddu      $t0,$a2,$t0
    ld         $a7,-31416($s1)
    sd         $a7,0($t0)
    sync
    beqz       $a0, .L0000a964
    li         $a5,-2
    lw         $t1,-19664($s1)
    and        $t1,$a5,$t1
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
.L0000a964:
    lw         $t2,-19664($s1)
    sd         $zero,-31416($s1)
    move       $a0,$s2
    ori        $t2,$t2,0x2
    and        $t2,$a5,$t2
    jal        mutex_spinunlock
    sw         $t2,-19664($s1)
    b          .L0000a7d8
    nop
.L0000a988:
    jal        vsema
    ld         $s0,24($sp)
    move       $a0,$s2
    jal        mutex_spinunlock
    move       $a1,$s0
    b          .L0000a75c
    nop
.L0000a9a4:
    jal        mutex_spinlock
    move       $a0,$s2
    lw         $a5,-19664($s1)
    lhu        $a6,-31408($s1)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    move       $a1,$v0
    beqz       $a6, .L0000aa48
    lui        $a2,0x40
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
.L0000aa48:
    ld         $t8,824($s0)
    daddu      $t8,$a2,$t8
    ld         $t3,-31416($s1)
    sd         $t3,0($t8)
    sync
    beqz       $a6, .L0000aa94
    li         $a5,-2
    lw         $t9,-19664($s1)
    and        $t9,$a5,$t9
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
.L0000aa94:
    lw         $ra,-19664($s1)
    ori        $ra,$ra,0x2
    sd         $zero,-31416($s1)
    and        $ra,$a5,$ra
    sw         $ra,-19664($s1)
    jal        mutex_spinunlock
    move       $a0,$s2
    b          .L0000a864
    nop

glabel odsy_i2cReset
    daddiu     $sp,$sp,-80
    sd         $ra,0($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    jal        odsy_i2c_stop
    sd         $s1,64($sp)
    ld         $v1,0($s0)
    sw         $zero,0($v1)
    ld         $v1,0($s0)
    lw         $v0,0($v1)
    ori        $v0,$v0,0x4000
    sw         $v0,0($v1)
    ld         $a4,16($s0)
    lui        $s1,0x1
    sd         $s2,40($sp)
    daddu      $at,$s1,$a4
    lw         $at,-19328($at)
    sd         $s3,48($sp)
    sd         $s4,56($sp)
    beqz       $at, .L0000ad6c
    sd         $s5,72($sp)
.L0000ab0c:
    li         $a1,14
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a4)
    beqz       $v0, .L0000ab54
    ld         $a4,16($s0)
    daddu      $a0,$s1,$a4
    lw         $a0,-19328($a0)
    beqz       $a0, .L0000ac38
    li         $s2,0x8540
.L0000ab30:
    ld         $s2,40($sp)
.L0000ab34:
    ld         $s3,48($sp)
    ld         $s4,56($sp)
    ld         $ra,0($sp)
    ld         $s0,8($sp)
    ld         $s1,64($sp)
    ld         $s5,72($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0000ab54:
    lui        $s2,0x22
    lui        $s3,0x40
    li         $s5,-1
    li         $s4,-1
    lhu        $a5,24($s0)
    dsll32     $s4,$s4,0x0
    ld         $a1,0($s0)
    lui        $a3,0x3000
    ld         $a2,824($a4)
    ori        $a3,$a3,0x1
    sll        $a5,$a5,0xe
    dsrl32     $s5,$s5,0x0
    lwu        $a1,0($a1)
    or         $a3,$a3,$a5
    daddu      $a2,$s3,$a2
    dsll32     $a3,$a3,0x0
    and        $a1,$s5,$a1
    and        $a3,$s4,$a3
    or         $a1,$a1,$a3
    sd         $a1,0($a2)
    sync
    li         $a1,10
.L0000abac:
    jal        odsy_usdelay
    ld         $a0,16($s0)
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000ac90
    nop
    ld         $v0,16($s0)
    daddu      $a1,$s1,$v0
    lw         $a1,-19328($a1)
    bnez       $a1, .L0000ab30
    li         $s2,0x8540
    jal        mutex_spinlock
    daddu      $a0,$s2,$v0
    ld         $a4,16($s0)
    daddu      $a2,$s1,$a4
    ld         $a2,-31416($a2)
    sd         $v0,32($sp)
    beqz       $a2, .L0000b11c
    li         $s4,0x8530
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000af14
    nop
    ld         $a0,16($s0)
.L0000ac28:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L0000ab34
    ld         $s2,40($sp)
.L0000ac38:
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a1,$s1,$a4
    ld         $a1,-31416($a1)
    move       $s3,$v0
    beqz       $a1, .L0000aef4
    li         $s4,0x8530
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000ad84
    nop
    ld         $a0,16($s0)
.L0000ac80:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L0000ab34
    ld         $s2,40($sp)
.L0000ac90:
    lhu        $a0,26($s0)
    ld         $v1,16($s0)
    ld         $v1,824($v1)
    addu       $a0,$a0,$a0
    dsll       $a0,$a0,0x2
    daddu      $v1,$v1,$a0
    ld         $a0,8($s0)
    daddu      $v1,$s2,$v1
    lw         $v1,0($v1)
    sw         $v1,0($a0)
    ld         $v0,8($s0)
    lw         $v0,0($v0)
    srl        $v0,$v0,0xa
    andi       $v0,$v0,0xf
    beqz       $v0, .L0000acd8
    li         $a0,10
    bne        $a0, $v0, .L0000abac
    li         $a1,10
.L0000acd8:
    ld         $a2,0($s0)
    lw         $a1,0($a2)
    li         $a3,-16385
    and        $a1,$a1,$a3
    sw         $a1,0($a2)
    ld         $a0,16($s0)
    li         $a1,15
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000b070
    ld         $a4,16($s0)
    daddu      $a5,$s1,$a4
    lw         $a5,-19328($a5)
    bnez       $a5, .L0000ab30
    li         $s2,0x8540
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $a6,$s1,$a4
    ld         $a6,-31416($a6)
    sd         $v0,24($sp)
    beqz       $a6, .L0000b29c
    li         $s4,0x8530
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000b140
    nop
    ld         $a0,16($s0)
.L0000ad5c:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L0000ab34
    ld         $s2,40($sp)
.L0000ad6c:
    li         $a1,25
    li         $a0,0x8530
    jal        psema
    daddu      $a0,$a4,$a0
    b          .L0000ab0c
    ld         $a4,16($s0)
.L0000ad84:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lw         $a5,-19664($a3)
    lhu        $a6,-31408($a3)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    move       $a1,$v0
    beqz       $a6, .L0000ae4c
    lui        $s3,0x40
    li         $at,-3
    and        $at,$a5,$at
    sw         $at,-19664($a3)
    ld         $at,16($s0)
    daddu      $ra,$s1,$at
    lwu        $ra,-19664($ra)
    li         $t2,-1
    ld         $at,824($at)
    ld         $t0,-30720($gp)
    dsrl32     $t2,$t2,0x0
    and        $ra,$t2,$ra
    daddu      $at,$s3,$at
    or         $ra,$t0,$ra
    sd         $ra,0($at)
    sync
    ld         $t9,16($s0)
    daddu      $t9,$s1,$t9
    lhu        $ra,-31408($t9)
    lw         $t8,-19664($t9)
    li         $at,-33
    andi       $ra,$ra,0x1
    and        $t8,$t8,$at
    sll        $ra,$ra,0x5
    or         $t8,$t8,$ra
    sw         $t8,-19664($t9)
    ld         $t1,16($s0)
    daddu      $t3,$s1,$t1
    lwu        $t3,-19664($t3)
    ld         $t1,824($t1)
    and        $t2,$t2,$t3
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
.L0000ae4c:
    ld         $v1,824($a4)
    daddu      $v1,$s3,$v1
    ld         $v0,-31416($a3)
    sd         $v0,0($v1)
    sync
    beqz       $a6, .L0000aeac
    li         $a5,-2
    ld         $a3,16($s0)
    daddu      $a3,$s1,$a3
    lw         $a2,-19664($a3)
    and        $a2,$a5,$a2
    sw         $a2,-19664($a3)
    ld         $a2,16($s0)
    daddu      $a0,$s1,$a2
    lwu        $a0,-19664($a0)
    li         $a4,-1
    ld         $a2,824($a2)
    dsrl32     $a4,$a4,0x0
    ld         $a3,-30720($gp)
    and        $a0,$a0,$a4
    daddu      $a2,$s3,$a2
    or         $a0,$a0,$a3
    sd         $a0,0($a2)
    sync
.L0000aeac:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a6,-19664($a7)
    ori        $a6,$a6,0x2
    sw         $a6,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a5,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000ac80
    ld         $a0,16($s0)
.L0000aef4:
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    move       $a1,$s3
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000ab34
    ld         $s2,40($sp)
.L0000af14:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lw         $a5,-19664($a3)
    lhu        $a6,-31408($a3)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L0000afd0
    move       $a1,$v0
    li         $ra,-3
    and        $ra,$a5,$ra
    sw         $ra,-19664($a3)
    ld         $ra,16($s0)
    daddu      $t9,$s1,$ra
    lwu        $t9,-19664($t9)
    ld         $ra,824($ra)
    ld         $t0,-30720($gp)
    and        $t9,$s5,$t9
    daddu      $ra,$s3,$ra
    or         $t9,$t0,$t9
    sd         $t9,0($ra)
    sync
    ld         $t8,16($s0)
    daddu      $t8,$s1,$t8
    lhu        $t9,-31408($t8)
    lw         $t3,-19664($t8)
    li         $ra,-33
    andi       $t9,$t9,0x1
    and        $t3,$t3,$ra
    sll        $t9,$t9,0x5
    or         $t3,$t3,$t9
    sw         $t3,-19664($t8)
    ld         $t1,16($s0)
    daddu      $t2,$s1,$t1
    lwu        $t2,-19664($t2)
    ld         $t1,824($t1)
    and        $t2,$s5,$t2
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
.L0000afd0:
    ld         $v0,824($a4)
    daddu      $v0,$s3,$v0
    ld         $at,-31416($a3)
    sd         $at,0($v0)
    sync
    beqz       $a6, .L0000b028
    li         $a5,-2
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    lw         $a0,-19664($a2)
    and        $a0,$a5,$a0
    sw         $a0,-19664($a2)
    ld         $a0,16($s0)
    daddu      $v1,$s1,$a0
    lwu        $v1,-19664($v1)
    ld         $a0,824($a0)
    ld         $a2,-30720($gp)
    and        $v1,$s5,$v1
    daddu      $a0,$s3,$a0
    or         $v1,$v1,$a2
    sd         $v1,0($a0)
    sync
.L0000b028:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a6,-19664($a7)
    ori        $a6,$a6,0x2
    sw         $a6,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a5,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000ac28
    ld         $a0,16($s0)
.L0000b070:
    lhu        $t8,24($s0)
    ld         $t1,0($s0)
    lui        $t3,0x3000
    ld         $t2,824($a4)
    ori        $t3,$t3,0x1
    sll        $t8,$t8,0xe
    lwu        $t1,0($t1)
    or         $t3,$t3,$t8
    daddu      $t2,$s3,$t2
    dsll32     $t3,$t3,0x0
    and        $t1,$s5,$t1
    and        $t3,$s4,$t3
    or         $t1,$t1,$t3
    sd         $t1,0($t2)
    sync
    ld         $a4,16($s0)
    daddu      $t0,$s1,$a4
    lw         $t0,-19328($t0)
    bnez       $t0, .L0000ab34
    ld         $s2,40($sp)
    li         $s2,0x8540
    jal        mutex_spinlock
    daddu      $a0,$s2,$a4
    ld         $a4,16($s0)
    daddu      $t9,$s1,$a4
    ld         $t9,-31416($t9)
    sd         $v0,16($sp)
    beqz       $t9, .L0000b41c
    li         $s4,0x8530
    daddu      $a0,$s2,$a4
    jal        mutex_spinunlock
    move       $a1,$v0
    ld         $a0,16($s0)
    li         $a1,12
    jal        odsy_poll_dfifo_level
    ld         $a0,824($a0)
    beqz       $v0, .L0000b2c0
    nop
    ld         $a0,16($s0)
.L0000b10c:
    jal        vsema
    daddu      $a0,$s4,$a0
    b          .L0000ab34
    ld         $s2,40($sp)
.L0000b11c:
    ld         $s1,32($sp)
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000ab34
    ld         $s2,40($sp)
.L0000b140:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lw         $a5,-19664($a3)
    lhu        $a6,-31408($a3)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L0000b1fc
    move       $a1,$v0
    li         $ra,-3
    and        $ra,$a5,$ra
    sw         $ra,-19664($a3)
    ld         $ra,16($s0)
    daddu      $t9,$s1,$ra
    lwu        $t9,-19664($t9)
    ld         $ra,824($ra)
    ld         $t0,-30720($gp)
    and        $t9,$s5,$t9
    daddu      $ra,$s3,$ra
    or         $t9,$t0,$t9
    sd         $t9,0($ra)
    sync
    ld         $t8,16($s0)
    daddu      $t8,$s1,$t8
    lhu        $t9,-31408($t8)
    lw         $t3,-19664($t8)
    li         $ra,-33
    andi       $t9,$t9,0x1
    and        $t3,$t3,$ra
    sll        $t9,$t9,0x5
    or         $t3,$t3,$t9
    sw         $t3,-19664($t8)
    ld         $t1,16($s0)
    daddu      $t2,$s1,$t1
    lwu        $t2,-19664($t2)
    ld         $t1,824($t1)
    and        $t2,$s5,$t2
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
.L0000b1fc:
    ld         $v0,824($a4)
    daddu      $v0,$s3,$v0
    ld         $at,-31416($a3)
    sd         $at,0($v0)
    sync
    beqz       $a6, .L0000b254
    li         $a5,-2
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    lw         $a0,-19664($a2)
    and        $a0,$a5,$a0
    sw         $a0,-19664($a2)
    ld         $a0,16($s0)
    daddu      $v1,$s1,$a0
    lwu        $v1,-19664($v1)
    ld         $a0,824($a0)
    ld         $a2,-30720($gp)
    and        $v1,$s5,$v1
    daddu      $a0,$s3,$a0
    or         $v1,$v1,$a2
    sd         $v1,0($a0)
    sync
.L0000b254:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a6,-19664($a7)
    ori        $a6,$a6,0x2
    sw         $a6,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a5,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000ad5c
    ld         $a0,16($s0)
.L0000b29c:
    ld         $s1,24($sp)
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000ab34
    ld         $s2,40($sp)
.L0000b2c0:
    ld         $a0,16($s0)
    jal        mutex_spinlock
    daddu      $a0,$s2,$a0
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
    lw         $a5,-19664($a3)
    lhu        $a6,-31408($a3)
    srl        $a7,$a5,0x5
    andi       $a7,$a7,0x1
    xor        $a6,$a6,$a7
    sltu       $a6,$zero,$a6
    beqz       $a6, .L0000b37c
    move       $a1,$v0
    li         $ra,-3
    and        $ra,$a5,$ra
    sw         $ra,-19664($a3)
    ld         $ra,16($s0)
    daddu      $t9,$s1,$ra
    lwu        $t9,-19664($t9)
    ld         $ra,824($ra)
    ld         $t0,-30720($gp)
    and        $t9,$s5,$t9
    daddu      $ra,$s3,$ra
    or         $t9,$t0,$t9
    sd         $t9,0($ra)
    sync
    ld         $t8,16($s0)
    daddu      $t8,$s1,$t8
    lhu        $t9,-31408($t8)
    lw         $t3,-19664($t8)
    li         $ra,-33
    andi       $t9,$t9,0x1
    and        $t3,$t3,$ra
    sll        $t9,$t9,0x5
    or         $t3,$t3,$t9
    sw         $t3,-19664($t8)
    ld         $t1,16($s0)
    daddu      $t2,$s1,$t1
    lwu        $t2,-19664($t2)
    ld         $t1,824($t1)
    and        $t2,$s5,$t2
    daddu      $t1,$s3,$t1
    or         $t0,$t0,$t2
    sd         $t0,0($t1)
    sync
    ld         $a4,16($s0)
    daddu      $a3,$s1,$a4
.L0000b37c:
    ld         $v0,824($a4)
    daddu      $v0,$s3,$v0
    ld         $at,-31416($a3)
    sd         $at,0($v0)
    sync
    beqz       $a6, .L0000b3d4
    li         $a5,-2
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    lw         $a0,-19664($a2)
    and        $a0,$a5,$a0
    sw         $a0,-19664($a2)
    ld         $a0,16($s0)
    daddu      $v1,$s1,$a0
    lwu        $v1,-19664($v1)
    ld         $a0,824($a0)
    ld         $a2,-30720($gp)
    and        $v1,$s5,$v1
    daddu      $a0,$s3,$a0
    or         $v1,$v1,$a2
    sd         $v1,0($a0)
    sync
.L0000b3d4:
    ld         $a7,16($s0)
    daddu      $a7,$s1,$a7
    lw         $a6,-19664($a7)
    ori        $a6,$a6,0x2
    sw         $a6,-19664($a7)
    ld         $a4,16($s0)
    daddu      $a4,$s1,$a4
    lw         $a3,-19664($a4)
    and        $a3,$a5,$a3
    sw         $a3,-19664($a4)
    ld         $a2,16($s0)
    daddu      $a2,$s1,$a2
    sd         $zero,-31416($a2)
    ld         $a0,16($s0)
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000b10c
    ld         $a0,16($s0)
.L0000b41c:
    ld         $s1,16($sp)
    jal        vsema
    daddu      $a0,$s4,$a4
    ld         $a0,16($s0)
    move       $a1,$s1
    jal        mutex_spinunlock
    daddu      $a0,$s2,$a0
    b          .L0000ab34
    ld         $s2,40($sp)
