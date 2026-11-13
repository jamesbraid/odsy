.section .text
.set noat
.set noreorder


glabel gf_OdsySuspend
    daddiu     $sp,$sp,-48
    move       $v0,$zero
    sd         $s0,8($sp)
    move       $s0,$a0
    sd         $s1,16($sp)
    beqz       $a0, .L000000a8
    move       $s1,$a1
    ld         $at,72($a0)
    bne        $at, $a1, .L000000a8
    move       $v0,$zero
    lw         $v0,4($a1)
    andi       $v0,$v0,0x3
    beqz       $v0, .L000000a8
    move       $v0,$zero
    ld         $v1,808($a0)
    beqz       $v1, .L000000a4
    sd         $ra,32($sp)
    jal        splhi
    nop
    ld         $a0,808($s0)
    beqz       $a0, .L00000098
    sd         $v0,24($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000098
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
    sw         $a1,0($sp)
    jal        gfx_flow_detach_me
    move       $a1,$s1
.L00000098:
    jal        splx
    ld         $a0,24($sp)
    ld         $ra,32($sp)
.L000000a4:
    move       $v0,$zero
.L000000a8:
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel gf_OdsyResume
    ld         $at,72($a0)
    daddiu     $sp,$sp,-64
    move       $v0,$a1
    sd         $s0,24($sp)
    move       $s0,$a0
    bne        $at, $a1, .L00000118
    sd         $ra,48($sp)
    lw         $v1,4($a1)
    andi       $v1,$v1,0x3
    sd         $a1,16($sp)
    beqz       $v1, .L00000118
    sd         $a2,40($sp)
    jal        splhi
    nop
    ld         $a0,808($s0)
    beqz       $a0, .L0000010c
    sd         $v0,32($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000148
    nop
.L0000010c:
    jal        splx
    ld         $a0,32($sp)
    ld         $a2,40($sp)
.L00000118:
    bnez       $a2, .L00000138
    ld         $ra,48($sp)
    lw         $a0,120($s0)
    beqz       $a0, .L00000138
    ld         $ra,48($sp)
    jal        force_resched
    sw         $zero,120($s0)
    ld         $ra,48($sp)
.L00000138:
    move       $v0,$zero
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000148:
    ld         $a0,808($s0)
    jal        gfx_flow_attach_me
    ld         $a1,16($sp)
    ld         $a0,808($s0)
    lui        $a1,0x1
    daddu      $a1,$s0,$a1
    sd         $a1,0($sp)
    lw         $a1,-31292($a1)
    jal        gfx_flow_credit_tnum_get
    sd         $a1,8($sp)
    ld         $a5,-30720($gp)
    ld         $a4,8($sp)
    ld         $a3,0($sp)
    and        $a4,$a4,$a5
    sll        $a5,$v0,0xc
    or         $a4,$a4,$a5
    sw         $a4,-31292($a3)
    ld         $a5,824($s0)
    sw         $a4,4212($a5)
    sync
    sw         $zero,-31288($a3)
    ld         $a2,824($s0)
    sw         $zero,4220($a2)
    sync
    b          .L0000010c
    nop

glabel gf_OdsyExit
    daddiu     $sp,$sp,-64
    sd         $s1,8($sp)
    ld         $s1,72($a0)
    sd         $s2,56($sp)
    sd         $s5,48($sp)
    sd         $ra,40($sp)
    sd         $s0,0($sp)
    lw         $at,4($a0)
    sd         $s6,16($sp)
    ld         $s6,40($a0)
    andi       $at,$at,0x4
    move       $s0,$a0
    sd         $s4,32($sp)
    sd         $s3,24($sp)
    beqz       $at, .L00000200
    move       $v0,$s6
    move       $a0,$s6
    jal        odsyDiagExit
    move       $a1,$s0
    ld         $v0,40($s0)
.L00000200:
    li         $a1,537
    jal        psema
    daddiu     $a0,$v0,56
    ld         $a0,40($s0)
    sd         $s0,72($a0)
    ld         $v0,40($s0)
    lw         $v1,104($v0)
    beqz       $v1, .L0000023c
    nop
.L00000224:
    jal        us_delay
    li         $a0,2
    ld         $v0,40($s0)
    lw         $a1,104($v0)
    bnez       $a1, .L00000224
    nop
.L0000023c:
    lw         $a2,80($v0)
    addiu      $a2,$a2,1
    bnez       $s1, .L00000360
    sw         $a2,80($v0)
    lw         $v0,0($gp)
.L00000250:
    slti       $a3,$v0,2
    ld         $s4,-30712($gp)
    bnez       $a3, .L000002ec
    li         $s1,1
    b          .L000002bc
    dsll       $s2,$s1,0x2
.L00000268:
    dsll       $t8,$s1,0x4
    li         $a1,25
    daddu      $s5,$s5,$t8
    jal        psema
    move       $a0,$s5
    lbu        $t9,84($s2)
    beqz       $t9, .L00000294
    ld         $s3,112($s2)
    ld         $ra,64($s2)
    bne        $ra, $s0, .L000002a0
    nop
.L00000294:
    lw         $at,408($s3)
    beqz       $at, .L000003cc
    move       $a0,$s6
.L000002a0:
    jal        vsema
    move       $a0,$s5
    lw         $v0,0($gp)
    addiu      $s1,$s1,1
    slt        $v1,$s1,$v0
    beqz       $v1, .L000002ec
    dsll       $s2,$s1,0x2
.L000002bc:
    dsubu      $s2,$s2,$s1
    dsll       $s2,$s2,0x2
    dsubu      $s2,$s2,$s1
    dsll       $s2,$s2,0x4
    daddu      $s2,$s4,$s2
    ld         $a0,56($s2)
    beq        $a0, $s0, .L00000268
    ld         $s5,-30720($gp)
    addiu      $s1,$s1,1
    slt        $t8,$s1,$v0
    bnez       $t8, .L000002bc
    dsll       $s2,$s1,0x2
.L000002ec:
    ld         $at,40($s0)
    lw         $t9,80($at)
    addiu      $t9,$t9,-1
    jal        splhi
    sw         $t9,80($at)
    ld         $a1,32($s0)
    ld         $a1,192($a1)
    beqz       $a1, .L00000318
    move       $s1,$v0
    jalr       $a1
    move       $a0,$s0
.L00000318:
    ld         $s2,56($sp)
    ld         $a1,40($s0)
    ld         $s5,48($sp)
    sd         $zero,72($a1)
    ld         $a0,40($s0)
    ld         $s4,32($sp)
    ld         $s3,24($sp)
    jal        vsema
    daddiu     $a0,$a0,56
    jal        splx
    move       $a0,$s1
    ld         $ra,40($sp)
    ld         $s0,0($sp)
    move       $v0,$zero
    ld         $s1,8($sp)
    ld         $s6,16($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000360:
    lh         $t8,2($s1)
    ld         $s5,-30720($gp)
    dsll       $t8,$t8,0x4
    li         $a1,25
    daddu      $s5,$s5,$t8
    jal        psema
    move       $a0,$s5
    ld         $t9,56($s1)
    bnez       $t9, .L000003bc
    nop
    ld         $s2,112($s1)
    lw         $ra,408($s2)
    bnez       $ra, .L000003bc
    move       $a0,$s6
    jal        odsyDMAFinish
    move       $a1,$s2
    move       $a0,$s0
    jal        odsyMMdetach
    move       $a1,$s2
    jal        odsyUnpinAndUnmapGctxRegions
    move       $a0,$s2
    li         $at,1
    sw         $at,408($s2)
.L000003bc:
    jal        vsema
    move       $a0,$s5
    b          .L00000250
    lw         $v0,0($gp)
.L000003cc:
    jal        odsyDMAFinish
    move       $a1,$s3
    move       $a0,$s0
    jal        odsyMMdetach
    move       $a1,$s3
    jal        odsyUnpinAndUnmapGctxRegions
    move       $a0,$s3
    li         $v0,1
    b          .L000002a0
    sw         $v0,408($s3)

glabel gf_OdsyReleaseGfxSema
    daddiu     $sp,$sp,-48
    sd         $s0,16($sp)
    ld         $s0,40($a0)
    ld         $at,808($s0)
    sd         $a0,8($sp)
    beqz       $at, .L00000470
    sd         $ra,32($sp)
    jal        splhi
    nop
    ld         $a0,808($s0)
    beqz       $a0, .L00000464
    sd         $v0,24($sp)
    jal        gfx_flow_am_i_attached
    nop
    beqz       $v0, .L00000464
    li         $a2,0x85c8
    daddu      $a2,$a2,$s0
    li         $a0,1
    sw         $a0,0($a2)
    ld         $a1,824($s0)
    sw         $a0,4220($a1)
    sync
    ld         $a0,808($s0)
    ld         $v1,824($s0)
    ld         $a1,8($sp)
    lw         $v1,4204($v1)
    jal        gfx_flow_detach_me
    sw         $v1,0($sp)
.L00000464:
    jal        splx
    ld         $a0,24($sp)
    ld         $ra,32($sp)
.L00000470:
    move       $v0,$zero
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel odsyDiagExit
    daddiu     $sp,$sp,-32
    sd         $s8,16($sp)
    lui        $s8,0x1
    sw         $zero,0($sp)
    daddu      $s8,$a0,$s8
    ld         $at,-19608($s8)
    sd         $s0,8($sp)
    move       $s0,$a1
    beq        $at, $a1, .L000004cc
    sd         $ra,24($sp)
    ld         $ra,-19584($s8)
.L000004ac:
    beq        $ra, $s0, .L000004e8
    move       $a0,$s0
    ld         $ra,24($sp)
.L000004b8:
    ld         $s0,8($sp)
    ld         $s8,16($sp)
    lw         $v0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L000004cc:
    move       $a0,$a1
    move       $a1,$zero
    move       $a2,$zero
    jal        gfP_OdsyDIAGfreeScanbuf
    daddiu     $a3,$sp,0
    b          .L000004ac
    ld         $ra,-19584($s8)
.L000004e8:
    move       $a1,$zero
    move       $a2,$zero
    jal        gfP_OdsyDIAGreleaseShadowPtrs
    daddiu     $a3,$sp,0
    b          .L000004b8
    ld         $ra,24($sp)
