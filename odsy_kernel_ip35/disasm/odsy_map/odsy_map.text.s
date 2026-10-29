.section .text
.set noat
.set noreorder


glabel gf_OdsyMapGfx
    daddiu     $sp,$sp,-96
    sd         $s1,0($sp)
    ld         $s1,40($a0)
    sd         $ra,8($sp)
    sd         $s0,48($sp)
    move       $s0,$a0
    sd         $s5,56($sp)
    move       $s5,$a1
    jal        gfx_flow_clean_up_other_gfxp
    sd         $s2,80($sp)
    ld         $s2,48($s0)
    sd         $s4,64($sp)
    sd         $s3,88($sp)
    jal        ddv_getaddr
    move       $a0,$s2
    move       $s4,$v0
    move       $a0,$s2
    move       $a1,$v0
    li         $a3,1
    ld         $a2,824($s1)
    li         $s3,-16384
    lui        $a4,0x10
    and        $s3,$s5,$s3
    daddu      $a2,$a2,$a4
    move       $a4,$zero
    sd         $s7,72($sp)
    jal        v_mapkvsegment
    move       $a5,$s3
    move       $s7,$v0
    move       $a0,$s2
    daddiu     $a1,$s4,16384
    ld         $a2,824($s1)
    li         $a3,1
    lui        $a5,0x12
    li         $a4,2
    daddu      $a2,$a2,$a5
    jal        v_mapkvsegment
    move       $a5,$s3
    lw         $a6,4($s0)
    andi       $a6,$a6,0x20
    beqz       $a6, .L000001e0
    or         $s5,$s7,$v0
    move       $a0,$s2
    li         $a3,2
    li         $a4,2
    move       $a5,$s3
    li         $a1,0x8000
    ld         $a2,824($s1)
    jal        v_mapkvsegment
    daddu      $a1,$s4,$a1
    move       $s7,$v0
    move       $a0,$s2
    li         $a3,1
    move       $a5,$s3
    ld         $a2,824($s1)
    lui        $a4,0x11
    lui        $a1,0x1
    daddu      $a1,$s4,$a1
    daddu      $a2,$a2,$a4
    jal        v_mapkvsegment
    move       $a4,$zero
    move       $a0,$s2
    li         $a3,1
    li         $a4,2
    ld         $a2,824($s1)
    lui        $a1,0x1
    lui        $a5,0x11
    ori        $a5,$a5,0x8000
    ori        $a1,$a1,0x4000
    daddu      $a1,$s4,$a1
    daddu      $a2,$a2,$a5
    sd         $v0,16($sp)
    jal        v_mapkvsegment
    move       $a5,$s3
    move       $a0,$s2
    li         $a3,1
    li         $a4,2
    ld         $a2,824($s1)
    lui        $a1,0x1
    lui        $a5,0x20
    ori        $a1,$a1,0x8000
    daddu      $a1,$s4,$a1
    daddu      $a2,$a2,$a5
    sd         $v0,24($sp)
    jal        v_mapkvsegment
    move       $a5,$s3
    move       $a0,$s2
    li         $a3,8
    li         $a4,2
    ld         $a2,824($s1)
    lui        $a1,0x1
    lui        $a5,0x22
    ori        $a1,$a1,0xc000
    daddu      $a1,$s4,$a1
    daddu      $a2,$a2,$a5
    sd         $v0,32($sp)
    jal        v_mapkvsegment
    move       $a5,$s3
    move       $a0,$s2
    li         $a3,1
    li         $a4,2
    ld         $a2,824($s1)
    lui        $a1,0x3
    lui        $a5,0x40
    ori        $a1,$a1,0xc000
    daddu      $a1,$s4,$a1
    daddu      $a2,$a2,$a5
    sd         $v0,40($sp)
    jal        v_mapkvsegment
    move       $a5,$s3
    ld         $t8,16($sp)
    ld         $ra,32($sp)
    or         $t9,$s7,$s5
    or         $t8,$t8,$t9
    ld         $t9,24($sp)
    ld         $s5,40($sp)
    or         $t9,$t9,$ra
    or         $s5,$s5,$v0
    or         $t8,$t8,$t9
    or         $s5,$s5,$t8
