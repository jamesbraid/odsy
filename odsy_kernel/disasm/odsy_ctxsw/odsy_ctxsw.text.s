.section .text
.set noat
.set noreorder


glabel odsy_ctxsw_timeout
    ld         $a1,-30720($gp)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    li         $a0,1
    sd         $ra,8($sp)
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,176
    lw         $a2,0($gp)
    beqz       $a2, .L00000048
    li         $a2,1500
    jal        odsy_teardown
    move       $a0,$s0
    ld         $ra,8($sp)
.L0000003c:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00000048:
    move       $a1,$s0
    jal        timeout
    ld         $a0,-30712($gp)
    b          .L0000003c
    ld         $ra,8($sp)

glabel odsy_glget_timeout
    ld         $a1,-30720($gp)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    li         $a0,1
    sd         $ra,8($sp)
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,208
    lw         $a2,0($gp)
    beqz       $a2, .L000000a4
    li         $a2,1500
    jal        odsy_teardown
    move       $a0,$s0
    ld         $ra,8($sp)
.L00000098:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L000000a4:
    move       $a1,$s0
    jal        timeout
    ld         $a0,-30704($gp)
    b          .L00000098
    ld         $ra,8($sp)

glabel gf_OdsyPcxSwitch
    jr         $ra
    li         $v0,-1

glabel gfP_OdsySaveHwShadow
    daddiu     $sp,$sp,-112
    sd         $a2,32($sp)
    sd         $s0,56($sp)
    sw         $zero,0($a3)
    ld         $s0,40($a0)
    sd         $ra,88($sp)
    ld         $at,72($a0)
    sd         $s3,40($sp)
    ld         $at,112($at)
    sd         $s1,64($sp)
    move       $s1,$a0
    move       $s3,$a1
    sd         $s2,48($sp)
    move       $s2,$a3
    beqz       $at, .L0000041c
    sd         $s4,96($sp)
    jal        RRM_CheckValidFault
    nop
    bltz       $v0, .L0000025c
    li         $v0,14
    lw         $v0,816($s0)
    bnez       $v0, .L00000438
    ld         $v1,32($sp)
    bnez       $v1, .L000001ec
    nop
    beqz       $s3, .L000001e4
    li         $v0,22
    ld         $s4,112($s3)
    bnez       $s4, .L00000144
    ld         $s4,192($s4)
    li         $v0,22
    b          .L000001c4
    sw         $v0,0($s2)
.L00000144:
    ld         $a0,808($s0)
    ld         $t8,824($s0)
    jal        odsy_flow_am_i_attached
    sd         $t8,24($sp)
    beqz       $v0, .L000002d8
    move       $s3,$v0
    ld         $a0,-30712($gp)
.L00000160:
    ld         $v0,24($sp)
    lui        $at,0x11
    li         $a2,1500
    sw         $zero,2300($s4)
    ori        $at,$at,0x8000
    ld         $ra,-30712($gp)
    lui        $t9,0xaff0
    daddu      $at,$at,$v0
    ori        $t9,$t9,0x80
    sd         $ra,0($at)
    sync
    move       $a1,$s0
    jal        timeout
    ld         $t9,0($t9)
    lw         $v1,2300($s4)
    beqz       $v1, .L00000234
    nop
.L000001a4:
    jal        untimeout_wait
    move       $a0,$v0
    lw         $a0,816($s0)
    beqz       $a0, .L00000248
    nop
    beqz       $s3, .L00000264
    li         $v0,14
.L000001c0:
    sw         $v0,0($s2)
