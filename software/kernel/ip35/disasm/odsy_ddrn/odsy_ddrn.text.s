.section .text
.set noat
.set noreorder


glabel odsyInitDDRNs
    ld         $a3,28456($a0)
    daddiu     $sp,$sp,-16
    sd         $a0,0($sp)
    beqz       $a3, .L0000002c
    sd         $ra,8($sp)
.L00000014:
    move       $a0,$a3
    jal        bzero
    li         $a1,1016
    ld         $ra,8($sp)
.L00000024:
    jr         $ra
    daddiu     $sp,$sp,16
.L0000002c:
    li         $a0,1016
    jal        kmem_alloc
    move       $a1,$zero
    ld         $v1,0($sp)
    move       $a3,$v0
    bnez       $v0, .L00000014
    sd         $v0,28456($v1)
    b          .L00000024
    ld         $ra,8($sp)

glabel gf_OdsyCreateDDRN
    daddiu     $sp,$sp,-96
    sd         $s2,48($sp)
    sd         $s6,56($sp)
    sd         $ra,64($sp)
    sd         $s4,72($sp)
    sd         $s5,80($sp)
    ld         $at,28456($a0)
    sd         $s1,40($sp)
    li         $v0,1
    move       $s1,$a0
    sd         $s3,32($sp)
    move       $s3,$a1
    beqz       $at, .L00000304
    sd         $s0,88($sp)
    ld         $v0,64($a1)
    lw         $v0,4($v0)
    andi       $v0,$v0,0x4
    bnez       $v0, .L0000039c
    ld         $a1,-30720($gp)
    lh         $v1,794($a0)
    beqz       $v1, .L00000384
    ld         $a1,-30720($gp)
    lw         $a0,816($a0)
    bnez       $a0, .L00000380
    li         $a1,25
    daddiu     $s5,$s1,29872
    jal        psema
    move       $a0,$s5
    ld         $v0,28456($s1)
    ld         $s0,0($v0)
    beqz       $s0, .L0000032c
    li         $a4,127
    lw         $a1,0($s0)
    li         $s4,-1
    beq        $a1, $s4, .L00000364
    move       $s2,$zero
    move       $s2,$zero
.L000000e4:
    addiu      $s2,$s2,1
    slti       $a1,$s2,127
    dsll       $a0,$s2,0x3
    beqz       $a1, .L00000138
    daddu      $a0,$v0,$a0
    ld         $a1,0($a0)
    beqz       $a1, .L0000013c
    dsll       $s6,$s2,0x3
    lw         $a2,0($a1)
    beq        $a2, $s4, .L0000013c
    dsll       $s6,$s2,0x3
    addiu      $s2,$s2,1
    slti       $a1,$s2,127
    dsll       $a0,$s2,0x3
    beqz       $a1, .L00000138
    daddu      $a0,$v0,$a0
    ld         $a1,0($a0)
    beqz       $a1, .L0000013c
    dsll       $s6,$s2,0x3
    lw         $a2,0($a1)
    bne        $a2, $s4, .L000000e4
.L00000138:
    dsll       $s6,$s2,0x3
.L0000013c:
    beq        $s2, $a4, .L00000414
    daddu      $a0,$v0,$s6
    ld         $a3,0($a0)
    beqz       $a3, .L00000334
    move       $s0,$a3
.L00000150:
    sd         $s0,112($s3)
.L00000154:
    sw         $s2,0($s0)
    lw         $a4,28480($s1)
    move       $a0,$s5
    addiu      $a4,$a4,1
    jal        vsema
    sw         $a4,28480($s1)
    sw         $zero,408($s0)
    sw         $s4,240($s0)
    sd         $zero,232($s0)
    sd         $s3,224($s0)
    li         $a1,4
    sd         $zero,184($s0)
    daddiu     $a0,$s0,416
    jal        OdsyInitCSet
    sd         $zero,176($s0)
    sw         $zero,516($s0)
    sw         $zero,512($s0)
    sw         $zero,468($s0)
    sw         $zero,464($s0)
    li         $s2,1
    sw         $s2,568($s0)
    sw         $zero,560($s0)
    sw         $s2,564($s0)
    sd         $s4,256($s0)
    daddiu     $a0,$s1,29952
    jal        OdsyAlloc32kSlot
    sd         $s4,248($s0)
    bltz       $v0, .L000003ac
    sw         $v0,244($s0)
    ld         $a5,880($s1)
    daddu      $a6,$v0,$v0
    li         $a1,0x8800
    daddu      $a5,$a5,$a6
    li         $a0,16384
    jal        kmem_zalloc
    sh         $zero,0($a5)
    beqz       $v0, .L000003d4
    sd         $v0,192($s0)
    sw         $zero,28($sp)
    sw         $s2,24($sp)
    sw         $zero,20($sp)
    sw         $s2,16($sp)
    li         $a3,16384
    sd         $a3,8($sp)
    daddiu     $a6,$s0,208
    li         $a5,1
    sd         $zero,0($sp)
    daddiu     $a4,$sp,0
    ld         $a2,192($s0)
    daddiu     $a1,$s0,200
    move       $a0,$zero
    jal        odsyMapPages
    sd         $zero,200($s0)
    bnez       $v0, .L000003f0
    li         $a1,16384
    jal        ddv_getaddr
    ld         $a0,208($s0)
    sw         $zero,120($s0)
    sw         $zero,116($s0)
    li         $a6,-4096
    sd         $v0,200($s0)
    lui        $a5,0xff00
    move       $a0,$zero
    ori        $a4,$a5,0xff00
    lw         $t1,112($s0)
    lui        $a1,0xff
    li         $a7,-8192
    lw         $t0,108($s0)
    ori        $a1,$a1,0xf000
    and        $t1,$a7,$t1
    sw         $t1,112($s0)
    ori        $a5,$a5,0xfff
    and        $a7,$a7,$t0
    sw         $a7,108($s0)