.L000001e0:
    li         $s4,1
    sltiu      $at,$s3,1
    jal        splhi
    movn       $s5,$s4,$at
    move       $s2,$v0
    lw         $v0,4($s0)
    ori        $v0,$v0,0x1
    sw         $v0,4($s0)
    ld         $a0,808($s1)
    beqz       $a0, .L00000218
    ld         $s3,88($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L0000028c
.L00000218:
    ld         $s4,64($sp)
.L0000021c:
    ld         $s1,0($sp)
    ld         $s7,72($sp)
    jal        splx
    move       $a0,$s2
    ld         $s2,80($sp)
    ld         $ra,8($sp)
    li         $a0,1
    move       $v0,$zero
.L0000023c:
    dsll       $v1,$v0,0x3
    addiu      $v0,$v0,1
    slti       $a1,$v0,8
    daddu      $v1,$s0,$v1
    bnez       $a1, .L0000023c
    sd         $zero,104($v1)
    lh         $a3,-15320($zero)
    sra        $a1,$a3,0x6
    li         $v0,-1
    dsll       $a1,$a1,0x3
    movn       $v0,$zero,$s5
    ld         $s5,56($sp)
    daddu      $a1,$s0,$a1
    ld         $a2,104($a1)
    dsllv      $a0,$a0,$a3
    ld         $s0,48($sp)
    daddiu     $sp,$sp,96
    or         $a0,$a2,$a0
    jr         $ra
    sd         $a0,104($a1)
.L0000028c:
    jal        rt_pin_thread
    nop
    move       $s4,$v0
    ld         $a0,808($s1)
    jal        gfx_flow_attach_me
    move       $a1,$s0
    lui        $a3,0x1
    ld         $a6,-30720($gp)
    daddu      $a3,$s1,$a3
    lw         $a4,-31292($a3)
    lw         $a5,-19376($a3)
    sll        $a5,$a5,0xc
    and        $a4,$a4,$a6
    or         $a4,$a4,$a5
    sw         $a4,-31292($a3)
    ld         $a5,824($s1)
    sw         $a4,4212($a5)
    sync
    sw         $zero,-31288($a3)
    ld         $a2,824($s1)
    sw         $zero,4220($a2)
    sync
    jal        splx
    move       $a0,$s2
    jal        odsy_flow_await_returned_credits
    move       $a0,$s1
    jal        splhi
    nop
    ld         $a0,808($s1)
    move       $s2,$v0
    jal        gfx_flow_attach_me_finish
    ld         $a1,72($s1)
    jal        rt_unpin_thread
    move       $a0,$s4
    b          .L0000021c
    ld         $s4,64($sp)

glabel gf_OdsyUnMapGfx
    daddiu     $sp,$sp,-64
    sd         $s1,48($sp)
    ld         $s1,40($a0)
    ld         $at,72($s1)
    lw         $v0,4($a0)
    sd         $s0,40($sp)
    move       $s0,$a0
    bne        $at, $a0, .L000003d4
    sd         $ra,56($sp)
    andi       $v1,$v0,0x1
    beqz       $v1, .L000003d8
    li         $a0,-2
    jal        splhi
    nop
    ld         $a0,808($s1)
    sd         $v0,24($sp)
    beqz       $a0, .L000003b0
    sd         $v0,32($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L000003b0
    nop
    lw         $a1,104($s1)
    beqz       $a1, .L000004bc
    li         $a5,0x85c8
.L00000380:
    daddu      $a5,$a5,$s1
    li         $a3,1
    sw         $a3,0($a5)
    ld         $a4,824($s1)
    sw         $a3,4220($a4)
    sync
    ld         $a2,824($s1)
    ld         $a0,808($s1)
    lw         $a2,4220($a2)
    move       $a1,$s0
    jal        gfx_flow_detach_me
    sw         $a2,0($sp)
.L000003b0:
    lw         $a7,4($s0)
    ld         $a0,32($sp)
    li         $a6,-2
    and        $a6,$a6,$a7
    jal        splx
    sw         $a6,4($s0)
    li         $a0,-2
    b          .L000003d8
    lw         $v0,4($s0)
.L000003d4:
    li         $a0,-2
.L000003d8:
    ld         $t1,48($s0)
    and        $t0,$a0,$v0
    bnez       $t1, .L00000400
    sw         $t0,4($s0)
    move       $v0,$zero
.L000003ec:
    ld         $ra,56($sp)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000400:
    jal        curthreadhandle
    nop
    jal        thread_issproc
    move       $a0,$v0
    beqz       $v0, .L00000444
    li         $a2,-1
    jal        curthreadhandle
    nop
    jal        gthread_find
    move       $a0,$v0
    lw         $t2,8($v0)
    andi       $t2,$t2,0x4
    beqz       $t2, .L00000444
    li         $a2,-1
    b          .L000003ec
    move       $v0,$zero
    li         $a2,-1
.L00000444:
    move       $a1,$zero
    jal        ddv_invalphys_fal
    ld         $a0,48($s0)
    beqz       $v0, .L00000468
    li         $a0,2
    bne        $v0, $a0, .L00000518
    ld         $a1,-30720($gp)
.L00000460:
    b          .L000003ec
    move       $v0,$zero
.L00000468:
    move       $v0,$zero
.L0000046c:
    dsll       $t3,$v0,0x3
    addiu      $v0,$v0,1
    slti       $t8,$v0,8
    daddu      $t3,$s0,$t3
    bnez       $t8, .L0000046c
    sd         $zero,104($t3)
    li         $a2,-1
    move       $a1,$zero
    jal        ddv_invaltlb
    ld         $a0,48($s0)
    lh         $at,-15320($zero)
    sra        $t9,$at,0x6
    dsll       $t9,$t9,0x3
    daddu      $t9,$s0,$t9
    li         $ra,1
    ld         $t8,104($t9)
    dsllv      $ra,$ra,$at
    or         $t8,$t8,$ra
    b          .L00000460
    sd         $t8,104($t9)
.L000004bc:
    jal        gfx_flow_credit_count_get
    ld         $a0,808($s1)
    sd         $v0,16($sp)
    jal        gfx_flow_credit_bias_get
    ld         $a0,808($s1)
    ld         $ra,16($sp)
    sltu       $ra,$ra,$v0
    beqz       $ra, .L00000380
    li         $a5,0x85c8
    jal        rt_pin_thread
    nop
    sd         $v0,8($sp)
    jal        splx
    ld         $a0,24($sp)
    jal        odsy_flow_await_returned_credits
    move       $a0,$s1
    jal        splhi
    nop
    sd         $v0,32($sp)
    jal        rt_unpin_thread
    ld         $a0,8($sp)
    b          .L00000380
    li         $a5,0x85c8
.L00000518:
    jal        cmn_err
    li         $a0,4
    b          .L00000460
    nop

glabel gf_OdsyInvalTLB
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    jal        curthreadhandle
    sd         $a0,0($sp)
    jal        thread_issproc
    move       $a0,$v0
    beqz       $v0, .L00000578
    ld         $a0,0($sp)
    jal        curthreadhandle
    nop
    jal        gthread_find
    move       $a0,$v0
    lw         $at,8($v0)
    andi       $at,$at,0x4
    beqz       $at, .L00000574
    move       $v0,$zero
.L00000568:
    ld         $ra,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00000574:
    ld         $a0,0($sp)
.L00000578:
    li         $a2,-1
    move       $a1,$zero
    jal        ddv_invaltlb
    ld         $a0,48($a0)
    lh         $a4,-15320($zero)
    ld         $a2,0($sp)
    sra        $a3,$a4,0x6
    dsll       $a3,$a3,0x3
    daddu      $a2,$a2,$a3
    li         $a3,1
    ld         $a1,104($a2)
    move       $v0,$zero
    dsllv      $a3,$a3,$a4
    or         $a1,$a1,$a3
    b          .L00000568
    sd         $a1,104($a2)

glabel odsyPinAndMapGctxSwShadowRgn
    daddiu     $sp,$sp,-48
    sd         $s2,16($sp)
    sd         $s1,40($sp)
    move       $s1,$a0
    move       $s2,$a1
    sd         $s0,24($sp)
    sd         $ra,32($sp)
    jal        pte_cachebits
    move       $s0,$a2
    move       $a0,$s0
    li         $a1,11128
    li         $a2,273
    sd         $v0,8($sp)
    jal        useracc
    move       $a3,$zero
    bnez       $v0, .L0000063c
    sd         $v0,0($sp)
    ld         $a2,8($sp)
    move       $a0,$s0
    li         $a1,11128
    jal        maputokv
    ori        $a2,$a2,0x7
    beqz       $v0, .L00000658
    sd         $v0,176($s1)
    sd         $s0,184($s1)
    sw         $zero,0($s2)
    move       $v0,$zero
.L00000624:
    ld         $ra,32($sp)
    ld         $s2,16($sp)
    ld         $s0,24($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000063c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,64
    ld         $v0,0($sp)
    b          .L00000624
    sw         $v0,0($s2)
.L00000658:
    li         $a2,273
    li         $a1,11128
    jal        unuseracc
    ld         $a0,184($s1)
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,120
    li         $v0,22
    b          .L00000624
    sw         $v0,0($s2)

glabel odsyUnpinAndUnmapGctxRegions
    daddiu     $sp,$sp,-32
    ld         $at,200($a0)
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    bnez       $at, .L00000760
    sd         $s1,16($sp)
    ld         $a0,176($s0)
.L000006a4:
    beqz       $a0, .L000006d0
    daddiu     $s1,$s0,312
    jal        unmaputokv
    li         $a1,11128
    li         $a2,273
    li         $a1,11128
    jal        unuseracc
    ld         $a0,184($s0)
    sd         $zero,184($s0)
    sd         $zero,176($s0)
    daddiu     $s1,$s0,312
.L000006d0:
    jal        OdsyInitCSetCursor
    move       $a0,$s1
    jal        OdsyNextCSetElem
    move       $a0,$s1
    beqz       $v0, .L00000740
    move       $s0,$v0
    b          .L00000710
    ld         $v0,16($s0)
    move       $a0,$s0
.L000006f4:
    jal        kmem_free
    li         $a1,32
    jal        OdsyNextCSetElem
    move       $a0,$s1
    beqz       $v0, .L00000740
    move       $s0,$v0
    ld         $v0,16($s0)
.L00000710:
    beqz       $v0, .L000006f4
    move       $a0,$s0
    jal        odsyUnmapPages
    move       $a0,$s0
    ld         $v1,16($s0)
    beqz       $v1, .L000006f4
    move       $a0,$s0
    li         $a1,16384
    jal        kmem_free
    ld         $a0,8($s0)
    b          .L000006f4
    move       $a0,$s0
.L00000740:
    move       $a0,$s1
    ld         $s0,0($sp)
    jal        OdsyDestroyCSet
    move       $a1,$zero
    ld         $ra,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000760:
    jal        odsyUnmapPages
    daddiu     $a0,$a0,208
    b          .L000006a4
    ld         $a0,176($s0)

glabel odsyUnmap
    daddiu     $sp,$sp,-80
    sd         $a1,64($sp)
    sd         $s8,56($sp)
    move       $s8,$a0
    sd         $ra,48($sp)
    jal        as_lookup_current
    daddiu     $a0,$sp,0
    sw         $zero,40($sp)
    sd         $s8,24($sp)
    sw         $zero,16($sp)
    ld         $a1,64($sp)
    ld         $a0,0($sp)
    sd         $a1,32($sp)
    ld         $a0,32($a0)
    ld         $at,16($a0)
    ld         $at,64($at)
    move       $a3,$zero
    daddiu     $a2,$sp,16
    jalr       $at
    ld         $a1,8($sp)
    ld         $ra,48($sp)
    ld         $s8,56($sp)
    jr         $ra
    daddiu     $sp,$sp,80

glabel odsyUnpinAndUnmapSGRegions
    daddiu     $sp,$sp,-32
    sd         $s1,0($sp)
    daddiu     $s1,$a0,120
    sd         $ra,8($sp)
    jal        OdsyInitCSetCursor
    move       $a0,$s1
    move       $a0,$s1
    jal        OdsyNextCSetElem
    sd         $s0,16($sp)
    beqz       $v0, .L00000850
    move       $s0,$v0
    b          .L0000082c
    ld         $a0,8($s0)
.L00000804:
    jal        kmem_free
    li         $a1,16384
    move       $a0,$s0
    jal        kmem_free
    li         $a1,32
    jal        OdsyNextCSetElem
    move       $a0,$s1
    beqz       $v0, .L00000850
    move       $s0,$v0
    ld         $a0,8($s0)
.L0000082c:
    beqz       $a0, .L00000804
    nop
    ld         $at,16($s0)
    beqz       $at, .L00000804
    nop
    jal        odsyUnmapPages
    move       $a0,$s0
    b          .L00000804
    ld         $a0,8($s0)
.L00000850:
    move       $a0,$s1
    ld         $s0,16($sp)
    jal        OdsyDestroyCSet
    move       $a1,$zero
    ld         $ra,8($sp)
    ld         $s1,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel odsyPinAndMapASRegions
    ld         $a4,-30712($gp)
    daddiu     $sp,$sp,-16
    sd         $a0,0($sp)
    sd         $zero,40($a0)
    sd         $zero,56($a0)
    move       $a6,$a0
    lui        $a3,0x1
    li         $a5,1
    ld         $a2,8($a6)
    move       $a0,$zero
    sd         $ra,8($sp)
    daddiu     $a1,$a6,32
    daddiu     $a6,$a6,40
    jal        odsyMapPages
    ld         $a2,8($a2)
    beqz       $v0, .L000008c4
    move       $a2,$v0
.L000008b4:
    ld         $ra,8($sp)
    move       $v0,$a2
    jr         $ra
    daddiu     $sp,$sp,16
.L000008c4:
    ld         $a6,0($sp)
    move       $a0,$zero
    ld         $a4,-30712($gp)
    li         $a3,0xc000
    li         $a5,1
    ld         $a2,8($a6)
    daddiu     $a4,$a4,32
    daddiu     $a1,$a6,48
    daddiu     $a6,$a6,56
    jal        odsyMapPages
    ld         $a2,16($a2)
    b          .L000008b4
    move       $a2,$v0

glabel odsyUnpinAndUnmapASRegions
    daddiu     $sp,$sp,-32
    ld         $at,40($a0)
    sd         $s1,0($sp)
    move       $s1,$a0
    sd         $s0,8($sp)
    move       $s0,$zero
    bnez       $at, .L00000938
    sd         $ra,16($sp)
.L00000918:
    ld         $v0,56($s1)
    bnez       $v0, .L00000948
.L00000920:
    ld         $ra,16($sp)
    ld         $s1,0($sp)
    move       $v0,$s0
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000938:
    jal        odsyUnmapPages
    daddiu     $a0,$a0,40
    b          .L00000918
    move       $s0,$v0
.L00000948:
    jal        odsyUnmapPages
    daddiu     $a0,$s1,56
    b          .L00000920
    or         $s0,$v0,$s0

glabel odsyPinAndMapPfStatRegions
    daddiu     $sp,$sp,-48
    sd         $ra,32($sp)
    sw         $zero,28($sp)
    li         $a4,3
    sw         $a4,24($sp)
    sw         $zero,20($sp)
    li         $a5,1
    sw         $a5,16($sp)
    sd         $zero,8($sp)
    lui        $a3,0x1
    sd         $zero,0($sp)
    daddu      $a3,$a0,$a3
    li         $a7,0x8578
    li         $a1,0x8570
    lw         $t0,-31392($a3)
    move       $a6,$a0
    daddiu     $a4,$sp,0
    sd         $t0,8($sp)
    move       $a0,$zero
    daddu      $a1,$a6,$a1
    ld         $a2,-31384($a3)
    daddu      $a6,$a6,$a7
    jal        odsyMapPages
    lw         $a3,-31392($a3)
    ld         $ra,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel odsyUnpinAndUnmapPfStatRegions
    li         $at,0x8568
    daddu      $at,$at,$a0
    ld         $at,0($at)
    move       $v0,$a0
    daddiu     $sp,$sp,-16
    move       $a0,$zero
    bnez       $at, .L000009f0
    sd         $ra,0($sp)
.L000009e4:
    move       $v0,$a0
    jr         $ra
    daddiu     $sp,$sp,16
.L000009f0:
    li         $a0,0x8578
    jal        odsyUnmapPages
    daddu      $a0,$v0,$a0
    ld         $ra,0($sp)
    b          .L000009e4
    move       $a0,$v0

glabel odsyMapPages
    daddiu     $sp,$sp,-48
    move       $at,$a0
    sd         $s0,32($sp)
    move       $a0,$zero
    move       $s0,$a6
    sd         $a2,0($sp)
    move       $a2,$at
    sd         $a1,24($sp)
    move       $a1,$a3
    sd         $a3,8($sp)
    move       $a3,$a4
    move       $a4,$a5
    sd         $ra,40($sp)
    jal        gfxdd_mmap_mem_ex
    move       $a5,$a6
    beqz       $v0, .L00000a5c
    li         $v0,12
.L00000a4c:
    ld         $ra,40($sp)
.L00000a50:
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000a5c:
    jal        ddv_lock
    ld         $a0,0($s0)
    ld         $a3,8($sp)
    daddiu     $a3,$a3,16383
    ld         $a2,0($sp)
    dsrl       $a3,$a3,0xe
    move       $a1,$zero
    ld         $a0,0($s0)
    jal        ddv_mappages
    sll        $a3,$a3,0x0
    ld         $a4,24($sp)
    beqz       $a4, .L00000a9c
    sd         $v0,16($sp)
    ld         $a5,16($sp)
    beqz       $a5, .L00000ac8
    nop
.L00000a9c:
    jal        ddv_unlock
    ld         $a0,0($s0)
    ld         $a6,16($sp)
    beqz       $a6, .L00000ac0
    move       $v0,$zero
    jal        gfxdd_munmap
    ld         $a0,0($s0)
    b          .L00000a4c
    ld         $v0,16($sp)
.L00000ac0:
    b          .L00000a50
    ld         $ra,40($sp)
.L00000ac8:
    jal        ddv_getaddr
    ld         $a0,0($s0)
    ld         $a7,24($sp)
    b          .L00000a9c
    sd         $v0,0($a7)

glabel odsyUnmapPages
    ld         $at,0($a0)
    sd         $zero,0($a0)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        gfxdd_munmap
    move       $a0,$at
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,16
