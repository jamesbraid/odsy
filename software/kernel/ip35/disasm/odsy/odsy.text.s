.section .text
.set noat
.set noreorder


glabel gf_OdsyInfo
    li         $v0,588
    daddiu     $sp,$sp,-32
    move       $v1,$a2
    sd         $a2,8($sp)
    dsll32     $a2,$a2,0x0
    move       $at,$v0
    dsrl32     $a2,$a2,0x0
    daddiu     $a0,$a0,200
    sd         $a3,16($sp)
    sltu       $at,$at,$a2
    sd         $ra,0($sp)
    move       $a2,$v1
    jal        copyout
    movn       $a2,$v0,$at
    beqz       $v0, .L0000004c
    ld         $ra,0($sp)
    li         $v0,14
.L00000044:
    jr         $ra
    daddiu     $sp,$sp,32
.L0000004c:
    ld         $a4,16($sp)
    ld         $a3,8($sp)
    move       $v0,$zero
    b          .L00000044
    sw         $a3,0($a4)

glabel gfP_OdsyInvalidIoctl
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    li         $a0,5
    jal        cmn_err
    ld         $a1,-30720($gp)
    ld         $ra,0($sp)
    li         $v0,22
    jr         $ra
    daddiu     $sp,$sp,16

glabel gf_OdsyPrivate
    move       $t0,$a3
    ld         $a7,-30720($gp)
    lui        $at,0xffff
    lui        $v1,0x6f64
    and        $at,$a2,$at
    daddiu     $sp,$sp,-16
    and        $a7,$a2,$a7
    sd         $ra,0($sp)
    bne        $at, $v1, .L000000e8
    slti       $v0,$a7,53
    beqz       $v0, .L000000e8
    ld         $v0,-30712($gp)
    dsll32     $v1,$a7,0x0
    dsrl       $v1,$v1,0x1d
    daddiu     $v0,$v0,224
    daddu      $v0,$v0,$v1
    ld         $v0,0($v0)
    move       $a2,$a3
    jalr       $v0
    move       $a3,$a4
    move       $a0,$v0
.L000000d8:
    ld         $ra,0($sp)
    move       $v0,$a0
    jr         $ra
    daddiu     $sp,$sp,16
.L000000e8:
    ld         $a1,-30720($gp)
    li         $a0,5
    jal        cmn_err
    daddiu     $a1,$a1,24
    b          .L000000d8
    li         $a0,22

glabel odsyGctxFromRnid
    lw         $v0,0($gp)
    daddiu     $sp,$sp,-16
    blez       $a0, .L00000144
    sd         $ra,0($sp)
    ld         $a4,-30704($gp)
    slt        $a5,$v0,$a0
    dsll       $a3,$a0,0x2
    dsubu      $a3,$a3,$a0
    bnez       $a5, .L00000144
    dsll       $a3,$a3,0x2
    dsubu      $v0,$a3,$a0
    dsll       $v0,$v0,0x4
    daddu      $v0,$a4,$v0
    ld         $v0,112($v0)
.L00000138:
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00000144:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,56
    b          .L00000138
    move       $v0,$zero