.L0000027c:
    dsll       $t0,$a0,0x3
    daddu      $t0,$s0,$t0
    lw         $t1,8($t0)
    dsll       $a2,$a0,0x2
    addiu      $a0,$a0,1
    lw         $a7,12($t0)
    slti       $a3,$a0,4
    and        $t1,$a5,$t1
    and        $t1,$a6,$t1
    sw         $t1,8($t0)
    or         $a7,$a1,$a7
    daddu      $a2,$s0,$a2
    ori        $a7,$a7,0xfff
    sw         $a7,12($t0)
    bnez       $a3, .L0000027c
    sw         $a4,140($a2)
    ld         $a0,192($s0)
    li         $t1,4097
    sw         $t1,136($s0)
    sw         $t1,132($s0)
    sw         $s4,128($s0)
    jal        odsyResetHwShadow
    sw         $s4,124($s0)
    li         $t3,0x8608
    daddu      $t3,$t3,$s1
    lw         $t3,0($t3)
    andi       $t3,$t3,0xffff
    sll        $t3,$t3,0x5
    ld         $t2,192($s0)
    dsll32     $t3,$t3,0x0
    dsrl       $t3,$t3,0x1e
    daddu      $t2,$t2,$t3
    move       $v0,$zero
    sw         $s2,124($t2)
