.section .text
.set noat
.set noreorder


glabel odsy_rainier_write_rcx_reg
    ld         $at,16($a0)
    sra        $v0,$a1,0x2
    dsll       $v0,$v0,0x2
    daddu      $at,$at,$v0
    jr         $ra
    sw         $a2,0($at)

glabel odsy_rainier_read_rcx_reg
    ld         $v0,16($a0)
    sra        $v1,$a1,0x2
    dsll       $v1,$v1,0x2
    daddu      $v0,$v0,$v1
    jr         $ra
    lw         $v0,0($v0)

glabel odsy_rainier_read_board_id
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        odsy_rainier_read_rcx_reg
    li         $a1,816
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_RainierRegRead
    ld         $a0,-30720($gp)
    daddiu     $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        odsy_rainier_read_rcx_reg
    move       $s8,$a2
    ld         $ra,0($sp)
    sw         $v0,0($s8)
    move       $v0,$zero
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_RainierRegWrite
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        odsy_rainier_write_rcx_reg
    ld         $a0,-30720($gp)
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,16

glabel odsy_ProbeRainier
    sw         $zero,0($a1)
    daddiu     $sp,$sp,-320
    sd         $s7,288($sp)
    sd         $s3,256($sp)
    sd         $s5,280($sp)
    sd         $s4,272($sp)
    ld         $s4,-30720($gp)
    move       $s5,$a1
    li         $s3,-1
    sd         $s0,304($sp)
    sd         $ra,264($sp)
    jal        hwgraph_path_to_vertex
    move       $a0,$s4
    li         $s0,1
    move       $s7,$v0
    sd         $s2,296($sp)
    li         $s2,-1
    beq        $s3, $v0, .L0000013c
    sd         $s1,312($sp)
    li         $s2,-1
    li         $s0,9
    move       $s1,$zero
    daddiu     $a0,$sp,0
.L000000f8:
    ld         $a1,-30720($gp)
    move       $a2,$s4
    move       $a3,$s0
    jal        sprintf
    daddiu     $a1,$a1,48
    jal        hwgraph_path_to_dev
    daddiu     $a0,$sp,0
    beq        $s3, $v0, .L00000124
    nop
    addiu      $s1,$s1,1
    move       $s2,$s0
.L00000124:
    addiu      $s0,$s0,-1
    bgez       $s0, .L000000f8
    daddiu     $a0,$sp,0
    beqz       $s1, .L000001d0
    move       $s0,$zero
    sw         $s1,0($s5)
.L0000013c:
    jal        hwgraph_vertex_unref
    move       $a0,$s7
    lw         $a2,0($s5)
    beqz       $a2, .L000001a8
    ld         $s7,288($sp)
    daddiu     $a0,$sp,0
    ld         $a1,-30720($gp)
    move       $a2,$s4
    move       $a3,$s2
    jal        sprintf
    daddiu     $a1,$a1,48
    li         $a1,2
    jal        open
    daddiu     $a0,$sp,0
    beq        $v0, $s3, .L000001dc
    daddiu     $a1,$s4,16
    jal        hwgraph_path_to_dev
    daddiu     $a0,$sp,0
    jal        device_info_get
    move       $a0,$v0
    move       $a0,$v0
    jal        odsy_rainier_read_board_id
    sd         $v0,-30720($gp)
    li         $a2,66
    li         $a1,720
    jal        odsy_rainier_write_rcx_reg
    ld         $a0,-30720($gp)
.L000001a8:
    move       $v0,$s0
.L000001ac:
    ld         $s2,296($sp)
    ld         $s3,256($sp)
    ld         $s4,272($sp)
    ld         $ra,264($sp)
    ld         $s0,304($sp)
    ld         $s1,312($sp)
    ld         $s5,280($sp)
    jr         $ra
    daddiu     $sp,$sp,320
.L000001d0:
    li         $s0,1
    b          .L0000013c
    sw         $zero,0($s5)
.L000001dc:
    li         $a0,1
    jal        cmn_err
    move       $a2,$s2
    b          .L000001ac
    li         $v0,1