.L000001c4:
    ld         $s3,40($sp)
    ld         $s4,96($sp)
    ld         $ra,88($sp)
    ld         $s2,48($sp)
    ld         $s0,56($sp)
    ld         $s1,64($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L000001e4:
    b          .L000001c4
    sw         $v0,0($s2)
.L000001ec:
    ld         $a6,40($s1)
    lw         $a5,80($a6)
    addiu      $a5,$a5,1
    sw         $a5,80($a6)
    ld         $a0,40($s1)
    ld         $a4,32($s1)
    ld         $a1,8($a0)
    ld         $a4,120($a4)
    move       $a3,$a1
    jalr       $a4
    move       $a2,$a1
    ld         $a7,40($s1)
    lw         $a6,80($a7)
    addiu      $a6,$a6,-1
    sw         $a6,80($a7)
    move       $v0,$zero
    b          .L000001c4
    sw         $zero,0($s2)
.L00000234:
    lw         $a7,816($s0)
    bnez       $a7, .L000001a4
    sd         $v0,80($sp)
    b          .L00000324
    nop
.L00000248:
    beqz       $s3, .L00000340
    nop
    sw         $zero,0($s2)
.L00000254:
    b          .L000001c4
    move       $v0,$zero
.L0000025c:
    b          .L000001c4
    sw         $v0,0($s2)
.L00000264:
    jal        splhi
    nop
    lw         $t0,4($s1)
    li         $t1,-3
    and        $t0,$t0,$t1
    sw         $t0,4($s1)
    ld         $a0,808($s0)
    beqz       $a0, .L000002c8
    move       $s3,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000002c8
    li         $t9,0x85c8
    daddu      $t9,$t9,$s0
    li         $t3,1
    sw         $t3,0($t9)
    ld         $t8,824($s0)
    sw         $t3,4220($t8)
    sync
    ld         $t2,824($s0)
    ld         $a0,808($s0)
    lw         $t2,4204($t2)
    move       $a1,$s1
    jal        gfx_flow_detach_me
    sw         $t2,0($sp)
.L000002c8:
    jal        splx
    move       $a0,$s3
    b          .L000001c0
    li         $v0,14
.L000002d8:
    jal        splhi
    nop
    lw         $ra,4($s1)
    ori        $ra,$ra,0x2
    sw         $ra,4($s1)
    ld         $a0,808($s0)
    beqz       $a0, .L00000308
    sd         $v0,72($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000003b4
    nop
.L00000308:
    jal        splx
    ld         $a0,72($sp)
    b          .L00000160
    ld         $a0,-30712($gp)
.L00000318:
    lw         $at,816($s0)
    bnez       $at, .L00000338
    nop
.L00000324:
    jal        us_delay
    li         $a0,1
    lw         $v0,2300($s4)
    beqz       $v0, .L00000318
    nop
.L00000338:
    b          .L000001a4
    ld         $v0,80($sp)
.L00000340:
    jal        splhi
    nop
    lw         $v1,4($s1)
    li         $a0,-3
    and        $v1,$v1,$a0
    sw         $v1,4($s1)
    ld         $a0,808($s0)
    beqz       $a0, .L000003a4
    move       $s3,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000003a4
    li         $a4,0x85c8
    daddu      $a4,$a4,$s0
    li         $a2,1
    sw         $a2,0($a4)
    ld         $a3,824($s0)
    sw         $a2,4220($a3)
    sync
    ld         $a1,824($s0)
    ld         $a0,808($s0)
    lw         $a1,4204($a1)
    sw         $a1,4($sp)
    jal        gfx_flow_detach_me
    move       $a1,$s1
.L000003a4:
    jal        splx
    move       $a0,$s3
    b          .L00000254
    sw         $zero,0($s2)
.L000003b4:
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    move       $a1,$s1
    ld         $a0,808($s0)
    lui        $a5,0x1
    daddu      $a5,$s0,$a5
    sd         $a5,8($sp)
    lw         $a5,-31292($a5)
    jal        gfx_flow_credit_tnum_get
    sd         $a5,16($sp)
    ld         $t1,-30720($gp)
    ld         $t0,16($sp)
    ld         $a7,8($sp)
    and        $t0,$t0,$t1
    sll        $t1,$v0,0xc
    or         $t0,$t0,$t1
    sw         $t0,-31292($a7)
    ld         $t1,824($s0)
    sw         $t0,4212($t1)
    sync
    sw         $zero,-31288($a7)
    ld         $a6,824($s0)
    sw         $zero,4220($a6)
    sync
    b          .L00000308
    nop
.L0000041c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,240
    li         $v0,1
    b          .L000001c4
    sw         $v0,0($s2)
.L00000438:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,296
    li         $v0,14
    b          .L000001c4
    sw         $v0,0($s2)

glabel gf_OdsyPcxSwap
    daddiu     $sp,$sp,-128
    sd         $s6,72($sp)
    sd         $s3,80($sp)
    sd         $s4,88($sp)
    sd         $ra,96($sp)
    sd         $s8,104($sp)
    sd         $s1,112($sp)
    sd         $s5,48($sp)
    lw         $at,816($a0)
    sd         $s0,40($sp)
    move       $s0,$a0
    move       $s5,$a1
    sd         $s2,32($sp)
    move       $s2,$a2
    bnez       $at, .L00000a10
    sd         $s7,120($sp)
    jal        gfx_waitc_on
    nop
    bnez       $s2, .L000004c0
    move       $s1,$zero
    li         $s3,127
    beqz       $s5, .L000004d8
    move       $v0,$zero
.L000004b4:
    ld         $s4,112($s5)
    b          .L000004e0
    ld         $s6,192($s4)
.L000004c0:
    jal        gfx_flow_clean_up_other_gfxp
    ld         $a0,64($s2)
    ld         $s1,112($s2)
    ld         $v0,192($s1)
    bnez       $s5, .L000004b4
    lw         $s3,0($s1)
.L000004d8:
    move       $s4,$zero
    move       $s6,$zero
.L000004e0:
    ld         $a0,808($s0)
    ld         $s5,72($s0)
    ld         $s7,824($s0)
    jal        odsy_flow_am_i_attached
    sd         $v0,24($sp)
    beqz       $v0, .L00000940
    move       $s8,$v0
.L000004fc:
    beqz       $s4, .L00000580
    li         $a2,1500
    dsll       $v0,$s3,0x10
    li         $v1,-1
    ori        $v0,$v0,0x1
    dsrl32     $v1,$v1,0x0
    and        $v0,$v0,$v1
    lui        $v1,0x11
    li         $a0,7
    ori        $v1,$v1,0x8000
    dsll32     $a0,$a0,0x8
    daddu      $v1,$v1,$s7
    sw         $zero,2300($s6)
    or         $v0,$v0,$a0
    sd         $v0,0($v1)
    sync
    move       $a1,$s0
    jal        timeout
    ld         $a0,-30712($gp)
    lw         $v1,2300($s6)
    beqz       $v1, .L0000073c
    nop
.L00000554:
    jal        untimeout_wait
    move       $a0,$v0
    lw         $a0,816($s0)
    beqz       $a0, .L00000750
    nop
    beqz       $s8, .L00000894
    nop
.L00000570:
    jal        gfx_waitc_off
    nop
    b          .L0000070c
    li         $v0,-1
.L00000580:
    move       $s6,$zero
.L00000584:
    beqz       $s1, .L000006f8
    nop
    jal        kvtophys
    ld         $a0,24($sp)
    lui        $a1,0x1
    daddu      $a1,$s0,$a1
    dsrl32     $a2,$v0,0x0
    sw         $v0,-31280($a1)
    andi       $a2,$a2,0xffff
    sw         $a2,-31284($a1)
    ld         $a3,824($s0)
    sw         $a2,16388($a3)
    sync
    ld         $a2,824($s0)
    move       $a0,$s0
    lw         $a1,-31280($a1)
    sw         $a1,16396($a2)
    move       $a1,$s1
    sync
    jal        odsyMMvalidatePcxSwap
    move       $a2,$s4
    lhu        $a2,4($s2)
    andi       $a2,$a2,0x2
    beqz       $a2, .L000005f8
    move       $a1,$s2
    move       $a2,$zero
    ld         $a0,64($s2)
    jal        gf_OdsyValidateClip
    move       $a3,$zero
.L000005f8:
    lw         $a3,564($s1)
    beqz       $a3, .L0000090c
    move       $a0,$s0
    lw         $a0,820($s0)
    li         $a4,127
    beq        $a0, $a4, .L00000908
    nop
    beqz       $a0, .L0000090c
    move       $a0,$s0
    lui        $t9,0x7
    ld         $t8,-30704($gp)
    sll        $t3,$s3,0xc
    ori        $t9,$t9,0xf000
    and        $t3,$t3,$t9
    and        $t8,$s6,$t8
    or         $t3,$t3,$t8
    lui        $a5,0x11
    lui        $t8,0x1
    daddu      $a5,$s7,$a5
    ori        $t8,$t8,0x850
    sw         $t8,0($a5)
    sync
    ori        $t3,$t3,0xf
    sw         $t3,0($a5)
    sync
    lui        $t2,0x1
    sw         $zero,0($a5)
    sync
    ori        $t2,$t2,0x4400
    sw         $t2,0($a5)
    sync
    lui        $t1,0x1
    sw         $zero,0($a5)
    sync
    ori        $t1,$t1,0x4001
    sw         $t1,0($a5)
    sync
    li         $t0,1856
    sw         $t0,0($a5)
    sync
    li         $a7,493
    sw         $a7,0($a5)
    sync
    li         $a6,1857
    sw         $a6,0($a5)
    sync
    sw         $zero,0($a5)
    sync
.L000006b8:
    beqz       $s3, .L000006f8
    sw         $zero,564($s1)
    lw         $a0,820($s0)
    beq        $a0, $s3, .L000006f8
    li         $ra,127
    beq        $a0, $ra, .L000006f4
    nop
    ld         $v0,28456($s0)
    dsll       $v1,$a0,0x3
    daddu      $v0,$v0,$v1
    ld         $v0,0($v0)
    ld         $v0,176($v0)
    beqz       $v0, .L000006f4
    nop
    sw         $zero,11060($v0)
.L000006f4:
    sw         $s3,820($s0)
.L000006f8:
    beqz       $s8, .L00000820
    nop
.L00000700:
    jal        gfx_waitc_off
    nop
    move       $v0,$zero
.L0000070c:
    ld         $s2,32($sp)
    ld         $s6,72($sp)
    ld         $s3,80($sp)
    ld         $s4,88($sp)
    ld         $s8,104($sp)
    ld         $s0,40($sp)
    ld         $ra,96($sp)
    ld         $s1,112($sp)
    ld         $s5,48($sp)
    ld         $s7,120($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L0000073c:
    lw         $a0,816($s0)
    bnez       $a0, .L00000554
    sd         $v0,64($sp)
    b          .L0000098c
    nop
.L00000750:
    lw         $a2,128($s6)
    andi       $a2,$a2,0xf
    lui        $v0,0x11
    sltiu      $a2,$a2,11
    lui        $a1,0x1
    daddu      $v0,$s7,$v0
    beqz       $a2, .L00000780
    ori        $a1,$a1,0x444
    sw         $a1,0($v0)
    sync
    sw         $zero,0($v0)
    sync
.L00000780:
    lui        $a3,0x7
    lui        $a7,0x1
    move       $a5,$a7
    ori        $a7,$a7,0x443
    sw         $a7,0($v0)
    li         $a6,250
    sync
    sw         $a6,0($v0)
    ori        $a5,$a5,0x46
    sync
    sw         $a5,0($v0)
    lui        $a4,0x1
    sync
    sw         $a5,0($v0)
    ori        $a4,$a4,0x850
    sync
    sw         $a4,0($v0)
    ori        $a3,$a3,0xf00f
    sync
    sw         $a3,0($v0)
    sync
    sw         $zero,0($v0)
    sync
    ld         $a7,176($s4)
    beqz       $a7, .L00000818
    lui        $s6,0x7
    lw         $t0,0($s4)
    beqz       $t0, .L00000818
    lui        $s6,0x7
    li         $a3,1
    lw         $a1,11064($a7)
    move       $a0,$s0
    move       $a4,$s5
    jal        odsyDownloadUcode
    move       $a2,$a1
    bnez       $v0, .L00000a2c
    ld         $a1,-30720($gp)
    lui        $s6,0x7
.L00000818:
    b          .L00000584
    ori        $s6,$s6,0xf00f
.L00000820:
    jal        splhi
    nop
    lw         $t8,4($s5)
    li         $t9,-3
    and        $t8,$t8,$t9
    sw         $t8,4($s5)
    ld         $a0,808($s0)
    beqz       $a0, .L00000884
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000884
    li         $v1,0x85c8
    daddu      $v1,$v1,$s0
    li         $at,1
    sw         $at,0($v1)
    ld         $v0,824($s0)
    sw         $at,4220($v0)
    sync
    ld         $ra,824($s0)
    lw         $ra,4204($ra)
    sw         $ra,4($sp)
    move       $a1,$s5
    jal        gfx_flow_detach_me
    ld         $a0,808($s0)
.L00000884:
    jal        splx
    move       $a0,$s1
    b          .L00000700
    nop
.L00000894:
    jal        splhi
    nop
    lw         $a0,4($s5)
    li         $a1,-3
    and        $a0,$a0,$a1
    sw         $a0,4($s5)
    ld         $a0,808($s0)
    beqz       $a0, .L000008f8
    move       $s1,$v0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000008f8
    li         $a5,0x85c8
    daddu      $a5,$a5,$s0
    li         $a3,1
    sw         $a3,0($a5)
    ld         $a4,824($s0)
    sw         $a3,4220($a4)
    sync
    ld         $a2,824($s0)
    ld         $a0,808($s0)
    lw         $a2,4204($a2)
    move       $a1,$s5
    jal        gfx_flow_detach_me
    sw         $a2,0($sp)
.L000008f8:
    jal        splx
    move       $a0,$s1
    b          .L00000570
    nop
.L00000908:
    move       $a0,$s0
.L0000090c:
    jal        odsyRestoreXform
    move       $a1,$s1
    move       $a0,$s0
    jal        odsyRestoreRaster
    move       $a1,$s1
    move       $a0,$s0
    jal        odsyRestoreGfe
    move       $a1,$s1
    move       $a0,$s0
    jal        odsyRestartContext
    move       $a1,$s1
    b          .L000006b8
    nop
.L00000940:
    jal        splhi
    nop
    lw         $a6,4($s5)
    ori        $a6,$a6,0x2
    sw         $a6,4($s5)
    ld         $a0,808($s0)
    beqz       $a0, .L00000970
    sd         $v0,56($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000009a8
    nop
.L00000970:
    jal        splx
    ld         $a0,56($sp)
    b          .L000004fc
    nop
.L00000980:
    lw         $a7,816($s0)
    bnez       $a7, .L000009a0
    nop
.L0000098c:
    jal        us_delay
    li         $a0,1
    lw         $t0,2300($s6)
    beqz       $t0, .L00000980
    nop
.L000009a0:
    b          .L00000554
    ld         $v0,64($sp)
.L000009a8:
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    move       $a1,$s5
    ld         $a0,808($s0)
    lui        $t1,0x1
    daddu      $t1,$s0,$t1
    sd         $t1,8($sp)
    lw         $t1,-31292($t1)
    jal        gfx_flow_credit_tnum_get
    sd         $t1,16($sp)
    ld         $t9,-30720($gp)
    ld         $t8,16($sp)
    ld         $t3,8($sp)
    and        $t8,$t8,$t9
    sll        $t9,$v0,0xc
    or         $t8,$t8,$t9
    sw         $t8,-31292($t3)
    ld         $t9,824($s0)
    sw         $t8,4212($t9)
    sync
    sw         $zero,-31288($t3)
    ld         $t2,824($s0)
    sw         $zero,4220($t2)
    sync
    b          .L00000970
    nop
.L00000a10:
    ld         $a1,-30720($gp)
    li         $a0,1
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,360
    b          .L0000070c
    li         $v0,-1
.L00000a2c:
    li         $a0,4
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,424
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00000818
    lui        $s6,0x7

glabel odsyRestoreRaster
    ld         $a3,176($a1)
    daddiu     $sp,$sp,-48
    sd         $s0,16($sp)
    move       $t9,$a1
    li         $a7,2
    lw         $a4,0($a1)
    li         $t0,3
    li         $t2,3
    sd         $s1,24($sp)
    li         $a6,2
    sd         $s2,0($sp)
    sltu       $t1,$zero,$a4
    li         $a5,1
    lui        $t8,0x1
    sd         $s3,8($sp)
    sd         $s4,32($sp)
    beqz       $t1, .L00000ab4
    ori        $t3,$t8,0x2030
    lw         $at,820($a0)
    beq        $at, $a4, .L00000ab4
    nop
    b          .L00000abc
    ld         $a1,824($a0)
.L00000ab4:
    move       $a5,$zero
    ld         $a1,824($a0)
.L00000abc:
    lui        $s0,0x11
    lui        $s2,0x1
    daddu      $s0,$s0,$a1
    move       $s1,$s2
    ori        $s2,$s2,0x443
    sw         $s2,0($s0)
    li         $s3,250
    sync
    sw         $s3,0($s0)
    ori        $s1,$s1,0x46
    sync
    sw         $s1,0($s0)
    lui        $a4,0x1
    sync
    sw         $s1,0($s0)
    ori        $a4,$a4,0x19
    sync
    sw         $a4,0($s0)
    sync
    sw         $s2,0($s0)
    li         $s4,150
    sync
    sw         $s4,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    lui        $at,0x1
    sync
    sw         $s1,0($s0)
    ori        $at,$at,0x1017
    sync
    sw         $at,0($s0)
    sync
    lw         $a2,6948($a3)
    sw         $a2,0($s0)
    sync
    lw         $v1,6952($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,6956($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,6960($a3)
    sw         $at,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s4,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    lui        $a2,0x1
    sync
    sw         $s1,0($s0)
    ori        $a2,$a2,0x1023
    sync
    sw         $a2,0($s0)
    sync
    lw         $v1,232($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,236($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,240($a3)
    sw         $at,0($s0)
    sync
    lw         $a2,244($a3)
    sw         $a2,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    lui        $v1,0x1
    sync
    sw         $s1,0($s0)
    ori        $v1,$v1,0x452
    sync
    sw         $v1,0($s0)
    sync
    lw         $v0,228($a3)
    lui        $at,0x1
    sw         $v0,0($s0)
    ori        $at,$at,0x81d
    sync
    sw         $at,0($s0)
    sync
    lw         $a2,168($a3)
    sw         $a2,0($s0)
    sync
    lw         $v1,172($a3)
    sw         $v1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    lui        $v0,0x1
    sync
    sw         $s1,0($s0)
    ori        $v0,$v0,0x1453
    sync
    sw         $v0,0($s0)
    sync
    lw         $at,6964($a3)
    sw         $at,0($s0)
    sync
    lw         $a2,6968($a3)
    sw         $a2,0($s0)
    sync
    lw         $v1,6972($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,6976($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,6980($a3)
    sw         $at,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    lui        $a2,0x1
    sync
    sw         $s1,0($s0)
    ori        $a2,$a2,0x404
    sync
    sw         $a2,0($s0)
    sync
    lw         $v1,132($a3)
    lui        $v0,0x1
    sw         $v1,0($s0)
    ori        $v0,$v0,0x405
    sync
    sw         $v0,0($s0)
    sync
    lw         $at,136($a3)
    lui        $a2,0x1
    sw         $at,0($s0)
    ori        $a2,$a2,0x422
    sync
    sw         $a2,0($s0)
    sync
    lw         $v1,200($a3)
    lui        $v0,0x1
    sw         $v1,0($s0)
    ori        $v0,$v0,0x415
    sync
    sw         $v0,0($s0)
    sync
    lw         $v1,140($a3)
    lui        $v0,0x1
    sw         $v1,0($s0)
    sync
    ori        $v0,$v0,0x456
    sw         $v0,0($s0)
    sync
    lw         $at,7344($a3)
    lui        $a2,0x1
    sw         $at,0($s0)
    ori        $a2,$a2,0xc48
    sync
    sw         $a2,0($s0)
    sync
    lw         $a0,204($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,208($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,212($a3)
    lui        $at,0x1
    sw         $v0,0($s0)
    ori        $at,$at,0x43f
    sync
    sw         $at,0($s0)
    sync
    lw         $a2,128($a3)
    lui        $a0,0x1
    sw         $a2,0($s0)
    ori        $a0,$a0,0x3c4e
    sync
    sw         $a0,0($s0)
    sync
    lw         $v1,0($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,8($a3)
    sw         $at,0($s0)
    sync
    lw         $a2,12($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,16($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,20($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,24($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,28($a3)
    sw         $at,0($s0)
    sync
    lw         $a2,32($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,36($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,40($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,44($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,48($a3)
    sw         $at,0($s0)
    sync
    lw         $a2,52($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,56($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,60($a3)
    lui        $v0,0x1
    sw         $v1,0($s0)
    ori        $v0,$v0,0x3c4f
    sync
    sw         $v0,0($s0)
    sync
    lw         $at,64($a3)
    sw         $at,0($s0)
    sync
    lw         $a2,68($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,72($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,76($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,80($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,84($a3)
    sw         $at,0($s0)
    sync
    lw         $a2,88($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,92($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,96($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,100($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,104($a3)
    sw         $at,0($s0)
    sync
    lw         $a2,108($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,112($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,116($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,120($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,124($a3)
    lui        $a2,0x1
    sw         $at,0($s0)
    ori        $a2,$a2,0x84a
    sync
    sw         $a2,0($s0)
    sync
    lw         $a0,220($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,224($a3)
    lui        $v0,0x1
    sw         $v1,0($s0)
    ori        $v0,$v0,0x141b
    sync
    sw         $v0,0($s0)
    sync
    lw         $at,312($a3)
    sw         $at,0($s0)
    sync
    lw         $a2,316($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,320($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,324($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,328($a3)
    lui        $at,0x1
    sw         $v0,0($s0)
    ori        $at,$at,0x1c16
    sync
    sw         $at,0($s0)
    sync
    lw         $a2,332($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,336($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,340($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,344($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,348($a3)
    sw         $at,0($s0)
    sync
    lw         $at,352($a3)
    sw         $at,0($s0)
    sync
    lw         $a4,356($a3)
    lui        $a2,0x1
    sw         $a4,0($s0)
    ori        $a2,$a2,0x451
    sync
    sw         $a2,0($s0)
    sync
    lw         $a0,6944($a3)
    lui        $v1,0x1
    sw         $a0,0($s0)
    ori        $v1,$v1,0x44c
    sync
    sw         $v1,0($s0)
    sync
    lw         $v0,7340($a3)
    lui        $at,0x1
    sw         $v0,0($s0)
    ori        $at,$at,0xc21
    sync
    sw         $at,0($s0)
    sync
    lw         $a4,188($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,192($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,196($a3)
    sw         $a0,0($s0)
    sync
    lw         $a4,4464($a3)
    li         $a0,1
    beq        $a4, $a0, .L000020c4
    lui        $at,0x1
    beq        $a4, $a7, .L0000263c
    lui        $a2,0x1
    beq        $a4, $t2, .L000025cc
    lui        $t8,0x1
    sw         $t3,0($s0)
    sync
    lw         $at,4468($a3)
    sw         $at,0($s0)
    sync
    lw         $t2,4472($a3)
    sw         $t2,0($s0)
    sync
    lw         $a7,4476($a3)
    sw         $a7,0($s0)
    sync
    lw         $a4,4480($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4484($a3)
    sw         $a2,0($s0)
    sync
    lw         $v1,4488($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4492($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4496($a3)
    lui        $t2,0x1
    sw         $at,0($s0)
    ori        $t2,$t2,0x2031
    sync
    sw         $t2,0($s0)
    sync
    lw         $a7,4500($a3)
    sw         $a7,0($s0)
    sync
    lw         $a4,4504($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4508($a3)
    sw         $a2,0($s0)
    sync
    lw         $v1,4512($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4516($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4520($a3)
    sw         $at,0($s0)
    sync
    lw         $t2,4524($a3)
    sw         $t2,0($s0)
    sync
    lw         $a7,4528($a3)
    lui        $a4,0x1
    sw         $a7,0($s0)
    ori        $a4,$a4,0x2032
    sync
    sw         $a4,0($s0)
    sync
    lw         $a2,4532($a3)
    sw         $a2,0($s0)
    sync
    lw         $v1,4536($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4540($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4544($a3)
    sw         $at,0($s0)
    sync
    lw         $t2,4548($a3)
    sw         $t2,0($s0)
    sync
    lw         $a7,4552($a3)
    sw         $a7,0($s0)
    sync
    lw         $a4,4556($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4560($a3)
    lui        $v1,0x1
    sw         $a2,0($s0)
    ori        $v1,$v1,0x2033
    sync
    sw         $v1,0($s0)
    sync
    lw         $v0,4564($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4568($a3)
    sw         $at,0($s0)
    sync
    lw         $t2,4572($a3)
    sw         $t2,0($s0)
    sync
    lw         $a7,4576($a3)
    sw         $a7,0($s0)
    sync
    lw         $a4,4580($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4584($a3)
    sw         $a2,0($s0)
    sync
    lw         $v1,4588($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4592($a3)
    sw         $v0,0($s0)
    sync
    lw         $a4,4204($a3)
.L000012b0:
    beq        $a4, $a0, .L00002288
    lui        $at,0x1
    beq        $a4, $a6, .L000026b0
    lui        $t2,0x1
    beq        $a4, $t0, .L000025f8
    lui        $a2,0x1
    lui        $at,0x1
    ori        $at,$at,0x3c28
    sw         $at,0($s0)
    sync
    lw         $t8,4208($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4212($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4216($a3)
    sw         $t2,0($s0)
    sync
    lw         $t0,4220($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,4224($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,4228($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4232($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4236($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,4240($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,4244($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4248($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4252($a3)
    sw         $at,0($s0)
    sync
    lw         $t8,4256($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4260($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4264($a3)
    sw         $t2,0($s0)
    sync
    lw         $t0,4268($a3)
    lui        $a7,0x1
    sw         $t0,0($s0)
    ori        $a7,$a7,0x3c29
    sync
    sw         $a7,0($s0)
    sync
    lw         $a6,4272($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4276($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4280($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,4284($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,4288($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4292($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4296($a3)
    sw         $at,0($s0)
    sync
    lw         $t8,4300($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4304($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4308($a3)
    sw         $t2,0($s0)
    sync
    lw         $t0,4312($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,4316($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,4320($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4324($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4328($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,4332($a3)
    lui        $v1,0x1
    sw         $a0,0($s0)
    ori        $v1,$v1,0x3c2a
    sync
    sw         $v1,0($s0)
    sync
    lw         $v0,4336($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4340($a3)
    sw         $at,0($s0)
    sync
    lw         $t8,4344($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4348($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4352($a3)
    sw         $t2,0($s0)
    sync
    lw         $t0,4356($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,4360($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,4364($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4368($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4372($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,4376($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,4380($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4384($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4388($a3)
    sw         $at,0($s0)
    sync
    lw         $t8,4392($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4396($a3)
    lui        $t2,0x1
    sw         $t3,0($s0)
    ori        $t2,$t2,0x3c2b
    sync
    sw         $t2,0($s0)
    sync
    lw         $t0,4400($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,4404($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,4408($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4412($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4416($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,4420($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,4424($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4428($a3)
    sw         $v0,0($s0)
    sync
    lw         $t0,4432($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,4436($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,4440($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4444($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4448($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,4452($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,4456($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4460($a3)
    sw         $v0,0($s0)
    sync
.L00001608:
    beqz       $a5, .L00001e00
    lui        $a0,0x1
    ori        $a0,$a0,0x41e
    sw         $a0,0($s0)
    sync
    lw         $v1,176($a3)
    lui        $v0,0x1
    sw         $v1,0($s0)
    ori        $v0,$v0,0x41f
    sync
    sw         $v0,0($s0)
    sync
    lw         $at,180($a3)
    lui        $t8,0x1
    sw         $at,0($s0)
    ori        $t8,$t8,0x420
    sync
    sw         $t8,0($s0)
    sync
    lw         $t3,184($a3)
    lui        $t2,0x1
    sw         $t3,0($s0)
    ori        $t2,$t2,0x458
    sync
    sw         $t2,0($s0)
    sync
    lw         $t0,216($a3)
    lui        $a7,0x1
    sw         $t0,0($s0)
    ori        $a7,$a7,0x181a
    sync
    sw         $a7,0($s0)
    sync
    lw         $a6,144($a3)
    sw         $a6,0($s0)
    sync
    lw         $a5,148($a3)
    sw         $a5,0($s0)
    sync
    lw         $a4,152($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,156($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,160($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,164($a3)
    lui        $v0,0x1
    sw         $v1,0($s0)
    ori        $v0,$v0,0x1847
    sync
    sw         $v0,0($s0)
    sync
    lw         $at,7060($a3)
    sw         $at,0($s0)
    sync
    lw         $t8,7064($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,7068($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,7072($a3)
    sw         $t2,0($s0)
    sync
    lw         $t0,7076($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,7080($a3)
    lui        $a6,0x1
    sw         $a7,0($s0)
    ori        $a6,$a6,0x1013
    sync
    sw         $a6,0($s0)
    sync
    lw         $a5,7084($a3)
    sw         $a5,0($s0)
    sync
    lw         $a4,7088($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,7092($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,7096($a3)
    lui        $v1,0x1
    sw         $a0,0($s0)
    ori        $v1,$v1,0xc3e
    sync
    sw         $v1,0($s0)
    sync
    lw         $v0,4596($a3)
    lui        $t8,0x1
    lui        $t3,0x1
    sw         $v0,0($s0)
    lui        $t2,0x1
    sync
    lw         $at,4600($a3)
    lui        $t0,0x1
    move       $a6,$zero
    sw         $at,0($s0)
    ori        $t0,$t0,0x3e20
    sync
    lw         $at,4604($a3)
    move       $a5,$zero
    sw         $at,0($s0)
    sync
    or         $a2,$a6,$t0
.L000017c0:
    sw         $a2,0($s0)
    sync
    addiu      $a6,$a6,1
    move       $a4,$zero
    slti       $a7,$a6,16
.L000017d4:
    dsll       $v0,$a5,0x2
    addiu      $a4,$a4,1
    daddu      $v0,$a3,$v0
    slti       $at,$a4,16
    lw         $v0,1132($v0)
    sw         $v0,0($s0)
    sync
    addiu      $a5,$a5,1
    beqz       $at, .L0000181c
    dsll       $a0,$a5,0x2
    addiu      $a4,$a4,1
    daddu      $a0,$a3,$a0
    slti       $v1,$a4,16
    lw         $a0,1132($a0)
    sw         $a0,0($s0)
    sync
    bnez       $v1, .L000017d4
    addiu      $a5,$a5,1
.L0000181c:
    bnez       $a7, .L000017c0
    or         $a2,$a6,$t0
    move       $a6,$zero
    lui        $t0,0x1
    move       $a5,$zero
    ori        $t0,$t0,0x3e30
    or         $at,$a6,$t0
.L00001838:
    sw         $at,0($s0)
    sync
    addiu      $a6,$a6,1
    move       $a4,$zero
    slti       $a7,$a6,16
.L0000184c:
    dsll       $v1,$a5,0x2
    addiu      $a4,$a4,1
    daddu      $v1,$a3,$v1
    slti       $v0,$a4,16
    lw         $v1,2156($v1)
    sw         $v1,0($s0)
    sync
    addiu      $a5,$a5,1
    beqz       $v0, .L00001894
    dsll       $a2,$a5,0x2
    addiu      $a4,$a4,1
    daddu      $a2,$a3,$a2
    slti       $a0,$a4,16
    lw         $a2,2156($a2)
    sw         $a2,0($s0)
    sync
    bnez       $a0, .L0000184c
    addiu      $a5,$a5,1
.L00001894:
    bnez       $a7, .L00001838
    or         $at,$a6,$t0
    ori        $t0,$t8,0x3e40
    move       $a6,$zero
    move       $a5,$zero
    or         $a4,$a6,$t0
.L000018ac:
    sw         $a4,0($s0)
    sync
    addiu      $a6,$a6,1
    move       $a4,$zero
    slti       $a7,$a6,16
.L000018c0:
    dsll       $at,$a5,0x2
    addiu      $a4,$a4,1
    daddu      $at,$a3,$at
    slti       $t8,$a4,16
    lw         $at,3180($at)
    sw         $at,0($s0)
    sync
    addiu      $a5,$a5,1
    beqz       $t8, .L00001908
    dsll       $v1,$a5,0x2
    addiu      $a4,$a4,1
    daddu      $v1,$a3,$v1
    slti       $v0,$a4,16
    lw         $v1,3180($v1)
    sw         $v1,0($s0)
    sync
    bnez       $v0, .L000018c0
    addiu      $a5,$a5,1
.L00001908:
    bnez       $a7, .L000018ac
    or         $a4,$a6,$t0
    ori        $a5,$t3,0x3e10
    ori        $a6,$t3,0x3e00
    move       $a4,$zero
    dsll       $a2,$a4,0x6
.L00001920:
    daddu      $a2,$a3,$a2
    or         $a7,$a4,$a6
    sw         $a7,0($s0)
    sync
    lw         $a0,4612($a2)
    sw         $a0,0($s0)
    sync
    lw         $v1,4616($a2)
    sw         $v1,0($s0)
    sync
    lw         $v0,4620($a2)
    sw         $v0,0($s0)
    sync
    lw         $at,4624($a2)
    sw         $at,0($s0)
    sync
    lw         $t8,4628($a2)
    sw         $t8,0($s0)
    sync
    lw         $t3,4632($a2)
    sw         $t3,0($s0)
    sync
    lw         $t0,4636($a2)
    sw         $t0,0($s0)
    sync
    lw         $a7,4640($a2)
    sw         $a7,0($s0)
    sync
    lw         $a0,4644($a2)
    sw         $a0,0($s0)
    sync
    lw         $v1,4648($a2)
    sw         $v1,0($s0)
    sync
    lw         $v0,4652($a2)
    sw         $v0,0($s0)
    sync
    lw         $at,4656($a2)
    sw         $at,0($s0)
    sync
    lw         $t8,4660($a2)
    sw         $t8,0($s0)
    sync
    lw         $t3,4664($a2)
    sw         $t3,0($s0)
    sync
    lw         $t0,4668($a2)
    sw         $t0,0($s0)
    sync
    lw         $a7,4672($a2)
    sw         $a7,0($s0)
    or         $a0,$a4,$a5
    sync
    sw         $a0,0($s0)
    sync
    lw         $v1,5636($a2)
    sw         $v1,0($s0)
    sync
    lw         $v0,5640($a2)
    sw         $v0,0($s0)
    sync
    lw         $at,5644($a2)
    sw         $at,0($s0)
    sync
    lw         $t8,5648($a2)
    sw         $t8,0($s0)
    sync
    lw         $t3,5652($a2)
    sw         $t3,0($s0)
    sync
    lw         $t0,5656($a2)
    sw         $t0,0($s0)
    sync
    lw         $a7,5660($a2)
    sw         $a7,0($s0)
    sync
    lw         $a0,5664($a2)
    sw         $a0,0($s0)
    sync
    lw         $v1,5668($a2)
    sw         $v1,0($s0)
    sync
    lw         $v0,5672($a2)
    sw         $v0,0($s0)
    sync
    lw         $at,5676($a2)
    sw         $at,0($s0)
    sync
    lw         $t8,5680($a2)
    sw         $t8,0($s0)
    sync
    lw         $t3,5684($a2)
    sw         $t3,0($s0)
    sync
    lw         $t0,5688($a2)
    sw         $t0,0($s0)
    sync
    lw         $a7,5692($a2)
    addiu      $a4,$a4,1
    sw         $a7,0($s0)
    slti       $a0,$a4,16
    sync
    lw         $a2,5696($a2)
    sw         $a2,0($s0)
    sync
    bnez       $a0, .L00001920
    dsll       $a2,$a4,0x6
    ori        $a5,$t2,0xe80
    move       $a4,$zero
    dsll       $a7,$a4,0x2
.L00001ad8:
    dsubu      $a7,$a7,$a4
    dsll       $a7,$a7,0x2
    daddu      $a7,$a3,$a7
    or         $t3,$a4,$a5
    sw         $t3,0($s0)
    sync
    lw         $t2,360($a7)
    sw         $t2,0($s0)
    sync
    lw         $t0,364($a7)
    addiu      $a4,$a4,1
    sw         $t0,0($s0)
    slti       $a6,$a4,64
    sync
    lw         $a7,368($a7)
    sw         $a7,0($s0)
    sync
    bnez       $a6, .L00001ad8
    dsll       $a7,$a4,0x2
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    lui        $t3,0x1
    sync
    sw         $s1,0($s0)
    ori        $t3,$t3,0x406
    sync
    sw         $t3,0($s0)
    sync
    lw         $t2,1128($a3)
    sw         $t2,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    lui        $t0,0x1
    sync
    sw         $s1,0($s0)
    ori        $t0,$t0,0x18
    sync
    sw         $t0,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    lui        $a7,0x1
    sync
    sw         $s1,0($s0)
    ori        $a7,$a7,0xc1c
    sync
    sw         $a7,0($s0)
    sync
    lw         $a6,6660($a3)
    sw         $a6,0($s0)
    sync
    lw         $a5,6664($a3)
    sw         $a5,0($s0)
    sync
    lw         $a4,6668($a3)
    lui        $a2,0x1
    sw         $a4,0($s0)
    ori        $a2,$a2,0x457
    sync
    sw         $a2,0($s0)
    sync
    lw         $a0,7348($a3)
    lui        $v1,0x1
    sw         $a0,0($s0)
    ori        $v1,$v1,0x3c4d
    sync
    sw         $v1,0($s0)
    sync
    lw         $v0,248($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,252($a3)
    sw         $at,0($s0)
    sync
    lw         $t8,256($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,260($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,264($a3)
    sw         $t2,0($s0)
    sync
    lw         $t0,268($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,272($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,276($a3)
    sw         $a6,0($s0)
    sync
    lw         $a5,280($a3)
    sw         $a5,0($s0)
    sync
    lw         $a4,284($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,288($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,292($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,296($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,300($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,304($a3)
    sw         $at,0($s0)
    sync
    lw         $t8,308($a3)
    sw         $t8,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    lui        $t3,0x1
    sync
    sw         $s1,0($s0)
    ori        $t3,$t3,0x842
    sync
    sw         $t3,0($s0)
    sync
    lw         $t2,7332($a3)
    sw         $t2,0($s0)
    sync
    lw         $t0,7336($a3)
    sw         $t0,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s4,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    li         $a5,7
    sw         $s1,0($s0)
    sync
    li         $a4,599
    sw         $s1,0($s0)
    sync
    lui        $a7,0x1
    sw         $s2,0($s0)
    sync
    ori        $a7,$a7,0x1800
    sw         $s3,0($s0)
    sync
    lui        $a6,0x1
    sw         $s1,0($s0)
    sync
    ori        $a6,$a6,0x407
    sw         $s1,0($s0)
    sync
.L00001d80:
    dsll       $t8,$a5,0x2
    dsubu      $t8,$t8,$a5
    dsll       $t8,$t8,0x3
    sw         $a6,0($s0)
    daddu      $t8,$a3,$t8
    sync
    sw         $a5,0($s0)
    or         $t0,$a4,$a7
    sync
    sw         $t0,0($s0)
    sync
    lw         $a2,7132($t8)
    sw         $a2,0($s0)
    sync
    lw         $a0,7136($t8)
    sw         $a0,0($s0)
    sync
    lw         $v1,7140($t8)
    sw         $v1,0($s0)
    sync
    lw         $v0,7144($t8)
    sw         $v0,0($s0)
    sync
    lw         $at,7148($t8)
    sw         $at,0($s0)
    addiu      $a5,$a5,-1
    sync
    lw         $t8,7152($t8)
    sw         $t8,0($s0)
    sync
    bgez       $a5, .L00001d80
    addiu      $a4,$a4,-1
.L00001e00:
    beqz       $t1, .L00001e18
    sd         $ra,40($sp)
    jal        odsyPushBufferSelect
    move       $a0,$t9
    b          .L0000203c
    ld         $ra,40($sp)
.L00001e18:
    lui        $t8,0x1
    ori        $t8,$t8,0x204b
    sw         $t8,0($s0)
    sync
    lw         $t3,11072($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,11076($a3)
    sw         $t2,0($s0)
    sync
    lw         $t1,11080($a3)
    sw         $t1,0($s0)
    sync
    lw         $t0,11084($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,11088($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,11092($a3)
    sw         $a6,0($s0)
    sync
    lw         $a5,11096($a3)
    sw         $a5,0($s0)
    sync
    lw         $a4,11100($a3)
    lui        $a2,0x1
    sw         $a4,0($s0)
    ori        $a2,$a2,0x841
    sync
    sw         $a2,0($s0)
    sync
    lw         $a1,11104($a3)
    sw         $a1,0($s0)
    sync
    lw         $a0,11108($a3)
    sw         $a0,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    lui        $v1,0x1
    sync
    sw         $s1,0($s0)
    ori        $v1,$v1,0x19
    sync
    sw         $v1,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s4,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    lui        $a1,0x1
    sync
    sw         $s1,0($s0)
    sync
    ori        $a1,$a1,0x424
    sw         $a1,0($s0)
    sync
    lw         $a0,11112($a3)
    sw         $a0,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s4,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $v1,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s4,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    lui        $v0,0x1
    sync
    sw         $s1,0($s0)
    ori        $v0,$v0,0x840
    sync
    sw         $v0,0($s0)
    sync
    lw         $at,11116($a3)
    sw         $at,0($s0)
    sync
    lw         $t9,11120($a3)
    sw         $t9,0($s0)
    sync
.L0000203c:
    sw         $s2,0($s0)
    sync
    sw         $s4,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $s3,0($s0)
    sync
    sw         $s1,0($s0)
    sync
    sw         $s1,0($s0)
    ld         $s1,24($sp)
    ld         $s2,0($sp)
    ld         $s3,8($sp)
    ld         $s4,32($sp)
    sync
    lui        $at,0x1
    ori        $at,$at,0x658
    sw         $at,0($s0)
    sync
    lui        $t9,0x11
    sw         $t9,0($s0)
    sync
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000020c4:
    ori        $at,$at,0x2030
    sw         $at,0($s0)
    sync
    lw         $t8,4468($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4472($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4476($a3)
    sw         $t2,0($s0)
    sync
    lw         $a7,4480($a3)
    sw         $a7,0($s0)
    sync
    lw         $a4,4484($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4488($a3)
    sw         $a2,0($s0)
    sync
    lw         $v1,4492($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4496($a3)
    lui        $at,0x1
    sw         $v0,0($s0)
    ori        $at,$at,0x2031
    sync
    sw         $at,0($s0)
    sync
    lw         $t8,4500($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4504($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4508($a3)
    sw         $t2,0($s0)
    sync
    lw         $a7,4512($a3)
    sw         $a7,0($s0)
    sync
    lw         $a4,4516($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4520($a3)
    sw         $a2,0($s0)
    sync
    lw         $v1,4524($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4528($a3)
    lui        $at,0x1
    sw         $v0,0($s0)
    ori        $at,$at,0x2032
    sync
    sw         $at,0($s0)
    sync
    lw         $t8,4532($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4536($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4540($a3)
    sw         $t2,0($s0)
    sync
    lw         $a7,4544($a3)
    sw         $a7,0($s0)
    sync
    lw         $a4,4548($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4552($a3)
    sw         $a2,0($s0)
    sync
    lw         $v1,4556($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4560($a3)
    lui        $at,0x1
    sw         $v0,0($s0)
    ori        $at,$at,0x2033
    sync
    sw         $at,0($s0)
    sync
    lw         $t8,4564($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4568($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4572($a3)
    sw         $t2,0($s0)
    sync
    lw         $a7,4576($a3)
    sw         $a7,0($s0)
    sync
    lw         $a4,4580($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4584($a3)
    sw         $a2,0($s0)
    sync
    lw         $v1,4588($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4592($a3)
    sw         $v0,0($s0)
    sync
    b          .L000012b0
    lw         $a4,4204($a3)
.L00002288:
    ori        $at,$at,0x3c28
    sw         $at,0($s0)
    sync
    lw         $t8,4208($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4212($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4216($a3)
    sw         $t2,0($s0)
    sync
    lw         $t0,4220($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,4224($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,4228($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4232($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4236($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,4240($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,4244($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4248($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4252($a3)
    sw         $at,0($s0)
    sync
    lw         $t8,4256($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4260($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4264($a3)
    sw         $t2,0($s0)
    sync
    lw         $t0,4268($a3)
    lui        $a7,0x1
    sw         $t0,0($s0)
    ori        $a7,$a7,0x3c29
    sync
    sw         $a7,0($s0)
    sync
    lw         $a6,4272($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4276($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4280($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,4284($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,4288($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4292($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4296($a3)
    sw         $at,0($s0)
    sync
    lw         $t8,4300($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4304($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4308($a3)
    sw         $t2,0($s0)
    sync
    lw         $t0,4312($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,4316($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,4320($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4324($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4328($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,4332($a3)
    lui        $v1,0x1
    sw         $a0,0($s0)
    ori        $v1,$v1,0x3c2a
    sync
    sw         $v1,0($s0)
    sync
    lw         $v0,4336($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4340($a3)
    sw         $at,0($s0)
    sync
    lw         $t8,4344($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4348($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4352($a3)
    sw         $t2,0($s0)
    sync
    lw         $t0,4356($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,4360($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,4364($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4368($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4372($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,4376($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,4380($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4384($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4388($a3)
    sw         $at,0($s0)
    sync
    lw         $t8,4392($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4396($a3)
    lui        $t2,0x1
    sw         $t3,0($s0)
    ori        $t2,$t2,0x3c2b
    sync
    sw         $t2,0($s0)
    sync
    lw         $t0,4400($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,4404($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,4408($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4412($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4416($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,4420($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,4424($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4428($a3)
    sw         $v0,0($s0)
    sync
    lw         $t0,4432($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,4436($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,4440($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4444($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4448($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,4452($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,4456($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4460($a3)
    sw         $v0,0($s0)
    sync
    b          .L00001608
    nop
.L000025cc:
    ori        $t8,$t8,0x83d
    sw         $t8,0($s0)
    sync
    lw         $t3,4468($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4472($a3)
    sw         $t2,0($s0)
    sync
    b          .L000012b0
    lw         $a4,4204($a3)
.L000025f8:
    ori        $a2,$a2,0x103a
    sw         $a2,0($s0)
    sync
    lw         $a0,4208($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,4212($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4216($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4220($a3)
    sw         $at,0($s0)
    sync
    b          .L00001608
    nop
.L0000263c:
    ori        $a2,$a2,0x203b
    sw         $a2,0($s0)
    sync
    lw         $v1,4468($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4472($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4476($a3)
    sw         $at,0($s0)
    sync
    lw         $t8,4480($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4484($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4488($a3)
    sw         $t2,0($s0)
    sync
    lw         $a7,4492($a3)
    sw         $a7,0($s0)
    sync
    lw         $a4,4496($a3)
    sw         $a4,0($s0)
    sync
    b          .L000012b0
    lw         $a4,4204($a3)
.L000026b0:
    ori        $t2,$t2,0x3c38
    sw         $t2,0($s0)
    sync
    lw         $t0,4208($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,4212($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,4216($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4220($a3)
    sw         $a4,0($s0)
    sync
    lw         $a2,4224($a3)
    sw         $a2,0($s0)
    sync
    lw         $a0,4228($a3)
    sw         $a0,0($s0)
    sync
    lw         $v1,4232($a3)
    sw         $v1,0($s0)
    sync
    lw         $v0,4236($a3)
    sw         $v0,0($s0)
    sync
    lw         $at,4240($a3)
    sw         $at,0($s0)
    sync
    lw         $t8,4244($a3)
    sw         $t8,0($s0)
    sync
    lw         $t3,4248($a3)
    sw         $t3,0($s0)
    sync
    lw         $t2,4252($a3)
    sw         $t2,0($s0)
    sync
    lw         $t0,4256($a3)
    sw         $t0,0($s0)
    sync
    lw         $a7,4260($a3)
    sw         $a7,0($s0)
    sync
    lw         $a6,4264($a3)
    sw         $a6,0($s0)
    sync
    lw         $a4,4268($a3)
    sw         $a4,0($s0)
    sync
    b          .L00001608
    nop

glabel odsyRestoreXform
    ld         $a6,176($a1)
    daddiu     $sp,$sp,-64
    sd         $s0,40($sp)
    lui        $t1,0x8e80
    sd         $s1,16($sp)
    lui        $t9,0x9080
    lui        $a7,0x11
    sd         $ra,24($sp)
    lui        $t0,0x3100
    lui        $t2,0x9000
    sd         $s4,48($sp)
    move       $s4,$a0
    li         $ra,480
    lw         $a3,0($a1)
    li         $s1,160
    li         $s0,320
    ld         $a4,824($a0)
    sd         $s2,32($sp)
    ori        $s2,$t2,0xbda2
    ori        $t0,$t0,0x8000
    sd         $s3,56($sp)
    beqz       $a3, .L00002a64
    daddu      $a5,$a4,$a7
    lw         $at,820($a0)
    beq        $at, $a3, .L00002a64
    ori        $t9,$t9,0xbda2
    li         $s3,1
    lw         $a3,10972($a6)
    daddu      $a5,$a4,$a7
    move       $a7,$zero
    sd         $t1,0($sp)
    lui        $a0,0x2900
    sd         $a0,8($sp)
    b          .L00002884
    ori        $a0,$a0,0x819a
.L00002810:
    sw         $t9,0($a5)
    sync
.L00002818:
    move       $a4,$zero
.L0000281c:
    dsll       $v0,$a2,0x2
    addiu      $a4,$a4,1
    daddu      $v0,$a6,$v0
    slti       $at,$a4,16
    lw         $v0,7356($v0)
    sw         $v0,0($a5)
    sync
    addiu      $a2,$a2,1
    beqz       $at, .L00002864
    dsll       $a1,$a2,0x2
    addiu      $a4,$a4,1
    daddu      $a1,$a6,$a1
    slti       $v1,$a4,16
    lw         $a1,7356($a1)
    sw         $a1,0($a5)
    sync
    bnez       $v1, .L0000281c
    addiu      $a2,$a2,1
.L00002864:
    or         $a2,$t8,$t3
    or         $a2,$t0,$a2
    sw         $a2,0($a5)
    sync
.L00002874:
    addiu      $a7,$a7,16
    slti       $a4,$a7,512
    beqz       $a4, .L000028d0
    nop
.L00002884:
    lw         $t1,9888($a6)
    beq        $a7, $ra, .L00002874
    andi       $a2,$a7,0x3ff
    beq        $a7, $s0, .L00002874
    srl        $t2,$t1,0xa
    sra        $t3,$a7,0xa
    sll        $t3,$t3,0x17
    andi       $t8,$t1,0x3ff
    or         $t3,$a2,$t3
    or         $t3,$t0,$t3
    sw         $t3,0($a5)
    sync
    move       $a2,$a7
    bne        $a7, $s1, .L00002810
    sll        $t3,$t2,0x17
    sw         $s2,0($a5)
    sync
    b          .L00002818
    nop
.L000028d0:
    sw         $a0,0($a5)
    lui        $t2,0x3200
    ld         $t1,0($sp)
    sync
    ori        $t2,$t2,0x8018
    sw         $t2,0($a5)
    sync
    ori        $t1,$t1,0x9015
    sw         $t1,0($a5)
    sync
    lw         $t9,9788($a6)
    sw         $t9,0($a5)
    sync
    lw         $t8,9792($a6)
    move       $t0,$zero
    sw         $t8,0($a5)
    li         $a2,1
    sync
    lw         $t3,9796($a6)
    li         $a4,2
    move       $a7,$zero
    sw         $t3,0($a5)
    lui        $t2,0x3200
    sync
    lw         $t8,9800($a6)
    ori        $t2,$t2,0x8000
    sw         $t8,0($a5)
    sync
.L00002940:
    sra        $ra,$t0,0xa
    andi       $t9,$t0,0x3ff
    sll        $ra,$ra,0x17
    or         $t9,$t9,$ra
    dsll       $t8,$t0,0x4
    or         $t9,$t2,$t9
    sw         $t9,0($a5)
    daddu      $t8,$a6,$t8
    sync
    sw         $t1,0($a5)
    sync
    lw         $v1,9404($t8)
    sw         $v1,0($a5)
    sync
    lw         $v0,9408($t8)
    sra        $at,$a2,0xa
    sw         $v0,0($a5)
    sync
    lw         $v0,9412($t8)
    sll        $at,$at,0x17
    sw         $v0,0($a5)
    andi       $t9,$a2,0x3ff
    sync
    lw         $ra,9416($t8)
    or         $t9,$t9,$at
    sw         $ra,0($a5)
    or         $t9,$t2,$t9
    sync
    sw         $t9,0($a5)
    sync
    sw         $t1,0($a5)
    sync
    lw         $t3,9420($t8)
    sw         $t3,0($a5)
    sync
    lw         $a1,9424($t8)
    sra        $a0,$a4,0xa
    sw         $a1,0($a5)
    sync
    lw         $a1,9428($t8)
    sll        $a0,$a0,0x17
    sw         $a1,0($a5)
    andi       $v0,$a4,0x3ff
    sync
    lw         $v1,9432($t8)
    or         $v0,$v0,$a0
    sw         $v1,0($a5)
    or         $v0,$t2,$v0
    sync
    sw         $v0,0($a5)
    sync
    sw         $t1,0($a5)
    sync
    lw         $at,9436($t8)
    sw         $at,0($a5)
    sync
    lw         $ra,9440($t8)
    sw         $ra,0($a5)
    sync
    lw         $t9,9444($t8)
    addiu      $t0,$t0,3
    addiu      $a7,$a7,1
    sw         $t9,0($a5)
    slti       $t3,$a7,8
    sync
    lw         $t8,9448($t8)
    addiu      $a2,$a2,3
    sw         $t8,0($a5)
    sync
    bnez       $t3, .L00002940
    addiu      $a4,$a4,3
    b          .L00002a70
    lui        $v0,0x2800
.L00002a64:
    move       $s3,$zero
    lw         $a3,10972($a6)
    lui        $v0,0x2800
.L00002a70:
    sltiu      $at,$a3,255
    ori        $v0,$v0,0x8000
    sw         $v0,0($a5)
    sync
    beqz       $at, .L000031a8
    addiu      $a4,$a3,-1
    beqz       $a3, .L00002ad0
    move       $a0,$zero
    lui        $a2,0x6000
    ori        $a2,$a2,0x8000
    dsll       $a7,$a0,0x2
.L00002a9c:
    daddu      $a7,$a6,$a7
    lw         $a7,9948($a7)
    addiu      $a0,$a0,1
    srl        $t0,$a7,0xa
    andi       $a7,$a7,0x3ff
    sll        $t0,$t0,0x17
    sltu       $a3,$a4,$a0
    or         $a7,$a7,$t0
    or         $a7,$a2,$a7
    sw         $a7,0($a5)
    sync
    beqz       $a3, .L00002a9c
    dsll       $a7,$a0,0x2
.L00002ad0:
    lw         $a7,9900($a6)
    sw         $zero,9900($a6)
    lw         $t3,9900($a6)
    lw         $t8,9900($a6)
    lui        $a0,0x3400
    srl        $t8,$t8,0xa
    andi       $t3,$t3,0x3ff
    sll        $t8,$t8,0x17
    ori        $a0,$a0,0x8000
    or         $t3,$t3,$t8
    lui        $t2,0x9080
    or         $t3,$a0,$t3
    sw         $t3,0($a5)
    ori        $t2,$t2,0xbdc8
    sync
    sw         $t2,0($a5)
    sync
    lw         $t3,6672($a6)
    sw         $t3,0($a5)
    sync
    lw         $t1,6676($a6)
    sw         $t1,0($a5)
    sync
    lw         $t0,6680($a6)
    sw         $t0,0($a5)
    sync
    lw         $a4,6684($a6)
    sw         $a4,0($a5)
    sync
    lw         $a3,6688($a6)
    sw         $a3,0($a5)
    sync
    lw         $a2,6692($a6)
    sw         $a2,0($a5)
    sync
    lw         $a1,6696($a6)
    sw         $a1,0($a5)
    sync
    lw         $v1,6700($a6)
    sw         $v1,0($a5)
    sync
    lw         $v0,6704($a6)
    sw         $v0,0($a5)
    sync
    lw         $at,6708($a6)
    sw         $at,0($a5)
    sync
    lw         $ra,6712($a6)
    sw         $ra,0($a5)
    sync
    lw         $t9,6716($a6)
    sw         $t9,0($a5)
    sync
    lw         $t8,6720($a6)
    sw         $t8,0($a5)
    sync
    lw         $t3,6724($a6)
    sw         $t3,0($a5)
    sync
    lw         $t1,6728($a6)
    sw         $t1,0($a5)
    sync
    lw         $t0,6732($a6)
    sw         $t0,0($a5)
    li         $t3,16
    sync
    sw         $t3,9900($a6)
    lw         $a3,9900($a6)
    lw         $a4,9900($a6)
    srl        $a4,$a4,0xa
    andi       $a3,$a3,0x3ff
    sll        $a4,$a4,0x17
    or         $a3,$a3,$a4
    lui        $a2,0x9080
    or         $a3,$a0,$a3
    sw         $a3,0($a5)
    ori        $a2,$a2,0x91df
    sync
    sw         $a2,0($a5)
    sync
    lw         $a1,6736($a6)
    sw         $a1,0($a5)
    sync
    lw         $v1,6740($a6)
    sw         $v1,0($a5)
    sync
    lw         $v0,6744($a6)
    sw         $v0,0($a5)
    sync
    lw         $at,6748($a6)
    sw         $at,0($a5)
    sync
    sw         $zero,9900($a6)
    lw         $t9,9900($a6)
    li         $t8,6
    li         $t1,15
    lw         $ra,9900($a6)
    li         $t0,11
    li         $a4,13
    li         $a3,14
    srl        $ra,$ra,0xa
    andi       $t9,$t9,0x3ff
    sll        $ra,$ra,0x17
    lui        $a2,0x2000
    or         $t9,$t9,$ra
    or         $t9,$a0,$t9
    sw         $t9,0($a5)
    sync
    beqz       $s3, .L00002fdc
    ori        $t9,$a2,0x8380
    li         $v1,36
    sw         $v1,9900($a6)
    lw         $at,9900($a6)
    lw         $v0,9900($a6)
    srl        $v0,$v0,0xa
    andi       $at,$at,0x3ff
    sll        $v0,$v0,0x17
    or         $at,$at,$v0
    or         $at,$a0,$at
    sw         $at,0($a5)
    sync
    sw         $t2,0($a5)
    sync
    lw         $ra,6752($a6)
    sw         $ra,0($a5)
    sync
    lw         $a1,6756($a6)
    sw         $a1,0($a5)
    sync
    lw         $v1,6760($a6)
    sw         $v1,0($a5)
    sync
    lw         $v0,6764($a6)
    sw         $v0,0($a5)
    sync
    lw         $at,6768($a6)
    sw         $at,0($a5)
    sync
    lw         $ra,6772($a6)
    sw         $ra,0($a5)
    sync
    lw         $a1,6776($a6)
    sw         $a1,0($a5)
    sync
    lw         $v1,6780($a6)
    sw         $v1,0($a5)
    sync
    lw         $v0,6784($a6)
    sw         $v0,0($a5)
    sync
    lw         $at,6788($a6)
    sw         $at,0($a5)
    sync
    lw         $ra,6792($a6)
    sw         $ra,0($a5)
    sync
    lw         $a1,6796($a6)
    sw         $a1,0($a5)
    sync
    lw         $v1,6800($a6)
    sw         $v1,0($a5)
    sync
    lw         $v0,6804($a6)
    sw         $v0,0($a5)
    sync
    lw         $at,6808($a6)
    sw         $at,0($a5)
    sync
    lw         $ra,6812($a6)
    sw         $ra,0($a5)
    sync
    sw         $zero,9900($a6)
    lw         $v1,9900($a6)
    lw         $a1,9900($a6)
    srl        $a1,$a1,0xa
    andi       $v1,$v1,0x3ff
    sll        $a1,$a1,0x17
    or         $v1,$v1,$a1
    or         $v1,$a0,$v1
    sw         $v1,0($a5)
    li         $v0,52
    sync
    sw         $v0,9900($a6)
    lw         $ra,9900($a6)
    lw         $at,9900($a6)
    srl        $at,$at,0xa
    andi       $ra,$ra,0x3ff
    sll        $at,$at,0x17
    or         $ra,$ra,$at
    or         $ra,$a0,$ra
    sw         $ra,0($a5)
    sync
    sw         $t2,0($a5)
    sync
    lw         $a1,6816($a6)
    sw         $a1,0($a5)
    sync
    lw         $v1,6820($a6)
    sw         $v1,0($a5)
    sync
    lw         $v0,6824($a6)
    sw         $v0,0($a5)
    sync
    lw         $at,6828($a6)
    sw         $at,0($a5)
    sync
    lw         $ra,6832($a6)
    sw         $ra,0($a5)
    sync
    lw         $a1,6836($a6)
    sw         $a1,0($a5)
    sync
    lw         $v1,6840($a6)
    sw         $v1,0($a5)
    sync
    lw         $v0,6844($a6)
    sw         $v0,0($a5)
    sync
    lw         $at,6848($a6)
    sw         $at,0($a5)
    sync
    lw         $ra,6852($a6)
    sw         $ra,0($a5)
    sync
    lw         $a1,6856($a6)
    sw         $a1,0($a5)
    sync
    lw         $v1,6860($a6)
    sw         $v1,0($a5)
    sync
    lw         $v0,6864($a6)
    sw         $v0,0($a5)
    sync
    lw         $at,6868($a6)
    sw         $at,0($a5)
    sync
    lw         $ra,6872($a6)
    sw         $ra,0($a5)
    sync
    lw         $a1,6876($a6)
    sw         $a1,0($a5)
    sync
    sw         $zero,9900($a6)
    lw         $v0,9900($a6)
    lw         $v1,9900($a6)
    srl        $v1,$v1,0xa
    andi       $v0,$v0,0x3ff
    sll        $v1,$v1,0x17
    or         $v0,$v0,$v1
    or         $v0,$a0,$v0
    sw         $v0,0($a5)
    li         $at,20
    sync
    sw         $at,9900($a6)
    lw         $a1,9900($a6)
    lw         $ra,9900($a6)
    srl        $ra,$ra,0xa
    andi       $a1,$a1,0x3ff
    sll        $ra,$ra,0x17
    or         $a1,$a1,$ra
    or         $a1,$a0,$a1
    sw         $a1,0($a5)
    sync
    sw         $t2,0($a5)
    sync
    lw         $v1,6880($a6)
    sw         $v1,0($a5)
    sync
    lw         $v0,6884($a6)
    sw         $v0,0($a5)
    sync
    lw         $at,6888($a6)
    sw         $at,0($a5)
    sync
    lw         $ra,6892($a6)
    sw         $ra,0($a5)
    sync
    lw         $a1,6896($a6)
    sw         $a1,0($a5)
    sync
    lw         $v1,6900($a6)
    sw         $v1,0($a5)
    sync
    lw         $v0,6904($a6)
    sw         $v0,0($a5)
    sync
    lw         $at,6908($a6)
    sw         $at,0($a5)
    sync
    lw         $ra,6912($a6)
    sw         $ra,0($a5)
    sync
    lw         $a1,6916($a6)
    sw         $a1,0($a5)
    sync
    lw         $v1,6920($a6)
    sw         $v1,0($a5)
    sync
    lw         $v0,6924($a6)
    sw         $v0,0($a5)
    sync
    lw         $at,6928($a6)
    sw         $at,0($a5)
    sync
    lw         $ra,6932($a6)
    sw         $ra,0($a5)
    sync
    lw         $at,6936($a6)
    sw         $at,0($a5)
    sync
    lw         $ra,6940($a6)
    sw         $ra,0($a5)
    sync
    sw         $zero,9900($a6)
    lw         $a1,9900($a6)
    lw         $t2,9900($a6)
    srl        $t2,$t2,0xa
    andi       $a1,$a1,0x3ff
    sll        $t2,$t2,0x17
    or         $a1,$a1,$t2
    or         $a1,$a0,$a1
    sw         $a1,0($a5)
    sync
.L00002fdc:
    move       $a0,$zero
    b          .L0000302c
    sw         $a7,9900($a6)
.L00002fe8:
    dsll       $a1,$a0,0x2
    daddu      $a1,$a6,$a1
    lw         $v0,9820($a1)
    lw         $a1,9820($a1)
    srl        $a1,$a1,0xa
    or         $v1,$a2,$v1
    sll        $a1,$a1,0x17
    andi       $v0,$v0,0x3ff
    or         $v1,$v1,$a1
    or         $v0,$v0,$v1
    ori        $v0,$v0,0x8000
    sw         $v0,0($a5)
    sync
.L0000301c:
    addiu      $a0,$a0,1
.L00003020:
    slti       $a7,$a0,22
    beqz       $a7, .L000030d8
    nop
.L0000302c:
    beq        $a0, $a3, .L000030f8
    dsll       $t2,$a0,0x2
    beq        $a0, $a4, .L00003090
    nop
    beq        $a0, $t0, .L00003090
    nop
    beq        $a0, $t1, .L00003090
    nop
    beq        $a0, $t3, .L00003090
    nop
    beq        $a0, $t8, .L00003090
    sll        $ra,$a0,0x18
    dsll       $at,$a0,0x2
    daddu      $at,$a6,$at
    lw         $t2,9820($at)
    lw         $at,9820($at)
    srl        $at,$at,0xa
    or         $ra,$a2,$ra
    sll        $at,$at,0x17
    andi       $t2,$t2,0x3ff
    or         $ra,$ra,$at
    or         $t2,$t2,$ra
    ori        $t2,$t2,0x8000
    sw         $t2,0($a5)
    sync
.L00003090:
    addiu      $a0,$a0,1
.L00003094:
    slti       $v0,$a0,22
    beqz       $v0, .L000030d8
    nop
    beq        $a0, $a3, .L0000313c
    dsll       $t2,$a0,0x2
    beq        $a0, $a4, .L0000301c
    nop
    beq        $a0, $t0, .L0000301c
    nop
    beq        $a0, $t1, .L0000301c
    nop
    beq        $a0, $t3, .L0000301c
    nop
    bne        $a0, $t8, .L00002fe8
    sll        $v1,$a0,0x18
    b          .L00003020
    addiu      $a0,$a0,1
.L000030d8:
    ld         $s3,56($sp)
.L000030dc:
    ld         $s0,40($sp)
    ld         $ra,24($sp)
    ld         $s1,16($sp)
    ld         $s2,32($sp)
    ld         $s4,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000030f8:
    daddu      $t2,$t2,$a6
    lw         $v1,9820($t2)
    beqz       $v1, .L00003180
    sll        $a7,$a0,0x18
    lw         $ra,9820($t2)
    lw         $v0,9820($t2)
    srl        $v0,$v0,0xa
    or         $at,$a7,$a2
    sll        $v0,$v0,0x17
    andi       $ra,$ra,0x3ff
    or         $at,$at,$v0
    or         $ra,$ra,$at
    ori        $ra,$ra,0x8000
    sw         $ra,0($a5)
    sync
    b          .L00003094
    addiu      $a0,$a0,1
.L0000313c:
    daddu      $t2,$t2,$a6
    lw         $v1,9820($t2)
    beqz       $v1, .L00003194
    sll        $a7,$a0,0x18
    lw         $ra,9820($t2)
    lw         $v0,9820($t2)
    srl        $v0,$v0,0xa
    or         $at,$a7,$a2
    sll        $v0,$v0,0x17
    andi       $ra,$ra,0x3ff
    or         $at,$at,$v0
    or         $ra,$ra,$at
    ori        $ra,$ra,0x8000
    sw         $ra,0($a5)
    sync
    b          .L00003020
    addiu      $a0,$a0,1
.L00003180:
    or         $v1,$a7,$t9
    sw         $v1,0($a5)
    sync
    b          .L00003094
    addiu      $a0,$a0,1
.L00003194:
    or         $a1,$a7,$t9
    sw         $a1,0($a5)
    sync
    b          .L00003020
    addiu      $a0,$a0,1
.L000031a8:
    ld         $a1,-30720($gp)
    li         $a0,4
    lh         $a2,790($s4)
    jal        cmn_err
    daddiu     $a1,$a1,488
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L000030dc
    ld         $s3,56($sp)

glabel odsyRestoreVB
    daddiu     $sp,$sp,-48
    sd         $s0,8($sp)
    ld         $s0,192($a1)
    sd         $s3,16($sp)
    ld         $s3,824($a0)
    lw         $a3,0($a1)
    sd         $s4,40($sp)
    sd         $s2,32($sp)
    sltu       $a6,$zero,$a3
    sd         $s1,0($sp)
    move       $s1,$a2
    beqz       $a6, .L00003b38
    sd         $ra,24($sp)
    lw         $at,820($a0)
    bne        $at, $a3, .L00003228
    nop
    beqz       $a6, .L00003b38
    nop
    blez       $a4, .L00003b38
    nop
.L00003228:
    lw         $a3,0($s1)
    srl        $a3,$a3,0x10
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,384($a3)
    srl        $v0,$a3,0xa
    andi       $v0,$v0,0xf
    beqz       $v0, .L00003dd0
.L0000324c:
    lui        $s2,0x11
.L00003250:
    daddu      $s2,$s3,$s2
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x10
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,384($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L000032cc
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003288:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    lw         $a4,1280($a4)
    sw         $a4,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x10
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $t8,$a2,$s0
    lw         $t8,384($t8)
    srl        $t8,$t8,0xa
    addiu      $a3,$a3,1
    andi       $t8,$t8,0xf
    sltu       $t8,$a3,$t8
    bnez       $t8, .L00003288
    daddu      $a4,$a3,$a2
.L000032cc:
    ld         $s4,-30720($gp)
.L000032d0:
    srl        $a3,$a0,0xe
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,400($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003e00
    lui        $a0,0x7f
.L000032f4:
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0xe
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,400($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L0000336c
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003328:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    lw         $a4,1344($a4)
    sw         $a4,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0xe
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,400($a4)
    srl        $a4,$a4,0xa
    addiu      $a3,$a3,1
    andi       $a4,$a4,0xf
    sltu       $a4,$a3,$a4
    bnez       $a4, .L00003328
    daddu      $a4,$a3,$a2
.L0000336c:
    srl        $a3,$a0,0xc
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,416($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003e2c
    lui        $a0,0x7f
.L00003390:
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0xc
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,416($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003410
    srl        $a3,$a0,0xa
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L000033c8:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    lw         $a4,1408($a4)
    sw         $a4,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0xc
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,416($a4)
    srl        $a4,$a4,0xa
    addiu      $a3,$a3,1
    andi       $a4,$a4,0xf
    sltu       $a4,$a3,$a4
    bnez       $a4, .L000033c8
    daddu      $a4,$a3,$a2
.L0000340c:
    srl        $a3,$a0,0xa
.L00003410:
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,432($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003e58
    lui        $a0,0x7f
.L00003430:
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0xa
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,432($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L000034b0
    srl        $a3,$a0,0x4
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003468:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    lw         $a4,1472($a4)
    sw         $a4,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0xa
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,432($a4)
    srl        $a4,$a4,0xa
    addiu      $a3,$a3,1
    andi       $a4,$a4,0xf
    sltu       $a4,$a3,$a4
    bnez       $a4, .L00003468
    daddu      $a4,$a3,$a2
.L000034ac:
    srl        $a3,$a0,0x4
.L000034b0:
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,480($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003e84
    lui        $a0,0x7f
.L000034d0:
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x4
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,480($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003550
    srl        $a3,$a0,0x2
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003508:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    lw         $a4,1664($a4)
    sw         $a4,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x4
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,480($a4)
    srl        $a4,$a4,0xa
    addiu      $a3,$a3,1
    andi       $a4,$a4,0xf
    sltu       $a4,$a3,$a4
    bnez       $a4, .L00003508
    daddu      $a4,$a3,$a2
.L0000354c:
    srl        $a3,$a0,0x2
.L00003550:
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,496($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003eb0
    lui        $a0,0x7f
.L00003570:
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x2
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,496($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L000035f0
    andi       $a3,$a0,0x3
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L000035a8:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    lw         $a4,1728($a4)
    sw         $a4,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x2
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,496($a4)
    srl        $a4,$a4,0xa
    addiu      $a3,$a3,1
    andi       $a4,$a4,0xf
    sltu       $a4,$a3,$a4
    bnez       $a4, .L000035a8
    daddu      $a4,$a3,$a2
.L000035ec:
    andi       $a3,$a0,0x3
.L000035f0:
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,512($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003edc
    lui        $a0,0x7f
.L0000360c:
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $a4,$a0,$s0
    lw         $a4,512($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L0000367c
    move       $a2,$zero
    daddu      $a1,$a2,$a0
.L0000363c:
    dsll       $a1,$a1,0x2
    daddu      $a1,$s0,$a1
    lw         $a1,1792($a1)
    sw         $a1,0($s2)
    sync
    lw         $a0,0($s1)
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $a1,$a0,$s0
    lw         $a1,512($a1)
    srl        $a1,$a1,0xa
    addiu      $a2,$a2,1
    andi       $a1,$a1,0xf
    sltu       $a1,$a2,$a1
    bnez       $a1, .L0000363c
    daddu      $a1,$a2,$a0
.L0000367c:
    lw         $a3,4($s1)
.L00003680:
    srl        $a3,$a3,0x1e
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,528($a3)
    srl        $a2,$a3,0xa
    andi       $a2,$a2,0xf
    beqz       $a2, .L00003f08
    lui        $a0,0x7f
.L000036a0:
    sw         $a3,0($s2)
    sync
    lw         $a0,4($s1)
    srl        $a0,$a0,0x1e
    dsll       $a0,$a0,0x2
    daddu      $a4,$a0,$s0
    lw         $a4,528($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003710
    move       $a2,$zero
    daddu      $a1,$a2,$a0
.L000036d0:
    dsll       $a1,$a1,0x2
    daddu      $a1,$s0,$a1
    lw         $a1,1856($a1)
    sw         $a1,0($s2)
    sync
    lw         $a0,4($s1)
    srl        $a0,$a0,0x1e
    dsll       $a0,$a0,0x2
    daddu      $a1,$a0,$s0
    lw         $a1,528($a1)
    srl        $a1,$a1,0xa
    addiu      $a2,$a2,1
    andi       $a1,$a1,0xf
    sltu       $a1,$a2,$a1
    bnez       $a1, .L000036d0
    daddu      $a1,$a2,$a0
.L00003710:
    lw         $a3,0($s1)
.L00003714:
    srl        $a3,$a3,0x1a
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,304($a3)
    srl        $a2,$a3,0xa
    andi       $a2,$a2,0xf
    beqz       $a2, .L00003f34
    lui        $a0,0x7f
.L00003738:
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x1a
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,304($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L000037b8
    srl        $a3,$a0,0x18
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003770:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    lw         $a4,960($a4)
    sw         $a4,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x1a
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,304($a4)
    srl        $a4,$a4,0xa
    addiu      $a3,$a3,1
    andi       $a4,$a4,0xf
    sltu       $a4,$a3,$a4
    bnez       $a4, .L00003770
    daddu      $a4,$a3,$a2
.L000037b4:
    srl        $a3,$a0,0x18
.L000037b8:
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,320($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003f60
    lui        $a0,0x7f
.L000037d8:
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x18
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,320($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003858
    srl        $a3,$a0,0x16
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003810:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    lw         $a4,1024($a4)
    sw         $a4,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x18
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,320($a4)
    srl        $a4,$a4,0xa
    addiu      $a3,$a3,1
    andi       $a4,$a4,0xf
    sltu       $a4,$a3,$a4
    bnez       $a4, .L00003810
    daddu      $a4,$a3,$a2
.L00003854:
    srl        $a3,$a0,0x16
.L00003858:
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,336($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003f8c
    lui        $a0,0x7f
.L00003878:
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x16
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,336($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L000038f8
    srl        $a3,$a0,0x14
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L000038b0:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    lw         $a4,1088($a4)
    sw         $a4,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x16
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,336($a4)
    srl        $a4,$a4,0xa
    addiu      $a3,$a3,1
    andi       $a4,$a4,0xf
    sltu       $a4,$a3,$a4
    bnez       $a4, .L000038b0
    daddu      $a4,$a3,$a2
.L000038f4:
    srl        $a3,$a0,0x14
.L000038f8:
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,352($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003fb8
    lui        $a0,0x7f
.L00003918:
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x14
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,352($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003990
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L0000394c:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    lw         $a4,1152($a4)
    sw         $a4,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x14
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,352($a4)
    srl        $a4,$a4,0xa
    addiu      $a3,$a3,1
    andi       $a4,$a4,0xf
    sltu       $a4,$a3,$a4
    bnez       $a4, .L0000394c
    daddu      $a4,$a3,$a2
.L00003990:
    lw         $a5,4($s1)
    srl        $a6,$a0,0x8
    andi       $a6,$a6,0x3
    srl        $a5,$a5,0x1c
    dsll       $a6,$a6,0x4
    andi       $a5,$a5,0x3
    daddu      $a6,$s0,$a6
    dsll       $a5,$a5,0x4
    lw         $a6,1536($a6)
    daddu      $a5,$s0,$a5
    lui        $a7,0x9080
    lw         $a5,1920($a5)
    ori        $a7,$a7,0x91ea
    sw         $a7,0($s2)
    lui        $a4,0x8000
    sync
    sw         $a6,0($s2)
    xor        $a6,$a4,$a6
    sync
    sw         $a6,0($s2)
    sync
    sw         $a5,0($s2)
    xor        $a4,$a4,$a5
    sync
    sw         $a4,0($s2)
    sync
    lw         $a3,0($s1)
    srl        $a3,$a3,0x8
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,448($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003fe4
    lui        $a0,0x7f
.L00003a20:
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a0,$a0,0x8
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $a7,$a0,$s0
    lw         $a7,448($a7)
    srl        $a7,$a7,0xa
    andi       $a7,$a7,0xf
    beqz       $a7, .L00003a98
    move       $a2,$zero
    daddu      $a1,$a2,$a0
.L00003a54:
    dsll       $a1,$a1,0x2
    daddu      $a1,$s0,$a1
    lw         $a1,1536($a1)
    sw         $a1,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a0,$a0,0x8
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $a1,$a0,$s0
    lw         $a1,448($a1)
    srl        $a1,$a1,0xa
    addiu      $a2,$a2,1
    andi       $a1,$a1,0xf
    sltu       $a1,$a2,$a1
    bnez       $a1, .L00003a54
    daddu      $a1,$a2,$a0
.L00003a98:
    lw         $a3,4($s1)
.L00003a9c:
    srl        $a3,$a3,0x1c
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,544($a3)
    srl        $a2,$a3,0xa
    andi       $a2,$a2,0xf
    beqz       $a2, .L00004010
    lui        $a0,0x7f
.L00003ac0:
    sw         $a3,0($s2)
    sync
    lw         $a0,4($s1)
    srl        $a0,$a0,0x1c
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $a4,$a0,$s0
    lw         $a4,544($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003b38
    move       $a2,$zero
    daddu      $a1,$a2,$a0
.L00003af4:
    dsll       $a1,$a1,0x2
    daddu      $a1,$s0,$a1
    lw         $a1,1920($a1)
    sw         $a1,0($s2)
    sync
    lw         $a0,4($s1)
    srl        $a0,$a0,0x1c
    andi       $a0,$a0,0x3
    dsll       $a0,$a0,0x2
    daddu      $a1,$a0,$s0
    lw         $a1,544($a1)
    srl        $a1,$a1,0xa
    addiu      $a2,$a2,1
    andi       $a1,$a1,0xf
    sltu       $a1,$a2,$a1
    bnez       $a1, .L00003af4
    daddu      $a1,$a2,$a0
.L00003b38:
    lw         $a3,0($s1)
.L00003b3c:
    srl        $a3,$a3,0x1e
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,272($a3)
    srl        $a2,$a3,0xa
    andi       $a2,$a2,0xf
    beqz       $a2, .L00003d40
    ld         $s4,-30720($gp)
.L00003b5c:
    lui        $s2,0x11
.L00003b60:
    daddu      $s2,$s3,$s2
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x1e
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,272($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003bdc
    srl        $a3,$a0,0x1c
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003b98:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    lw         $a4,832($a4)
    sw         $a4,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x1e
    dsll       $a2,$a2,0x2
    daddu      $t8,$a2,$s0
    lw         $t8,272($t8)
    srl        $t8,$t8,0xa
    addiu      $a3,$a3,1
    andi       $t8,$t8,0xf
    sltu       $t8,$a3,$t8
    bnez       $t8, .L00003b98
    daddu      $a4,$a3,$a2
.L00003bd8:
    srl        $a3,$a0,0x1c
.L00003bdc:
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,288($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003d70
.L00003bf8:
    lui        $s2,0x11
.L00003bfc:
    daddu      $s2,$s3,$s2
    sw         $a3,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x1c
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,288($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003c80
    srl        $a3,$a0,0x12
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003c38:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    lw         $a4,896($a4)
    sw         $a4,0($s2)
    sync
    lw         $a0,0($s1)
    srl        $a2,$a0,0x1c
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $t8,$a2,$s0
    lw         $t8,288($t8)
    srl        $t8,$t8,0xa
    addiu      $a3,$a3,1
    andi       $t8,$t8,0xf
    sltu       $t8,$a3,$t8
    bnez       $t8, .L00003c38
    daddu      $a4,$a3,$a2
.L00003c7c:
    srl        $a3,$a0,0x12
.L00003c80:
    andi       $a3,$a3,0x3
    dsll       $a3,$a3,0x2
    daddu      $a3,$s0,$a3
    lw         $a3,368($a3)
    srl        $a5,$a3,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L00003da0
    ld         $s2,32($sp)
.L00003ca0:
    lui        $a0,0x11
.L00003ca4:
    daddu      $a0,$s3,$a0
    sw         $a3,0($a0)
    sync
    lw         $a2,0($s1)
    srl        $a2,$a2,0x12
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a4,$a2,$s0
    lw         $a4,368($a4)
    srl        $a4,$a4,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L00003d28
    ld         $s4,40($sp)
    move       $a3,$zero
    daddu      $a4,$a3,$a2
.L00003ce0:
    dsll       $a4,$a4,0x2
    daddu      $a4,$s0,$a4
    lw         $a4,1216($a4)
    sw         $a4,0($a0)
    sync
    lw         $a2,0($s1)
    srl        $a2,$a2,0x12
    andi       $a2,$a2,0x3
    dsll       $a2,$a2,0x2
    daddu      $a1,$a2,$s0
    lw         $a1,368($a1)
    srl        $a1,$a1,0xa
    addiu      $a3,$a3,1
    andi       $a1,$a1,0xf
    sltu       $a1,$a3,$a1
    bnez       $a1, .L00003ce0
    daddu      $a4,$a3,$a2
    ld         $s4,40($sp)
.L00003d28:
    ld         $ra,24($sp)
    ld         $s0,8($sp)
    ld         $s1,0($sp)
    ld         $s3,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00003d40:
    lui        $a0,0x7f
    nor        $a0,$a0,$zero
    lui        $a5,0x3000
    and        $a0,$a3,$a0
    ori        $a5,$a5,0xc02e
    beq        $a0, $a5, .L00003b5c
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L00003b60
    lui        $s2,0x11
    b          .L0000403c
    daddiu     $a2,$s4,768
.L00003d70:
    lui        $a0,0x7f
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003bf8
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L00003bfc
    lui        $s2,0x11
    b          .L00004050
    ld         $a2,-30720($gp)
.L00003da0:
    lui        $a0,0x7f
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003ca0
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L00003ca4
    lui        $a0,0x11
    b          .L00004068
    daddiu     $a2,$s4,672
.L00003dd0:
    lui        $a0,0x7f
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L0000324c
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L00003250
    lui        $s2,0x11
    b          .L0000407c
    ld         $s4,-30720($gp)
.L00003e00:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L000032f4
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L000032f4
    nop
    b          .L0000409c
    ld         $a2,-30720($gp)
.L00003e2c:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003390
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L00003390
    nop
    b          .L000040b4
    ld         $a2,-30720($gp)
.L00003e58:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003430
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L00003430
    nop
    b          .L000040cc
    ld         $a2,-30720($gp)
.L00003e84:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L000034d0
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L000034d0
    nop
    b          .L000040e4
    ld         $a2,-30720($gp)
.L00003eb0:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003570
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L00003570
    nop
    b          .L000040fc
    ld         $a2,-30720($gp)
.L00003edc:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L0000360c
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L0000360c
    nop
    b          .L00004114
    ld         $a2,-30720($gp)
.L00003f08:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L000036a0
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L000036a0
    nop
    b          .L0000412c
    ld         $a2,-30720($gp)
.L00003f34:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003738
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L00003738
    nop
    b          .L00004144
    ld         $a2,-30720($gp)
.L00003f60:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L000037d8
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L000037d8
    nop
    b          .L0000415c
    ld         $a2,-30720($gp)
.L00003f8c:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003878
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L00003878
    nop
    b          .L00004174
    daddiu     $a2,$s4,608
.L00003fb8:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003918
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L00003918
    nop
    b          .L00004188
    daddiu     $a2,$s4,624
.L00003fe4:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003a20
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L00003a20
    nop
    b          .L0000419c
    daddiu     $a2,$s4,640
.L00004010:
    nor        $a0,$a0,$zero
    lui        $a2,0x3000
    and        $a0,$a3,$a0
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L00003ac0
    lui        $a1,0x2f00
    ori        $a1,$a1,0xc02e
    beq        $a0, $a1, .L00003ac0
    nop
    b          .L000041b0
    daddiu     $a2,$s4,656
.L0000403c:
    daddiu     $a1,$s4,560
    jal        cmn_err
    li         $a0,7
    b          .L00003bd8
    lw         $a0,0($s1)
.L00004050:
    daddiu     $a1,$s4,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,776
    b          .L00003c7c
    lw         $a0,0($s1)
.L00004068:
    daddiu     $a1,$s4,560
    jal        cmn_err
    li         $a0,7
    b          .L00003d28
    ld         $s4,40($sp)
.L0000407c:
    li         $a0,7
    daddiu     $a2,$s4,688
    jal        cmn_err
    daddiu     $a1,$s4,560
    lui        $s2,0x11
    lw         $a0,0($s1)
    b          .L000032d0
    daddu      $s2,$s3,$s2
.L0000409c:
    daddiu     $a1,$s4,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,696
    b          .L0000336c
    lw         $a0,0($s1)
.L000040b4:
    daddiu     $a1,$s4,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,704
    b          .L0000340c
    lw         $a0,0($s1)
.L000040cc:
    daddiu     $a1,$s4,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,712
    b          .L000034ac
    lw         $a0,0($s1)
.L000040e4:
    daddiu     $a1,$s4,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,720
    b          .L0000354c
    lw         $a0,0($s1)
.L000040fc:
    daddiu     $a1,$s4,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,728
    b          .L000035ec
    lw         $a0,0($s1)
.L00004114:
    daddiu     $a1,$s4,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,736
    b          .L00003680
    lw         $a3,4($s1)
.L0000412c:
    daddiu     $a1,$s4,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,744
    b          .L00003714
    lw         $a3,0($s1)
.L00004144:
    daddiu     $a1,$s4,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,752
    b          .L000037b4
    lw         $a0,0($s1)
.L0000415c:
    daddiu     $a1,$s4,560
    li         $a0,7
    jal        cmn_err
    daddiu     $a2,$a2,760
    b          .L00003854
    lw         $a0,0($s1)
.L00004174:
    daddiu     $a1,$s4,560
    jal        cmn_err
    li         $a0,7
    b          .L000038f4
    lw         $a0,0($s1)
.L00004188:
    daddiu     $a1,$s4,560
    jal        cmn_err
    li         $a0,7
    b          .L00003990
    lw         $a0,0($s1)
.L0000419c:
    daddiu     $a1,$s4,560
    jal        cmn_err
    li         $a0,7
    b          .L00003a9c
    lw         $a3,4($s1)
.L000041b0:
    daddiu     $a1,$s4,560
    jal        cmn_err
    li         $a0,7
    b          .L00003b3c
    lw         $a3,0($s1)

glabel odsyRestoreGfe
    ld         $a3,824($a0)
    ld         $a4,176($a1)
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    lw         $a5,0($a1)
    ld         $s0,192($a1)
    sd         $s1,8($sp)
    beqz       $a5, .L000041fc
    sd         $ra,16($sp)
    lw         $at,820($a0)
    beq        $at, $a5, .L000041fc
    li         $a0,1
    b          .L00004204
    lui        $s1,0x11
.L000041fc:
    move       $a0,$zero
    lui        $s1,0x11
.L00004204:
    lui        $t2,0x1
    daddu      $s1,$a3,$s1
    ori        $t2,$t2,0x4400
    sw         $t2,0($s1)
    lui        $t1,0x1
    sync
    sw         $zero,0($s1)
    ori        $t1,$t1,0x4001
    sync
    sw         $t1,0($s1)
    li         $t0,1856
    sync
    sw         $t0,0($s1)
    li         $a7,491
    sync
    sw         $a7,0($s1)
    li         $a6,3905
    sync
    sw         $a6,0($s1)
    sync
    lw         $a5,172($s0)
    sw         $a5,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    li         $a2,17776
    sync
    sw         $a2,0($s1)
    sync
    lw         $a1,184($s0)
    sw         $a1,0($s1)
    li         $v1,1200
    sync
    sw         $v1,0($s1)
    sync
    lw         $v0,7052($a4)
    sw         $v0,0($s1)
    sync
    beqz       $a0, .L00004660
    ld         $ra,16($sp)
    lw         $a3,576($s0)
    srl        $t8,$a3,0xa
    andi       $t8,$t8,0xf
    beqz       $t8, .L00004670
    lui        $a2,0x7f
.L000042bc:
    sw         $a3,0($s1)
    sync
    lw         $t9,576($s0)
    srl        $t9,$t9,0xa
    andi       $t9,$t9,0xf
    beqz       $t9, .L00004308
    move       $a0,$zero
    dsll       $at,$a0,0x2
.L000042dc:
    daddu      $at,$s0,$at
    lw         $at,2048($at)
    sw         $at,0($s1)
    sync
    lw         $ra,576($s0)
    srl        $ra,$ra,0xa
    addiu      $a0,$a0,1
    andi       $ra,$ra,0xf
    sltu       $ra,$a0,$ra
    bnez       $ra, .L000042dc
    dsll       $at,$a0,0x2
.L00004308:
    lw         $a3,592($s0)
.L0000430c:
    srl        $v0,$a3,0xa
    andi       $v0,$v0,0xf
    beqz       $v0, .L0000469c
    lui        $a2,0x7f
.L0000431c:
    sw         $a3,0($s1)
    sync
    lw         $v1,592($s0)
    srl        $v1,$v1,0xa
    andi       $v1,$v1,0xf
    beqz       $v1, .L00004368
    move       $a0,$zero
    dsll       $a2,$a0,0x2
.L0000433c:
    daddu      $a2,$s0,$a2
    lw         $a2,2112($a2)
    sw         $a2,0($s1)
    sync
    lw         $a1,592($s0)
    srl        $a1,$a1,0xa
    addiu      $a0,$a0,1
    andi       $a1,$a1,0xf
    sltu       $a1,$a0,$a1
    bnez       $a1, .L0000433c
    dsll       $a2,$a0,0x2
.L00004368:
    lw         $a3,608($s0)
.L0000436c:
    srl        $a4,$a3,0xa
    andi       $a4,$a4,0xf
    beqz       $a4, .L000046c8
    lui        $a0,0x7f
.L0000437c:
    sw         $a3,0($s1)
    sync
    lw         $a5,608($s0)
    srl        $a5,$a5,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L000043c8
    move       $a0,$zero
    dsll       $a7,$a0,0x2
.L0000439c:
    daddu      $a7,$s0,$a7
    lw         $a7,2176($a7)
    sw         $a7,0($s1)
    sync
    lw         $a6,608($s0)
    srl        $a6,$a6,0xa
    addiu      $a0,$a0,1
    andi       $a6,$a6,0xf
    sltu       $a6,$a0,$a6
    bnez       $a6, .L0000439c
    dsll       $a7,$a0,0x2
.L000043c8:
    lw         $a3,624($s0)
.L000043cc:
    srl        $t0,$a3,0xa
    andi       $t0,$t0,0xf
    beqz       $t0, .L000046f4
    lui        $a0,0x7f
.L000043dc:
    sw         $a3,0($s1)
    sync
    lw         $t1,624($s0)
    srl        $t1,$t1,0xa
    andi       $t1,$t1,0xf
    beqz       $t1, .L00004430
    li         $at,15608
    move       $a0,$zero
    dsll       $t3,$a0,0x2
.L00004400:
    daddu      $t3,$s0,$t3
    lw         $t3,2240($t3)
    sw         $t3,0($s1)
    sync
    lw         $t2,624($s0)
    srl        $t2,$t2,0xa
    addiu      $a0,$a0,1
    andi       $t2,$t2,0xf
    sltu       $t2,$a0,$t2
    bnez       $t2, .L00004400
    dsll       $t3,$a0,0x2
    li         $at,15608
.L00004430:
    sw         $at,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    li         $ra,15609
    sw         $ra,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    li         $t9,15610
    sw         $t9,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    li         $t8,15611
    sw         $t8,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    sw         $zero,0($s1)
    sync
    ld         $ra,16($sp)
.L00004660:
    ld         $s1,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00004670:
    lui        $a1,0x3000
    nor        $a2,$a2,$zero
    ori        $a1,$a1,0xc02e
    and        $a2,$a3,$a2
    lui        $a0,0x2f00
    beq        $a2, $a1, .L000042bc
    ori        $a0,$a0,0xc02e
    beq        $a2, $a0, .L000042bc
    nop
    b          .L00004720
    ld         $a1,-30720($gp)
.L0000469c:
    lui        $a1,0x3000
    nor        $a2,$a2,$zero
    ori        $a1,$a1,0xc02e
    and        $a2,$a3,$a2
    lui        $a0,0x2f00
    beq        $a2, $a1, .L0000431c
    ori        $a0,$a0,0xc02e
    beq        $a2, $a0, .L0000431c
    nop
    b          .L00004738
    ld         $a1,-30720($gp)
.L000046c8:
    lui        $a4,0x3000
    nor        $a0,$a0,$zero
    ori        $a4,$a4,0xc02e
    and        $a0,$a3,$a0
    lui        $a2,0x2f00
    beq        $a0, $a4, .L0000437c
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L0000437c
    nop
    b          .L00004750
    ld         $a2,-30720($gp)
.L000046f4:
    lui        $a4,0x3000
    nor        $a0,$a0,$zero
    ori        $a4,$a4,0xc02e
    and        $a0,$a3,$a0
    lui        $a2,0x2f00
    beq        $a0, $a4, .L000043dc
    ori        $a2,$a2,0xc02e
    beq        $a0, $a2, .L000043dc
    nop
    b          .L00004768
    ld         $a2,-30720($gp)
.L00004720:
    li         $a0,7
    daddiu     $a2,$a1,784
    jal        cmn_err
    daddiu     $a1,$a1,560
    b          .L0000430c
    lw         $a3,592($s0)
.L00004738:
    li         $a0,7
    daddiu     $a2,$a1,800
    jal        cmn_err
    daddiu     $a1,$a1,560
    b          .L0000436c
    lw         $a3,608($s0)
.L00004750:
    li         $a0,7
    daddiu     $a1,$a2,560
    jal        cmn_err
    daddiu     $a2,$a2,816
    b          .L000043cc
    lw         $a3,624($s0)
.L00004768:
    li         $a0,7
    daddiu     $a1,$a2,560
    jal        cmn_err
    daddiu     $a2,$a2,824
    b          .L00004430
    li         $at,15608

glabel odsyRestorePIOPixel
    ld         $t0,192($a1)
    lw         $a4,184($t0)
    sll        $at,$a4,0xf
    move       $t3,$a0
    ld         $a7,176($a1)
    daddiu     $sp,$sp,-16
    move       $t1,$a3
    bltz       $at, .L000048a0
    sd         $ra,0($sp)
    lw         $a6,7048($a7)
.L000047a8:
    srl        $a0,$a4,0x5
    andi       $a0,$a0,0xf
    andi       $a3,$a4,0x1f
    ld         $t8,-30720($gp)
    beqz       $a0, .L00004800
    dsll32     $t2,$a0,0x0
    beqz       $a3, .L00004800
    dsrl       $a5,$t2,0x1d
    daddu      $a5,$t8,$a5
    lw         $t9,4($a5)
    beqz       $t9, .L000047f8
    lw         $a5,0($a5)
    dsll32     $t2,$a3,0x0
    dsrl       $t2,$t2,0x1e
    daddu      $t2,$t8,$t2
    lw         $t2,104($t2)
    mult       $t2,$a5
    mflo       $a5
.L000047f8:
    bnez       $a5, .L00004808
    nop
.L00004800:
    lw         $a5,7040($a7)
    ld         $t8,-30720($gp)
.L00004808:
    lw         $t9,128($t0)
    srl        $t9,$t9,0x6
    li         $ra,2
    andi       $t9,$t9,0x3
    beq        $t9, $ra, .L000048a8
    nop
    lw         $a4,7032($a7)
    lw         $a3,7028($a7)
.L00004828:
    blez       $a3, .L000048e4
    slti       $a7,$a3,2049
    beqz       $a7, .L000048e8
    daddiu     $a1,$t8,832
    blez       $a4, .L000048e4
    slti       $ra,$a4,2049
    beqz       $ra, .L000048e8
    daddiu     $a1,$t8,832
    blez       $a5, .L000048e8
    daddiu     $a1,$t8,832
    lw         $a1,172($t0)
    sll        $a1,$a1,0x2
    subu       $a1,$a1,$a6
    divu       $zero,$a1,$a5
    mflo       $a0
    div        $zero,$a0,$a3
    mflo       $at
    teq        $a3,$zero,0x7
    sltu       $v0,$at,$a4
    teq        $a5,$zero,0x7
    mfhi       $v1
    sw         $v1,0($a2)
    bnez       $v0, .L00004894
    sw         $at,0($t1)
    sw         $zero,0($t1)
.L00004894:
    ld         $ra,0($sp)
.L00004898:
    jr         $ra
    daddiu     $sp,$sp,16
.L000048a0:
    b          .L000047a8
    lw         $a6,7044($a7)
.L000048a8:
    lw         $a4,784($t0)
    lw         $t2,768($t0)
    subu       $a3,$t2,$a4
    lw         $a7,772($t0)
    bltz       $a3, .L000048d4
    lw         $a0,788($t0)
.L000048c0:
    subu       $a4,$a7,$a0
    bgez       $a4, .L00004828
    nop
    b          .L000048dc
    nop
.L000048d4:
    b          .L000048c0
    subu       $a3,$a4,$t2
.L000048dc:
    b          .L00004828
    subu       $a4,$a0,$a7
.L000048e4:
    daddiu     $a1,$t8,832
.L000048e8:
    lh         $a2,790($t3)
    jal        cmn_err
    li         $a0,4
    b          .L00004898
    ld         $ra,0($sp)

glabel odsySetProgram
    ld         $a4,824($a0)
    daddiu     $sp,$sp,-80
    sd         $s3,24($sp)
    ld         $s3,72($a0)
    sd         $ra,56($sp)
    sd         $s1,64($sp)
    sd         $s5,40($sp)
    sd         $s4,32($sp)
    ld         $s4,176($a1)
    slti       $at,$a2,2
    sd         $s2,16($sp)
    dsll       $s2,$a2,0x5
    move       $a3,$a2
    sd         $s0,48($sp)
    daddu      $s2,$s4,$s2
    move       $s0,$a0
    beqz       $at, .L00004b48
    lw         $s5,10992($s2)
    sltiu      $t8,$s5,254
    beqz       $t8, .L00004b7c
    ld         $a1,-30720($gp)
    sd         $a4,8($sp)
    lw         $s1,10996($s2)
    lw         $a1,11064($s4)
    lw         $t9,11060($s4)
    sd         $t9,0($sp)
    beqz       $s1, .L00004980
    addu       $a0,$s1,$a1
    sltiu      $ra,$a1,1848
    bnez       $ra, .L00004980
    addiu      $a2,$a0,-1848
    b          .L00004988
    move       $a0,$s0
.L00004980:
    move       $a2,$a1
    move       $a0,$s0
.L00004988:
    li         $a3,1
    jal        odsyDownloadUcode
    move       $a4,$s3
    bnez       $v0, .L00004bac
    ld         $a1,-30720($gp)
    beqz       $s1, .L000049e8
    ld         $at,0($sp)
    beq        $s1, $at, .L000049e8
    li         $a3,0x8554
    daddu      $a3,$a3,$s0
    lw         $a3,0($a3)
    subu       $a3,$a3,$s1
    sltiu      $v0,$a3,200
    bnez       $v0, .L000049c8
    nop
    li         $a3,199
.L000049c8:
    move       $a0,$s0
    li         $a1,1848
    move       $a2,$s1
    jal        odsyDownloadUcode
    move       $a4,$s3
    bnez       $v0, .L00004c08
    ld         $a1,-30720($gp)
    sw         $s1,11060($s4)
.L000049e8:
    move       $a0,$s0
    lw         $a2,11004($s2)
    li         $a3,1
    lw         $a1,11000($s2)
    jal        odsyDownloadUcode
    move       $a4,$s3
    bnez       $v0, .L00004bd8
    lui        $a6,0x11
    lui        $t9,0x3300
    dsll32     $v0,$s5,0x0
    dsrl       $v0,$v0,0x1e
    addiu      $a1,$s5,1
    ld         $a5,8($sp)
    andi       $v1,$a1,0x3ff
    srl        $a1,$a1,0xa
    lw         $a0,11000($s2)
    ori        $t9,$t9,0x8000
    sll        $a1,$a1,0x17
    sw         $a0,11064($s4)
    daddu      $a5,$a5,$a6
    or         $v1,$v1,$a1
    daddu      $v0,$s4,$v0
    or         $v1,$t9,$v1
    sw         $v1,0($a5)
    sync
    lw         $v0,9948($v0)
    lui        $t3,0x2900
    srl        $v1,$v0,0xa
    andi       $v0,$v0,0x3ff
    sll        $v1,$v1,0x17
    ori        $t3,$t3,0x8000
    or         $v0,$v0,$v1
    lui        $at,0x9080
    or         $v0,$t3,$v0
    sw         $v0,0($a5)
    ori        $at,$at,0x8800
    sync
    sw         $at,0($a5)
    sync
    sw         $zero,0($a5)
    sync
    sw         $zero,0($a5)
    sync
    lw         $ra,10988($s2)
    srl        $at,$ra,0xa
    andi       $ra,$ra,0x3ff
    sll        $at,$at,0x17
    or         $ra,$ra,$at
    or         $t9,$t9,$ra
    sw         $t9,0($a5)
    sync
    lw         $t8,10976($s2)
    srl        $t9,$t8,0xa
    andi       $t8,$t8,0x3ff
    sll        $t9,$t9,0x17
    or         $t8,$t8,$t9
    or         $t3,$t3,$t8
    sw         $t3,0($a5)
    sync
    lw         $t2,10980($s2)
    andi       $t0,$t2,0x3ff
    srl        $t2,$t2,0xa
    lui        $t1,0x2a00
    sll        $t2,$t2,0x17
    ori        $t1,$t1,0x8000
    or         $t0,$t0,$t2
    or         $t0,$t0,$t1
    sw         $t0,0($a5)
    sync
    lw         $a7,10984($s2)
    andi       $a4,$a7,0x3ff
    srl        $a7,$a7,0xa
    lui        $a6,0x2c00
    sll        $a7,$a7,0x17
    ori        $a6,$a6,0x8000
    or         $a4,$a4,$a7
    or         $a4,$a4,$a6
    sw         $a4,0($a5)
    sync
    ld         $s2,16($sp)
.L00004b28:
    ld         $s3,24($sp)
    ld         $s4,32($sp)
    ld         $ra,56($sp)
    ld         $s5,40($sp)
    ld         $s0,48($sp)
    ld         $s1,64($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00004b48:
    ld         $a1,-30720($gp)
    li         $a4,2
    li         $a0,4
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,928
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00004b28
    ld         $s2,16($sp)
.L00004b7c:
    lh         $a2,790($a0)
    li         $a0,4
    move       $a3,$s5
    jal        cmn_err
    daddiu     $a1,$a1,1016
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00004b28
    ld         $s2,16($sp)
.L00004bac:
    li         $a0,4
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1096
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00004b28
    ld         $s2,16($sp)
.L00004bd8:
    ld         $a1,-30720($gp)
    li         $a0,4
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1224
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00004b28
    ld         $s2,16($sp)
.L00004c08:
    li         $a0,4
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1160
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00004b28
    ld         $s2,16($sp)

glabel odsyRestartContext
    daddiu     $sp,$sp,-112
    sd         $s3,64($sp)
    sd         $zero,0($sp)
    ld         $s3,176($a1)
    sd         $s1,40($sp)
    ld         $s1,192($a1)
    sw         $zero,12($sp)
    sw         $zero,8($sp)
    ld         $a2,824($a0)
    sd         $s2,72($sp)
    sd         $s6,32($sp)
    lw         $s6,128($s1)
    sd         $ra,80($sp)
    sd         $s0,96($sp)
    andi       $s6,$s6,0xf
    sd         $s7,56($sp)
    sltiu      $s6,$s6,11
    move       $s7,$a0
    sd         $s5,48($sp)
    move       $s5,$a1
    beqz       $s6, .L00004c98
    sd         $s4,104($sp)
    lw         $s2,128($s1)
    b          .L00004c9c
    andi       $s2,$s2,0xf
.L00004c98:
    li         $s2,15
.L00004c9c:
    lw         $s4,128($s1)
    lui        $a5,0x3400
    lui        $s0,0x11
    lw         $a3,128($s1)
    lui        $a4,0x1
    daddu      $s0,$a2,$s0
    move       $a1,$a4
    ori        $a5,$a5,0x8000
    sw         $a5,0($s0)
    ori        $a1,$a4,0x443
    sync
    sw         $a1,0($s0)
    li         $a6,250
    sync
    sw         $a6,0($s0)
    ori        $a4,$a4,0x46
    sync
    sw         $a4,0($s0)
    lui        $t1,0x1
    sync
    sw         $a4,0($s0)
    ori        $t1,$t1,0x19
    sync
    sw         $t1,0($s0)
    sync
    sw         $a1,0($s0)
    sync
    li         $a5,150
    sw         $a5,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a1,0($s0)
    sync
    sw         $a6,0($s0)
    sync
    sw         $a4,0($s0)
    lui        $t0,0x1
    sync
    sw         $a4,0($s0)
    ori        $t0,$t0,0x1017
    sync
    sw         $t0,0($s0)
    sync
    lw         $t3,6948($s3)
    sw         $t3,0($s0)
    sync
    lw         $t2,6952($s3)
    sw         $t2,0($s0)
    sync
    lw         $a7,6956($s3)
    sw         $a7,0($s0)
    sync
    lw         $a0,6960($s3)
    sw         $a0,0($s0)
    sync
    sw         $a1,0($s0)
    sync
    sw         $a5,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a1,0($s0)
    sync
    sw         $a6,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $t0,0($s0)
    sync
    lw         $v1,6948($s3)
    sw         $v1,0($s0)
    sync
    lw         $v0,6952($s3)
    sw         $v0,0($s0)
    sync
    sw         $zero,0($s0)
    sync
    lw         $at,6960($s3)
    sw         $at,0($s0)
    sync
    sw         $t0,0($s0)
    sync
    lw         $ra,6948($s3)
    sw         $ra,0($s0)
    sync
    lw         $t9,6952($s3)
    sw         $t9,0($s0)
    sync
    lw         $t3,6956($s3)
    lui        $t8,0x80
    or         $t3,$t3,$t8
    sw         $t3,0($s0)
    sync
    lw         $t2,6960($s3)
    sw         $t2,0($s0)
    sync
    sw         $a1,0($s0)
    sync
    sw         $a6,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $t1,0($s0)
    sync
    sw         $a1,0($s0)
    sync
    sw         $a5,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a1,0($s0)
    sync
    sw         $a6,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    sw         $t0,0($s0)
    sync
    lw         $a7,6948($s3)
    sw         $a7,0($s0)
    sync
    lw         $t8,6952($s3)
    srl        $s4,$s4,0x4
    sw         $t8,0($s0)
    sync
    lw         $t0,6956($s3)
    srl        $a3,$a3,0x6
    sw         $t0,0($s0)
    sync
    lw         $a7,6960($s3)
    sw         $a7,0($s0)
    sync
    sw         $a1,0($s0)
    sync
    sw         $a5,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    andi       $a3,$a3,0x3
    sw         $a4,0($s0)
    sync
    andi       $s4,$s4,0x3
    sw         $a4,0($s0)
    sync
    sd         $a3,16($sp)
    sw         $a4,0($s0)
    sync
    sw         $a1,0($s0)
    sync
    sw         $a6,0($s0)
    sync
    sw         $a4,0($s0)
    sync
    li         $a0,10
    sw         $a4,0($s0)
    sync
    beq        $a0, $s2, .L00005474
    sd         $s8,88($sp)
    move       $s8,$zero
    lw         $t9,128($s1)
.L00004f80:
    li         $ra,-49
    and        $t9,$t9,$ra
    li         $ra,-193
    and        $t9,$t9,$ra
    sw         $t9,128($s1)
    lw         $t8,128($s1)
    srl        $t8,$t8,0x15
    andi       $t8,$t8,0x7
    sltiu      $t8,$t8,7
    beqz       $t8, .L00004fe0
    nop
    lw         $at,128($s1)
    lw         $v0,128($s1)
    srl        $v0,$v0,0x15
    andi       $v0,$v0,0x7
    lui        $v1,0xe0
    subu       $v0,$v0,$s4
    nor        $v1,$v1,$zero
    andi       $v0,$v0,0x7
    and        $at,$at,$v1
    sll        $v0,$v0,0x15
    or         $at,$at,$v0
    b          .L00004ff0
    sw         $at,128($s1)
.L00004fe0:
    lw         $v1,128($s1)
    lui        $a0,0xe0
    or         $v1,$v1,$a0
    sw         $v1,128($s1)
.L00004ff0:
    lw         $a1,128($s1)
    lui        $a4,0x1
    li         $t3,480
    srl        $a1,$a1,0x15
    li         $t2,1857
    andi       $a1,$a1,0x7
    li         $t8,1856
    beqz       $a1, .L0000503c
    ori        $t0,$a4,0x400
    li         $a2,2
    beq        $s2, $a2, .L0000503c
    li         $a3,6
    beq        $s2, $a3, .L00005040
    move       $a2,$zero
    li         $a5,9
    beq        $s2, $a5, .L00005040
    move       $a2,$zero
    b          .L00005040
    li         $a2,1
.L0000503c:
    move       $a2,$zero
.L00005040:
    lw         $t9,128($s1)
    lw         $v0,128($s1)
    lw         $ra,128($s1)
    lw         $v1,128($s1)
    srl        $v1,$v1,0xc
    andi       $v1,$v1,0x3
    subu       $v1,$v1,$s4
    addiu      $v1,$v1,3
    li         $a0,3
    divu       $zero,$v1,$a0
    mfhi       $at
    li         $v1,-12289
    andi       $at,$at,0x3
    and        $ra,$ra,$v1
    sll        $at,$at,0xc
    or         $ra,$ra,$at
    sw         $ra,128($s1)
    lw         $at,128($s1)
    srl        $at,$at,0xe
    andi       $at,$at,0x3
    subu       $at,$at,$s4
    li         $v1,0xc000
    addiu      $at,$at,4
    nor        $v1,$v1,$zero
    andi       $at,$at,0x3
    and        $ra,$ra,$v1
    sll        $at,$at,0xe
    or         $ra,$ra,$at
    sw         $ra,128($s1)
    srl        $v0,$v0,0x15
    lw         $at,128($s1)
    li         $a7,2
    andi       $v0,$v0,0x7
    sltu       $a7,$a7,$v0
    srl        $at,$at,0xe
    li         $v0,-2049
    andi       $at,$at,0x1
    and        $ra,$ra,$v0
    sll        $at,$at,0xb
    srl        $t9,$t9,0x15
    or         $ra,$ra,$at
    sw         $ra,128($s1)
    li         $a6,1
    andi       $t9,$t9,0x7
    lw         $a3,8($sp)
    sltu       $a6,$a6,$t9
    lw         $a1,12($sp)
    lui        $a5,0xff
    sll        $a3,$a3,0xc
    ori        $a5,$a5,0xf000
    andi       $a1,$a1,0xfff
    and        $a3,$a3,$a5
    lw         $a0,0($s5)
    or         $a1,$a1,$a3
    lui        $a3,0x7
    sll        $a0,$a0,0xc
    ori        $a3,$a3,0xf000
    and        $a0,$a0,$a3
    andi       $a3,$s2,0xf
    beqz       $s8, .L00005648
    or         $a0,$a0,$a3
    beqz       $s6, .L0000515c
    ori        $a2,$a4,0x444
.L0000513c:
    sw         $t0,0($s0)
    sync
    sw         $s2,0($s0)
    sync
    sw         $a2,0($s0)
    sync
    sw         $zero,0($s0)
    sync
.L0000515c:
    lui        $a3,0x1
    ori        $a3,$a3,0x850
    sw         $a3,0($s0)
    sync
    sw         $a0,0($s0)
    sync
    sw         $a1,0($s0)
    sync
    beqz       $s6, .L000051dc
    li         $a7,10
    sw         $t8,0($s0)
    sync
    sw         $t3,0($s0)
    sync
    sw         $t2,0($s0)
    sync
    lw         $a4,128($s1)
    sw         $a4,0($s0)
    sync
    beqz       $s4, .L00005444
    ld         $a5,-30696($gp)
    dsll32     $a6,$s2,0x0
    dsrl       $a6,$a6,0x1d
    daddu      $a5,$a5,$a6
    ld         $a5,0($a5)
    move       $a0,$s7
    move       $a1,$s5
    move       $a2,$s4
    ld         $a3,16($sp)
    jalr       $a5
    daddiu     $a4,$sp,0
    li         $a7,10
.L000051dc:
    beq        $a7, $s2, .L00005300
    move       $a0,$s7
    move       $a1,$s5
    daddiu     $a2,$s1,132
    ld         $a3,0($sp)
    jal        odsyRestoreVB
    move       $a4,$s4
    lw         $t0,10972($s3)
    beqz       $t0, .L000052e0
    move       $a0,$s7
    move       $a1,$s5
    jal        odsySetProgram
    lw         $a2,11056($s3)
    lw         $ra,9896($s3)
    lw         $v0,9896($s3)
    andi       $ra,$ra,0x3ff
    srl        $v0,$v0,0xa
    sll        $v0,$v0,0x17
    lui        $at,0x3300
    or         $ra,$ra,$v0
    ori        $at,$at,0x8000
    or         $ra,$ra,$at
    sw         $ra,0($s0)
    sync
    lw         $t9,9856($s3)
    lw         $at,9856($s3)
    andi       $t9,$t9,0x3ff
    srl        $at,$at,0xa
    sll        $at,$at,0x17
    lui        $ra,0x2900
    or         $t9,$t9,$at
    ori        $ra,$ra,0x8000
    or         $t9,$t9,$ra
    sw         $t9,0($s0)
    sync
    lw         $t8,9860($s3)
    lw         $ra,9860($s3)
    andi       $t8,$t8,0x3ff
    srl        $ra,$ra,0xa
    sll        $ra,$ra,0x17
    lui        $t9,0x2a00
    or         $t8,$t8,$ra
    ori        $t9,$t9,0x8000
    or         $t8,$t8,$t9
    sw         $t8,0($s0)
    sync
    lw         $t3,9868($s3)
    lw         $t9,9868($s3)
    lui        $t1,0x2800
    lui        $t2,0x2780
    andi       $t3,$t3,0x3ff
    srl        $t9,$t9,0xa
    sll        $t9,$t9,0x17
    lui        $t8,0x2c00
    or         $t3,$t3,$t9
    ori        $t8,$t8,0x8000
    or         $t3,$t3,$t8
    sw         $t3,0($s0)
    sync
    ori        $t2,$t2,0x83ff
    sw         $t2,0($s0)
    sync
    ori        $t1,$t1,0x80ff
    sw         $t1,0($s0)
    sync
.L000052e0:
    bnez       $s6, .L00005300
    lui        $at,0x12
    lui        $v0,0x1
    ori        $v0,$v0,0x658
    sw         $v0,0($s0)
    sync
    sw         $at,0($s0)
    sync
.L00005300:
    lw         $a6,180($s1)
    lw         $a1,188($s1)
    lui        $v1,0xaff0
    move       $a0,$s1
    beqz       $a6, .L00005710
    ld         $v1,128($v1)
    beqz       $a1, .L00005718
    addiu      $a4,$a1,-1
.L00005320:
    move       $a1,$a4
    li         $a3,-1
    andi       $a5,$a4,0x1
    daddiu     $a0,$s1,4
    dsll32     $a3,$a3,0x0
    li         $a2,-1
    beqz       $a5, .L00005724
    dsrl32     $a2,$a2,0x0
    ld         $a7,-30696($gp)
    sd         $a7,0($s0)
    sync
    lwu        $a6,180($s1)
    lwu        $a5,176($s1)
    dsll32     $a6,$a6,0x0
    and        $a5,$a2,$a5
    and        $a6,$a3,$a6
    or         $a5,$a5,$a6
    sd         $a5,0($s0)
    sync
    sd         $zero,0($s0)
    sync
    sd         $zero,0($s0)
    sync
    lwu        $a4,0($a0)
    daddiu     $a0,$s1,8
    and        $a4,$a2,$a4
    sd         $a4,0($s0)
    sync
    ld         $s2,72($sp)
.L00005394:
    ld         $s6,32($sp)
    ld         $s1,40($sp)
    lw         $t2,9900($s3)
    lw         $t3,9900($s3)
    ld         $ra,80($sp)
    slti       $t0,$a1,2
    ld         $s8,88($sp)
    lui        $t1,0x3400
    srl        $t3,$t3,0xa
    ld         $s5,48($sp)
    andi       $t2,$t2,0x3ff
    sll        $t3,$t3,0x17
    ld         $s7,56($sp)
    ori        $t1,$t1,0x8000
    or         $t2,$t2,$t3
    or         $t1,$t1,$t2
    sw         $t1,0($s0)
    sync
    bnez       $t0, .L00005424
    ld         $s4,104($sp)
    li         $a3,-1
    dsll32     $a3,$a3,0x0
    li         $a2,-1
    dsrl32     $a2,$a2,0x0
.L000053f4:
    lwu        $a6,0($a0)
    addiu      $a1,$a1,-2
    lwu        $a5,4($a0)
    slti       $a4,$a1,2
    dsll32     $a6,$a6,0x0
    and        $a5,$a2,$a5
    and        $a6,$a3,$a6
    or         $a5,$a5,$a6
    sd         $a5,0($s0)
    sync
    beqz       $a4, .L000053f4
    daddiu     $a0,$a0,8
.L00005424:
    beqz       $a1, .L00005438
    ld         $s3,64($sp)
    lw         $a7,0($a0)
    sw         $a7,0($s0)
    sync
.L00005438:
    ld         $s0,96($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00005444:
    beqz       $s8, .L000051dc
    li         $a7,10
    lui        $t0,0x8080
    ori        $t0,$t0,0xc800
    sw         $t0,0($s0)
    sync
    sw         $zero,0($s0)
    sync
    sw         $zero,0($s0)
    sync
    b          .L000051dc
    li         $a7,10
.L00005474:
    lw         $t1,6964($s3)
    andi       $t1,$t1,0x7
    move       $s8,$zero
    beqz       $t1, .L00005770
    sd         $t1,24($sp)
    lw         $t2,128($s1)
    srl        $t2,$t2,0x6
    andi       $t2,$t2,0x3
    beqz       $t2, .L000054a4
    lw         $a0,172($s1)
    move       $s4,$zero
    li         $s8,1
.L000054a4:
    beqz       $a0, .L000054bc
    move       $a0,$s7
    move       $a1,$s5
    daddiu     $a2,$sp,8
    jal        odsyRestorePIOPixel
    daddiu     $a3,$sp,12
.L000054bc:
    move       $a0,$s7
    move       $a1,$s5
    jal        odsySetProgram
    lw         $a2,11056($s3)
    move       $a0,$s7
    move       $a1,$s5
    daddiu     $a2,$s1,132
    ld         $a3,0($sp)
    jal        odsyRestoreVB
    move       $a4,$zero
    ld         $t3,24($sp)
    lui        $a5,0x12
    lui        $a6,0x1
    beqz       $t3, .L00005580
    ori        $a6,$a6,0x658
    lui        $a4,0xcf80
    ori        $a4,$a4,0xa92f
    sw         $a4,0($s0)
    sync
    lw         $a3,6988($s3)
    sw         $a3,0($s0)
    sync
    lw         $a2,6992($s3)
    sw         $a2,0($s0)
    sync
    lw         $a1,6996($s3)
    sw         $a1,0($s0)
    sync
    lw         $a0,7000($s3)
    sw         $a0,0($s0)
    sync
    lw         $v1,7004($s3)
    sw         $v1,0($s0)
    sync
    lw         $v0,7008($s3)
    sw         $v0,0($s0)
    sync
    lw         $at,7012($s3)
    sw         $at,0($s0)
    sync
    lw         $ra,7016($s3)
    sw         $ra,0($s0)
    sync
    lw         $t9,7020($s3)
    sw         $t9,0($s0)
    sync
    lw         $t8,7024($s3)
    sw         $t8,0($s0)
    sync
.L00005580:
    lw         $t2,9896($s3)
    lw         $t8,9896($s3)
    lui        $t3,0x3300
    srl        $t8,$t8,0xa
    andi       $t2,$t2,0x3ff
    sll        $t8,$t8,0x17
    ori        $t3,$t3,0x8000
    or         $t2,$t2,$t8
    or         $t2,$t2,$t3
    sw         $t2,0($s0)
    sync
    lw         $t1,9856($s3)
    lw         $t3,9856($s3)
    lui        $t2,0x2900
    srl        $t3,$t3,0xa
    andi       $t1,$t1,0x3ff
    sll        $t3,$t3,0x17
    ori        $t2,$t2,0x8000
    or         $t1,$t1,$t3
    or         $t1,$t1,$t2
    sw         $t1,0($s0)
    sync
    lw         $t0,9860($s3)
    lw         $t2,9860($s3)
    lui        $t1,0x2a00
    srl        $t2,$t2,0xa
    andi       $t0,$t0,0x3ff
    sll        $t2,$t2,0x17
    ori        $t1,$t1,0x8000
    or         $t0,$t0,$t2
    or         $t0,$t0,$t1
    sw         $t0,0($s0)
    sync
    lw         $a7,9868($s3)
    lw         $t1,9868($s3)
    lui        $t0,0x2c00
    srl        $t1,$t1,0xa
    andi       $a7,$a7,0x3ff
    sll        $t1,$t1,0x17
    ori        $t0,$t0,0x8000
    or         $a7,$a7,$t1
    or         $a7,$a7,$t0
    sw         $a7,0($s0)
    sync
    sw         $a6,0($s0)
    sync
    sw         $a5,0($s0)
    sync
    b          .L00004f80
    lw         $t9,128($s1)
.L00005648:
    lui        $a5,0xff00
    and        $a1,$a1,$a5
    li         $a5,-33
    li         $t9,-17
    sll        $a3,$a2,0x4
    andi       $a3,$a3,0x10
    and        $a0,$a0,$t9
    or         $a0,$a0,$a3
    sll        $a3,$a6,0x5
    andi       $a3,$a3,0x20
    and        $a0,$a0,$a5
    li         $a5,-65
    or         $a0,$a0,$a3
    and        $a0,$a0,$a5
    sll        $a5,$a7,0x6
    andi       $a5,$a5,0x40
    lw         $a3,128($s1)
    li         $t9,-129
    or         $a0,$a0,$a5
    lw         $a5,128($s1)
    and        $a0,$a0,$t9
    srl        $a3,$a3,0xb
    srl        $a5,$a5,0xc
    andi       $a3,$a3,0x1
    li         $t9,-769
    sll        $a3,$a3,0x7
    andi       $a5,$a5,0x3
    andi       $a3,$a3,0x80
    sll        $a5,$a5,0x8
    or         $a0,$a0,$a3
    and        $a0,$a0,$t9
    andi       $a5,$a5,0x300
    lw         $a3,128($s1)
    or         $a0,$a0,$a5
    li         $a5,-3073
    srl        $a3,$a3,0xe
    and        $a0,$a0,$a5
    andi       $a3,$a3,0x3
    lui        $a5,0x18
    sll        $a3,$a3,0xa
    nor        $t9,$a5,$zero
    andi       $a3,$a3,0xc00
    or         $a0,$a0,$a3
    sll        $a3,$s4,0x13
    and        $a3,$a3,$a5
    and        $a0,$a0,$t9
    beqz       $s6, .L0000515c
    or         $a0,$a0,$a3
    b          .L0000513c
    ori        $a2,$a4,0x444
.L00005710:
    b          .L00005394
    ld         $s2,72($sp)
.L00005718:
    move       $a4,$zero
    b          .L00005320
    nop
.L00005724:
    dsll32     $a5,$a6,0x0
    li         $a7,1479
    dsrl32     $a5,$a5,0x0
    dsll32     $a7,$a7,0x4
    and        $a5,$a2,$a5
    or         $a5,$a5,$a7
    sd         $a5,0($s0)
    sync
    lwu        $a4,176($s1)
    dsll32     $a4,$a4,0x0
    and        $a4,$a3,$a4
    sd         $a4,0($s0)
    sync
    sd         $zero,0($s0)
    sync
    sd         $zero,0($s0)
    sync
    b          .L00005394
    ld         $s2,72($sp)
.L00005770:
    b          .L000054bc
    move       $s8,$zero

glabel odsyRestoreVertex
    ld         $a3,0($a4)
    ld         $a6,824($a0)
    daddiu     $sp,$sp,-80
    sd         $a0,8($sp)
    sd         $a1,16($sp)
    sd         $a5,64($sp)
    sd         $a6,0($sp)
    sd         $s2,40($sp)
    ld         $s2,176($a1)
    sd         $s5,48($sp)
    sd         $s1,32($sp)
    move       $s5,$a4
    ld         $s1,192($a1)
    sd         $s0,72($sp)
    move       $at,$a2
    dsll       $a2,$a5,0x3
    move       $a4,$at
    sd         $ra,24($sp)
    daddu      $a2,$s1,$a2
    daddiu     $a2,$a2,140
    jal        odsyRestoreVB
    sd         $a2,56($sp)
    ld         $t9,56($sp)
    sd         $t9,0($s5)
    lw         $t8,10972($s2)
    ld         $s0,64($sp)
    beqz       $t8, .L000057fc
    dsll       $s0,$s0,0x2
    ld         $a0,8($sp)
    ld         $a1,16($sp)
    daddu      $a2,$s0,$s2
    jal        odsySetProgram
    lw         $a2,11040($a2)
.L000057fc:
    daddu      $a4,$s0,$s1
    lw         $a3,256($a4)
    lui        $a0,0x2f00
    lui        $a6,0x11
    ld         $a1,0($sp)
    srl        $a2,$a3,0xa
    lui        $a5,0x7f
    andi       $a2,$a2,0xf
    nor        $a5,$a5,$zero
    daddu      $a1,$a1,$a6
    beqz       $a2, .L00005898
    and        $a5,$a3,$a5
.L0000582c:
    sw         $a3,0($a1)
    sync
    lw         $a5,256($a4)
    srl        $a5,$a5,0xa
    andi       $a5,$a5,0xf
    beqz       $a5, .L0000587c
    move       $a0,$zero
    daddu      $a7,$a0,$s0
.L0000584c:
    dsll       $a7,$a7,0x2
    daddu      $a7,$s1,$a7
    lw         $a7,768($a7)
    sw         $a7,0($a1)
    sync
    lw         $a6,256($a4)
    srl        $a6,$a6,0xa
    addiu      $a0,$a0,1
    andi       $a6,$a6,0xf
    sltu       $a6,$a0,$a6
    bnez       $a6, .L0000584c
    daddu      $a7,$a0,$s0
.L0000587c:
    ld         $s1,32($sp)
.L00005880:
    ld         $ra,24($sp)
    ld         $s2,40($sp)
    ld         $s5,48($sp)
    ld         $s0,72($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00005898:
    ori        $a0,$a0,0xc02e
    lui        $a2,0x3000
    ori        $a2,$a2,0xc02e
    beq        $a5, $a2, .L0000582c
    nop
    beq        $a5, $a0, .L0000582c
    nop
    ld         $a1,-30720($gp)
    li         $a0,7
    daddiu     $a2,$a1,1280
    jal        cmn_err
    daddiu     $a1,$a1,560
    b          .L00005880
    ld         $s1,32($sp)

glabel restorePoints
    jr         $ra
    nop

glabel restoreLines
    move       $a5,$a3
    addiu      $a5,$a5,3
    sra        $a6,$a5,0x1f
    xor        $a5,$a5,$a6
    subu       $a5,$a5,$a6
    andi       $a5,$a5,0x3
    daddiu     $sp,$sp,-16
    xor        $a5,$a5,$a6
    sd         $ra,0($sp)
    jal        odsyRestoreVertex
    subu       $a5,$a5,$a6
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel restoreLineLoop
    daddiu     $sp,$sp,-48
    sd         $a0,0($sp)
    sd         $a1,16($sp)
    sd         $a3,24($sp)
    sd         $ra,40($sp)
    move       $a5,$zero
    sd         $s0,32($sp)
    move       $s0,$a2
    jal        odsyRestoreVertex
    sd         $a4,8($sp)
    slti       $at,$s0,2
    beqz       $at, .L00005954
    ld         $a6,24($sp)
    ld         $ra,40($sp)
.L00005948:
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00005954:
    li         $a7,3
    move       $a3,$a6
    addiu      $a6,$a6,1
    div        $zero,$a6,$a7
    ld         $a0,0($sp)
    ld         $a1,16($sp)
    move       $a2,$s0
    mfhi       $a5
    ld         $a4,8($sp)
    jal        odsyRestoreVertex
    addiu      $a5,$a5,1
    b          .L00005948
    ld         $ra,40($sp)

glabel restoreLineStrip
    move       $a5,$a3
    addiu      $a5,$a5,3
    sra        $a6,$a5,0x1f
    xor        $a5,$a5,$a6
    subu       $a5,$a5,$a6
    andi       $a5,$a5,0x3
    daddiu     $sp,$sp,-16
    xor        $a5,$a5,$a6
    sd         $ra,0($sp)
    jal        odsyRestoreVertex
    subu       $a5,$a5,$a6
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel restoreTriangles
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    subu       $s0,$a3,$a2
    sd         $s3,0($sp)
    move       $s3,$a0
    addiu      $s0,$s0,4
    sd         $s6,8($sp)
    move       $s6,$a1
    sra        $t8,$s0,0x1f
    sd         $s1,32($sp)
    move       $s1,$a2
    xor        $s0,$s0,$t8
    sd         $s4,16($sp)
    move       $s4,$a3
    subu       $s0,$s0,$t8
    sd         $s5,40($sp)
    move       $s5,$a4
    andi       $s0,$s0,0x3
    sd         $s2,56($sp)
    move       $s2,$zero
    xor        $s0,$s0,$t8
    sd         $ra,48($sp)
    blez       $a2, .L00005a64
    subu       $s0,$s0,$t8
.L00005a20:
    move       $a0,$s3
    move       $a1,$s6
    move       $a2,$s1
    move       $a3,$s4
    move       $a4,$s5
    jal        odsyRestoreVertex
    move       $a5,$s0
    addiu      $s0,$s0,1
    sra        $t8,$s0,0x1f
    xor        $s0,$s0,$t8
    addiu      $s2,$s2,1
    subu       $s0,$s0,$t8
    slt        $t9,$s2,$s1
    andi       $s0,$s0,0x3
    xor        $s0,$s0,$t8
    bnez       $t9, .L00005a20
    subu       $s0,$s0,$t8
.L00005a64:
    ld         $s2,56($sp)
    ld         $s3,0($sp)
    ld         $s6,8($sp)
    ld         $s4,16($sp)
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $s5,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel restoreTriStrip
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    subu       $s0,$a3,$a2
    sd         $s3,0($sp)
    move       $s3,$a0
    addiu      $s0,$s0,4
    sd         $s6,8($sp)
    move       $s6,$a1
    sra        $t8,$s0,0x1f
    sd         $s1,32($sp)
    move       $s1,$a2
    xor        $s0,$s0,$t8
    sd         $s4,16($sp)
    move       $s4,$a3
    subu       $s0,$s0,$t8
    sd         $s5,40($sp)
    move       $s5,$a4
    andi       $s0,$s0,0x3
    sd         $s2,56($sp)
    move       $s2,$zero
    xor        $s0,$s0,$t8
    sd         $ra,48($sp)
    blez       $a2, .L00005b30
    subu       $s0,$s0,$t8
.L00005aec:
    move       $a0,$s3
    move       $a1,$s6
    move       $a2,$s1
    move       $a3,$s4
    move       $a4,$s5
    jal        odsyRestoreVertex
    move       $a5,$s0
    addiu      $s0,$s0,1
    sra        $t8,$s0,0x1f
    xor        $s0,$s0,$t8
    addiu      $s2,$s2,1
    subu       $s0,$s0,$t8
    slt        $t9,$s2,$s1
    andi       $s0,$s0,0x3
    xor        $s0,$s0,$t8
    bnez       $t9, .L00005aec
    subu       $s0,$s0,$t8
.L00005b30:
    ld         $s2,56($sp)
    ld         $s3,0($sp)
    ld         $s6,8($sp)
    ld         $s4,16($sp)
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $s5,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel restoreTriFan
    daddiu     $sp,$sp,-48
    sd         $a0,0($sp)
    sd         $a1,16($sp)
    sd         $a3,24($sp)
    sd         $ra,40($sp)
    move       $a5,$zero
    sd         $s0,32($sp)
    move       $s0,$a2
    jal        odsyRestoreVertex
    sd         $a4,8($sp)
    slti       $at,$s0,2
    beqz       $at, .L00005b98
    ld         $ra,40($sp)
.L00005b8c:
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00005b98:
    ld         $a6,24($sp)
    li         $a7,3
    move       $a3,$a6
    addiu      $a6,$a6,1
    div        $zero,$a6,$a7
    ld         $a0,0($sp)
    ld         $a1,16($sp)
    move       $a2,$s0
    mfhi       $a5
    ld         $a4,8($sp)
    jal        odsyRestoreVertex
    addiu      $a5,$a5,1
    b          .L00005b8c
    ld         $ra,40($sp)

glabel restoreQuads
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    subu       $s0,$a3,$a2
    sd         $s3,0($sp)
    move       $s3,$a0
    addiu      $s0,$s0,4
    sd         $s6,8($sp)
    move       $s6,$a1
    sra        $t8,$s0,0x1f
    sd         $s1,32($sp)
    move       $s1,$a2
    xor        $s0,$s0,$t8
    sd         $s4,16($sp)
    move       $s4,$a3
    subu       $s0,$s0,$t8
    sd         $s5,40($sp)
    move       $s5,$a4
    andi       $s0,$s0,0x3
    sd         $s2,56($sp)
    move       $s2,$zero
    xor        $s0,$s0,$t8
    sd         $ra,48($sp)
    blez       $a2, .L00005c74
    subu       $s0,$s0,$t8
.L00005c30:
    move       $a0,$s3
    move       $a1,$s6
    move       $a2,$s1
    move       $a3,$s4
    move       $a4,$s5
    jal        odsyRestoreVertex
    move       $a5,$s0
    addiu      $s0,$s0,1
    sra        $t8,$s0,0x1f
    xor        $s0,$s0,$t8
    addiu      $s2,$s2,1
    subu       $s0,$s0,$t8
    slt        $t9,$s2,$s1
    andi       $s0,$s0,0x3
    xor        $s0,$s0,$t8
    bnez       $t9, .L00005c30
    subu       $s0,$s0,$t8
.L00005c74:
    ld         $s2,56($sp)
    ld         $s3,0($sp)
    ld         $s6,8($sp)
    ld         $s4,16($sp)
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $s5,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel restoreQuadStrip
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    subu       $s0,$a3,$a2
    sd         $s3,0($sp)
    move       $s3,$a0
    addiu      $s0,$s0,4
    sd         $s6,8($sp)
    move       $s6,$a1
    sra        $t8,$s0,0x1f
    sd         $s1,32($sp)
    move       $s1,$a2
    xor        $s0,$s0,$t8
    sd         $s4,16($sp)
    move       $s4,$a3
    subu       $s0,$s0,$t8
    sd         $s5,40($sp)
    move       $s5,$a4
    andi       $s0,$s0,0x3
    sd         $s2,56($sp)
    move       $s2,$zero
    xor        $s0,$s0,$t8
    sd         $ra,48($sp)
    blez       $a2, .L00005d40
    subu       $s0,$s0,$t8
.L00005cfc:
    move       $a0,$s3
    move       $a1,$s6
    move       $a2,$s1
    move       $a3,$s4
    move       $a4,$s5
    jal        odsyRestoreVertex
    move       $a5,$s0
    addiu      $s0,$s0,1
    sra        $t8,$s0,0x1f
    xor        $s0,$s0,$t8
    addiu      $s2,$s2,1
    subu       $s0,$s0,$t8
    slt        $t9,$s2,$s1
    andi       $s0,$s0,0x3
    xor        $s0,$s0,$t8
    bnez       $t9, .L00005cfc
    subu       $s0,$s0,$t8
.L00005d40:
    ld         $s2,56($sp)
    ld         $s3,0($sp)
    ld         $s6,8($sp)
    ld         $s4,16($sp)
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $s5,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel restorePolygon
    daddiu     $sp,$sp,-80
    sd         $s6,48($sp)
    sd         $s0,56($sp)
    sd         $ra,16($sp)
    sd         $s3,8($sp)
    sd         $s7,40($sp)
    move       $a5,$zero
    sd         $s4,24($sp)
    move       $s4,$a0
    move       $s7,$a1
    sd         $s2,0($sp)
    move       $s2,$a2
    move       $s3,$a3
    sd         $s5,32($sp)
    move       $s5,$a4
    jal        odsyRestoreVertex
    sd         $s8,64($sp)
    subu       $s6,$s3,$s2
    li         $s8,3
    addiu      $s6,$s6,3
    div        $zero,$s6,$s8
    sd         $s1,72($sp)
    move       $s1,$zero
    slti       $at,$s2,2
    addiu      $s6,$s2,-1
    mfhi       $s0
    bnez       $at, .L00005e0c
    addiu      $s0,$s0,1
.L00005dd8:
    move       $a0,$s4
    move       $a1,$s7
    move       $a2,$s2
    move       $a3,$s3
    move       $a4,$s5
    jal        odsyRestoreVertex
    move       $a5,$s0
    div        $zero,$s0,$s8
    addiu      $s1,$s1,1
    slt        $t8,$s1,$s6
    mfhi       $s0
    bnez       $t8, .L00005dd8
    addiu      $s0,$s0,1
.L00005e0c:
    ld         $s2,0($sp)
    ld         $s3,8($sp)
    ld         $s6,48($sp)
    ld         $s4,24($sp)
    ld         $s0,56($sp)
    ld         $s1,72($sp)
    ld         $ra,16($sp)
    ld         $s5,32($sp)
    ld         $s7,40($sp)
    ld         $s8,64($sp)
    jr         $ra
    daddiu     $sp,$sp,80

glabel restoreRect
    daddiu     $sp,$sp,-32
    sd         $s2,0($sp)
    ld         $s2,824($a0)
    sd         $s0,16($sp)
    sd         $s1,8($sp)
    slti       $at,$a2,2
    lui        $a6,0x11
    move       $s1,$a3
    ld         $s0,192($a1)
    move       $a7,$a6
    bnez       $at, .L00005f9c
    sd         $ra,24($sp)
    addiu      $a5,$a3,2
    sra        $a6,$a5,0x1f
    xor        $a5,$a5,$a6
    subu       $a5,$a5,$a6
    andi       $a5,$a5,0x3
    xor        $a5,$a5,$a6
    subu       $a5,$a5,$a6
    dsll       $a5,$a5,0x2
    daddu      $a4,$a5,$s0
    lw         $a3,256($a4)
    srl        $v0,$a3,0xa
    andi       $v0,$v0,0xf
    beqz       $v0, .L00006030
.L00005ea0:
    daddu      $a1,$s2,$a7
.L00005ea4:
    sw         $a3,0($a1)
    sync
    lw         $a6,256($a4)
    srl        $a6,$a6,0xa
    andi       $a6,$a6,0xf
    beqz       $a6, .L00005ef4
    move       $a2,$zero
    daddu      $t0,$a2,$a5
.L00005ec4:
    dsll       $t0,$t0,0x2
    daddu      $t0,$s0,$t0
    lw         $t0,768($t0)
    sw         $t0,0($a1)
    sync
    lw         $a7,256($a4)
    srl        $a7,$a7,0xa
    addiu      $a2,$a2,1
    andi       $a7,$a7,0xf
    sltu       $a7,$a2,$a7
    bnez       $a7, .L00005ec4
    daddu      $t0,$a2,$a5
.L00005ef4:
    ld         $t0,-30720($gp)
.L00005ef8:
    addiu      $a5,$s1,-1
    sra        $a6,$a5,0x1f
    xor        $a5,$a5,$a6
    subu       $a5,$a5,$a6
    andi       $a5,$a5,0x3
    xor        $a5,$a5,$a6
    subu       $a5,$a5,$a6
    dsll       $a5,$a5,0x2
    daddu      $a4,$a5,$s0
    lw         $a3,256($a4)
    srl        $t1,$a3,0xa
    andi       $t1,$t1,0xf
    lui        $a7,0x11
    beqz       $t1, .L00006060
    daddu      $a1,$s2,$a7
.L00005f34:
    sw         $a3,0($a1)
    sync
    lw         $a6,256($a4)
    srl        $a6,$a6,0xa
    andi       $a6,$a6,0xf
    beqz       $a6, .L00005f84
    move       $a2,$zero
    daddu      $t0,$a2,$a5
.L00005f54:
    dsll       $t0,$t0,0x2
    daddu      $t0,$s0,$t0
    lw         $t0,768($t0)
    sw         $t0,0($a1)
    sync
    lw         $a7,256($a4)
    srl        $a7,$a7,0xa
    addiu      $a2,$a2,1
    andi       $a7,$a7,0xf
    sltu       $a7,$a2,$a7
    bnez       $a7, .L00005f54
    daddu      $t0,$a2,$a5
.L00005f84:
    ld         $ra,24($sp)
.L00005f88:
    ld         $s2,0($sp)
    ld         $s1,8($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00005f9c:
    addiu      $a5,$a3,3
    sra        $a7,$a5,0x1f
    xor        $a5,$a5,$a7
    subu       $a5,$a5,$a7
    andi       $a5,$a5,0x3
    xor        $a5,$a5,$a7
    subu       $a5,$a5,$a7
    dsll       $a5,$a5,0x2
    daddu      $a4,$a5,$s0
    lw         $a3,256($a4)
    srl        $t1,$a3,0xa
    andi       $t1,$t1,0xf
    beqz       $t1, .L00006090
    lui        $a1,0x7f
.L00005fd4:
    daddu      $a1,$s2,$a6
.L00005fd8:
    sw         $a3,0($a1)
    sync
    lw         $a7,256($a4)
    srl        $a7,$a7,0xa
    andi       $a7,$a7,0xf
    beqz       $a7, .L00005f84
    move       $a2,$zero
    daddu      $t1,$a2,$a5
.L00005ff8:
    dsll       $t1,$t1,0x2
    daddu      $t1,$s0,$t1
    lw         $t1,768($t1)
    sw         $t1,0($a1)
    sync
    lw         $t0,256($a4)
    srl        $t0,$t0,0xa
    addiu      $a2,$a2,1
    andi       $t0,$t0,0xf
    sltu       $t0,$a2,$t0
    bnez       $t0, .L00005ff8
    daddu      $t1,$a2,$a5
    b          .L00005f88
    ld         $ra,24($sp)
.L00006030:
    lui        $a2,0x7f
    lui        $a6,0x3000
    nor        $a2,$a2,$zero
    ori        $a6,$a6,0xc02e
    and        $a2,$a3,$a2
    lui        $a1,0x2f00
    beq        $a2, $a6, .L00005ea0
    ori        $a1,$a1,0xc02e
    beq        $a2, $a1, .L00005ea4
    daddu      $a1,$s2,$a7
    b          .L000060bc
    ld         $a1,-30720($gp)
.L00006060:
    lui        $a6,0x7f
    lui        $t1,0x3000
    nor        $a6,$a6,$zero
    ori        $t1,$t1,0xc02e
    and        $a6,$a3,$a6
    lui        $a2,0x2f00
    beq        $a6, $t1, .L00005f34
    ori        $a2,$a2,0xc02e
    beq        $a6, $a2, .L00005f34
    nop
    b          .L000060d4
    daddiu     $a2,$t0,1312
.L00006090:
    lui        $a7,0x3000
    nor        $a1,$a1,$zero
    ori        $a7,$a7,0xc02e
    and        $a1,$a3,$a1
    lui        $a2,0x2f00
    beq        $a1, $a7, .L00005fd4
    ori        $a2,$a2,0xc02e
    beq        $a1, $a2, .L00005fd8
    daddu      $a1,$s2,$a6
    b          .L000060e8
    ld         $a1,-30720($gp)
.L000060bc:
    li         $a0,7
    daddiu     $a2,$a1,1288
    jal        cmn_err
    daddiu     $a1,$a1,560
    b          .L00005ef8
    ld         $t0,-30720($gp)
.L000060d4:
    daddiu     $a1,$t0,560
    jal        cmn_err
    li         $a0,7
    b          .L00005f88
    ld         $ra,24($sp)
.L000060e8:
    li         $a0,7
    daddiu     $a2,$a1,1336
    jal        cmn_err
    daddiu     $a1,$a1,560
    b          .L00005f88
    ld         $ra,24($sp)

glabel odsyResetHwShadow
    daddiu     $sp,$sp,-16
    li         $a1,2304
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        bzero
    move       $s8,$a0
    sw         $zero,188($s8)
    li         $a3,65
    sw         $a3,176($s8)
    lui        $a1,0xce80
    lui        $a0,0xc580
    ori        $a1,$a1,0xc406
    sw         $a1,272($s8)
    lui        $v1,0xc380
    ori        $a0,$a0,0xcc0d
    sw         $a0,288($s8)
    lui        $v0,0xc480
    ori        $v1,$v1,0xc41e
    sw         $v1,336($s8)
    lui        $t9,0xc680
    ori        $v0,$v0,0xc426
    sw         $v0,352($s8)
    lui        $t8,0xc780
    ori        $t9,$t9,0xd02f
    sw         $t9,384($s8)
    lui        $t3,0xc880
    ori        $t8,$t8,0xd030
    sw         $t8,400($s8)
    lui        $t2,0xc980
    ori        $t3,$t3,0xd031
    sw         $t3,416($s8)
    lui        $a7,0xca80
    ori        $t2,$t2,0xd032
    sw         $t2,432($s8)
    lui        $a6,0xcb80
    ori        $a7,$a7,0xd035
    sw         $a7,480($s8)
    lui        $a5,0xcc80
    ori        $a6,$a6,0xd036
    sw         $a6,496($s8)
    lui        $a4,0xcd80
    ori        $a5,$a5,0xd037
    sw         $a5,512($s8)
    ori        $a4,$a4,0xd038
    sw         $a4,528($s8)
    sw         $a1,576($s8)
    sw         $a0,592($s8)
    sw         $v1,608($s8)
    lui        $a3,0xc180
    sw         $v0,624($s8)
    ori        $a3,$a3,0xcc18
    sw         $a3,304($s8)
    ld         $ra,0($sp)
    lui        $at,0x3000
    ori        $at,$at,0xc02e
    sw         $at,368($s8)
    lui        $a2,0x8080
    lw         $at,128($s8)
    ori        $a2,$a2,0xc800
    sw         $a2,256($s8)
    lui        $a2,0xc280
    ori        $a2,$a2,0xcc1c
    sw         $a2,320($s8)
    lui        $a2,0xd080
    ori        $t1,$a2,0xc433
    sw         $t1,448($s8)
    ori        $t0,$a2,0xcc34
    sw         $t0,464($s8)
    ori        $a3,$a2,0xc439
    sw         $a3,544($s8)
    ori        $a2,$a2,0xcc3a
    sw         $a2,560($s8)
    ori        $at,$at,0xf
    sw         $at,128($s8)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel gfP_OdsyGLGet
    daddiu     $sp,$sp,-80
    sd         $a2,56($sp)
    sd         $ra,64($sp)
    sw         $zero,0($a3)
    sd         $s0,24($sp)
    ld         $s0,40($a0)
    sd         $s2,40($sp)
    lw         $at,816($s0)
    sd         $s1,32($sp)
    move       $v0,$a2
    move       $s1,$a0
    ld         $v1,824($s0)
    move       $s2,$a3
    bnez       $at, .L00006414
    sd         $v1,8($sp)
.L00006270:
    ld         $a0,72($s1)
    ld         $a0,112($a0)
    ld         $a2,-30720($gp)
    beqz       $a0, .L00006430
    sd         $a0,16($sp)
    move       $a0,$v0
    daddiu     $a1,$sp,0
    jal        copyin
    li         $a2,4
    bnez       $v0, .L00006448
    ld         $a1,-30720($gp)
    jal        RRM_CheckValidFault
    move       $a0,$s1
    li         $a1,2
    bltz       $v0, .L000063e0
    sd         $s3,72($sp)
    li         $t8,0x8608
    ld         $ra,40($s1)
    lw         $t9,80($ra)
    daddu      $t8,$t8,$s0
    addiu      $t9,$t9,1
    sw         $t9,80($ra)
    lw         $t8,0($t8)
    ld         $s3,16($sp)
    andi       $t8,$t8,0xffff
    sll        $t8,$t8,0x5
    ld         $s3,192($s3)
    dsll32     $t8,$t8,0x0
    dsrl       $t8,$t8,0x1e
    daddu      $s3,$s3,$t8
    sw         $zero,124($s3)
    lw         $a0,0($sp)
    li         $v0,1216
    beqz       $a0, .L000063ac
    daddiu     $s3,$s3,124
    li         $t9,1
    beq        $a0, $t9, .L000063c8
    li         $v0,1217
    beq        $a0, $a1, .L000063d0
    li         $v0,1218
    li         $ra,3
    beq        $a0, $ra, .L000063d8
    li         $v0,1219
    lw         $v0,4($sp)
    dsll32     $at,$v0,0x0
.L00006324:
    li         $v1,-1
    dsll32     $v1,$v1,0x0
    and        $at,$at,$v1
    ld         $v1,8($sp)
    lui        $v0,0x11
    li         $a2,1500
    daddu      $v0,$v0,$v1
    ori        $at,$at,0x1
    sd         $at,0($v0)
    sync
    move       $a1,$s0
    jal        timeout
    ld         $a0,-30704($gp)
    lw         $a0,0($s3)
    beqz       $a0, .L000063b4
    nop
.L00006364:
    ld         $s3,72($sp)
    jal        untimeout_wait
    move       $a0,$v0
    lw         $a1,816($s0)
    beqz       $a1, .L00006380
    li         $v0,14
    sw         $v0,0($s2)
.L00006380:
    ld         $a3,40($s1)
    lw         $a2,80($a3)
    addiu      $a2,$a2,-1
    sw         $a2,80($a3)
    lw         $v0,0($s2)
.L00006394:
    ld         $ra,64($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $s2,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000063ac:
    b          .L00006324
    dsll32     $at,$v0,0x0
.L000063b4:
    lw         $a3,816($s0)
    bnez       $a3, .L00006364
    sd         $v0,48($sp)
    b          .L000063f8
    nop
.L000063c8:
    b          .L00006324
    dsll32     $at,$v0,0x0
.L000063d0:
    b          .L00006324
    dsll32     $at,$v0,0x0
.L000063d8:
    b          .L00006324
    dsll32     $at,$v0,0x0
.L000063e0:
    li         $v0,14
    b          .L00006394
    sw         $v0,0($s2)
.L000063ec:
    lw         $a4,816($s0)
    bnez       $a4, .L0000640c
    nop
.L000063f8:
    jal        us_delay
    li         $a0,1
    lw         $a5,0($s3)
    beqz       $a5, .L000063ec
    nop
.L0000640c:
    b          .L00006364
    ld         $v0,48($sp)
.L00006414:
    ld         $a1,-30720($gp)
    li         $a0,4
    lh         $a2,790($s0)
    jal        cmn_err
    daddiu     $a1,$a1,1352
    b          .L00006270
    ld         $v0,56($sp)
.L00006430:
    daddiu     $a1,$a2,240
    jal        cmn_err
    li         $a0,4
    li         $v0,1
    b          .L00006394
    sw         $v0,0($s2)
.L00006448:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,1408
    li         $v0,14
    b          .L00006394
    sw         $v0,0($s2)
