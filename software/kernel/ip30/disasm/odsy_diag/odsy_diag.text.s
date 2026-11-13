.section .text
.set noat
.set noreorder


glabel gfP_OdsyDIAGallocScanbuf
    daddiu     $sp,$sp,-80
    sd         $a0,24($sp)
    sd         $s0,56($sp)
    move       $v0,$a0
    sd         $s3,40($sp)
    move       $at,$a2
    move       $s3,$a3
    sd         $a2,32($sp)
    daddiu     $a1,$sp,0
    li         $a2,24
    ld         $s0,40($a0)
    sd         $ra,48($sp)
    jal        copyin
    move       $a0,$at
    sd         $s1,64($sp)
    bnez       $v0, .L000001e8
    sd         $s2,72($sp)
    li         $s1,0xb338
    li         $a1,25
    daddu      $s1,$s0,$s1
    jal        mutex_lock
    move       $a0,$s1
    lui        $s2,0x1
    daddu      $s2,$s0,$s2
    ld         $t8,-19608($s2)
    beqz       $t8, .L00000094
    li         $a1,0x8100
    jal        mutex_unlock
    move       $a0,$s1
    li         $v0,16
.L00000078:
    ld         $s3,40($sp)
    ld         $ra,48($sp)
    ld         $s0,56($sp)
    ld         $s1,64($sp)
    ld         $s2,72($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00000094:
    jal        kmem_alloc
    lw         $a0,0($sp)
    beqz       $v0, .L000001d8
    sd         $v0,-19640($s2)
    move       $a0,$zero
    move       $a1,$zero
    move       $a2,$v0
    move       $a5,$zero
    move       $a4,$zero
    li         $a6,0xb358
    lw         $a3,0($sp)
    jal        odsyMapPages
    daddu      $a6,$s0,$a6
    beqz       $v0, .L000000e8
    lw         $a1,0($sp)
    jal        kmem_free
    ld         $a0,-19640($s2)
    jal        mutex_unlock
    move       $a0,$s1
    b          .L00000078
    li         $v0,11
.L000000e8:
    sw         $a1,-19616($s2)
    ld         $a7,24($sp)
    move       $a0,$s1
    jal        mutex_unlock
    sd         $a7,-19608($s2)
    jal        ddv_getaddr
    ld         $a0,-19624($s2)
    ld         $a0,-19624($s2)
    jal        ddv_getaddr
    sd         $v0,-19632($s2)
    ld         $s0,32($sp)
    sd         $v0,8($sp)
    jal        kvtophys
    ld         $a0,-19640($s2)
    li         $a2,24
    move       $a1,$s0
    daddiu     $a0,$sp,0
    jal        copyout
    sd         $v0,16($sp)
    bnez       $v0, .L00000200
    ld         $a1,-30720($gp)
    sw         $zero,0($s3)
    lw         $a2,-19616($s2)
    ld         $a1,8($sp)
    ld         $a0,-30720($gp)
    addiu      $s1,$a2,3
    slt        $a3,$a2,$zero
    move       $s0,$a1
    movz       $s1,$a2,$a3
    daddiu     $a0,$a0,96
    jal        printf
    sra        $s1,$s1,0x2
    blez       $s1, .L000001a8
    li         $a2,23
    move       $v0,$zero
.L00000174:
    addiu      $v0,$v0,1
    slt        $a4,$v0,$s1
    sw         $zero,0($s0)
    beqz       $a4, .L000001a8
    addiu      $v0,$v0,1
    slt        $a5,$v0,$s1
    sw         $zero,4($s0)
    beqz       $a5, .L000001a8
    addiu      $v0,$v0,1
    slt        $a6,$v0,$s1
    sw         $zero,8($s0)
    bnez       $a6, .L00000174
    daddiu     $s0,$s0,12
.L000001a8:
    ld         $a0,8($sp)
    sw         $a2,92($a0)
    lw         $a1,-19616($s2)
    slti       $a7,$a1,16385
    bnez       $a7, .L000001c8
    li         $t0,16408
    sw         $t0,16480($a0)
    lw         $a1,-19616($s2)
.L000001c8:
    jal        dki_dcache_wb
    nop
    b          .L00000078
    move       $v0,$zero
.L000001d8:
    jal        mutex_unlock
    move       $a0,$s1
    b          .L00000078
    li         $v0,12
.L000001e8:
    ld         $a1,-30720($gp)
    jal        cmn_err
    li         $a0,4
    li         $v0,14
    b          .L00000078
    sw         $v0,0($s3)
.L00000200:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,48
    li         $v0,14
    b          .L00000078
    sw         $v0,0($s3)

glabel gfP_OdsyDIAGfreeScanbuf
    daddiu     $sp,$sp,-48
    sd         $a3,32($sp)
    sd         $s1,40($sp)
    sd         $s0,0($sp)
    ld         $s0,40($a0)
    li         $a1,25
    sd         $s8,24($sp)
    li         $s8,0xb338
    sd         $s5,8($sp)
    move       $s5,$a0
    daddu      $s8,$s0,$s8
    sd         $ra,16($sp)
    jal        mutex_lock
    move       $a0,$s8
    lui        $s1,0x1
    daddu      $s1,$s0,$s1
    ld         $ra,-19608($s1)
    bne        $ra, $s5, .L00000288
    li         $a0,0xb358
    jal        odsyUnmapPages
    daddu      $a0,$s0,$a0
    lw         $a1,-19616($s1)
    jal        kmem_free
    ld         $a0,-19640($s1)
    sd         $zero,-19608($s1)
    sw         $zero,-19616($s1)
    sd         $zero,-19624($s1)
    sd         $zero,-19640($s1)
.L00000288:
    ld         $s1,40($sp)
    ld         $s0,0($sp)
    ld         $s5,8($sp)
    jal        mutex_unlock
    move       $a0,$s8
    ld         $ra,16($sp)
    ld         $a1,32($sp)
    move       $v0,$zero
    ld         $s8,24($sp)
    daddiu     $sp,$sp,48
    jr         $ra
    sw         $zero,0($a1)

glabel gfP_OdsyDIAGgetShadowPtrs
    daddiu     $sp,$sp,-224
    sd         $a0,128($sp)
    sd         $s0,176($sp)
    move       $v0,$a0
    sd         $s2,168($sp)
    move       $at,$a2
    move       $s2,$a3
    sd         $a2,136($sp)
    daddiu     $a1,$sp,0
    li         $a2,80
    ld         $s0,40($a0)
    sd         $ra,160($sp)
    jal        copyin
    move       $a0,$at
    bnez       $v0, .L0000055c
    sd         $s5,184($sp)
    li         $s5,0xb370
    li         $a1,25
    daddu      $s5,$s0,$s5
    jal        mutex_lock
    move       $a0,$s5
    lui        $t8,0x1
    daddu      $t8,$t8,$s0
    sd         $t8,144($sp)
    ld         $t8,-19584($t8)
    beqz       $t8, .L00000338
    move       $a1,$zero
    jal        mutex_unlock
    move       $a0,$s5
    li         $v0,16
    b          .L00000378
    sw         $v0,0($s2)
.L00000338:
    move       $a0,$zero
    lui        $a3,0x1
    move       $a4,$zero
    ld         $a2,880($s0)
    move       $a5,$zero
    li         $a6,0xb3c8
    daddu      $a6,$s0,$a6
    jal        odsyMapPages
    sd         $a6,120($sp)
    sd         $s1,192($sp)
    sd         $s4,200($sp)
    sd         $s3,208($sp)
    beqz       $v0, .L00000390
    sd         $s6,216($sp)
    li         $v0,12
    sw         $v0,0($s2)
.L00000378:
    ld         $ra,160($sp)
    ld         $s2,168($sp)
    ld         $s5,184($sp)
    ld         $s0,176($sp)
    jr         $ra
    daddiu     $sp,$sp,224
.L00000390:
    move       $s1,$zero
    move       $s3,$zero
    li         $s4,0xb388
    daddiu     $s6,$sp,80
.L000003a0:
    move       $a5,$zero
    move       $a4,$zero
    li         $a3,16384
    move       $a1,$zero
    dsll       $a6,$s1,0x2
    move       $a0,$zero
    dsll       $a2,$s1,0x3
    daddu      $a6,$s6,$a6
    sd         $a6,152($sp)
    daddu      $a2,$s0,$a2
    daddu      $a6,$s4,$a2
    jal        odsyMapPages
    ld         $a2,29888($a2)
    addiu      $s1,$s1,1
    ld         $a7,152($sp)
    sltiu      $t0,$s1,4
    or         $s3,$v0,$s3
    bnez       $t0, .L000003a0
    sw         $v0,0($a7)
    beqz       $s3, .L00000490
    move       $s1,$zero
    ld         $s3,208($sp)
    dsll       $t1,$s1,0x2
    daddu      $t1,$s6,$t1
.L00000400:
    lw         $t1,0($t1)
    beqz       $t1, .L00000468
    dsll       $a0,$s1,0x3
    addiu      $s1,$s1,1
.L00000410:
    sltiu      $v1,$s1,4
    dsll       $v0,$s1,0x2
    beqz       $v1, .L00000440
    daddu      $v0,$s6,$v0
    lw         $a0,0($v0)
    beqz       $a0, .L0000047c
    dsll       $a0,$s1,0x3
    addiu      $s1,$s1,1
.L00000430:
    sltiu      $a1,$s1,4
    dsll       $t1,$s1,0x2
    bnez       $a1, .L00000400
    daddu      $t1,$s6,$t1
.L00000440:
    jal        odsyUnmapPages
    ld         $a0,120($sp)
    ld         $s6,216($sp)
    ld         $s4,200($sp)
    ld         $s1,192($sp)
    jal        mutex_unlock
    move       $a0,$s5
    li         $v0,11
    b          .L00000378
    sw         $v0,0($s2)
.L00000468:
    daddu      $a0,$s0,$a0
    jal        odsyUnmapPages
    daddu      $a0,$s4,$a0
    b          .L00000410
    addiu      $s1,$s1,1
.L0000047c:
    daddu      $a0,$s0,$a0
    jal        odsyUnmapPages
    daddu      $a0,$s4,$a0
    b          .L00000430
    addiu      $s1,$s1,1
.L00000490:
    ld         $s6,216($sp)
    ld         $s3,208($sp)
    ld         $s4,200($sp)
    ld         $s1,192($sp)
    ld         $a2,144($sp)
    ld         $a1,128($sp)
    move       $a0,$s5
    jal        mutex_unlock
    sd         $a1,-19584($a2)
    ld         $a0,144($sp)
    jal        ddv_getaddr
    ld         $a0,-19512($a0)
    sd         $v0,72($sp)
    ld         $a2,880($s0)
    li         $a1,-1
    dsrl       $a1,$a1,0x18
    move       $s5,$zero
    and        $a1,$a1,$a2
    sd         $a1,64($sp)
.L000004dc:
    dsll       $a1,$s5,0x3
    daddu      $a2,$a1,$s0
    sd         $a2,104($sp)
    daddu      $a1,$a1,$sp
    sd         $a1,96($sp)
    lui        $a0,0x1
    daddu      $a0,$a0,$a2
    sd         $a0,112($sp)
    jal        ddv_getaddr
    ld         $a0,-19576($a0)
    ld         $a6,104($sp)
    ld         $a7,112($sp)
    ld         $a4,96($sp)
    sd         $v0,-19544($a7)
    addiu      $s5,$s5,1
    sd         $v0,32($a4)
    li         $a3,-1
    sltiu      $a5,$s5,4
    ld         $a6,29888($a6)
    dsrl       $a3,$a3,0x18
    and        $a3,$a3,$a6
    bnez       $a5, .L000004dc
    sd         $a3,0($a4)
    li         $a2,80
    ld         $a1,136($sp)
    jal        copyout
    daddiu     $a0,$sp,0
    bnez       $v0, .L00000578
    ld         $a1,-30720($gp)
    sw         $zero,0($s2)
    b          .L00000378
    move       $v0,$zero
.L0000055c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,128
    li         $v0,14
    b          .L00000378
    sw         $v0,0($s2)
.L00000578:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,176
    li         $v0,14
    b          .L00000378
    sw         $v0,0($s2)

glabel gfP_OdsyDIAGreleaseShadowPtrs
    daddiu     $sp,$sp,-80
    sd         $s4,48($sp)
    sd         $s6,8($sp)
    sd         $s1,32($sp)
    li         $a1,25
    ld         $s1,40($a0)
    move       $s6,$a3
    sd         $s5,24($sp)
    li         $s5,0xb370
    sd         $s0,40($sp)
    move       $s0,$a0
    daddu      $s5,$s1,$s5
    sd         $ra,16($sp)
    jal        mutex_lock
    move       $a0,$s5
    lui        $s4,0x1
    daddu      $t8,$s4,$s1
    sd         $t8,0($sp)
    ld         $t8,-19584($t8)
    beq        $t8, $s0, .L000005f8
    li         $a0,0xb3c8
    jal        mutex_unlock
    move       $a0,$s5
    li         $v0,1
    b          .L00000654
    sw         $v0,0($s6)
.L000005f8:
    sd         $s3,56($sp)
    jal        odsyUnmapPages
    daddu      $a0,$s1,$a0
    move       $s0,$zero
    li         $s3,0xb388
    sd         $s2,64($sp)
.L00000610:
    dsll       $s2,$s0,0x3
    daddu      $s2,$s1,$s2
    jal        odsyUnmapPages
    daddu      $a0,$s3,$s2
    addiu      $s0,$s0,1
    sltiu      $t9,$s0,4
    daddu      $t8,$s4,$s2
    bnez       $t9, .L00000610
    sd         $zero,-19544($t8)
    ld         $ra,0($sp)
    sd         $zero,-19584($ra)
    jal        mutex_unlock
    move       $a0,$s5
    ld         $s2,64($sp)
    ld         $s3,56($sp)
    sw         $zero,0($s6)
    move       $v0,$zero
.L00000654:
    ld         $s6,8($sp)
    ld         $s4,48($sp)
    ld         $ra,16($sp)
    ld         $s5,24($sp)
    ld         $s1,32($sp)
    ld         $s0,40($sp)
    jr         $ra
    daddiu     $sp,$sp,80

glabel odsyInitPfRgn
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    lui        $s0,0x1
    daddu      $s0,$a0,$s0
    ld         $at,-31384($s0)
    sd         $a1,0($sp)
    sd         $s1,16($sp)
    move       $s1,$a0
    beqz       $at, .L000006b0
    sd         $ra,24($sp)
.L0000069c:
    move       $v0,$zero
.L000006a0:
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000006b0:
    li         $a1,0x8800
    jal        kmem_zalloc
    li         $a0,16384
    beqz       $v0, .L0000071c
    sd         $v0,-31384($s0)
    ld         $ra,0($sp)
    li         $t8,16384
    slti       $t9,$ra,16384
    movz       $t8,$ra,$t9
    move       $a0,$s1
    jal        odsyPinAndMapPfStatRegions
    sw         $t8,-31392($s0)
    jal        kvtophys
    ld         $a0,-31384($s0)
    sw         $v0,-31256($s0)
    dsrl32     $v1,$v0,0x0
    andi       $v1,$v1,0xffff
    sw         $v1,-31260($s0)
    ld         $a0,824($s1)
    sw         $v1,16412($a0)
    sync
    ld         $v0,824($s1)
    lw         $at,-31256($s0)
    sw         $at,16420($v0)
    sync
    b          .L0000069c
    ld         $ra,24($sp)
.L0000071c:
    ld         $a0,-30720($gp)
    jal        printf
    daddiu     $a0,$a0,224
    li         $a0,0x8580
    jal        mutex_unlock
    daddu      $a0,$s1,$a0
    ld         $ra,24($sp)
    b          .L000006a0
    li         $v0,1

glabel odsyDestroyPfRgn
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    lui        $s0,0x1
    daddu      $s0,$a0,$s0
    ld         $at,-31384($s0)
    sd         $s1,8($sp)
    beqz       $at, .L000007b4
    move       $s1,$a0
    lw         $t8,-31392($s0)
    beqz       $t8, .L000007b4
    sd         $ra,16($sp)
    jal        odsyUnpinAndUnmapPfStatRegions
    nop
    lw         $a1,-31392($s0)
    jal        kmem_free
    ld         $a0,-31384($s0)
    sw         $zero,-31256($s0)
    sw         $zero,-31260($s0)
    sd         $zero,-31376($s0)
    sd         $zero,-31384($s0)
    sw         $zero,-31392($s0)
    ld         $v0,824($s1)
    ld         $ra,16($sp)
    sw         $zero,16412($v0)
    sync
    ld         $at,824($s1)
    lw         $t9,-31256($s0)
    sw         $t9,16420($at)
    sync
.L000007b4:
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel gfP_OdsyPerfStat
    daddiu     $sp,$sp,-80
    sd         $s0,56($sp)
    ld         $s0,40($a0)
    sd         $s3,40($sp)
    move       $s3,$a3
    sw         $zero,0($a3)
    daddiu     $a1,$sp,0
    sd         $a2,32($sp)
    move       $a0,$a2
    sd         $ra,48($sp)
    jal        copyin
    li         $a2,24
    sd         $s2,64($sp)
    bnez       $v0, .L0000097c
    sd         $s1,72($sp)
    lw         $s1,0($sp)
    li         $v1,5
    andi       $v0,$s1,0x5
    beq        $v0, $v1, .L000008d8
    li         $v0,-1
    li         $a1,25
    li         $a0,0x8580
    daddu      $a0,$s0,$a0
    jal        mutex_lock
    sd         $a0,24($sp)
    andi       $t8,$s1,0x1
    lui        $s2,0x1
    beqz       $t8, .L0000087c
    daddu      $s2,$s0,$s2
    ld         $t9,-31384($s2)
    bnez       $t9, .L000008c8
    lbu        $a2,16($sp)
.L00000844:
    li         $a1,1
    addiu      $a2,$a2,1
    sllv       $a1,$a1,$a2
    move       $a0,$s0
    jal        odsyInitPfRgn
    sll        $a1,$a1,0x5
    ld         $a1,32($sp)
    li         $a2,24
    ld         $a3,-31376($s2)
    daddiu     $a0,$sp,0
    jal        copyout
    sd         $a3,8($sp)
    bnez       $v0, .L00000998
    ld         $a1,-30720($gp)
.L0000087c:
    andi       $v1,$s1,0x4
    li         $v0,0x8568
    beqz       $v1, .L000008e4
    daddu      $v0,$v0,$s0
    ld         $a0,0($v0)
    beqz       $a0, .L000008a0
    nop
    jal        odsyDestroyPfRgn
    move       $a0,$s0
.L000008a0:
    jal        mutex_unlock
    ld         $a0,24($sp)
    move       $v0,$zero
.L000008ac:
    ld         $s3,40($sp)
    ld         $ra,48($sp)
    ld         $s0,56($sp)
    ld         $s2,64($sp)
    ld         $s1,72($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000008c8:
    jal        odsyDestroyPfRgn
    move       $a0,$s0
    b          .L00000844
    lbu        $a2,16($sp)
.L000008d8:
    li         $a1,22
    b          .L000008ac
    sw         $a1,0($s3)
.L000008e4:
    lbu        $v0,21($sp)
    andi       $v1,$s1,0x2
    lbu        $a0,16($sp)
    lui        $a3,0x8800
    li         $a5,-193
    lbu        $a1,19($sp)
    beqz       $v1, .L000008a0
    andi       $v0,$v0,0x7
    andi       $a0,$a0,0xf
    sll        $a2,$v0,0x8
    andi       $a4,$a1,0x1
    or         $a2,$a2,$a3
    sll        $a4,$a4,0x6
    and        $a2,$a2,$a5
    lbu        $a5,18($sp)
    or         $a2,$a2,$a4
    li         $a4,-33
    andi       $a5,$a5,0x1
    and        $a2,$a2,$a4
    lbu        $a4,17($sp)
    sll        $a5,$a5,0x5
    or         $a2,$a2,$a5
    li         $a5,-17
    andi       $a4,$a4,0x1
    and        $a2,$a2,$a5
    li         $a5,-16
    sll        $a4,$a4,0x4
    or         $a2,$a2,$a4
    lui        $a4,0x1
    daddu      $a4,$s0,$a4
    and        $a2,$a2,$a5
    or         $a0,$a0,$a2
    sw         $a0,-31252($a4)
    ld         $a2,824($s0)
    sw         $a0,16428($a2)
    sync
    b          .L000008a0
    nop
.L0000097c:
    ld         $a1,-30720($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,280
    li         $v0,14
    b          .L000008ac
    sw         $v0,0($s3)
.L00000998:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,320
    li         $v0,14
    b          .L000008ac
    sw         $v0,0($s3)

glabel gfP_OdsyDIAGreset
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    move       $a1,$zero
    move       $a2,$zero
    ld         $s0,40($a0)
    move       $a0,$zero
    sd         $s8,16($sp)
    move       $s8,$a3
    sd         $ra,8($sp)
    jal        htp_register_board
    move       $a3,$zero
    jal        odsyReset
    lh         $a0,790($s0)
    move       $a0,$s0
    jal        odsy_usdelay
    li         $a1,500
    jal        odsyReset
    lh         $a0,790($s0)
    move       $a0,$s0
    ld         $a1,0($gp)
    jal        odsyInitDBE
    move       $a2,$zero
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    move       $v0,$zero
    sw         $zero,0($s8)
    ld         $s8,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
