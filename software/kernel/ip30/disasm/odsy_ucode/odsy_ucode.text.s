.section .text
.set noat
.set noreorder


glabel odsyDownloadUcode
    move       $t3,$a1
    move       $v0,$a2
    move       $a4,$a3
    li         $t2,5
    andi       $t9,$a1,0x3ff
    sltiu      $at,$a1,2047
    ld         $t8,824($a0)
    daddiu     $sp,$sp,-16
    lui        $t0,0x4000
    ori        $a7,$t0,0x8000
    beqz       $at, .L00000114
    sd         $ra,8($sp)
    addu       $v1,$a1,$a3
    sltiu      $v1,$v1,2048
    sll        $ra,$v0,0x2
    subu       $ra,$ra,$v0
    beqz       $v1, .L00000114
    sll        $ra,$ra,0x1
    lui        $a2,0x1
    daddu      $a2,$a0,$a2
    lw         $a1,-31404($a2)
    sltu       $a3,$v0,$a1
    lui        $v1,0x2700
    beqz       $a3, .L00000114
    ori        $v1,$v1,0x8000
    addu       $a3,$v0,$a4
    sltu       $a3,$a1,$a3
    sd         $t0,0($sp)
    bnez       $a3, .L00000114
    move       $a1,$zero
    dsll32     $ra,$ra,0x0
    srl        $at,$t3,0xa
    lui        $t0,0x11
    sll        $at,$at,0x17
    daddu      $t0,$t8,$t0
    or         $at,$t9,$at
    dsrl32     $ra,$ra,0x0
    or         $at,$at,$v1
    sw         $at,0($t0)
    sync
    ld         $t1,-31400($a2)
    daddu      $ra,$ra,$ra
    beqz       $a4, .L00000104
    daddu      $t1,$t1,$ra
    addiu      $a2,$a4,-1
    addiu      $a1,$a1,1
.L000000b8:
    li         $v0,5
    move       $a0,$t2
.L000000c0:
    daddu      $v1,$a0,$a0
    daddu      $v1,$t1,$v1
    lhu        $v1,0($v1)
    sra        $a3,$v1,0xa
    andi       $v1,$v1,0x3ff
    sll        $a3,$a3,0x17
    addiu      $v0,$v0,-1
    or         $v1,$v1,$a3
    or         $v1,$a7,$v1
    sw         $v1,0($t0)
    sync
    bgez       $v0, .L000000c0
    addiu      $a0,$a0,-1
    addiu      $t2,$t2,6
    sltu       $a0,$a2,$a1
    beqz       $a0, .L000000b8
    addiu      $a1,$a1,1
.L00000104:
    move       $v0,$zero
.L00000108:
    ld         $ra,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00000114:
    li         $a0,4
    move       $a2,$t3
    ld         $a1,-30720($gp)
    jal        cmn_err
    move       $a3,$v0
    b          .L00000108
    li         $v0,-1

glabel gf_OdsyDownload
    lw         $v0,0($a1)
    li         $at,12
    div        $zero,$v0,$at
    daddiu     $sp,$sp,-80
    sd         $s1,40($sp)
    ld         $s1,40($a0)
    sd         $s2,16($sp)
    sd         $s0,32($sp)
    sd         $s4,24($sp)
    mflo       $s4
    move       $s0,$a0
    move       $s2,$a1
    sd         $s3,48($sp)
    mfhi       $a2
    blez       $s4, .L00000418
    sd         $ra,56($sp)
    sltiu      $v1,$s4,4094
    beqz       $v1, .L00000418
    nop
    bnez       $a2, .L00000434
    nop
    ld         $a0,8($a1)
    move       $a1,$v0
    move       $a2,$zero
    jal        userdma
    move       $a3,$zero
    bnez       $v0, .L0000044c
    ld         $a1,-30720($gp)
    lui        $s3,0x1
    sd         $s5,64($sp)
    daddu      $s3,$s1,$s3
    sw         $s4,-31404($s3)
    lw         $a1,0($s2)
    li         $a2,40
    jal        maputokv
    ld         $a0,8($s2)
    beqz       $v0, .L00000460
    move       $s5,$v0
    ld         $a1,-31400($s3)
.L000001cc:
    move       $a0,$s5
    jal        bcopy
    lw         $a2,0($s2)
    lw         $a1,0($s2)
    ld         $a0,8($s2)
    jal        undma
    move       $a2,$zero
    move       $a0,$s5
    jal        unmaputokv
    lw         $a1,0($s2)
    ld         $v0,40($s0)
    ld         $t8,72($v0)
    bne        $t8, $s0, .L00000304
    ld         $s5,64($sp)