.L00000304:
    ld         $s2,48($sp)
    ld         $s3,32($sp)
    ld         $s6,56($sp)
    ld         $s4,72($sp)
    ld         $ra,64($sp)
    ld         $s5,80($sp)
    ld         $s1,40($sp)
    ld         $s0,88($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L0000032c:
    move       $s6,$zero
    move       $s2,$zero
.L00000334:
    li         $a0,592
    jal        kmem_alloc
    move       $a1,$zero
    ld         $t8,28456($s1)
    daddu      $t8,$t8,$s6
    li         $s4,-1
    beqz       $v0, .L0000036c
    sd         $v0,0($t8)
    ld         $s0,28456($s1)
    daddu      $s0,$s0,$s6
    b          .L00000150
    ld         $s0,0($s0)
.L00000364:
    b          .L00000154
    sd         $s0,112($s3)
.L0000036c:
    jal        vsema
    move       $a0,$s5
    li         $v0,1
    b          .L00000304
    sd         $zero,56($s3)
.L00000380:
    ld         $a1,-30720($gp)
.L00000384:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,56
    li         $v0,1
    b          .L00000304
    sd         $zero,56($s3)
.L0000039c:
    jal        cmn_err
    li         $a0,5
    b          .L00000304
    li         $v0,1
.L000003ac:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,160
    lw         $a2,28480($s1)
    addiu      $a2,$a2,-1
    sw         $a2,28480($s1)
    li         $v0,1
    b          .L00000304
    sw         $s4,0($s0)
.L000003d4:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,216
    li         $v0,1
    b          .L00000304
    sd         $zero,56($s3)
.L000003f0:
    jal        kmem_free
    ld         $a0,192($s0)
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,264
    li         $v0,1
    b          .L00000304
    sd         $zero,56($s3)
.L00000414:
    jal        vsema
    move       $a0,$s5
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,120
    li         $v0,1
    b          .L00000304
    sd         $zero,56($s3)

glabel gf_OdsyDestroyDDRN
    daddiu     $sp,$sp,-80
    sd         $s4,56($sp)
    sd         $s1,48($sp)
    ld         $s1,112($a2)
    sd         $ra,64($sp)
    sd         $s3,24($sp)
    ld         $at,40($a1)
    sd         $s0,40($sp)
    ld         $at,8($at)
    ld         $v0,-30720($gp)
    move       $s0,$a0
    move       $s3,$a1
    sd         $s2,32($sp)
    move       $s2,$a2
    beq        $at, $a2, .L000005fc
    ld         $v0,0($v0)
    move       $s4,$zero
.L0000047c:
    lw         $v0,0($s1)
    lw         $v1,820($s0)
    bne        $v0, $v1, .L00000490
    nop
    sw         $zero,820($s0)
.L00000490:
    lw         $a2,28($s2)
    bltz       $a2, .L000004ac
    move       $a0,$s0
    move       $a0,$s3
    jal        gf_OdsyUnSchedSwapBuf
    move       $a1,$s2
    move       $a0,$s0
.L000004ac:
    jal        gf_OdsyUnSchedRetraceEvent
    move       $a1,$s2
    lw         $a0,408($s1)
    beqz       $a0, .L0000064c
    move       $a0,$s0
.L000004c0:
    move       $a0,$s0
    jal        odsy_hpipe_cleanup
    move       $a1,$s2
    sd         $zero,224($s1)
    sd         $zero,112($s2)
    ld         $a0,192($s1)
    beqz       $a0, .L000004e8
    nop
    jal        kmem_free
    li         $a1,16384
.L000004e8:
    lw         $a1,244($s1)
    jal        OdsyFree32kSlot
    daddiu     $a0,$s0,29952
    lw         $a1,28480($s0)
    li         $a2,1
    bne        $a1, $a2, .L000005c0
    sd         $s5,72($sp)
    lw         $a3,4($s3)
    andi       $a3,$a3,0x3
    beqz       $a3, .L00000594
    lui        $s5,0x1
    jal        splhi
    nop
    ld         $a0,808($s0)
    sd         $v0,8($sp)
    sd         $v0,16($sp)
    beqz       $a0, .L00000644
    daddu      $s2,$s5,$s0
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000574
    daddu      $s2,$s5,$s0
    lw         $a5,104($s0)
    beqz       $a5, .L000006bc
    li         $a7,1
.L0000054c:
    sw         $a7,-31288($s2)
    ld         $t0,824($s0)
    sw         $a7,4220($t0)
    sync
    ld         $a6,824($s0)
    ld         $a0,808($s0)
    lw         $a6,4220($a6)
    move       $a1,$s3
    jal        gfx_flow_detach_me
    sw         $a6,0($sp)
.L00000574:
    lw         $t1,4($s3)
.L00000578:
    ld         $a0,16($sp)
    li         $t2,-4
    and        $t1,$t1,$t2
    jal        splx
    sw         $t1,4($s3)
    b          .L0000059c
    ld         $a0,808($s0)
.L00000594:
    daddu      $s2,$s5,$s0
    ld         $a0,808($s0)
.L0000059c:
    beqz       $a0, .L000005b0
    nop
    jal        gfx_flow_dealloc
    nop
    sd         $zero,808($s0)
.L000005b0:
    sw         $zero,-31292($s2)
    ld         $t3,824($s0)
    sw         $zero,4212($t3)
    sync
.L000005c0:
    ld         $s3,24($sp)
    ld         $s2,32($sp)
    ld         $s5,72($sp)
    move       $v0,$s4
    ld         $s4,56($sp)
    li         $t8,-1
    sw         $t8,0($s1)
    lw         $s1,28480($s0)
    ld         $ra,64($sp)
    addiu      $s1,$s1,-1
    sw         $s1,28480($s0)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000005fc:
    jal        gfx_flow_clean_up_other_gfxp
    ld         $a0,64($a2)
    lw         $t9,816($s0)
    beqz       $t9, .L00000674
    li         $at,0x8608
.L00000610:
    daddu      $at,$at,$s0
    lw         $at,0($at)
    andi       $at,$at,0xffff
    sll        $at,$at,0x5
    ld         $ra,192($s1)
    dsll32     $at,$at,0x0
    dsrl       $at,$at,0x1e
    daddu      $ra,$ra,$at
    lw         $ra,124($ra)
    beqz       $ra, .L00000690
    move       $s4,$zero
    b          .L0000047c
    sh         $zero,794($s0)
.L00000644:
    b          .L00000578
    lw         $t1,4($s3)
.L0000064c:
    jal        odsyDMAFinish
    move       $a1,$s1
    move       $a0,$s3
    jal        odsyMMdetach
    move       $a1,$s1
    jal        odsyUnpinAndUnmapGctxRegions
    move       $a0,$s1
    li         $v0,1
    b          .L000004c0
    sw         $v0,408($s1)
.L00000674:
    ld         $v1,8($s3)
    ld         $v1,8($v1)
    beq        $v1, $s3, .L00000610
    li         $at,0x8608
    ld         $a0,0($s0)
    beqz       $a0, .L00000610
    li         $at,0x8608
.L00000690:
    ld         $a4,32($s3)
    ld         $a4,120($a4)
    ld         $a0,40($s3)
    move       $a2,$zero
    move       $a1,$s2
    jalr       $a4
    ld         $a3,8($a0)
    bnez       $v0, .L00000714
    ld         $a1,-30720($gp)
    b          .L0000047c
    move       $s4,$zero
.L000006bc:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s0)
    move       $s5,$v0
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s0)
    sltu       $a5,$s5,$v0
    beqz       $a5, .L0000054c
    li         $a7,1
    jal        rt_pin_thread
    nop
    move       $s5,$v0
    jal        splx
    ld         $a0,8($sp)
    jal        odsy_flow_await_returned_credits
    move       $a0,$s0
    jal        splhi
    nop
    sd         $v0,16($sp)
    jal        rt_unpin_thread
    move       $a0,$s5
    b          .L0000054c
    li         $a7,1
.L00000714:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,320
    b          .L0000047c
    li         $s4,1
