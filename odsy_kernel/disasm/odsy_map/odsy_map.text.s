.section .text
.set noat
.set noreorder


glabel gf_OdsyMapGfx
    daddiu     $sp,$sp,-80
    sd         $s1,0($sp)
    ld         $s1,40($a0)
    sd         $ra,8($sp)
    sd         $s5,16($sp)
    move       $s5,$a0
    sd         $s0,24($sp)
    move       $s0,$a1
    jal        gfx_flow_clean_up_other_gfxp
    sd         $s3,40($sp)
    ld         $s3,48($s5)
    sd         $s2,32($sp)
    sd         $s4,48($sp)
    jal        ddv_getaddr
    move       $a0,$s3
    move       $s4,$v0
    move       $a0,$s3
    move       $a1,$v0
    li         $a3,1
    ld         $a2,824($s1)
    li         $s2,-16384
    lui        $a4,0x10
    and        $s2,$s0,$s2
    daddu      $a2,$a2,$a4
    move       $a4,$zero
    sd         $s8,56($sp)
    jal        v_mapkvsegment
    move       $a5,$s2
    move       $s8,$v0
    move       $a0,$s3
    daddiu     $a1,$s4,16384
    ld         $a2,824($s1)
    li         $a3,1
    lui        $a5,0x12
    li         $a4,2
    daddu      $a2,$a2,$a5
    jal        v_mapkvsegment
    move       $a5,$s2
    lw         $a6,4($s5)
    andi       $a6,$a6,0x20
    beqz       $a6, .L000001bc
    or         $s0,$s8,$v0
    move       $a0,$s3
    li         $a3,2
    li         $a4,2
    move       $a5,$s2
    li         $a1,0x8000
    ld         $a2,824($s1)
    jal        v_mapkvsegment
    daddu      $a1,$s4,$a1
    or         $s0,$v0,$s0
    move       $a0,$s3
    li         $a3,1
    move       $a5,$s2
    ld         $a2,824($s1)
    lui        $a4,0x11
    lui        $a1,0x1
    daddu      $a1,$s4,$a1
    daddu      $a2,$a2,$a4
    jal        v_mapkvsegment
    move       $a4,$zero
    or         $s0,$v0,$s0
    move       $a0,$s3
    li         $a3,1
    li         $a4,2
    ld         $a2,824($s1)
    lui        $a1,0x1
    lui        $a5,0x11
    ori        $a5,$a5,0x8000
    ori        $a1,$a1,0x4000
    daddu      $a1,$s4,$a1
    daddu      $a2,$a2,$a5
    jal        v_mapkvsegment
    move       $a5,$s2
    or         $s0,$v0,$s0
    move       $a0,$s3
    li         $a3,1
    li         $a4,2
    ld         $a2,824($s1)
    lui        $a1,0x1
    lui        $a5,0x20
    ori        $a1,$a1,0x8000
    daddu      $a1,$s4,$a1
    daddu      $a2,$a2,$a5
    jal        v_mapkvsegment
    move       $a5,$s2
    or         $s0,$v0,$s0
    move       $a0,$s3
    li         $a3,8
    li         $a4,2
    ld         $a2,824($s1)
    lui        $a1,0x1
    lui        $a5,0x22
    ori        $a1,$a1,0xc000
    daddu      $a1,$s4,$a1
    daddu      $a2,$a2,$a5
    jal        v_mapkvsegment
    move       $a5,$s2
    or         $s0,$v0,$s0
    move       $a0,$s3
    li         $a3,1
    li         $a4,2
    ld         $a2,824($s1)
    lui        $a1,0x3
    lui        $a5,0x40
    ori        $a1,$a1,0xc000
    daddu      $a1,$s4,$a1
    daddu      $a2,$a2,$a5
    jal        v_mapkvsegment
    move       $a5,$s2
    or         $s0,$v0,$s0
