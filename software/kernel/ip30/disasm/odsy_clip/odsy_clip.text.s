.section .text
.set noat
.set noreorder


glabel gf_OdsyValidateClip
    ld         $a4,120($a1)
    ld         $a7,128($a1)
    lw         $t1,120($a4)
    ld         $t0,128($a4)
    daddiu     $sp,$sp,-80
    sd         $s1,32($sp)
    ld         $s1,40($a0)
    sd         $s0,24($sp)
    lw         $a6,80($s1)
    ld         $s0,112($a1)
    addiu      $a6,$a6,1
    sw         $a6,80($s1)
    lw         $a5,108($s0)
    lw         $a6,104($a4)
    sd         $ra,56($sp)
    li         $t2,-8192
    lw         $t8,112($s0)
    andi       $a6,$a6,0x1fff
    and        $a5,$t2,$a5
    or         $a5,$a5,$a6
    sw         $a5,108($s0)
    lw         $t3,108($a4)
    sd         $s2,40($sp)
    and        $t2,$t2,$t8
    ld         $a6,176($s0)
    andi       $t3,$t3,0x1fff
    or         $t2,$t2,$t3
    sw         $t2,112($s0)
    sw         $a5,11104($a6)
    move       $s2,$a0
    dsll       $v0,$t1,0x4
    ld         $v1,176($s0)
    daddiu     $a7,$a7,96
    daddu      $v0,$t0,$v0
    lw         $at,112($s0)
    daddiu     $a4,$a4,96
    blez       $t1, .L000000a8
    sw         $at,11108($v1)
    lw         $t3,-8($v0)
    sw         $t3,116($s0)
    lw         $t2,-4($v0)
    sw         $t2,120($s0)
.L000000a8:
    lw         $t9,8($a4)
    lw         $ra,12($a4)
    andi       $t9,$t9,0xffff
    sll        $ra,$ra,0x10
    or         $t9,$t9,$ra
    sw         $t9,148($s0)
    lw         $t8,8($a7)
    li         $a6,-4096
    lw         $t9,12($a7)
    move       $a5,$zero
    lui        $v0,0xff00
    andi       $t8,$t8,0xffff
    sll        $t9,$t9,0x10
    ori        $v0,$v0,0xfff
    or         $t8,$t8,$t9
    sw         $t8,152($s0)
.L000000e8:
    dsll       $at,$a5,0x3
    daddu      $at,$s0,$at
    lw         $ra,8($at)
    addiu      $a5,$a5,1
    lw         $a0,12($at)
    slti       $v1,$a5,4
    and        $ra,$v0,$ra
    and        $a0,$v0,$a0
    ori        $ra,$ra,0x1000
    and        $a0,$a6,$a0
    sw         $a0,12($at)
    and        $ra,$a6,$ra
    ori        $ra,$ra,0x1
    bnez       $v1, .L000000e8
    sw         $ra,8($at)
    lw         $v1,48($a4)
    beqz       $v1, .L00000284
    lw         $a0,4($s0)
    lui        $a1,0x1
    or         $a1,$a0,$a1
    sw         $a1,4($s0)
    lw         $a3,56($a4)
    li         $a2,0xff00
    andi       $a3,$a3,0x3c00
    li         $a5,-256
    nor        $a2,$a2,$zero
    beqz       $a3, .L00000350
    and        $a1,$a1,$a2
    ori        $a3,$a1,0x700
    sw         $a3,4($s0)
    lw         $a2,40($a4)
    andi       $a2,$a2,0xff
    and        $a3,$a5,$a3
    or         $a2,$a2,$a3
    sw         $a2,4($s0)
.L00000174:
    lw         $t8,8($a4)
    slt        $a7,$t8,$zero
    lw         $t9,8($s0)
    lui        $a5,0xff
    movn       $t8,$zero,$a7
    ori        $a5,$a5,0xf000
    sll        $t8,$t8,0xc
    and        $t9,$v0,$t9
    and        $t8,$a5,$t8
    or         $t8,$t8,$t9
    sw         $t8,8($s0)
    lw         $t3,12($a4)
    slt        $t9,$t3,$zero
    movn       $t3,$zero,$t9
    and        $t8,$a6,$t8
    andi       $t3,$t3,0xfff
    or         $t3,$t3,$t8
    sw         $t3,8($s0)
    lw         $t2,16($a4)
    lw         $t1,8($a4)
    ld         $a7,2136($s1)
    lw         $a7,32($a7)
    addu       $t1,$t1,$t2
    addiu      $t1,$t1,-1
    slt        $t0,$a7,$t1
    lw         $a3,12($s0)
    movz       $a7,$t1,$t0
    sll        $a7,$a7,0xc
    and        $a3,$v0,$a3
    and        $a5,$a5,$a7
    or         $a3,$a3,$a5
    sw         $a3,12($s0)
    lw         $t1,20($a4)
    lw         $t0,12($a4)
    ld         $a5,2136($s1)
    lw         $a5,36($a5)
    addu       $t0,$t0,$t1
    addiu      $t0,$t0,-1
    slt        $a7,$a5,$t0
    movz       $a5,$t0,$a7
    and        $a3,$a6,$a3
    andi       $a5,$a5,0xfff
    or         $a3,$a3,$a5
    sw         $a3,12($s0)
.L00000224:
    ld         $a0,808($s1)
.L00000228:
    jal        odsy_flow_am_i_attached
    sd         $s3,64($sp)
    beqz       $v0, .L000003e8
    move       $s3,$v0
    move       $a0,$s1
