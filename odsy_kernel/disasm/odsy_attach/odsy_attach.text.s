.section .text
.set noat
.set noreorder


glabel odsy_regmatch
    daddiu     $sp,$sp,-48
    sd         $a1,16($sp)
    sd         $a2,24($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    beqz       $a0, .L0000004c
    sd         $ra,32($sp)
    jal        splhi
    nop
    sd         $v0,0($sp)
    jal        gf_OdsyUnMapGfx
    move       $a0,$s0
    jal        splx
    ld         $a0,0($sp)
    ld         $a0,48($s0)
    beqz       $a0, .L0000004c
    sd         $zero,72($s0)
    jal        ddv_destroy_handle
    sd         $zero,48($s0)
.L0000004c:
    ld         $s0,8($sp)
    ld         $ra,32($sp)
    ld         $v0,24($sp)
    ld         $at,16($sp)
    daddiu     $sp,$sp,48
    jr         $ra
    sd         $at,48($v0)

glabel gf_OdsyAttach
    li         $v0,22
    daddiu     $sp,$sp,-288
    li         $a7,32
    move       $a6,$zero
    sd         $s0,256($sp)
    andi       $a2,$a1,0x3fff
    lui        $a4,0xaff0
    ld         $t2,-30720($gp)
    move       $s0,$a0
    sd         $s1,264($sp)
    move       $s1,$a1
    daddiu     $t1,$sp,0
    move       $t0,$t2
.L0000009c:
    daddu      $a0,$a6,$t0
    daddu      $a1,$a6,$t1
    ld         $a0,0($a0)
    addiu      $v1,$a6,8
    addiu      $a7,$a7,-2
    sd         $a0,0($a1)
    daddu      $at,$v1,$t0
    daddu      $v1,$v1,$t1
    ld         $at,0($at)
    addiu      $a6,$a6,16
    bgtz       $a7, .L0000009c
    sd         $at,0($v1)
    ld         $v1,128($a4)
    beqz       $a2, .L000000ec
    sd         $ra,272($sp)
.L000000d8:
    ld         $ra,272($sp)
    ld         $s0,256($sp)
    ld         $s1,264($sp)
    jr         $ra
    daddiu     $sp,$sp,288
.L000000ec:
    move       $a1,$s0
    ld         $a0,-30712($gp)
    jal        gfxdd_recycle
    move       $a2,$s1
    beqz       $v0, .L0000010c
    nop
    b          .L000000d8
    move       $v0,$zero
.L0000010c:
    lw         $a0,4($s0)
    li         $t2,16
    andi       $a0,$a0,0x24
    li         $a6,8
    move       $v0,$zero
    beqz       $a0, .L000001c8
    daddiu     $a1,$sp,0
.L00000128:
    addiu      $a0,$a6,-1
.L0000012c:
    dsll32     $a3,$v0,0x0
    dsrl       $a3,$a3,0x1b
    daddu      $a3,$a1,$a3
    addiu      $v0,$v0,1
    ld         $a5,8($a3)
    sltu       $a4,$a0,$v0
    ld         $a2,0($a3)
    daddu      $a5,$a5,$s1
    sd         $a5,8($a3)
    daddu      $a2,$a2,$s1
    beqz       $a4, .L0000012c
    sd         $a2,0($a3)
    daddiu     $a7,$s0,48
    daddiu     $a5,$sp,0
    move       $a4,$s0
    sll        $a1,$t2,0xe
    move       $a2,$s1
    dsll32     $a1,$a1,0x0
    ld         $a3,-30704($gp)
    li         $a0,1
    jal        gfxdd_mmap
    dsrl32     $a1,$a1,0x0
    bnez       $v0, .L000001d4
    ld         $a1,-30720($gp)
    jal        splhi
    nop
    lw         $a2,4($s0)
    move       $s1,$v0
    move       $a0,$s0
    ori        $a2,$a2,0x1
    jal        gf_OdsyUnMapGfx
    sw         $a2,4($s0)
    jal        splx
    move       $a0,$s1
    lui        $a3,0xaff0
    ori        $a3,$a3,0x80
    move       $v0,$zero
    b          .L000000d8
    ld         $a3,0($a3)
.L000001c8:
    li         $t2,2
    b          .L00000128
    li         $a6,2
.L000001d4:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,256
    b          .L000000d8
    li         $v0,12

glabel gf_OdsyDetach
    lw         $at,4($a0)
    daddiu     $sp,$sp,-32
    andi       $at,$at,0x4
    sd         $s0,8($sp)
    move       $s0,$a0
    beqz       $at, .L00000210
    sd         $ra,24($sp)
    ld         $a0,40($a0)
    jal        odsyDiagExit
    move       $a1,$s0
.L00000210:
    jal        splhi
    nop
    sd         $v0,16($sp)
    lw         $v0,4($s0)
    andi       $v0,$v0,0x1
    beqz       $v0, .L00000234
    nop
    jal        gf_OdsyUnMapGfx
    move       $a0,$s0
.L00000234:
    ld         $v1,48($s0)
    sd         $zero,48($s0)
    ld         $a0,16($sp)
    jal        splx
    sd         $v1,0($sp)
    jal        gfxdd_munmap
    ld         $a0,0($sp)
    ld         $ra,24($sp)
    move       $v0,$zero
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