.L000001bc:
    li         $a3,1
    sltiu      $a2,$s2,1
    jal        splhi
    movn       $s0,$a3,$a2
    lw         $a4,4($s5)
    ori        $a4,$a4,0x1
    sw         $a4,4($s5)
    ld         $a0,808($s1)
    ld         $s2,32($sp)
    beqz       $a0, .L000001f4
    sd         $v0,64($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L0000023c
.L000001f4:
    ld         $s3,40($sp)
.L000001f8:
    ld         $s4,48($sp)
    ld         $s1,0($sp)
    ld         $s8,56($sp)
    jal        splx
    ld         $a0,64($sp)
    sw         $zero,104($s5)
    lh         $a6,-15456($zero)
    li         $v0,-1
    ld         $ra,8($sp)
    li         $a5,1
    movn       $v0,$zero,$s0
    ld         $s0,24($sp)
    sllv       $a5,$a5,$a6
    sw         $a5,104($s5)
    ld         $s5,16($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0000023c:
    ld         $a0,808($s1)
    jal        gfx_flow_attach_me
    move       $a1,$s5
    lui        $s4,0x1
    ld         $a0,808($s1)
    daddu      $s4,$s1,$s4
    jal        gfx_flow_credit_tnum_get
    lw         $s3,-31292($s4)
    ld         $t9,-30720($gp)
    sll        $ra,$v0,0xc
    and        $t9,$s3,$t9
    or         $t9,$t9,$ra
    sw         $t9,-31292($s4)
    ld         $ra,824($s1)
    sw         $t9,4212($ra)
    sync
    sw         $zero,-31288($s4)
    ld         $t8,824($s1)
    sw         $zero,4220($t8)
    sync
    b          .L000001f8
    ld         $s3,40($sp)

glabel gf_OdsyUnMapGfx
    ld         $a1,40($a0)
    ld         $at,72($a1)
    daddiu     $sp,$sp,-48
    lw         $v0,4($a0)
    sd         $s0,16($sp)
    move       $s0,$a0
    sd         $ra,32($sp)
    bne        $at, $a0, .L00000344
    andi       $v1,$v0,0x1
    li         $a0,-2
    beqz       $v1, .L00000348
    sd         $a1,8($sp)
    jal        splhi
    nop
    lw         $a2,4($s0)
    li         $a1,-2
    ld         $a0,8($sp)
    and        $a1,$a1,$a2
    sw         $a1,4($s0)
    ld         $a0,808($a0)
    beqz       $a0, .L00000330
    sd         $v0,24($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000330
    ld         $a0,8($sp)
    li         $a3,0x85c8
    daddu      $a3,$a3,$a0
    li         $a1,1
    sw         $a1,0($a3)
    ld         $a2,824($a0)
    sw         $a1,4220($a2)
    sync
    ld         $a3,824($a0)
    ld         $a0,808($a0)
    lw         $a3,4204($a3)
    move       $a1,$s0
    jal        gfx_flow_detach_me
    sw         $a3,0($sp)
.L00000330:
    jal        splx
    ld         $a0,24($sp)
    li         $a0,-2
    b          .L00000348
    lw         $v0,4($s0)
.L00000344:
    li         $a0,-2
.L00000348:
    ld         $a5,48($s0)
    and        $a4,$a0,$v0
    move       $v0,$zero
    bnez       $a5, .L0000036c
    sw         $a4,4($s0)
.L0000035c:
    ld         $ra,32($sp)
.L00000360:
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000036c:
    jal        curthreadhandle
    nop
    jal        thread_issproc
    move       $a0,$v0
    beqz       $v0, .L000003b0
    li         $a2,-1
    jal        curthreadhandle
    nop
    jal        gthread_find
    move       $a0,$v0
    lw         $a6,8($v0)
    andi       $a6,$a6,0x4
    beqz       $a6, .L000003ac
    move       $v0,$zero
    b          .L00000360
    ld         $ra,32($sp)
.L000003ac:
    li         $a2,-1
.L000003b0:
    move       $a1,$zero
    jal        ddv_invalphys_fal
    ld         $a0,48($s0)
    beqz       $v0, .L000003d4
    li         $a0,2
    bne        $v0, $a0, .L00000404
    ld         $a1,-30720($gp)
.L000003cc:
    b          .L0000035c
    move       $v0,$zero
.L000003d4:
    li         $a2,-1
    ld         $a0,48($s0)
    move       $a1,$zero
    jal        ddv_invaltlb
    sw         $zero,104($s0)
    lh         $t1,-15456($zero)
    li         $t0,1
    lw         $a7,104($s0)
    sllv       $t0,$t0,$t1
    or         $a7,$a7,$t0
    b          .L000003cc
    sw         $a7,104($s0)
.L00000404:
    jal        cmn_err
    li         $a0,4
    b          .L000003cc
    nop

glabel gf_OdsyInvalTLB
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    jal        curthreadhandle
    sd         $a0,0($sp)
    jal        thread_issproc
    move       $a0,$v0
    beqz       $v0, .L00000464
    ld         $a0,0($sp)
    jal        curthreadhandle
    nop
    jal        gthread_find
    move       $a0,$v0
    lw         $at,8($v0)
    andi       $at,$at,0x4
    beqz       $at, .L00000460
    move       $v0,$zero
.L00000454:
    ld         $ra,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00000460:
    ld         $a0,0($sp)
.L00000464:
    li         $a2,-1
    move       $a1,$zero
    jal        ddv_invaltlb
    ld         $a0,48($a0)
    ld         $a2,0($sp)
    lh         $a4,-15456($zero)
    li         $a3,1
    lw         $a1,104($a2)
    move       $v0,$zero
    sllv       $a3,$a3,$a4
    or         $a1,$a1,$a3
    b          .L00000454
    sw         $a1,104($a2)

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
    bnez       $v0, .L0000051c
    sd         $v0,0($sp)
    ld         $a2,8($sp)
    move       $a0,$s0
    li         $a1,11128
    jal        maputokv
    ori        $a2,$a2,0x7
    beqz       $v0, .L00000538
    sd         $v0,176($s1)
    sd         $s0,184($s1)
    sw         $zero,0($s2)
    move       $v0,$zero
.L00000504:
    ld         $ra,32($sp)
    ld         $s2,16($sp)
    ld         $s0,24($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000051c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,64
    ld         $v0,0($sp)
    b          .L00000504
    sw         $v0,0($s2)
.L00000538:
    li         $a2,273
    li         $a1,11128
    jal        unuseracc
    ld         $a0,184($s1)
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,120
    li         $v0,22
    b          .L00000504
    sw         $v0,0($s2)

glabel odsyUnpinAndUnmapGctxRegions
    daddiu     $sp,$sp,-32
    ld         $at,200($a0)
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    bnez       $at, .L0000063c
    sd         $s1,16($sp)
    ld         $a0,176($s0)
.L00000584:
    beqz       $a0, .L000005b0
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
.L000005b0:
    jal        OdsyInitCSetCursor
    move       $a0,$s1
    jal        OdsyNextCSetElem
    move       $a0,$s1
    beqz       $v0, .L0000061c
    move       $s0,$v0
    b          .L000005f0
    ld         $v0,16($s0)
.L000005d0:
    move       $a0,$s0
.L000005d4:
    jal        kmem_free
    li         $a1,32
    jal        OdsyNextCSetElem
    move       $a0,$s1
    beqz       $v0, .L0000061c
    move       $s0,$v0
    ld         $v0,16($s0)
.L000005f0:
    beqz       $v0, .L000005d4
    move       $a0,$s0
    jal        odsyUnmapPages
    move       $a0,$s0
    ld         $v1,16($s0)
    beqz       $v1, .L000005d0
    li         $a1,16384
    jal        kmem_free
    ld         $a0,8($s0)
    b          .L000005d4
    move       $a0,$s0
.L0000061c:
    move       $a0,$s1
    ld         $s0,0($sp)
    jal        OdsyDestroyCSet
    move       $a1,$zero
    ld         $ra,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000063c:
    jal        odsyUnmapPages
    daddiu     $a0,$a0,208
    b          .L00000584
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
    beqz       $v0, .L0000072c
    move       $s0,$v0
    b          .L00000708
    ld         $a0,8($s0)
.L000006e0:
    jal        kmem_free
    li         $a1,16384
    move       $a0,$s0
    jal        kmem_free
    li         $a1,32
    jal        OdsyNextCSetElem
    move       $a0,$s1
    beqz       $v0, .L0000072c
    move       $s0,$v0
    ld         $a0,8($s0)
.L00000708:
    beqz       $a0, .L000006e0
    nop
    ld         $at,16($s0)
    beqz       $at, .L000006e0
    nop
    jal        odsyUnmapPages
    move       $a0,$s0
    b          .L000006e0
    ld         $a0,8($s0)
.L0000072c:
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
    beqz       $v0, .L000007a0
    move       $a2,$v0
.L00000790:
    ld         $ra,8($sp)
    move       $v0,$a2
    jr         $ra
    daddiu     $sp,$sp,16
.L000007a0:
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
    b          .L00000790
    move       $a2,$v0

glabel odsyUnpinAndUnmapASRegions
    daddiu     $sp,$sp,-32
    ld         $at,40($a0)
    sd         $s1,0($sp)
    move       $s1,$a0
    sd         $s0,8($sp)
    move       $s0,$zero
    bnez       $at, .L00000814
    sd         $ra,16($sp)
.L000007f4:
    ld         $v0,56($s1)
    bnez       $v0, .L00000824
.L000007fc:
    ld         $ra,16($sp)
    ld         $s1,0($sp)
    move       $v0,$s0
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00000814:
    jal        odsyUnmapPages
    daddiu     $a0,$a0,40
    b          .L000007f4
    move       $s0,$v0
.L00000824:
    jal        odsyUnmapPages
    daddiu     $a0,$s1,56
    b          .L000007fc
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
    bnez       $at, .L000008cc
    sd         $ra,0($sp)
.L000008c0:
    move       $v0,$a0
    jr         $ra
    daddiu     $sp,$sp,16
.L000008cc:
    li         $a0,0x8578
    jal        odsyUnmapPages
    daddu      $a0,$v0,$a0
    ld         $ra,0($sp)
    b          .L000008c0
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
    beqz       $v0, .L00000938
    li         $v0,12
.L00000928:
    ld         $ra,40($sp)
.L0000092c:
    ld         $s0,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00000938:
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
    beqz       $a4, .L00000978
    sd         $v0,16($sp)
    ld         $a5,16($sp)
    beqz       $a5, .L000009a4
    nop
.L00000978:
    jal        ddv_unlock
    ld         $a0,0($s0)
    ld         $a6,16($sp)
    beqz       $a6, .L0000099c
    move       $v0,$zero
    jal        gfxdd_munmap
    ld         $a0,0($s0)
    b          .L00000928
    ld         $v0,16($sp)
.L0000099c:
    b          .L0000092c
    ld         $ra,40($sp)
.L000009a4:
    jal        ddv_getaddr
    ld         $a0,0($s0)
    ld         $a7,24($sp)
    b          .L00000978
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