.L0000023c:
    jal        odsyClipMask
    move       $a1,$s0
    move       $a0,$s1
    jal        odsyClipPush
    move       $a1,$s0
    beqz       $s3, .L00000374
    ld         $s0,24($sp)
    ld         $s1,32($sp)
.L0000025c:
    ld         $s3,64($sp)
    ld         $at,40($s2)
    ld         $ra,56($sp)
    lw         $t9,80($at)
    move       $v0,$zero
    ld         $s2,40($sp)
    daddiu     $sp,$sp,80
    addiu      $t9,$t9,-1
    jr         $ra
    sw         $t9,80($at)
.L00000284:
    lui        $at,0x1
    nor        $at,$at,$zero
    and        $at,$a0,$at
    sw         $at,4($s0)
    lw         $ra,44($a4)
    addiu      $a7,$t1,-2
    lui        $t2,0xff
    slti       $a5,$t1,2
    ori        $a1,$t2,0xf000
    beqz       $ra, .L00000428
    li         $a0,1
.L000002b0:
    bnez       $a5, .L00000224
    move       $a0,$zero
.L000002b8:
    dsll       $a5,$a0,0x4
    daddu      $a5,$t0,$a5
    lw         $t1,0($a5)
    dsll       $a2,$a0,0x3
    daddu      $a2,$s0,$a2
    lw         $t3,8($a2)
    sll        $t2,$t1,0xc
    and        $t2,$a1,$t2
    and        $t3,$v0,$t3
    or         $t2,$t2,$t3
    sw         $t2,8($a2)
    lw         $a4,8($a5)
    addu       $a4,$a4,$t1
    addiu      $a4,$a4,-1
    lw         $t1,12($a2)
    sll        $a4,$a4,0xc
    and        $a4,$a1,$a4
    and        $t1,$v0,$t1
    or         $a4,$a4,$t1
    sw         $a4,12($a2)
    lw         $a3,4($a5)
    andi       $t1,$a3,0xfff
    and        $t2,$a6,$t2
    or         $t1,$t1,$t2
    sw         $t1,8($a2)
    lw         $v1,12($a5)
    addiu      $a0,$a0,1
    addu       $v1,$v1,$a3
    slt        $a3,$a7,$a0
    addiu      $v1,$v1,-1
    pref       0x0,256($a5)
    andi       $v1,$v1,0xfff
    and        $a4,$a6,$a4
    or         $v1,$v1,$a4
    beqz       $a3, .L000002b8
    sw         $v1,12($a2)
    b          .L00000228
    ld         $a0,808($s1)
.L00000350:
    ori        $a7,$a1,0xf800
    sw         $a7,4($s0)
    lw         $t0,40($a4)
    sll        $t0,$t0,0x3
    and        $a7,$a5,$a7
    andi       $t0,$t0,0xff
    or         $a7,$a7,$t0
    b          .L00000174
    sw         $a7,4($s0)
.L00000374:
    jal        splhi
    nop
    lw         $t1,4($s2)
    li         $t2,-3
    and        $t1,$t1,$t2
    sw         $t1,4($s2)
    ld         $a0,808($s1)
    beqz       $a0, .L000003d8
    move       $s3,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000003d8
    li         $ra,0x85c8
    daddu      $ra,$ra,$s1
    li         $t8,1
    sw         $t8,0($ra)
    ld         $t9,824($s1)
    sw         $t8,4220($t9)
    sync
    ld         $t3,824($s1)
    ld         $a0,808($s1)
    lw         $t3,4204($t3)
    move       $a1,$s2
    jal        gfx_flow_detach_me
    sw         $t3,0($sp)
.L000003d8:
    jal        splx
    move       $a0,$s3
    b          .L0000025c
    ld         $s1,32($sp)