.L00000204:
    lw         $t9,80($v0)
.L00000208:
    addiu      $t9,$t9,1
    jal        splhi
    sw         $t9,80($v0)
    lw         $ra,4($s0)
    ori        $ra,$ra,0x2
    sw         $ra,4($s0)
    ld         $a0,808($s1)
    beqz       $a0, .L0000023c
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000003c0
    nop
.L0000023c:
    jal        splx
    move       $a0,$s2
    move       $a0,$s1
    move       $a1,$zero
    move       $a2,$zero
    move       $a4,$s0
    li         $a3,2047
    slti       $at,$s4,2047
    jal        odsyDownloadUcode
    movn       $a3,$s4,$at
    beqz       $v0, .L00000348
    li         $s4,-3
    jal        splhi
    nop
    move       $s2,$v0
    lw         $v0,4($s0)
    and        $v0,$s4,$v0
    sw         $v0,4($s0)
    ld         $a0,808($s1)
    beqz       $a0, .L000002c8
    nop
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000002c8
    li         $a0,1
    sw         $a0,-31288($s3)
    ld         $a1,824($s1)
    sw         $a0,4220($a1)
    sync
    ld         $v1,824($s1)
    ld         $a0,808($s1)
    lw         $v1,4204($v1)
    move       $a1,$s0
    jal        gfx_flow_detach_me
    sw         $v1,0($sp)
.L000002c8:
    jal        splx
    move       $a0,$s2
    ld         $a3,40($s0)
    lw         $a2,80($a3)
    li         $v0,22
    addiu      $a2,$a2,-1
    sw         $a2,80($a3)
.L000002e4:
    ld         $s2,16($sp)
    ld         $s3,48($sp)
    ld         $ra,56($sp)
    ld         $s4,24($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000304:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a4,40($s0)
    sd         $s0,72($a4)
    ld         $v0,40($s0)
    lw         $a3,104($v0)
    beqz       $a3, .L00000204
    nop
.L00000328:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s0)
    lw         $a5,104($v0)
    bnez       $a5, .L00000328
    nop
    b          .L00000208
    lw         $t9,80($v0)
.L00000348:
    jal        splhi
    nop
    lw         $a6,4($s0)
    and        $a6,$s4,$a6
    sw         $a6,4($s0)
    ld         $a0,808($s1)
    beqz       $a0, .L000003a0
    move       $s2,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000003a0
    li         $t0,1
    sw         $t0,-31288($s3)
    ld         $t1,824($s1)
    sw         $t0,4220($t1)
    sync
    ld         $a7,824($s1)
    ld         $a0,808($s1)
    lw         $a7,4204($a7)
    move       $a1,$s0
    jal        gfx_flow_detach_me
    sw         $a7,4($sp)
.L000003a0:
    jal        splx
    move       $a0,$s2
    ld         $t3,40($s0)
    lw         $t2,80($t3)
    move       $v0,$zero
    addiu      $t2,$t2,-1
    b          .L000002e4
    sw         $t2,80($t3)
.L000003c0:
    ld         $a0,808($s1)
    jal        gfx_flow_attach_me
    move       $a1,$s0
    ld         $a0,808($s1)
    lw         $t3,-31292($s3)
    jal        gfx_flow_credit_tnum_get
    sd         $t3,8($sp)
    ld         $ra,-30720($gp)
    ld         $t9,8($sp)
    and        $t9,$t9,$ra
    sll        $ra,$v0,0xc
    or         $t9,$t9,$ra
    sw         $t9,-31292($s3)
    ld         $ra,824($s1)
    sw         $t9,4212($ra)
    sync
    sw         $zero,-31288($s3)
    ld         $t8,824($s1)
    sw         $zero,4220($t8)
    sync
    b          .L0000023c
    nop
.L00000418:
    ld         $a1,-30720($gp)
    li         $a0,4
    move       $a2,$v0
    jal        cmn_err
    daddiu     $a1,$a1,80
    b          .L000002e4
    li         $v0,22
.L00000434:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,128
    b          .L000002e4
    li         $v0,22
.L0000044c:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,184
    b          .L000002e4
    li         $v0,14
.L00000460:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,224
    b          .L000001cc
    ld         $a1,-31400($s3)