.L000003e8:
    jal        splhi
    nop
    lw         $at,4($s2)
    ori        $at,$at,0x2
    sw         $at,4($s2)
    ld         $a0,808($s1)
    beqz       $a0, .L00000418
    sd         $v0,48($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000004b8
    nop
.L00000418:
    jal        splx
    ld         $a0,48($sp)
    b          .L0000023c
    move       $a0,$s1
.L00000428:
    lw         $v1,24($a4)
    bne        $v1, $a0, .L000002b0
    nop
    lw         $t1,8($a4)
    move       $a2,$t2
    lw         $t2,8($s0)
    ori        $a2,$a2,0xf000
    sll        $t1,$t1,0xc
    and        $t1,$a2,$t1
    and        $t2,$v0,$t2
    or         $t1,$t1,$t2
    sw         $t1,8($s0)
    lw         $t0,12($a4)
    andi       $t0,$t0,0xfff
    and        $t1,$a6,$t1
    or         $t0,$t0,$t1
    sw         $t0,8($s0)
    lw         $a5,8($a4)
    lw         $a7,16($a4)
    addu       $a5,$a5,$a7
    addiu      $a5,$a5,-1
    lw         $a3,12($s0)
    sll        $a5,$a5,0xc
    and        $a2,$a2,$a5
    and        $a3,$v0,$a3
    or         $a2,$a2,$a3
    sw         $a2,12($s0)
    lw         $a1,12($a4)
    lw         $a3,20($a4)
    addu       $a1,$a1,$a3
    addiu      $a1,$a1,-1
    andi       $a1,$a1,0xfff
    and        $a2,$a6,$a2
    or         $a1,$a1,$a2
    b          .L00000224
    sw         $a1,12($s0)
.L000004b8:
    ld         $a0,808($s1)
    jal        gfx_flow_attach_me
    move       $a1,$s2
    ld         $a0,808($s1)
    lui        $a3,0x1
    daddu      $a3,$s1,$a3
    sd         $a3,16($sp)
    lw         $a3,-31292($a3)
    jal        gfx_flow_credit_tnum_get
    sd         $a3,8($sp)
    ld         $a7,-30720($gp)
    ld         $a6,8($sp)
    ld         $a5,16($sp)
    and        $a6,$a6,$a7
    sll        $a7,$v0,0xc
    or         $a6,$a6,$a7
    sw         $a6,-31292($a5)
    ld         $a7,824($s1)
    sw         $a6,4212($a7)
    sync
    sw         $zero,-31288($a5)
    ld         $a4,824($s1)
    sw         $zero,4220($a4)
    sync
    b          .L00000418
    nop

glabel odsyClipMask
    daddiu     $sp,$sp,-96
    sd         $s0,40($sp)
    sd         $ra,56($sp)
    sd         $s8,16($sp)
    sd         $s1,32($sp)
    sd         $s3,72($sp)
    lw         $s3,136($a1)
    sd         $s5,24($sp)
    lw         $s5,132($a1)
    sd         $s4,80($sp)
    lw         $s4,128($a1)
    sd         $s2,64($sp)
    sd         $s6,88($sp)
    ld         $s6,224($a1)
    lw         $s2,124($a1)
    ld         $s6,120($s6)
    daddiu     $a2,$a1,8
    move       $a6,$zero
    sd         $s7,48($sp)
    lui        $a3,0xff
    li         $s8,1
    lw         $s7,104($s6)
    ori        $a3,$a3,0xf000
    lui        $s1,0xff00
    lw         $s6,108($s6)
    ori        $s1,$s1,0xfff
    sw         $zero,40($a1)
    addu       $s2,$s2,$s7
    sd         $s7,0($sp)
    addu       $s4,$s4,$s6
    addu       $s5,$s5,$s7
    sd         $s6,8($sp)
    b          .L000005ec
    addu       $s3,$s3,$s6
.L000005a8:
    andi       $t8,$a5,0xfff
    andi       $v0,$a4,0xfff
    li         $ra,-4096
    and        $v1,$s1,$a7
    and        $a0,$s1,$t0
    sll        $at,$t1,0xc
    or         $a0,$s0,$a0
    and        $at,$a3,$at
    and        $a0,$ra,$a0
    or         $at,$at,$v1
    or         $v0,$v0,$a0
    sw         $v0,4($a2)
    and        $ra,$ra,$at
    or         $t8,$t8,$ra
    sw         $t8,0($a2)
.L000005e4:
    beqz       $t9, .L000006d8
    daddiu     $a2,$a2,8
.L000005ec:
    move       $a5,$s4
    addiu      $a6,$a6,1
    lw         $a7,0($a2)
    move       $t1,$s2
    slti       $t9,$a6,4
    lw         $t0,4($a2)
    andi       $t3,$a7,0xfff
    srl        $ra,$a7,0xc
    andi       $t8,$t0,0xfff
    andi       $ra,$ra,0xfff
    srl        $t2,$t0,0xc
    slt        $v0,$s3,$t8
    beq        $ra, $s8, .L00000708
    andi       $t2,$t2,0xfff
    slt        $a4,$s4,$t3
.L00000628:
    movn       $a5,$t3,$a4
    move       $s6,$t2
    slt        $v1,$s2,$ra
    slt        $a0,$s5,$t2
    movn       $t1,$ra,$v1
    move       $a4,$t8
    movn       $s6,$s5,$a0
    movn       $a4,$s3,$v0
    slt        $at,$s6,$t1
    sll        $s7,$s6,0xc
    slt        $t2,$a4,$a5
    ld         $t8,8($sp)
    bnez       $at, .L000005a8
    and        $s0,$a3,$s7
    subu       $v1,$a5,$t8
    bnez       $t2, .L000005a8
    ld         $at,0($sp)
    subu       $t8,$a4,$t8
    lw         $t0,40($a1)
    dsll       $t0,$t0,0x2
    daddu      $t0,$a1,$t0
    subu       $a7,$t1,$at
    sw         $a7,44($t0)
    lw         $a0,40($a1)
    dsll       $a0,$a0,0x2
    daddu      $a0,$a1,$a0
    sw         $v1,60($a0)
    lw         $v0,40($a1)
    dsll       $v0,$v0,0x2
    subu       $at,$s6,$at
    daddu      $v0,$a1,$v0
    addiu      $at,$at,1
    sw         $at,76($v0)
    lw         $ra,40($a1)
    dsll       $ra,$ra,0x2
    daddu      $ra,$a1,$ra
    addiu      $t8,$t8,1
    sw         $t8,92($ra)
    lw         $t3,40($a1)
    addiu      $t3,$t3,1
    sw         $t3,40($a1)
    lw         $t0,4($a2)
    b          .L000005a8
    lw         $a7,0($a2)
.L000006d8:
    ld         $s0,40($sp)
    ld         $s1,32($sp)
    ld         $s2,64($sp)
    ld         $s3,72($sp)
    ld         $s4,80($sp)
    ld         $s5,24($sp)
    ld         $ra,56($sp)
    ld         $s6,88($sp)
    ld         $s7,48($sp)
    ld         $s8,16($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00000708:
    bnez       $t2, .L00000628
    slt        $a4,$s4,$t3
    bne        $t3, $s8, .L00000628
    slt        $a4,$s4,$t3
    bnez       $t8, .L00000628
    slt        $a4,$s4,$t3
    b          .L000005e4
    nop

glabel odsyClipPush
    daddiu     $sp,$sp,-16
    lui        $t9,0x9000
    sd         $t9,8($sp)
    li         $a6,-1
    ld         $a3,824($a0)
    dsll32     $a6,$a6,0x0
    lw         $v1,1496($a0)
    lui        $a4,0x11
    ld         $t0,176($a1)
    lui        $t8,0x1
    daddu      $a3,$a3,$a4
    move       $t3,$t8
    ori        $t8,$t8,0x443
    sw         $t8,0($a3)
    li         $a4,250
    sync
    sw         $a4,0($a3)
    ori        $t3,$t3,0x46
    sync
    sw         $t3,0($a3)
    lui        $v0,0x1
    sync
    sw         $t3,0($a3)
    ori        $v0,$v0,0x19
    sync
    sw         $v0,0($a3)
    sync
    sw         $t8,0($a3)
    li         $a5,150
    sync
    sw         $a5,0($a3)
    sync
    sw         $t3,0($a3)
    sync
    sw         $t3,0($a3)
    sync
    sw         $t3,0($a3)
    sync
    sw         $t3,0($a3)
    sync
    sw         $t8,0($a3)
    sync
    sw         $a4,0($a3)
    sync
    sw         $t3,0($a3)
    lui        $t1,0x3100
    sync
    sw         $t3,0($a3)
    lui        $a2,0x3100
    sync
    lw         $a7,9888($t0)
    lui        $a0,0x9000
    ori        $a2,$a2,0x8140
    sw         $a2,0($a3)
    ori        $a0,$a0,0xbda2
    sync
    sw         $a0,0($a3)
    lui        $at,0x1
    sync
    sw         $v0,0($a3)
    ori        $at,$at,0x841
    sync
    sw         $at,0($a3)
    ori        $t9,$t9,0x8116
    sync
    lw         $at,108($a1)
    move       $a4,$zero
    dsll32     $v1,$v1,0x0
    sw         $at,0($a3)
    and        $v1,$a6,$v1
    sync
    lw         $v0,112($a1)
    sra        $t2,$a7,0xa
    lui        $at,0x1
    sw         $v0,0($a3)
    sync
    ori        $at,$at,0x840
    sw         $at,0($a3)
    li         $a5,-1
    sync
    lwu        $v0,4($a1)
    sd         $a7,0($sp)
    andi       $a7,$a7,0x3ff
    dsrl32     $a5,$a5,0x0
    lui        $at,0x1
    and        $v0,$a5,$v0
    or         $v0,$v0,$v1
    sd         $v0,0($a3)
    sync
    ori        $at,$at,0x204b
    sw         $at,0($a3)
    sync
    dsll       $v0,$a4,0x3
.L0000089c:
    daddu      $v0,$a1,$v0
    lwu        $v1,8($v0)
    addiu      $a4,$a4,1
    lwu        $v0,12($v0)
    slti       $at,$a4,4
    dsll32     $v1,$v1,0x0
    and        $v0,$a5,$v0
    and        $v1,$a6,$v1
    or         $v0,$v0,$v1
    sd         $v0,0($a3)
    sync
    bnez       $at, .L0000089c
    dsll       $v0,$a4,0x3
    sll        $a0,$t2,0x17
    ori        $a2,$t1,0x8000
    or         $a0,$a7,$a0
    or         $a0,$a0,$a2
    sw         $a0,0($a3)
    sync
    lw         $v1,6956($t0)
    sll        $v1,$v1,0x4
    bltz       $v1, .L00000a40
    lui        $a0,0x1
    sw         $t9,0($a3)
    sync
.L00000900:
    sw         $t8,0($a3)
    sync
    li         $t9,150
    sw         $t9,0($a3)
    sync
    sw         $t3,0($a3)
    sync
    sw         $t3,0($a3)
    sync
    sw         $t3,0($a3)
    sync
    sw         $t3,0($a3)
    sync
    sw         $t8,0($a3)
    sync
    li         $t8,250
    sw         $t8,0($a3)
    sync
    sw         $t3,0($a3)
    sync
    sw         $t3,0($a3)
    sync
    lwu        $t2,140($a1)
    li         $t3,193
    dsll32     $t3,$t3,0x3
    and        $t2,$a5,$t2
    or         $t2,$t2,$t3
    sd         $t2,0($a3)
    sync
    lwu        $t1,148($a1)
    li         $t2,773
    dsll32     $t2,$t2,0x1
    and        $t1,$a5,$t1
    or         $t1,$t1,$t2
    sd         $t1,0($a3)
    sync
    lwu        $t0,144($a1)
    li         $t1,1545
    dsll32     $t1,$t1,0x0
    and        $t0,$a5,$t0
    or         $t0,$t0,$t1
    sd         $t0,0($a3)
    sync
    lwu        $a7,152($a1)
    li         $t0,1547
    dsll32     $t0,$t0,0x0
    and        $a7,$a5,$a7
    or         $a7,$a7,$t0
    sd         $a7,0($a3)
    sync
    lwu        $a6,156($a1)
    li         $a7,387
    dsll32     $a7,$a7,0x2
    and        $a6,$a5,$a6
    or         $a6,$a6,$a7
    sd         $a6,0($a3)
    sync
    lwu        $a4,160($a1)
    li         $a6,1549
    dsll32     $a6,$a6,0x0
    and        $a4,$a5,$a4
    or         $a4,$a4,$a6
    sd         $a4,0($a3)
    sync
    lwu        $a2,164($a1)
    li         $a4,775
    dsll32     $a4,$a4,0x1
    and        $a2,$a5,$a2
    or         $a2,$a2,$a4
    sd         $a2,0($a3)
    sync
    lwu        $a1,168($a1)
    li         $a2,1551
    dsll32     $a2,$a2,0x0
    and        $a1,$a5,$a1
    or         $a1,$a1,$a2
    sd         $a1,0($a3)
    sync
    jr         $ra
    daddiu     $sp,$sp,16
.L00000a40:
    ori        $a0,$a0,0x841
    sw         $a0,0($a3)
    sync
    sw         $zero,0($a3)
    sync
    lui        $v1,0x1
    sw         $zero,0($a3)
    sync
    ori        $v1,$v1,0x204b
    sw         $v1,0($a3)
    sync
    lui        $v0,0xff
    sw         $zero,0($a3)
    sync
    ori        $v0,$v0,0xffff
    sw         $v0,0($a3)
    sync
    sw         $zero,0($a3)
    sync
    sw         $zero,0($a3)
    sync
    sw         $zero,0($a3)
    sync
    sw         $zero,0($a3)
    sync
    sw         $zero,0($a3)
    sync
    lui        $at,0x1
    sw         $zero,0($a3)
    sync
    ori        $at,$at,0x840
    sw         $at,0($a3)
    sync
    sw         $zero,0($a3)
    sync
    sw         $zero,0($a3)
    sync
    b          .L00000900
    nop

glabel gf_OdsyValidateBanks
    jr         $ra
    move       $v0,$zero

glabel gf_OdsySetNullClip
    sw         $zero,60($a0)
    sw         $zero,48($a0)
    li         $at,-1
    sw         $at,40($a0)
    sw         $zero,24($a0)
    sw         $zero,20($a0)
    sw         $zero,16($a0)
    sw         $zero,12($a0)
    sw         $zero,8($a0)
    li         $v0,1
    sw         $v0,52($a0)
    sw         $v0,44($a0)
    jr         $ra
    move       $v0,$zero

glabel gfP_OdsySetClipMask
    daddiu     $sp,$sp,-48
    sd         $a0,0($sp)
    sd         $a1,8($sp)
    sd         $a2,24($sp)
    sd         $ra,40($sp)
    sw         $zero,0($a3)
    ld         $v0,72($a0)
    sd         $s0,32($sp)
    ld         $v0,112($v0)
    move       $s0,$a3
    jal        RRM_CheckValidFault
    sd         $v0,16($sp)
    bltz       $v0, .L00000ba4
    li         $a0,14
    ld         $a1,16($sp)
    li         $a2,16
    ld         $a0,24($sp)
    jal        copyin
    daddiu     $a1,$a1,124
    bnez       $v0, .L00000bac
    ld         $a3,8($sp)
    move       $a1,$a3
    move       $a2,$a3
    ld         $a3,120($a3)
    ld         $a0,0($sp)
    jal        gf_OdsyValidateClip
    daddiu     $a3,$a3,96
    move       $a0,$v0
    sw         $v0,0($s0)
.L00000b90:
    ld         $ra,40($sp)
    move       $v0,$a0
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000ba4:
    b          .L00000b90
    sw         $a0,0($s0)
.L00000bac:
    ld         $a1,-30720($gp)
    jal        cmn_err
    li         $a0,4
    li         $a0,14
    b          .L00000b90
    sw         $a0,0($s0)

glabel gfP_OdsyGetDrawableGeometry
    sw         $zero,0($a3)
    daddiu     $sp,$sp,-48
    sd         $a1,16($sp)
    sd         $a2,24($sp)
    sd         $s0,32($sp)
    sd         $ra,40($sp)
    jal        RRM_CheckValidFault
    move       $s0,$a3
    bltz       $v0, .L00000c3c
    ld         $at,16($sp)
    ld         $at,112($at)
    ld         $a1,24($sp)
    lw         $a0,108($at)
    sw         $a0,0($sp)
    lw         $v1,112($at)
    sw         $v1,4($sp)
    lw         $v0,116($at)
    sw         $v0,8($sp)
    li         $a2,16
    lw         $at,120($at)
    daddiu     $a0,$sp,0
    jal        copyout
    sw         $at,12($sp)
    bnez       $v0, .L00000c48
    ld         $a1,-30720($gp)
    lw         $v0,0($s0)
.L00000c2c:
    ld         $ra,40($sp)
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000c3c:
    li         $v0,14
    b          .L00000c2c
    sw         $v0,0($s0)
.L00000c48:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,40
    li         $v0,14
    b          .L00000c2c
    sw         $v0,0($s0)

glabel gfP_OdsyClearBuffer
    sw         $zero,0($a3)
    daddiu     $sp,$sp,-400
    sd         $a1,168($sp)
    sd         $a2,176($sp)
    sd         $s7,200($sp)
    move       $s7,$a0
    sd         $s0,192($sp)
    sd         $ra,184($sp)
    jal        RRM_CheckValidFault
    move       $s0,$a3
    bltz       $v0, .L00000d88
    sd         $s8,304($sp)
    ld         $v1,40($s7)
    ld         $a0,176($sp)
    lw         $v0,80($v1)
    ld         $at,168($sp)
    addiu      $v0,$v0,1
    sw         $v0,80($v1)
    ld         $v0,120($at)
    ld         $at,112($at)
    sd         $at,296($sp)
    daddiu     $v0,$v0,96
    sd         $v0,152($sp)
    ld         $s8,40($s7)
    ld         $at,176($at)
    ld         $v1,824($s8)
    li         $a2,44
    sd         $v1,144($sp)
    daddiu     $a1,$sp,0
    jal        copyin
    sd         $at,160($sp)
    bnez       $v0, .L00001438
    ld         $a0,296($sp)
    ld         $v1,160($sp)
    lw         $v1,6956($v1)
    sll        $v1,$v1,0x4
    bltz       $v1, .L00000d94
    li         $t9,1
    ld         $a1,152($sp)
    lw         $a1,48($a1)
    beqz       $a1, .L00000d14
    move       $v0,$zero
    lw         $a2,40($sp)
    beqz       $a2, .L00001314
    move       $v0,$zero
.L00000d14:
    sltiu      $a1,$v0,1
    beqz       $a1, .L00000d58
    daddiu     $a7,$a0,92
    sd         $a7,80($sp)
    daddiu     $a6,$a0,60
    sd         $a6,72($sp)
    daddiu     $a5,$a0,76
    sd         $a5,64($sp)
    daddiu     $a4,$a0,44
    sd         $a4,56($sp)
    ld         $a3,224($a0)
    lw         $a4,40($a0)
    ld         $a3,120($a3)
    sw         $a4,88($sp)
    lw         $a3,104($a3)
    bnez       $a1, .L00000dbc
    sw         $a3,48($sp)
.L00000d58:
    ld         $t1,40($s7)
    lw         $t0,80($t1)
    addiu      $t0,$t0,-1
    sw         $t0,80($t1)
    li         $v0,14
    sw         $v0,0($s0)
.L00000d70:
    ld         $ra,184($sp)
    ld         $s8,304($sp)
    ld         $s0,192($sp)
    ld         $s7,200($sp)
    jr         $ra
    daddiu     $sp,$sp,400
.L00000d88:
    li         $v0,14
    b          .L00000d70
    sw         $v0,0($s0)
.L00000d94:
    sw         $t9,88($sp)
    daddiu     $t8,$sp,32
    sd         $t8,80($sp)
    daddiu     $t3,$sp,28
    sd         $t3,72($sp)
    daddiu     $t2,$sp,24
    sd         $t2,64($sp)
    daddiu     $t1,$sp,20
    sd         $t1,56($sp)
    sw         $zero,48($sp)
.L00000dbc:
    lw         $ra,40($a0)
    blez       $ra, .L00000d58
    nop
    ld         $a0,808($s8)
    lw         $at,36($sp)
    jal        odsy_flow_am_i_attached
    sd         $at,112($sp)
    beqz       $v0, .L00001390
    sd         $v0,136($sp)
    sd         $s1,312($sp)
.L00000de4:
    sd         $s5,320($sp)
    sd         $s4,328($sp)
    sd         $s6,336($sp)
    sd         $s3,344($sp)
    sd         $s2,352($sp)
    lw         $a0,88($sp)
    sd         $s0,360($sp)
    sd         $s8,368($sp)
    blez       $a0, .L000012d0
    sd         $s7,376($sp)
    li         $s6,-2
    lui        $a7,0x8000
    move       $t9,$zero
    lui        $a2,0x11
    lui        $t3,0x7f
    lui        $s1,0x8f80
    ld         $v0,112($sp)
    lui        $s4,0x1
    ori        $s1,$s1,0xa92f
    sd         $s8,368($sp)
    ori        $s2,$s4,0x19
    ori        $s0,$s4,0x46
    ori        $s5,$s4,0x443
    ori        $s3,$s4,0x4001
    ld         $a1,144($sp)
    sd         $s7,376($sp)
    ori        $s4,$s4,0x4400
    ori        $t3,$t3,0xffff
    daddu      $a1,$a1,$a2
    b          .L00000e6c
    sd         $a1,272($sp)
.L00000e60:
    lw         $t8,88($sp)
    slt        $t8,$t9,$t8
    beqz       $t8, .L000012d0
.L00000e6c:
    ld         $v1,72($sp)
    ld         $a1,80($sp)
    dsll       $t8,$t9,0x2
    daddu      $v1,$t8,$v1
    daddu      $a1,$t8,$a1
    lw         $t0,0($v1)
    lw         $ra,0($a1)
    li         $a0,1
    li         $a2,1
    sll        $a0,$a0,0x1
    ld         $t2,64($sp)
    addiu      $t9,$t9,1
    sll        $a2,$a2,0x1
    lw         $a6,28($sp)
    ori        $a2,$a2,0x1
    ori        $a0,$a0,0x1
    lw         $a5,32($sp)
    ld         $at,56($sp)
    daddu      $t2,$t8,$t2
    slt        $a4,$t0,$a6
    movz       $a6,$t0,$a4
    slt        $a4,$ra,$a5
    pref       0x0,256($t2)
    daddu      $t8,$t8,$at
    movz       $ra,$a5,$a4
    pref       0x0,256($t8)
    nor        $t0,$a6,$zero
    slt        $at,$a6,$ra
    pref       0x0,256($a1)
    and        $a1,$a6,$a7
    move       $t1,$a6
    pref       0x0,256($v1)
    beqz       $at, .L00000e60
    nor        $s7,$ra,$zero
    lw         $a3,0($t2)
    beqz       $a1, .L00000f04
    move       $s8,$zero
    addiu      $t1,$t0,1
.L00000f04:
    and        $a4,$t1,$s6
    beqz       $a4, .L00000f38
    move       $a6,$zero
    b          .L00001454
    move       $a6,$zero
.L00000f18:
    and        $a5,$t1,$a5
    sll        $a2,$a2,0x1
    beqz       $a5, .L00000f38
    ori        $a2,$a2,0x1
    addiu      $a6,$a6,1
.L00000f2c:
    slti       $t0,$a6,32
    bnez       $t0, .L00000f18
    nor        $a5,$a2,$zero
.L00000f38:
    beqz       $t1, .L00000f44
    move       $t0,$ra
    addiu      $s8,$a6,127
.L00000f44:
    and        $a2,$ra,$a7
    beqz       $a2, .L00000f58
    and        $a4,$t0,$s6
    addiu      $t0,$s7,1
    and        $a4,$t0,$s6
.L00000f58:
    move       $ra,$zero
    beqz       $a4, .L000012c8
    sd         $a2,128($sp)
    b          .L0000145c
    move       $a2,$zero
.L00000f6c:
    nor        $a5,$a0,$zero
    and        $a5,$t0,$a5
    sll        $a0,$a0,0x1
    beqz       $a5, .L00000f8c
    ori        $a0,$a0,0x1
    addiu      $a2,$a2,1
.L00000f84:
    slti       $a4,$a2,32
    bnez       $a4, .L00000f6c
.L00000f8c:
    lw         $a5,24($sp)
    lw         $s7,20($sp)
    sd         $s7,256($sp)
    lw         $s7,0($t8)
    beqz       $t0, .L00000fa8
    sd         $a5,264($sp)
    addiu      $ra,$a2,127
.L00000fa8:
    ld         $a0,256($sp)
    ld         $at,264($sp)
    slt        $v1,$a0,$s7
    movz       $s7,$a0,$v1
    slt        $a5,$a3,$at
    andi       $a4,$ra,0xff
    sd         $a4,248($sp)
    movz       $a3,$at,$a5
    sd         $s8,384($sp)
    andi       $a0,$s8,0xff
    slt        $at,$s7,$a3
    sd         $a0,232($sp)
    move       $s8,$s7
    nor        $v1,$s7,$zero
    sd         $v1,240($sp)
    beqz       $at, .L00000e60
    and        $a0,$s7,$a7
    li         $t2,32
    beqz       $a0, .L00001000
    sd         $a0,120($sp)
    ld         $s8,240($sp)
    addiu      $s8,$s8,1
.L00001000:
    and        $at,$s8,$s6
    move       $t8,$zero
    beqz       $at, .L00001038
    li         $a0,1
    b          .L00001464
    move       $t8,$zero
.L00001018:
    and        $v1,$s8,$v1
    sll        $a0,$a0,0x1
    beqz       $v1, .L00001038
    ori        $a0,$a0,0x1
    addiu      $t8,$t8,1
.L0000102c:
    slti       $a4,$t8,32
    bnez       $a4, .L00001018
    nor        $v1,$a0,$zero
.L00001038:
    beqz       $s8, .L000012bc
    ld         $at,248($sp)
    addiu      $a5,$t8,127
    sd         $a5,224($sp)
    sd         $ra,392($sp)
.L0000104c:
    lw         $ra,48($sp)
    sll        $at,$at,0x17
    addu       $v1,$s7,$ra
    sd         $at,208($sp)
    li         $a0,-16
    addu       $a4,$v1,$v0
    subu       $t2,$t2,$t8
    and        $a0,$a0,$a4
    ld         $a4,224($sp)
    addu       $ra,$a3,$ra
    sllv       $t2,$s8,$t2
    ld         $s8,208($sp)
    ld         $at,120($sp)
    sra        $t2,$t2,0x9
    andi       $a4,$a4,0xff
    sd         $v1,216($sp)
    slt        $v1,$v1,$a0
    sll        $a4,$a4,0x17
    ld         $s7,232($sp)
    and        $t2,$t3,$t2
    or         $at,$at,$a4
    ld         $a4,216($sp)
    beqz       $v1, .L000010bc
    or         $t2,$t2,$at
    li         $a3,32
    slt        $v1,$ra,$a0
    beqz       $v1, .L000010c4
    nop
.L000010bc:
    li         $a3,32
    move       $a0,$ra
.L000010c4:
    slt        $a4,$a4,$a0
    ld         $v1,128($sp)
    beqz       $a4, .L00000e60
    subu       $t8,$a3,$a6
    sll        $s7,$s7,0x17
    or         $s8,$s8,$v1
    sllv       $t8,$t1,$t8
    sra        $t8,$t8,0x9
    subu       $at,$a3,$a2
    or         $s7,$s7,$a1
    sllv       $at,$t0,$at
    and        $t8,$t8,$t3
    sra        $at,$at,0x9
    or         $s7,$s7,$t8
    and        $at,$at,$t3
    b          .L0000127c
    or         $s8,$s8,$at
.L00001108:
    nor        $at,$a0,$zero
    and        $at,$a6,$at
    sll        $a0,$a0,0x1
    beqz       $at, .L00001128
    ori        $a0,$a0,0x1
    addiu      $a2,$a2,1
.L00001120:
    slti       $a1,$a2,32
    bnez       $a1, .L00001108
.L00001128:
    ld         $a5,272($sp)
    beqz       $a6, .L000012b0
    addiu      $t1,$a2,127
.L00001134:
    sw         $s4,0($a5)
    sync
    li         $a4,10
    sw         $a4,0($a5)
    sync
    sw         $s1,0($a5)
    sync
    lw         $a1,0($sp)
    sw         $a1,0($a5)
    andi       $a0,$t1,0xff
    sync
    lw         $v1,4($sp)
    sll        $a0,$a0,0x17
    sw         $v1,0($a5)
    subu       $at,$a3,$a2
    sync
    lw         $v1,8($sp)
    sllv       $at,$a6,$at
    sw         $v1,0($a5)
    sync
    lw         $a1,12($sp)
    sra        $at,$at,0x9
    sw         $a1,0($a5)
    sync
    sw         $t2,0($a5)
    sync
    sw         $s7,0($a5)
    sync
    lw         $v1,16($sp)
    and        $at,$at,$t3
    or         $t2,$a0,$t8
    sw         $v1,0($a5)
    sync
    or         $t2,$t2,$at
    sw         $t2,0($a5)
    sync
    sw         $s8,0($a5)
    sync
    lw         $a0,16($sp)
    sw         $a0,0($a5)
    sync
    sw         $s3,0($a5)
    sync
    sw         $s5,0($a5)
    sync
    li         $at,250
    sw         $at,0($a5)
    sync
    sw         $s0,0($a5)
    sync
    sw         $s0,0($a5)
    sync
    sw         $s2,0($a5)
    sync
    sw         $s5,0($a5)
    sync
    li         $v1,150
    sw         $v1,0($a5)
    sync
    sw         $s0,0($a5)
    sync
    sw         $s0,0($a5)
    sync
    sw         $s0,0($a5)
    sync
    sw         $s0,0($a5)
    sync
    sw         $s5,0($a5)
    sync
    sw         $at,0($a5)
    sync
    addu       $a0,$t0,$v0
    sw         $s0,0($a5)
    sync
    slt        $a4,$ra,$a0
    sw         $s0,0($a5)
    sync
    beqz       $a4, .L00001278
    slt        $a5,$t0,$a0
    move       $a0,$ra
    slt        $a5,$t0,$a0
.L00001278:
    beqz       $a5, .L00000e60
.L0000127c:
    lw         $a6,48($sp)
    subu       $a6,$a0,$a6
    and        $t8,$a6,$a7
    move       $t0,$a0
    li         $a0,1
    beqz       $t8, .L0000129c
    nor        $a2,$a6,$zero
    addiu      $a6,$a2,1
.L0000129c:
    and        $t1,$a6,$s6
    beqz       $t1, .L00001128
    move       $a2,$zero
    b          .L00001474
    move       $a2,$zero
.L000012b0:
    move       $t1,$zero
    b          .L00001134
    nop
.L000012bc:
    sd         $zero,224($sp)
    b          .L0000104c
    sd         $ra,392($sp)
.L000012c8:
    b          .L00000f8c
    move       $a2,$zero
.L000012d0:
    ld         $s7,376($sp)
    ld         $s8,368($sp)
    ld         $s0,360($sp)
    ld         $s2,352($sp)
    ld         $s3,344($sp)
    ld         $s6,336($sp)
    ld         $t2,136($sp)
    ld         $s4,328($sp)
    ld         $s5,320($sp)
    beqz       $t2, .L0000131c
    ld         $s1,312($sp)
    ld         $t8,40($s7)
.L00001300:
    lw         $t3,80($t8)
    addiu      $t3,$t3,-1
    sw         $t3,80($t8)
    b          .L00000d70
    lw         $v0,0($s0)
.L00001314:
    b          .L00000d14
    li         $v0,1
.L0000131c:
    jal        splhi
    nop
    lw         $t8,4($s7)
    li         $t9,-3
    and        $t8,$t8,$t9
    sw         $t8,4($s7)
    ld         $a0,808($s8)
    beqz       $a0, .L00001380
    sd         $v0,288($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00001380
    li         $v1,0x85c8
    daddu      $v1,$v1,$s8
    li         $at,1
    sw         $at,0($v1)
    ld         $v0,824($s8)
    sw         $at,4220($v0)
    sync
    ld         $ra,824($s8)
    lw         $ra,4204($ra)
    sw         $ra,92($sp)
    move       $a1,$s7
    jal        gfx_flow_detach_me
    ld         $a0,808($s8)
.L00001380:
    jal        splx
    ld         $a0,288($sp)
    b          .L00001300
    ld         $t8,40($s7)
.L00001390:
    jal        splhi
    nop
    lw         $a0,4($s7)
    ori        $a0,$a0,0x2
    sw         $a0,4($s7)
    ld         $a0,808($s8)
    beqz       $a0, .L000013c0
    sd         $v0,280($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000013d0
    nop
.L000013c0:
    jal        splx
    ld         $a0,280($sp)
    b          .L00000de4
    sd         $s1,312($sp)
.L000013d0:
    ld         $a0,808($s8)
    jal        gfx_flow_attach_me
    move       $a1,$s7
    ld         $a0,808($s8)
    lui        $a1,0x1
    daddu      $a1,$s8,$a1
    sd         $a1,104($sp)
    lw         $a1,-31292($a1)
    jal        gfx_flow_credit_tnum_get
    sd         $a1,96($sp)
    ld         $a5,-30720($gp)
    ld         $a4,96($sp)
    ld         $a3,104($sp)
    and        $a4,$a4,$a5
    sll        $a5,$v0,0xc
    or         $a4,$a4,$a5
    sw         $a4,-31292($a3)
    ld         $a5,824($s8)
    sw         $a4,4212($a5)
    sync
    sw         $zero,-31288($a3)
    ld         $a2,824($s8)
    sw         $zero,4220($a2)
    sync
    b          .L000013c0
    nop
.L00001438:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,96
    li         $v0,14
    b          .L00000d70
    sw         $v0,0($s0)
.L00001454:
    b          .L00000f2c
    addiu      $a6,$a6,1
.L0000145c:
    b          .L00000f84
    addiu      $a2,$a2,1
.L00001464:
    sll        $a0,$a0,0x1
    ori        $a0,$a0,0x1
    b          .L0000102c
    addiu      $t8,$t8,1
.L00001474:
    sll        $a0,$a0,0x1
    ori        $a0,$a0,0x1
    b          .L00001120
    addiu      $a2,$a2,1
