.section .text
.set noat
.set noreorder


glabel VEC_int
    lui        $k0,0x1
    ori        $k0,$k0,0x4
    and        $k0,$k0,$s0
    ori        $k0,$k0,0xa1
    mtc0       $k0,$12
    move       $a2,$s0
    jal        intr
    move       $s1,$a0
    move       $s3,$v0
    andi       $s2,$s0,0xffa0
    mtc0       $s2,$12
    move       $k1,$s1

glabel tfp_special_int_exit
    ld         $k0,-16336($zero)
    sltu       $at,$sp,$k0
    beqz       $at, .L000000d4
    nop
    ld         $s0,224($k1)
    slt        $at,$k0,$s0
    beqz       $at, .L000001fc
    nop
    ld         $t0,-16344($zero)
    ld         $a1,152($t0)
    sd         $a1,-16360($zero)
    jal        uli_setasids
    lh         $a0,170($t0)
    li         $a1,4
    sb         $a1,-16305($zero)
    jal        tfi_restore
    ld         $k0,288($k1)
    dmtc0      $k0,$14
    ld         $a0,24($k1)
    ld         $a1,32($k1)
    ld         $a2,40($k1)
    ld         $a3,48($k1)
    ld         $a4,56($k1)
    ld         $a5,64($k1)
    ld         $a6,72($k1)
    ld         $a7,80($k1)
    ld         $s0,120($k1)
    ld         $s1,128($k1)
    ld         $s2,136($k1)
    ld         $s3,144($k1)
    ld         $s4,152($k1)
    ld         $s5,160($k1)
    ld         $s6,168($k1)
    ld         $s7,176($k1)
    ld         $k0,248($k1)
    ld         $at,0($k1)
    mtc0       $k0,$12
    ld         $sp,224($k1)
    ld         $gp,216($k1)
    ld         $ra,240($k1)
    eret
.L000000d4:
    bne        $sp, $k0, .L00000204
    nop
    andi       $a0,$s0,0x18
    beqz       $a0, .L00000140
    nop
    lb         $a0,-16306($zero)
    bnez       $a0, .L00000114
    nop
    ld         $a0,-16360($zero)
    ld         $a0,992($a0)
    daddiu     $a0,$a0,0
    lw         $a0,0($a0)
    bnez       $a0, .L00000114
    nop
    j          backtouser
    nop
.L00000114:
    li         $k0,1
    ld         $a0,-16352($zero)
    li         $sp,-16528
    sb         $k0,-16305($zero)
    jal        ktimer_switch
    li         $a1,1
    ld         $s0,248($k1)
    move       $a0,$k1
    ld         $a3,280($k1)
    j          soft_trap
    li         $a1,132
.L00000140:
    ld         $a0,-16352($zero)
    move       $a1,$s7
    beqz       $a0, .L00000158
    nop
    jal        ktimer_switch
    nop
.L00000158:
    lb         $k0,-16301($zero)
    beqz       $k0, .L000001a0
    nop
    li         $k0,3
    sb         $zero,-16301($zero)
    sb         $k0,-16305($zero)
    lb         $k0,-16304($zero)
    beqz       $k0, .L000001fc
    nop
    jal        splhi
    ld         $sp,-15424($zero)
    mfc0       $t1,$12
    ori        $t1,$t1,0x3
    xori       $t1,$t1,0x2
    mtc0       $t1,$12
    sb         $zero,-16304($zero)
    j          resumeidle
    move       $a0,$zero
.L000001a0:
    ld         $k0,-16352($zero)
    sd         $zero,552($k0)
    li         $k0,1
    sb         $k0,-16305($zero)
    beqz       $s3, .L000001fc
    nop
    lb         $v0,-16306($zero)
    beqz       $v0, .L000001fc
    nop
    jal        splhi
    move       $sp,$s1
    mfc0       $t1,$12
    ori        $t1,$t1,0x3
    xori       $t1,$t1,0x2
    mtc0       $t1,$12

glabel kpreemption
    jal        kpswtch
    nop
    lui        $a0,0x1
    ori        $a0,$a0,0x4
    and        $a0,$a0,$s0
    ori        $a0,$a0,0xa1
    mtc0       $a0,$12
    move       $k1,$s1
.L000001fc:
    j          exception_leave
    nop
.L00000204:
    lui        $a1,0x0
    move       $a2,$sp
    ld         $sp,-15424($zero)
    daddiu     $a1,$a1,0
    li         $a0,0
    dsll       $a1,$a1,0x10
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    jal        cmn_err
    daddiu     $a1,$a1,0

glabel arcs_write
    lw         $at,0($gp)
    move       $v0,$a1
    daddiu     $sp,$sp,-16
    move       $a6,$a2
    beqz       $at, .L00000268
    sd         $ra,0($sp)
    move       $a0,$a1
    move       $a1,$a2
    jal        ioc_console_write
    move       $a2,$a3
    move       $a0,$v0
.L00000258:
    ld         $ra,0($sp)
    move       $v0,$a0
    jr         $ra
    daddiu     $sp,$sp,16
.L00000268:
    ld         $v0,-32752($gp)
    ld         $v0,0($v0)
    ld         $v0,216($v0)
    jalr       $v0
    nop
    b          .L00000258
    move       $a0,$v0

glabel arcs_load
    daddiu     $sp,$sp,-48
    sd         $a0,24($sp)
    sd         $a1,0($sp)
    lw         $at,0($gp)
    sd         $a2,16($sp)
    sd         $a3,8($sp)
    bnez       $at, .L000002c4
    sd         $ra,32($sp)
.L000002a4:
    ld         $v0,-32752($gp)
    ld         $v0,0($v0)
    ld         $v0,0($v0)
    jalr       $v0
    nop
    ld         $ra,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000002c4:
    move       $a0,$zero
    jal        cmn_err
    ld         $a1,-32752($gp)
    ld         $a0,24($sp)
    ld         $a2,16($sp)
    ld         $a3,8($sp)
    b          .L000002a4
    ld         $a1,0($sp)

glabel prom_autoboot
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        silence_bell
    nop
    lw         $at,0($gp)
    beqz       $at, .L0000030c
    ld         $v0,-32752($gp)
    jal        prom_reinit
    nop
    ld         $v0,-32752($gp)
.L0000030c:
    ld         $v0,0($v0)
    ld         $v0,48($v0)
    jalr       $v0
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel prom_reinit
    lh         $v0,0($gp)
    lh         $at,-15456($zero)
    daddiu     $sp,$sp,-16
    bne        $at, $v0, .L00000360
    sd         $ra,0($sp)
    jal        silence_bell
    nop
    jal        set_autopoweron
    nop
    lw         $v1,0($gp)
    beqz       $v1, .L00000364
    ld         $a0,-32752($gp)
    jal        cpu_soft_powerdown
    nop
.L00000360:
    ld         $a0,-32752($gp)
.L00000364:
    ld         $a0,0($a0)
    ld         $a0,40($a0)
    jalr       $a0
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel arcs_setuproot
    ld         $a0,-32752($gp)
    daddiu     $sp,$sp,-32
    sd         $ra,24($sp)
    jal        kopt_find
    daddiu     $a0,$a0,48
    beqz       $v0, .L000003c0
    ld         $ra,24($sp)
    move       $a0,$v0
    jal        .text
    daddiu     $a1,$sp,0
    beqz       $v0, .L000003bc
    ld         $a0,-32752($gp)
    daddiu     $a1,$sp,0
    jal        kopt_set
    daddiu     $a0,$a0,64
.L000003bc:
    ld         $ra,24($sp)
.L000003c0:
    jr         $ra
    daddiu     $sp,$sp,32

glabel arcs_getenv
    ld         $at,-32752($gp)
    ld         $at,0($at)
    ld         $at,240($at)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jalr       $at
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel arcs_nvram_tab
    ld         $at,-32744($gp)
    ld         $at,0($at)
    ld         $at,8($at)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jalr       $at
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel arcs_eaddr
    move       $a1,$a0
    ld         $a0,-32744($gp)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        bcopy
    li         $a2,6
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel prom_eaddr
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        arcs_eaddr
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
    daddiu     $sp,$sp,-64
    sd         $s0,16($sp)
    move       $s0,$a0
    ld         $a0,-32752($gp)
    li         $a2,4
    sd         $a1,0($sp)
    move       $a1,$s0
    sd         $ra,8($sp)
    jal        strncmp
    daddiu     $a0,$a0,88
    sd         $s3,24($sp)
    sd         $s2,40($sp)
    sd         $s1,48($sp)
    sd         $s4,32($sp)
    move       $s4,$zero
    beqz       $v0, .L00000568
    sd         $s5,56($sp)
    lbu        $a1,0($s0)
    beqz       $a1, .L00000650
    move       $s5,$zero
    b          .L000004d4
    li         $s3,-1
.L000004b0:
    move       $a0,$s1
.L000004b4:
    jal        strchr
    li         $a1,41
    beqz       $v0, .L00000658
    nop
    lbu        $a2,1($v0)
    daddiu     $s0,$v0,1
    beqz       $a2, .L00000600
    li         $a4,-1
.L000004d4:
    move       $a0,$s0
    jal        strchr
    li         $a1,40
    beqz       $v0, .L00000628
    move       $s2,$v0
    daddiu     $s1,$v0,1
    lbu        $v1,1($v0)
    dsubu      $v0,$v0,$s0
    daddiu     $v0,$v0,1
    beqz       $v1, .L00000628
    sll        $v0,$v0,0x0
    slti       $v1,$v0,4
    bnez       $v1, .L000004b0
    ld         $a0,-32752($gp)
    li         $a2,4
    move       $a1,$s0
    jal        strncmp
    daddiu     $a0,$a0,96
    beqz       $v0, .L00000660
    daddiu     $s1,$s2,1
    ld         $a0,-32752($gp)
    li         $a2,4
    move       $a1,$s0
    jal        strncmp
    daddiu     $a0,$a0,104
    beqz       $v0, .L00000670
    ld         $a0,-32752($gp)
    li         $a2,4
    move       $a1,$s0
    jal        strncmp
    daddiu     $a0,$a0,112
    bnez       $v0, .L000004b4
    move       $a0,$s1
    jal        atoi
    move       $a0,$s1
    b          .L000004b0
    move       $s5,$v0
.L00000568:
    move       $a0,$s0
    jal        strchr
    li         $a1,40
    beqz       $v0, .L00000680
    nop
    lbu        $a1,1($v0)
    beqz       $a1, .L00000680
    daddiu     $s1,$v0,1
    jal        atoi
    move       $a0,$s1
    move       $s4,$v0
    move       $a0,$s1
    jal        strchr
    li         $a1,44
    beqz       $v0, .L00000688
    nop
    lbu        $a2,1($v0)
    beqz       $a2, .L00000688
    daddiu     $s1,$v0,1
    jal        atoi
    move       $a0,$s1
    move       $s3,$v0
    move       $a0,$s1
    jal        strchr
    li         $a1,44
    beqz       $v0, .L00000690
    nop
    lbu        $a3,1($v0)
    beqz       $a3, .L00000690
    nop
    jal        atoi
    daddiu     $a0,$v0,1
    move       $s5,$v0
    move       $a0,$s0
    jal        strchr
    li         $a1,41
    beqz       $v0, .L00000698
    li         $a4,-1
.L00000600:
    beq        $s3, $a4, .L00000650
    move       $a2,$s4
    ld         $a1,-32752($gp)
    move       $a3,$s3
    move       $a4,$s5
    ld         $a0,0($sp)
    jal        sprintf
    daddiu     $a1,$a1,72
    b          .L0000062c
    li         $v0,1
.L00000628:
    move       $v0,$zero
.L0000062c:
    ld         $s3,24($sp)
    ld         $s4,32($sp)
    ld         $s0,16($sp)
    ld         $ra,8($sp)
    ld         $s2,40($sp)
    ld         $s1,48($sp)
    ld         $s5,56($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000650:
    b          .L0000062c
    move       $v0,$zero
.L00000658:
    b          .L0000062c
    move       $v0,$zero
.L00000660:
    jal        atoi
    move       $a0,$s1
    b          .L000004b0
    move       $s4,$v0
.L00000670:
    jal        atoi
    move       $a0,$s1
    b          .L000004b0
    move       $s3,$v0
.L00000680:
    b          .L0000062c
    move       $v0,$zero
.L00000688:
    b          .L0000062c
    move       $v0,$zero
.L00000690:
    b          .L0000062c
    move       $v0,$zero
.L00000698:
    b          .L0000062c
    move       $v0,$zero

glabel exception_exit
    move       $a0,$k1
    lwu        $k0,-12276($zero)
    andi       $k0,$k0,0x1
    beqz       $k0, .L000008c4
    nop
    move       $k1,$ra
    jal        getpc
    move       $k0,$v0
    move       $ra,$k1
    ld         $k1,-12288($zero)
    sd         $v0,72($k1)
    move       $v0,$k0
    dmfc0      $k0,$14
    sd         $k0,0($k1)
    dmfc0      $k0,$8
    sd         $k0,8($k1)
    dmfc0      $k0,$13
    sd         $k0,16($k1)
    dmfc0      $k0,$12
    sd         $k0,24($k1)
    sd         $ra,32($k1)
    ld         $k0,-16360($zero)
    sd         $k0,40($k1)
    sd         $sp,48($k1)
    li         $k0,5
    sd         $k0,56($k1)
    lwu        $k0,-12280($zero)
    addiu      $k0,$k0,1
    sw         $k0,-12280($zero)
    sd         $k0,64($k1)
    lwu        $k0,-12276($zero)
    andi       $k0,$k0,0x2
    beqz       $k0, .L000008a4
    nop
    sd         $at,80($k1)
    sd         $v0,88($k1)
    sd         $v1,96($k1)
    sd         $a0,104($k1)
    sd         $a1,112($k1)
    sd         $a2,120($k1)
    sd         $a3,128($k1)
    sd         $a4,136($k1)
    sd         $a5,144($k1)
    sd         $a6,152($k1)
    sd         $a7,160($k1)
    sd         $t0,168($k1)
    sd         $t1,176($k1)
    sd         $t2,184($k1)
    sd         $t3,192($k1)
    sd         $s0,200($k1)
    sd         $s1,208($k1)
    sd         $s2,216($k1)
    sd         $s3,224($k1)
    sd         $s4,232($k1)
    sd         $s5,240($k1)
    sd         $s6,248($k1)
    sd         $s7,256($k1)
    sd         $t8,264($k1)
    sd         $t9,272($k1)
    sd         $gp,280($k1)
    sd         $s8,288($k1)
    lwu        $k0,-12276($zero)
    andi       $k0,$k0,0x4
    beqz       $k0, .L000008a4
    nop
    ld         $a0,48($k1)
    move       $a1,$a0
    dsrl       $a1,$a1,0xe
    dsll       $a1,$a1,0xe
    li         $a2,-32768
    bne        $a1, $a2, .L000007e4
    li         $a1,296
    lwu        $a2,-12268($zero)
    daddu      $a1,$a1,$k1
    daddu      $a0,$a0,$a2
    ld         $sp,-15424($zero)
    jal        bcopy
    ld         $k1,-12288($zero)
    ld         $sp,48($k1)
    b          .L0000082c
    nop
.L000007e4:
    daddu      $a1,$a1,$k1
    lui        $a0,0xbad0
    ori        $a0,$a0,0xbad0
    dsll       $a0,$a0,0x10
    ori        $a0,$a0,0xbad0
    dsll       $a0,$a0,0x10
    ori        $a0,$a0,0xbad0
    sd         $a0,0($a1)
    lwu        $a2,-12268($zero)
    daddiu     $a2,$a2,-8
    daddu      $a1,$a1,$a2
    lui        $a0,0xbad1
    ori        $a0,$a0,0xbad1
    dsll       $a0,$a0,0x10
    ori        $a0,$a0,0xbad1
    dsll       $a0,$a0,0x10
    ori        $a0,$a0,0xbad1
    sd         $a0,0($a1)
.L0000082c:
    nop
    ld         $at,80($k1)
    ld         $v0,88($k1)
    ld         $v1,96($k1)
    ld         $a0,104($k1)
    ld         $a1,112($k1)
    ld         $a2,120($k1)
    ld         $a3,128($k1)
    ld         $a4,136($k1)
    ld         $a5,144($k1)
    ld         $a6,152($k1)
    ld         $a7,160($k1)
    ld         $t0,168($k1)
    ld         $t1,176($k1)
    ld         $t2,184($k1)
    ld         $t3,192($k1)
    ld         $s0,200($k1)
    ld         $s1,208($k1)
    ld         $s2,216($k1)
    ld         $s3,224($k1)
    ld         $s4,232($k1)
    ld         $s5,240($k1)
    ld         $s6,248($k1)
    ld         $s7,256($k1)
    ld         $t8,264($k1)
    ld         $t9,272($k1)
    ld         $gp,280($k1)
    ld         $s8,288($k1)
    ld         $ra,32($k1)
    ld         $sp,48($k1)
.L000008a4:
    lwu        $k0,-12272($zero)
    daddu      $k1,$k1,$k0
    li         $k0,-4097
    slt        $k0,$k1,$k0
    bnez       $k0, .L000008c0
    nop
    li         $k1,-12224
.L000008c0:
    sd         $k1,-12288($zero)
.L000008c4:
    move       $k1,$a0
    andi       $k0,$s0,0x18
    beqz       $k0, .L00000910
    nop
    lb         $k0,-16306($zero)
    bnez       $k0, .L00000900
    nop
    ld         $k0,-16360($zero)
    ld         $k0,992($k0)
    daddiu     $k0,$k0,0
    lw         $k0,0($k0)
    bnez       $k0, .L00000900
    nop
    j          backtouser
    nop
.L00000900:
    move       $a0,$k1
    ld         $a3,280($k1)
    j          soft_trap
    li         $a1,132

glabel exception_leave
.L00000910:
    jal        tfi_restore
    nop
    ld         $a0,24($k1)
    ld         $a1,32($k1)
    ld         $a2,40($k1)
    ld         $a3,48($k1)
    ld         $a4,56($k1)
    ld         $a5,64($k1)
    ld         $a6,72($k1)
    ld         $a7,80($k1)
    ld         $s0,120($k1)
    ld         $s1,128($k1)
    ld         $s2,136($k1)
    ld         $s3,144($k1)
    ld         $s4,152($k1)
    ld         $s5,160($k1)
    ld         $s6,168($k1)
    ld         $s7,176($k1)
    ld         $k0,248($k1)
    ld         $ra,240($k1)
    mtc0       $k0,$12
    ld         $k0,288($k1)
    ld         $at,0($k1)
    dmtc0      $k0,$14
    ld         $sp,224($k1)
    eret

glabel unmaptlb
    mfc0       $t0,$12
    li         $t2,160
    mtc0       $t2,$12
    beq        $zero, $a0, .L000009a0
    nop
    lh         $t1,-15456($zero)
    dadd       $a0,$a0,$t1
    lbu        $a0,0($a0)
.L000009a0:
    dmfc0      $t1,$10
    dsll       $a1,$a1,0xe
    li         $at,-32768
    and        $a1,$a1,$at
    or         $t2,$a1,$a0
    dmtc0      $t2,$10
    tlbp
    mfc0       $t3,$0
    move       $v0,$zero
    bltz       $t3, .L000009e8
    nop
    li         $t2,21
    dsll32     $t2,$t2,0x1b
    dmtc0      $t2,$10
    dmtc0      $zero,$2
    dmtc0      $zero,$3
    move       $v0,$t3
    tlbwi
.L000009e8:
    dmtc0      $t1,$10
    mtc0       $t0,$12
    jr         $ra
    nop

glabel invaltlb
    li         $t2,21
    dsll32     $t2,$t2,0x1b
    mfc0       $v0,$12
    li         $t1,160
    mtc0       $t1,$12
    dmfc0      $t0,$10
    dmtc0      $t2,$10
    dmtc0      $zero,$2
    dmtc0      $zero,$3
    mtc0       $a0,$0
    tlbwi
    dmtc0      $t0,$10
    mtc0       $v0,$12
    jr         $ra
    nop

glabel tlbwired
    mfc0       $v0,$12
    li         $t1,160
    mtc0       $t1,$12
    dmfc0      $t0,$10
    beq        $zero, $a1, .L00000a58
    nop
    lh         $t1,-15456($zero)
    dadd       $a1,$a1,$t1
    lbu        $a1,0($a1)
.L00000a58:
    li         $at,-32768
    move       $t1,$a4
    and        $a2,$a2,$at
    move       $t2,$a5
    or         $a1,$a1,$a2
    mfc0       $t3,$5
    mtc0       $t2,$5
    dmtc0      $a1,$10
    dmtc0      $a3,$2
    dmtc0      $t1,$3
    mtc0       $a0,$0
    tlbwi
    dmtc0      $t0,$10
    mtc0       $t3,$5
    mtc0       $v0,$12
    jr         $ra
    nop

glabel tlbdropin
    mfc0       $t0,$12
    li         $t2,160
    mtc0       $t2,$12
    dmfc0      $t1,$10
    beq        $zero, $a0, .L00000ad0
    li         $at,1
    bne        $a0, $at, .L00000ac4
    nop
    b          .L00000ad0
    andi       $a0,$t1,0xff
.L00000ac4:
    lh         $t2,-15456($zero)
    dadd       $a0,$a0,$t2
    lbu        $a0,0($a0)
.L00000ad0:
    li         $at,-32768
    andi       $t2,$a1,0x4000
    and        $a1,$a1,$at
    or         $a0,$a0,$a1
    dmtc0      $a0,$10
    tlbp
    mfc0       $t3,$0
    move       $v0,$zero
    bltz       $t3, .L00000b44
    nop
    tlbr
    beqz       $t2, .L00000b18
    dmtc0      $a0,$10
    nop
    dmfc0      $v0,$3
    dmtc0      $a2,$3
    b          .L00000b28
    nop
.L00000b18:
    nop
    dmfc0      $v0,$2
    dmtc0      $a2,$2
    nop
.L00000b28:
    li         $t2,24576
    mtc0       $t2,$5
    tlbwi
    dmtc0      $t1,$10
    mtc0       $t0,$12
    jr         $ra
    nop
.L00000b44:
    beqz       $t2, .L00000b5c
    andi       $t3,$a2,0x1
    dmtc0      $t3,$2
    dmtc0      $a2,$3
    b          .L00000b64
    nop
.L00000b5c:
    dmtc0      $t3,$3
    dmtc0      $a2,$2
.L00000b64:
    tlbwr
    dmtc0      $t1,$10
    mtc0       $t0,$12
    jr         $ra
    move       $v0,$zero

glabel tlbdrop2in
    mfc0       $t0,$12
    li         $t2,160
    mtc0       $t2,$12
    dmfc0      $t1,$10
    li         $at,-32768
    and        $a1,$a1,$at
    or         $a0,$a0,$a1
    dmtc0      $a0,$10
    dmtc0      $a2,$2
    dmtc0      $a3,$3
    tlbp
    mfc0       $t3,$0
    move       $v0,$zero
    bltz       $t3, .L00000bc0
    nop
    tlbwi
    b          .L00000bc4
    nop
.L00000bc0:
    tlbwr
.L00000bc4:
    dmtc0      $t1,$10
    mtc0       $t0,$12
    jr         $ra
    nop

glabel tlbdropin_lpgs
    mfc0       $v0,$12
    li         $t0,160
    mtc0       $t0,$12
    or         $a1,$a1,$a0
    dmtc0      $a1,$10
    tlbp
    mfc0       $t8,$0
    addi       $t3,$a4,-1
    and        $t3,$a1,$t3
    dsubu      $a1,$a1,$t3
    nor        $t0,$zero,$a4
    and        $a1,$a1,$t0
    or         $a0,$a0,$a1
    dmtc0      $a0,$10
    dmtc0      $a2,$2
    dmtc0      $a3,$3
    addi       $t3,$a4,-1
    srl        $t3,$t3,0xc
    sll        $t3,$t3,0xd
    mtc0       $t3,$5
    bltz       $t8, .L00000c38
    nop
    tlbwi
    b          .L00000c3c
    nop
.L00000c38:
    tlbwr
.L00000c3c:
    li         $t0,24576
    mtc0       $t0,$5
    mtc0       $v0,$12
    jr         $ra
    nop

glabel flush_tlb
    li         $t0,21
    li         $v1,64
    dsll32     $t0,$t0,0x1b
    mfc0       $t2,$12
    li         $t3,160
    mtc0       $t3,$12
    dmfc0      $t1,$10
    dmtc0      $t0,$10
    dmtc0      $zero,$2
    dmtc0      $zero,$3
    mtc0       $a0,$0
.L00000c7c:
    addiu      $a0,$a0,1
    tlbwi
    bne        $a0, $v1, .L00000c7c
    mtc0       $a0,$0
    dmtc0      $t1,$10
    jr         $ra
    mtc0       $t2,$12

glabel set_tlbpid
    mfc0       $t0,$12
    li         $t1,160
    mtc0       $t1,$12
    li         $t1,5
    li         $t3,1
.L00000cac:
    mtc0       $t1,$0
    tlbr
    dmfc0      $t2,$10
    li         $at,-256
    and        $t2,$t2,$at
    or         $t2,$t2,$a0
    dmtc0      $t2,$10
    tlbwi
    slt        $at,$t3,$t1
    bnez       $at, .L00000cac
    addi       $t1,$t1,-1
    mtc0       $t0,$12
    jr         $ra
    nop

glabel tlbfind
    mfc0       $t0,$12
    li         $t2,160
    mtc0       $t2,$12
    dmfc0      $t1,$10
    li         $at,-32768
    and        $a1,$a1,$at
    or         $t2,$a0,$a1
    dmtc0      $t2,$10
    tlbp
    mfc0       $v0,$0
    bltz       $v0, .L00000d30
    nop
    tlbr
    dmfc0      $t3,$2
    sd         $t3,0($a2)
    dmfc0      $t3,$3
    sd         $t3,0($a3)
    b          .L00000d34
    nop
.L00000d30:
    li         $v0,-1
.L00000d34:
    li         $t2,24576
    mtc0       $t2,$5
    dmtc0      $t1,$10
    mtc0       $t0,$12
    jr         $ra
    nop

glabel tlbgetpid
    dmfc0      $v0,$10
    jr         $ra
    andi       $v0,$v0,0xff

glabel tlbgetent
    mfc0       $t3,$12
    li         $t2,160
    mtc0       $t2,$12
    dmfc0      $v0,$10
    mtc0       $a0,$0
    tlbr
    dmfc0      $t0,$10
    sd         $t0,0($a1)
    dmfc0      $t0,$2
    sw         $t0,0($a2)
    dmfc0      $t0,$3
    sw         $t0,0($a3)
    dmtc0      $v0,$10
    li         $t0,24576
    mtc0       $t0,$5
    mtc0       $t3,$12
    jr         $ra
    nop

glabel tlbgetrand
    mfc0       $v0,$1
    jr         $ra
    nop

glabel tlb_probe
    mfc0       $t3,$12
    li         $t2,160
    mtc0       $t2,$12
    dmfc0      $t0,$10
    move       $a0,$a0
    li         $at,-32768
    and        $t1,$a1,$at
    or         $t1,$t1,$a0
    dmtc0      $t1,$10
    tlbp
    mfc0       $t1,$0
    bltz       $t1, .L00000e0c
    li         $v0,-1
    tlbr
    mfc0       $t1,$5
    sw         $t1,0($a2)
    srl        $t1,$t1,0x1
    ori        $t1,$t1,0xfff
    daddiu     $t1,$t1,1
    and        $t1,$t1,$a1
    dmfc0      $v0,$3
    bnez       $t1, .L00000e0c
    nop
    dmfc0      $v0,$2
.L00000e0c:
    dmtc0      $t0,$10
    li         $t0,24576
    mtc0       $t0,$5
    mtc0       $t3,$12
    jr         $ra
    nop

glabel save
    sd         $ra,80($a0)
    sd         $sp,64($a0)
    sd         $s8,72($a0)
    mfc0       $v0,$12
    sd         $s0,0($a0)
    sd         $s1,8($a0)
    sd         $s2,16($a0)
    sd         $s3,24($a0)
    sd         $v0,88($a0)
    move       $v0,$zero
    sd         $s4,32($a0)
    sd         $s5,40($a0)
    sd         $s6,48($a0)
    jr         $ra
    sd         $s7,56($a0)

glabel resume
    li         $t1,160
    mtc0       $t1,$12
    li         $t1,1
    li         $t2,1
    li         $t3,-32768
    li         $s1,0
    beqz       $a1, .L00000e90
    sb         $t2,-16305($zero)
    sb         $zero,114($a1)
.L00000e90:
    sb         $t1,114($a0)
    sd         $a0,-16352($zero)
    sd         $a0,-16360($zero)
    ld         $t1,1000($a0)
    sd         $t1,-15184($zero)
    dmtc0      $t3,$10
    mtc0       $s1,$0
    mtc0       $t1,$2
    ld         $t2,-15192($zero)
    mtc0       $t2,$3
    tlbwi
    ld         $t2,992($a0)
    li         $t3,1
    li         $s0,6
    daddiu     $t1,$t2,720
    daddiu     $t2,$t2,800
.L00000ed0:
    ld         $a5,0($t2)
    daddiu     $t1,$t1,16
    ld         $a4,-16($t1)
    ld         $t0,-8($t1)
    or         $a5,$a5,$a2
    mtc0       $a4,$2
    mtc0       $t0,$3
    dmtc0      $a5,$10
    mtc0       $t3,$0
    addi       $t3,$t3,1
    tlbwi
    bne        $t3, $s0, .L00000ed0
    daddiu     $t2,$t2,8
    ld         $ra,80($a0)
    ld         $sp,64($a0)
    ld         $s8,72($a0)
    ld         $s0,0($a0)
    ld         $s1,8($a0)
    ld         $s2,16($a0)
    ld         $s3,24($a0)
    ld         $s4,32($a0)
    ld         $s5,40($a0)
    ld         $v0,88($a0)
    ld         $s6,48($a0)
    ld         $s7,56($a0)
    mtc0       $v0,$12
    jr         $ra
    li         $v0,1

glabel resumethread
    mfc0       $v0,$12
    li         $t1,160
    mtc0       $t1,$12
    li         $t1,1
    li         $t2,1
    sb         $t1,114($a0)
    sd         $a0,-16352($zero)
    sd         $zero,-16360($zero)
    sb         $t2,-16305($zero)
    beq        $a0, $a1, .L00000f74
    ld         $sp,64($a0)
    bnezl      $a1, .L00000f74
    sb         $zero,114($a1)
.L00000f74:
    ld         $ra,80($a0)
    ld         $s8,72($a0)
    ld         $s0,0($a0)
    ld         $s1,8($a0)
    ld         $s2,16($a0)
    ld         $s3,24($a0)
    ld         $s4,32($a0)
    ld         $s5,40($a0)
    ld         $s6,48($a0)
    ld         $s7,56($a0)
    mtc0       $v0,$12
    li         $v0,1
    jr         $ra

glabel restartxthread
    mfc0       $v0,$12
    li         $t1,160
    mtc0       $t1,$12
    li         $t1,1
    li         $t2,1
    sb         $t1,114($a0)
    sd         $a0,-16352($zero)
    sd         $zero,-16360($zero)
    sb         $t2,-16305($zero)
    beq        $a0, $a2, .L00000fdc
    move       $sp,$a1
    bnezl      $a2, .L00000fdc
    sb         $zero,114($a2)
.L00000fdc:
    mtc0       $v0,$12
    j          xthread_prologue
    nop

glabel loopxthread
    j          xthread_loop_prologue
    move       $sp,$a1

glabel sthread_launch
    jal        spl0
    nop
    move       $a0,$s0
    move       $a1,$s1
    move       $a2,$s2
    jalr       $s8
    move       $a3,$s3
    jal        sthread_exit
    nop

glabel p0_launch
    jal        spl0
    nop
    jal        p0
    nop
    j          proc1
    nop

glabel resumeidle
    mfc0       $v0,$12
    li         $t1,160
    mtc0       $t1,$12
    li         $t1,3
    sb         $t1,-16305($zero)
    ld         $sp,-15424($zero)
    beqz       $a0, .L00001050
    nop
    sb         $zero,114($a0)
.L00001050:
    sd         $zero,-16352($zero)
    sd         $zero,-16360($zero)
    mtc0       $v0,$12
    jal        idle
    nop
    move       $a0,$v0
    jal        resumenewthread
    li         $a1,0

glabel toidlestk
    mfc0       $v0,$12
    li         $t1,160
    mtc0       $t1,$12
    li         $t1,3
    ld         $sp,-15424($zero)
    sb         $t1,-16305($zero)
    sd         $zero,-16352($zero)
    sd         $zero,-16360($zero)
    sb         $zero,114($a0)
    daddiu     $sp,$sp,-16
    mtc0       $v0,$12
    move       $s0,$a1
    move       $a0,$a2
    jr         $s0
    move       $a1,$a3

glabel setjmp
    sd         $ra,80($a0)
    sd         $sp,64($a0)
    sd         $s8,72($a0)
    sd         $s0,0($a0)
    sd         $s1,8($a0)
    sd         $s2,16($a0)
    sd         $s3,24($a0)
    sd         $s4,32($a0)
    sd         $s5,40($a0)
    sd         $s6,48($a0)
    sd         $s7,56($a0)
    mfc0       $v0,$12
    sd         $v0,88($a0)
    jr         $ra
    move       $v0,$zero

glabel longjmp
    ld         $ra,80($a0)
    ld         $sp,64($a0)
    ld         $s8,72($a0)
    ld         $s0,0($a0)
    ld         $s1,8($a0)
    ld         $s2,16($a0)
    ld         $s3,24($a0)
    ld         $s4,32($a0)
    ld         $s5,40($a0)
    ld         $s6,48($a0)
    ld         $v0,88($a0)
    ld         $s7,56($a0)
    mtc0       $v0,$12
    jr         $ra
    li         $v0,1

glabel dummy_func
    jr         $ra
    nop

glabel dcache_wb
    lui        $a2,0x2
    j          cache_operation
    ori        $a2,$a2,0x1003

glabel dki_dcache_inval
    lui        $a2,0x2
    j          cache_operation
    ori        $a2,$a2,0x1001

glabel dummyret0_func
    jr         $ra
    move       $v0,$zero

glabel _get_timestamp
    lui        $v0,0xaff2
    jr         $ra
    lwu        $v0,4($v0)

glabel getcpuid
    lui        $v0,0xaff5
    jr         $ra
    ld         $v0,0($v0)

glabel nmi_dump
    li         $k0,128
    mtc0       $k0,$12
    lui        $k0,0xaff5
    ld         $k1,0($k0)
    lui        $k0,0xa800
    dsll32     $k0,$k0,0x0
    ori        $k0,$k0,0x400
    lw         $k0,16($k0)
    bne        $k0, $k1, .L00001254
    nop
    lui        $k0,0x0
    daddiu     $k0,$k0,0
    dsll       $k0,$k0,0x10
    daddiu     $k0,$k0,0
    dsll       $k0,$k0,0x10
    daddiu     $k0,$k0,0
    dmfc0      $k1,$30
    sd         $k1,0($k0)
    dmfc0      $k1,$14
    sd         $k1,8($k0)
    sd         $sp,16($k0)
    sd         $ra,24($k0)
    lui        $sp,0x0
    daddiu     $sp,$sp,0
    dsll       $sp,$sp,0x10
    daddiu     $sp,$sp,0
    dsll       $sp,$sp,0x10
    daddiu     $sp,$sp,0
    daddi      $sp,$sp,16368
    lui        $gp,0x0
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    j          cont_nmi_dump
    nop
.L00001254:
    dsll       $k1,$k1,0x5
    lui        $k0,0x0
    daddiu     $k0,$k0,0
    dsll       $k0,$k0,0x10
    daddiu     $k0,$k0,0
    dsll       $k0,$k0,0x10
    daddiu     $k0,$k0,0
    daddu      $k0,$k0,$k1
    dmfc0      $k1,$30
    sd         $k1,0($k0)
    dmfc0      $k1,$14
    sd         $k1,8($k0)
    sd         $sp,16($k0)
    sd         $ra,24($k0)
.L0000128c:
    b          .L0000128c
    nop

glabel getcachesz
    mfc0       $v1,$16
    lui        $at,0x7
    and        $v1,$v1,$at
    dsrl       $v1,$v1,0x10
    daddi      $v1,$v1,19
    li         $v0,1
    jr         $ra
    dsllv      $v0,$v0,$v1

glabel bootstrap
    li         $t0,128
    mtc0       $t0,$12
    lui        $gp,0x0
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    lw         $v0,16($a0)
    li         $s0,1
    dsllv      $s0,$s0,$v0
    mtc0       $zero,$18
    mtc0       $zero,$19
    li         $a3,24576
    mtc0       $a3,$5
    li         $a3,6
    mtc0       $a3,$6
    li         $v0,63
    dsll32     $v0,$v0,0x8
    dmtc0      $v0,$20
    li         $v0,0xc000
    dmtc0      $v0,$21
    dmtc0      $zero,$10
    jal        getcpuid
    nop
    li         $v1,16
    li         $at,-1
    multu      $v0,$v1
    lui        $v1,0x0
    li         $a3,1
    daddiu     $v1,$v1,0
    dsll32     $at,$at,0x4
    move       $a1,$zero
    dsll       $v1,$v1,0x10
    li         $a2,-16384
    daddiu     $v1,$v1,0
    dsrl       $at,$at,0x1e
    li         $a5,24576
    mflo       $v0
    dsll       $v1,$v1,0x10
    daddiu     $v1,$v1,0
    daddu      $v0,$v0,$v1
    ld         $a0,8($v0)
    dsrl       $a0,$a0,0x6
    and        $a0,$a0,$at
    ori        $a4,$a0,0x2f
    li         $a0,0
    jal        tlbwired
    move       $s1,$a4
    li         $v0,3
    sd         $s1,-15192($zero)
    sb         $v0,-16305($zero)
    ld         $sp,-15424($zero)
    j          cboot
    sw         $s0,-14756($zero)

glabel ffintr64
    move       $v0,$zero
    li         $v1,32
    dsrl32     $a1,$a0,0x0
    movn       $v0,$v1,$a1
    movn       $a0,$a1,$a1
    li         $v1,16
    dsrl       $a1,$a0,0x10
    movn       $a1,$v1,$a1
    dadd       $v0,$v0,$a1
    dsrlv      $a0,$a0,$a1
    li         $v1,8
    dsrl       $a1,$a0,0x8
    movn       $a1,$v1,$a1
    dadd       $v0,$v0,$a1
    dsrlv      $a0,$a0,$a1
    li         $v1,4
    dsrl       $a1,$a0,0x4
    movn       $a1,$v1,$a1
    dadd       $v0,$v0,$a1
    dsrlv      $a0,$a0,$a1
    li         $v1,2
    dsrl       $a1,$a0,0x2
    movn       $a1,$v1,$a1
    dadd       $v0,$v0,$a1
    dsrlv      $a0,$a0,$a1
    dsrl       $a0,$a0,0x1
    jr         $ra
    dadd       $v0,$v0,$a0

glabel _ticksper1024inst
    sync
    li         $a0,511
    lui        $t0,0xaff2
    nop
    ld         $v0,0($t0)
.L00001484:
    li         $t1,10
.L00001488:
    bgtz       $t1, .L00001488
    addiu      $t1,$t1,-1
    bgtz       $a0, .L00001484
    addiu      $a0,$a0,-1
    ld         $v1,0($t0)
    jr         $ra
    dsubu      $v0,$v1,$v0

glabel us_delay
    lw         $a1,-15176($zero)
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll       $t0,$a0,0x5
    dsubu      $t0,$t0,$a0
    dsll       $t0,$t0,0x2
    daddu      $t0,$t0,$a0
    dsll       $a0,$t0,0x3
.L000014e0:
    li         $t1,10
.L000014e4:
    bgtz       $t1, .L000014e4
    addiu      $t1,$t1,-1
    bgtz       $a0, .L000014e0
    dsubu      $a0,$a0,$a1
    jr         $ra
    nop

glabel heart_intr_low
    j          heart_intr
    li         $a1,0xffff

glabel heart_intr_med
    li         $a1,0xffff
    j          heart_intr
    dsll       $a1,$a1,0x10

glabel heart_intr_hi
    li         $a1,-1
    dsll32     $a1,$a1,0xe
    j          heart_intr
    dsrl       $a1,$a1,0xe

glabel heart_intr_err
    li         $a1,8191
    j          heart_intr
    dsll32     $a1,$a1,0x13

glabel _pagecopy
    move       $t8,$a1
    beqz       $a2, .L0000160c
    sltu       $t1,$a0,$a1
    bnez       $t1, .L00001614
    li         $t0,256
    addi       $a2,$a2,-256
.L00001544:
    ld         $a4,0($a0)
    ld         $a5,32($a0)
    addi       $a2,$a2,-128
    ld         $a6,80($a0)
    ld         $a7,112($a0)
    sd         $a4,0($a1)
    sd         $a5,32($a1)
    sd         $a6,80($a1)
    sd         $a7,112($a1)
    ld         $a4,8($a0)
    ld         $a5,40($a0)
    ld         $a6,16($a0)
    ld         $a7,24($a0)
    sd         $a4,8($a1)
    sd         $a5,40($a1)
    sd         $a6,16($a1)
    sd         $a7,24($a1)
    ld         $a4,64($a0)
    ld         $a5,72($a0)
    ld         $a6,88($a0)
    ld         $a7,120($a0)
    sd         $a4,64($a1)
    sd         $a5,72($a1)
    sd         $a6,88($a1)
    sd         $a7,120($a1)
    ld         $a4,96($a0)
    ld         $a5,104($a0)
    ld         $a6,48($a0)
    ld         $a7,56($a0)
    sd         $a4,96($a1)
    sd         $a5,104($a1)
    sd         $a6,48($a1)
    sd         $a7,56($a1)
    daddiu     $a0,$a0,128
    bgtz       $a2, .L00001544
    daddiu     $a1,$a1,128
.L000015d4:
    addi       $t0,$t0,-32
    ld         $a4,0($a0)
    ld         $a5,8($a0)
    ld         $a6,16($a0)
    ld         $a7,24($a0)
    sd         $a4,0($a1)
    sd         $a5,8($a1)
    sd         $a6,16($a1)
    sd         $a7,24($a1)
    daddiu     $a0,$a0,32
    daddiu     $a1,$a1,32
    cache      0x14,-32($a0)
    bgtz       $t0, .L000015d4
    nop
.L0000160c:
    jr         $ra
    move       $v0,$t8
.L00001614:
    daddu      $a0,$a0,$a2
    daddu      $a1,$a1,$a2
    li         $t0,256
    addi       $a2,$a2,-256
.L00001624:
    ld         $a4,-8($a0)
    ld         $a5,-40($a0)
    addi       $a2,$a2,-128
    ld         $a6,-88($a0)
    ld         $a7,-120($a0)
    sd         $a4,-8($a1)
    sd         $a5,-40($a1)
    sd         $a6,-88($a1)
    sd         $a7,-120($a1)
    ld         $a4,-16($a0)
    ld         $a5,-48($a0)
    ld         $a6,-24($a0)
    ld         $a7,-32($a0)
    sd         $a4,-16($a1)
    sd         $a5,-48($a1)
    sd         $a6,-24($a1)
    sd         $a7,-32($a1)
    ld         $a4,-72($a0)
    ld         $a5,-80($a0)
    ld         $a6,-96($a0)
    ld         $a7,-128($a0)
    sd         $a4,-72($a1)
    sd         $a5,-80($a1)
    sd         $a6,-96($a1)
    sd         $a7,-128($a1)
    ld         $a4,-104($a0)
    ld         $a5,-112($a0)
    ld         $a6,-56($a0)
    ld         $a7,-64($a0)
    sd         $a4,-104($a1)
    sd         $a5,-112($a1)
    sd         $a6,-56($a1)
    sd         $a7,-64($a1)
    daddiu     $a0,$a0,-128
    bgtz       $a2, .L00001624
    daddiu     $a1,$a1,-128
.L000016b4:
    ld         $a4,-8($a0)
    ld         $a5,-16($a0)
    ld         $a6,-24($a0)
    ld         $a7,-32($a0)
    addi       $t0,$t0,-32
    sd         $a4,-8($a1)
    sd         $a5,-16($a1)
    sd         $a6,-24($a1)
    sd         $a7,-32($a1)
    daddiu     $a0,$a0,-32
    daddiu     $a1,$a1,-32
    cache      0x14,24($a0)
    bgtz       $t0, .L000016b4
    nop
    jr         $ra
    move       $v0,$t8

glabel _pagezero
    beqz       $a1, .L0000179c
    li         $t0,384
    addi       $a1,$a1,-384
.L00001700:
    sd         $zero,0($a0)
    sd         $zero,32($a0)
    addi       $a1,$a1,-128
    sd         $zero,80($a0)
    sd         $zero,112($a0)
    sd         $zero,8($a0)
    sd         $zero,40($a0)
    sd         $zero,16($a0)
    sd         $zero,24($a0)
    sd         $zero,64($a0)
    sd         $zero,72($a0)
    sd         $zero,88($a0)
    sd         $zero,120($a0)
    sd         $zero,96($a0)
    sd         $zero,104($a0)
    sd         $zero,48($a0)
    sd         $zero,56($a0)
    bgtz       $a1, .L00001700
    daddiu     $a0,$a0,128
.L0000174c:
    sd         $zero,0($a0)
    sd         $zero,32($a0)
    addi       $t0,$t0,-128
    sd         $zero,80($a0)
    sd         $zero,112($a0)
    sd         $zero,8($a0)
    sd         $zero,40($a0)
    sd         $zero,16($a0)
    sd         $zero,24($a0)
    sd         $zero,64($a0)
    sd         $zero,72($a0)
    sd         $zero,88($a0)
    sd         $zero,120($a0)
    sd         $zero,96($a0)
    sd         $zero,104($a0)
    sd         $zero,48($a0)
    sd         $zero,56($a0)
    cache      0x14,0($a0)
    bgtz       $t0, .L0000174c
    daddiu     $a0,$a0,128
.L0000179c:
    jr         $ra
    nop

glabel resetcounter
    mfc0       $t1,$12
    li         $a1,128
    li         $v0,1000
    mtc0       $a1,$12
    mfc0       $t2,$11
    mfc0       $t0,$9
    mtc0       $zero,$9
    sltu       $a5,$t0,$t2
    bnez       $a5, .L00001848
    subu       $a4,$t0,$t2
    sltu       $a5,$a0,$a4
    bnez       $a5, .L0000183c
    subu       $a0,$a0,$a4
.L00001834:
    sltu       $a5,$a0,$v0
    movz       $v0,$a0,$a5
.L0000183c:
    mtc0       $v0,$11
.L00001840:
    jr         $ra
    mtc0       $t1,$12
.L00001848:
    mtc0       $t0,$9
    subu       $a4,$t2,$t0
    sltu       $a5,$a4,$v0
    bnez       $a5, .L00001840
    addu       $a5,$a0,$v0
    sltu       $a5,$a4,$a5
    beqz       $a5, .L00001834
    nop
    b          .L00001840
    nop

glabel trimcompare
    mfc0       $t1,$12
    li         $t0,128
    mtc0       $t0,$12
    mfc0       $t0,$9
    mfc0       $t2,$11
    li         $t3,1000
    sltu       $a5,$t0,$t2
    beqz       $a5, .L000018d8
    subu       $a4,$t2,$t0
    sltu       $a5,$a4,$t3
    bnez       $a5, .L000018d8
    sltu       $a5,$a0,$a4
    beqz       $a5, .L000018d0
    subu       $a1,$t2,$a0
    sltu       $a5,$t0,$a1
    beqz       $a5, .L000018d0
    subu       $a4,$a1,$t0
    sltu       $a5,$a4,$t3
    beqz       $a5, .L000018d4
    nop
.L000018d0:
    daddu      $a1,$t0,$t3
.L000018d4:
    mtc0       $a1,$11
.L000018d8:
    jr         $ra
    mtc0       $t1,$12

glabel initcounter
    mfc0       $t1,$12
    li         $t0,128
    mtc0       $t0,$12
    mtc0       $zero,$9
    mtc0       $a0,$11
    jr         $ra
    mtc0       $t1,$12

glabel resetlatency
    li         $a0,1
    mfc0       $t1,$12
    li         $t0,128
    mtc0       $t0,$12
    mtc0       $a0,$9
    mtc0       $zero,$11
    jr         $ra
    mtc0       $t1,$12
    nop

glabel start
    lui        $gp,0x0
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    mfc0       $k0,$12
    li         $k1,160
    or         $k0,$k0,$k1
    mtc0       $k0,$12
    lui        $k1,0x0
    daddiu     $k1,$k1,0
    dsll       $k1,$k1,0x10
    daddiu     $k1,$k1,0
    dsll       $k1,$k1,0x10
    daddiu     $k1,$k1,6536
    nop
    jr         $k1
    lui        $sp,0x0
    daddiu     $at,$gp,0
    daddiu     $sp,$sp,0
    lui        $a3,0x0
    dsll       $sp,$sp,0x10
    daddiu     $a3,$a3,0
    daddiu     $sp,$sp,0
    dsll       $a3,$a3,0x10
    dsll       $sp,$sp,0x10
    daddiu     $a3,$a3,0
    daddiu     $sp,$sp,0
    dsll       $a3,$a3,0x10
    ld         $sp,0($sp)
    sw         $a0,0($at)
    daddiu     $at,$gp,0
    daddiu     $a0,$gp,0
    sd         $a1,0($at)
    daddiu     $at,$gp,0
    daddiu     $a1,$gp,0
    sd         $a2,0($at)
    daddiu     $a2,$gp,0
    daddiu     $a3,$a3,6640
    lw         $a0,0($a0)
    ld         $a1,0($a1)
    jal        _check_dbg
    ld         $a2,0($a2)
    jal        start_slave_loop
    nop
    lui        $gp,0x0
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    daddiu     $a1,$gp,0
    daddiu     $a2,$gp,0
    ld         $a1,0($a1)
    daddiu     $v0,$gp,0
    ld         $a2,0($a2)
    lui        $sp,0x0
    lw         $v0,0($v0)
    daddiu     $sp,$sp,0
    dsll       $sp,$sp,0x10
    daddiu     $sp,$sp,0
    dsll       $sp,$sp,0x10
    daddiu     $sp,$sp,0
    beq        $zero, $v0, .L00001a64
    ld         $sp,0($sp)
    lui        $a0,0x0
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    jal        debug
    daddiu     $a0,$a0,0
.L00001a64:
    daddiu     $a0,$gp,0
    lw         $a0,0($a0)
    sd         $zero,8($sp)
    sd         $zero,0($sp)
    mtc0       $zero,$13
    dmtc0      $zero,$10
    li         $a3,160
    mtc0       $a3,$12
    mtc0       $zero,$18
    mtc0       $zero,$19
    li         $a3,24576
    mtc0       $a3,$5
    li         $a3,6
    mtc0       $a3,$6
    li         $v0,63
    dsll32     $v0,$v0,0x8
    dmtc0      $v0,$20
    li         $v0,0xc000
    dmtc0      $v0,$21
    lui        $gp,0x0
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    jal        mlsetup
    daddiu     $gp,$gp,0
    move       $sp,$v0
    li         $v0,1
    jal        main
    sb         $v0,-16305($zero)

glabel proc1
    li         $v0,0xffb3
    mtc0       $v0,$12
    lui        $k1,0x1000
    sb         $zero,-16305($zero)
    dmtc0      $k1,$14
    eret

glabel mlclosure
    lui        $t0,0x0
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    lw         $t0,0($t0)
    lui        $t0,0x0
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    lw         $t0,0($t0)
    lui        $t0,0x0
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    lw         $t0,0($t0)
    lui        $t0,0x0
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    lw         $t0,0($t0)
    lui        $t0,0x0
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    lw         $t0,0($t0)
    lui        $t0,0x0
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    lw         $t0,0($t0)

glabel silence_all_audio
    lui        $t0,0x0
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    lw         $t0,0($t0)
    beqz       $t0, .L00001bdc
    nop
    lui        $t0,0x9000
    dsll       $t0,$t0,0x10
    ori        $t0,$t0,0x1f60
    lui        $t1,0x10
    dsll       $t0,$t0,0x10
    ori        $t0,$t0,0x38
    sw         $t1,0($t0)
.L00001bdc:
    j          ip30_rad_halt
    nop
    jr         $ra
    nop
    nop

glabel icode
    lui        $a0,0x0
    move       $a2,$zero
    lui        $v0,0x0
    daddiu     $a0,$a0,0
    daddiu     $v0,$v0,0
    dsll       $a0,$a0,0x10
    dsll       $v0,$v0,0x10
    daddiu     $a0,$a0,0
    daddiu     $v0,$v0,0
    dsll       $a0,$a0,0x10
    dsll       $v0,$v0,0x10
    daddiu     $a0,$a0,0
    daddiu     $v0,$v0,0
    lui        $a1,0x0
    dsubu      $a0,$a0,$v0
    lui        $v0,0x0
    daddiu     $a1,$a1,0
    daddiu     $v0,$v0,0
    dsll       $a1,$a1,0x10
    dsll       $v0,$v0,0x10
    daddiu     $a1,$a1,0
    daddiu     $v0,$v0,0
    dsll       $a1,$a1,0x10
    dsll       $v0,$v0,0x10
    daddiu     $a1,$a1,0
    lui        $at,0x1000
    daddiu     $v0,$v0,0
    ori        $at,$at,0x200
    dsubu      $a1,$a1,$v0
    daddu      $a0,$a0,$at
    daddu      $a1,$a1,$at
    li         $v0,1059
    sw         $a0,0($a1)
    syscall
    move       $a0,$v0
    li         $v0,1001
    syscall
.L00001c84:
    b          .L00001c84
    nop

glabel eicode
    nop

glabel in_cksum_sub
    move       $v0,$a2
    bnez       $a1, .L00001ca4
    andi       $v1,$a0,0x7
    jr         $ra
    andi       $v1,$a0,0x7
.L00001ca4:
    beqz       $v1, .L00001d98
    andi       $v1,$a0,0x3
    beqz       $v1, .L00001d18
    andi       $v1,$a0,0x1
    beqz       $v1, .L00001cd4
    nop
    lbu        $t0,0($a0)
    daddiu     $a0,$a0,1
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    addiu      $a1,$a1,-1
.L00001cd4:
    slti       $at,$a1,2
    bnez       $at, .L00002060
    andi       $v1,$a1,0x1
    lhu        $t0,0($a0)
    daddiu     $a0,$a0,2
    daddu      $v0,$v0,$t0
    addiu      $a1,$a1,-2
    slti       $at,$a1,2
    bnez       $at, .L00002060
    andi       $v1,$a1,0x1
    andi       $v1,$a0,0x2
    beqz       $v1, .L00001d18
    nop
    lhu        $t0,0($a0)
    daddiu     $a0,$a0,2
    daddu      $v0,$v0,$t0
    addiu      $a1,$a1,-2
.L00001d18:
    slti       $at,$a1,4
    bnez       $at, .L00002038
    andi       $v1,$a1,0x2
    lwu        $t0,0($a0)
    daddiu     $a0,$a0,4
    daddu      $v0,$v0,$t0
    addiu      $a1,$a1,-4
    slti       $at,$a1,4
    bnez       $at, .L00002038
    andi       $v1,$a1,0x2
    andi       $v1,$a0,0x4
    beqz       $v1, .L00001d5c
    nop
    lwu        $t0,0($a0)
    daddiu     $a0,$a0,4
    daddu      $v0,$v0,$t0
    addiu      $a1,$a1,-4
.L00001d5c:
    dsrl32     $v1,$v0,0x0
    lui        $t3,0xffff
    dsrl32     $t3,$t3,0x0
    and        $v0,$v0,$t3
    daddu      $v0,$v0,$v1
    dsrl32     $t0,$v0,0x0
    addu       $v0,$v0,$t0
    dsrl       $v1,$v0,0x10
    andi       $v1,$v1,0xffff
    andi       $v0,$v0,0xffff
    daddu      $v0,$v0,$v1
    dsrl       $t0,$v0,0x10
    andi       $t0,$t0,0xffff
    daddu      $v0,$v0,$t0
    andi       $v0,$v0,0xffff
.L00001d98:
    slti       $at,$a1,128
    bnez       $at, .L00001ec0
    andi       $v1,$a1,0x40

glabel in_cksum_pref
.L00001da4:
    pref       0x0,384($a0)
    ld         $t0,0($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,8($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,16($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,24($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    ld         $t0,32($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,40($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,48($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,56($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    ld         $t0,64($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,72($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,80($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,88($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    ld         $t0,96($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,104($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,112($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,120($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    addiu      $a1,$a1,-128
    slti       $at,$a1,128
    beqz       $at, .L00001da4
    daddiu     $a0,$a0,128
    beqz       $a1, .L00002080
    andi       $v1,$a1,0x40
.L00001ec0:
    beqz       $v1, .L00001f58
    andi       $v1,$a1,0x20
    ld         $t0,0($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,8($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,16($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,24($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    ld         $t0,32($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,40($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,48($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,56($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    addiu      $a1,$a1,-64
    daddiu     $a0,$a0,64
    beqz       $a1, .L00002080
    andi       $v1,$a1,0x20
.L00001f58:
    beqz       $v1, .L00001fb0
    andi       $v1,$a1,0x10
    ld         $t0,0($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,8($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,16($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,24($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    daddiu     $a0,$a0,32
    addiu      $a1,$a1,-32
    beqz       $a1, .L00002080
    andi       $v1,$a1,0x10
.L00001fb0:
    beqz       $v1, .L00001fe8
    andi       $v1,$a1,0x8
    ld         $t0,0($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,8($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    daddiu     $a0,$a0,16
    addiu      $a1,$a1,-16
    beqz       $a1, .L00002080
    andi       $v1,$a1,0x8
.L00001fe8:
    beqz       $v1, .L00002010
    andi       $v1,$a1,0x4
    ld         $t0,0($a0)
    daddiu     $a0,$a0,8
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    addiu      $a1,$a1,-8
    beqz       $a1, .L00002080
    andi       $v1,$a1,0x4
.L00002010:
    beqz       $v1, .L00002038
    andi       $v1,$a1,0x2
    lwu        $t0,0($a0)
    daddiu     $a0,$a0,4
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    addiu      $a1,$a1,-4
    beqz       $a1, .L00002080
    andi       $v1,$a1,0x2
.L00002038:
    beqz       $v1, .L00002060
    andi       $v1,$a1,0x1
    lhu        $t0,0($a0)
    daddiu     $a0,$a0,2
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    addiu      $a1,$a1,-2
    beqz       $a1, .L00002080
    andi       $v1,$a1,0x1
.L00002060:
    beqz       $v1, .L00002080
    nop
    lbu        $t0,0($a0)
    daddiu     $a0,$a0,1
    dsll       $t0,$t0,0x8
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
.L00002080:
    dsrl32     $v1,$v0,0x0
    lui        $t3,0xffff
    dsrl32     $t3,$t3,0x0
    and        $v0,$v0,$t3
    daddu      $v0,$v0,$v1
    dsrl32     $t0,$v0,0x0
    addu       $v0,$v0,$t0
    dsrl       $v1,$v0,0x10
    andi       $v1,$v1,0xffff
    andi       $v0,$v0,0xffff
    daddu      $v0,$v0,$v1
    dsrl       $t0,$v0,0x10
    andi       $t0,$t0,0xffff
    daddu      $v0,$v0,$t0
    jr         $ra
    andi       $v0,$v0,0xffff

glabel etoh
    lbu        $v0,0($a0)
    move       $a3,$a0
    daddiu     $t9,$gp,-32700
    beqz       $v0, .L000021a8
    li         $t8,58
    move       $a2,$zero
.L000020d8:
    beq        $t8, $v0, .L000021bc
    slti       $a4,$v0,58
    slti       $at,$v0,97
    bnez       $at, .L000020f8
    slti       $a0,$v0,48
    slti       $v1,$v0,103
    bnez       $v1, .L00002108
    slti       $a0,$v0,48
.L000020f8:
    bnez       $a0, .L000021b0
    nop
    beqz       $a4, .L000021b0
    nop
.L00002108:
    lbu        $a4,1($a3)
    slti       $t3,$v0,58
    slti       $a6,$v0,48
    slti       $t1,$a4,103
    slti       $t0,$a4,58
    slti       $a1,$a4,97
    slti       $t2,$a4,58
    slti       $a7,$a4,48
    bnez       $a1, .L00002138
    move       $a5,$a7
    bnez       $t1, .L00002144
    nop
.L00002138:
    bnez       $a7, .L000021b0
    nop
    beqz       $t0, .L000021b0
.L00002144:
    slti       $a7,$a2,6
    beqz       $a7, .L000021c4
    addiu      $a2,$a2,1
    bnez       $a5, .L00002164
    addiu      $a5,$a4,-87
    bnez       $t2, .L00002164
    addiu      $a5,$a4,-48
    addiu      $a5,$a4,-87
.L00002164:
    bnez       $a6, .L00002180
    addiu      $a4,$v0,-87
    beqz       $t3, .L0000217c
    addiu      $a4,$v0,-48
    b          .L00002184
    daddiu     $a3,$a3,2
.L0000217c:
    addiu      $a4,$v0,-87
.L00002180:
    daddiu     $a3,$a3,2
.L00002184:
    daddu      $t1,$a2,$t9
    sll        $t0,$a4,0x4
    addu       $t0,$a5,$t0
    sb         $t0,-1($t1)
.L00002194:
    lbu        $v0,0($a3)
    bnez       $v0, .L000020d8
    li         $t1,6
    beq        $a2, $t1, .L000021b4
    daddiu     $v0,$gp,-32700
.L000021a8:
    jr         $ra
    move       $v0,$zero
.L000021b0:
    move       $v0,$zero
.L000021b4:
    jr         $ra
    nop
.L000021bc:
    b          .L00002194
    daddiu     $a3,$a3,1
.L000021c4:
    jr         $ra
    move       $v0,$zero
    ld         $a0,-32736($gp)
    daddiu     $sp,$sp,-64
    sd         $ra,48($sp)
    jal        arcs_getenv
    daddiu     $a0,$a0,32
    jal        etoh
    move       $a0,$v0
    move       $a0,$v0
    daddiu     $a1,$gp,0
    jal        bcopy
    li         $a2,6
    lbu        $t0,3($gp)
    lbu        $a5,1($gp)
    sll        $at,$t0,0x10
    andi       $t1,$t0,0xf
    sra        $t0,$t0,0x4
    lbu        $t2,4($gp)
    sra        $a4,$a5,0x4
    lbu        $v0,2($gp)
    ld         $a1,-32736($gp)
    sll        $ra,$t2,0x8
    andi       $a5,$a5,0xf
    lbu        $t8,5($gp)
    sra        $a6,$v0,0x4
    lbu        $a2,0($gp)
    andi       $a7,$v0,0xf
    sll        $v0,$v0,0x18
    ld         $a0,-32728($gp)
    or         $at,$at,$v0
    or         $ra,$t8,$ra
    andi       $a3,$a2,0xf
    or         $ra,$ra,$at
    sw         $ra,-32732($gp)
    andi       $t9,$t8,0xf
    sra        $t8,$t8,0x4
    sd         $t9,40($sp)
    sra        $a2,$a2,0x4
    andi       $t8,$t8,0xf
    sd         $t8,32($sp)
    andi       $t3,$t2,0xf
    sra        $t2,$t2,0x4
    sd         $t3,24($sp)
    andi       $a6,$a6,0xf
    andi       $t2,$t2,0xf
    sd         $t2,16($sp)
    andi       $a4,$a4,0xf
    andi       $a2,$a2,0xf
    sd         $t1,8($sp)
    andi       $t0,$t0,0xf
    jal        sprintf
    sd         $t0,0($sp)
    ld         $ra,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel getsysid
    lw         $at,-32732($gp)
    daddiu     $sp,$sp,-16
    daddiu     $a0,$a0,4
    sd         $ra,0($sp)
    li         $a1,60
    jal        bzero
    sw         $at,-4($a0)
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,16

glabel mlreset
    daddiu     $sp,$sp,-32
    move       $a1,$zero
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $ra,8($sp)
    jal        r1nkperf_control_register_set
    move       $a0,$zero
    li         $a0,1
    jal        r1nkperf_control_register_set
    move       $a1,$zero
    move       $a0,$zero
    jal        r1nkperf_data_register_set
    move       $a1,$zero
    li         $a0,1
    jal        r1nkperf_data_register_set
    move       $a1,$zero
    jal        get_cpu_irr
    nop
    sra        $at,$v0,0x8
    li         $v0,14
    beq        $at, $v0, .L00002534
    sd         $s1,16($sp)
    jal        get_cpu_irr
    nop
    sra        $v1,$v0,0x8
    li         $a0,15
    beq        $v1, $a0, .L00002538
    li         $a0,2
.L00002340:
    beqz       $s0, .L0000237c
    lh         $a1,0($gp)
    jal        getcpuid
    nop
    jal        heart_mp_intr_init
    move       $a0,$v0
    jal        flush_tlb
    li         $a0,1
    jal        flush_cache
    nop
.L00002368:
    ld         $ra,8($sp)
    ld         $s1,16($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000237c:
    li         $s0,-1
    xor        $a2,$a1,$s0
    sltiu      $a2,$a2,1
    movn       $a1,$zero,$a2
    jal        getcpuid
    sh         $a1,0($gp)
    daddiu     $t1,$gp,0
    sh         $v0,0($gp)
    lui        $a7,0xaff0
    li         $s1,1
    move       $a4,$zero
    ld         $t0,0($a7)
    li         $a0,4
    li         $a3,60
    ld         $a7,128($a7)
    dsllv      $t2,$s1,$a3
    addiu      $a3,$a3,1
    and        $t2,$t0,$t2
.L000023c4:
    dsllv      $a2,$s1,$a0
    dsll       $a5,$a4,0x2
    addiu      $a4,$a4,1
    daddu      $a5,$t1,$a5
    slti       $a6,$a4,2
    beqz       $t2, .L0000256c
    and        $a2,$a7,$a2
    move       $a2,$zero
.L000023e4:
    addiu      $a0,$a0,1
    dsllv      $t2,$s1,$a3
    addiu      $a3,$a3,1
    sw         $a2,0($a5)
    bnez       $a6, .L000023c4
    and        $t2,$t0,$t2
    jal        .text
    nop
    jal        .text
    nop
    jal        .text
    nop
    jal        load_nvram_tab
    nop
    lw         $t0,0($gp)
    xor        $t1,$t0,$s0
    sltiu      $t1,$t1,1
    lw         $t2,0($gp)
    movn       $t0,$zero,$t1
    lw         $t3,0($gp)
    li         $t8,-4097
    li         $t9,-16385
    and        $t3,$t3,$t9
    and        $t2,$t2,$t9
    lw         $t9,0($gp)
    ld         $a0,-32720($gp)
    and        $t3,$t3,$t8
    and        $t2,$t2,$t8
    sw         $s1,0($gp)
    addiu      $a7,$t9,32767
    slt        $t8,$t9,$zero
    sw         $zero,0($gp)
    movz       $a7,$t9,$t8
    sw         $t3,0($gp)
    sra        $a7,$a7,0xf
    sw         $t2,0($gp)
    addiu      $a6,$a7,-1
    slti       $a7,$a7,1
    sw         $t0,0($gp)
    movn       $a6,$zero,$a7
    jal        is_specified
    sw         $a6,0($gp)
    beqz       $v0, .L0000259c
    move       $s1,$zero
    jal        atoi
    ld         $a0,-32720($gp)
    beqz       $v0, .L00002608
    sw         $v0,0($gp)
    ld         $t8,-32712($gp)
.L000024a8:
    ld         $ra,-32696($gp)
    ld         $t9,-32704($gp)
    sw         $zero,0($ra)
    sw         $zero,0($t9)
    li         $s1,1
    sw         $zero,0($t8)
.L000024c0:
    jal        flush_cache
    nop
    ld         $a1,-32736($gp)
    daddiu     $a0,$gp,0
    jal        spinlock_init
    daddiu     $a1,$a1,40
    ld         $a1,-32736($gp)
    daddiu     $a0,$gp,0
    jal        spinlock_init
    daddiu     $a1,$a1,56
    li         $s0,1
    dsll32     $a0,$s0,0x10
.L000024f0:
    jal        cpu_enabled
    dsra32     $a0,$a0,0x10
    beqz       $v0, .L00002520
    addiu      $a1,$s0,1
    sw         $a1,0($gp)
    ld         $a2,-32736($gp)
.L00002508:
    lw         $a2,0($a2)
    sltiu      $a2,$a2,1
    bnez       $a2, .L0000257c
    sw         $a2,0($gp)
.L00002518:
    b          .L00002368
    sw         $s1,0($gp)
.L00002520:
    addiu      $s0,$s0,-1
    bgez       $s0, .L000024f0
    dsll32     $a0,$s0,0x10
    b          .L00002508
    ld         $a2,-32736($gp)
.L00002534:
    li         $a0,2
.L00002538:
    jal        r1nkperf_control_register_set
    move       $a1,$zero
    li         $a0,3
    jal        r1nkperf_control_register_set
    move       $a1,$zero
    li         $a0,2
    jal        r1nkperf_data_register_set
    move       $a1,$zero
    li         $a0,3
    jal        r1nkperf_data_register_set
    move       $a1,$zero
    b          .L00002340
    nop
.L0000256c:
    beqz       $a2, .L000023e4
    move       $a2,$zero
    b          .L000023e4
    li         $a2,1
.L0000257c:
    ld         $a6,-32728($gp)
    ld         $a4,-32720($gp)
    lui        $a5,0x10
    lui        $a3,0x7
    sw         $a5,0($a6)
    ori        $a3,$a3,0x1a
    b          .L00002518
    sw         $a3,0($a4)
.L0000259c:
    b          .L000025b0
    move       $s0,$zero
.L000025a4:
    sw         $a7,0($gp)
.L000025a8:
    beqz       $a0, .L000025fc
    addiu      $s1,$s1,128
.L000025b0:
    dsll32     $a0,$s0,0x10
    jal        cpu_enabled
    dsra32     $a0,$a0,0x10
    li         $a7,1
    addiu      $s0,$s0,1
    beqz       $v0, .L000025a8
    slti       $a0,$s0,2
    li         $a2,-11
    dsll32     $a2,$a2,0x1b
    daddu      $a2,$s1,$a2
    lw         $a1,1540($a2)
    slti       $a1,$a1,2343
    bnez       $a1, .L000025a4
    li         $a4,2352
    lw         $a3,1540($a2)
    bne        $a3, $a4, .L000025a8
    nop
    b          .L000025a8
    sw         $a7,0($gp)
.L000025fc:
    lw         $a5,0($gp)
    bnez       $a5, .L000024a8
    ld         $t8,-32712($gp)
.L00002608:
    ld         $a0,-32688($gp)
    ld         $a1,-32680($gp)
    jal        bzero
    dsubu      $a1,$a1,$a0
    ld         $a0,-32672($gp)
    ld         $a1,-32664($gp)
    jal        bzero
    dsubu      $a1,$a1,$a0
    b          .L000024c0
    li         $s1,1

glabel fp_find
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        get_fpc_irr
    nop
    ld         $ra,0($sp)
    sw         $v0,-15360($zero)
    jr         $ra
    daddiu     $sp,$sp,16

glabel fp_init
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        set_fpc_csr
    move       $a0,$zero
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel pg_setcachable
    ld         $v0,0($a0)
    lw         $at,-32704($gp)
    li         $v1,-57
    and        $v0,$v0,$v1
    or         $at,$at,$v0
    jr         $ra
    sd         $at,0($a0)

glabel pte_cachebits
    jr         $ra
    lw         $v0,-32704($gp)

glabel set_leds
    daddiu     $sp,$sp,-16
    sd         $s8,0($sp)
    move       $s8,$a0
    sd         $ra,8($sp)
    jal        mutex_spinlock
    daddiu     $a0,$gp,0
    move       $a1,$v0
    ld         $a3,-32712($gp)
    li         $a5,1
    beqz       $s8, .L000026e4
    ld         $a4,-32704($gp)
    sw         $zero,0($a4)
    sw         $a5,0($a3)
.L000026c4:
    ld         $s8,0($sp)
    jal        mutex_spinunlock
    daddiu     $a0,$gp,0
    jal        flushbus
    nop
    ld         $ra,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L000026e4:
    sw         $zero,0($a3)
    b          .L000026c4
    sw         $a5,0($a4)

glabel reset_leds
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        set_leds
    move       $a0,$zero
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel sys_setled
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        set_leds
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
    lw         $a0,0($gp)
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    sd         $s1,8($sp)
    lw         $s1,-32728($gp)
    ld         $s0,-32656($gp)
    dsll       $s1,$s1,0x4
    daddiu     $a0,$a0,16383
    daddu      $s0,$s0,$s1
    dsrl       $a0,$a0,0xe
    ld         $s0,8($s0)
    li         $a1,256
    sd         $ra,16($sp)
    sll        $a0,$a0,0x0
    move       $a2,$zero
    jal        kvpalloc
    lh         $s1,930($s0)
    sd         $v0,952($s0)
    lw         $t8,0($gp)
    li         $a0,1
    daddiu     $t8,$t8,-360
    li         $a1,1336
    dsrl       $t8,$t8,0x3
    move       $a2,$s1
    dsll       $t8,$t8,0x3
    daddu      $t8,$v0,$t8
    jal        kern_calloc_node
    sd         $t8,48($s0)
    beqz       $v0, .L00002804
    sd         $v0,1160($s0)
    li         $a0,1
.L000027a4:
    li         $a1,5064
    jal        kern_calloc_node
    move       $a2,$s1
    beqz       $v0, .L00002824
    sd         $v0,1320($s0)
.L000027b8:
    jal        str_init_alloc_lfvec
    lh         $a0,928($s0)
    beqz       $v0, .L00002844
    sd         $v0,1304($s0)
.L000027c8:
    jal        str_init_alloc_strstat
    lh         $a0,928($s0)
    beqz       $v0, .L00002864
    sd         $v0,1312($s0)
    ld         $a0,1304($s0)
.L000027dc:
    lh         $a1,928($s0)
    jal        str_init_slave
    move       $a2,$s1
    ld         $ra,16($sp)
    li         $t9,-1
    sw         $t9,-32728($gp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00002804:
    ld         $a1,-32736($gp)
    move       $a2,$s0
    move       $a0,$zero
    lh         $a3,928($s0)
    jal        cmn_err
    daddiu     $a1,$a1,64
    b          .L000027a4
    li         $a0,1
.L00002824:
    ld         $a1,-32736($gp)
    move       $a0,$zero
    move       $a2,$s0
    lh         $a3,928($s0)
    jal        cmn_err
    daddiu     $a1,$a1,120
    b          .L000027b8
    nop
.L00002844:
    ld         $a1,-32736($gp)
    move       $a0,$zero
    move       $a2,$s0
    lh         $a3,928($s0)
    jal        cmn_err
    daddiu     $a1,$a1,176
    b          .L000027c8
    nop
.L00002864:
    ld         $a1,-32736($gp)
    move       $a0,$zero
    move       $a2,$s0
    lh         $a3,928($s0)
    jal        cmn_err
    daddiu     $a1,$a1,232
    b          .L000027dc
    ld         $a0,1304($s0)
    dsll       $a1,$a0,0x2
    lui        $v1,0xaff0
    addiu      $a0,$a0,60
    li         $a2,1
    ld         $v0,0($v1)
    daddiu     $at,$gp,0
    dsllv      $a0,$a2,$a0
    daddu      $at,$at,$a1
    or         $v0,$v0,$a0
    sd         $v0,0($v1)
    jr         $ra
    sw         $zero,0($at)
    lui        $v0,0xaff0
    addiu      $a0,$a0,4
    li         $v1,1
    ld         $v0,128($v0)
    dsllv      $v1,$v1,$a0
    and        $v0,$v0,$v1
    jr         $ra
    sll        $v0,$v0,0x0

glabel cpu_enabled
    dsll       $v1,$a0,0x2
    daddiu     $v0,$gp,0
    daddu      $v0,$v0,$v1
    jr         $ra
    lw         $v0,0($v0)

glabel allowboot
    daddiu     $sp,$sp,-80
    sd         $ra,0($sp)
    jal        init_timebase
    nop
    jal        ecc_init
    nop
    sd         $s8,72($sp)
    sd         $s1,64($sp)
    sd         $s0,56($sp)
    sd         $s7,48($sp)
    lw         $at,0($gp)
    sd         $s4,40($sp)
    sd         $s3,32($sp)
    bnez       $at, .L00002c5c
    sd         $s2,24($sp)
    ld         $a0,-32720($gp)
.L00002928:
    jal        is_specified
    ld         $s0,-32736($gp)
    bnez       $v0, .L00002c78
    daddiu     $a1,$s0,312
    ld         $s8,-32696($gp)
.L0000293c:
    move       $s1,$zero
    move       $s0,$zero
    ld         $s7,-32656($gp)
    move       $s2,$zero
    daddiu     $s3,$gp,0
    sd         $s5,16($sp)
    sd         $s6,8($sp)
    li         $s4,-11
    b          .L00002980
    dsll32     $s4,$s4,0x1b
.L00002964:
    ld         $t8,-32648($gp)
.L00002968:
    sd         $t8,1560($s3)
.L0000296c:
    addiu      $s0,$s0,1
.L00002970:
    slti       $t9,$s0,2
    daddiu     $s3,$gp,0
    beqz       $t9, .L000029f4
    addiu      $s1,$s1,128
.L00002980:
    dsll       $s6,$s0,0x4
    dsll32     $a0,$s0,0x10
    daddu      $s5,$s0,$s3
    dsra32     $a0,$a0,0x10
    jal        cpu_enabled
    daddu      $s6,$s7,$s6
    beqz       $v0, .L00002bbc
    daddu      $s3,$s1,$s4
    lw         $a1,1540($s3)
    slti       $a1,$a1,2342
    bnez       $a1, .L00002bd4
    ld         $a1,-32736($gp)
    lh         $a2,0($gp)
.L000029b4:
    lw         $a5,0($gp)
    beq        $a2, $s0, .L0000296c
    daddu      $a6,$s1,$s8
    lbu        $a3,0($s5)
    beqz       $a3, .L00002c24
    ld         $a1,-32736($gp)
    sd         $a6,1608($s3)
    sd         $zero,1568($s3)
    ld         $a4,8($s6)
    sd         $zero,1616($s3)
    ld         $a4,960($a4)
    addiu      $s2,$s2,1
    beqz       $a5, .L00002964
    sd         $a4,1600($s3)
    b          .L00002c44
    ld         $a1,-32736($gp)
.L000029f4:
    lui        $t8,0x7
    ori        $t8,$t8,0xa120
    mult       $s2,$t8
    move       $s1,$s2
    li         $s3,-1
    mflo       $s0
    beqz       $s2, .L00002a58
    addiu      $s0,$s0,-1
.L00002a14:
    lw         $t9,-32728($gp)
    beq        $t9, $s3, .L00002a2c
    nop
    jal        .text
    nop
    addiu      $s2,$s2,-1
.L00002a2c:
    jal        us_delay
    li         $a0,1
    addiu      $s0,$s0,-1
    beqz       $s0, .L00002a48
    nop
    bnez       $s2, .L00002a14
    nop
.L00002a48:
    beqz       $s1, .L00002a5c
    lw         $ra,0($gp)
    jal        us_delay
    li         $a0,5000
.L00002a58:
    lw         $ra,0($gp)
.L00002a5c:
    move       $s0,$zero
    move       $s2,$zero
    blez       $ra, .L00002aac
    li         $s3,-1
    dsll32     $a0,$s0,0x10
.L00002a70:
    jal        cpu_enabled
    dsra32     $a0,$a0,0x10
    beqz       $v0, .L00002a98
    lw         $t8,0($gp)
    dsll       $s1,$s0,0x4
    daddu      $s1,$s7,$s1
    lw         $a1,0($s1)
    bne        $a1, $s0, .L00002c00
    ld         $a1,-32736($gp)
.L00002a94:
    lw         $t8,0($gp)
.L00002a98:
    addiu      $s0,$s0,1
    slt        $t8,$s0,$t8
    bnez       $t8, .L00002a70
    dsll32     $a0,$s0,0x10
    bnez       $s2, .L00002c8c
.L00002aac:
    ld         $s7,48($sp)
.L00002ab0:
    lw         $at,0($gp)
    lw         $v0,-32704($gp)
    lw         $ra,0($gp)
    xori       $at,$at,0x1
    ld         $s3,32($sp)
    li         $t9,32
    sltiu      $at,$at,1
    ld         $s2,24($sp)
    movz       $t9,$v0,$at
    move       $s0,$zero
    blez       $ra, .L00002b30
    sw         $t9,-32704($gp)
    b          .L00002af4
    dsll       $t8,$s0,0x2
.L00002ae8:
    slt        $v0,$s0,$a0
    beqz       $v0, .L00002b30
    dsll       $t8,$s0,0x2
.L00002af4:
    dsubu      $t8,$t8,$s0
    dsll       $t8,$t8,0x2
    ld         $s1,-32640($gp)
    daddu      $t8,$t8,$s0
    dsll       $t8,$t8,0x3
    daddu      $s1,$s1,$t8
    jal        cpu_isvalid
    lw         $a0,8($s1)
    lw         $a0,0($gp)
    bnez       $v0, .L00002ae8
    addiu      $s0,$s0,1
    ld         $t9,0($gp)
    lh         $t9,928($t9)
    b          .L00002ae8
    sw         $t9,8($s1)
.L00002b30:
    lw         $ra,0($gp)
    blez       $ra, .L00002b8c
    move       $s0,$zero
    b          .L00002b50
    dsll       $t8,$s0,0x2
.L00002b44:
    slt        $at,$s0,$a0
    beqz       $at, .L00002b8c
    dsll       $t8,$s0,0x2
.L00002b50:
    daddu      $t8,$t8,$s0
    dsll       $t8,$t8,0x2
    ld         $s1,-32632($gp)
    dsubu      $t8,$t8,$s0
    dsll       $t8,$t8,0x3
    daddu      $s1,$s1,$t8
    jal        cpu_isvalid
    lw         $a0,8($s1)
    lw         $a0,0($gp)
    bnez       $v0, .L00002b44
    addiu      $s0,$s0,1
    ld         $t9,0($gp)
    lh         $t9,928($t9)
    b          .L00002b44
    sw         $t9,8($s1)
.L00002b8c:
    ld         $s8,72($sp)
    ld         $s1,64($sp)
    ld         $s0,56($sp)
    ld         $s4,40($sp)
    ld         $s5,16($sp)
    jal        .text
    ld         $s6,8($sp)
    jal        init_mfhi_war
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00002bbc:
    jal        .text
    move       $a0,$s0
    beqzl      $v0, .L00002970
    addiu      $s0,$s0,1
    b          .L00002ca4
    ld         $a1,-32736($gp)
.L00002bd4:
    lw         $a3,1540($s3)
    move       $a0,$zero
    lw         $a4,1540($s3)
    move       $a2,$s0
    daddiu     $a1,$a1,384
    andi       $a4,$a4,0xf
    sra        $a3,$a3,0x4
    jal        cmn_err
    andi       $a3,$a3,0xf
    b          .L000029b4
    lh         $a2,0($gp)
.L00002c00:
    li         $a0,5
    move       $a2,$s0
    jal        cmn_err
    daddiu     $a1,$a1,520
    sw         $s3,0($s1)
    jal        .text
    move       $a0,$s0
    b          .L00002a94
    addiu      $s2,$s2,1
.L00002c24:
    li         $a0,4
    move       $a2,$s0
    jal        cmn_err
    daddiu     $a1,$a1,456
    jal        .text
    move       $a0,$s0
    b          .L00002970
    addiu      $s0,$s0,1
.L00002c44:
    li         $a0,6
    move       $a2,$s0
    jal        cmn_err
    daddiu     $a1,$a1,496
    b          .L00002968
    ld         $t8,-32648($gp)
.L00002c5c:
    ld         $a1,-32736($gp)
    li         $a0,6
    lh         $a2,0($gp)
    jal        cmn_err
    daddiu     $a1,$a1,288
    b          .L00002928
    ld         $a0,-32720($gp)
.L00002c78:
    lw         $a2,0($gp)
    jal        cmn_err
    li         $a0,4
    b          .L0000293c
    ld         $s8,-32696($gp)
.L00002c8c:
    ld         $a1,-32736($gp)
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,552
    b          .L00002ab0
    ld         $s7,48($sp)
.L00002ca4:
    li         $a0,4
    move       $a2,$s0
    jal        cmn_err
    daddiu     $a1,$a1,352
    b          .L00002970
    addiu      $s0,$s0,1

glabel cboot
    daddiu     $sp,$sp,-48
    sd         $s0,24($sp)
    sd         $ra,16($sp)
    jal        getcpuid
    sd         $s1,32($sp)
    ld         $s1,-32656($gp)
    dsll       $t8,$v0,0x4
    daddu      $s1,$s1,$t8
    move       $s0,$v0
    jal        wirepda
    ld         $a0,8($s1)
    jal        mlreset
    li         $a0,1
    sh         $s0,-15456($zero)
    li         $ra,1
    sllv       $ra,$ra,$s0
    sd         $ra,8($sp)
    sw         $ra,-16240($zero)
    ld         $t9,0($gp)
    jal        get_except_norm
    sd         $t9,-16296($zero)
    sd         $zero,-15352($zero)
    sd         $v0,-16384($zero)
    lh         $a0,0($gp)
    ld         $at,-32656($gp)
    dsll       $a0,$a0,0x4
    daddu      $a0,$at,$a0
    ld         $a0,8($a0)
    lw         $a0,1776($a0)
    sw         $a0,-14608($zero)
    lh         $v1,0($gp)
    dsll       $v1,$v1,0x4
    daddu      $v1,$at,$v1
    ld         $v1,8($v1)
    lw         $v1,1780($v1)
    sw         $v1,-14604($zero)
    lh         $v0,0($gp)
    dsll       $v0,$v0,0x4
    daddu      $at,$at,$v0
    ld         $at,8($at)
    lw         $at,1208($at)
    jal        coproc_find
    sw         $at,-15176($zero)
    jal        mutex_spinlock
    daddiu     $a0,$gp,0
    sw         $s0,-32728($gp)
    lw         $a1,-32728($gp)
    li         $a3,-1
    beq        $a1, $a3, .L00002da8
    sd         $v0,0($sp)
.L00002d84:
    lw         $a2,-32728($gp)
    beq        $a2, $a3, .L00002da8
    nop
    lw         $a4,-32728($gp)
    beq        $a4, $a3, .L00002da8
    nop
    lw         $a5,-32728($gp)
    bne        $a5, $a3, .L00002d84
    nop
.L00002da8:
    lw         $t1,-16312($zero)
    ld         $a7,8($sp)
    ori        $t1,$t1,0x14
    sw         $t1,-16312($zero)
    sw         $s0,0($s1)
    lw         $t0,0($gp)
    lw         $a6,0($gp)
    or         $a7,$a7,$t0
    sw         $a7,0($gp)
    addiu      $a6,$a6,1
    jal        stopclocks
    sw         $a6,0($gp)
    ld         $a1,-32736($gp)
    ld         $a0,8($s1)
    daddiu     $a1,$a1,584
    ld         $s0,24($sp)
    jal        spinlock_init
    daddiu     $a0,$a0,1180
    jal        tlbinfo_init
    ld         $s1,32($sp)
    jal        clkstart
    nop
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,0($sp)
    lw         $a2,-16312($zero)
    li         $a3,-17
    and        $a2,$a2,$a3
    jal        ecc_init
    sw         $a2,-16312($zero)
    jal        joinrunq
    nop
    jal        init_mfhi_war
    nop
    jal        spl0
    nop
    jal        splhi
    nop
    jal        resumeidle
    move       $a0,$zero
    ld         $a1,-32736($gp)
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,592
    ld         $ra,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
    ld         $a1,-32688($gp)
    ld         $at,0($a1)
    bnez       $at, .L00002edc
    daddiu     $sp,$sp,-16
    ld         $t0,-32624($gp)
    li         $a7,-7
    li         $a5,-11
    dsll32     $a7,$a7,0x1c
    ld         $a3,-32680($gp)
    dsll32     $a6,$a5,0x1b
    sltu       $v0,$t0,$a7
    or         $a4,$a7,$t0
    or         $a2,$t0,$a6
    sd         $ra,0($sp)
    bnez       $v0, .L00002eb4
    sltu       $a3,$t0,$a3
    beqz       $a3, .L00002eb4
    nop
    b          .L00002eb8
    sd         $a4,0($a1)
.L00002eb4:
    sd         $a2,0($a1)
.L00002eb8:
    jal        getcpuid
    nop
    ld         $ra,0($sp)
    ld         $t2,-32672($gp)
    ld         $t1,-32664($gp)
    lui        $t0,0x5846
    sd         $v0,0($t2)
    ori        $t0,$t0,0x4552
    sw         $t0,0($t1)
.L00002edc:
    jr         $ra
    daddiu     $sp,$sp,16

glabel cont_nmi_dump
    lh         $a1,0($gp)
    ld         $a0,-32656($gp)
    daddiu     $sp,$sp,-16
    dsll       $a1,$a1,0x4
    sd         $ra,0($sp)
    daddu      $a0,$a0,$a1
    jal        wirepda
    ld         $a0,8($a0)
    lw         $a4,0($gp)
    li         $a3,1
    sw         $a3,0($gp)
    sw         $a4,0($gp)
    ld         $a2,-16352($zero)
    bnez       $a2, .L00002f24
    ld         $a1,0($gp)
    sd         $a1,-16352($zero)
.L00002f24:
    ld         $a1,-32736($gp)
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,600
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel get_except_norm
    jr         $ra
    ld         $v0,-32616($gp)

glabel ip30_board_rev
    jr         $ra
    lw         $v0,0($gp)
.L00002f50:
    lui        $a7,0xf
    lui        $a5,0xaff2
    sll        $v0,$a2,0x2
    sll        $at,$a1,0xa
    lui        $t0,0xc6
    ori        $a6,$t0,0x5d40
    or         $at,$at,$v0
    sw         $at,0($a0)
.L00002f70:
    lw         $a4,0($a0)
    andi       $v1,$a4,0x2
    bnez       $v1, .L00002fc0
    nop
    lw         $a4,0($a0)
    andi       $a1,$a4,0x2
    bnez       $a1, .L00002fc0
    nop
    lw         $a4,0($a0)
    andi       $a2,$a4,0x2
    bnez       $a2, .L00002fc0
    nop
    lw         $a4,0($a0)
    andi       $t1,$a4,0x2
    bnez       $t1, .L00002fc0
    nop
    lw         $a4,0($a0)
    andi       $t2,$a4,0x2
    beqz       $t2, .L00002f70
    nop
.L00002fc0:
    dmult      $a3,$a6
    ori        $t3,$a7,0x4240
    mflo       $a2
    ddiv       $zero,$a2,$t3
    ld         $a0,0($a5)
    ld         $t8,0($a5)
    mflo       $a1
    daddu      $a0,$a0,$a1
    sltu       $t8,$t8,$a0
    andi       $v0,$a4,0x1
    beqz       $t8, .L00003048
    teq        $t3,$zero,0x7
.L00002ff8:
    ld         $a3,0($a5)
    sltu       $a3,$a3,$a0
    beqz       $a3, .L00003048
    nop
    ld         $a6,0($a5)
    sltu       $a6,$a6,$a0
    beqz       $a6, .L00003048
    nop
    ld         $a7,0($a5)
    sltu       $a7,$a7,$a0
    beqz       $a7, .L00003048
    nop
    ld         $t0,0($a5)
    sltu       $t0,$t0,$a0
    beqz       $t0, .L00003048
    nop
    ld         $t1,0($a5)
    sltu       $t1,$t1,$a0
    bnez       $t1, .L00002ff8
    nop
.L00003048:
    jr         $ra
    nop
    ld         $a0,-32608($gp)
    ld         $a1,-32656($gp)
    daddiu     $sp,$sp,-272
    sd         $ra,256($sp)
    jal        nic_info_get
    daddiu     $a2,$sp,0
    beqz       $v0, .L0000308c
    lui        $a2,0x1
    li         $at,1
    beq        $v0, $at, .L0000308c
    ori        $v0,$a2,0x45
    sw         $v0,0($gp)
.L00003080:
    ld         $ra,256($sp)
    jr         $ra
    daddiu     $sp,$sp,272
.L0000308c:
    ld         $a1,-32736($gp)
    daddiu     $a0,$sp,0
    jal        strstr
    daddiu     $a1,$a1,656
    bnez       $v0, .L000030dc
    li         $a4,1
.L000030a4:
    ld         $a1,-32736($gp)
.L000030a8:
    daddiu     $a0,$sp,0
    sd         $a4,264($sp)
    jal        strstr
    daddiu     $a1,$a1,640
    ld         $a2,264($sp)
    beqz       $v0, .L000030cc
    sll        $a4,$a2,0x10
    b          .L000030d0
    lbu        $a3,9($v0)
.L000030cc:
    move       $a3,$zero
.L000030d0:
    or         $a5,$a3,$a4
    b          .L00003080
    sw         $a5,0($gp)
.L000030dc:
    li         $a1,45
    jal        strchr
    daddiu     $a0,$v0,5
    bnez       $v0, .L000030f8
    li         $a4,1
    b          .L000030a8
    ld         $a1,-32736($gp)
.L000030f8:
    li         $a1,45
    jal        strchr
    daddiu     $a0,$v0,1
    bnez       $v0, .L00003114
    nop
    b          .L000030a4
    li         $a4,1
.L00003114:
    jal        atoi
    daddiu     $a0,$v0,1
    b          .L000030a4
    move       $a4,$v0

glabel add_ioboard
    jr         $ra
    nop

glabel add_cpuboard
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        cpu_mhz_rating
    lh         $s0,-15456($zero)
    move       $a2,$v0
    li         $a0,1
    li         $a1,1
    li         $a3,-1
    jal        add_to_inventory
    li         $a4,16
    move       $a3,$zero
    move       $a2,$s0
    li         $a1,2
    lw         $a4,-15364($zero)
    jal        add_to_inventory
    li         $a0,1
    move       $a3,$zero
    move       $a2,$s0
    li         $a1,3
    lw         $a4,-15360($zero)
    jal        add_to_inventory
    li         $a0,1
    move       $a3,$zero
    move       $a2,$zero
    li         $a1,8
    lw         $a4,-14756($zero)
    jal        add_to_inventory
    li         $a0,3
    jal        heart_rev
    nop
    slti       $at,$v0,4
    bnez       $at, .L000031c0
    ld         $ra,8($sp)
.L000031b4:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L000031c0:
    jal        heart_rev
    nop
    ld         $a1,-32736($gp)
    move       $a0,$zero
    addiu      $a2,$v0,64
    jal        cmn_err
    daddiu     $a1,$a1,664
    b          .L000031b4
    ld         $ra,8($sp)

glabel cpuboard
    jr         $ra
    li         $v0,16

glabel dprintf
    daddiu     $sp,$sp,-224
    sd         $s7,112($sp)
    sd         $s1,128($sp)
    sd         $s5,136($sp)
    sd         $s4,104($sp)
    sd         $s3,96($sp)
    ld         $t1,-32648($gp)
    move       $s3,$a0
    sd         $s0,120($sp)
    move       $s0,$a1
    move       $s4,$a2
    ld         $t1,0($t1)
    move       $s5,$a3
    move       $s1,$a4
    sd         $s2,80($sp)
    move       $s2,$a5
    move       $s7,$a6
    sd         $s6,88($sp)
    move       $s6,$a7
    beqz       $t1, .L0000329c
    sd         $ra,144($sp)
    ld         $t2,24($t1)
    beqz       $t2, .L0000329c
    ld         $t1,224($sp)
    sd         $t1,0($sp)
    ld         $t0,232($sp)
    sd         $t0,8($sp)
    ld         $v1,240($sp)
    sd         $v1,16($sp)
    ld         $v0,248($sp)
    sd         $v0,24($sp)
    ld         $at,256($sp)
    sd         $at,32($sp)
    ld         $ra,264($sp)
    sd         $ra,40($sp)
    ld         $t9,272($sp)
    sd         $t9,48($sp)
    ld         $t8,280($sp)
    sd         $t8,56($sp)
    ld         $t3,288($sp)
    jalr       $t2
    sd         $t3,64($sp)
    b          .L00003318
    ld         $s2,80($sp)
.L0000329c:
    jal        cn_is_inited
    nop
    ld         $t2,224($sp)
    ld         $t3,232($sp)
    ld         $t8,248($sp)
    bnez       $v0, .L00003340
    ld         $t9,256($sp)
    ld         $t0,264($sp)
    ld         $t1,240($sp)
    ld         $v1,272($sp)
    ld         $v0,280($sp)
    ld         $at,288($sp)
    sd         $t2,0($sp)
    sd         $t3,8($sp)
    sd         $t8,24($sp)
    sd         $t9,32($sp)
    move       $a0,$s3
    sd         $t1,16($sp)
    move       $a1,$s0
    move       $a2,$s4
    sd         $t0,40($sp)
    move       $a3,$s5
    move       $a4,$s1
    sd         $v1,48($sp)
    move       $a5,$s2
    move       $a6,$s7
    sd         $v0,56($sp)
    move       $a7,$s6
    jal        arcs_printf
    sd         $at,64($sp)
    ld         $s2,80($sp)
.L00003318:
    ld         $s6,88($sp)
    ld         $s3,96($sp)
    ld         $s4,104($sp)
    ld         $s7,112($sp)
    ld         $ra,144($sp)
    ld         $s0,120($sp)
    ld         $s1,128($sp)
    ld         $s5,136($sp)
    jr         $ra
    daddiu     $sp,$sp,224
.L00003340:
    ld         $at,264($sp)
    ld         $ra,240($sp)
    ld         $v0,272($sp)
    ld         $v1,280($sp)
    ld         $a0,288($sp)
    sd         $t9,40($sp)
    sd         $t8,32($sp)
    sd         $t3,16($sp)
    sd         $t2,8($sp)
    sd         $s6,0($sp)
    move       $a7,$s7
    sd         $v1,64($sp)
    move       $a6,$s2
    move       $a5,$s1
    sd         $v0,56($sp)
    move       $a4,$s5
    move       $a3,$s4
    sd         $at,48($sp)
    move       $a2,$s0
    move       $a1,$s3
    sd         $a0,72($sp)
    sd         $ra,24($sp)
    jal        cmn_err
    li         $a0,6
    b          .L00003318
    ld         $s2,80($sp)

glabel cpu_isvalid
    li         $a1,-1
    bltz       $a0, .L000033d4
    ld         $a3,-32656($gp)
    dsll       $v0,$a0,0x4
    lw         $v1,0($gp)
    slt        $v1,$a0,$v1
    beqz       $v1, .L000033d4
    daddu      $v0,$a3,$v0
    lw         $a0,0($v0)
    bne        $a0, $a1, .L000033d8
    li         $v0,1
.L000033d4:
    move       $v0,$zero
.L000033d8:
    jr         $ra
    nop
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    jal        xtalk_set_early_piotrans_addr
    ld         $a0,-32600($gp)
    jal        heart_mlreset
    nop
    jal        xbow_mlreset
    ld         $a0,-32640($gp)
    ld         $a1,-32624($gp)
    ld         $a0,-32632($gp)
    jal        ioc3_mlreset
    sd         $s0,16($sp)
    ld         $a2,-32592($gp)
    ld         $a3,-32640($gp)
    sd         $s2,8($sp)
    sd         $s1,24($sp)
    ld         $v0,-32600($gp)
    li         $a4,-1
    li         $a1,58
    ld         $a6,-32616($gp)
    lui        $at,0x82
    lui        $a0,0xa9c
    ld         $a5,-32608($gp)
    lui        $v1,0x999c
    ori        $a0,$a0,0x8888
    sw         $a0,0($a6)
    lui        $s0,0xaff0
    ori        $v1,$v1,0x8888
    sw         $v1,0($a5)
    move       $a0,$s0
    jal        heart_intr_prealloc
    sw         $at,0($v0)
    ld         $s1,-32592($gp)
    li         $a4,-1
    li         $a1,57
    ld         $s2,-32584($gp)
    move       $a0,$s0
    move       $a3,$s1
    jal        heart_intr_prealloc
    move       $a2,$s2
    move       $a0,$s0
    li         $a1,17
    move       $a2,$s2
    move       $a3,$s1
    jal        heart_intr_prealloc
    li         $a4,2
    move       $a0,$s0
    li         $a1,17
    ld         $a2,-32576($gp)
    jal        heart_intr_preconn
    move       $a3,$zero
    move       $a0,$s0
    li         $a1,16
    move       $a2,$s2
    move       $a3,$s1
    jal        heart_intr_prealloc
    li         $a4,4
    move       $a0,$s0
    li         $a1,16
    ld         $a2,-32576($gp)
    jal        heart_intr_preconn
    move       $a3,$zero
    move       $a0,$s0
    li         $a1,57
    move       $a2,$s2
    move       $a3,$s1
    jal        heart_intr_prealloc
    li         $a4,7
    move       $a0,$s0
    li         $a1,41
    move       $a2,$s2
    move       $a3,$s1
    jal        heart_intr_prealloc
    li         $a4,6
    ld         $s2,8($sp)
    ld         $s1,24($sp)
    move       $a0,$s0
    li         $a1,41
    ld         $a2,-32568($gp)
    jal        heart_intr_preconn
    move       $a3,$zero
    ld         $ra,0($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00003534:
    lui        $t0,0xaff0
    ld         $t0,128($t0)
    lui        $t2,0x1000
    andi       $t0,$t0,0xf
    li         $t3,-7
    dsll       $a7,$t0,0x18
    dsll32     $t3,$t3,0x1c
    daddu      $a7,$t2,$a7
    or         $a7,$t3,$a7
    lw         $a7,4($a7)
    srl        $at,$a7,0xc
    ld         $t1,-32640($gp)
    li         $v0,15
    andi       $at,$at,0xffff
    ld         $t8,-32584($gp)
    daddiu     $sp,$sp,-16
    srl        $a7,$a7,0x1
    sd         $ra,0($sp)
    bne        $a0, $at, .L00003594
    andi       $a7,$a7,0x7ff
    bne        $a1, $a7, .L00003594
    nop
    beqz       $a2, .L00003658
    addiu      $a2,$a2,-1
.L00003594:
    lw         $a7,0($t8)
    srl        $t9,$a7,0xc
    andi       $t9,$t9,0xffff
    srl        $a7,$a7,0x1
    bne        $a0, $t9, .L000035c4
    andi       $a7,$a7,0x7ff
    b          .L00003640
    nop
.L000035b4:
    addiu      $v0,$v0,-1
    slti       $ra,$v0,8
    bnez       $ra, .L0000362c
    nop
.L000035c4:
    beq        $v0, $t0, .L000035b4
    andi       $a7,$v0,0x7
    dsll       $at,$a7,0x6
    daddu      $at,$t1,$at
    lw         $at,316($at)
    andi       $at,$at,0x20
    beqz       $at, .L000035b4
    dsll       $a7,$v0,0x18
    daddu      $a7,$t2,$a7
    or         $a7,$t3,$a7
    lw         $a7,4($a7)
    srl        $t8,$a7,0xc
    andi       $t8,$t8,0xffff
    srl        $a7,$a7,0x1
    bne        $a0, $t8, .L000035b4
    andi       $a7,$a7,0x7ff
    bne        $a1, $a7, .L000035b4
    nop
    bnez       $a2, .L000035b4
    addiu      $a2,$a2,-1
    move       $a0,$v0
    move       $a1,$a3
    jal        heart_addr_xio_to_kva
    move       $a2,$a4
    b          .L00003630
    move       $a0,$v0
.L0000362c:
    move       $a0,$zero
.L00003630:
    ld         $ra,0($sp)
    move       $v0,$a0
    jr         $ra
    daddiu     $sp,$sp,16
.L00003640:
    bne        $a1, $a7, .L000035c4
    nop
    beqz       $a2, .L00003670
    nop
    b          .L000035c4
    addiu      $a2,$a2,-1
.L00003658:
    move       $a0,$t0
    move       $a1,$a3
    jal        heart_addr_xio_to_kva
    move       $a2,$a4
    b          .L00003630
    move       $a0,$v0
.L00003670:
    move       $a0,$zero
    move       $a1,$a3
    jal        heart_addr_xio_to_kva
    move       $a2,$a4
    b          .L00003630
    move       $a0,$v0

glabel init_all_devices
    lw         $a0,0($gp)
    daddiu     $sp,$sp,-80
    sd         $s2,48($sp)
    ld         $a1,-32736($gp)
    li         $s2,-1
    sw         $s2,0($sp)
    daddiu     $a2,$sp,0
    sd         $ra,56($sp)
    jal        hwgraph_path_add
    daddiu     $a1,$a1,856
    lw         $a0,0($sp)
    jal        mark_nodevertex_as_node
    move       $a1,$zero
    ld         $a1,-32736($gp)
    daddiu     $a2,$sp,4
    lw         $a0,0($sp)
    sw         $s2,4($sp)
    jal        hwgraph_path_add
    daddiu     $a1,$a1,864
    lui        $a1,0xaff0
    lw         $a0,0($sp)
    jal        nic_bridge_vertex_info
    ori        $a1,$a1,0xbc
    lw         $a2,0($gp)
    sd         $s0,64($sp)
    move       $s0,$zero
    blez       $a2, .L00003760
    sd         $s1,72($sp)
    dsll32     $s1,$s0,0x10
.L000036fc:
    dsra32     $s1,$s1,0x10
    jal        cpu_enabled
    move       $a0,$s1
    beqz       $v0, .L00003750
    lw         $a2,0($gp)
    ld         $a1,-32736($gp)
    daddiu     $a0,$sp,8
    move       $a2,$s0
    jal        sprintf
    daddiu     $a1,$a1,868
    daddiu     $a2,$sp,24
    daddiu     $a1,$sp,8
    jal        hwgraph_path_add
    lw         $a0,4($sp)
    lw         $a0,24($sp)
    jal        mark_cpuvertex_as_cpu
    move       $a1,$s1
    lw         $a1,0($sp)
    jal        device_master_set
    lw         $a0,24($sp)
    lw         $a2,0($gp)
.L00003750:
    addiu      $s0,$s0,1
    slt        $a2,$s0,$a2
    bnez       $a2, .L000036fc
    dsll32     $s1,$s0,0x10
.L00003760:
    ld         $a1,-32736($gp)
    daddiu     $a2,$sp,28
    lw         $a0,0($sp)
    sw         $s2,28($sp)
    jal        hwgraph_path_add
    daddiu     $a1,$a1,872
    ld         $a1,-32736($gp)
    daddiu     $a2,$sp,32
    lw         $a0,0($gp)
    jal        hwgraph_path_add
    daddiu     $a1,$a1,880
    ld         $s0,-32736($gp)
    daddiu     $a2,$sp,36
    lw         $a0,0($gp)
    jal        hwgraph_path_add
    daddiu     $a1,$s0,704
    ld         $a1,-32736($gp)
    daddiu     $a2,$sp,40
    lw         $a0,0($gp)
    jal        hwgraph_path_add
    daddiu     $a1,$a1,888
    daddiu     $a2,$sp,44
    daddiu     $a1,$s0,720
    jal        hwgraph_path_add
    lw         $a0,0($sp)
    jal        pcibr_hints_fix_rrbs
    lw         $a0,44($sp)
    li         $a2,4
    li         $a1,2
    jal        pcibr_hints_dualslot
    lw         $a0,44($sp)
    li         $a2,127
    li         $a1,2
    jal        pcibr_hints_subdevs
    lw         $a0,44($sp)
    jal        heart_startup
    lw         $a0,0($gp)
    ld         $a1,-32736($gp)
    daddiu     $a0,$s0,736
    daddiu     $a2,$a1,904
    jal        hwgraph_link_add
    daddiu     $a1,$a1,896
    ld         $a1,-32736($gp)
    daddiu     $a0,$s0,752
    daddiu     $a2,$a1,916
    jal        hwgraph_link_add
    daddiu     $a1,$a1,912
    ld         $a1,-32736($gp)
    daddiu     $a0,$s0,776
    daddiu     $a2,$a1,918
    jal        hwgraph_link_add
    daddiu     $a1,$a1,912
    jal        hwgraph_path_to_vertex
    daddiu     $a0,$s0,800
    beq        $s2, $v0, .L00003848
    move       $a0,$v0
    jal        device_controller_num_set
    move       $a1,$zero
.L00003848:
    ld         $s1,72($sp)
    jal        hwgraph_path_to_vertex
    daddiu     $a0,$s0,816
    beq        $s2, $v0, .L00003864
    move       $a0,$v0
    jal        device_controller_num_set
    li         $a1,1
.L00003864:
    jal        hwgraph_path_to_vertex
    daddiu     $a0,$s0,832
    beq        $s2, $v0, .L00003898
    move       $s0,$v0
    move       $a0,$v0
    jal        device_controller_num_set
    move       $a1,$zero
    jal        hwgraph_fastinfo_get
    move       $a0,$s0
    beqz       $v0, .L00003898
    move       $a0,$v0
    jal        ef_ifattach
    move       $a1,$zero
.L00003898:
    ld         $ra,56($sp)
    ld         $s2,48($sp)
    ld         $s0,64($sp)
    jr         $ra
    daddiu     $sp,$sp,80

glabel sendintr
    addiu      $v1,$a0,46
    li         $at,1
    lui        $v0,0xaff1
    dsllv      $at,$at,$v1
    sd         $at,32($v0)
    jr         $ra
    move       $v0,$zero

glabel debug_stop_all_cpus
    lw         $a3,0($gp)
    li         $a4,1
    li         $a2,42
    move       $a1,$zero
    lui        $a6,0xaff1
    blez       $a3, .L00003940
    ori        $a6,$a6,0x20
    b          .L00003948
    dsllv      $a5,$a4,$a2
.L000038ec:
    addiu      $a1,$a1,1
    slt        $a7,$a1,$a3
    dsllv      $a5,$a4,$a2
    beqz       $a7, .L00003940
    addiu      $a2,$a2,1
    lh         $t0,-15456($zero)
.L00003904:
    beq        $t0, $a1, .L00003914
    nop
    sd         $a5,0($a6)
    lw         $a3,0($gp)
.L00003914:
    addiu      $a1,$a1,1
    slt        $t1,$a1,$a3
    dsllv      $a5,$a4,$a2
    beqz       $t1, .L00003940
    addiu      $a2,$a2,1
    lh         $t2,-15456($zero)
    beq        $t2, $a1, .L000038ec
    nop
    sd         $a5,0($a6)
    b          .L000038ec
    lw         $a3,0($gp)
.L00003940:
    jr         $ra
    nop
.L00003948:
    addiu      $a2,$a2,1
    b          .L00003904
    lh         $t0,-15456($zero)
    ld         $at,-15744($zero)
    daddiu     $sp,$sp,-16
    andi       $at,$at,0x20
    sd         $a0,0($sp)
    bnez       $at, .L00003990
    sd         $ra,8($sp)
.L0000396c:
    jal        fastick_maint
    nop
    ld         $v0,-15744($zero)
    andi       $v0,$v0,0x20
    bnez       $v0, .L000039b0
    li         $a1,110
    ld         $ra,8($sp)
.L00003988:
    jr         $ra
    daddiu     $sp,$sp,16
.L00003990:
    li         $a0,110
    move       $a1,$zero
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L0000396c
    ld         $a0,0($sp)
.L000039b0:
    li         $a0,101
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L00003988
    ld         $ra,8($sp)

glabel pokesoftclk
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        siroff
    li         $a0,512
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel ip30_intr_maint
    lw         $at,-15008($zero)
    daddiu     $sp,$sp,-16
    bnez       $at, .L00003a04
    sd         $ra,0($sp)
    lw         $v0,-15004($zero)
    beqz       $v0, .L00003a10
    ld         $ra,0($sp)
.L00003a04:
    jal        siron
    li         $a0,512
    ld         $ra,0($sp)
.L00003a10:
    jr         $ra
    daddiu     $sp,$sp,16

glabel intr
    daddiu     $sp,$sp,-128
    sd         $s2,8($sp)
    lw         $at,-16312($zero)
    sd         $a0,32($sp)
    sd         $a2,48($sp)
    li         $v0,48
    andi       $at,$at,0x30
    sd         $s1,0($sp)
    move       $s1,$a3
    beq        $at, $v0, .L00003c7c
    sd         $ra,112($sp)
    sd         $zero,16($sp)
.L00003a48:
    ld         $v0,-15744($zero)
    sd         $s6,64($sp)
    sd         $s0,80($sp)
    andi       $v0,$v0,0x20
    sd         $s7,96($sp)
    bnez       $v0, .L00003cb0
    sd         $s8,104($sp)
    ld         $s6,-32560($gp)
.L00003a68:
    sd         $s3,56($sp)
    sd         $s4,72($sp)
    lui        $s8,0x1
    ld         $v1,48($sp)
    li         $s7,0xe001
    move       $s2,$zero
    sd         $s5,88($sp)
    move       $s0,$zero
    andi       $a0,$v1,0x2000
    sd         $a0,40($sp)
    andi       $v1,$v1,0x1000
    b          .L00003b4c
    sd         $v1,24($sp)
.L00003a9c:
    jal        splprof
    nop
    and        $a1,$s8,$s0
    beqz       $a1, .L00003bb8
    lui        $a2,0x2
.L00003ab0:
    and        $a2,$a2,$s0
    beqz       $a2, .L00003bdc
.L00003ab8:
    lui        $a3,0x3
    and        $a3,$a3,$s0
    beqz       $a3, .L00003c6c
    ld         $t8,48($sp)
.L00003ac8:
    and        $s1,$t8,$s1
    andi       $s1,$s1,0xff00
    or         $s1,$s0,$s1
    srl        $v0,$s1,0xd
    beqz       $s1, .L00003c04
    daddu      $a3,$v0,$s6
    beqz       $v0, .L00003b80
    srl        $v0,$s1,0x8
    lbu        $v0,280($a3)
.L00003aec:
    dsll32     $s3,$v0,0x0
    dsrl       $s1,$s3,0x1e
    dsrl32     $s3,$s3,0x0
    dsubu      $s1,$s1,$s3
    dsll       $s1,$s1,0x3
    daddu      $s1,$s6,$s1
    ld         $s4,16($s1)
    lw         $s5,24($s1)
    lw         $s3,28($s1)
    lw         $s1,32($s1)
    jal        splx
    move       $a0,$s5
    jalr       $s4
    ld         $a0,32($sp)
    li         $v0,1
    xor        $t8,$s7,$s5
    sltiu      $t8,$t8,1
    beqz       $s1, .L00003b8c
    movn       $s2,$v0,$t8
    nor        $t9,$s1,$zero
    and        $s0,$s0,$t9
.L00003b40:
    jal        getcause
    nop
    and        $s1,$v0,$s3
.L00003b4c:
    lw         $ra,-15004($zero)
    ld         $at,40($sp)
    beqz       $ra, .L00003b64
    ld         $v1,24($sp)
    bnez       $at, .L00003a9c
    nop
.L00003b64:
    lw         $v0,-15008($zero)
    beqz       $v0, .L00003ac8
    ld         $t8,48($sp)
    bnez       $v1, .L00003a9c
    nop
    b          .L00003ac8
    ld         $t8,48($sp)
.L00003b80:
    daddu      $v0,$s6,$v0
    b          .L00003aec
    lbu        $v0,312($v0)
.L00003b8c:
    ld         $a0,-15224($zero)
    daddiu     $a0,$a0,208
    move       $a1,$v0
.L00003b98:
    ll         $v1,0($a0)
    addu       $a2,$v1,$a1
    move       $v1,$a2
    sc         $a2,0($a0)
    beqzl      $a2, .L00003b98
    nop
    b          .L00003b40
    nop
.L00003bb8:
    lw         $a5,-15008($zero)
    ld         $a1,24($sp)
    beqz       $a5, .L00003ab0
    addiu      $a3,$a5,-1
    beqz       $a1, .L00003ab0
    nop
    or         $s0,$s8,$s0
    b          .L00003ab0
    sw         $a3,-15008($zero)
.L00003bdc:
    lw         $a5,-15004($zero)
    lui        $a4,0x2
    ld         $a2,40($sp)
    beqz       $a5, .L00003ab8
    addiu      $a3,$a5,-1
    beqz       $a2, .L00003ab8
    nop
    sw         $a3,-15004($zero)
    b          .L00003ab8
    or         $s0,$a4,$s0
.L00003c04:
    jal        ip30_intr_maint
    nop
    ld         $s3,56($sp)
    ld         $s6,64($sp)
    ld         $s4,72($sp)
    ld         $s0,80($sp)
    ld         $s1,0($sp)
    ld         $a5,16($sp)
    ld         $s5,88($sp)
    ld         $s7,96($sp)
    beqz       $a5, .L00003c4c
    ld         $s8,104($sp)
    lw         $a6,-16312($zero)
    andi       $a6,$a6,0x10
    beqz       $a6, .L00003c4c
    nop
    jal        check_delay_tlbflush
    li         $a0,1
.L00003c4c:
    ld         $a7,-15744($zero)
    andi       $a7,$a7,0x20
    bnez       $a7, .L00003c90
    ld         $ra,112($sp)
.L00003c5c:
    move       $v0,$s2
    ld         $s2,8($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L00003c6c:
    jal        splx
    move       $a0,$v0
    b          .L00003ac8
    ld         $t8,48($sp)
.L00003c7c:
    jal        check_delay_tlbflush
    move       $a0,$zero
    li         $t0,1
    b          .L00003a48
    sd         $t0,16($sp)
.L00003c90:
    li         $a1,102
    li         $a0,101
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L00003c5c
    ld         $ra,112($sp)
.L00003cb0:
    li         $a0,102
    move       $a1,$zero
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L00003a68
    ld         $s6,-32560($gp)

glabel intr_spray_heuristic
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    beqz       $a0, .L00003d28
    sd         $ra,16($sp)
    jal        device_desc_intr_target_get
    nop
    li         $at,-1
    beq        $v0, $at, .L00003d2c
    lw         $a1,-32672($gp)
    jal        cpuvertex_to_cpuid
    move       $a0,$v0
    dsll32     $a0,$v0,0x10
    dsra32     $a0,$a0,0x10
    jal        cpu_enabled
    sd         $a0,0($sp)
    ld         $t9,0($sp)
    lh         $s0,0($gp)
    sltiu      $t8,$v0,1
    movz       $s0,$t9,$t8
    dsll32     $s0,$s0,0x10
    b          .L00003d64
    dsra32     $s0,$s0,0x10
.L00003d28:
    lw         $a1,-32672($gp)
.L00003d2c:
    lw         $a0,-32668($gp)
    slt        $a0,$a0,$a1
    jal        cpu_enabled
    move       $s0,$a0
    beqz       $v0, .L00003d60
    ld         $a2,-32656($gp)
    dsll       $a3,$s0,0x4
    daddu      $a2,$a2,$a3
    ld         $a2,8($a2)
    lw         $a2,72($a2)
    andi       $a2,$a2,0x80
    beqz       $a2, .L00003d68
    dsll       $a6,$s0,0x2
.L00003d60:
    lh         $s0,0($gp)
.L00003d64:
    dsll       $a6,$s0,0x2
.L00003d68:
    daddiu     $a5,$gp,-32672
    ld         $ra,16($sp)
    daddu      $a5,$a5,$a6
    lw         $a4,0($a5)
    move       $v0,$s0
    ld         $s0,8($sp)
    daddiu     $sp,$sp,32
    addiu      $a4,$a4,1
    jr         $ra
    sw         $a4,0($a5)

glabel heart_set_cpu_intr
    li         $at,1
    lui        $v0,0xaff1
    sllv       $at,$at,$a0
    jr         $ra
    sd         $at,32($v0)

glabel devnamefromarcs
    daddiu     $sp,$sp,-272
    ld         $a1,-32736($gp)
    li         $a2,3
    sd         $s0,264($sp)
    move       $s0,$a0
    sd         $ra,256($sp)
    jal        strncmp
    daddiu     $a1,$a1,960
    beqz       $v0, .L00003ddc
    ld         $t8,-32736($gp)
.L00003dcc:
    ld         $ra,256($sp)
.L00003dd0:
    ld         $s0,264($sp)
    jr         $ra
    daddiu     $sp,$sp,272
.L00003ddc:
    lw         $a6,952($t8)
    ld         $t0,968($t8)
    sd         $t0,0($sp)
    lbu        $a7,3($s0)
    li         $a0,100
    ld         $a5,920($t8)
    daddiu     $a2,$s0,3
    lbu        $a4,928($t8)
    daddiu     $a3,$sp,7
    beq        $a0, $a7, .L00003e24
    lbu        $a7,956($t8)
.L00003e08:
    lbu        $t1,0($a2)
    daddiu     $a3,$a3,1
    daddiu     $a2,$a2,1
    beqz       $t1, .L00003dcc
    sb         $t1,-1($a3)
    lbu        $t2,0($a2)
    bne        $a0, $t2, .L00003e08
.L00003e24:
    lbu        $t0,958($t8)
    sdl        $a5,0($a3)
    sdr        $a5,7($a3)
    sb         $a4,8($a3)
    lbu        $t9,1($a2)
    ld         $t2,936($t8)
    li         $a0,115
    ld         $t3,944($t8)
    daddiu     $a3,$a3,8
    lbu        $t1,957($t8)
    beq        $a0, $t9, .L00003e74
    daddiu     $a2,$a2,1
.L00003e54:
    lbu        $ra,0($a2)
    daddiu     $a3,$a3,1
    daddiu     $a2,$a2,1
    beqz       $ra, .L00003dcc
    sb         $ra,-1($a3)
    lbu        $at,0($a2)
    bne        $a0, $at, .L00003e54
    nop
.L00003e74:
    sdl        $t2,0($a3)
    sdr        $t2,7($a3)
    sdl        $t3,8($a3)
    sdr        $t3,15($a3)
    swl        $a6,16($a3)
    swr        $a6,19($a3)
    sb         $t0,22($a3)
    sb         $t1,21($a3)
    sb         $a7,20($a3)
    lbu        $v0,1($a2)
    daddiu     $a3,$a3,23
    daddiu     $a2,$a2,2
    beqz       $v0, .L00003ee8
    sb         $v0,-1($a3)
.L00003eac:
    lbu        $v1,0($a2)
    daddiu     $a3,$a3,1
    sb         $v1,-1($a3)
    beqz       $v1, .L00003ee8
    nop
    lbu        $a0,1($a2)
    daddiu     $a3,$a3,1
    sb         $a0,-1($a3)
    beqz       $a0, .L00003ee8
    nop
    lbu        $a1,2($a2)
    daddiu     $a3,$a3,1
    daddiu     $a2,$a2,3
    bnez       $a1, .L00003eac
    sb         $a1,-1($a3)
.L00003ee8:
    ld         $a2,-32736($gp)
    li         $a6,47
    sb         $a6,-1($a3)
    lbu        $a4,981($a2)
    lw         $a5,976($a2)
    lbu        $a2,980($a2)
    swl        $a5,0($a3)
    swr        $a5,3($a3)
    daddiu     $a1,$sp,0
    sb         $a4,5($a3)
    move       $a0,$s0
    jal        strcpy
    sb         $a2,4($a3)
    b          .L00003dd0
    ld         $ra,256($sp)

glabel heart_invalidate_war
    lw         $at,0($gp)
    daddiu     $sp,$sp,-48
    beqz       $at, .L00003f8c
    sd         $ra,32($sp)
    ld         $v0,-16352($zero)
    sd         $a0,24($sp)
    li         $a0,2
    beqz       $v0, .L00003f54
    sd         $a1,16($sp)
    lbu        $v1,-16305($zero)
    beq        $v1, $a0, .L00003fa8
    nop
.L00003f54:
    jal        splhi
    nop
    sw         $v0,8($sp)
.L00003f60:
    ld         $a0,24($sp)
    jal        __heart_invalidate_war
    ld         $a1,16($sp)
    ld         $a1,-16352($zero)
    beqz       $a1, .L00003f84
    li         $a3,2
    lbu        $a2,-16305($zero)
    beq        $a2, $a3, .L00003f98
    nop
.L00003f84:
    jal        splx
    lw         $a0,8($sp)
.L00003f8c:
    ld         $ra,32($sp)
.L00003f90:
    jr         $ra
    daddiu     $sp,$sp,48
.L00003f98:
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L00003f90
    ld         $ra,32($sp)
.L00003fa8:
    jal        rt_pin_thread
    nop
    b          .L00003f60
    sd         $v0,0($sp)

glabel bp_heart_invalidate_war
    lw         $at,0($gp)
    daddiu     $sp,$sp,-48
    sd         $s0,16($sp)
    move       $s0,$a0
    li         $a0,2
    beqz       $at, .L0000404c
    sd         $ra,32($sp)
    ld         $v0,-16352($zero)
    beqz       $v0, .L00003fec
    nop
    lbu        $v1,-16305($zero)
    beq        $v1, $a0, .L0000405c
    nop
.L00003fec:
    jal        splhi
    nop
    sw         $v0,8($sp)
.L00003ff8:
    ld         $a0,16($s0)
    li         $a2,16384
    andi       $a1,$a0,0xc000
    beq        $a1, $a2, .L00004020
    dsll32     $a0,$a0,0xa
    lw         $a1,104($s0)
    jal        __heart_invalidate_war
    ld         $a0,128($s0)
    b          .L00004050
    ld         $ra,32($sp)
.L00004020:
    bgez       $a0, .L0000406c
    sd         $s1,40($sp)
.L00004028:
    ld         $a3,-16352($zero)
.L0000402c:
    li         $a5,2
    beqz       $a3, .L00004044
    ld         $s1,40($sp)
    lbu        $a4,-16305($zero)
    beq        $a4, $a5, .L000040d4
    nop
.L00004044:
    jal        splx
    lw         $a0,8($sp)
.L0000404c:
    ld         $ra,32($sp)
.L00004050:
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000405c:
    jal        rt_pin_thread
    nop
    b          .L00003ff8
    sd         $v0,0($sp)
.L0000406c:
    lwu        $a1,116($s0)
    daddiu     $a1,$a1,16383
    dsrl       $a1,$a1,0xe
    sll        $a1,$a1,0x0
    li         $a3,-1
    addiu      $a1,$a1,-1
    ld         $s1,160($s0)
    nop
    beq        $a1, $a3, .L00004028
    sd         $a1,24($sp)
    ld         $s0,24($sp)
.L00004098:
    ld         $a2,0($gp)
    li         $a0,-11
    dsll32     $a0,$a0,0x1b
    dsubu      $a2,$s1,$a2
    dsra       $a2,$a2,0x6
    li         $a1,16384
    dsll       $a2,$a2,0xe
    jal        __heart_invalidate_war
    or         $a0,$a0,$a2
    li         $a3,-1
    addiu      $s0,$s0,-1
    bne        $s0, $a3, .L00004098
    ld         $s1,0($s1)
    b          .L0000402c
    ld         $a3,-16352($zero)
.L000040d4:
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L00004050
    ld         $ra,32($sp)

glabel ip30_rad_halt
    ld         $a1,0($gp)
    daddiu     $sp,$sp,-16
    beqz       $a1, .L000040fc
    sd         $ra,0($sp)
    jalr       $a1
    nop
.L000040fc:
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        splhi
    nop
    move       $a0,$v0
    ld         $v0,-32688($gp)
    sw         $zero,-32704($gp)
    lui        $at,0x10
    jal        splx
    sw         $at,0($v0)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel pckbd_bell
    daddiu     $sp,$sp,-32
    sd         $a2,0($sp)
    move       $v0,$zero
    blez       $a2, .L00004184
    sd         $ra,16($sp)
    jal        splhi
    nop
    sd         $v0,8($sp)
    move       $a0,$v0
    lw         $v0,-32704($gp)
    beqz       $v0, .L0000418c
    ld         $a3,0($sp)
.L0000416c:
    jal        splx
    nop
    ld         $ra,16($sp)
    li         $v0,1
.L0000417c:
    jr         $ra
    daddiu     $sp,$sp,32
.L00004184:
    b          .L0000417c
    nop
.L0000418c:
    sll        $a2,$a3,0x2
    subu       $a2,$a2,$a3
    sll        $a2,$a2,0x3
    ld         $a4,-32680($gp)
    addu       $a2,$a2,$a3
    move       $a1,$zero
    ld         $a0,-32552($gp)
    sll        $a2,$a2,0x2
    lui        $a3,0x10
    sw         $a3,0($a4)
    jal        timeout
    sra        $a2,$a2,0xa
    ld         $a0,8($sp)
    b          .L0000416c
    sw         $v0,-32704($gp)

glabel stopclocks
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        slowkgclock
    nop
    ld         $ra,0($sp)
    lui        $at,0xf000
    sw         $at,-15088($zero)
    sd         $zero,-14992($zero)
    jr         $ra
    daddiu     $sp,$sp,16

glabel counter_intr
    daddiu     $sp,$sp,-48
    sd         $a0,8($sp)
    lw         $at,-14760($zero)
    sd         $s2,16($sp)
    sd         $s1,24($sp)
    beqz       $at, .L00004244
    sd         $ra,32($sp)
    ld         $v0,-15744($zero)
    andi       $v0,$v0,0x20
    bnez       $v0, .L0000479c
    li         $a0,108
.L0000421c:
    jal        frs_handle_counter_intr
    nop
    ld         $v1,-15744($zero)
    andi       $v1,$v1,0x20
    bnez       $v1, .L000047b8
.L00004230:
    ld         $ra,32($sp)
.L00004234:
    ld         $s2,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00004244:
    jal        hwperf_overflowed_intr
    nop
    beqz       $v0, .L00004264
    nop
    jal        hwperf_intr
    ld         $a0,8($sp)
    b          .L00004234
    ld         $ra,32($sp)
.L00004264:
    lw         $a0,-16312($zero)
    andi       $a0,$a0,0x40
    lui        $s1,0xaff2
    beqz       $a0, .L000042f4
    sd         $s0,40($sp)
    li         $a0,-1
    jal        resetcounter
    ld         $s0,0($s1)
    ld         $a3,-32544($gp)
    lh         $a4,-15456($zero)
    dsll       $a4,$a4,0x2
    daddiu     $a3,$a3,16
    move       $s2,$zero
    daddu      $a3,$a3,$a4
.L0000429c:
    sw         $zero,0($a3)
    lh         $a1,-15456($zero)
    ld         $a0,-32528($gp)
    dsll       $a1,$a1,0x4
    daddu      $a0,$a0,$a1
    ld         $a0,8($a0)
    jal        .text
    daddiu     $a0,$a0,1416
    move       $a1,$v0
    li         $a3,1
    move       $a2,$zero
    lh         $a0,-15456($zero)
    jal        .text
    move       $a4,$s0
    beqz       $s2, .L00004230
    ld         $s0,40($sp)
    ld         $a2,-15744($zero)
    andi       $a2,$a2,0x20
    beqz       $a2, .L00004234
    ld         $ra,32($sp)
    b          .L000047d8
    li         $a1,108
.L000042f4:
    ld         $s0,0($s1)
    ld         $v0,-15016($zero)
    sltu       $a3,$s0,$v0
    beqz       $a3, .L00004408
    daddiu     $a1,$v0,1200
    ld         $a7,-32576($gp)
    lw         $a4,-14604($zero)
    ddivu      $zero,$a7,$a4
    dsubu      $a5,$v0,$s0
    mflo       $a6
    sltu       $a5,$a5,$a6
    beqz       $a5, .L00004754
    teq        $a4,$zero,0x7
.L00004328:
    ld         $s0,0($s1)
    sltu       $t0,$s0,$v0
    beqz       $t0, .L00004378
    nop
    ld         $s0,0($s1)
    sltu       $t1,$s0,$v0
    beqz       $t1, .L00004378
    nop
    ld         $s0,0($s1)
    sltu       $t2,$s0,$v0
    beqz       $t2, .L00004378
    nop
    ld         $s0,0($s1)
    sltu       $t3,$s0,$v0
    beqz       $t3, .L00004378
    nop
    ld         $s0,0($s1)
    sltu       $t8,$s0,$v0
    bnez       $t8, .L00004328
    nop
.L00004378:
    jal        resetlatency
    nop
.L00004380:
    ld         $a2,-15032($zero)
    sltu       $t9,$s0,$a2
    bnez       $t9, .L00004490
    nop
    ld         $ra,-15744($zero)
    andi       $ra,$ra,0x20
    bnez       $ra, .L000047f4
    li         $a0,108
    ld         $v0,-14992($zero)
.L000043a4:
    beqz       $v0, .L00004734
    lw         $at,0($gp)
    slti       $at,$at,1001
    beqz       $at, .L000046e4
    dsubu      $s2,$s0,$v0
.L000043b8:
    lw         $v0,0($gp)
    beqz       $v0, .L00004420
    ld         $v0,0($gp)
    lw         $v1,0($gp)
    sltiu      $v1,$v1,256
    beqz       $v1, .L00004420
    ld         $v0,0($gp)
    lw         $a0,0($gp)
    dsll32     $a0,$a0,0x0
    lui        $a1,0xbe
    dsrl32     $a0,$a0,0x0
    ori        $a1,$a1,0xbc20
    dmult      $a0,$a1
    mflo       $v1
    dsrl32     $v0,$v1,0x1f
    daddu      $v0,$v0,$v1
    dsra       $v0,$v0,0x1
    sltu       $v0,$s2,$v0
    b          .L00004428
    xori       $v0,$v0,0x1
.L00004408:
    sltu       $a1,$a1,$s0
    beqz       $a1, .L00004380
    daddiu     $a2,$v0,600
    b          .L00004380
    sd         $a2,-15016($zero)
    ld         $v0,0($gp)
.L00004420:
    sltu       $v0,$s2,$v0
    xori       $v0,$v0,0x1
.L00004428:
    beqz       $v0, .L0000473c
    nop
    lwu        $v1,-15088($zero)
    li         $a0,0xf000
    lh         $a2,-15456($zero)
    ld         $a6,-32544($gp)
    dsll       $a0,$a0,0x10
    dsll       $v0,$a2,0x2
    daddu      $v0,$a6,$v0
    beq        $v1, $a0, .L0000445c
    daddiu     $a3,$v0,16
    lw         $a1,16($v0)
    beqz       $a1, .L00004810
.L0000445c:
    lui        $a4,0x1
    ld         $a2,-15032($zero)
    ori        $a4,$a4,0xe848
    lw         $v0,-15008($zero)
    daddu      $a2,$a4,$a2
    sd         $s0,-14992($zero)
    sltu       $a5,$s0,$a2
    addiu      $v0,$v0,1
    sw         $v0,-15008($zero)
    bnez       $a5, .L00004618
    sd         $a2,-15032($zero)
    b          .L00004530
    lw         $a7,0($a3)
.L00004490:
    ld         $v0,-15024($zero)
    sltiu      $a5,$v0,2
    bnez       $a5, .L000044f4
    ld         $a3,-32544($gp)
    sltu       $a6,$s0,$v0
    bnez       $a6, .L000044f0
    lw         $a1,0($gp)
    lw         $a0,-15004($zero)
    daddu      $v0,$a1,$v0
    sltu       $a7,$s0,$v0
    addiu      $a0,$a0,1
    sw         $a0,-15004($zero)
    bnez       $a7, .L000044f0
    sd         $v0,-15024($zero)
    lh         $a3,-15456($zero)
    ld         $a6,-32544($gp)
    move       $s2,$zero
    dsll       $a3,$a3,0x2
    lui        $a4,0x1
    daddu      $a3,$a6,$a3
    ori        $a4,$a4,0xe848
    daddiu     $a3,$a3,16
.L000044e8:
    b          .L0000467c
    lw         $t0,0($a3)
.L000044f0:
    ld         $a3,-32544($gp)
.L000044f4:
    lh         $a4,-15456($zero)
    move       $s2,$zero
    dsll       $a4,$a4,0x2
    daddiu     $a3,$a3,16
    b          .L0000429c
    daddu      $a3,$a3,$a4
.L0000450c:
    addiu      $v0,$v0,1
    sw         $v0,-15008($zero)
.L00004514:
    daddu      $a2,$a4,$a2
    sd         $a2,-15032($zero)
    ld         $s0,0($s1)
    sltu       $a5,$s0,$a2
    bnez       $a5, .L00004574
    nop
    lw         $a7,0($a3)
.L00004530:
    beqz       $a7, .L000045f0
    daddu      $a2,$a4,$a2
.L00004538:
    sd         $a2,-15032($zero)
    ld         $s0,0($s1)
    sltu       $t0,$s0,$a2
    bnez       $t0, .L00004574
    nop
    lw         $t1,0($a3)
    bnez       $t1, .L00004514
    lw         $t2,0($gp)
    slti       $t2,$t2,181
    bnez       $t2, .L0000450c
    nop
    lw         $t3,-15000($zero)
    addiu      $t3,$t3,1
    b          .L0000450c
    sw         $t3,-15000($zero)
.L00004574:
    ld         $v0,-15024($zero)
    sltiu      $t8,$v0,2
    bnez       $t8, .L000045bc
    li         $s2,1
    sltu       $t9,$s0,$v0
    bnez       $t9, .L000045bc
    li         $s2,1
    lw         $a1,0($gp)
    lw         $a0,-15004($zero)
    daddu      $v0,$a1,$v0
    sltu       $ra,$s0,$v0
    addiu      $a0,$a0,1
    sw         $a0,-15004($zero)
    bnez       $ra, .L000045b8
    sd         $v0,-15024($zero)
    b          .L000044e8
    li         $s2,1
.L000045b8:
    li         $s2,1
.L000045bc:
    jal        resetlatency
    ld         $s1,-32544($gp)
    lwu        $a4,0($gp)
    ddivu      $zero,$s0,$a4
    lh         $a3,-15456($zero)
    dsll       $a3,$a3,0x2
    teq        $a4,$zero,0x7
    daddu      $a3,$s1,$a3
    daddiu     $a3,$a3,16
    mfhi       $a2
    dsubu      $a2,$s0,$a2
    b          .L0000429c
    sd         $a2,-15016($zero)
.L000045f0:
    lw         $a5,0($gp)
    slti       $a5,$a5,181
    bnez       $a5, .L0000460c
    nop
    lw         $a7,-15000($zero)
    addiu      $a7,$a7,1
    sw         $a7,-15000($zero)
.L0000460c:
    addiu      $v0,$v0,1
    b          .L00004538
    sw         $v0,-15008($zero)
.L00004618:
    ld         $v0,-15024($zero)
    sltiu      $t0,$v0,2
    bnez       $t0, .L000046dc
    sltu       $t1,$s0,$v0
    bnez       $t1, .L000046dc
    lw         $a1,0($gp)
    lw         $a0,-15004($zero)
    daddu      $v0,$a1,$v0
    sltu       $t2,$s0,$v0
    addiu      $a0,$a0,1
    sw         $a0,-15004($zero)
    bnez       $t2, .L000046dc
    sd         $v0,-15024($zero)
    b          .L000044e8
    li         $s2,1
.L00004654:
    daddu      $a2,$a4,$a2
    sd         $a2,-15032($zero)
    lw         $a7,0($gp)
.L00004660:
    daddu      $v0,$a7,$v0
    sd         $v0,-15024($zero)
    ld         $s0,0($s1)
    sltu       $a5,$s0,$v0
    bnez       $a5, .L000045bc
    nop
    lw         $t0,0($a3)
.L0000467c:
    beqz       $t0, .L000046b4
.L00004680:
    sltu       $t1,$s0,$a2
    bnez       $t1, .L00004660
    lw         $a7,0($gp)
    lw         $t2,0($a3)
    bnez       $t2, .L00004654
    nop
    lw         $t8,-15008($zero)
    lw         $t3,-15000($zero)
    addiu      $t8,$t8,1
    sw         $t8,-15008($zero)
    addiu      $t3,$t3,1
    b          .L00004654
    sw         $t3,-15000($zero)
.L000046b4:
    lw         $t9,0($gp)
    slti       $t9,$t9,181
    bnez       $t9, .L000046d0
    nop
    lw         $ra,-14996($zero)
    addiu      $ra,$ra,1
    sw         $ra,-14996($zero)
.L000046d0:
    addiu      $a0,$a0,1
    b          .L00004680
    sw         $a0,-15004($zero)
.L000046dc:
    b          .L0000429c
    li         $s2,1
.L000046e4:
    jal        _get_count
    nop
    jal        _get_compare
    sd         $v0,0($sp)
    ld         $a2,0($sp)
    lw         $at,-14972($zero)
    subu       $a2,$a2,$v0
    sltu       $at,$at,$a2
    beqz       $at, .L00004710
    nop
    sw         $a2,-14972($zero)
.L00004710:
    lw         $a5,-14976($zero)
    dsll32     $a4,$a2,0x0
    ld         $a3,-14984($zero)
    addiu      $a5,$a5,1
    sw         $a5,-14976($zero)
    dsrl32     $a4,$a4,0x0
    daddu      $a3,$a3,$a4
    b          .L000043b8
    sd         $a3,-14984($zero)
.L00004734:
    b          .L000043b8
    move       $s2,$zero
.L0000473c:
    lh         $a3,-15456($zero)
    ld         $a6,-32544($gp)
    dsll       $a3,$a3,0x2
    daddu      $a3,$a6,$a3
    b          .L0000445c
    daddiu     $a3,$a3,16
.L00004754:
    lwu        $a1,0($gp)
    ddivu      $zero,$s0,$a1
    mfhi       $a5
    lwu        $a4,0($gp)
    dsubu      $a5,$s0,$a5
    dsubu      $a5,$v0,$a5
    dmultu     $a4,$a5
    li         $a3,125
    mflo       $a2
    ddivu      $zero,$a2,$a3
    teq        $a1,$zero,0x7
    mflo       $a0
    jal        resetcounter
    sll        $a0,$a0,0x0
    b          .L00004230
    ld         $s0,40($sp)
.L0000479c:
    move       $a1,$zero
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L0000421c
    nop
.L000047b8:
    li         $a1,108
    li         $a0,101
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L00004234
    ld         $ra,32($sp)
.L000047d8:
    li         $a0,101
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L00004234
    ld         $ra,32($sp)
.L000047f4:
    move       $a1,$zero
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L000043a4
    ld         $v0,-14992($zero)
.L00004810:
    lw         $t0,-14608($zero)
    li         $t2,4294
    divu       $zero,$t2,$t0
    lui        $t1,0xbe
    ori        $t1,$t1,0xbc20
    mflo       $v0
    ddivu      $zero,$s2,$t1
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    daddiu     $a7,$v0,-2
    mflo       $a3
    teq        $t1,$zero,0x7
    slt        $a7,$a3,$a7
    teq        $t0,$zero,0x7
    lw         $t2,0($gp)
    li         $a0,4
    bnez       $a7, .L00004878
    movn       $a0,$zero,$t2
    daddiu     $t3,$v0,2
    slt        $t3,$t3,$a3
    bnez       $t3, .L00004878
    ld         $v0,-32536($gp)
    b          .L00004880
    move       $a6,$v0
.L00004878:
    ld         $v0,-32536($gp)
    daddiu     $a6,$v0,32
.L00004880:
    ld         $a4,8($sp)
    ld         $a5,240($a4)
    daddiu     $a1,$v0,96
    jal        cmn_err
    ld         $a4,288($a4)
    lh         $a3,-15456($zero)
    ld         $a6,-32544($gp)
    dsll       $a3,$a3,0x2
    daddu      $a3,$a6,$a3
    b          .L0000445c
    daddiu     $a3,$a3,16

glabel startrtclock
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        .text
    nop
    li         $a0,100
    divu       $zero,$v0,$a0
    lh         $at,-15456($zero)
    mflo       $v1
    sw         $v1,-15088($zero)
    lh         $v0,0($gp)
    li         $a4,125
    lui        $a2,0x1
    bne        $at, $v0, .L00004940
    lw         $a1,0($gp)
    lw         $a4,-14604($zero)
    ori        $a3,$a2,0x86a0
    div        $zero,$a4,$a3
    li         $a4,125
    teq        $a3,$zero,0x7
    mflo       $a3
    bnez       $a1, .L00004940
    sw         $a3,0($gp)
    dsll32     $a6,$a3,0x0
    dsrl32     $a6,$a6,0x0
    ddiv       $zero,$a6,$a4
    mfhi       $a5
    li         $a1,1
    beqz       $a5, .L00004a1c
    move       $a2,$a3
.L00004920:
    addu       $a2,$a2,$a3
    dsll32     $t0,$a2,0x0
    dsrl32     $t0,$t0,0x0
    ddiv       $zero,$t0,$a4
    mfhi       $a7
    bnez       $a7, .L00004920
    addiu      $a1,$a1,1
.L0000493c:
    sw         $a1,0($gp)
.L00004940:
    sw         $zero,-15000($zero)
    lui        $a7,0xaff2
    lui        $t8,0x3
    ld         $a7,0($a7)
    lui        $t9,0x1
    ori        $t8,$t8,0xd08f
    ori        $t9,$t9,0xe848
    daddu      $t8,$a7,$t8
    ddivu      $zero,$t8,$t9
    mflo       $t8
    dsll       $t3,$t8,0x4
    dsubu      $t3,$t3,$t8
    dsll       $t3,$t3,0x2
    daddu      $t3,$t3,$t8
    dsll       $t3,$t3,0x5
    daddu      $t3,$t3,$t8
    dsll       $t3,$t3,0x3
    daddu      $t3,$t3,$t8
    dsll       $t3,$t3,0x3
    sd         $t3,-15032($zero)
    lw         $a2,0($gp)
    dsll32     $a2,$a2,0x0
    dsrl32     $a2,$a2,0x0
    sll        $t2,$a2,0x0
    addiu      $t2,$t2,-1
    dsll32     $t2,$t2,0x0
    dsrl32     $t2,$t2,0x0
    daddu      $t2,$t2,$t3
    ddivu      $zero,$t2,$a2
    mflo       $t1
    dmultu     $a2,$t1
    mflo       $a6
    sd         $a6,-15016($zero)
    sd         $a6,-15032($zero)
    lwu        $a1,0($gp)
    ddivu      $zero,$a7,$a1
    mfhi       $t0
    lwu        $a5,0($gp)
    dsubu      $a7,$a7,$t0
    dsubu      $a6,$a6,$a7
    dmultu     $a5,$a6
    mflo       $a3
    ddivu      $zero,$a3,$a4
    teq        $a2,$zero,0x7
    teq        $a1,$zero,0x7
    mflo       $a0
    jal        initcounter
    sll        $a0,$a0,0x0
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00004a1c:
    b          .L0000493c
    li         $a1,1

glabel startaudioclock
    lw         $at,0($gp)
    daddiu     $sp,$sp,-32
    beqz       $at, .L00004a3c
    sd         $ra,16($sp)
.L00004a34:
    jr         $ra
    daddiu     $sp,$sp,32
.L00004a3c:
    jal        setmustrun
    lh         $a0,0($gp)
    li         $a1,1
    sw         $a1,0($gp)
    dsra32     $a0,$v0,0x0
    sw         $a0,8($sp)
    dsll32     $v1,$v0,0x0
    sd         $v0,0($sp)
    dsra32     $v0,$v1,0x10
    jal        startkgclock
    sh         $v0,12($sp)
    jal        restoremustrun
    ld         $a0,8($sp)
    b          .L00004a34
    ld         $ra,16($sp)

glabel stopaudioclock
    lw         $at,0($gp)
    daddiu     $sp,$sp,-32
    beqz       $at, .L00004abc
    sd         $ra,16($sp)
    jal        setmustrun
    lh         $a0,0($gp)
    sw         $zero,0($gp)
    dsra32     $a1,$v0,0x0
    lw         $v1,-15040($zero)
    sw         $a1,8($sp)
    dsll32     $a0,$v0,0x0
    sd         $v0,0($sp)
    dsra32     $v0,$a0,0x10
    beqz       $v1, .L00004ac8
    sh         $v0,12($sp)
.L00004ab4:
    jal        restoremustrun
    ld         $a0,8($sp)
.L00004abc:
    ld         $ra,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00004ac8:
    jal        slowkgclock
    nop
    b          .L00004ab4
    nop

glabel startprfclk
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        splprof
    nop
    li         $a1,-15040
    li         $v1,1
.L00004af0:
    ll         $a0,0($a1)
    addu       $a2,$a0,$v1
    move       $a0,$a2
    sc         $a2,0($a1)
    beqzl      $a2, .L00004af0
    nop
    lw         $at,-15040($zero)
    beq        $at, $v1, .L00004b28
    sd         $v0,8($sp)
.L00004b14:
    jal        splx
    move       $a0,$v0
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00004b28:
    jal        startkgclock
    nop
    b          .L00004b14
    ld         $v0,8($sp)

glabel stopprfclk
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        splprof
    nop
    lw         $at,-15040($zero)
    li         $a3,-15040
    beqz       $at, .L00004b94
    li         $a0,-1
.L00004b58:
    ll         $a1,0($a3)
    addu       $a2,$a1,$a0
    move       $a1,$a2
    sc         $a2,0($a3)
    beqzl      $a2, .L00004b58
    nop
    lw         $v1,-15040($zero)
    bnez       $v1, .L00004b94
    lh         $a4,0($gp)
    lh         $a3,-15456($zero)
    lw         $a0,0($gp)
    bne        $a3, $a4, .L00004ba8
    sd         $v0,8($sp)
    beqz       $a0, .L00004ba8
    sd         $v0,8($sp)
.L00004b94:
    jal        splx
    move       $a0,$v0
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00004ba8:
    jal        slowkgclock
    nop
    b          .L00004b94
    ld         $v0,8($sp)

glabel ackrtclock
    jr         $ra
    nop

glabel init_timebase
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    sd         $ra,16($sp)
    jal        rtodc
    sd         $s1,0($sp)
    sw         $v0,0($gp)
    ld         $t8,-32544($gp)
    lui        $s0,0xaff2
    ld         $t9,0($s0)
    sd         $t9,-32648($gp)
    sw         $zero,-32652($gp)
    sw         $zero,-32656($gp)
    sw         $v0,0($t8)
    sd         $zero,8($t8)
    sd         $zero,0($gp)
    sd         $zero,0($gp)
    ld         $at,0($s0)
    lui        $s1,0x17d
    ld         $v0,-32648($gp)
    ori        $s1,$s1,0x7840
    daddu      $v0,$s1,$v0
    sltu       $at,$at,$v0
    beqz       $at, .L00004c68
    ld         $a1,-32536($gp)
    b          .L00004c40
    nop
.L00004c28:
    ld         $ra,0($s0)
    ld         $at,-32648($gp)
    daddu      $at,$s1,$at
    sltu       $ra,$ra,$at
    beqz       $ra, .L00004c68
    ld         $a1,-32536($gp)
.L00004c40:
    jal        rtodc
    nop
    lw         $v1,0($gp)
    beq        $v1, $v0, .L00004c28
    ld         $ra,16($sp)
.L00004c54:
    ld         $s0,8($sp)
    ld         $s1,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
    ld         $a1,-32536($gp)
.L00004c68:
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,192
    b          .L00004c54
    ld         $ra,16($sp)

glabel inittodr
    lw         $v1,0($gp)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    lui        $a0,0xf
    ori        $a0,$a0,0x4240
    ddiv       $zero,$a0,$v1
    lbu        $at,0($gp)
    sd         $ra,8($sp)
    teq        $v1,$zero,0x7
    mflo       $v0
    beqz       $at, .L00004cc0
    sw         $v0,0($gp)
.L00004cb0:
    ld         $ra,8($sp)
.L00004cb4:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00004cc0:
    jal        rtodc
    nop
    lui        $a5,0x400
    lw         $a4,0($gp)
    slt        $a1,$v0,$a5
    slt        $a3,$v0,$s0
    bnez       $a1, .L00004ce8
    slt        $a0,$a4,$a5
    beqz       $a3, .L00004d34
    lui        $a3,0x966
.L00004ce8:
    beqz       $a0, .L00004d08
    ld         $a2,-32536($gp)
    li         $a1,4
    li         $a0,50
    jal        cmn_err_tag
    daddiu     $a2,$a2,264
    b          .L00004d1c
    nop
.L00004d08:
    ld         $a2,-32536($gp)
    li         $a1,4
    li         $a0,51
    jal        cmn_err_tag
    daddiu     $a2,$a2,296
.L00004d1c:
    move       $a0,$s0
    jal        settime
    move       $a1,$zero
    jal        wtodc
    nop
    lui        $a3,0x966
.L00004d34:
    ori        $a3,$a3,0x180
    slt        $a3,$s0,$a3
    lw         $a5,0($gp)
    li         $t0,1
    lui        $a7,0x2
    ld         $a0,-32536($gp)
    bnez       $a3, .L00004dc8
    ori        $a2,$a7,0xa300
    subu       $a3,$a5,$s0
    slt        $t2,$a5,$s0
    ld         $a0,-32536($gp)
    bltz       $a3, .L00004de0
    move       $a6,$a3
.L00004d68:
    slt        $t1,$a6,$a2
    ld         $a4,-32536($gp)
    bnez       $t1, .L00004cb0
    sw         $t0,-32652($gp)
    bnez       $t2, .L00004d84
    daddiu     $a3,$a0,456
    daddiu     $a3,$a4,464
.L00004d84:
    lui        $t3,0x1
    ori        $t3,$t3,0x5180
    ddiv       $zero,$a6,$t3
    ld         $a2,-32536($gp)
    li         $a1,4
    li         $a0,53
    daddiu     $a2,$a2,400
    mflo       $a4
    jal        cmn_err_tag
    teq        $t3,$zero,0x7
.L00004dac:
    ld         $a2,-32536($gp)
    li         $a1,4
    li         $a0,54
    jal        cmn_err_tag
    daddiu     $a2,$a2,424
    b          .L00004cb4
    ld         $ra,8($sp)
.L00004dc8:
    li         $a1,4
    daddiu     $a2,$a0,360
    jal        cmn_err_tag
    li         $a0,52
    b          .L00004dac
    nop
.L00004de0:
    b          .L00004d68
    dnegu      $a6,$a3

glabel query_cyclecntr
    lw         $v1,0($gp)
    sll        $at,$v1,0x5
    subu       $at,$at,$v1
    sll        $at,$at,0x2
    addu       $at,$at,$v1
    ld         $v0,-32568($gp)
    sll        $at,$at,0x3
    jr         $ra
    sw         $at,0($a0)

glabel query_fasttimer
    lw         $v1,0($gp)
    lui        $a0,0x3b9a
    ori        $a0,$a0,0xca00
    ddiv       $zero,$a0,$v1
    teq        $v1,$zero,0x7
    mflo       $v0
    jr         $ra
    sll        $v0,$v0,0x0

glabel query_cyclecntr_size
    jr         $ra
    li         $v0,64

glabel tick_maint
    lw         $at,0($gp)
    li         $a2,1
    daddiu     $sp,$sp,-16
    beq        $at, $a2, .L00004e60
    lw         $a1,-32616($gp)
.L00004e48:
    addiu      $v0,$a1,-1
.L00004e4c:
    sw         $v0,-32616($gp)
    beqz       $v0, .L00004e88
    sd         $ra,0($sp)
.L00004e58:
    jr         $ra
    daddiu     $sp,$sp,16
.L00004e60:
    lh         $v1,-15456($zero)
    bnez       $v1, .L00004e4c
    addiu      $v0,$a1,-1
    lui        $a0,0xaff2
    lui        $a3,0xfffe
    ld         $a0,0($a0)
    ori        $a3,$a3,0x17b8
    daddu      $a0,$a0,$a3
    b          .L00004e48
    sd         $a0,0($gp)
.L00004e88:
    jal        .text
    sw         $a2,0($gp)
    b          .L00004e58
    ld         $ra,0($sp)

glabel fastick_maint
    li         $v1,1
    sb         $v1,-16302($zero)
    lh         $v0,0($gp)
    lh         $at,-15456($zero)
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    beq        $at, $v0, .L00004ef8
    sd         $ra,8($sp)
.L00004ebc:
    jal        fast_user_prof
    move       $a0,$s0
    lw         $a0,-15040($zero)
    beqz       $a0, .L00004ee8
    ld         $ra,8($sp)
    ld         $a3,248($s0)
    ld         $a2,240($s0)
    ld         $a1,224($s0)
    jal        prfintr
    ld         $a0,288($s0)
    ld         $ra,8($sp)
.L00004ee8:
    sb         $zero,-16302($zero)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00004ef8:
    ld         $a0,0($gp)
    beqz       $a0, .L00004f0c
    nop
    jalr       $a0
    nop
.L00004f0c:
    ld         $a0,0($gp)
    beqz       $a0, .L00004ebc
    nop
    jalr       $a0
    nop
    b          .L00004ebc
    nop

glabel chktimedrift
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        rtodc
    nop
    lw         $a3,0($gp)
    subu       $a3,$v0,$a3
    slti       $at,$a3,3
    beqz       $at, .L00004f60
    slti       $a2,$a3,-2
    bnez       $a2, .L00004f64
    dsll       $a0,$a3,0x4
    ld         $ra,0($sp)
.L00004f58:
    jr         $ra
    daddiu     $sp,$sp,16
.L00004f60:
    dsll       $a0,$a3,0x4
.L00004f64:
    dsubu      $a0,$a0,$a3
    dsll       $a0,$a0,0x2
    daddu      $a0,$a0,$a3
    dsll       $a0,$a0,0x5
    daddu      $a0,$a0,$a3
    dsll       $a0,$a0,0x3
    daddu      $a0,$a0,$a3
    jal        doadjtime
    dsll       $a0,$a0,0x6
    b          .L00004f58
    ld         $ra,0($sp)

glabel onesec_maint
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        tlb_onesec_actions
    nop
    lw         $v0,0($gp)
    sra        $v1,$v0,0x1f
    xor        $v0,$v0,$v1
    subu       $v0,$v0,$v1
    andi       $v0,$v0,0x1f
    xor        $v0,$v0,$v1
    lw         $a1,-32652($gp)
    subu       $v0,$v0,$v1
    lw         $a2,0($gp)
    li         $at,100
    beqz       $v0, .L00004ff0
    sw         $at,-32616($gp)
    lw         $a1,-32644($gp)
.L00004fd4:
    li         $a2,60
    ld         $ra,0($sp)
    beqz       $a1, .L0000503c
    addiu      $v1,$a1,-1
    sw         $v1,-32644($gp)
.L00004fe8:
    jr         $ra
    daddiu     $sp,$sp,16
.L00004ff0:
    beqz       $a1, .L00004fd4
    lw         $a1,-32644($gp)
    lw         $a3,0($gp)
    lw         $a1,0($gp)
    slt        $a0,$a1,$a3
    beqz       $a0, .L00005018
    slt        $a5,$a2,$a1
    ld         $a4,0($gp)
    beqz       $a4, .L00005044
    nop
.L00005018:
    beqz       $a5, .L00004fd4
    lw         $a1,-32644($gp)
    lui        $a6,0xa
    ori        $a6,$a6,0xfc80
    addu       $a6,$a3,$a6
    jal        wtodc
    sw         $a6,0($gp)
    b          .L00004fd4
    lw         $a1,-32644($gp)
.L0000503c:
    b          .L00004fe8
    sw         $a2,-32644($gp)
.L00005044:
    jal        chktimedrift
    nop
    b          .L00004fd4
    lw         $a1,-32644($gp)

glabel tick_actions
    lbu        $at,-14624($zero)
    daddiu     $sp,$sp,-16
    beqz       $at, .L0000506c
    sd         $ra,0($sp)
    jal        ecc_log
    nop
.L0000506c:
    jal        tlb_tick_actions
    nop
    jal        flush_console
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
    lw         $v0,0($gp)
    lui        $a0,0xbe
    ori        $a0,$a0,0xbc20
    ddiv       $zero,$a0,$v0
    lui        $v1,0x1
    sw         $v0,-32596($gp)
    ori        $v1,$v1,0xe848
    sd         $v1,-32584($gp)
    teq        $v0,$zero,0x7
    mflo       $at
    jr         $ra
    sd         $at,-32592($gp)

glabel rtc_read
    lui        $v0,0xaff2
    jr         $ra
    ld         $v0,0($v0)

glabel rtc_resolution
    jr         $ra
    li         $v0,80
    lw         $v0,-32596($gp)
    lw         $at,0($gp)
    daddiu     $sp,$sp,-16
    sd         $s8,0($sp)
    move       $s8,$a0
    bne        $at, $v0, .L00005114
    sd         $ra,8($sp)
.L000050e8:
    ld         $v1,-32592($gp)
    ddivu      $zero,$s8,$v1
    mflo       $a0
    dmultu     $v1,$a0
    ld         $s8,0($sp)
    daddiu     $sp,$sp,16
    mflo       $v0
    jr         $ra
    teq        $v1,$zero,0x7
.L00005114:
    jal        .text
    nop
    b          .L000050e8
    ld         $ra,8($sp)

glabel set_timer_intr
    daddiu     $sp,$sp,-16
    lui        $a4,0xaff2
    sd         $ra,0($sp)
    move       $a3,$zero
    jal        .text
    ld         $a4,0($a4)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
    daddiu     $sp,$sp,-48
    sd         $a3,0($sp)
    sd         $ra,24($sp)
    move       $v0,$a0
    sd         $s0,8($sp)
    li         $t0,1
    move       $s0,$a1
    sd         $s1,16($sp)
    move       $s1,$a4
    beqz       $a1, .L00005270
    sd         $s2,32($sp)
    dsubu      $at,$a1,$a4
    blez       $at, .L00005270
    nop
    lw         $a1,-16312($zero)
    move       $s2,$t0
    andi       $a1,$a1,0x40
.L0000518c:
    ld         $a0,-15024($zero)
    li         $a7,120
    daddiu     $a6,$s0,119
    beqz       $a0, .L000052f4
    daddiu     $v0,$s0,600
    beq        $t0, $a0, .L00005330
    sltu       $a2,$a0,$v0
.L000051a8:
    bnez       $a2, .L000051c4
    move       $s0,$a0
    ddiv       $zero,$a6,$a7
    mflo       $t8
    dsll       $s0,$t8,0x4
    dsubu      $s0,$s0,$t8
    dsll       $s0,$s0,0x3
.L000051c4:
    bnez       $a1, .L00005214
    ld         $ra,0($sp)
    ld         $v0,-15016($zero)
    sltu       $t9,$v0,$s0
    beqz       $t9, .L000052bc
    nop
    beqz       $ra, .L00005254
    lwu        $a3,0($gp)
    dsubu      $a4,$s0,$v0
    dmultu     $a3,$a4
    li         $a2,125
    mflo       $a1
    ddivu      $zero,$a1,$a2
    mflo       $a0
    jal        resetcounter_val
    sll        $a0,$a0,0x0
    b          .L00005254
    sd         $s0,-15016($zero)
.L00005214:
    lwu        $a3,0($gp)
    dsubu      $a4,$s0,$s1
    dmultu     $a3,$a4
    li         $a2,125
    mflo       $a1
    ddivu      $zero,$a1,$a2
    li         $a0,-1
    dsrl32     $a0,$a0,0x0
    mflo       $a2
    sltu       $a1,$a0,$a2
    movz       $a0,$a2,$a1
    jal        resetcounter_val
    sll        $a0,$a0,0x0
    sd         $s0,-15016($zero)
.L00005254:
    move       $v0,$s2
    ld         $ra,24($sp)
.L0000525c:
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    ld         $s2,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00005270:
    lh         $a5,-15456($zero)
    bne        $a5, $v0, .L0000528c
    dsll32     $a0,$v0,0x10
    jal        timepoke
    nop
    b          .L0000529c
    nop
.L0000528c:
    li         $a2,1
    ld         $a1,-32520($gp)
    jal        cpuaction
    dsra32     $a0,$a0,0x10
.L0000529c:
    lw         $a1,-16312($zero)
    andi       $a1,$a1,0x40
    move       $s2,$zero
    move       $v0,$zero
    beqz       $a1, .L00005328
    li         $t0,1
    b          .L0000525c
    ld         $ra,24($sp)
.L000052bc:
    beq        $s0, $v0, .L00005254
    lwu        $a3,0($gp)
    dsubu      $a4,$v0,$s0
    dmultu     $a3,$a4
    li         $a2,125
    mflo       $a1
    ddivu      $zero,$a1,$a2
    mflo       $a0
    jal        trimcompare
    sll        $a0,$a0,0x0
    b          .L00005254
    sd         $s0,-15016($zero)
.L000052f4:
    ld         $a0,-15032($zero)
    sltu       $a5,$a0,$v0
    beqz       $a5, .L0000530c
    li         $ra,120
    beqz       $a1, .L0000538c
    li         $ra,120
.L0000530c:
    daddiu     $t9,$s0,119
    ddiv       $zero,$t9,$ra
    mflo       $t8
    dsll       $s0,$t8,0x4
    dsubu      $s0,$s0,$t8
    b          .L000051c4
    dsll       $s0,$s0,0x3
.L00005328:
    b          .L0000518c
    ld         $s0,-15032($zero)
.L00005330:
    ld         $a0,-15032($zero)
    sd         $a0,-15024($zero)
    lw         $a4,0($gp)
    daddu      $at,$a4,$s1
    sltu       $at,$at,$a0
    beqz       $at, .L000051a8
    sltu       $a2,$a0,$v0
.L0000534c:
    dsubu      $a0,$a0,$a4
    sd         $a0,-15024($zero)
    lw         $a4,0($gp)
    daddu      $v1,$a4,$s1
    sltu       $v1,$v1,$a0
    beqz       $v1, .L00005384
    nop
    dsubu      $a0,$a0,$a4
    sd         $a0,-15024($zero)
    lw         $a4,0($gp)
    daddu      $a2,$a4,$s1
    sltu       $a2,$a2,$a0
    bnez       $a2, .L0000534c
    nop
.L00005384:
    b          .L000051a8
    sltu       $a2,$a0,$v0
.L0000538c:
    b          .L000051c4
    move       $s0,$a0

glabel timeout_get_queuehead
    lw         $v1,16($a1)
    ld         $v0,-32528($gp)
    srl        $v1,$v1,0x19
    dsll       $v1,$v1,0x4
    daddu      $v0,$v0,$v1
    ld         $v0,8($v0)
    lui        $a6,0xff
    lw         $t9,1448($v0)
    daddiu     $sp,$sp,-48
    ori        $a6,$a6,0xffff
    sd         $ra,24($sp)
    and        $ra,$a6,$t9
    sd         $s0,16($sp)
    lui        $s0,0xff00
    addiu      $ra,$ra,1
    and        $t9,$s0,$t9
    and        $ra,$a6,$ra
    li         $a3,3
    or         $t9,$t9,$ra
    sd         $s2,8($sp)
    move       $s2,$a1
    and        $a5,$a6,$t9
    li         $a1,4
    sd         $s1,32($sp)
    daddiu     $s1,$v0,1432
    daddiu     $ra,$v0,1416
    beqz       $a5, .L0000557c
    sw         $t9,1448($v0)
.L00005404:
    li         $a7,1
    lw         $a2,120($ra)
    lui        $v0,0x100
    bne        $a2, $a5, .L000054b8
    sd         $a3,0($sp)
    b          .L00005440
    ld         $a4,24($ra)
.L00005420:
    and        $t9,$s0,$t9
    addiu      $at,$a5,1
    and        $at,$a6,$at
    or         $t9,$t9,$at
    and        $a5,$a6,$t9
    beqz       $a5, .L00005560
    sw         $t9,16($s1)
.L0000543c:
    ld         $a4,24($ra)
.L00005440:
    move       $t1,$a5
    beqz       $a4, .L000054a8
    lui        $a7,0x100
    b          .L0000546c
    lw         $t3,16($a4)
.L00005454:
    beqz       $t2, .L00005460
    nop
    move       $t1,$t3
.L00005460:
    beqz       $a4, .L00005498
    slt        $t8,$a7,$v0
    lw         $t3,16($a4)
.L0000546c:
    and        $t3,$a6,$t3
    sltu       $t2,$t3,$t1
    sltu       $t0,$a5,$t3
    beq        $a5, $t3, .L00005420
    sltu       $t8,$t3,$a7
    beqz       $t0, .L00005454
    ld         $a4,8($a4)
    beqz       $t8, .L00005454
    nop
    b          .L00005460
    move       $a7,$t3
.L00005498:
    beqz       $t8, .L000054a8
    nop
    b          .L000054ac
    sw         $a7,120($ra)
.L000054a8:
    sw         $t1,120($ra)
.L000054ac:
    lw         $a5,16($s1)
    li         $a7,1
    and        $a5,$a6,$a5
.L000054b8:
    lw         $a6,16($s2)
    ld         $v0,0($s2)
    and        $a6,$s0,$a6
    li         $a4,-100
    or         $a6,$a5,$a6
    li         $a5,1
    blez       $v0, .L00005514
    sw         $a6,16($s2)
    beq        $a7, $a0, .L00005528
    nop
.L000054e0:
    beq        $a0, $a1, .L00005528
    nop
    beqz       $a0, .L00005598
    ld         $a7,0($sp)
    beq        $a0, $a7, .L0000559c
    lui        $a0,0xaff2
.L000054f8:
    ld         $ra,24($sp)
    ld         $s2,8($sp)
    ld         $s0,16($sp)
    move       $v0,$s1
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00005514:
    beq        $v0, $a4, .L000055d0
    nop
    sd         $a5,0($s2)
    bne        $a5, $a0, .L000054e0
    li         $v0,1
.L00005528:
    lui        $a0,0xaff2
    move       $s0,$v0
    jal        .text
    ld         $a0,0($a0)
    lui        $a3,0x7fff
    ori        $a3,$a3,0xffff
    ld         $a2,-32592($gp)
    sltu       $a4,$a3,$s0
    movz       $a3,$s0,$a4
    dmultu     $a2,$a3
    mflo       $a1
    daddu      $a1,$v0,$a1
    b          .L000054f8
    sd         $a1,0($s2)
.L00005560:
    addiu      $at,$a5,1
    and        $t9,$s0,$t9
    and        $at,$a6,$at
    or         $t9,$t9,$at
    sw         $t9,16($s1)
    b          .L0000543c
    and        $a5,$a6,$t9
.L0000557c:
    addiu      $at,$a5,1
    and        $t9,$s0,$t9
    and        $at,$a6,$at
    or         $t9,$t9,$at
    sw         $t9,1448($v0)
    b          .L00005404
    and        $a5,$a6,$t9
.L00005598:
    lui        $a0,0xaff2
.L0000559c:
    move       $s0,$v0
    jal        .text
    ld         $a0,0($a0)
    lui        $a3,0x7fff
    ori        $a3,$a3,0xffff
    ld         $a2,-32584($gp)
    sltu       $a4,$a3,$s0
    movz       $a3,$s0,$a4
    dmultu     $a2,$a3
    mflo       $a1
    daddu      $a1,$v0,$a1
    b          .L000054f8
    sd         $a1,0($s2)
.L000055d0:
    b          .L000054f8
    sd         $zero,0($s2)

glabel chktimeout_tick
    daddiu     $sp,$sp,-64
    srl        $v1,$a1,0x19
    sd         $s0,40($sp)
    dsll32     $v1,$v1,0x10
    ld         $v0,-32528($gp)
    dsra32     $v1,$v1,0x10
    ld         $s0,0($sp)
    dsll       $v1,$v1,0x4
    sd         $s3,16($sp)
    daddu      $v0,$v0,$v1
    ld         $v0,8($v0)
    sd         $s2,8($sp)
    lw         $at,1584($v0)
    move       $s2,$a0
    sd         $s5,32($sp)
    move       $s5,$a1
    sd         $s4,24($sp)
    andi       $at,$at,0x1
    move       $s4,$a2
    move       $s3,$a3
    sd         $ra,48($sp)
    sd         $s1,56($sp)
    beqz       $at, .L00005650
    daddiu     $v0,$v0,1416
    jal        do_chktimeout_tick
    move       $a0,$v0
    bnez       $v0, .L000056a4
    move       $s0,$v0
    b          .L00005654
    lw         $a0,0($gp)
.L00005650:
    lw         $a0,0($gp)
.L00005654:
    blez       $a0, .L0000570c
    move       $s1,$zero
.L0000565c:
    jal        cpu_enabled
    move       $a0,$s1
    beqz       $v0, .L00005734
    ld         $v0,-32528($gp)
    dsll       $v1,$s1,0x4
    daddu      $v0,$v0,$v1
    ld         $v0,8($v0)
    lw         $v1,1584($v0)
    andi       $v1,$v1,0x1
    beqz       $v1, .L00005734
    daddiu     $v0,$v0,1416
    move       $a0,$v0
    move       $a1,$s5
    move       $a2,$s4
    jal        do_chktimeout_tick
    move       $a3,$s3
    beqz       $v0, .L00005734
    move       $s0,$v0
.L000056a4:
    lui        $a2,0xaff2
    ld         $a2,0($a2)
    li         $v0,3
    li         $a0,4
    ld         $a1,-32592($gp)
    beqz       $s2, .L000056e8
    dsubu      $s0,$s0,$a2
    beq        $s2, $v0, .L000056e8
    li         $v0,1
    beq        $s2, $v0, .L000056d8
    nop
    bne        $s2, $a0, .L00005708
    slti       $a4,$s0,1
.L000056d8:
    ddiv       $zero,$s0,$a1
    mflo       $s0
    b          .L00005704
    teq        $a1,$zero,0x7
.L000056e8:
    ld         $a3,-32584($gp)
    ddiv       $zero,$s0,$a3
    li         $v0,1
    teq        $a3,$zero,0x7
    mflo       $s0
.L00005704:
    slti       $a4,$s0,1
.L00005708:
    movn       $s0,$v0,$a4
.L0000570c:
    ld         $s2,8($sp)
.L00005710:
    ld         $s3,16($sp)
    ld         $s4,24($sp)
    ld         $ra,48($sp)
    ld         $s1,56($sp)
    ld         $s5,32($sp)
    move       $v0,$s0
    ld         $s0,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00005734:
    addiu      $s1,$s1,1
    lw         $a5,0($gp)
    dsll32     $s1,$s1,0x10
    dsra32     $s1,$s1,0x10
    slt        $a5,$s1,$a5
    bnez       $a5, .L0000565c
    nop
    b          .L00005710
    ld         $s2,8($sp)

glabel fast_timeout
    daddiu     $sp,$sp,-80
    sd         $a7,72($sp)
    sd         $a6,64($sp)
    sd         $a5,56($sp)
    sd         $a4,48($sp)
    sd         $a3,40($sp)
    sd         $a2,32($sp)
    sd         $a1,24($sp)
    sd         $ra,0($sp)
    jal        callout_get_pri
    sd         $a0,16($sp)
    ld         $a1,16($sp)
    ld         $a2,24($sp)
    move       $a4,$v0
    lh         $a0,-15456($zero)
    li         $a5,1
    ld         $a3,32($sp)
    jal        dotimeout
    daddiu     $a6,$sp,40
    beqz       $v0, .L000057b8
    sd         $v0,8($sp)
.L000057ac:
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L000057b8:
    ld         $a1,-32536($gp)
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,472
    b          .L000057ac
    ld         $v0,8($sp)

glabel fast_timeout_nothrd
    daddiu     $sp,$sp,-80
    sd         $a6,64($sp)
    sd         $a7,72($sp)
    sd         $a5,56($sp)
    move       $v0,$a1
    sd         $a3,40($sp)
    move       $a1,$a0
    move       $at,$a2
    sd         $a2,32($sp)
    move       $a2,$v0
    move       $a3,$at
    sd         $a4,48($sp)
    move       $a4,$zero
    li         $a5,4
    lh         $a0,-15456($zero)
    sd         $ra,0($sp)
    jal        dotimeout
    daddiu     $a6,$sp,40
    beqz       $v0, .L0000582c
    sd         $v0,8($sp)
.L00005820:
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0000582c:
    ld         $a1,-32536($gp)
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$a1,472
    b          .L00005820
    ld         $v0,8($sp)

glabel callout_time_to_hz
    lui        $v1,0xaff2
    ld         $v1,0($v1)
    ld         $a1,-32584($gp)
    dsubu      $v1,$a0,$v1
    ddivu      $zero,$v1,$a1
    teq        $a1,$zero,0x7
    mflo       $v0
    li         $v1,1
    sll        $v0,$v0,0x0
    slti       $at,$v0,1
    jr         $ra
    movn       $v0,$v1,$at

glabel timein_body
    daddiu     $sp,$sp,-96
    daddiu     $at,$a0,112
    sd         $at,0($sp)
    sd         $s6,16($sp)
    ld         $s6,-32512($gp)
    sd         $s2,64($sp)
    sd         $s0,72($sp)
    sd         $s8,56($sp)
    sd         $s5,48($sp)
    sd         $s1,40($sp)
    move       $s1,$a0
    sd         $s3,8($sp)
    daddiu     $s3,$a0,8
    daddiu     $s5,$a0,88
    sd         $s4,24($sp)
    lui        $s4,0xaff2
    li         $s8,1
    sd         $s7,32($sp)
    li         $s7,2
    b          .L00005914
    sd         $ra,80($sp)
.L000058c8:
    ld         $v1,8($s0)
    sd         $v1,24($s1)
    lh         $v0,70($s0)
    andi       $v0,$v0,0x2
    beqz       $v0, .L00005990
    move       $a0,$s1
    lw         $a0,16($s0)
    sd         $s8,88($s1)
    move       $a1,$s2
    sw         $a0,104($s1)
    jal        mutex_spinunlock
    move       $a0,$s3
    jal        timein_entry
    move       $a0,$s0
    move       $a0,$s5
    jal        test_and_set_int64
    move       $a1,$zero
    beq        $v0, $s7, .L000059b8
    move       $a0,$s3
.L00005914:
    move       $a0,$s3
.L00005918:
    jal        mutex_spinlock_spl
    move       $a1,$s6
    ld         $s0,24($s1)
    beqz       $s0, .L000059a4
    move       $s2,$v0
    ld         $a1,0($s0)
    ld         $a2,0($s4)
    sltu       $a2,$a2,$a1
    beqz       $a2, .L000058c8
    nop
    lw         $a0,168($s1)
    move       $a2,$zero
    jal        set_timer_intr
    srl        $a0,$a0,0x10
    beqz       $v0, .L000058c8
    move       $a0,$s3
    jal        mutex_spinunlock
    move       $a1,$s2
.L00005960:
    ld         $s2,64($sp)
    ld         $s3,8($sp)
    ld         $s6,16($sp)
    ld         $s4,24($sp)
    ld         $s7,32($sp)
    ld         $s0,72($sp)
    ld         $ra,80($sp)
    ld         $s1,40($sp)
    ld         $s5,48($sp)
    ld         $s8,56($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L00005990:
    move       $a1,$s0
    jal        timein_entry_ithrd
    move       $a2,$s2
    b          .L00005918
    move       $a0,$s3
.L000059a4:
    move       $a0,$s3
    jal        mutex_spinunlock
    move       $a1,$v0
    b          .L00005960
    nop
.L000059b8:
    jal        mutex_spinlock_spl
    move       $a1,$s6
    move       $s0,$v0
    jal        sv_broadcast
    ld         $a0,0($sp)
    move       $a0,$s3
    jal        mutex_spinunlock
    move       $a1,$s0
    b          .L00005918
    move       $a0,$s3

glabel timein
    ld         $at,-15744($zero)
    andi       $at,$at,0x20
    daddiu     $sp,$sp,-16
    bnez       $at, .L00005a50
    sd         $ra,0($sp)
    lw         $v1,-32596($gp)
.L000059f8:
    lw         $v0,0($gp)
    bne        $v0, $v1, .L00005a40
    nop
.L00005a04:
    jal        siroff
    li         $a0,256
    lh         $a1,-15456($zero)
    ld         $a0,-32528($gp)
    dsll       $a1,$a1,0x4
    daddu      $a0,$a0,$a1
    ld         $a0,8($a0)
    jal        timein_body
    daddiu     $a0,$a0,1416
    ld         $a2,-15744($zero)
    andi       $a2,$a2,0x20
    bnez       $a2, .L00005a70
    ld         $ra,0($sp)
.L00005a38:
    jr         $ra
    daddiu     $sp,$sp,16
.L00005a40:
    jal        .text
    nop
    b          .L00005a04
    nop
.L00005a50:
    li         $a0,109
    move       $a1,$zero
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L000059f8
    lw         $v1,-32596($gp)
.L00005a70:
    li         $a1,109
    li         $a0,101
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L00005a38
    ld         $ra,0($sp)

glabel migrate_timeouts
    ld         $a2,-32528($gp)
    daddiu     $sp,$sp,-160
    sd         $s1,88($sp)
    sd         $s0,96($sp)
    sd         $ra,112($sp)
    sd         $s3,128($sp)
    sd         $s5,80($sp)
    sd         $s8,120($sp)
    sd         $s4,104($sp)
    sd         $s7,72($sp)
    move       $s7,$a1
    dsll       $s4,$a0,0x4
    sd         $s6,136($sp)
    lui        $s6,0xaff2
    beq        $a0, $a1, .L00005c08
    sd         $s2,144($sp)
    daddu      $s4,$a2,$s4
    ld         $s4,8($s4)
    lui        $s5,0xbe
    ori        $s5,$s5,0xbc20
    daddiu     $s1,$s4,1424
    ld         $s8,-32512($gp)
    b          .L00005b18
    daddiu     $s4,$s4,1416
.L00005af0:
    move       $a0,$s7
    move       $a3,$s0
    move       $a4,$t2
    move       $a5,$t3
    jal        clock_prtimeout_nothrd
    move       $a6,$a7
    move       $a2,$v0
.L00005b0c:
    sw         $a2,0($s2)
    jal        splx
    move       $a0,$s3
.L00005b18:
    jal        allocate_migrate_timeout
    nop
    jal        splhi
    move       $s2,$v0
    move       $s3,$v0
    move       $a0,$s1
    jal        mutex_spinlock_spl
    move       $a1,$s8
    ld         $s0,24($s4)
    move       $a4,$zero
    daddiu     $a5,$sp,0
    beqz       $s0, .L00005bec
    move       $a0,$s0
    ld         $t8,8($s0)
    li         $a3,9
    sd         $t8,24($s4)
.L00005b58:
    addiu      $a3,$a3,-1
    daddu      $t9,$a4,$a0
    ld         $t9,0($t9)
    daddu      $ra,$a4,$a5
    addiu      $a4,$a4,8
    bgtz       $a3, .L00005b58
    sd         $t9,0($ra)
    move       $a0,$s1
    jal        mutex_spinunlock
    move       $a1,$v0
    jal        callout_free
    move       $a0,$s0
    ld         $ra,0($s6)
    ld         $s0,0($sp)
    dsubu      $ra,$s0,$ra
    ddivu      $zero,$ra,$s5
    mflo       $a1
    lw         $a0,16($sp)
    jal        add_migrated_timeout
    move       $a2,$s2
    ld         $a7,56($sp)
    lh         $at,70($sp)
    ld         $t3,48($sp)
    ld         $t2,40($sp)
    andi       $at,$at,0x2
    ld         $a2,32($sp)
    move       $s2,$v0
    bnez       $at, .L00005af0
    ld         $a1,24($sp)
    move       $a0,$s7
    move       $a3,$s0
    move       $a5,$t2
    lh         $a4,66($sp)
    jal        clock_prtimeout
    move       $a6,$t3
    b          .L00005b0c
    move       $a2,$v0
.L00005bec:
    move       $a0,$s1
    jal        mutex_spinunlock
    move       $a1,$v0
    jal        splx
    move       $a0,$s3
    jal        free_migrate_timeout
    move       $a0,$s2
.L00005c08:
    ld         $s2,144($sp)
    ld         $s6,136($sp)
    ld         $s3,128($sp)
    ld         $s8,120($sp)
    ld         $s4,104($sp)
    ld         $s0,96($sp)
    ld         $ra,112($sp)
    ld         $s1,88($sp)
    ld         $s5,80($sp)
    ld         $s7,72($sp)
    jr         $ra
    daddiu     $sp,$sp,160

glabel settimetrim
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $ra,8($sp)
    jal        cap_able
    lui        $a0,0x800
    beqz       $v0, .L00005cac
    lui        $a2,0x2d
    lui        $at,0xffd2
    ori        $at,$at,0x3940
    slt        $at,$s0,$at
    bnez       $at, .L00005c7c
    li         $v0,22
    ori        $v1,$a2,0xc6c0
    slt        $v1,$v1,$s0
    beqz       $v1, .L00005c8c
    ld         $a1,-32512($gp)
.L00005c7c:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00005c8c:
    jal        mutex_spinlock_spl
    daddiu     $a0,$gp,0
    move       $a1,$v0
    sw         $s0,0($gp)
    jal        mutex_spinunlock
    daddiu     $a0,$gp,0
    b          .L00005c7c
    move       $v0,$zero
.L00005cac:
    b          .L00005c7c
    li         $v0,1

glabel gettimetrim
    jr         $ra
    lw         $v0,0($gp)

glabel doadjtime
    daddiu     $sp,$sp,-48
    sd         $s3,8($sp)
    sd         $ra,24($sp)
    sd         $s1,32($sp)
    lui        $a1,0xf
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $a0, .L00005e24
    sd         $s2,40($sp)
    slti       $v0,$a0,0
    bltz       $a0, .L00005e14
    ld         $s2,-32560($gp)
.L00005cec:
    slti       $a2,$s0,1000
    dsll       $a0,$s0,0x2
    beqz       $a2, .L00005dec
    dsubu      $a0,$a0,$s0
    bnez       $v0, .L00005e0c
    dsll       $s2,$a0,0x2
.L00005d04:
    jal        splprof
    nop
    jal        .text
    move       $s3,$v0
    ld         $s1,-32648($gp)
    daddiu     $a0,$gp,0
    jal        nested_spinlock
    sd         $s3,16($sp)
    lw         $a2,-32652($gp)
    addiu      $a2,$a2,1
    sw         $a2,-32652($gp)
    sync
    ld         $a0,0($gp)
    ld         $a1,0($gp)
    move       $s3,$zero
    dsll       $a7,$s0,0x5
    daddu      $a0,$a0,$a1
    dsubu      $a6,$a7,$s0
    dsubu      $a0,$a0,$s1
    li         $t1,1000
    dsll       $a5,$a6,0x2
    ld         $v0,16($sp)
    daddu      $a4,$a5,$s0
    blez       $a0, .L00005da4
    dsll       $a1,$a4,0x3
    ld         $t3,0($gp)
    dmult      $t3,$a0
    ld         $a3,0($gp)
    mflo       $t2
    ddiv       $zero,$t2,$a3
    mflo       $t0
    ddiv       $zero,$t0,$t1
    teq        $a3,$zero,0x7
    mflo       $s3
.L00005da4:
    bltz       $s2, .L00005e1c
    sd         $a1,0($gp)
    sd         $s2,0($gp)
.L00005db0:
    sd         $s1,0($gp)
    daddiu     $a0,$gp,0
    sync
    lw         $t8,-32652($gp)
    move       $a1,$v0
    jal        mutex_spinunlock
    sw         $t8,-32656($gp)
    ld         $s0,0($sp)
.L00005dd0:
    ld         $ra,24($sp)
    ld         $s1,32($sp)
    ld         $s2,40($sp)
    move       $v0,$s3
    ld         $s3,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00005dec:
    ori        $a2,$a1,0x4240
    slt        $a2,$a2,$s0
    dsll       $a0,$s0,0x2
    beqz       $a2, .L00005e04
    dsubu      $a0,$a0,$s0
    dsll       $s2,$a0,0x7
.L00005e04:
    beqz       $v0, .L00005d04
    nop
.L00005e0c:
    b          .L00005d04
    dnegu      $s0,$s0
.L00005e14:
    b          .L00005cec
    dnegu      $s0,$a0
.L00005e1c:
    b          .L00005db0
    sd         $zero,0($gp)
.L00005e24:
    jal        splprof
    nop
    jal        .text
    move       $s0,$v0
    daddiu     $a0,$gp,0
    jal        nested_spinlock
    ld         $s1,-32648($gp)
    ld         $a0,0($gp)
    ld         $a1,0($gp)
    daddu      $a0,$a0,$a1
    dsubu      $a0,$a0,$s1
    blez       $a0, .L00005ea8
    li         $a4,1000
    ld         $a6,0($gp)
    dmult      $a6,$a0
    ld         $a2,0($gp)
    mflo       $a5
    ddiv       $zero,$a5,$a2
    mflo       $a3
    ddiv       $zero,$a3,$a4
    teq        $a2,$zero,0x7
    mflo       $s3
.L00005e94:
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    move       $a1,$s0
    b          .L00005dd0
    ld         $s0,0($sp)
.L00005ea8:
    b          .L00005e94
    move       $s3,$zero
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinlock_spl
    ld         $a1,-32512($gp)
    lw         $t0,-32652($gp)
    lui        $a7,0xaff2
    addiu      $t0,$t0,1
    sw         $t0,-32652($gp)
    sync
    ld         $a7,0($a7)
    ld         $at,-32648($gp)
    lui        $t8,0xbe
    ld         $t1,-32544($gp)
    ori        $t2,$t8,0xbc20
    lw         $t3,0($gp)
    beqz       $at, .L000060a4
    move       $a1,$a7
    ld         $a4,-32648($gp)
    ld         $a5,0($gp)
    ld         $a6,0($gp)
    daddu      $a5,$a5,$a6
    sltu       $a5,$a7,$a5
    beqz       $a5, .L00005f3c
    dsubu      $a4,$a7,$a4
    ld         $at,0($gp)
    dmult      $at,$a4
    ld         $t9,0($gp)
    mflo       $ra
    ddiv       $zero,$ra,$t9
    mflo       $t0
    b          .L00005f40
    teq        $t9,$zero,0x7
.L00005f3c:
    ld         $t0,0($gp)
.L00005f40:
    ld         $v1,0($gp)
    beqz       $v1, .L00005f7c
    dmult      $t3,$a4
    sll        $zero,$zero,0x2
    ld         $a5,0($gp)
    ld         $a3,0($gp)
    dsubu      $a3,$a3,$a4
    bltz       $t0, .L0000608c
    dsubu      $a5,$a5,$t0
    blez       $a5, .L00006094
    slti       $a6,$a3,0
.L00005f6c:
    movn       $a3,$zero,$a6
.L00005f70:
    sd         $a3,0($gp)
    sd         $a5,0($gp)
    sd         $a1,0($gp)
.L00005f7c:
    mflo       $v1
    ddiv       $zero,$v1,$t2
    ld         $t9,8($t1)
    ld         $at,-32648($gp)
    dsubu      $at,$a7,$at
    dsll       $ra,$at,0x2
    lui        $a6,0x3b9a
    daddu      $ra,$ra,$at
    dsll       $ra,$ra,0x4
    mflo       $a1
    daddu      $ra,$t0,$ra
    daddu      $t9,$t9,$a1
    ori        $a6,$a6,0xca00
    daddu      $t9,$t9,$ra
    move       $a3,$zero
    slt        $t9,$t9,$a6
    teq        $t2,$zero,0x7
    lui        $a5,0xc465
    bnez       $t9, .L00006060
    ori        $a5,$a5,0x3600
    ld         $a4,8($t1)
    ld         $t3,-32648($gp)
    dsubu      $t3,$a7,$t3
    dsll       $t2,$t3,0x2
    daddu      $t2,$t2,$t3
    dsll       $t2,$t2,0x4
    daddu      $a4,$a4,$a1
    daddu      $t2,$t0,$t2
    daddu      $a4,$a4,$t2
.L00005ff8:
    daddu      $a4,$a5,$a4
    slt        $t8,$a4,$a6
    addiu      $a3,$a3,1
    bnez       $t8, .L0000601c
    nop
    daddu      $a4,$a5,$a4
    slt        $t9,$a4,$a6
    beqz       $t9, .L00005ff8
    addiu      $a3,$a3,1
.L0000601c:
    sd         $a7,-32648($gp)
    beqz       $a3, .L0000603c
    sd         $a4,8($t1)
    lw         $at,0($t1)
    addu       $at,$at,$a3
    sw         $at,0($t1)
    lw         $ra,0($t1)
    sw         $ra,0($gp)
.L0000603c:
    daddiu     $a0,$gp,0
    sync
    lw         $v1,-32652($gp)
    move       $a1,$v0
    jal        mutex_spinunlock
    sw         $v1,-32656($gp)
    ld         $ra,0($sp)
.L00006058:
    jr         $ra
    daddiu     $sp,$sp,16
.L00006060:
    ld         $a4,8($t1)
    ld         $a6,-32648($gp)
    dsubu      $a6,$a7,$a6
    dsll       $a5,$a6,0x2
    daddu      $a5,$a5,$a6
    move       $a3,$zero
    dsll       $a5,$a5,0x4
    daddu      $a4,$a4,$a1
    daddu      $a5,$t0,$a5
    b          .L0000601c
    daddu      $a4,$a4,$a5
.L0000608c:
    bltz       $a5, .L00005f6c
    slti       $a6,$a3,0
.L00006094:
    move       $a1,$zero
    move       $a3,$zero
    b          .L00005f70
    move       $a5,$zero
.L000060a4:
    ld         $t0,-32544($gp)
    sd         $a7,-32648($gp)
    sw         $zero,0($t0)
    sd         $zero,8($t0)
    daddiu     $a0,$gp,0
    sync
    sw         $zero,-32652($gp)
    move       $a1,$v0
    jal        mutex_spinunlock
    sw         $zero,-32656($gp)
    b          .L00006058
    ld         $ra,0($sp)

glabel nanotime_syscall
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    sd         $ra,16($sp)
    jal        splprof
    move       $s0,$a0
    lui        $ra,0xc465
    ld         $t3,-32544($gp)
    lui        $a1,0xaff2
.L000060f4:
    lw         $t9,-32656($gp)
    sync
    ld         $a7,-32648($gp)
    lw         $t0,0($t3)
    ld         $t1,8($t3)
    ld         $a4,0($a1)
    ld         $t2,0($gp)
    ld         $a5,0($gp)
    ld         $a6,0($gp)
    sync
    lw         $t8,-32652($gp)
    bne        $t8, $t9, .L000060f4
    sll        $t1,$t1,0x0
    daddu      $at,$a5,$t2
    dsll32     $t8,$t1,0x0
    sltu       $at,$a4,$at
    lw         $t3,0($gp)
    dsubu      $a1,$a4,$a7
    lui        $a0,0xbe
    sd         $v0,0($sp)
    beqz       $at, .L00006170
    ori        $t9,$a0,0xbc20
    beqz       $a5, .L00006170
    dsubu      $a1,$a4,$a7
    dmult      $a6,$a1
    mflo       $v0
    ddiv       $zero,$v0,$a5
    mflo       $a6
    teq        $a5,$zero,0x7
.L00006170:
    dmult      $t3,$a1
    mflo       $a7
    ddiv       $zero,$a7,$t9
    dsll       $a5,$a1,0x2
    dsrl32     $a4,$t8,0x0
    daddu      $a5,$a5,$a1
    dsll       $a5,$a5,0x4
    daddu      $a5,$a5,$a6
    mflo       $a7
    daddu      $a5,$a5,$a7
    lui        $a7,0x3b9a
    ori        $a7,$a7,0xca00
    daddu      $a4,$a4,$a5
    slt        $v1,$a4,$a7
    teq        $t9,$zero,0x7
    bnez       $v1, .L000061e8
    move       $a1,$zero
    ori        $a5,$ra,0x3600
    move       $a1,$zero
.L000061c4:
    daddu      $a4,$a5,$a4
    slt        $t1,$a4,$a7
    addiu      $a1,$a1,1
    bnez       $t1, .L000061e8
    nop
    daddu      $a4,$a5,$a4
    slt        $t2,$a4,$a7
    beqz       $t2, .L000061c4
    addiu      $a1,$a1,1
.L000061e8:
    sd         $a4,8($s0)
    addu       $t8,$t0,$a1
    sw         $t8,0($s0)
    lw         $t3,0($gp)
    slt        $t3,$t3,$t8
    beqz       $t3, .L0000622c
    ld         $a1,-32512($gp)
    jal        mutex_spinlock_spl
    daddiu     $a0,$gp,0
    lw         $a4,0($s0)
    lw         $t9,0($gp)
    slt        $t9,$t9,$a4
    beqz       $t9, .L00006224
    move       $a1,$v0
    sw         $a4,0($gp)
.L00006224:
    jal        mutex_spinunlock
    daddiu     $a0,$gp,0
.L0000622c:
    jal        splx
    ld         $a0,0($sp)
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel nanotime
    ld         $at,-32648($gp)
    ld         $a5,-32544($gp)
    beqz       $at, .L0000631c
    lui        $a7,0xaff2
.L00006254:
    lw         $t0,-32656($gp)
    sync
    ld         $a4,-32648($gp)
    lw         $a2,0($a5)
    ld         $a3,8($a5)
    sync
    lw         $a6,-32652($gp)
    bne        $a6, $t0, .L00006254
    sll        $a3,$a3,0x0
    ld         $t2,0($a7)
    dsll32     $t0,$a3,0x0
    dsubu      $t2,$t2,$a4
    dsll       $t1,$t2,0x2
    dsrl32     $t0,$t0,0x0
    daddu      $t1,$t1,$t2
    lui        $a6,0x3b9a
    dsll       $t1,$t1,0x4
    ori        $a6,$a6,0xca00
    daddu      $t1,$t0,$t1
    slt        $t1,$t1,$a6
    bnez       $t1, .L00006300
    nop
    ld         $a5,0($a7)
    dsubu      $a5,$a5,$a4
    dsll       $a3,$a5,0x2
    daddu      $a3,$a3,$a5
    lui        $a5,0xc465
    dsll       $a3,$a3,0x4
    ori        $a5,$a5,0x3600
    daddu      $a3,$t0,$a3
.L000062cc:
    daddu      $a3,$a5,$a3
    slt        $a7,$a3,$a6
    addiu      $a2,$a2,1
    bnez       $a7, .L000062f0
    nop
    daddu      $a3,$a5,$a3
    slt        $t0,$a3,$a6
    beqz       $t0, .L000062cc
    addiu      $a2,$a2,1
.L000062f0:
    sd         $a3,8($a0)
    sw         $a2,0($a0)
    jr         $ra
    nop
.L00006300:
    ld         $a5,0($a7)
    dsubu      $a5,$a5,$a4
    dsll       $a3,$a5,0x2
    daddu      $a3,$a3,$a5
    dsll       $a3,$a3,0x4
    b          .L000062f0
    daddu      $a3,$t0,$a3
.L0000631c:
    sw         $zero,0($a0)
    jr         $ra
    sd         $zero,8($a0)

glabel irix5_microtime
    daddiu     $sp,$sp,-32
    sd         $s8,24($sp)
    move       $s8,$a0
    sd         $ra,16($sp)
    jal        nanotime_syscall
    daddiu     $a0,$sp,0
    lw         $a0,0($sp)
    sw         $a0,0($s8)
    ld         $v0,8($sp)
    li         $v1,1000
    ddiv       $zero,$v0,$v1
    ld         $ra,16($sp)
    mflo       $at
    sw         $at,4($s8)
    ld         $s8,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel microtime
    daddiu     $sp,$sp,-32
    sd         $s8,24($sp)
    move       $s8,$a0
    sd         $ra,16($sp)
    jal        nanotime_syscall
    daddiu     $a0,$sp,0
    lw         $a0,0($sp)
    sw         $a0,4($s8)
    ld         $v0,8($sp)
    li         $v1,1000
    ddiv       $zero,$v0,$v1
    ld         $ra,16($sp)
    mflo       $at
    sd         $at,8($s8)
    ld         $s8,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel local_settime
    daddiu     $sp,$sp,-32
    sd         $ra,16($sp)
    sd         $s1,8($sp)
    move       $s1,$a0
    daddiu     $a0,$gp,0
    sd         $s0,0($sp)
    move       $s0,$a1
    jal        mutex_spinlock_spl
    ld         $a1,-32512($gp)
    lui        $a4,0xf
    ori        $a4,$a4,0x4240
    slt        $a5,$s0,$a4
    move       $a1,$v0
    lui        $a3,0xfff0
    bnez       $a5, .L00006414
    ori        $a3,$a3,0xbdc0
.L000063f0:
    daddu      $s0,$a3,$s0
    slt        $a5,$s0,$a4
    daddiu     $s1,$s1,1
    bnez       $a5, .L00006414
    nop
    daddu      $s0,$a3,$s0
    slt        $a6,$s0,$a4
    beqz       $a6, .L000063f0
    daddiu     $s1,$s1,1
.L00006414:
    lw         $t3,-32652($gp)
    ld         $t1,-32544($gp)
    lui        $t2,0xaff2
    addiu      $t3,$t3,1
    sw         $t3,-32652($gp)
    sync
    ld         $t2,0($t2)
    dsll       $t0,$s0,0x5
    sw         $s1,0($gp)
    dsubu      $t0,$t0,$s0
    sd         $t2,-32648($gp)
    dsll       $t0,$t0,0x2
    sw         $s1,0($t1)
    daddu      $t0,$t0,$s0
    dsll       $t0,$t0,0x3
    sd         $t0,8($t1)
    sd         $zero,0($gp)
    sd         $zero,0($gp)
    sd         $zero,0($gp)
    sync
    lw         $a7,-32652($gp)
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    sw         $a7,-32656($gp)
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel settime
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        local_settime
    nop
    jal        vhost_local
    sd         $s8,8($sp)
    jal        cellid
    move       $s8,$v0
    ld         $a0,0($s8)
    ld         $at,16($a0)
    ld         $at,120($at)
    jalr       $at
    move       $a1,$v0
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel clkset
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        inittodr
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel enable_fastclock
    jr         $ra
    nop

glabel cache_preempt_limit
    jr         $ra
    nop

glabel get_realtime_ticks
    ld         $a1,0($gp)
    lui        $a0,0xaff2
    ld         $a0,0($a0)
    ld         $v1,-32584($gp)
    dsubu      $a0,$a0,$a1
    ddiv       $zero,$a0,$v1
    teq        $v1,$zero,0x7
    mflo       $v0
    jr         $ra
    sll        $v0,$v0,0x0

glabel tstoclock
    lw         $a3,0($a0)
    lui        $a4,0x3b9a
    ori        $a4,$a4,0xca00
    dmult      $a3,$a4
    ld         $a0,8($a0)
    mflo       $a2
    daddu      $a0,$a0,$a2
    li         $a2,80
    ddiv       $zero,$a0,$a2
    li         $v1,1
    mflo       $v0
    beq        $a1, $v1, .L0000655c
    daddiu     $v0,$v0,1
    jr         $ra
    nop
.L0000655c:
    lui        $a5,0xaff2
    ld         $a5,0($a5)
    jr         $ra
    daddu      $v0,$v0,$a5

glabel tvtoclock
    lw         $a3,4($a0)
    lui        $a4,0x3b9a
    ori        $a4,$a4,0xca00
    dmult      $a3,$a4
    ld         $a3,8($a0)
    dsll       $a2,$a3,0x5
    dsubu      $a2,$a2,$a3
    dsll       $a2,$a2,0x2
    daddu      $a2,$a2,$a3
    dsll       $a2,$a2,0x3
    mflo       $a0
    daddu      $a0,$a0,$a2
    li         $a2,80
    ddiv       $zero,$a0,$a2
    li         $v1,1
    mflo       $v0
    beq        $a1, $v1, .L000065bc
    daddiu     $v0,$v0,1
    jr         $ra
    nop
.L000065bc:
    lui        $a5,0xaff2
    ld         $a5,0($a5)
    jr         $ra
    daddu      $v0,$v0,$a5

glabel timepoke
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        siron
    li         $a0,256
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
    lw         $a2,-14604($zero)
    daddiu     $sp,$sp,-16
    beqz       $a2, .L00006604
    sd         $ra,0($sp)
.L000065f8:
    move       $v0,$a2
    jr         $ra
    daddiu     $sp,$sp,16
.L00006604:
    jal        findcpufreq_hz
    nop
    ld         $ra,0($sp)
    srl        $a2,$v0,0x1
    b          .L000065f8
    sw         $a2,-14604($zero)
    ld         $a3,24($a0)
    bnez       $a3, .L00006630
    li         $v0,-1
    jr         $ra
    dsrl       $v0,$v0,0x1
.L00006630:
    ld         $v0,0($a3)
    jr         $ra
    nop
    nop

glabel atomicAddInt
.L00006640:
    ll         $t2,0($a0)
    addu       $t1,$t2,$a1
    sc         $t1,0($a0)
    beqzl      $t1, .L00006640
    nop
    addu       $v0,$t2,$a1
    jr         $ra
    nop

glabel atomicAddIntHot2
    sb         $zero,0($a2)
.L00006664:
    ll         $t2,0($a0)
    addu       $t1,$t2,$a1
    sc         $t1,0($a0)
    beqzl      $t1, .L00006664
    sb         $zero,0($a2)
    jr         $ra
    addu       $v0,$t2,$a1

glabel atomicSetCpumask
    lw         $a1,0($a1)
.L00006684:
    ll         $v0,0($a0)
    or         $t2,$v0,$a1
    sc         $t2,0($a0)
    beqzl      $t2, .L00006684
    nop
    jr         $ra
    nop

glabel atomicClearInt
    nor        $a1,$a1,$zero
.L000066a4:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    sc         $t2,0($a0)
    beqzl      $t2, .L000066a4
    nop
    jr         $ra
    nop

glabel atomicClearInt64
    nor        $a1,$a1,$zero
.L000066c4:
    lld        $v0,0($a0)
    and        $t2,$v0,$a1
    scd        $t2,0($a0)
    beqzl      $t2, .L000066c4
    nop
    jr         $ra
    nop

glabel atomicFieldAssignLong
    nor        $a1,$a1,$zero
.L000066e4:
    lld        $v0,0($a0)
    and        $t2,$v0,$a1
    or         $t2,$t2,$a2
    scd        $t2,0($a0)
    beqzl      $t2, .L000066e4
    nop
    jr         $ra
    nop

glabel atomicFieldAssignUint
    nor        $a1,$a1,$zero
.L00006708:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    or         $t2,$t2,$a2
    sc         $t2,0($a0)
    beqzl      $t2, .L00006708
    nop
    jr         $ra
    nop

glabel atomicClearCpumask
    lw         $a1,0($a1)
    nor        $a1,$a1,$zero
.L00006730:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    sc         $t2,0($a0)
    beqzl      $t2, .L00006730
    nop
    jr         $ra
    nop

glabel atomicAddInt64
.L0000674c:
    lld        $t2,0($a0)
    daddu      $t1,$t2,$a1
    scd        $t1,0($a0)
    beqzl      $t1, .L0000674c
    nop
    daddu      $v0,$t2,$a1
    jr         $ra
    nop

glabel atomicAddInt64Hot2
    sb         $zero,0($a2)
.L00006770:
    lld        $t2,0($a0)
    daddu      $t1,$t2,$a1
    scd        $t1,0($a0)
    beqzl      $t1, .L00006770
    sb         $zero,0($a2)
    jr         $ra
    daddu      $v0,$t2,$a1

glabel atomicPush
.L0000678c:
    ld         $t0,0($a0)
    andi       $t1,$t0,0x1
    bnez       $t1, .L000067b8
    sd         $t0,0($a2)
    lld        $v0,0($a0)
    bne        $v0, $t0, .L0000678c
    move       $t2,$a1
    scd        $t2,0($a0)
    beqzl      $t2, .L0000678c
    nop
    jr         $ra
.L000067b8:
    nop
    b          .L0000678c
    nop

glabel atomicPull
.L000067c4:
    lld        $v0,0($a0)
    andi       $t1,$v0,0x1
    bnez       $t1, .L000067e4
    move       $t0,$zero
    scd        $t0,0($a0)
    beqzl      $t0, .L000067c4
    nop
    jr         $ra
.L000067e4:
    nop
    b          .L000067c4
    nop

glabel atomicIncWithWrap
.L000067f0:
    ll         $t2,0($a0)
    addiu      $t1,$t2,1
    bne        $t1, $a1, .L00006804
    nop
    move       $t1,$zero
.L00006804:
    sc         $t1,0($a0)
    beqzl      $t1, .L000067f0
    nop
    move       $v0,$t2
    jr         $ra
    nop

glabel atomicAddWithWrap
.L0000681c:
    ll         $t2,0($a0)
    addu       $t1,$t2,$a1
    slt        $at,$t1,$a2
    bnez       $at, .L00006834
    nop
    subu       $t1,$t1,$a2
.L00006834:
    sc         $t1,0($a0)
    beqzl      $t1, .L0000681c
    nop
    move       $v0,$t2
    jr         $ra
    nop

glabel bitlock_set
.L0000684c:
    ll         $v0,0($a0)
    and        $a5,$v0,$a1
    bnez       $a5, .L0000684c
    or         $t2,$v0,$a2
    sc         $t2,0($a0)
    beqzl      $t2, .L0000684c
    nop
    jr         $ra
    nop

glabel bitlock_clr
    nor        $a2,$a2,$zero
.L00006874:
    ll         $v0,0($a0)
    and        $a5,$v0,$a1
    bnez       $a5, .L00006874
    and        $t2,$v0,$a2
    sc         $t2,0($a0)
    beqzl      $t2, .L00006874
    nop
    jr         $ra
    nop

glabel bitlock_acquire
.L00006898:
    lld        $v0,0($a0)
    and        $t2,$v0,$a1
    bnez       $t2, .L00006898
    or         $t2,$v0,$a1
    scd        $t2,0($a0)
    beqzl      $t2, .L00006898
    nop
    jr         $ra
    nop

glabel bitlock_acquire_32bit
.L000068bc:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    bnez       $t2, .L000068bc
    or         $t2,$v0,$a1
    sc         $t2,0($a0)
    beqzl      $t2, .L000068bc
    nop
    jr         $ra
    nop

glabel bitlock_condacq
    li         $t3,5
.L000068e4:
    nop
    bltz       $t3, .L0000692c
    addiu      $t3,$t3,-1
.L000068f0:
    lld        $v0,0($a0)
    and        $t2,$v0,$a1
    bnez       $t2, .L00006914
    or         $t2,$v0,$a1
    scd        $t2,0($a0)
    beqzl      $t2, .L000068f0
    nop
    jr         $ra
    move       $v0,$zero
.L00006914:
    li         $a5,15
.L00006918:
    nop
    bgez       $a5, .L00006918
    addiu      $a5,$a5,-1
    b          .L000068e4
    nop
    jr         $ra
    li         $v0,1

glabel bitlock_condacq_32bit
    li         $t3,5
.L00006980:
    nop
    bltz       $t3, .L000069c8
    addiu      $t3,$t3,-1
.L0000698c:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    bnez       $t2, .L000069b0
    or         $t2,$v0,$a1
    sc         $t2,0($a0)
    beqzl      $t2, .L0000698c
    nop
    jr         $ra
    move       $v0,$zero
.L000069b0:
    li         $a5,15
.L000069b4:
    nop
    bgez       $a5, .L000069b4
    addiu      $a5,$a5,-1
    b          .L00006980
    nop
    jr         $ra
    li         $v0,1

glabel mutex_set_always
.L00006a18:
    lld        $v0,0($a0)
    move       $t0,$a1
    scd        $t0,0($a0)
    beqzl      $t0, .L00006a18
    nop
    jr         $ra
    nop

glabel test_and_set_int
.L00006a34:
    ll         $v0,0($a0)
    move       $t2,$a1
    sc         $t2,0($a0)
    beqzl      $t2, .L00006a34
    nop
    jr         $ra
    nop

glabel test_and_set_int64
.L00006a50:
    lld        $v0,0($a0)
    move       $t2,$a1
    scd        $t2,0($a0)
    beqzl      $t2, .L00006a50
    nop
    jr         $ra
    nop

glabel swap_int
.L00006a6c:
    ll         $v0,0($a0)
    move       $t0,$a1
    sc         $t0,0($a0)
    beqzl      $t0, .L00006a6c
    nop
    jr         $ra
    nop

glabel compare_and_swap_int
.L00006a88:
    ll         $t0,0($a0)
    bne        $t0, $a1, .L00006aa8
    move       $v0,$a2
    sc         $v0,0($a0)
    beqzl      $v0, .L00006a88
    nop
    jr         $ra
    nop
    jr         $ra
    move       $v0,$zero

glabel compare_and_inc_int_gt_zero
.L00006b20:
    ll         $v0,0($a0)
    blez       $v0, .L00006b40
    addiu      $v0,$v0,1
    sc         $v0,0($a0)
    beqzl      $v0, .L00006b20
    nop
    jr         $ra
    nop
    jr         $ra
    move       $v0,$zero

glabel compare_and_dec_int_gt
.L00006bb8:
    ll         $v0,0($a0)
    addiu      $v0,$v0,-1
    slt        $at,$v0,$a1
    bnez       $at, .L00006be0
    nop
    sc         $v0,0($a0)
    beqzl      $v0, .L00006bb8
    nop
    jr         $ra
    nop
    jr         $ra
    move       $v0,$zero

glabel compare_and_dec_int_gt_hot2
.L00006c54:
    ll         $v0,0($a0)
    addiu      $v0,$v0,-1
    slt        $at,$v0,$a1
    bnez       $at, .L00006c7c
    nop
    sc         $v0,0($a0)
    beqzl      $v0, .L00006c54
    sw         $zero,0($a2)
    jr         $ra
    nop
    jr         $ra
    move       $v0,$zero

glabel swap_int64
.L00006cf0:
    lld        $v0,0($a0)
    move       $t0,$a1
    scd        $t0,0($a0)
    beqzl      $t0, .L00006cf0
    nop
    jr         $ra
    nop

glabel compare_and_swap_int64
.L00006d0c:
    lld        $t0,0($a0)
    bne        $t0, $a1, .L00006d2c
    move       $v0,$a2
    scd        $v0,0($a0)
    beqzl      $v0, .L00006d0c
    nop
    jr         $ra
    nop
    jr         $ra
    move       $v0,$zero

glabel comparegt_and_swap_int
.L00006da4:
    ll         $t1,0($a0)
    slt        $at,$a1,$t1
    beqz       $at, .L00006dc8
    move       $v0,$a2
    sc         $v0,0($a0)
    beqzl      $v0, .L00006da4
    nop
    jr         $ra
    nop
    jr         $ra
    move       $v0,$zero

glabel store_atomic
.L00006e40:
    ll         $a4,0($a0)
    sc         $a4,0($a0)
    beqzl      $a4, .L00006e40
    nop
    jr         $ra
    nop

glabel atomicIncPort
.L00006e58:
    ll         $t2,0($a0)
    addiu      $t1,$t2,1
    slt        $at,$a1,$t1
    beqz       $at, .L00006e70
    nop
    move       $t1,$a2
.L00006e70:
    sc         $t1,0($a0)
    beqzl      $t1, .L00006e58
    nop
    move       $v0,$t2
    jr         $ra
    nop

glabel copyin
    ld         $t0,-16352($zero)
    daddiu     $sp,$sp,-16
    li         $at,1
    sd         $ra,8($sp)
    lbu        $t1,112($t0)
    bne        $t1, $at, .L00006ec8
    nop
    ld         $t2,824($t0)
    beqz       $t2, .L00006ec8
    nop
    jal        do_ucopy_copyin
    nop
    j          .text
    nop
.L00006ec8:
    bltz       $a2, .L000070e4
    nop
    bltz       $a0, .L000070e4
    nop
    li         $t0,1
    daddu      $v0,$a0,$a2
    dsll32     $t0,$t0,0x8
    sltu       $at,$t0,$v0
    bnez       $at, .L000070e4
    nop
    ld         $t0,-16352($zero)
    li         $v0,2
    jal        bcopy
    sh         $v0,246($t0)
    ld         $t0,-16352($zero)
    move       $v0,$zero
    sh         $zero,246($t0)
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    nop

glabel copyout
    ld         $t0,-16352($zero)
    daddiu     $sp,$sp,-16
    li         $at,1
    sd         $ra,8($sp)
    lbu        $t1,112($t0)
    bne        $t1, $at, .L00006f54
    nop
    ld         $t2,824($t0)
    beqz       $t2, .L00006f54
    nop
    jal        do_ucopy_copyout
    nop
    j          .text
    nop
.L00006f54:
    bltz       $a2, .L000070e4
    nop
    bltz       $a1, .L000070e4
    nop
    li         $t0,1
    daddu      $v0,$a1,$a2
    dsll32     $t0,$t0,0x8
    sltu       $at,$t0,$v0
    bnez       $at, .L000070e4
    nop
    ld         $t0,-16352($zero)
    li         $v0,2
    jal        bcopy
    sh         $v0,246($t0)
    ld         $t0,-16352($zero)
    move       $v0,$zero
    sh         $zero,246($t0)
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    nop

glabel swcopyin
    daddiu     $sp,$sp,-16
    bltz       $a2, .L000070e4
    sd         $ra,8($sp)
    bltz       $a0, .L000070e4
    nop
    li         $t0,1
    daddu      $v0,$a0,$a2
    dsll32     $t0,$t0,0x8
    sltu       $at,$t0,$v0
    bnez       $at, .L000070e4
    nop
    ld         $t0,-16352($zero)
    li         $v0,2
    jal        swbcopy
    sh         $v0,246($t0)
    ld         $t0,-16352($zero)
    move       $v0,$zero
    sh         $zero,246($t0)
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    nop

glabel swcopyout
    daddiu     $sp,$sp,-16
    bltz       $a2, .L000070e4
    sd         $ra,8($sp)
    bltz       $a1, .L000070e4
    nop
    li         $t0,1
    daddu      $v0,$a1,$a2
    dsll32     $t0,$t0,0x8
    sltu       $at,$t0,$v0
    bnez       $at, .L000070e4
    nop
    ld         $t0,-16352($zero)
    li         $v0,2
    jal        swbcopy
    sh         $v0,246($t0)
    ld         $t0,-16352($zero)
    move       $v0,$zero
    sh         $zero,246($t0)
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    nop

glabel uzero
    ld         $t0,-16352($zero)
    daddiu     $sp,$sp,-16
    li         $at,1
    sd         $ra,8($sp)
    lbu        $t1,112($t0)
    bne        $t1, $at, .L00007090
    nop
    ld         $t2,824($t0)
    beqz       $t2, .L00007090
    nop
    jal        do_ucopy_zero
    nop
    j          .text
    nop
.L00007090:
    bltz       $a1, .L000070e4
    nop
    bltz       $a0, .L000070e4
    nop
    li         $t0,1
    daddu      $v0,$a0,$a1
    dsll32     $t0,$t0,0x8
    sltu       $at,$t0,$v0
    bnez       $at, .L000070e4
    nop
    ld         $t0,-16352($zero)
    li         $v0,2
    jal        bzero
    sh         $v0,246($t0)
    ld         $t0,-16352($zero)
    move       $v0,$zero
    sh         $zero,246($t0)
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    nop

glabel cerror
.L000070e4:
    ld         $ra,8($sp)
    li         $v0,-1
    daddiu     $sp,$sp,16
    jr         $ra
    nop

glabel memset
    beqz       $a2, .L00007204
    move       $v0,$a0
    andi       $a1,$a1,0xff
    dsll       $t0,$a1,0x8
    or         $a1,$a1,$t0
    dsll       $t0,$a1,0x10
    or         $a1,$a1,$t0
    dsll32     $t0,$a1,0x0
    or         $a1,$a1,$t0
    andi       $t0,$a0,0x1f
    beqz       $t0, .L000071dc
    nop
    andi       $t0,$a0,0xf
    beqz       $t0, .L000071bc
    nop
    andi       $t0,$a0,0x7
    beqz       $t0, .L000071a0
    nop
    andi       $t0,$a0,0x3
    beqz       $t0, .L00007184
    nop
    andi       $t0,$a0,0x1
    beqz       $t0, .L00007168
    nop
.L00007158:
    daddiu     $a2,$a2,-1
    sb         $a1,0($a0)
    daddiu     $a0,$a0,1
    beqz       $a2, .L00007204
.L00007168:
    sltiu      $at,$a2,3
    bnez       $at, .L00007158
    nop
    daddiu     $a2,$a2,-2
    sh         $a1,0($a0)
    daddiu     $a0,$a0,2
    beqz       $a2, .L00007204
.L00007184:
    sltiu      $at,$a2,5
    bnez       $at, .L00007168
    nop
    daddiu     $a2,$a2,-4
    sw         $a1,0($a0)
    daddiu     $a0,$a0,4
    beqz       $a2, .L00007204
.L000071a0:
    sltiu      $at,$a2,9
    bnez       $at, .L00007184
    nop
    daddiu     $a2,$a2,-8
    sd         $a1,0($a0)
    daddiu     $a0,$a0,8
    beqz       $a2, .L00007204
.L000071bc:
    sltiu      $at,$a2,17
    bnez       $at, .L000071a0
    nop
    daddiu     $a2,$a2,-16
    sd         $a1,0($a0)
    daddiu     $a0,$a0,16
    beqz       $a2, .L00007204
    sd         $a1,-8($a0)
.L000071dc:
    sltiu      $at,$a2,33
    bnez       $at, .L000071bc
    nop
    daddiu     $a2,$a2,-32
    sd         $a1,0($a0)
    daddiu     $a0,$a0,32
    sd         $a1,-24($a0)
    sd         $a1,-16($a0)
    bnez       $a2, .L000071dc
    sd         $a1,-8($a0)
.L00007204:
    jr         $ra
    nop

glabel bzero
    andi       $v0,$a0,0x7f
    andi       $v1,$a1,0x1ff
    or         $v0,$v0,$v1
    bnezl      $v0, .L00007228
    nop
    j          _pagezero
    nop

glabel bzero_nopage
.L00007228:
    slti       $v0,$a1,8
    bnez       $v0, .L000072ac
    dnegu      $v1,$a0
    sdl        $zero,0($a0)
    andi       $v0,$v1,0x7
    dsubu      $a1,$a1,$v0
    daddu      $a0,$a0,$v0
    li         $at,-32
    and        $a3,$a1,$at
    beqz       $a3, .L00007270
    daddu      $a3,$a3,$a0
.L00007254:
    daddiu     $a0,$a0,32

glabel bzero_stores
    sd         $zero,-32($a0)
    sd         $zero,-16($a0)
    sd         $zero,-24($a0)

glabel bzero_pref
    pref       0x7,640($a0)
    bne        $a0, $a3, .L00007254
    sd         $zero,-8($a0)
.L00007270:
    andi       $v0,$a1,0x10
    beqz       $v0, .L00007288
    andi       $v1,$a1,0x8
    sd         $zero,0($a0)
    sd         $zero,8($a0)
    daddiu     $a0,$a0,16
.L00007288:
    beqz       $v1, .L00007298
    andi       $v0,$a1,0x7
    sd         $zero,0($a0)
    daddiu     $a0,$a0,8
.L00007298:
    daddu      $a0,$a0,$v0
    beqz       $v0, .L000072c4
    nop
    jr         $ra
    sdr        $zero,-1($a0)
.L000072ac:
    blez       $a1, .L000072c4
    daddu      $a3,$a0,$a1
.L000072b4:
    daddiu     $a0,$a0,1
    sb         $zero,-1($a0)
    bne        $a0, $a3, .L000072b4
    nop
.L000072c4:
    jr         $ra
    nop

glabel bzerror
    jr         $ra
    nop

glabel bcmp
    slti       $at,$a2,11
    xor        $v0,$a0,$a1
    bnez       $at, .L00007468
    nop
    andi       $v0,$v0,0x3
    dnegu      $t8,$a0
    bnez       $v0, .L000073fc
    nop
    andi       $t8,$t8,0x3
    beqz       $t8, .L00007320
    nop
    lwl        $t0,0($a0)
    subu       $a2,$a2,$t8
    lwl        $t1,0($a1)
    lwr        $t0,3($a0)
    daddu      $a0,$a0,$t8
    lwr        $t1,3($a1)
    daddu      $a1,$a1,$t8
    bne        $t0, $t1, .L000073f4
.L00007320:
    li         $at,-16
    and        $v0,$a2,$at
    beqz       $v0, .L00007384
    nop
.L00007330:
    lw         $t0,0($a0)
    daddiu     $a0,$a0,16
    lw         $t1,0($a1)
    daddiu     $a1,$a1,16
    bne        $t0, $t1, .L000073f4
    nop
    lw         $t0,-12($a0)
    addiu      $v0,$v0,-16
    lw         $t1,-12($a1)
    bne        $t0, $t1, .L000073f4
    nop
    lw         $t0,-8($a0)
    lw         $t1,-8($a1)
    bne        $t0, $t1, .L000073f4
    nop
    lw         $t0,-4($a0)
    lw         $t1,-4($a1)
    bne        $t0, $t1, .L000073f4
    nop
    bnez       $v0, .L00007330
    nop
.L00007384:
    andi       $t9,$a2,0x8
    beqz       $t9, .L000073b8
    andi       $t8,$a2,0x4
    lw         $t0,0($a0)
    daddiu     $a0,$a0,8
    lw         $t1,0($a1)
    daddiu     $a1,$a1,8
    bne        $t0, $t1, .L000073f4
    nop
    lw         $t0,-4($a0)
    lw         $t1,-4($a1)
    bne        $t0, $t1, .L000073f4
    nop
.L000073b8:
    beqz       $t8, .L000073d8
    andi       $t9,$a2,0x3
    lw         $t0,0($a0)
    daddiu     $a0,$a0,4
    lw         $t1,0($a1)
    daddiu     $a1,$a1,4
    bne        $t0, $t1, .L000073f4
    nop
.L000073d8:
    beqz       $t9, .L00007490
    daddu      $a0,$a0,$t9
    daddu      $a1,$a1,$t9
    lwl        $t0,-4($a0)
    lwr        $t0,-1($a0)
    lwl        $t1,-4($a1)
    lwr        $t1,-1($a1)
.L000073f4:
    jr         $ra
    subu       $v0,$t0,$t1
.L000073fc:
    dnegu      $a3,$a1
    andi       $a3,$a3,0x3
    beqz       $a3, .L00007430
    subu       $a2,$a2,$a3
    daddu      $a3,$a3,$a0
.L00007410:
    lbu        $t0,0($a0)
    daddiu     $a0,$a0,1
    lbu        $t1,0($a1)
    daddiu     $a1,$a1,1
    bne        $t0, $t1, .L000073f4
    nop
    bne        $a0, $a3, .L00007410
    nop
.L00007430:
    li         $at,-4
    and        $a3,$a2,$at
    beqz       $a3, .L00007468
    subu       $a2,$a2,$a3
    daddu      $a3,$a3,$a0
.L00007444:
    lwl        $t0,0($a0)
    daddiu     $a0,$a0,4
    lw         $t1,0($a1)
    daddiu     $a1,$a1,4
    lwr        $t0,-1($a0)
    bne        $t0, $t1, .L000073f4
    nop
    bne        $a0, $a3, .L00007444
    nop
.L00007468:
    blez       $a2, .L00007490
    daddu      $a3,$a2,$a0
.L00007470:
    lbu        $t0,0($a0)
    daddiu     $a0,$a0,1
    lbu        $t1,0($a1)
    daddiu     $a1,$a1,1
    bne        $t0, $t1, .L000073f4
    nop
    bne        $a0, $a3, .L00007470
    nop
.L00007490:
    jr         $ra
    move       $v0,$zero

glabel addupc
    ld         $v1,16($a1)
    dsubu      $a0,$a0,$v1
    bltz       $a0, .L00007588
    nop
    lw         $v0,24($a1)
    li         $at,2
    bne        $v0, $at, .L000074c0
    nop
    b          .L000074d8
    li         $v0,0
.L000074c0:
    multu      $v0,$a0
    mflo       $v0
    mfhi       $v1
    srl        $v0,$v0,0x10
    sll        $v1,$v1,0x10
    or         $v0,$v0,$v1
.L000074d8:
    lw         $v1,8($a1)
    bnez       $a3, .L0000753c
    ld         $a0,0($a1)
    li         $at,-2
    and        $v0,$v0,$at
    sltu       $at,$v0,$v1
    beqz       $at, .L00007588
    nop
    daddu      $v0,$v0,$a0
    bltz       $v0, .L00007590
    nop
    ld         $t0,-16352($zero)
    li         $v1,3
    sh         $v1,246($t0)
    andi       $t1,$v0,0x2
    ori        $v0,$v0,0x2
    bnez       $t1, .L00007524
    xori       $v0,$v0,0x2
    sll        $a2,$a2,0x10
.L00007524:
    ll         $v1,0($v0)
    addu       $v1,$v1,$a2
    sc         $v1,0($v0)
    beqzl      $v1, .L00007524
    nop
    b          .L0000757c
.L0000753c:
    li         $at,-4
    and        $v0,$v0,$at
    sltu       $at,$v0,$v1
    beqz       $at, .L00007588
    nop
    daddu      $v0,$v0,$a0
    bltz       $v0, .L00007590
    nop
    ld         $t0,-16352($zero)
    li         $v1,3
    sh         $v1,246($t0)
.L00007568:
    ll         $v1,0($v0)
    addu       $v1,$v1,$a2
    sc         $v1,0($v0)
    beqzl      $v1, .L00007568
    nop
.L0000757c:
    sh         $zero,246($t0)
    jr         $ra
    li         $v0,0
.L00007588:
    jr         $ra
    li         $v0,-1

glabel adderr
.L00007590:
    li         $v0,0
    jr         $ra
    sw         $zero,24($a1)

glabel fubyte
    bltz       $a0, .L00007758
    ld         $t0,-16352($zero)
    li         $v0,4
    sh         $v0,246($t0)
    lbu        $v0,0($a0)
    jr         $ra
    sh         $zero,246($t0)

glabel upath
    bltz       $a0, .L00007758
    ld         $t0,-16352($zero)
    li         $v0,4
    sh         $v0,246($t0)
    move       $v1,$a2
.L000075cc:
    lbu        $v0,0($a0)
    daddiu     $a2,$a2,-1
    beqz       $v0, .L000075f0
    sb         $v0,0($a1)
    daddiu     $a0,$a0,1
    bnez       $a2, .L000075cc
    daddiu     $a1,$a1,1
    b          .L000075f4
    li         $v0,-2
.L000075f0:
    dsubu      $v0,$v1,$a2
.L000075f4:
    jr         $ra
    sh         $zero,246($t0)

glabel subyte
    bltz       $a0, .L00007758
    ld         $t0,-16352($zero)
    li         $v0,4
    sh         $v0,246($t0)
    sb         $a1,0($a0)
    sh         $zero,246($t0)
    jr         $ra
    move       $v0,$zero

glabel fuword
    bltz       $a0, .L00007758
    ld         $t0,-16352($zero)
    li         $v0,4
    sh         $v0,246($t0)
    lw         $v0,0($a0)
    sh         $zero,246($t0)
    jr         $ra
    nop

glabel sfu32v
    bltz       $a1, .L000076b0
    ld         $t0,-16352($zero)
    li         $v0,12
    sh         $v0,246($t0)
.L0000764c:
    lw         $v0,0($a1)
    addiu      $a3,$a3,-4
    sw         $v0,0($a2)
    addiu      $a1,$a1,4
    bne        $zero, $a3, .L0000764c
    addiu      $a2,$a2,4
    sh         $zero,246($t0)
    jr         $ra
    li         $v0,1

glabel sfu32
    bltz       $a1, .L000076b0
    ld         $t0,-16352($zero)
    li         $v0,12
    sh         $v0,246($t0)
    lw         $v0,0($a1)
    sh         $zero,246($t0)
    jr         $ra
    nop

glabel spu32
    bltz       $a1, .L000076b0
    ld         $t0,-16352($zero)
    li         $v0,12
    sh         $v0,246($t0)
    sw         $a2,0($a1)
    sh         $zero,246($t0)
    jr         $ra
    li         $v0,1

glabel suerror
.L000076b0:
    li         $v1,14
    li         $v0,0
    jr         $ra
    sw         $v1,0($a0)

glabel fulong
    bltz       $a0, .L00007758
    ld         $t0,-16352($zero)
    li         $v0,4
    sh         $v0,246($t0)
    ld         $v0,0($a0)
    sh         $zero,246($t0)
    jr         $ra
    nop

glabel suword
    bltz       $a0, .L00007758
    ld         $t0,-16352($zero)
    li         $v0,4
    sh         $v0,246($t0)
    sw         $a1,0($a0)
    sh         $zero,246($t0)
    jr         $ra
    move       $v0,$zero

glabel suhalf
    bltz       $a0, .L00007758
    ld         $t0,-16352($zero)
    li         $v0,4
    sh         $v0,246($t0)
    sh         $a1,0($a0)
    sh         $zero,246($t0)
    jr         $ra
    move       $v0,$zero

glabel sulong
    bltz       $a0, .L00007758
    ld         $t0,-16352($zero)
    li         $v0,4
    sh         $v0,246($t0)
    sd         $a1,0($a0)
    sh         $zero,246($t0)
    jr         $ra
    move       $v0,$zero

glabel fkiword
    li         $v0,13
    sw         $v0,-15356($zero)
    lw         $v0,0($a0)
    sw         $zero,-15356($zero)
    jr         $ra
    nop

glabel uerror
.L00007758:
    jr         $ra
    li         $v0,-1

glabel strlen
    move       $v0,$a0
.L00007764:
    lb         $v1,0($a0)
    daddiu     $a0,$a0,1
    bnez       $v1, .L00007764
    nop
    dsubu      $v0,$a0,$v0
    jr         $ra
    daddiu     $v0,$v0,-1

glabel uload_word
    ld         $t0,-16352($zero)
    li         $v0,11
    sh         $v0,246($t0)
    lwl        $v1,0($a0)
    lwr        $v1,3($a0)
    sh         $zero,246($t0)
    sd         $v1,0($a1)
    jr         $ra
    move       $v0,$zero

glabel uload_half
    ld         $t0,-16352($zero)
    li         $v0,11
    sh         $v0,246($t0)
    lb         $v1,0($a0)
    lbu        $at,1($a0)
    sll        $v1,$v1,0x8
    or         $v1,$v1,$at
    sh         $zero,246($t0)
    sd         $v1,0($a1)
    jr         $ra
    move       $v0,$zero

glabel uload_uhalf
    ld         $t0,-16352($zero)
    li         $v0,11
    sh         $v0,246($t0)
    lbu        $v1,0($a0)
    lbu        $at,1($a0)
    sll        $v1,$v1,0x8
    or         $v1,$v1,$at
    sh         $zero,246($t0)
    sd         $v1,0($a1)
    jr         $ra
    move       $v0,$zero

glabel uload_uword
    ld         $t0,-16352($zero)
    li         $v0,11
    sh         $v0,246($t0)
    lwl        $v1,0($a0)
    lwr        $v1,3($a0)
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    sh         $zero,246($t0)
    sd         $v1,0($a1)
    jr         $ra
    move       $v0,$zero

glabel uload_double
    ld         $t0,-16352($zero)
    li         $v0,11
    sh         $v0,246($t0)
    ldl        $v1,0($a0)
    ldr        $v1,7($a0)
    sh         $zero,246($t0)
    sd         $v1,0($a1)
    jr         $ra
    move       $v0,$zero

glabel ustore_double
    ld         $t0,-16352($zero)
    li         $v0,11
    sh         $v0,246($t0)
    sdl        $a1,0($a0)
    sdr        $a1,7($a0)
    sh         $zero,246($t0)
    jr         $ra
    move       $v0,$zero

glabel ustore_word
    ld         $t0,-16352($zero)
    li         $v0,11
    sh         $v0,246($t0)
    swl        $a1,0($a0)
    swr        $a1,3($a0)
    sh         $zero,246($t0)
    jr         $ra
    move       $v0,$zero

glabel ustore_half
    ld         $t0,-16352($zero)
    li         $v0,11
    sh         $v0,246($t0)
    sb         $a1,1($a0)
    srl        $at,$a1,0x8
    sb         $at,0($a0)
    sh         $zero,246($t0)
    jr         $ra
    move       $v0,$zero

glabel fixade_error
    jr         $ra
    move       $v0,$gp

glabel memcpy
    move       $t0,$a0
    move       $a0,$a1
    move       $a1,$t0

glabel bcopy
    andi       $v1,$a1,0x7f
    andi       $v0,$a0,0x7f
    andi       $t0,$a2,0x1ff
    or         $v0,$v0,$v1
    move       $t8,$a1
    or         $v0,$v0,$t0
    bnezl      $v0, .L000078ec
    nop
    j          _pagecopy
    nop

glabel bcopy_nopage
.L000078ec:
    slt        $at,$a0,$a1
    daddu      $v0,$a0,$a2
    beqz       $at, .L00007900
    slt        $at,$a1,$v0
    bnez       $at, .L00007c10
.L00007900:
    slti       $at,$a2,12
    bnez       $at, .L00007bec
    nop
    andi       $v0,$a0,0x7
    li         $a3,8
    andi       $v1,$a1,0x7
    bne        $v0, $v1, .L00007a00
    nop
    beqz       $v0, .L00007940
    nop
    ldl        $v0,0($a0)
    subu       $a3,$a3,$v1
    daddu      $a0,$a0,$a3
    subu       $a2,$a2,$a3
    sdl        $v0,0($a1)
    daddu      $a1,$a1,$a3
.L00007940:
    li         $at,-64
    and        $a3,$a2,$at
    beqz       $a3, .L00007a34
    nop
    daddu      $a3,$a3,$a1
.L00007954:
    ld         $t0,0($a0)
    ld         $t2,16($a0)

glabel bcopy_pref1
    pref       0x4,384($a0)
    ld         $t1,8($a0)
    ld         $t3,24($a0)
    ld         $a4,32($a0)
    ld         $a6,48($a0)
    ld         $a5,40($a0)
    ld         $a7,56($a0)

glabel bcopy_stores
    sd         $t0,0($a1)
    sd         $t2,16($a1)
    sd         $t1,8($a1)
    sd         $t3,24($a1)
    sd         $a4,32($a1)
    sd         $a6,48($a1)
    sd         $a5,40($a1)
    sd         $a7,56($a1)
    daddiu     $a1,$a1,64
    daddiu     $a0,$a0,64
    beq        $a3, $a1, .L000079f8
    nop
    ld         $t0,0($a0)
    ld         $t2,16($a0)

glabel bcopy_pref2
    pref       0x7,384($a1)
    ld         $t1,8($a0)
    daddiu     $a1,$a1,64
    ld         $t3,24($a0)
    daddiu     $a0,$a0,64
    ld         $a4,-32($a0)
    ld         $a6,-16($a0)
    ld         $a5,-24($a0)
    ld         $a7,-8($a0)
    sd         $t2,-48($a1)
    sd         $t0,-64($a1)
    sd         $t1,-56($a1)
    sd         $t3,-40($a1)
    sd         $a4,-32($a1)
    sd         $a6,-16($a1)
    sd         $a5,-24($a1)
    bne        $a3, $a1, .L00007954
    sd         $a7,-8($a1)
.L000079f8:
    b          .L00007a34
    andi       $a2,$a2,0x3f
.L00007a00:
    andi       $v0,$a0,0x3
    li         $a3,4
    andi       $v1,$a1,0x3
    bne        $v0, $v1, .L00007b28
    nop
    beqz       $v0, .L00007a34
    nop
    lwl        $v0,0($a0)
    subu       $a3,$a3,$v1
    daddu      $a0,$a0,$a3
    subu       $a2,$a2,$a3
    swl        $v0,0($a1)
    daddu      $a1,$a1,$a3
.L00007a34:
    li         $at,-32
    and        $a3,$a2,$at
    beqz       $a3, .L00007a94
    nop
    daddu      $a3,$a3,$a1
.L00007a48:
    lw         $t0,0($a0)
    daddiu     $a1,$a1,32
    lw         $t1,4($a0)
    daddiu     $a0,$a0,32
    lw         $t2,-24($a0)
    lw         $t3,-20($a0)
    lw         $a4,-16($a0)
    lw         $a5,-12($a0)
    lw         $a6,-8($a0)
    lw         $a7,-4($a0)
    sw         $t0,-32($a1)
    sw         $t1,-28($a1)
    sw         $t2,-24($a1)
    sw         $t3,-20($a1)
    sw         $a4,-16($a1)
    sw         $a5,-12($a1)
    sw         $a6,-8($a1)
    bne        $a3, $a1, .L00007a48
    sw         $a7,-4($a1)
.L00007a94:
    andi       $v0,$a2,0x10
    beqz       $v0, .L00007ac8
    nop
    lw         $t0,0($a0)
    daddiu     $a0,$a0,16
    lw         $t1,-12($a0)
    daddiu     $a1,$a1,16
    lw         $t2,-8($a0)
    lw         $t3,-4($a0)
    sw         $t0,-16($a1)
    sw         $t1,-12($a1)
    sw         $t2,-8($a1)
    sw         $t3,-4($a1)
.L00007ac8:
    andi       $v1,$a2,0x8
    beqz       $v1, .L00007aec
    nop
    lw         $t0,0($a0)
    daddiu     $a0,$a0,8
    lw         $t1,-4($a0)
    daddiu     $a1,$a1,8
    sw         $t0,-8($a1)
    sw         $t1,-4($a1)
.L00007aec:
    andi       $v0,$a2,0x4
    beqz       $v0, .L00007b08
    nop
    lw         $t0,0($a0)
    daddiu     $a0,$a0,4
    daddiu     $a1,$a1,4
    sw         $t0,-4($a1)
.L00007b08:
    andi       $v1,$a2,0x3
    beqz       $v1, .L00007c08
    daddu      $a0,$a0,$v1
    lwr        $t0,-1($a0)
    daddu      $a1,$a1,$v1
    move       $v0,$t8
    jr         $ra
    swr        $t0,-1($a1)
.L00007b28:
    beqz       $v1, .L00007b50
    nop
    subu       $a3,$a3,$v1
    subu       $a2,$a2,$a3
    daddu      $a3,$a3,$a1
.L00007b3c:
    lb         $v0,0($a0)
    daddiu     $a1,$a1,1
    daddiu     $a0,$a0,1
    bne        $a1, $a3, .L00007b3c
    sb         $v0,-1($a1)
.L00007b50:
    li         $at,-16
    and        $a3,$a2,$at
    beqz       $a3, .L00007ba0
    nop
    daddu      $a3,$a3,$a1
.L00007b64:
    lwl        $t0,0($a0)
    daddiu     $a1,$a1,16
    lwr        $t0,3($a0)
    daddiu     $a0,$a0,16
    lwl        $t1,-12($a0)
    lwr        $t1,-9($a0)
    sw         $t0,-16($a1)
    lwl        $t2,-8($a0)
    lwr        $t2,-5($a0)
    sw         $t1,-12($a1)
    lwl        $t3,-4($a0)
    lwr        $t3,-1($a0)
    sw         $t2,-8($a1)
    bne        $a3, $a1, .L00007b64
    sw         $t3,-4($a1)
.L00007ba0:
    andi       $v1,$a2,0x8
    beqz       $v1, .L00007bcc
    nop
    lwl        $t0,0($a0)
    daddiu     $a0,$a0,8
    lwl        $t1,-4($a0)
    daddiu     $a1,$a1,8
    lwr        $t0,-5($a0)
    lwr        $t1,-1($a0)
    sw         $t0,-8($a1)
    sw         $t1,-4($a1)
.L00007bcc:
    andi       $v0,$a2,0x4
    beqz       $v0, .L00007bec
    andi       $a2,$a2,0x3
    lwl        $t0,0($a0)
    daddiu     $a0,$a0,4
    lwr        $t0,-1($a0)
    daddiu     $a1,$a1,4
    sw         $t0,-4($a1)
.L00007bec:
    beqz       $a2, .L00007c08
    daddu      $a3,$a0,$a2
.L00007bf4:
    lb         $v0,0($a0)
    daddiu     $a0,$a0,1
    daddiu     $a1,$a1,1
    bne        $a0, $a3, .L00007bf4
    sb         $v0,-1($a1)
.L00007c08:
    jr         $ra
    move       $v0,$t8
.L00007c10:
    slti       $at,$a2,12
    daddu      $a0,$a0,$a2
    bnez       $at, .L00007c30
    daddu      $a1,$a1,$a2
    andi       $v0,$a0,0x3
    andi       $v1,$a1,0x3
    beq        $v0, $v1, .L00007c60
    nop
.L00007c30:
    beqz       $a2, .L00007c08
    nop
    daddiu     $a0,$a0,-1
    daddiu     $a1,$a1,-1
    dsubu      $v1,$a0,$a2
.L00007c44:
    lb         $v0,0($a0)
    daddiu     $a0,$a0,-1
    daddiu     $a1,$a1,-1
    bne        $a0, $v1, .L00007c44
    sb         $v0,1($a1)
    jr         $ra
    move       $v0,$t8
.L00007c60:
    beqz       $v0, .L00007cc4
    li         $at,3
    beq        $v0, $at, .L00007ca8
    li         $at,2
    beq        $v0, $at, .L00007c90
    nop
    lb         $v0,-1($a0)
    daddiu     $a0,$a0,-1
    daddiu     $a1,$a1,-1
    addiu      $a2,$a2,-1
    b          .L00007cc4
    sb         $v0,0($a1)
.L00007c90:
    lh         $v0,-2($a0)
    daddiu     $a0,$a0,-2
    daddiu     $a1,$a1,-2
    addiu      $a2,$a2,-2
    b          .L00007cc4
    sh         $v0,0($a1)
.L00007ca8:
    lb         $v0,-1($a0)
    daddiu     $a0,$a0,-3
    lh         $v1,0($a0)
    daddiu     $a1,$a1,-3
    addiu      $a2,$a2,-3
    sb         $v0,2($a1)
    sh         $v1,0($a1)
.L00007cc4:
    slti       $at,$a2,32
    bnez       $at, .L00007d20
    nop
    lw         $v0,-4($a0)
    daddiu     $a0,$a0,-32
    lw         $v1,24($a0)
    daddiu     $a1,$a1,-32
    lw         $t0,20($a0)
    addiu      $a2,$a2,-32
    lw         $t1,16($a0)
    lw         $t2,12($a0)
    lw         $t3,8($a0)
    lw         $a4,4($a0)
    lw         $a5,0($a0)
    sw         $v0,28($a1)
    sw         $v1,24($a1)
    sw         $t0,20($a1)
    sw         $t1,16($a1)
    sw         $t2,12($a1)
    sw         $t3,8($a1)
    sw         $a4,4($a1)
    b          .L00007cc4
    sw         $a5,0($a1)
.L00007d20:
    slti       $at,$a2,16
    bnez       $at, .L00007d5c
    nop
    lw         $v0,-4($a0)
    daddiu     $a0,$a0,-16
    lw         $v1,8($a0)
    daddiu     $a1,$a1,-16
    lw         $t0,4($a0)
    addiu      $a2,$a2,-16
    lw         $t1,0($a0)
    sw         $v0,12($a1)
    sw         $v1,8($a1)
    sw         $t0,4($a1)
    b          .L00007d20
    sw         $t1,0($a1)
.L00007d5c:
    slti       $at,$a2,4
    bnez       $at, .L00007c30
    nop
    lw         $v0,-4($a0)
    daddiu     $a0,$a0,-4
    daddiu     $a1,$a1,-4
    addiu      $a2,$a2,-4
    b          .L00007d5c
    sw         $v0,0($a1)

glabel swbcopy
    beqz       $a2, .L00007db0
    nop
    beq        $a0, $a1, .L00007db0
    nop
.L00007d90:
    lb         $v0,0($a0)
    addiu      $a2,$a2,-2
    lb         $v1,1($a0)
    daddiu     $a0,$a0,2
    daddiu     $a1,$a1,2
    sb         $v0,-1($a1)
    bgtz       $a2, .L00007d90
    sb         $v1,-2($a1)
.L00007db0:
    jr         $ra
    nop

glabel rtlock_ownerstamp
    bltz       $a0, .L00007758
    ld         $t0,-16352($zero)
    li         $v0,4
    sh         $v0,246($t0)
.L00007dc8:
    ll         $t1,0($a0)
    move       $t1,$a1
    sc         $t1,0($a0)
    beqzl      $t1, .L00007dc8
    nop
    sh         $zero,246($t0)
    jr         $ra
    move       $v0,$zero

glabel dumpcopy
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    ld         $t0,-16352($zero)
    beqz       $t0, .L00007e04
    li         $v0,14
    b          .L00007e08
    sh         $v0,246($t0)
.L00007e04:
    sw         $v0,-15356($zero)
.L00007e08:
    jal        bcopy
    nop
    ld         $t0,-16352($zero)
    beqz       $t0, .L00007e24
    move       $v0,$zero
    b          .L00007e28
    sh         $zero,246($t0)
.L00007e24:
    sw         $zero,-15356($zero)
.L00007e28:
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    nop

glabel delay_calibrate
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        _ticksper1024inst
    nop
    dsll       $at,$v0,0x2
    ld         $ra,0($sp)
    daddu      $at,$at,$v0
    dsll       $at,$at,0x5
    dsrl       $at,$at,0xa
    daddiu     $sp,$sp,16
    jr         $ra
    sw         $at,-15176($zero)

glabel us_delaybus
    daddiu     $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        flushbus
    move       $s8,$a0
    jal        us_delay
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16
    lw         $v0,0($gp)
    daddiu     $sp,$sp,-48
    beqz       $v0, .L00007eac
    sd         $ra,24($sp)
.L00007ea4:
    jr         $ra
    daddiu     $sp,$sp,48
.L00007eac:
    sd         $s1,32($sp)
    jal        splprof
    sd         $s0,40($sp)
    lui        $s0,0xaff2
    ld         $a3,0($s0)
    ld         $s1,0($s0)
    bne        $s1, $a3, .L00007ef0
    sd         $v0,0($sp)
.L00007ecc:
    ld         $s1,0($s0)
    bne        $s1, $a3, .L00007ef0
    nop
    ld         $s1,0($s0)
    bne        $s1, $a3, .L00007ef0
    nop
    ld         $s1,0($s0)
    beq        $s1, $a3, .L00007ecc
    nop
.L00007ef0:
    jal        _get_count
    nop
    ld         $at,0($s0)
    daddiu     $a3,$s1,12500
    sltu       $at,$at,$a3
    beqz       $at, .L00007f5c
    sd         $v0,8($sp)
.L00007f0c:
    ld         $v0,0($s0)
    sltu       $v0,$v0,$a3
    beqz       $v0, .L00007f5c
    nop
    ld         $v1,0($s0)
    sltu       $v1,$v1,$a3
    beqz       $v1, .L00007f5c
    nop
    ld         $a0,0($s0)
    sltu       $a0,$a0,$a3
    beqz       $a0, .L00007f5c
    nop
    ld         $a1,0($s0)
    sltu       $a1,$a1,$a3
    beqz       $a1, .L00007f5c
    nop
    ld         $a2,0($s0)
    sltu       $a2,$a2,$a3
    bnez       $a2, .L00007f0c
    nop
.L00007f5c:
    ld         $s0,40($sp)
    jal        _get_count
    ld         $s1,32($sp)
    sd         $v0,16($sp)
    jal        splx
    ld         $a0,0($sp)
    ld         $a6,8($sp)
    ld         $a5,16($sp)
    subu       $a5,$a5,$a6
    li         $a6,100
    addiu      $a5,$a5,50
    divu       $zero,$a5,$a6
    lui        $a4,0x3
    ori        $a4,$a4,0xd40
    mflo       $a3
    multu      $a3,$a4
    ld         $ra,24($sp)
    mflo       $v0
    b          .L00007ea4
    sw         $v0,0($gp)

glabel findcpufreq_hz
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    jal        .text
    nop
    ld         $ra,8($sp)
    lw         $t0,0($sp)
    move       $a2,$zero
    li         $a7,-1
    ld         $a6,-32504($gp)
    b          .L00008048
    move       $a3,$a7
.L00007fe0:
    beq        $a3, $a7, .L00008028
    subu       $a4,$v0,$a5
    slt        $at,$a4,$a3
.L00007fec:
    beqz       $at, .L00007ffc
    nop
    move       $a3,$a4
    move       $t0,$a2
.L00007ffc:
    addiu      $a2,$a2,1
    sltiu      $v1,$a2,30
    dsll       $a5,$a2,0x2
    beqz       $v1, .L00008034
    daddu      $a5,$a6,$a5
    lw         $a5,0($a5)
.L00008014:
    sltu       $a0,$a5,$v0
    bnez       $a0, .L00007fe0
    subu       $a4,$a5,$v0
    bne        $a3, $a7, .L00007fec
    slt        $at,$a4,$a3
.L00008028:
    move       $t0,$a2
    b          .L00007ffc
    move       $a3,$a4
.L00008034:
    dsll       $v0,$t0,0x2
    daddu      $v0,$a6,$v0
    lw         $v0,0($v0)
    jr         $ra
    daddiu     $sp,$sp,16
.L00008048:
    dsll       $a5,$a2,0x2
    daddu      $a5,$a6,$a5
    b          .L00008014
    lw         $a5,0($a5)

glabel cpu_mhz_rating
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        findcpufreq_hz
    nop
    lui        $at,0xf
    ori        $at,$at,0x4240
    divu       $zero,$v0,$at
    ld         $ra,0($sp)
    daddiu     $sp,$sp,16
    mflo       $v0
    jr         $ra
    teq        $at,$zero,0x7

glabel findcpufreq
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        findcpufreq_hz
    nop
    lui        $v1,0xf
    ori        $v1,$v1,0x4240
    divu       $zero,$v0,$v1
    ld         $ra,0($sp)
    daddiu     $sp,$sp,16
    teq        $v1,$zero,0x7
    mflo       $v0
    jr         $ra
    srl        $v0,$v0,0x1

glabel heartclock_intr
    li         $at,1
    lui        $v0,0xaff1
    dsll32     $at,$at,0x12
    jr         $ra
    sd         $at,40($v0)
    move       $a3,$a1
    ld         $a1,-32496($gp)
    daddiu     $sp,$sp,-16
    move       $at,$a0
    li         $a0,4
    sd         $s3,8($sp)
    move       $s3,$a2
    sd         $ra,0($sp)
    jal        cmn_err
    move       $a2,$at
    ld         $a1,-32496($gp)
    li         $a0,4
    move       $a2,$s3
    jal        cmn_err
    daddiu     $a1,$a1,40
    ld         $ra,0($sp)
    ld         $s3,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel startkgclock
    lw         $a0,0($gp)
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    lui        $s0,0xbe
    slti       $t9,$a0,2501
    sd         $ra,8($sp)
    beqz       $a0, .L00008240
    ori        $s0,$s0,0xbc20
    slti       $t8,$a0,500
    bnez       $t8, .L00008200
    ld         $a1,-32496($gp)
    beqz       $t9, .L00008274
    ld         $a1,-32496($gp)
    div        $zero,$s0,$a0
    mfhi       $ra
    bnez       $ra, .L00008174
    teq        $a0,$zero,0x7
    lw         $v0,-14604($zero)
    div        $zero,$v0,$a0
    mfhi       $at
    beqz       $at, .L0000818c
    teq        $a0,$zero,0x7
.L00008174:
    ld         $a1,-32496($gp)
.L00008178:
    li         $a2,1000
    jal        .text
    daddiu     $a1,$a1,104
    li         $a0,1000
    sw         $a0,0($gp)
.L0000818c:
    lui        $a4,0xf
.L00008190:
    ori        $a4,$a4,0x4240
    ddiv       $zero,$a4,$a0
    mflo       $a3
    ddiv       $zero,$s0,$a0
    teq        $a0,$zero,0x7
    sd         $s8,16($sp)
    teq        $a0,$zero,0x7
    sw         $a3,0($gp)
    mflo       $a2
    jal        splprof
    sw         $a2,0($gp)
    ld         $s0,0($sp)
    move       $s8,$v0
    sw         $zero,-14996($zero)
    li         $a5,1
    sd         $a5,-15024($zero)
    li         $a1,-1
    lh         $a0,-15456($zero)
    jal        set_timer_intr
    move       $a2,$zero
    jal        splx
    move       $a0,$s8
    ld         $ra,8($sp)
    ld         $s8,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00008200:
    li         $a2,500
    jal        .text
    daddiu     $a1,$a1,72
    li         $v0,500
    div        $zero,$s0,$v0
    mfhi       $a2
    move       $a0,$v0
    bnez       $a2, .L00008174
    sw         $a0,0($gp)
    lw         $a4,-14604($zero)
    div        $zero,$a4,$v0
    mfhi       $a3
    bnez       $a3, .L00008178
    ld         $a1,-32496($gp)
    b          .L00008190
    lui        $a4,0xf
.L00008240:
    li         $v0,1000
    div        $zero,$s0,$v0
    mfhi       $a5
    move       $a0,$v0
    bnez       $a5, .L00008174
    sw         $a0,0($gp)
    lw         $a7,-14604($zero)
    div        $zero,$a7,$v0
    mfhi       $a6
    bnez       $a6, .L00008178
    ld         $a1,-32496($gp)
    b          .L00008190
    lui        $a4,0xf
.L00008274:
    li         $a2,2500
    jal        .text
    daddiu     $a1,$a1,88
    li         $v0,2500
    div        $zero,$s0,$v0
    mfhi       $a2
    move       $a0,$v0
    bnez       $a2, .L00008174
    sw         $a0,0($gp)
    lw         $a4,-14604($zero)
    div        $zero,$a4,$v0
    mfhi       $a3
    bnez       $a3, .L00008178
    ld         $a1,-32496($gp)
    b          .L00008190
    lui        $a4,0xf

glabel slowkgclock
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        splprof
    nop
    move       $a0,$v0
    jal        splx
    sd         $zero,-15024($zero)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel timestamp_init
    li         $v1,343
    sw         $v1,0($gp)
    li         $v0,80
    sw         $v0,0($gp)
    lui        $at,0xbe
    ori        $at,$at,0xbc20
    sw         $at,0($gp)
    jr         $ra
    sw         $at,0($gp)

glabel baseio_qlsave
    lw         $a2,0($gp)
    slti       $at,$a2,2
    daddiu     $a3,$gp,-32568
    beqz       $at, .L0000831c
    dsll       $v0,$a2,0x2
    daddu      $v0,$a3,$v0
    sw         $a0,0($v0)
.L0000831c:
    addiu      $v1,$a2,1
    jr         $ra
    sw         $v1,0($gp)
.L00008328:
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    li         $a0,4
    jal        cmn_err
    ld         $a1,-32488($gp)
    move       $a1,$zero
    lh         $a0,-15456($zero)
    li         $a2,1
    jal        heart_imr_bits_rmw
    dsll32     $a2,$a2,0x19
    jal        nested_spinunlock
    daddiu     $a0,$gp,0
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel powerfail_ql_thread
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s0,16($sp)
    move       $s0,$zero
    sd         $s1,8($sp)
    daddiu     $s1,$gp,-32568
    dsll       $a0,$s0,0x2
    daddu      $a0,$s1,$a0
.L00008384:
    lw         $a0,0($a0)
    beqz       $a0, .L00008398
    nop
    jal        qlreset
    nop
.L00008398:
    addiu      $s0,$s0,1
    slti       $a1,$s0,2
    dsll       $a0,$s0,0x2
    bnez       $a1, .L00008384
    daddu      $a0,$s1,$a0
    ld         $ra,0($sp)
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel powerfail
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        slow_ioc3_sio
    nop
    lui        $a0,0x7
    ori        $a0,$a0,0x8000
    jal        restore_ioc3_sio
    or         $a0,$v0,$a0
    ld         $a1,-32488($gp)
    li         $a0,4
    jal        cmn_err
    daddiu     $a1,$a1,32
    ld         $a2,0($gp)
    lw         $a3,0($a2)
    andi       $a3,$a3,0x1000
    beqz       $a3, .L0000840c
    nop
    jal        vsema
    daddiu     $a0,$a2,8
.L0000840c:
    li         $a2,200
    move       $a1,$zero
    jal        timeout
    ld         $a0,-32480($gp)
    move       $a2,$zero
    lh         $a0,-15456($zero)
    li         $a1,1
    jal        heart_imr_bits_rmw
    dsll32     $a1,$a1,0x19
    jal        nested_spinlock
    daddiu     $a0,$gp,0
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00008444:
    ld         $a1,-32488($gp)
    li         $a0,4
    lw         $a2,0($gp)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,64
    lui        $a0,0x7
    jal        us_delay
    ori        $a0,$a0,0xa120
    jal        cpu_soft_powerdown
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L00008480:
    lw         $at,-32584($gp)
    daddiu     $sp,$sp,-16
    addiu      $at,$at,-1
    sd         $ra,0($sp)
    bltz       $at, .L000084c0
    sw         $at,-32584($gp)
    jal        srflash_softpower_check
    nop
    beqz       $v0, .L000084c0
    li         $a2,500
    move       $a1,$zero
    jal        timeout
    ld         $a0,-32472($gp)
    ld         $ra,0($sp)
.L000084b8:
    jr         $ra
    daddiu     $sp,$sp,16
.L000084c0:
    ld         $a1,-32488($gp)
    li         $a0,5
    jal        cmn_err
    daddiu     $a1,$a1,128
    jal        .text
    nop
    b          .L000084b8
    ld         $ra,0($sp)

glabel powerintr
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cpu_clearpower
    nop
    jal        flushbus
    nop
    lw         $at,-32576($gp)
    beqz       $at, .L00008534
    lw         $v0,-32580($gp)
.L00008504:
    beqz       $v0, .L00008514
    ld         $ra,0($sp)
.L0000850c:
    jr         $ra
    daddiu     $sp,$sp,16
.L00008514:
    jal        srflash_softpower_startdown
    nop
    bnez       $v0, .L0000854c
    ld         $a1,-32488($gp)
    jal        .text
    nop
    b          .L0000850c
    ld         $ra,0($sp)
.L00008534:
    li         $a0,3
    li         $v1,1
    jal        .text
    sw         $v1,-32576($gp)
    b          .L00008504
    lw         $v0,-32580($gp)
.L0000854c:
    li         $a0,5
    li         $a2,1
    sw         $a2,-32580($gp)
    jal        cmn_err
    daddiu     $a1,$a1,192
    li         $a2,500
    move       $a1,$zero
    jal        timeout
    ld         $a0,-32472($gp)
    b          .L0000850c
    ld         $ra,0($sp)
    lw         $a3,-32560($gp)
    lw         $a2,0($gp)
    li         $a0,1
    sw         $a0,0($gp)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    beqz       $a3, .L000085ac
    slt        $at,$a3,$a2
    bnez       $at, .L00008620
    ld         $a1,-32488($gp)
    ld         $ra,0($sp)
.L000085a4:
    jr         $ra
    daddiu     $sp,$sp,16
.L000085ac:
    li         $a1,2
    li         $a2,18
    move       $a3,$zero
    move       $a4,$zero
    jal        sigtopid
    move       $a5,$zero
    beqz       $v0, .L000085e8
    lw         $a3,0($gp)
    lui        $a0,0x7
    jal        us_delay
    ori        $a0,$a0,0xa120
    jal        cpu_soft_powerdown
    nop
    b          .L000085a4
    ld         $ra,0($sp)
.L000085e8:
    sll        $a2,$a3,0x2
    subu       $a2,$a2,$a3
    move       $a1,$zero
    sll        $a2,$a2,0x3
    ld         $a0,-32464($gp)
    addu       $a2,$a2,$a3
    jal        timeout
    sll        $a2,$a2,0x2
    lw         $a3,0($gp)
    addiu      $a3,$a3,100
    jal        set_autopoweron
    sw         $a3,-32560($gp)
    b          .L000085a4
    ld         $ra,0($sp)
.L00008620:
    li         $a0,5
    jal        cmn_err
    daddiu     $a1,$a1,248
    lui        $a0,0x7
    jal        us_delay
    ori        $a0,$a0,0xa120
    jal        cpu_soft_powerdown
    nop
    b          .L000085a4
    ld         $ra,0($sp)
.L00008648:
    daddiu     $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        set_leds
    move       $s8,$a0
    li         $a2,25
    ld         $a0,-32456($gp)
    li         $a1,3
    jal        timeout
    movn       $a1,$zero,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel cpu_waitforreset
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    ld         $s0,-32552($gp)
    sd         $ra,8($sp)
.L00008690:
    lw         $at,0($s0)
    andi       $at,$at,0x40
    beqz       $at, .L00008690
    nop
    jal        cpu_soft_powerdown
    nop
    b          .L00008690
    nop

glabel rtodc
    move       $a0,$zero
    daddiu     $sp,$sp,-32
    sd         $ra,16($sp)
    jal        .text
    daddiu     $a1,$sp,0
    beqz       $v0, .L00008840
    li         $a2,400
.L000086cc:
    lhu        $a4,4($sp)
    lui        $t0,0x1e1
    li         $t2,100
    lhu        $t1,8($sp)
    sll        $v1,$a4,0x3
    lhu        $a3,6($sp)
    lui        $a7,0x1
    lhu        $a5,2($sp)
    subu       $v1,$v1,$a4
    ori        $a7,$a7,0x5180
    lhu        $a6,10($sp)
    sll        $v1,$v1,0x5
    mult       $a7,$a3
    sll        $a3,$a5,0x4
    addu       $v1,$v1,$a4
    slti       $a4,$t1,2
    sra        $a1,$a6,0x1f
    lhu        $v0,0($sp)
    subu       $a3,$a3,$a5
    xor        $a0,$a6,$a1
    sll        $a3,$a3,0x2
    subu       $a0,$a0,$a1
    addu       $v0,$v0,$a3
    andi       $a0,$a0,0x3
    xor        $a0,$a0,$a1
    sll        $v1,$v1,0x4
    addu       $v0,$v0,$v1
    lui        $v1,0xfffe
    subu       $a0,$a0,$a1
    mflo       $a1
    ori        $v1,$v1,0xae80
    addu       $v0,$v0,$a1
    beqz       $a0, .L00008824
    addu       $v0,$v0,$v1
.L00008754:
    div        $zero,$a6,$a2
    mfhi       $a1
    beqz       $a1, .L00008838
    move       $a2,$zero
.L00008764:
    dsll       $a3,$a2,0x2
    dsubu      $a3,$a3,$a2
    ld         $a5,-32448($gp)
    move       $a2,$zero
    bnez       $a4, .L000087a0
    dsll       $a3,$a3,0x2
    addiu      $a4,$t1,-2
.L00008780:
    daddu      $t1,$a2,$a3
    dsll       $t1,$t1,0x2
    addiu      $a2,$a2,1
    daddu      $t1,$a5,$t1
    slt        $t3,$a4,$a2
    lw         $t1,0($t1)
    beqz       $t3, .L00008780
    addu       $v0,$t1,$v0
.L000087a0:
    slti       $t3,$a6,1971
    ori        $a3,$t0,0x3380
    li         $a4,400
    bnez       $t3, .L00008818
    addiu      $a2,$a6,-1
    b          .L00008864
    sra        $ra,$a2,0x1f
.L000087bc:
    addiu      $a2,$a2,-1
    slti       $t8,$a2,1970
    sra        $ra,$a2,0x1f
    xor        $t9,$a2,$ra
    bnez       $t8, .L00008818
    subu       $t9,$t9,$ra
    andi       $t9,$t9,0x3
.L000087d8:
    xor        $t9,$t9,$ra
    subu       $t9,$t9,$ra
    beqz       $t9, .L00008800
    addu       $v0,$v0,$a3
.L000087e8:
    div        $zero,$a2,$a4
    mfhi       $ra
    bnez       $ra, .L000087bc
    nop
.L000087f8:
    b          .L000087bc
    addu       $v0,$v0,$a7
.L00008800:
    div        $zero,$a2,$t2
    mfhi       $at
    bnez       $at, .L000087f8
    nop
    b          .L000087e8
    nop
.L00008818:
    ld         $ra,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00008824:
    li         $a0,100
    div        $zero,$a6,$a0
    mfhi       $v1
    beqz       $v1, .L00008754
    nop
.L00008838:
    b          .L00008764
    li         $a2,1
.L00008840:
    jal        us_delay
    li         $a0,100
    move       $a0,$zero
    jal        .text
    daddiu     $a1,$sp,0
    beqz       $v0, .L00008840
    nop
    b          .L000086cc
    li         $a2,400
.L00008864:
    xor        $t9,$a2,$ra
    subu       $t9,$t9,$ra
    b          .L000087d8
    andi       $t9,$t9,0x3

glabel wtodc
    daddiu     $sp,$sp,-32
    daddiu     $a1,$sp,10
    daddiu     $a2,$sp,8
    daddiu     $a3,$sp,6
    lw         $a0,0($gp)
    daddiu     $a4,$sp,4
    daddiu     $a5,$sp,2
    sd         $ra,16($sp)
    jal        .text
    daddiu     $a6,$sp,0
    lw         $a0,0($gp)
    lui        $v0,0x1
    ori        $v0,$v0,0x5180
    div        $zero,$a0,$v0
    mflo       $v1
    li         $a0,7
    addiu      $v1,$v1,4
    div        $zero,$v1,$a0
    daddiu     $a1,$sp,0
    teq        $v0,$zero,0x7
    li         $a0,1
    mfhi       $at
    addiu      $at,$at,1
    jal        .text
    sh         $at,12($sp)
    ld         $ra,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
    daddiu     $sp,$sp,-32
    sd         $s1,0($sp)
    move       $s1,$a1
    ld         $a1,-32440($gp)
    sd         $ra,8($sp)
    sd         $s5,16($sp)
    move       $s5,$a0
    daddiu     $a0,$gp,0
    jal        mutex_spinlock_spl
    sd         $s0,24($sp)
    jal        slow_ioc3_sio
    move       $s0,$v0
    li         $a6,10
    li         $t0,11
    li         $a0,48
    ld         $a5,-32544($gp)
    li         $a7,134
    ld         $a4,-32536($gp)
    beqz       $s5, .L00008a20
    li         $a1,74
    li         $at,9
    sb         $a6,0($a5)
    sb         $a0,0($a4)
    sb         $t0,0($a5)
    sb         $a7,0($a4)
    sb         $zero,0($a5)
    lhu        $ra,0($s1)
    sb         $ra,0($a4)
    li         $t9,2
    sb         $t9,0($a5)
    lhu        $t8,2($s1)
    sb         $t8,0($a4)
    li         $t3,4
    sb         $t3,0($a5)
    lhu        $t2,4($s1)
    sb         $t2,0($a4)
    li         $t1,7
    sb         $t1,0($a5)
    lhu        $a3,6($s1)
    sb         $a3,0($a4)
    li         $a2,8
    sb         $a2,0($a5)
    lhu        $v1,8($s1)
    sb         $v1,0($a4)
    sb         $at,0($a5)
    lhu        $ra,10($s1)
    li         $t3,100
    div        $zero,$ra,$t3
    mfhi       $t9
    sb         $t9,0($a4)
    li         $t8,72
    sb         $t8,0($a5)
    lhu        $t2,10($s1)
    div        $zero,$t2,$t3
    mflo       $t1
    sb         $t1,0($a4)
    li         $a2,6
    sb         $a2,0($a5)
    lhu        $a3,12($s1)
    sb         $a3,0($a4)
    sb         $t0,0($a5)
    sb         $a2,0($a4)
    sb         $a1,0($a5)
    sb         $zero,0($a4)
    li         $v1,12
    sb         $v1,0($a5)
    lbu        $at,0($a4)
.L000089f0:
    jal        restore_ioc3_sio
    move       $a0,$v0
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    move       $a1,$s0
    li         $v0,1
.L00008a08:
    ld         $ra,8($sp)
    ld         $s0,24($sp)
    ld         $s1,0($sp)
    ld         $s5,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00008a20:
    sb         $a6,0($a5)
    sb         $a0,0($a4)
    sb         $a1,0($a5)
    lbu        $at,0($a4)
    li         $t3,7
    li         $t1,8
    li         $a7,9
    andi       $at,$at,0x40
    li         $a3,72
    li         $a0,6
    beqz       $at, .L00008a6c
    li         $t9,4
    jal        restore_ioc3_sio
    move       $a0,$v0
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    move       $a1,$s0
    b          .L00008a08
    move       $v0,$zero
.L00008a6c:
    sb         $zero,0($a5)
    lbu        $v1,0($a4)
    sh         $v1,0($s1)
    li         $at,2
    sb         $at,0($a5)
    lbu        $ra,0($a4)
    sh         $ra,2($s1)
    sb         $t9,0($a5)
    lbu        $t8,0($a4)
    sh         $t8,4($s1)
    sb         $t3,0($a5)
    lbu        $t2,0($a4)
    sh         $t2,6($s1)
    sb         $t1,0($a5)
    lbu        $t0,0($a4)
    sh         $t0,8($s1)
    sb         $a7,0($a5)
    lbu        $a6,0($a4)
    sh         $a6,10($s1)
    sb         $a3,0($a5)
    lbu        $a3,0($a4)
    sll        $a2,$a3,0x2
    subu       $a2,$a2,$a3
    sll        $a2,$a2,0x3
    lhu        $a1,10($s1)
    addu       $a2,$a2,$a3
    sll        $a2,$a2,0x2
    addu       $a1,$a1,$a2
    sh         $a1,10($s1)
    sb         $a0,0($a5)
    lbu        $v1,0($a4)
    b          .L000089f0
    sh         $v1,12($s1)

glabel set_autopoweron
    lw         $a0,0($gp)
    lw         $at,0($gp)
    slt        $at,$at,$a0
    daddiu     $sp,$sp,-48
    bnez       $at, .L00008ba4
    sd         $ra,32($sp)
    daddiu     $a1,$sp,0
    daddiu     $a2,$sp,2
    daddiu     $a3,$sp,4
    daddiu     $a4,$sp,6
    daddiu     $a5,$sp,8
    jal        .text
    daddiu     $a6,$sp,10
    daddiu     $a6,$sp,22
    daddiu     $a5,$sp,20
    daddiu     $a4,$sp,18
    daddiu     $a3,$sp,16
    daddiu     $a2,$sp,14
    daddiu     $a1,$sp,12
    jal        .text
    lw         $a0,0($gp)
    lhu        $v0,0($sp)
    sra        $a0,$v0,0x1f
    xor        $v1,$v0,$a0
    subu       $v1,$v1,$a0
    lw         $a1,0($gp)
    andi       $v1,$v1,0x3
    lw         $a4,0($gp)
    xor        $v1,$v1,$a0
    subu       $v1,$v1,$a0
    ld         $a6,-32448($gp)
    subu       $a3,$a4,$a1
    lhu        $a5,14($sp)
    beqz       $v1, .L00008bb0
    li         $a0,400
.L00008b7c:
    div        $zero,$v0,$a0
    mfhi       $a2
    beqz       $a2, .L00008bc4
    lhu        $t9,14($sp)
    dsll       $a7,$a5,0x2
    daddu      $a7,$a6,$a7
    lw         $a7,-4($a7)
    slt        $a3,$a3,$a7
    bnez       $a3, .L00008bec
    ld         $a1,-32440($gp)
.L00008ba4:
    ld         $ra,32($sp)
.L00008ba8:
    jr         $ra
    daddiu     $sp,$sp,48
.L00008bb0:
    li         $t1,100
    div        $zero,$v0,$t1
    mfhi       $t0
    beqz       $t0, .L00008b7c
    lhu        $t9,14($sp)
.L00008bc4:
    ld         $t3,-32448($gp)
    lw         $t8,0($gp)
    dsll       $t9,$t9,0x2
    lw         $t2,0($gp)
    daddu      $t3,$t3,$t9
    lw         $t3,44($t3)
    subu       $t2,$t2,$t8
    slt        $t2,$t2,$t3
    beqz       $t2, .L00008ba4
    ld         $a1,-32440($gp)
.L00008bec:
    jal        mutex_spinlock_spl
    daddiu     $a0,$gp,0
    jal        slow_ioc3_sio
    sd         $v0,24($sp)
    ld         $v1,-32544($gp)
    ld         $at,-32536($gp)
    li         $t2,10
    sb         $t2,0($v1)
    li         $t1,48
    sb         $t1,0($at)
    li         $t0,1
    sb         $t0,0($v1)
    lhu        $a7,22($sp)
    sb         $a7,0($at)
    li         $a6,3
    sb         $a6,0($v1)
    lhu        $a5,20($sp)
    sb         $a5,0($at)
    li         $a4,5
    sb         $a4,0($v1)
    lhu        $a3,18($sp)
    sb         $a3,0($at)
    li         $a2,73
    sb         $a2,0($v1)
    lhu        $a1,16($sp)
    sb         $a1,0($at)
    move       $a0,$v0
    li         $v0,75
    sb         $v0,0($v1)
    lbu        $ra,0($at)
    sb         $v0,0($v1)
    ori        $ra,$ra,0x3
    sb         $ra,0($at)
    jal        restore_ioc3_sio
    nop
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,24($sp)
    b          .L00008ba8
    ld         $ra,32($sp)
    li         $at,1970
    sh         $at,0($a1)
    daddiu     $sp,$sp,-48
    sd         $s0,24($sp)
    lui        $t9,0x1e1
    li         $s0,400
    sd         $s7,8($sp)
    move       $t0,$at
    li         $s7,3600
    sd         $ra,32($sp)
    ori        $t9,$t9,0x3380
    sd         $s5,16($sp)
    lui        $s5,0x1
    sd         $s5,0($sp)
    b          .L00008cd8
    ori        $s5,$s5,0x5180
.L00008ccc:
    subu       $a0,$a0,$t1
.L00008cd0:
    andi       $t0,$t2,0xffff
    sh         $t0,0($a1)
.L00008cd8:
    lui        $t3,0x1e1
    sra        $at,$t0,0x1f
    xor        $ra,$t0,$at
    subu       $ra,$ra,$at
    andi       $ra,$ra,0x3
    xor        $ra,$ra,$at
    subu       $ra,$ra,$at
    addiu      $t2,$t0,1
    beqz       $ra, .L00008d50
    slt        $t8,$a0,$t9
.L00008d00:
    div        $zero,$t0,$s0
    mfhi       $at
    beqz       $at, .L00008d64
    ori        $t1,$t3,0x3380
    beqz       $t8, .L00008ccc
    nop
.L00008d18:
    beqz       $ra, .L00008d84
    li         $t9,100
.L00008d20:
    div        $zero,$t0,$s0
    mfhi       $v0
    beqz       $v0, .L00008d90
    move       $t2,$zero
    ld         $t1,-32448($gp)
    lw         $v1,0($t1)
    slt        $v1,$a0,$v1
    move       $a1,$zero
    beqz       $v1, .L00008dac
    sh         $zero,0($a2)
    b          .L00008df8
    nop
.L00008d50:
    li         $t1,100
    div        $zero,$t0,$t1
    mfhi       $a7
    beqz       $a7, .L00008d00
    nop
.L00008d64:
    lui        $t3,0x1e2
    ori        $t3,$t3,0x8500
    slt        $t8,$a0,$t3
    lui        $t1,0x1e2
    bnez       $t8, .L00008d18
    ori        $t1,$t1,0x8500
    b          .L00008cd0
    subu       $a0,$a0,$t1
.L00008d84:
    div        $zero,$t0,$t9
    mfhi       $t8
    beqz       $t8, .L00008d20
.L00008d90:
    ld         $t1,-32448($gp)
    lw         $ra,48($t1)
    slt        $ra,$a0,$ra
    move       $a1,$zero
    sh         $zero,0($a2)
    bnez       $ra, .L00008df8
    li         $t2,1
.L00008dac:
    dsll       $t0,$t2,0x2
    dsubu      $t0,$t0,$t2
    dsll       $t0,$t0,0x2
.L00008db8:
    dsll32     $t3,$a1,0x0
    addiu      $a1,$a1,1
    dsrl32     $t3,$t3,0x0
    andi       $a1,$a1,0xffff
    daddu      $t3,$t3,$t0
    daddu      $t2,$a1,$t0
    dsll       $t3,$t3,0x2
    dsll       $t2,$t2,0x2
    daddu      $t3,$t1,$t3
    daddu      $t2,$t1,$t2
    lw         $t3,0($t3)
    lw         $t2,0($t2)
    subu       $a0,$a0,$t3
    slt        $t2,$a0,$t2
    beqz       $t2, .L00008db8
    sh         $a1,0($a2)
.L00008df8:
    div        $zero,$a0,$s5
    mfhi       $a0
    nop
    mflo       $t9
    div        $zero,$a0,$s7
    li         $v1,60
    mfhi       $v0
    nop
    mflo       $t8
    div        $zero,$v0,$v1
    ld         $s0,24($sp)
    addiu      $at,$a1,1
    sh         $at,0($a2)
    ld         $ra,32($sp)
    addiu      $t9,$t9,1
    sh         $t9,0($a3)
    sh         $t8,0($a4)
    mflo       $s7
    sh         $s7,0($a5)
    teq        $s5,$zero,0x7
    mfhi       $s5
    sh         $s5,0($a6)
    ld         $s5,16($sp)
    ld         $s7,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel cpu_clearpower
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinlock_spl
    ld         $a1,-32440($gp)
    sd         $v0,8($sp)
    jal        slow_ioc3_sio
    sd         $s8,16($sp)
    ld         $v1,-32544($gp)
    ld         $at,-32536($gp)
    li         $a1,10
    sb         $a1,0($v1)
    li         $a0,48
    sb         $a0,0($at)
    move       $s8,$v0
    li         $v0,74
    sb         $v0,0($v1)
    jal        flushbus
    sb         $zero,0($at)
    jal        restore_ioc3_sio
    move       $a0,$s8
    ld         $s8,16($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,8($sp)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel cpu_soft_powerdown
    ld         $a0,0($gp)
    daddiu     $sp,$sp,-64
    beqz       $a0, .L00008ef8
    sd         $ra,32($sp)
    jalr       $a0
    nop
.L00008ef8:
    jal        conbuf_flush
    li         $a0,3
    move       $a2,$zero
    lh         $a0,0($gp)
    li         $a1,1
    jal        heart_imr_bits_rmw
    dsll32     $a1,$a1,0x19
    ld         $a1,-32440($gp)
    sd         $s5,0($sp)
    sd         $s1,8($sp)
    sd         $s0,16($sp)
    sd         $s4,24($sp)
    sd         $s3,40($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinlock_spl
    sd         $s2,48($sp)
    jal        slow_ioc3_sio
    nop
    ld         $s0,-32544($gp)
    ld         $s1,-32536($gp)
    li         $a4,10
    sb         $a4,0($s0)
    li         $a3,48
    sb         $a3,0($s1)
    li         $t8,75
    sb         $t8,0($s0)
    li         $s5,14
    lbu        $a2,0($s1)
    li         $s3,8
    li         $s4,74
    lui        $s2,0x98
    sb         $t8,0($s0)
    andi       $a2,$a2,0x2a
    ori        $s2,$s2,0x9680
    ori        $a2,$a2,0x81
    sb         $a2,0($s1)
.L00008f88:
    sb         $s4,0($s0)
    sb         $s3,0($s1)
    sb         $s5,0($s0)
    lbu        $a5,0($s1)
    jal        us_delay
    move       $a0,$s2
    b          .L00008f88
    nop

glabel slow_ioc3_sio
    ld         $v1,-32528($gp)
    ld         $at,-32520($gp)
    lw         $v0,0($v1)
    lui        $a0,0x4
    and        $at,$v0,$at
    or         $at,$at,$a0
    jr         $ra
    sw         $at,0($v1)

glabel restore_ioc3_sio
    ld         $at,-32528($gp)
    ld         $a1,-32544($gp)
    ld         $v0,-32536($gp)
    li         $v1,14
    sb         $v1,0($a1)
    lbu        $v0,0($v0)
    jr         $ra
    sw         $a0,0($at)

glabel load_nvram_tab
    ld         $a0,-32432($gp)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        arcs_nvram_tab
    li         $a1,1920
    bgtz       $v0, .L0000900c
    ld         $ra,0($sp)
.L00009004:
    jr         $ra
    daddiu     $sp,$sp,16
.L0000900c:
    ld         $a1,-32424($gp)
    jal        cmn_err
    li         $a0,4
    b          .L00009004
    ld         $ra,0($sp)
    li         $a6,80
    li         $a7,83
    ld         $a3,-32544($gp)
    li         $a2,16
    li         $v0,165
    ld         $a4,-32536($gp)
    li         $t0,48
    li         $t1,10
    sb         $t1,0($a3)
    li         $a5,128
    li         $at,32
    sb         $at,0($a4)
.L00009050:
    andi       $a0,$a2,0x7f
    sb         $a0,0($a3)
    lbu        $v1,0($a4)
    xor        $v1,$v1,$v0
    addiu      $a2,$a2,1
    andi       $v1,$v1,0xff
    slti       $a0,$a2,128
    sra        $v0,$v1,0x7
    sll        $v1,$v1,0x1
    bnez       $a0, .L00009050
    or         $v0,$v0,$v1
    sb         $t1,0($a3)
    sb         $t0,0($a4)
.L00009084:
    sb         $a6,0($a3)
    andi       $a1,$a5,0x7f
    sb         $a1,0($a4)
    sb         $a7,0($a3)
    lbu        $a0,0($a4)
    xor        $a0,$a0,$v0
    andi       $a0,$a0,0xff
    addiu      $a5,$a5,1
    sra        $v0,$a0,0x7
    slti       $v1,$a5,256
    sll        $a0,$a0,0x1
    or         $v0,$v0,$a0
    bnez       $v1, .L00009084
    andi       $v0,$v0,0xff
    jr         $ra
    nop

glabel ip30_set_an_nvram
    daddiu     $sp,$sp,-64
    sd         $s4,40($sp)
    addu       $at,$a0,$a1
    move       $a5,$a1
    sd         $s0,24($sp)
    slti       $at,$at,243
    li         $v0,-1
    move       $s0,$a0
    sd         $s3,16($sp)
    move       $s3,$a2
    beqz       $at, .L0000922c
    sd         $ra,48($sp)
    addiu      $s0,$a0,14
    daddiu     $a0,$gp,0
    addu       $s4,$s0,$a1
    ld         $a1,-32416($gp)
    jal        mutex_spinlock_spl
    addiu      $s4,$s4,-1
    sd         $v0,8($sp)
    sd         $s1,32($sp)
    jal        slow_ioc3_sio
    sd         $s2,56($sp)
    slt        $a2,$s4,$s0
    li         $a6,32
    sd         $v0,0($sp)
    li         $t1,10
    slti       $a7,$s0,128
    ld         $s1,-32536($gp)
    addiu      $a5,$s0,-1
    li         $at,48
    ld         $s2,-32544($gp)
    beqz       $a7, .L00009150
    li         $t0,80
    sb         $t1,0($s2)
    sb         $a6,0($s1)
.L00009150:
    li         $t1,83
    bne        $zero, $a2, .L00009198
    xori       $a6,$a2,0x1
    beqz       $a7, .L00009198
    nop
    addiu      $a5,$a5,1
.L00009168:
    daddiu     $s3,$s3,1
    addiu      $s0,$s0,1
    andi       $ra,$a5,0x7f
    sb         $ra,0($s2)
    slt        $t9,$s4,$s0
    lbu        $t8,-1($s3)
    slti       $a2,$s0,128
    sb         $t8,0($s1)
    bne        $zero, $t9, .L000091ec
    xori       $a6,$t9,0x1
    bnez       $a2, .L00009168
    addiu      $a5,$a5,1
.L00009198:
    beqz       $a6, .L000091ec
    slti       $a2,$s0,256
    li         $v0,10
    sb         $v0,0($s2)
    beqz       $a2, .L000091ec
    sb         $at,0($s1)
    addiu      $a5,$s0,-1
    daddiu     $s3,$s3,1
.L000091b8:
    sb         $t0,0($s2)
    addiu      $a5,$a5,1
    andi       $a1,$a5,0x7f
    sb         $a1,0($s1)
    addiu      $s0,$s0,1
    sb         $t1,0($s2)
    slt        $a0,$s4,$s0
    lbu        $v1,-1($s3)
    slti       $a2,$s0,256
    bnez       $a0, .L000091ec
    sb         $v1,0($s1)
    bnez       $a2, .L000091b8
    daddiu     $s3,$s3,1
.L000091ec:
    jal        .text
    nop
    ld         $s4,40($sp)
    ld         $s0,8($sp)
    li         $a2,15
    sb         $a2,0($s2)
    sb         $v0,0($s1)
    jal        restore_ioc3_sio
    ld         $a0,0($sp)
    ld         $s2,56($sp)
    daddiu     $a0,$gp,0
    ld         $s1,32($sp)
    jal        mutex_spinunlock
    move       $a1,$s0
    ld         $ra,48($sp)
    move       $v0,$zero
.L0000922c:
    ld         $s3,16($sp)
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64

glabel set_nvram
    daddiu     $sp,$sp,-48
    sd         $ra,32($sp)
    sd         $s1,24($sp)
    move       $s1,$a0
    move       $a0,$a1
    jal        strlen
    sd         $a1,0($sp)
    ld         $a0,-32424($gp)
    sll        $a1,$v0,0x0
    sd         $a1,8($sp)
    move       $a1,$s1
    sd         $v0,16($sp)
    jal        strcmp
    daddiu     $a0,$a0,48
    beqz       $v0, .L000092dc
    sd         $s0,40($sp)
    ld         $a1,-32424($gp)
    move       $a0,$s1
    jal        strcmp
    daddiu     $a1,$a1,32
    beqz       $v0, .L0000932c
    ld         $s0,-32432($gp)
    lw         $a2,44($s0)
.L00009298:
    beqz       $a2, .L000092c4
    li         $a5,-1
.L000092a0:
    move       $a0,$s0
    jal        strcmp
    move       $a1,$s1
    beqz       $v0, .L000092e4
    nop
    lw         $a3,92($s0)
    bnez       $a3, .L000092a0
    daddiu     $s0,$s0,48
    li         $a5,-1
.L000092c4:
    ld         $ra,32($sp)
.L000092c8:
    move       $v0,$a5
    ld         $s0,40($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000092dc:
    b          .L000092c4
    li         $a5,-2
.L000092e4:
    lw         $a0,40($s0)
    li         $a6,555
    ld         $a5,16($sp)
    beq        $a0, $a6, .L00009350
    sll        $a5,$a5,0x0
    lw         $v0,44($s0)
    slt        $v1,$v0,$a5
    addiu      $a1,$a5,1
    bnez       $v1, .L00009348
    slt        $v0,$a5,$v0
    beqz       $v0, .L00009318
    nop
    sd         $a1,8($sp)
.L00009318:
    ld         $a1,8($sp)
    jal        ip30_set_an_nvram
    ld         $a2,0($sp)
    b          .L000092c4
    move       $a5,$v0
.L0000932c:
    ld         $a2,16($sp)
    sll        $a2,$a2,0x0
    li         $a5,-2
    beqz       $a2, .L00009298
    lw         $a2,44($s0)
    b          .L000092c8
    ld         $ra,32($sp)
.L00009348:
    b          .L000092c4
    move       $a5,$zero
.L00009350:
    b          .L000092c4
    li         $a5,-1

glabel ip30_get_an_nvram
    daddiu     $sp,$sp,-48
    sd         $ra,24($sp)
    addu       $at,$a0,$a1
    move       $a5,$a1
    sd         $s0,8($sp)
    slti       $at,$at,243
    li         $v0,-1
    move       $s0,$a0
    sd         $s1,16($sp)
    move       $s1,$a2
    beqz       $at, .L000094ac
    sd         $s2,32($sp)
    addiu      $s0,$a0,14
    daddiu     $a0,$gp,0
    addu       $s2,$s0,$a1
    ld         $a1,-32416($gp)
    jal        mutex_spinlock_spl
    addiu      $s2,$s2,-1
    jal        slow_ioc3_sio
    sd         $v0,0($sp)
    move       $a0,$v0
    slt        $a7,$s2,$s0
    li         $t9,32
    li         $ra,10
    addiu      $a5,$s0,-1
    ld         $t8,-32536($gp)
    li         $t3,83
    ld         $a2,-32544($gp)
    slti       $t1,$s0,128
    li         $t2,80
    move       $a6,$t8
    beqz       $t1, .L000093e4
    move       $t0,$a2
    sb         $ra,0($a2)
    sb         $t9,0($t8)
.L000093e4:
    xori       $t0,$a7,0x1
    bne        $zero, $a7, .L000094c4
    nop
    beqz       $t1, .L000094bc
    nop
    addiu      $a5,$a5,1
.L000093fc:
    addiu      $s0,$s0,1
    andi       $ra,$a5,0x7f
    sb         $ra,0($a2)
    slt        $t9,$s2,$s0
    daddiu     $s1,$s1,1
    lbu        $t8,0($a6)
    slti       $a7,$s0,128
    sb         $t8,-1($s1)
    bne        $zero, $t9, .L0000948c
    xori       $t0,$t9,0x1
    bnez       $a7, .L000093fc
    addiu      $a5,$a5,1
    slti       $a5,$s0,256
.L00009430:
    beqz       $t0, .L0000948c
    ld         $a2,-32544($gp)
    li         $at,48
    ld         $a6,-32536($gp)
    li         $v0,10
    sb         $v0,0($a2)
    beqz       $a5, .L0000948c
    sb         $at,0($a6)
    addiu      $a5,$s0,-1
    daddiu     $s1,$s1,1
.L00009458:
    sb         $t2,0($a2)
    addiu      $a5,$a5,1
    andi       $a3,$a5,0x7f
    sb         $a3,0($a6)
    addiu      $s0,$s0,1
    sb         $t3,0($a2)
    slt        $a1,$s2,$s0
    lbu        $v1,0($a6)
    slti       $a7,$s0,256
    bnez       $a1, .L0000948c
    sb         $v1,-1($s1)
    bnez       $a7, .L00009458
    daddiu     $s1,$s1,1
.L0000948c:
    jal        restore_ioc3_sio
    nop
    ld         $s2,32($sp)
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    ld         $a1,0($sp)
    ld         $ra,24($sp)
    move       $v0,$zero
.L000094ac:
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000094bc:
    b          .L00009430
    slti       $a5,$s0,256
.L000094c4:
    b          .L00009430
    slti       $a5,$s0,256
    nop

glabel read_branch_diag
    mfc0       $v0,$22
    jr         $ra
    nop

glabel write_branch_diag
    mtc0       $a0,$22
    jr         $ra
    nop

glabel branch_prediction_off
    mfc0       $v0,$22
    lui        $at,0xfffc
    ori        $at,$at,0xffff
    and        $v0,$v0,$at
    lui        $at,0x1
    or         $v0,$v0,$at
    mtc0       $v0,$22
    jr         $ra
    nop

glabel branch_prediction_on
    mfc0       $v0,$22
    lui        $at,0xfffc
    ori        $at,$at,0xffff
    and        $v0,$v0,$at
    mtc0       $v0,$22
    jr         $ra
    nop

glabel branch_prediction_taken
    mfc0       $v0,$22
    lui        $at,0xfffc
    ori        $at,$at,0xffff
    and        $v0,$v0,$at
    lui        $at,0x2
    or         $v0,$v0,$at
    mtc0       $v0,$22
    jr         $ra
    nop

glabel branch_prediction_fwd_not_taken
    mfc0       $v0,$22
    lui        $at,0x3
    or         $v0,$v0,$at
    mtc0       $v0,$22
    jr         $ra
    nop

glabel r12k_perf_overflow_intr
    .word      0x400cc801
    .word      0x400dc803
    slt        $t0,$t0,$zero
    beqz       $t0, .L00009580
    slt        $t1,$t1,$zero
    mfc0       $t2,$25
    andi       $t0,$t2,0x10
.L00009580:
    beqz       $t1, .L0000958c
    .word      0x400ec802
    andi       $t1,$t2,0x10
.L0000958c:
    or         $t3,$t0,$t1
    .word      0x400cc805
    .word      0x400dc807
    slt        $t0,$t0,$zero
    beqz       $t0, .L000095ac
    slt        $t1,$t1,$zero
    .word      0x400ec804
    andi       $t0,$t2,0x10
.L000095ac:
    beqz       $t1, .L000095b8
    .word      0x400ec806
    andi       $t1,$t2,0x10
.L000095b8:
    or         $t0,$t0,$t1
    jr         $ra
    or         $v0,$t0,$t3

glabel r10k_perf_overflow_intr
    .word      0x400cc801
    .word      0x400dc803
    slt        $t0,$t0,$zero
    beqz       $t0, .L000095e0
    slt        $t1,$t1,$zero
    mfc0       $t2,$25
    andi       $t0,$t2,0x10
.L000095e0:
    beqz       $t1, .L000095ec
    .word      0x400ec802
    andi       $t1,$t2,0x10
.L000095ec:
    jr         $ra
    or         $v0,$t0,$t1

glabel r1nkperf_data_register_get
    bnez       $a0, .L00009608
    nop
    .word      0x4002c801
    jr         $ra
    nop
.L00009608:
    li         $at,1
    bne        $a0, $at, .L00009620
    nop
    .word      0x4002c803
    jr         $ra
    nop
.L00009620:
    li         $at,2
    bne        $a0, $at, .L00009638
    nop
    .word      0x4002c805
    jr         $ra
    nop
.L00009638:
    li         $at,3
    bne        $a0, $at, .L00009650
    nop
    .word      0x4002c807
    jr         $ra
    nop
.L00009650:
    move       $v0,$zero
    jr         $ra
    nop

glabel r1nkperf_control_register_get
    bnez       $a0, .L00009670
    nop
    mfc0       $v0,$25
    jr         $ra
    nop
.L00009670:
    li         $at,1
    bne        $a0, $at, .L00009688
    nop
    .word      0x4002c802
    jr         $ra
    nop
.L00009688:
    li         $at,2
    bne        $a0, $at, .L000096a0
    nop
    .word      0x4002c804
    jr         $ra
    nop
.L000096a0:
    li         $at,3
    bne        $a0, $at, .L000096b8
    nop
    .word      0x4002c806
    jr         $ra
    nop
.L000096b8:
    move       $v0,$zero
    jr         $ra
    nop

glabel r1nkperf_data_register_set
    bnez       $a0, .L000096d8
    nop
    .word      0x4085c801
    jr         $ra
    nop
.L000096d8:
    li         $at,1
    bne        $a0, $at, .L000096f0
    nop
    .word      0x4085c803
    jr         $ra
    nop
.L000096f0:
    li         $at,2
    bne        $a0, $at, .L00009708
    nop
    .word      0x4085c805
    jr         $ra
    nop
.L00009708:
    li         $at,3
    bne        $a0, $at, .L00009720
    nop
    .word      0x4085c807
    jr         $ra
    nop
.L00009720:
    jr         $ra
    nop

glabel r1nkperf_control_register_set
    bnez       $a0, .L0000973c
    nop
    mtc0       $a1,$25
    jr         $ra
    nop
.L0000973c:
    li         $at,1
    bne        $a0, $at, .L00009754
    nop
    .word      0x4085c802
    jr         $ra
    nop
.L00009754:
    li         $at,2
    bne        $a0, $at, .L0000976c
    nop
    .word      0x4085c804
    jr         $ra
    nop
.L0000976c:
    li         $at,3
    bne        $a0, $at, .L00009784
    nop
    .word      0x4085c806
    jr         $ra
    nop
.L00009784:
    jr         $ra
    nop

glabel exception
    lwu        $k0,-12276($zero)
    andi       $k0,$k0,0x1
    beqz       $k0, .L00009a20
    nop
    move       $k1,$ra
    jal        getpc
    move       $k0,$v0
    move       $ra,$k1
    ld         $k1,-12288($zero)
    sd         $v0,72($k1)
    move       $v0,$k0
    dmfc0      $k0,$14
    sd         $k0,0($k1)
    dmfc0      $k0,$8
    sd         $k0,8($k1)
    dmfc0      $k0,$13
    sd         $k0,16($k1)
    dmfc0      $k0,$12
    sd         $k0,24($k1)
    sd         $ra,32($k1)
    ld         $k0,-16360($zero)
    sd         $k0,40($k1)
    sd         $sp,48($k1)
    li         $k0,4
    sd         $k0,56($k1)
    lwu        $k0,-12280($zero)
    addiu      $k0,$k0,1
    sw         $k0,-12280($zero)
    sd         $k0,64($k1)
    lwu        $k0,-12276($zero)
    andi       $k0,$k0,0x2
    beqz       $k0, .L00009a00
    nop
    sd         $at,80($k1)
    sd         $v0,88($k1)
    sd         $v1,96($k1)
    sd         $a0,104($k1)
    sd         $a1,112($k1)
    sd         $a2,120($k1)
    sd         $a3,128($k1)
    sd         $a4,136($k1)
    sd         $a5,144($k1)
    sd         $a6,152($k1)
    sd         $a7,160($k1)
    sd         $t0,168($k1)
    sd         $t1,176($k1)
    sd         $t2,184($k1)
    sd         $t3,192($k1)
    sd         $s0,200($k1)
    sd         $s1,208($k1)
    sd         $s2,216($k1)
    sd         $s3,224($k1)
    sd         $s4,232($k1)
    sd         $s5,240($k1)
    sd         $s6,248($k1)
    sd         $s7,256($k1)
    sd         $t8,264($k1)
    sd         $t9,272($k1)
    sd         $gp,280($k1)
    sd         $s8,288($k1)
    lwu        $k0,-12276($zero)
    andi       $k0,$k0,0x4
    beqz       $k0, .L00009a00
    nop
    ld         $a0,48($k1)
    move       $a1,$a0
    dsrl       $a1,$a1,0xe
    dsll       $a1,$a1,0xe
    li         $a2,-32768
    bne        $a1, $a2, .L00009940
    li         $a1,296
    lwu        $a2,-12268($zero)
    daddu      $a1,$a1,$k1
    daddu      $a0,$a0,$a2
    ld         $sp,-15424($zero)
    jal        bcopy
    ld         $k1,-12288($zero)
    ld         $sp,48($k1)
    b          .L00009988
    nop
.L00009940:
    daddu      $a1,$a1,$k1
    lui        $a0,0xbad0
    ori        $a0,$a0,0xbad0
    dsll       $a0,$a0,0x10
    ori        $a0,$a0,0xbad0
    dsll       $a0,$a0,0x10
    ori        $a0,$a0,0xbad0
    sd         $a0,0($a1)
    lwu        $a2,-12268($zero)
    daddiu     $a2,$a2,-8
    daddu      $a1,$a1,$a2
    lui        $a0,0xbad1
    ori        $a0,$a0,0xbad1
    dsll       $a0,$a0,0x10
    ori        $a0,$a0,0xbad1
    dsll       $a0,$a0,0x10
    ori        $a0,$a0,0xbad1
    sd         $a0,0($a1)
.L00009988:
    nop
    ld         $at,80($k1)
    ld         $v0,88($k1)
    ld         $v1,96($k1)
    ld         $a0,104($k1)
    ld         $a1,112($k1)
    ld         $a2,120($k1)
    ld         $a3,128($k1)
    ld         $a4,136($k1)
    ld         $a5,144($k1)
    ld         $a6,152($k1)
    ld         $a7,160($k1)
    ld         $t0,168($k1)
    ld         $t1,176($k1)
    ld         $t2,184($k1)
    ld         $t3,192($k1)
    ld         $s0,200($k1)
    ld         $s1,208($k1)
    ld         $s2,216($k1)
    ld         $s3,224($k1)
    ld         $s4,232($k1)
    ld         $s5,240($k1)
    ld         $s6,248($k1)
    ld         $s7,256($k1)
    ld         $t8,264($k1)
    ld         $t9,272($k1)
    ld         $gp,280($k1)
    ld         $s8,288($k1)
    ld         $ra,32($k1)
    ld         $sp,48($k1)
.L00009a00:
    lwu        $k0,-12272($zero)
    daddu      $k1,$k1,$k0
    li         $k0,-4097
    slt        $k0,$k1,$k0
    bnez       $k0, .L00009a1c
    nop
    li         $k1,-12224
.L00009a1c:
    sd         $k1,-12288($zero)
.L00009a20:
    mfc0       $k0,$13
    andi       $k0,$k0,0x7c
    beqz       $k0, .L00009a78
    xori       $k0,$k0,0x20
    bnez       $k0, .L00009a40
    xori       $k0,$k0,0x28
    j          systrap
    nop
.L00009a40:
    bnez       $k0, .L00009a50
    xori       $k0,$k0,0x4
.L00009a48:
    j          kmiss
    sd         $at,-16328($zero)
.L00009a50:
    beqz       $k0, .L00009a48
    xori       $k0,$k0,0x50
    beqz       $k0, .L00009a94
    xori       $k0,$k0,0x78
    beqz       $k0, .L00009a8c
    sd         $at,-16328($zero)
.L00009a68:
    j          longway
    nop
.L00009a70:
    j          intrnorm
    sd         $at,-16328($zero)
.L00009a78:
    daddiu     $k0,$zero,-1775
    bnel       $k0, $sp, .L00009a70
    nop
    j          handle_intr_wgflush
    nop
.L00009a8c:
    j          handle_brkpt
    sd         $at,-16328($zero)
.L00009a94:
    j          handle_watch
    sd         $at,-16328($zero)

glabel exception_endfast
    sd         $at,-16328($zero)
    lui        $k1,0x0
    daddiu     $k1,$k1,0
    dsll       $k1,$k1,0x10
    daddiu     $k1,$k1,0
    dsll       $k1,$k1,0x10
    daddiu     $k1,$k1,0
    move       $sp,$at
    dsll       $a1,$a1,0x14
    dsrl       $a1,$a1,0x14
    dmfc0      $at,$14
    dsll32     $k0,$at,0x19
    dsrl32     $k0,$k0,0x19
    daddu      $k1,$k1,$k0
    daddiu     $k0,$k0,-4
    beqz       $k0, .L00009b30
    daddiu     $k0,$k0,-64
    jr         $k1
    dsubu      $at,$at,$k0

glabel wgflush_start
    nop
    sd         $a2,0($a1)
    sd         $a3,8($a1)
    sd         $a4,16($a1)
    sd         $a5,24($a1)
    sd         $a6,32($a1)
    sd         $a7,40($a1)
    sd         $t0,48($a1)
    sd         $t1,56($a1)
    sd         $t2,64($a1)
    sd         $t3,72($a1)
    sd         $t8,80($a1)
    sd         $t9,88($a1)
    sd         $v0,96($a1)
    sd         $v1,104($a1)
    sd         $s2,112($a1)
    sd         $a0,120($a1)
    dmtc0      $at,$14
.L00009b30:
    j          intrnorm
    ld         $at,-16328($zero)

glabel handle_brkpt
    mfc0       $k0,$12
    andi       $k0,$k0,0x18
    beqz       $k0, .L00009b9c
    dmfc0      $k0,$14
    nop
    lw         $k1,0($k0)
    nop
    srl        $k1,$k1,0xd
    andi       $at,$k1,0x400
    beqz       $at, .L00009a68
    nop
    andi       $k1,$k1,0xfbff
    slti       $at,$k1,24
    beqz       $at, .L00009a68
    nop
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,880
    daddu      $k1,$k1,$at
    ld         $k1,0($k1)
    jr         $k1
    nop
.L00009b9c:
    mfc0       $k0,$13
    dmfc0      $at,$14
    bgez       $k0, .L00009bb0
    nop
    daddiu     $at,$at,4
.L00009bb0:
    move       $k0,$at
    lw         $k0,0($k0)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    lw         $at,0($at)
    bne        $at, $k0, .L00009a68
    nop

glabel handle_watch
    lh         $k0,-15456($zero)
    sll        $k0,$k0,0x2
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    daddu      $at,$at,$k0
    li         $k0,1
    sw         $k0,0($at)
    lui        $at,0xa800
    dsll32     $at,$at,0x0
    ori        $at,$at,0x1020
    ld         $at,0($at)
    beqz       $at, .L00009a68
    nop
    ld         $at,8($at)
    beqz       $at, .L00009a68
    ld         $k0,-16328($zero)
    jr         $at
    nop

glabel kmiss
    dmfc0      $k0,$8
    lui        $at,0xc000
    ori        $at,$at,0xfbf
    dsll       $at,$at,0x10
    ori        $at,$at,0xe000
    dsll       $at,$at,0x10
    sltu       $at,$k0,$at
    bnez       $at, .L0000a114
    nop
    lui        $at,0xc000
    ori        $at,$at,0xfc0
    dsll32     $at,$at,0x0
    dsubu      $k0,$k0,$at
    lui        $at,0x2000
    bltz       $k0, .L00009e18
    nop
    sltu       $at,$k0,$at
    beqz       $at, .L00009f54
    nop
    ld         $at,-16360($zero)
    tlbp
    beqz       $at, .L0000a114
    nop
    lh         $k1,1400($at)
    beqz       $k1, .L00009ec8
    andi       $k1,$k1,0x2
    beqz       $k1, .L00009cec
    nop
    sd         $t0,-16320($zero)
    dsrl       $k1,$k0,0x14
    ld         $t0,1384($at)
    dsll       $k1,$k1,0x4
    daddu      $t0,$t0,$k1
    ld         $t0,0($t0)
    beqzl      $t0, .L00009e20
    ld         $t0,-16320($zero)
    dsrl       $k1,$k0,0xe
    li         $at,63
    and        $k1,$k1,$at
    dsll       $k1,$k1,0x3
    daddu      $k0,$t0,$k1
    b          .L00009d04
    ld         $t0,-16320($zero)
.L00009cec:
    dsrl       $k1,$k0,0x14
    bnez       $k1, .L0000a114
    dsrl       $k1,$k0,0xe
    ld         $k0,1384($at)
    dsll       $k1,$k1,0x3
    daddu      $k0,$k0,$k1
.L00009d04:
    ld         $k0,0($k0)
    beqzl      $k0, .L00009eb0
    nop
.L00009d10:
    mfc0       $k1,$0
    bgez       $k1, .L00009d28
    nop
    dmtc0      $zero,$2
    b          .L00009d34
    dmtc0      $zero,$3
.L00009d28:
    dmfc0      $k1,$10
    tlbr
    dmtc0      $k1,$10
.L00009d34:
    li         $at,21
    dsll32     $at,$at,0x1b
    dsubu      $at,$k0,$at
    dsrl       $at,$at,0x6
    ori        $at,$at,0x2b
    dmfc0      $k0,$8
    andi       $k1,$k0,0x4000
    mfc0       $k0,$0
    beqz       $k1, .L00009d68
    li         $k1,-2
    and        $at,$at,$k1
    b          .L00009d70
    dmtc0      $at,$3
.L00009d68:
    and        $at,$at,$k1
    dmtc0      $at,$2
.L00009d70:
    bgez       $k0, .L00009dc0
    ld         $at,-16328($zero)
    ld         $k0,-16344($zero)
    bnez       $k0, .L00009db4
    nop
    ld         $at,-16360($zero)
    ld         $at,992($at)
    lb         $k0,840($at)
    addi       $k0,$k0,-5
    bgez       $k0, .L00009db4
    addi       $k0,$k0,6
    mtc0       $k0,$0
    addi       $k1,$k0,0
    sb         $k1,840($at)
    ld         $at,-16328($zero)
    b          .L00009dc0
    nop
.L00009db4:
    ld         $at,-16328($zero)
    tlbwr
    eret
.L00009dc0:
    tlbwi
    addi       $k0,$k0,-6
    bgez       $k0, .L00009e14
    addi       $k0,$k0,5
    dsll       $k0,$k0,0x4
    dmfc0      $k1,$2
    ld         $at,-16360($zero)
    ld         $at,992($at)
    daddu      $at,$at,$k0
    sd         $k1,720($at)
    dmfc0      $k1,$3
    sd         $k1,728($at)
    dmfc0      $k1,$10
    ori        $k1,$k1,0xff
    xori       $k1,$k1,0xff
    ld         $at,-16360($zero)
    ld         $at,992($at)
    dsrl       $k0,$k0,0x1
    daddu      $at,$at,$k0
    sd         $k1,800($at)
    ld         $at,-16328($zero)
.L00009e14:
    eret
.L00009e18:
    daddu      $k0,$k0,$at
    tlbp
.L00009e20:
    ld         $at,-16360($zero)
    lh         $k1,1400($at)
    beqz       $k1, .L00009ec8
    andi       $k1,$k1,0x2
    beqz       $k1, .L00009e7c
    nop
    sd         $t0,-16320($zero)
    dsrl       $k1,$k0,0x14
    ld         $t0,1392($at)
    dsll       $k1,$k1,0x4
    beqzl      $t0, .L00009ec8
    ld         $t0,-16320($zero)
    daddu      $t0,$t0,$k1
    ld         $t0,0($t0)
    beqzl      $t0, .L00009ec8
    ld         $t0,-16320($zero)
    dsrl       $k1,$k0,0xe
    li         $at,63
    and        $k1,$k1,$at
    dsll       $k1,$k1,0x3
    daddu      $k0,$t0,$k1
    b          .L00009e98
    ld         $t0,-16320($zero)
.L00009e7c:
    dsrl       $k1,$k0,0x14
    bnez       $k1, .L0000a114
    dsrl       $k1,$k0,0xe
    ld         $k0,1392($at)
    dsll       $k1,$k1,0x3
    beqz       $k0, .L00009ec8
    daddu      $k0,$k0,$k1
.L00009e98:
    ld         $k0,0($k0)
    nop
    bnez       $k0, .L00009d10
    nop
    b          .L00009ec8
    nop
.L00009eb0:
    dmfc0      $k0,$8
    lui        $k1,0xc000
    ori        $k1,$k1,0xfc0
    dsll32     $k1,$k1,0x0
    b          .L00009e20
    dsubu      $k0,$k0,$k1
.L00009ec8:
    dmfc0      $k0,$8
    lui        $k1,0xc000
    ori        $k1,$k1,0xfc0
    dsll32     $k1,$k1,0x0
    dsubu      $k0,$k0,$k1
    bgez       $k0, .L00009eec
    nop
    lui        $k1,0x2000
    daddu      $k0,$k0,$k1
.L00009eec:
    dmfc0      $k1,$10
    dsll       $k0,$k0,0xb
    andi       $k1,$k1,0xff
    or         $k1,$k1,$k0
    dmtc0      $k1,$10
    ld         $at,-16328($zero)
    tlbp
    mfc0       $k1,$0
    nop
    bgez       $k1, .L00009f3c
    andi       $k0,$k0,0x4000
    dmtc0      $zero,$2
    dmtc0      $zero,$3
    nop
    tlbwr
    eret
.L00009f3c:
    beqzl      $k0, .L00009f48
    dmtc0      $zero,$2
    dmtc0      $zero,$3
.L00009f48:
    nop
    tlbwi
    eret

glabel kmissnxt
.L00009f54:
    dmfc0      $k0,$8
    lui        $at,0xc000
    ori        $at,$at,0xfc6
    dsll32     $at,$at,0x0
    dsubu      $k0,$k0,$at
    bltz       $k0, .L0000a114
    nop
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    lw         $at,0($at)
    addiu      $at,$at,0
    dsrl       $k0,$k0,0x3
    sltu       $at,$k0,$at
    beqz       $at, .L0000a004
    dsll       $k0,$k0,0x3
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    ld         $at,0($at)
    li         $k1,16383
    nor        $k1,$k1,$zero
    and        $k1,$k1,$k0
    daddu      $k1,$k1,$at
    andi       $at,$k0,0x4000
    beqz       $at, .L00009fdc
    nop
    daddiu     $k1,$k1,-16384
.L00009fdc:
    dsll       $k1,$k1,0x18
    dsrl32     $k1,$k1,0x4
    dsll       $k1,$k1,0x6
    ori        $k1,$k1,0x2f
    dmtc0      $k1,$2
    daddiu     $k1,$k1,256
    dmtc0      $k1,$3
    ld         $at,-16328($zero)
    tlbwr
    eret
.L0000a004:
    dmfc0      $k0,$8
    li         $at,3
    dsll32     $at,$at,0x1e
    li         $k1,3
    dsll32     $k1,$k1,0x1
    and        $k1,$k1,$k0
    dsll       $k1,$k1,0x1d
    li         $at,-1
    dsll32     $at,$at,0x1
    dsrl       $at,$at,0x1f
    and        $k0,$k0,$at
    dsll       $k0,$k0,0xb
    or         $k0,$k0,$k1
    li         $at,3
    dsll32     $at,$at,0x1e
    bgez       $k0, .L0000a114
    dsubu      $k0,$k0,$at
    bltz       $k0, .L0000a114
    nop
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    lw         $at,0($at)
    addiu      $at,$at,0
    dsrl       $k0,$k0,0xe
    dsubu      $at,$at,$k0
    blez       $at, .L0000a114
    nop

glabel kvmiss_hit
    b          .L0000a088
    nop
.L0000a088:
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $a0,24($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $a1,32($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $a2,40($at)
    lui        $a0,0x0
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,904
    lui        $a1,0x0
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    daddiu     $a1,$a1,923
    move       $a2,$zero
    j          assfail
.L0000a114:
    j          longway
    nop

glabel update_ust_i
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    jal        spl7
    sd         $s8,16($sp)
    jal        update_ust
    move       $s8,$v0
    sd         $v0,8($sp)
    jal        splx
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s8,16($sp)
    ld         $v0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel get_ust_nano
    ld         $a2,0($gp)
    lwu        $a1,-32572($gp)
    dmultu     $a1,$a2
    lwu        $v0,-32568($gp)
    mflo       $v1
    ddivu      $zero,$v1,$v0
    teq        $v0,$zero,0x7
    mflo       $at
    jr         $ra
    sd         $at,0($a0)

glabel ust_to_nano
    lwu        $a2,-32572($gp)
    dmultu     $a2,$a0
    lwu        $v0,-32568($gp)
    mflo       $v1
    ddivu      $zero,$v1,$v0
    teq        $v0,$zero,0x7
    mflo       $at
    jr         $ra
    sd         $at,0($a1)

glabel get_ust
    ld         $at,0($gp)
    jr         $ra
    sd         $at,0($a0)

glabel get_updated_ust_i
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    jal        spl7
    sd         $s8,16($sp)
    jal        update_ust
    move       $s8,$v0
    ld         $at,0($gp)
    move       $a0,$s8
    jal        splx
    sd         $at,8($sp)
    ld         $ra,0($sp)
    ld         $s8,16($sp)
    ld         $v0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel nano_to_ust
    lwu        $v1,-32568($gp)
    dmult      $a0,$v1
    lwu        $at,-32572($gp)
    mflo       $v0
    ddiv       $zero,$v0,$at
    mflo       $v0
    jr         $ra
    teq        $at,$zero,0x7

glabel ust_init
    li         $v1,1
    sw         $v1,-32568($gp)
    li         $v0,80
    sw         $v0,-32572($gp)
    lui        $at,0xbe
    ori        $at,$at,0xbc20
    jr         $ra
    sw         $at,0($gp)

glabel update_ust
    lui        $t0,0xaff2
    daddiu     $t1,$gp,0
    ld         $v0,0($t0)
    jr         $ra
    sd         $v0,0($t1)

glabel ecc_exception
    mfc0       $k0,$19
    dsll32     $k0,$k0,0x1d
    mfc0       $at,$18
    dsll32     $at,$at,0x0
    dsrl       $at,$at,0x3
    or         $k0,$k0,$at
    mfc0       $at,$17
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    or         $k0,$k0,$at
    sd         $k0,208($k1)
    sd         $s0,120($k1)
    sd         $s1,128($k1)
    sd         $s2,136($k1)
    sd         $s3,144($k1)
    sd         $s4,152($k1)
    sd         $s5,160($k1)
    sd         $s6,168($k1)
    sd         $s7,176($k1)
    sd         $a0,24($k1)
    sd         $a1,32($k1)
    sd         $a2,40($k1)
    sd         $a3,48($k1)
    sd         $a4,56($k1)
    sd         $a5,64($k1)
    sd         $a6,72($k1)
    sd         $a7,80($k1)
    sd         $gp,216($k1)
    sd         $sp,224($k1)
    sd         $ra,240($k1)
    lui        $gp,0x0
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    jal        tfi_save
    nop
    mfc0       $k0,$12
    sd         $k0,248($k1)
    mfc0       $k0,$13
    sd         $k0,280($k1)
    dmfc0      $k0,$8
    sd         $k0,272($k1)
    dmfc0      $k0,$14
    sd         $k0,288($k1)
    sd         $k0,352($k1)
    move       $s0,$k1
    daddi      $s1,$k1,360
    lb         $k0,38($s1)
    bnez       $k0, .L0000a334
    li         $k0,1
    sb         $k0,38($s1)
.L0000a334:
    dmfc0      $k0,$30
    sd         $k0,0($s1)
    dmfc0      $v0,$29
    sw         $v0,32($s1)
    dmfc0      $v0,$28
    sw         $v0,28($s1)
    dmfc0      $v0,$27
    sw         $v0,24($s1)
    daddiu     $sp,$s0,4096
    move       $a0,$s0
    jal        ecc_handler
    move       $a1,$s1
    beqz       $v0, .L0000a3a8
    nop
    ld         $sp,-15424($zero)
    lui        $gp,0x0
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    mfc0       $t0,$12
    li         $at,-25
    and        $t0,$t0,$at
    mtc0       $t0,$12
    move       $a1,$s0
    move       $a2,$s1
    jal        ecc_panic
    move       $a0,$v0
.L0000a3a8:
    lw         $k1,32($s1)
    mtc0       $k1,$29
    lw         $k1,28($s1)
    mtc0       $k1,$28
    jal        tfi_restore
    move       $k1,$s0
    ld         $k0,0($s1)
    dmtc0      $k0,$30
    move       $k0,$s1
    ld         $a0,24($k1)
    ld         $a1,32($k1)
    ld         $a2,40($k1)
    ld         $a3,48($k1)
    ld         $a4,56($k1)
    ld         $a5,64($k1)
    ld         $a6,72($k1)
    ld         $a7,80($k1)
    ld         $s0,120($k1)
    ld         $s1,128($k1)
    ld         $s2,136($k1)
    ld         $s3,144($k1)
    ld         $s4,152($k1)
    ld         $s5,160($k1)
    ld         $s6,168($k1)
    ld         $s7,176($k1)
    ld         $ra,240($k1)
    ld         $at,0($k1)
    ld         $sp,224($k1)
    ld         $gp,216($k1)
    sb         $zero,38($k0)
    ld         $k0,200($k1)
    ld         $k1,208($k1)
    eret

glabel ULIsystrap_j
.L0000a480:
    j          ULIsystrap
    sd         $at,-16328($zero)

glabel systrap
    ld         $k0,-16344($zero)
    bnez       $k0, .L0000a480
    ld         $k1,-16360($zero)
    ld         $k1,-16360($zero)
    ld         $k1,992($k1)
    daddiu     $k1,$k1,360
    sd         $gp,216($k1)
    lui        $gp,0x0
    sd         $sp,224($k1)
    daddiu     $gp,$gp,0
    sd         $a0,24($k1)
    dsll       $gp,$gp,0x10
    sd         $a1,32($k1)
    daddiu     $gp,$gp,0
    sd         $a2,40($k1)
    dsll       $gp,$gp,0x10
    sd         $a3,48($k1)
    daddiu     $gp,$gp,0
    sd         $a4,56($k1)
    sd         $a5,64($k1)
    sd         $a6,72($k1)
    sd         $a7,80($k1)
    dmfc0      $a0,$14
    sd         $s0,120($k1)
    sd         $s1,128($k1)
    sd         $s2,136($k1)
    sd         $s3,144($k1)
    sd         $s4,152($k1)
    sd         $s5,160($k1)
    sd         $s6,168($k1)
    sd         $s7,176($k1)
    sd         $ra,240($k1)
    mfc0       $s0,$12
    daddiu     $a0,$a0,4
    sd         $v0,8($k1)
    li         $sp,-16528
    li         $a1,1
    sd         $a0,288($k1)
    sd         $a0,352($k1)
    sd         $v1,16($k1)
    sd         $s8,232($k1)
    sd         $s0,248($k1)
    jal        ktimer_switch
    ld         $a0,-16352($zero)
    ld         $a0,8($k1)
    li         $k1,1
    sb         $k1,-16305($zero)
    andi       $a2,$s0,0xffa0
    ori        $a2,$a2,0x1
    mtc0       $a2,$12
    jal        syscall
    andi       $s2,$s0,0xffa0
    mtc0       $s2,$12
    ld         $k1,-16360($zero)
    ld         $k1,992($k1)
    daddiu     $k1,$k1,360
    bnez       $v0, .L0000a674
    nop
    ld         $a0,-16352($zero)
    jal        ktimer_switch
    li         $a1,0
    ld         $v0,8($k1)
    ld         $v1,16($k1)
    ld         $s8,232($k1)
    sb         $zero,-16305($zero)
    ld         $gp,216($k1)
    ld         $a7,80($k1)
    ld         $a6,72($k1)
    ld         $a5,64($k1)
    ld         $a4,56($k1)
    ld         $a3,48($k1)
    ld         $a2,40($k1)
    ld         $a1,32($k1)
    ld         $a0,24($k1)
    ori        $s2,$s2,0x2
    mtc0       $s2,$12
    ld         $s6,248($k1)
    ld         $s7,288($k1)
    ld         $s0,120($k1)
    mtc0       $s6,$12
    ld         $s1,128($k1)
    ld         $s2,136($k1)
    ld         $s3,144($k1)
    dmtc0      $s7,$14
    ld         $s4,152($k1)
    ld         $s5,160($k1)
    ld         $s6,168($k1)
    ld         $s7,176($k1)
    ld         $ra,240($k1)
    ld         $sp,224($k1)
    eret
    j          _baduk
    nop
.L0000a674:
    j          exception_exit
    nop

glabel VEC_syscall
    lui        $a1,0x0
    li         $a0,0
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    jal        cmn_err
    daddiu     $a1,$a1,936
    nop

glabel get_fpc_csr
    mfc0       $v1,$12
    lui        $a0,0x2000
    ori        $a0,$a0,0xa0
    mtc0       $a0,$12
    cfc1       $v0,c1_fcsr
    mtc0       $v1,$12
    jr         $ra
    nop

glabel set_fpc_csr
    mfc0       $v1,$12
    lui        $a1,0x2000
    ori        $a1,$a1,0xa0
    mtc0       $a1,$12
    cfc1       $v0,c1_fcsr
    ctc1       $a0,c1_fcsr
    nop
    mtc0       $v1,$12
    jr         $ra
    nop

glabel get_cpu_irr
    mfc0       $v0,$15
    jr         $ra
    nop

glabel get_fpc_irr
    mfc0       $a1,$12
    li         $a0,160
    mtc0       $a0,$12
    li         $a0,7
    lui        $v0,0x2000
    sw         $a0,-15356($zero)
    ori        $v0,$v0,0xa0
    mtc0       $v0,$12
    cfc1       $v0,c1_fir
    sw         $zero,-15356($zero)
    mtc0       $a1,$12
    jr         $ra
    nop

glabel reviderror
    mtc0       $a1,$12
    move       $v0,$zero
    jr         $ra
    nop

glabel get_cpu_cnf
    mfc0       $v0,$16
    jr         $ra
    nop

glabel clear_sline
    mtc0       $zero,$29
    mtc0       $zero,$28
    mtc0       $zero,$26
    cache      0x1f,0($a0)
    jr         $ra
    nop

glabel scache_ild
    cache      0x1b,0($a0)
    mfc0       $v0,$26
    sh         $v0,0($a1)
    mfc0       $v0,$29
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    mfc0       $v1,$28
    dsll32     $v1,$v1,0x0
    or         $v0,$v0,$v1
    jr         $ra
    nop

glabel dLine
    cache      0x5,0($a0)
    mfc0       $v0,$29
    mfc0       $v1,$28
    dsll32     $v0,$v0,0x0
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    or         $v0,$v0,$v1
    sd         $v0,0($a1)
    daddiu     $a2,$a0,32
    daddiu     $t0,$a1,8
    daddiu     $t1,$a1,40
.L0000a7c4:
    cache      0x19,0($a0)
    mfc0       $v0,$28
    sw         $v0,0($t0)
    mfc0       $v0,$26
    sb         $v0,0($t1)
    daddiu     $a0,$a0,4
    daddiu     $t0,$t0,4
    slt        $at,$a0,$a2
    bnez       $at, .L0000a7c4
    daddiu     $t1,$t1,1
    jr         $ra
    nop

glabel dCacheSize
    mfc0       $v1,$16
    lui        $at,0x1c00
    and        $v1,$v1,$at
    srl        $v1,$v1,0x1a
    addi       $v1,$v1,12
    li         $v0,1
    jr         $ra
    sllv       $v0,$v0,$v1

glabel iLine
    cache      0x4,0($a0)
    mfc0       $v0,$28
    mfc0       $v1,$29
    dsll32     $v1,$v1,0x0
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    or         $v0,$v0,$v1
    sd         $v0,0($a1)
    daddiu     $t0,$a1,8
    daddiu     $t1,$a1,136
    daddiu     $a2,$a0,64
.L0000a840:
    cache      0x18,0($a0)
    mfc0       $v0,$28
    mfc0       $v1,$29
    dsll32     $v1,$v1,0x0
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    or         $v0,$v0,$v1
    sd         $v0,0($t0)
    mfc0       $v0,$26
    sb         $v0,0($t1)
    daddiu     $t0,$t0,8
    daddiu     $a0,$a0,4
    slt        $at,$a0,$a2
    bnez       $at, .L0000a840
    daddiu     $t1,$t1,1
    jr         $ra
    nop

glabel iCacheSize
    mfc0       $v1,$16
    li         $at,7
    dsll       $at,$at,0x1d
    and        $v1,$v1,$at
    dsrl       $v1,$v1,0x1d
    daddi      $v1,$v1,12
    li         $v0,1
    jr         $ra
    dsllv      $v0,$v0,$v1

glabel sLine
    cache      0x7,0($a0)
    mfc0       $v0,$29
    mfc0       $v1,$28
    dsll32     $v0,$v0,0x0
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    or         $v0,$v0,$v1
    sd         $v0,0($a1)
    move       $t0,$ra
    jal        sCacheSize
    nop
    move       $ra,$t0
    li         $v0,8
    daddiu     $t0,$a1,8
    daddiu     $t1,$a1,136
.L0000a8e4:
    cache      0x1b,0($a0)
    mfc0       $v1,$28
    sw         $v1,0($t0)
    mfc0       $v1,$29
    sw         $v1,4($t0)
    mfc0       $v1,$26
    sh         $v1,0($t1)
    cache      0x1b,8($a0)
    mfc0       $v1,$28
    sw         $v1,8($t0)
    mfc0       $v1,$29
    sw         $v1,12($t0)
    addi       $v0,$v0,-1
    daddiu     $a0,$a0,16
    daddiu     $t0,$t0,16
    bgtz       $v0, .L0000a8e4
    daddiu     $t1,$t1,2
    jr         $ra
    nop

glabel sCacheSize
    mfc0       $v1,$16
    lui        $at,0x7
    and        $v1,$v1,$at
    dsrl       $v1,$v1,0x10
    daddi      $v1,$v1,19
    li         $v0,1
    jr         $ra
    dsllv      $v0,$v0,$v1
    blez       $a2, .L0000a978
    move       $v0,$a2
    move       $a5,$zero
.L0000a95c:
    addiu      $a5,$a5,1
    slt        $v1,$a5,$v0
    daddiu     $a1,$a1,1
    lbu        $at,0($a0)
    daddiu     $a0,$a0,1
    bnez       $v1, .L0000a95c
    sb         $at,-1($a1)
.L0000a978:
    jr         $ra
    nop
    andi       $at,$a2,0x1
    andi       $a6,$a1,0x1
    li         $v0,-1
    bnez       $at, .L0000a9a4
    andi       $a5,$a0,0x1
    bnez       $a5, .L0000a9a4
    nop
    beqz       $a6, .L0000a9ac
    srl        $a5,$a2,0x1f
.L0000a9a4:
    jr         $ra
    nop
.L0000a9ac:
    addu       $a5,$a5,$a2
    sra        $a5,$a5,0x1
    move       $v0,$zero
    blez       $a5, .L0000a9dc
    addiu      $a5,$a5,-1
.L0000a9c0:
    addiu      $v0,$v0,1
    slt        $a7,$a5,$v0
    daddiu     $a1,$a1,2
    lh         $a6,0($a0)
    daddiu     $a0,$a0,2
    beqz       $a7, .L0000a9c0
    sh         $a6,-2($a1)
.L0000a9dc:
    jr         $ra
    move       $v0,$a2
    andi       $at,$a2,0x3
    andi       $a6,$a1,0x3
    li         $v0,-1
    bnez       $at, .L0000aa08
    andi       $a5,$a0,0x3
    bnez       $a5, .L0000aa08
    nop
    beqz       $a6, .L0000aa10
    addiu      $a5,$a2,3
.L0000aa08:
    jr         $ra
    nop
.L0000aa10:
    slt        $a6,$a2,$zero
    movz       $a5,$a2,$a6
    sra        $a5,$a5,0x2
    move       $v0,$zero
    blez       $a5, .L0000aa44
    addiu      $a5,$a5,-1
.L0000aa28:
    addiu      $v0,$v0,1
    slt        $t0,$a5,$v0
    daddiu     $a1,$a1,4
    lw         $a7,0($a0)
    daddiu     $a0,$a0,4
    beqz       $t0, .L0000aa28
    sw         $a7,-4($a1)
.L0000aa44:
    jr         $ra
    move       $v0,$a2
    andi       $at,$a2,0x7
    andi       $a6,$a1,0x7
    li         $v0,-1
    bnez       $at, .L0000aa70
    andi       $a5,$a0,0x7
    bnez       $a5, .L0000aa70
    nop
    beqz       $a6, .L0000aa78
    addiu      $a5,$a2,7
.L0000aa70:
    jr         $ra
    nop
.L0000aa78:
    slt        $a6,$a2,$zero
    movz       $a5,$a2,$a6
    sra        $a5,$a5,0x3
    move       $v0,$zero
    blez       $a5, .L0000aaac
    addiu      $a5,$a5,-1
.L0000aa90:
    addiu      $v0,$v0,1
    slt        $t0,$a5,$v0
    daddiu     $a1,$a1,8
    ld         $a7,0($a0)
    daddiu     $a0,$a0,8
    beqz       $t0, .L0000aa90
    sd         $a7,-8($a1)
.L0000aaac:
    jr         $ra
    move       $v0,$a2
    li         $a6,-1
    li         $a7,4
    li         $at,1
    li         $v0,2
    daddiu     $sp,$sp,-16
    li         $t0,8
    beq        $a3, $at, .L0000ab0c
    sd         $ra,0($sp)
    beq        $a3, $v0, .L0000ab1c
    nop
    beq        $a3, $a7, .L0000ab2c
    nop
    beq        $a3, $t0, .L0000aafc
    nop
.L0000aaec:
    ld         $ra,0($sp)
    move       $v0,$a6
    jr         $ra
    daddiu     $sp,$sp,16
.L0000aafc:
    jal        .text
    nop
    b          .L0000aaec
    move       $a6,$v0
.L0000ab0c:
    jal        .text
    nop
    b          .L0000aaec
    move       $a6,$v0
.L0000ab1c:
    jal        .text
    nop
    b          .L0000aaec
    move       $a6,$v0
.L0000ab2c:
    jal        .text
    nop
    b          .L0000aaec
    move       $a6,$v0

glabel pio_bcopyin
    ld         $a7,16($a0)
    daddiu     $sp,$sp,-32
    sltu       $at,$a1,$a7
    sd         $s0,16($sp)
    move       $s0,$a3
    dsubu      $t0,$a1,$a7
    bnez       $at, .L0000abbc
    daddu      $v0,$a3,$t0
    ld         $t2,24($a0)
    daddu      $v1,$a7,$t2
    sltu       $v1,$a1,$v1
    sltu       $a3,$t2,$v0
    beqz       $v1, .L0000abbc
    dsubu      $t1,$t2,$t0
    sd         $a2,8($sp)
    sd         $a4,0($sp)
    beqz       $a3, .L0000ab88
    sd         $ra,24($sp)
    sll        $s0,$t1,0x0
.L0000ab88:
    jal        pio_mapaddr
    nop
    move       $a0,$v0
    ld         $a1,8($sp)
    move       $a2,$s0
    jal        .text
    ld         $a3,0($sp)
    ld         $ra,24($sp)
    move       $a0,$v0
.L0000abac:
    move       $v0,$a0
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000abbc:
    b          .L0000abac
    move       $a0,$zero

glabel pio_bcopyout
    ld         $a7,16($a0)
    daddiu     $sp,$sp,-32
    sltu       $at,$a1,$a7
    sd         $s0,16($sp)
    move       $s0,$a3
    dsubu      $t0,$a1,$a7
    bnez       $at, .L0000ac44
    daddu      $v0,$a3,$t0
    ld         $t2,24($a0)
    daddu      $v1,$a7,$t2
    sltu       $v1,$a1,$v1
    sltu       $a3,$t2,$v0
    beqz       $v1, .L0000ac44
    dsubu      $t1,$t2,$t0
    sd         $a2,8($sp)
    sd         $a4,0($sp)
    beqz       $a3, .L0000ac10
    sd         $ra,24($sp)
    sll        $s0,$t1,0x0
.L0000ac10:
    jal        pio_mapaddr
    nop
    move       $a1,$v0
    ld         $a0,8($sp)
    move       $a2,$s0
    jal        .text
    ld         $a3,0($sp)
    ld         $ra,24($sp)
    move       $a0,$v0
.L0000ac34:
    move       $v0,$a0
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000ac44:
    b          .L0000ac34
    move       $a0,$zero

glabel pio_badaddr
    daddiu     $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        pio_mapaddr
    move       $s8,$a2
    move       $a0,$v0
    jal        badaddr
    move       $a1,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel pio_badaddr_val
    daddiu     $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a2
    jal        pio_mapaddr
    sd         $a3,16($sp)
    move       $a0,$v0
    move       $a1,$s8
    jal        badaddr_val
    ld         $a2,16($sp)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel pio_wbadaddr
    daddiu     $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        pio_mapaddr
    move       $s8,$a2
    move       $a0,$v0
    jal        wbadaddr
    move       $a1,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel pio_wbadaddr_val
    daddiu     $sp,$sp,-48
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a2
    jal        pio_mapaddr
    sw         $a3,44($sp)
    move       $a0,$v0
    daddiu     $a2,$sp,44
    move       $a1,$s8
    dsubu      $a2,$a2,$s8
    jal        wbadaddr_val
    daddiu     $a2,$a2,4
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel __dcache_inval
    blez       $a1, .L0000aed4
    nop
    lw         $a7,-14756($zero)
    sltu       $t2,$a7,$a1
    bnez       $t2, .L0000adbc
    nop
    move       $t0,$a0
    daddu      $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L0000adb0
    nop
    andi       $t2,$t0,0x7f
    daddiu     $t1,$t1,-128
    beqz       $t2, .L0000ad80
    nop
    dsubu      $t0,$t0,$t2
    cache      0x17,0($t0)
    sltu       $at,$t0,$t1
    beqz       $at, .L0000adb0
    daddiu     $t0,$t0,128
.L0000ad80:
    andi       $t2,$t1,0x7f
    beqz       $t2, .L0000ada0
    dsubu      $t1,$t1,$t2
    cache      0x17,128($t1)
    daddiu     $t1,$t1,1
    sltu       $at,$t0,$t1
    beqz       $at, .L0000adb0
    nop
.L0000ada0:
    cache      0x13,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000ada0
    daddiu     $t0,$t0,128
.L0000adb0:
    cache      0x14,-128($t0)
    jr         $ra
    nop
.L0000adbc:
    lui        $t0,0xa800
    dsll       $t0,$t0,0x10
    ori        $t0,$t0,0x2000
    srl        $a7,$a7,0x1
    dsll       $t0,$t0,0x10
    daddu      $t1,$t0,$a7
    daddiu     $t1,$t1,-128
.L0000add8:
    cache      0x3,0($t0)
    cache      0x3,1($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000add8
    daddiu     $t0,$t0,128
    cache      0x14,-128($t0)
    jr         $ra
    nop

glabel __dcache_wb
    blez       $a1, .L0000aed4
    nop
    lw         $a7,-14756($zero)
    sltu       $t2,$a7,$a1
    bnez       $t2, .L0000ae4c
    nop
    move       $t0,$a0
    daddu      $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L0000ae40
    nop
    andi       $t2,$t0,0x7f
    daddiu     $t1,$t1,-128
    dsubu      $t0,$t0,$t2
.L0000ae30:
    cache      0x17,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000ae30
    daddiu     $t0,$t0,128
.L0000ae40:
    cache      0x14,-128($t0)
    jr         $ra
    nop
.L0000ae4c:
    lui        $t0,0xa800
    dsll       $t0,$t0,0x10
    ori        $t0,$t0,0x2000
    srl        $a7,$a7,0x1
    dsll       $t0,$t0,0x10
    daddu      $t1,$t0,$a7
    daddiu     $t1,$t1,-128
.L0000ae68:
    cache      0x3,0($t0)
    cache      0x3,1($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000ae68
    daddiu     $t0,$t0,128
    cache      0x14,-128($t0)
    jr         $ra
    nop

glabel __dcache_wb_inval
    blez       $a1, .L0000aed4
    nop
    lw         $a7,-14756($zero)
    sltu       $t2,$a7,$a1
    bnez       $t2, .L0000aedc
    nop
    move       $t0,$a0
    daddu      $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L0000aed0
    nop
    andi       $t2,$t0,0x7f
    daddiu     $t1,$t1,-128
    dsubu      $t0,$t0,$t2
.L0000aec0:
    cache      0x17,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000aec0
    daddiu     $t0,$t0,128
.L0000aed0:
    cache      0x14,-128($t0)
.L0000aed4:
    jr         $ra
    nop
.L0000aedc:
    lui        $t0,0xa800
    dsll       $t0,$t0,0x10
    ori        $t0,$t0,0x2000
    srl        $a7,$a7,0x1
    dsll       $t0,$t0,0x10
    daddu      $t1,$t0,$a7
    daddiu     $t1,$t1,-128
.L0000aef8:
    cache      0x3,0($t0)
    cache      0x3,1($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000aef8
    daddiu     $t0,$t0,128
    cache      0x14,-128($t0)
    jr         $ra
    nop

glabel __icache_inval
    blez       $a1, .L0000b05c
    nop
    lw         $a7,-14756($zero)
    sltu       $t2,$a7,$a1
    bnez       $t2, .L0000af6c
    nop
    move       $t0,$a0
    daddu      $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L0000af60
    nop
    andi       $t2,$t0,0x7f
    daddiu     $t1,$t1,-128
    dsubu      $t0,$t0,$t2
.L0000af50:
    cache      0x17,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000af50
    daddiu     $t0,$t0,128
.L0000af60:
    cache      0x14,-128($t0)
    jr         $ra
    nop
.L0000af6c:
    lui        $t0,0xa800
    dsll       $t0,$t0,0x10
    ori        $t0,$t0,0x2000
    srl        $a7,$a7,0x1
    dsll       $t0,$t0,0x10
    daddu      $t1,$t0,$a7
    daddiu     $t1,$t1,-128
.L0000af88:
    cache      0x3,0($t0)
    cache      0x3,1($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000af88
    daddiu     $t0,$t0,128
    cache      0x14,-128($t0)
    jr         $ra
    nop

glabel __cache_wb_inval
    blez       $a1, .L0000b05c
    nop
    lw         $a4,-14756($zero)
    srl        $a4,$a4,0x1
    sltu       $at,$a4,$a1
    move       $t0,$a0
    move       $a5,$a4
    bnez       $at, .L0000afd0
    andi       $t2,$t0,0x7f
    move       $a4,$a1
.L0000afd0:
    sltu       $at,$a1,$a5
    daddu      $a4,$a4,$t0
    dsubu      $t0,$t0,$t2
    beqz       $at, .L0000b044
    daddiu     $a4,$a4,-128
    lui        $t2,0x0
    move       $a5,$a0
    daddiu     $t2,$t2,0
    move       $a6,$a1
    dsll       $t2,$t2,0x10
    daddiu     $t2,$t2,0
    dsll       $t2,$t2,0x10
    daddiu     $t2,$t2,0
    lw         $t2,0($t2)
    srl        $t2,$t2,0x1
    daddu      $t2,$t2,$a5
    sltu       $at,$a6,$t2
    bnez       $at, .L0000b020
    nop
    move       $a6,$t2
.L0000b020:
    daddiu     $a5,$a5,64
    cache      0x1,-32($a5)
    cache      0x1,-31($a5)
    cache      0x1,-64($a5)
    cache      0x1,-63($a5)
    cache      0x0,-64($a5)
    sltu       $at,$a5,$a6
    bnez       $at, .L0000b020
    cache      0x0,-63($a5)
.L0000b044:
    cache      0x3,0($t0)
    cache      0x3,1($t0)
    sltu       $at,$t0,$a4
    bnez       $at, .L0000b044
    daddiu     $t0,$t0,128
    cache      0x14,-128($t0)
.L0000b05c:
    jr         $ra
    nop

glabel config_cache
    daddiu     $sp,$sp,-32
    sd         $ra,24($sp)
    sd         $s0,16($sp)
    sd         $s1,8($sp)
    sd         $s2,0($sp)
    mfc0       $s0,$12
    li         $t0,160
    mtc0       $t0,$12
    mfc0       $t0,$16
    li         $at,7
    li         $t2,1
    dsll       $at,$at,0x1d
    and        $t1,$t0,$at
    lui        $at,0x0
    daddiu     $at,$at,0
    srl        $t1,$t1,0x1d
    dsll       $at,$at,0x10
    addi       $t1,$t1,12
    daddiu     $at,$at,0
    sllv       $t2,$t2,$t1
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sw         $t2,0($at)
    lui        $at,0x1c00
    and        $t1,$t0,$at
    srl        $t1,$t1,0x1a
    addi       $t1,$t1,12
    lui        $at,0x0
    li         $t2,1
    daddiu     $at,$at,0
    sllv       $t2,$t2,$t1
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sw         $t2,0($at)
    lui        $at,0x0
    li         $t2,127
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sw         $t2,0($at)
    mtc0       $s0,$12
    ld         $ra,24($sp)
    ld         $s2,0($sp)
    ld         $s1,8($sp)
    ld         $s0,16($sp)
    daddiu     $sp,$sp,32
    jr         $ra
    nop

glabel size_2nd_cache
    lui        $v0,0x8
    lui        $t0,0x100
    bne        $t0, $v0, .L0000b14c
    nop
    jr         $ra
    nop
.L0000b14c:
    lui        $t2,0xa800
    dsll       $t2,$t2,0x10
    ori        $t2,$t2,0x2000
    lui        $at,0x100
    dsll       $t2,$t2,0x10
    daddu      $t2,$t2,$v0
    dsll       $v0,$v0,0x1
    lw         $zero,0($t2)
    slt        $at,$at,$v0
    beqz       $at, .L0000b14c
    nop
    mtc0       $zero,$28
    mtc0       $zero,$29
    lui        $t0,0xa800
    dsll       $t0,$t0,0x10
    ori        $t0,$t0,0x2000
    dsll       $t0,$t0,0x10
    lui        $v0,0x8
    cache      0x8,0($t0)
    cache      0x9,0($t0)
    cache      0xb,0($t0)
.L0000b1a0:
    lui        $t0,0xa800
    dsll       $t0,$t0,0x10
    ori        $t0,$t0,0x2000
    dsll       $t0,$t0,0x10
    daddu      $t0,$t0,$v0
    cache      0x7,0($t0)
    mfc0       $t1,$28
    beqz       $t1, .L0000b1d8
    nop
    dsll       $v0,$v0,0x1
    lui        $at,0x100
    slt        $at,$v0,$at
    bnez       $at, .L0000b1a0
    nop
.L0000b1d8:
    jr         $ra
    sll        $v0,$v0,0x1

glabel _c_hwb
    li         $t0,1
    move       $v0,$zero
    sltu       $at,$a0,$t0
    bnez       $at, .L0000b228
    nop
    beq        $a0, $t0, .L0000b234
    nop
    li         $t0,3
    beq        $a0, $t0, .L0000b220
    nop
    cache      0x17,0($a1)
    mfc0       $v0,$12
    lui        $at,0x4
    and        $v0,$v0,$at
.L0000b218:
    jr         $ra
    nop
.L0000b220:
    b          .L0000b218
    li         $v0,-1
.L0000b228:
    cache      0x14,0($a1)
    b          .L0000b218
    nop
.L0000b234:
    cache      0x15,0($a1)
    b          .L0000b218
    nop

glabel _c_hwbinv
    li         $t0,1
    move       $v0,$zero
    sltu       $at,$a0,$t0
    bnez       $at, .L0000b280
    nop
    beq        $a0, $t0, .L0000b288
    nop
    li         $t0,3
    beq        $a0, $t0, .L0000b280
    nop
    cache      0x17,0($a1)
    mfc0       $v0,$12
    lui        $at,0x4
    and        $v0,$v0,$at
.L0000b278:
    jr         $ra
    nop
.L0000b280:
    b          .L0000b278
    li         $v0,-1
.L0000b288:
    cache      0x15,0($a1)
    b          .L0000b278
    nop

glabel _c_hinv
    li         $t0,1
    move       $v0,$zero
    sltu       $at,$a0,$t0
    bnez       $at, .L0000b2c8
    nop
    beq        $a0, $t0, .L0000b2d4
    nop
    cache      0x13,0($a1)
    mfc0       $v0,$12
    lui        $at,0x4
    and        $v0,$v0,$at
.L0000b2c0:
    jr         $ra
    nop
.L0000b2c8:
    cache      0x10,0($a1)
    b          .L0000b2c0
    nop
.L0000b2d4:
    cache      0x11,0($a1)
    b          .L0000b2c0
    nop

glabel _c_ilt_n_ecc
    li         $t0,1
    move       $v0,$zero
    sltu       $at,$a0,$t0
    bnez       $at, .L0000b314
    nop
    beq        $a0, $t0, .L0000b320
    nop
    cache      0x7,0($a1)
.L0000b300:
    mfc0       $t0,$28
    mfc0       $t1,$26
    sw         $t0,0($a2)
    jr         $ra
    sw         $t1,0($a3)
.L0000b314:
    cache      0x4,0($a1)
    b          .L0000b300
    nop
.L0000b320:
    cache      0x5,0($a1)
    b          .L0000b300
    nop

glabel _c_ilt
    li         $t0,1
    move       $v0,$zero
    sltu       $at,$a0,$t0
    bnez       $at, .L0000b35c
    nop
    beq        $a0, $t0, .L0000b368
    nop
    cache      0x7,0($a1)
.L0000b34c:
    mfc0       $t0,$28
    sw         $t0,0($a2)
    jr         $ra
    nop
.L0000b35c:
    cache      0x4,0($a1)
    b          .L0000b34c
    nop
.L0000b368:
    cache      0x5,0($a1)
    b          .L0000b34c
    nop

glabel _c_ist
    move       $v0,$zero
    lw         $t1,0($a2)
    mtc0       $t1,$28
    li         $t0,1
    sltu       $at,$a0,$t0
    bnez       $at, .L0000b3a4
    nop
    beq        $a0, $t0, .L0000b3b0
    nop
    cache      0xb,0($a1)
    jr         $ra
    nop
.L0000b3a4:
    cache      0x8,0($a1)
    jr         $ra
    nop
.L0000b3b0:
    cache      0x9,0($a1)
    jr         $ra
    nop

glabel getecc
    mfc0       $v0,$26
    jr         $ra
    nop

glabel setecc
    mtc0       $a0,$26
    jr         $ra
    nop

glabel runcached
    dsll       $v0,$ra,0x7
    li         $at,21
    dsrl       $v0,$v0,0x7
    dsll32     $at,$at,0x1b
    daddu      $v0,$v0,$at
    jr         $v0
    nop

glabel uncached
    dsll       $v0,$ra,0x7
    li         $at,9
    dsrl       $v0,$v0,0x7
    dsll32     $at,$at,0x1c
    daddu      $v0,$v0,$at
    jr         $v0
    nop

glabel _munge_decc
    mfc0       $t1,$12
    mtc0       $a1,$12
    cache      0x15,0($a0)
    mtc0       $t1,$12
    jr         $ra
    nop

glabel _read_tag
    li         $t0,1
    move       $v0,$zero
    sltu       $at,$a0,$t0
    bnez       $at, .L0000b464
    nop
    beq        $a0, $t0, .L0000b470
    nop
    cache      0x7,0($a1)
    mfc0       $t0,$28
    sw         $t0,0($a2)
    jr         $ra
    nop
.L0000b464:
    cache      0x4,0($a1)
    b          .L0000b444
    nop
.L0000b470:
    cache      0x5,0($a1)
    b          .L0000b444
    nop

glabel _write_tag
    lw         $t0,0($a2)
    mtc0       $t0,$28
    li         $t0,1
    sltu       $at,$a0,$t0
    bnez       $at, .L0000b4a8
    nop
    beq        $a0, $t0, .L0000b4b4
    nop
    cache      0xb,0($a1)
.L0000b4a0:
    jr         $ra
    nop
.L0000b4a8:
    cache      0x8,0($a1)
    b          .L0000b4a0
    nop
.L0000b4b4:
    cache      0x9,0($a1)
    b          .L0000b4a0
    nop

glabel flush_cache
    lui        $a0,0xa800
    lw         $a1,-14756($zero)
    daddiu     $sp,$sp,-16
    dsll       $a0,$a0,0x10
    sd         $ra,8($sp)
    ori        $a0,$a0,0x2000
    jal        __cache_wb_inval
    dsll       $a0,$a0,0x10
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    nop

glabel cacheOP
    lw         $v0,16($a0)
    mtc0       $v0,$28
    lw         $v0,12($a0)
    mtc0       $v0,$29
    lw         $v0,20($a0)
    mtc0       $v0,$26
    ld         $a1,0($a0)
    lw         $v1,8($a0)
    lui        $v0,0x0
    daddiu     $v0,$v0,0
    dsll       $v0,$v0,0x10
    daddiu     $v0,$v0,0
    dsll       $v0,$v0,0x10
    daddiu     $v0,$v0,-19092
    lui        $at,0x1fff
    ori        $at,$at,0xffff
    and        $v0,$v0,$at
    lui        $at,0xe000
    and        $t0,$ra,$at
    or         $v0,$v0,$t0
    sll        $v1,$v1,0x3
    daddu      $v0,$v0,$v1
    jalr       $a2,$v0
    nop
    mfc0       $v0,$28
    sw         $v0,16($a0)
    mfc0       $v0,$29
    sw         $v0,12($a0)
    mfc0       $v0,$26
    jr         $ra
    sw         $v0,20($a0)
    jr         $a2
    cache      0x0,0($a1)
    jr         $a2
    cache      0x1,0($a1)
    jr         $a2
    cache      0x2,0($a1)
    jr         $a2
    cache      0x3,0($a1)
    jr         $a2
    cache      0x4,0($a1)
    jr         $a2
    cache      0x5,0($a1)
    jr         $a2
    cache      0x6,0($a1)
    jr         $a2
    cache      0x7,0($a1)
    jr         $a2
    cache      0x8,0($a1)
    jr         $a2
    cache      0x9,0($a1)
    jr         $a2
    cache      0xa,0($a1)
    jr         $a2
    cache      0xb,0($a1)
    jr         $a2
    cache      0xc,0($a1)
    jr         $a2
    cache      0xd,0($a1)
    jr         $a2
    cache      0xe,0($a1)
    jr         $a2
    cache      0xf,0($a1)
    jr         $a2
    cache      0x10,0($a1)
    jr         $a2
    cache      0x11,0($a1)
    jr         $a2
    cache      0x12,0($a1)
    jr         $a2
    cache      0x13,0($a1)
    jr         $a2
    cache      0x14,0($a1)
    jr         $a2
    cache      0x15,0($a1)
    jr         $a2
    cache      0x16,0($a1)
    jr         $a2
    cache      0x17,0($a1)
    jr         $a2
    cache      0x18,0($a1)
    jr         $a2
    cache      0x19,0($a1)
    jr         $a2
    cache      0x1a,0($a1)
    jr         $a2
    cache      0x1b,0($a1)
    jr         $a2
    cache      0x1c,0($a1)
    jr         $a2
    cache      0x1d,0($a1)
    jr         $a2
    cache      0x1e,0($a1)
    jr         $a2
    cache      0x1f,0($a1)

glabel __prefetch_store
    blez       $a1, .L0000b694
    nop
    li         $t0,-128
    dsrl       $a1,$a1,0x7
    and        $a0,$a0,$t0
.L0000b680:
    pref       0x1,0($a0)
    daddiu     $a1,$a1,-1
    daddiu     $a0,$a0,128
    bgez       $a1, .L0000b680
    nop
.L0000b694:
    jr         $ra
    nop

glabel __prefetch_load
    blez       $a1, .L0000b6c4
    nop
    li         $t0,-128
    dsrl       $a1,$a1,0x7
    and        $a0,$a0,$t0
.L0000b6b0:
    daddiu     $a1,$a1,-1
    pref       0x0,0($a0)
    daddiu     $a0,$a0,128
    bgez       $a1, .L0000b6b0
    nop
.L0000b6c4:
    jr         $ra
    nop

glabel sw_cachesynch_patch_insts
    daddiu     $k1,$k1,-16
    andi       $k0,$a0,0xf
    daddiu     $k0,$k0,16

glabel cache_sync_bp_start
    break      0x80
    jr         $ra

glabel cache_sync
    sd         $t0,-16320($zero)
    blez       $a1, .L0000b7ac
    sltiu      $at,$a1,257
    bnez       $at, .L0000b6fc
    lui        $at,0x8000
    j          longway
    nop
.L0000b6fc:
    addu       $t0,$a0,$a1
    addiu      $t0,$t0,-1
    sltu       $at,$t0,$at
    bnez       $t0, .L0000b718
    nop
    j          longway
    nop
.L0000b718:
    dmfc0      $k0,$10
    li         $at,-32768
    and        $t0,$a0,$at
    andi       $k1,$k0,0xff
    or         $t0,$t0,$k1
    dmtc0      $t0,$10
    li         $t0,16384
    andi       $k1,$a0,0x3fff
    subu       $t0,$t0,$k1
    slt        $at,$a1,$t0
    beqz       $at, .L0000b74c
    nop
    move       $t0,$a1
.L0000b74c:
    daddu      $k1,$a0,$t0

glabel sw_cachesynch_op1
    daddiu     $k1,$k1,-32

glabel sw_cachesynch_op2
    andi       $k0,$a0,0x1f
    dsubu      $k0,$a0,$k0

glabel sw_cachesynch_op4
.L0000b75c:
    tlbp
    nop
    mfc0       $at,$0
    nop
    bgez       $at, .L0000b780
    nop
    ld         $at,-16328($zero)
    j          longway
    ld         $t0,-16320($zero)
.L0000b780:
    cache      0x15,0($k0)
    nop
    cache      0x10,0($k0)
    nop
    sltu       $at,$k0,$k1
    bnez       $at, .L0000b75c

glabel sw_cachesynch_op3
    daddiu     $k0,$k0,32
    daddu      $a0,$a0,$t0
    dsubu      $a1,$a1,$t0
    bnez       $a1, .L0000b718
    nop
.L0000b7ac:
    dmfc0      $k0,$14
    li         $v0,0
    daddiu     $k0,$k0,4
    dmtc0      $k0,$14
    ld         $at,-16328($zero)
    ld         $t0,-16320($zero)
    eret
    eret

glabel cache_tag_ecc
    move       $v0,$zero
    lui        $a1,0x0
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    daddiu     $a1,$a1,960
.L0000b7e8:
    lui        $a2,0x0
    daddiu     $a2,$a2,0
    dsll       $a2,$a2,0x10
    daddiu     $a2,$a2,0
    dsll       $a2,$a2,0x10
    daddiu     $a2,$a2,1016
    beq        $a1, $a2, .L0000b844
    nop
    move       $v1,$zero
    lwu        $a2,0($a1)
    and        $a2,$a2,$a0
.L0000b814:
    beqz       $a2, .L0000b82c
    nop
    xor        $v1,$v1,$a2
    srl        $a2,$a2,0x1
    b          .L0000b814
    nop
.L0000b82c:
    andi       $v1,$v1,0x1
    sll        $v0,$v0,0x1
    or         $v0,$v0,$v1
    daddiu     $a1,$a1,4
    b          .L0000b7e8
    nop
.L0000b844:
    jr         $ra
    nop
    nop

glabel VEC_trap
    andi       $a2,$s0,0xffa4
    ori        $a2,$a2,0x1
    lui        $at,0x1
    and        $at,$at,$s0
    or         $a2,$a2,$at
    mtc0       $a2,$12
    move       $a2,$s0
    jal        trap
    move       $s1,$a0
    andi       $s2,$s0,0xffa0
    mtc0       $s2,$12
    j          exception_exit
    move       $k1,$s1

glabel uli_getasids
    mfc0       $v0,$10
    jr         $ra
    andi       $v0,$v0,0xff

glabel uli_setasids
    mtc0       $a0,$10
    jr         $ra
    nop

glabel uli_eret
    ld         $t1,160($a0)
    andi       $a1,$a1,0xff00
    ld         $t9,120($a0)
    or         $t1,$t1,$a1
    ld         $sp,112($a0)
    dmtc0      $t9,$14
    ld         $gp,104($a0)
    mtc0       $t1,$12
    daddiu     $sp,$sp,-32
    ld         $a0,128($a0)
    eret

glabel spl0
    mfc0       $v0,$12
    lui        $v1,0x1
    ori        $v1,$v1,0xa4
    and        $v1,$v1,$v0
    ori        $v1,$v1,0xff01
    jr         $ra
    mtc0       $v1,$12

glabel splhi
    mfc0       $v0,$12
    lui        $v1,0x1
    ori        $v1,$v1,0xe0a5
    and        $v1,$v1,$v0
    jr         $ra
    mtc0       $v1,$12

glabel issplhi
    li         $v1,1
    andi       $a1,$a0,0x3
    bne        $a1, $v1, .L0000b930
    move       $v0,$zero
    andi       $a0,$a0,0x1000
    bnez       $a0, .L0000b934
    nop
.L0000b930:
    li         $v0,1
.L0000b934:
    jr         $ra
    nop

glabel issplprof
    li         $v1,1
    andi       $a1,$a0,0x3
    bne        $a1, $v1, .L0000b958
    move       $v0,$zero
    andi       $a0,$a0,0xa000
    bnez       $a0, .L0000b95c
    nop
.L0000b958:
    li         $v0,1
.L0000b95c:
    jr         $ra
    nop

glabel isspl7
    andi       $v1,$a0,0x1
    li         $v0,0
    bnez       $v1, .L0000b97c
    nop
    b          .L0000b98c
    li         $v0,1
.L0000b97c:
    andi       $a0,$a0,0xff00
    bnez       $a0, .L0000b98c
    nop
    li         $v0,1
.L0000b98c:
    jr         $ra
    nop

glabel splprof
    mfc0       $v0,$12
    lui        $v1,0x1
    ori        $v1,$v1,0x40a5
    and        $v1,$v1,$v0
    jr         $ra
    mtc0       $v1,$12

glabel spl7
    mfc0       $v0,$12
    lui        $v1,0x1
    ori        $v1,$v1,0xa5
    and        $v1,$v1,$v0
    jr         $ra
    mtc0       $v1,$12

glabel splecc
    mfc0       $v0,$12
    li         $v1,164
    and        $v1,$v1,$v0
    lui        $t0,0x1
    ori        $t0,$t0,0x1
    or         $v1,$v1,$t0
    jr         $ra
    mtc0       $v1,$12

glabel splx
    mfc0       $v0,$12
    lui        $v1,0x1
    ori        $v1,$v1,0xa4
    and        $v1,$v1,$v0
    or         $a0,$a0,$v1
    jr         $ra
    mtc0       $a0,$12

glabel isspl0
    li         $v1,0xff01
    and        $a0,$a0,$v1
    bne        $a0, $v1, .L0000ba18
    nop
    jr         $ra
    li         $v0,1
.L0000ba18:
    jr         $ra
    li         $v0,0

glabel delay_for_intr
    jr         $ra
    nop

glabel VEC_fpe
    andi       $t0,$s0,0x18
    bnez       $t0, .L0000ba50
    nop
    andi       $a2,$s0,0xffa0
    ori        $a2,$a2,0x1
    mtc0       $a2,$12
    jal        trap
    move       $a2,$s0
.L0000ba50:
    ld         $t1,288($k1)
    ld         $t0,280($k1)
    ld         $t3,-16360($zero)
    lw         $t2,0($t1)
    bgez       $t0, .L0000ba70
    sw         $t2,1344($t3)
    lw         $t2,4($t1)
    sw         $t2,1348($t3)
.L0000ba70:
    lui        $at,0x400
    ori        $at,$at,0xffa0
    and        $a2,$s0,$at
    ori        $a2,$a2,0x1
    mtc0       $a2,$12
    jal        fp_intr
    move       $s1,$a0
    andi       $s2,$s0,0xffa0
    mtc0       $s2,$12
    j          exception_exit
    move       $k1,$s1
    nop

glabel tfi_save
    sd         $t0,88($k1)
    mflo       $t0
    sd         $t1,96($k1)
    mfhi       $t1
    sd         $v0,8($k1)
    sd         $v1,16($k1)
    sd         $t2,104($k1)
    sd         $t3,112($k1)
    sd         $t8,184($k1)
    sd         $t9,192($k1)
    sd         $s8,232($k1)
    sd         $t0,256($k1)
    jr         $ra
    sd         $t1,264($k1)

glabel tfi_restore
    ld         $v0,256($k1)
    ld         $v1,264($k1)
    ld         $t0,88($k1)
    ld         $t1,96($k1)
    mtlo       $v0
    ld         $v0,8($k1)
    mthi       $v1
    ld         $v1,16($k1)
    ld         $t2,104($k1)
    ld         $t3,112($k1)
    ld         $t8,184($k1)
    ld         $t9,192($k1)
    jr         $ra
    ld         $s8,232($k1)

glabel assbuffer
    nop

glabel assfail
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $v0,8($at)
    lui        $v0,0x0
    li         $at,-1
    daddiu     $v0,$v0,0
    dsll       $v0,$v0,0x10
    daddiu     $v0,$v0,0
    dsll       $v0,$v0,0x10
    daddiu     $v0,$v0,0
    lw         $v0,0($v0)
    bne        $v0, $at, .L0000bf48
    lui        $at,0x0
    lh         $v0,-15456($zero)
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sw         $v0,0($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $gp,216($at)
    mfc0       $v0,$12
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $v0,248($at)
    lui        $at,0x0
    mflo       $v0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $sp,224($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $v1,16($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $a3,48($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $a4,56($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $a5,64($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $a6,72($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $a7,80($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $t0,88($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $t1,96($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $t2,104($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $t3,112($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $s0,120($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $s1,128($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $s2,136($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $s3,144($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $s4,152($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $s5,160($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $s6,168($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $s7,176($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $t8,184($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $t9,192($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $k0,200($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $k1,208($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $s8,232($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $ra,240($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $v0,256($at)
    lui        $at,0x0
    mfhi       $v0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $v0,264($at)
    mfc0       $v0,$13
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $v0,280($at)
    dmfc0      $v0,$8
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $v0,272($at)
    mfc0       $v0,$12
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $v0,248($at)
    dmfc0      $v0,$14
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $v0,288($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sd         $v0,352($at)
.L0000bf48:
    j          _assfail
    nop

glabel getsr
    mfc0       $v0,$12
    jr         $ra
    nop

glabel setsr
    ori        $a0,$a0,0xa0
    mtc0       $a0,$12
    jr         $ra
    nop

glabel getpc
    jr         $ra
    move       $v0,$ra

glabel getsp
    jr         $ra
    move       $v0,$sp

glabel getpcsp
    sd         $ra,0($a0)
    jr         $ra
    sd         $sp,0($a1)

glabel getgp
    jr         $ra
    move       $v0,$gp

glabel getcause
    mfc0       $v0,$13
    jr         $ra
    nop

glabel setcause
    dmtc0      $a0,$13
    jr         $ra
    nop

glabel getbadvaddr
    dmfc0      $v0,$8
    jr         $ra
    nop

glabel get_sr
    mfc0       $v0,$12
    jr         $ra
    nop

glabel set_sr
    mtc0       $a0,$12
    jr         $ra
    nop

glabel get_lladdr
    mfc0       $v0,$17
    jr         $ra
    nop

glabel set_lladdr
    mtc0       $a0,$17
    jr         $ra
    nop

glabel do_sync_instruction
    sync
    jr         $ra
    nop

glabel siron
    mfc0       $v0,$12
    lui        $v1,0x1
    ori        $v1,$v1,0xa4
    and        $v1,$v1,$v0
    mtc0       $v1,$12
    mfc0       $v1,$13
    or         $v1,$v1,$a0
    mtc0       $v1,$13
    jr         $ra
    mtc0       $v0,$12

glabel siroff
    mfc0       $v0,$12
    lui        $v1,0x1
    ori        $v1,$v1,0xa4
    and        $v1,$v1,$v0
    mtc0       $v1,$12
    mfc0       $v1,$13
    nor        $a0,$a0,$zero
    and        $v1,$v1,$a0
    mtc0       $v1,$13
    jr         $ra
    mtc0       $v0,$12

glabel flushbus
    lui        $at,0xaff5
    ld         $zero,0($at)
    lui        $at,0xb800
    ld         $zero,0($at)
    sync
    nop
    jr         $ra
    nop

glabel wbflush
    jr         $ra
    nop

glabel ip26_enable_ucmem
    jr         $ra
    nop

glabel badaddr
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    mfc0       $t0,$12
    li         $t1,160
    mtc0       $t1,$12
    lui        $v0,0xb800
    ld         $at,96($v0)
    sd         $zero,64($v0)
    ld         $zero,0($v0)
    sd         $at,96($v0)
    lui        $v0,0xaff1
    ori        $v0,$v0,0x40
    ld         $at,0($v0)
    sd         $at,0($v0)
    lui        $at,0xaff5
    ld         $zero,0($at)
    ld         $t2,-16352($zero)
    li         $v0,1
    sh         $v0,246($t2)
    li         $at,1
    bne        $a1, $at, .L0000c0e4
    nop
    lb         $v0,0($a0)
    b          .L0000c14c
    nop
.L0000c0e4:
    li         $at,2
    bne        $a1, $at, .L0000c0fc
    nop
    lh         $v0,0($a0)
    b          .L0000c14c
    nop
.L0000c0fc:
    li         $at,4
    bne        $a1, $at, .L0000c114
    nop
    lw         $v0,0($a0)
    b          .L0000c14c
    nop
.L0000c114:
    li         $at,8
    bne        $a1, $at, .L0000c12c
    nop
    ld         $v0,0($a0)
    b          .L0000c14c
    nop
.L0000c12c:
    lui        $a1,0x0
    li         $a0,0
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    jal        cmn_err
    daddiu     $a1,$a1,1016
.L0000c14c:
    lui        $at,0xaff5
    ld         $zero,0($at)
    lui        $at,0xb800
    ld         $zero,0($at)
    sync
    mfc0       $t1,$13
    andi       $t1,$t1,0x4000
    bnez       $t1, .L0000c788
    nop
    lui        $t1,0xaff1
    ori        $t1,$t1,0x40
    lui        $at,0x1
    ld         $t1,0($t1)
    and        $t1,$t1,$at
    bnez       $t1, .L0000c788
    nop
    ld         $t2,-16352($zero)
    sh         $zero,246($t2)
    mtc0       $t0,$12
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    move       $v0,$zero

glabel badaddr_val
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    mfc0       $t0,$12
    li         $t1,160
    mtc0       $t1,$12
    lui        $v0,0xb800
    ld         $at,96($v0)
    sd         $zero,64($v0)
    ld         $zero,0($v0)
    sd         $at,96($v0)
    lui        $v0,0xaff1
    ori        $v0,$v0,0x40
    ld         $at,0($v0)
    sd         $at,0($v0)
    lui        $at,0xaff5
    ld         $zero,0($at)
    ld         $t2,-16352($zero)
    beqz       $t2, .L0000c200
    li         $v0,1
    sh         $v0,246($t2)
    b          .L0000c204
    nop
.L0000c200:
    sw         $v0,-15356($zero)
.L0000c204:
    li         $at,1
    bne        $a1, $at, .L0000c224
    nop
    lb         $v0,0($a0)
    nop
    sb         $v0,0($a2)
    b          .L0000c2a4
    nop
.L0000c224:
    li         $at,2
    bne        $a1, $at, .L0000c244
    nop
    lh         $v0,0($a0)
    nop
    sh         $v0,0($a2)
    b          .L0000c2a4
    nop
.L0000c244:
    li         $at,4
    bne        $a1, $at, .L0000c264
    nop
    lw         $v0,0($a0)
    nop
    sw         $v0,0($a2)
    b          .L0000c2a4
    nop
.L0000c264:
    li         $at,8
    bne        $a1, $at, .L0000c284
    nop
    ld         $v0,0($a0)
    nop
    sd         $v0,0($a2)
    b          .L0000c2a4
    nop
.L0000c284:
    lui        $a1,0x0
    li         $a0,0
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    jal        cmn_err
    daddiu     $a1,$a1,1025
.L0000c2a4:
    lui        $at,0xaff5
    ld         $zero,0($at)
    lui        $at,0xb800
    ld         $zero,0($at)
    sync
    mfc0       $t1,$13
    andi       $t1,$t1,0x4000
    bnez       $t1, .L0000c788
    nop
    lui        $t1,0xaff1
    ori        $t1,$t1,0x40
    lui        $at,0x1
    ld         $t1,0($t1)
    and        $t1,$t1,$at
    bnez       $t1, .L0000c788
    nop
    ld         $t2,-16352($zero)
    beqz       $t2, .L0000c2fc
    nop
    sh         $zero,246($t2)
    b          .L0000c300
    nop
.L0000c2fc:
    sw         $zero,-15356($zero)
.L0000c300:
    mtc0       $t0,$12
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    move       $v0,$zero

glabel wbadaddr
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    mfc0       $t0,$12
    li         $t1,160
    mtc0       $t1,$12
    lui        $v0,0xb800
    ld         $at,96($v0)
    sd         $zero,64($v0)
    ld         $zero,0($v0)
    sd         $at,96($v0)
    lui        $v0,0xaff1
    ori        $v0,$v0,0x40
    ld         $at,0($v0)
    sd         $at,0($v0)
    lui        $at,0xaff5
    ld         $zero,0($at)
    ld         $t2,-16352($zero)
    li         $v0,1
    sh         $v0,246($t2)
    li         $at,1
    bne        $a1, $at, .L0000c378
    nop
    sb         $zero,0($a0)
    b          .L0000c3e0
    nop
.L0000c378:
    li         $at,2
    bne        $a1, $at, .L0000c390
    nop
    sh         $zero,0($a0)
    b          .L0000c3e0
    nop
.L0000c390:
    li         $at,4
    bne        $a1, $at, .L0000c3a8
    nop
    sw         $zero,0($a0)
    b          .L0000c3e0
    nop
.L0000c3a8:
    li         $at,8
    bne        $a1, $at, .L0000c3c0
    nop
    sd         $zero,0($a0)
    b          .L0000c3e0
    nop
.L0000c3c0:
    lui        $a1,0x0
    li         $a0,0
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    jal        cmn_err
    daddiu     $a1,$a1,1038
.L0000c3e0:
    lui        $at,0xaff5
    ld         $zero,0($at)
    lui        $at,0xb800
    ld         $zero,0($at)
    sync
    lui        $at,0xaff5
    ld         $zero,0($at)
    lui        $at,0xb800
    ld         $zero,0($at)
    sync
    li         $at,9
    dsll32     $at,$at,0x1c
    lw         $t2,0($at)
    nop
    mfc0       $t1,$13
    andi       $t1,$t1,0x4000
    bnez       $t1, .L0000c788
    nop
    lui        $t1,0xaff1
    ori        $t1,$t1,0x40
    lui        $at,0x1
    ld         $t1,0($t1)
    and        $t1,$t1,$at
    bnez       $t1, .L0000c788
    nop
    ld         $t2,-16352($zero)
    sh         $zero,246($t2)
    mtc0       $t0,$12
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    move       $v0,$zero

glabel wbadaddr_val
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    mfc0       $t0,$12
    li         $t1,160
    mtc0       $t1,$12
    lui        $v0,0xb800
    ld         $at,96($v0)
    sd         $zero,64($v0)
    ld         $zero,0($v0)
    sd         $at,96($v0)
    lui        $v0,0xaff1
    ori        $v0,$v0,0x40
    ld         $at,0($v0)
    sd         $at,0($v0)
    lui        $at,0xaff5
    ld         $zero,0($at)
    ld         $t2,-16352($zero)
    li         $v0,1
    sh         $v0,246($t2)
    li         $at,1
    bne        $a1, $at, .L0000c4cc
    nop
    lb         $v0,0($a2)
    nop
    sb         $v0,0($a0)
    b          .L0000c54c
    nop
.L0000c4cc:
    li         $at,2
    bne        $a1, $at, .L0000c4ec
    nop
    lh         $v0,0($a2)
    nop
    sh         $v0,0($a0)
    b          .L0000c54c
    nop
.L0000c4ec:
    li         $at,4
    bne        $a1, $at, .L0000c50c
    nop
    lw         $v0,0($a2)
    nop
    sw         $v0,0($a0)
    b          .L0000c54c
    nop
.L0000c50c:
    li         $at,8
    bne        $a1, $at, .L0000c52c
    nop
    ld         $v0,0($a2)
    nop
    sd         $v0,0($a0)
    b          .L0000c54c
    nop
.L0000c52c:
    lui        $a1,0x0
    li         $a0,0
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    jal        cmn_err
    daddiu     $a1,$a1,1048
.L0000c54c:
    lui        $at,0xaff5
    ld         $zero,0($at)
    lui        $at,0xb800
    ld         $zero,0($at)
    sync
    lui        $at,0xaff5
    ld         $zero,0($at)
    lui        $at,0xb800
    ld         $zero,0($at)
    sync
    li         $at,9
    dsll32     $at,$at,0x1c
    lw         $t2,0($at)
    mfc0       $t1,$13
    andi       $t1,$t1,0x4000
    bnez       $t1, .L0000c788
    nop
    lui        $t1,0xaff1
    ori        $t1,$t1,0x40
    lui        $at,0x1
    ld         $t1,0($t1)
    and        $t1,$t1,$at
    bnez       $t1, .L0000c788
    nop
    ld         $t2,-16352($zero)
    sh         $zero,246($t2)
    mtc0       $t0,$12
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    move       $v0,$zero

glabel earlybadaddr
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    mfc0       $t0,$12
    li         $t1,160
    mtc0       $t1,$12
    lui        $v0,0xb800
    ld         $at,96($v0)
    sd         $zero,64($v0)
    ld         $zero,0($v0)
    sd         $at,96($v0)
    lui        $v0,0xaff1
    ori        $v0,$v0,0x40
    ld         $at,0($v0)
    sd         $at,0($v0)
    lui        $at,0xaff5
    ld         $zero,0($at)
    li         $v0,9
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sw         $v0,0($at)
    li         $at,1
    bne        $a1, $at, .L0000c640
    nop
    lb         $v0,0($a0)
    b          .L0000c690
    nop
.L0000c640:
    li         $at,2
    bne        $a1, $at, .L0000c658
    nop
    lh         $v0,0($a0)
    b          .L0000c690
    nop
.L0000c658:
    li         $at,4
    bne        $a1, $at, .L0000c670
    nop
    lw         $v0,0($a0)
    b          .L0000c690
    nop
.L0000c670:
    lui        $a1,0x0
    li         $a0,0
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    jal        cmn_err
    daddiu     $a1,$a1,1062
.L0000c690:
    lui        $at,0xaff5
    ld         $zero,0($at)
    lui        $at,0xb800
    ld         $zero,0($at)
    sync
    mfc0       $t1,$13
    andi       $t1,$t1,0x4000
    bnez       $t1, .L0000c7e4
    nop
    lui        $t1,0xaff1
    ori        $t1,$t1,0x40
    lui        $at,0x1
    ld         $t1,0($t1)
    and        $t1,$t1,$at
    bnez       $t1, .L0000c7e4
    nop
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sw         $zero,0($at)
    mtc0       $t0,$12
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    move       $v0,$zero

glabel wbadmemaddr
    mfc0       $t0,$12
    li         $t1,160
    mtc0       $t1,$12
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    li         $v0,9
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sw         $v0,0($at)
    sw         $zero,0($a0)
    lw         $v0,0($a0)
    lui        $t1,0xaff1
    ori        $t1,$t1,0x40
    lui        $at,0x1
    ld         $t1,0($t1)
    and        $t1,$t1,$at
    bnez       $t1, .L0000c788
    nop
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sw         $zero,0($at)
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    mtc0       $t0,$12
    jr         $ra
    move       $v0,$zero

glabel baerror
.L0000c788:
    lui        $v0,0xb800
    ld         $at,96($v0)
    sd         $zero,64($v0)
    ld         $zero,0($v0)
    sd         $at,96($v0)
    lui        $v0,0xaff1
    ori        $v0,$v0,0x40
    ld         $at,0($v0)
    sd         $at,0($v0)
    lui        $at,0xaff5
    ld         $zero,0($at)
    mtc0       $t0,$12
    ld         $t2,-16352($zero)
    beqz       $t2, .L0000c7d0
    li         $v0,1
    sh         $zero,246($t2)
    b          .L0000c7d4
    nop
.L0000c7d0:
    sw         $zero,-15356($zero)
.L0000c7d4:
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    nop

glabel earlybaerror
.L0000c7e4:
    lui        $v0,0xb800
    ld         $at,96($v0)
    sd         $zero,64($v0)
    ld         $zero,0($v0)
    sd         $at,96($v0)
    lui        $v0,0xaff1
    ori        $v0,$v0,0x40
    ld         $at,0($v0)
    sd         $at,0($v0)
    lui        $at,0xaff5
    ld         $zero,0($at)
    mtc0       $t0,$12
    lui        $at,0x0
    li         $v0,1
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sw         $zero,0($at)
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    jr         $ra
    nop

glabel VEC_breakpoint
    j          VEC_trap
    nop

glabel kernelbp
    break      0x1

glabel debug
    lui        $t0,0x0
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    dsll       $t0,$t0,0x10
    daddiu     $t0,$t0,0
    lh         $t0,0($t0)
    blez       $t0, .L0000c8cc
    nop
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    break      0x1
    lui        $at,0x0
    ld         $ra,8($sp)
    daddiu     $sp,$sp,16
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sh         $zero,0($at)
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sb         $zero,0($at)
.L0000c8cc:
    jr         $ra
    nop

glabel sstepbp
    break      0x5

glabel ULIsystrap
    li         $at,1040
    bne        $v0, $at, .L0000ca30
    li         $at,168
    bne        $a0, $at, .L0000ca30
    li         $at,3
    bne        $a1, $at, .L0000c930
    nop
    ld         $t0,-16344($zero)
    lui        $gp,0x0
    li         $a0,0
    daddiu     $gp,$gp,0
    ld         $sp,136($t0)
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    daddiu     $sp,$sp,-32
    dsll       $gp,$gp,0x10
    ori        $sp,$sp,0x7
    daddiu     $gp,$gp,0
    j          uli_return
    xori       $sp,$sp,0x7
.L0000c930:
    ld         $k0,-16344($zero)
    ld         $k1,136($k0)
    daddiu     $k1,$k1,-112
    ori        $k1,$k1,0x7
    xori       $k1,$k1,0x7
    mfc0       $t0,$12
    sd         $a1,40($k1)
    sd         $a2,48($k1)
    sd         $a3,56($k1)
    dmfc0      $t1,$14
    sd         $ra,88($k1)
    sd         $s8,80($k1)
    sd         $sp,72($k1)
    daddiu     $t1,$t1,4
    sd         $t0,96($k1)
    li         $t0,2
    move       $sp,$k1
    sd         $gp,64($k1)
    lui        $gp,0x0
    sd         $t1,104($k1)
    daddiu     $gp,$gp,0
    sb         $t0,-16305($zero)
    dsll       $gp,$gp,0x10
    ld         $t0,-16344($zero)
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    ld         $t1,144($t0)
    daddiu     $gp,$gp,0
    sd         $t1,-16360($zero)
    jal        uli_setasids
    lh         $a0,168($t0)
    ld         $t0,96($k1)
    andi       $t0,$t0,0xff80
    ori        $t0,$t0,0x1
    mtc0       $t0,$12
    daddiu     $a0,$sp,32
    ld         $a1,40($sp)
    ld         $a2,48($sp)
    jal        ULI_syscall
    ld         $a3,56($sp)
    ld         $t0,96($sp)
    andi       $t0,$t0,0xff80
    mtc0       $t0,$12
    bnezl      $v0, .L0000c9ec
    li         $a3,1
    ld         $v0,32($sp)
    move       $a3,$zero
.L0000c9ec:
    ld         $t2,-16344($zero)
    li         $t1,4
    move       $k1,$sp
    sb         $t1,-16305($zero)
    ld         $a1,152($t2)
    sd         $a1,-16360($zero)
    jal        uli_setasids
    lh         $a0,170($t2)
    ld         $t2,96($k1)
    ld         $t1,104($k1)
    ld         $ra,88($k1)
    dmtc0      $t1,$14
    ld         $s8,80($k1)
    ld         $sp,72($k1)
    mtc0       $t2,$12
    ld         $gp,64($k1)
    eret

glabel keruliframe
.L0000ca30:
    ld         $k0,-16344($zero)
    lw         $k1,232($k0)
    bnez       $k1, .L0000cac8
    nop
    daddiu     $k1,$k0,240
    sd         $sp,224($k1)
    sd         $gp,216($k1)
    ld         $at,-16328($zero)
    sd         $at,0($k1)
    sd         $a0,24($k1)
    sd         $a1,32($k1)
    sd         $a2,40($k1)
    sd         $a3,48($k1)
    sd         $a4,56($k1)
    sd         $a5,64($k1)
    sd         $a6,72($k1)
    sd         $a7,80($k1)
    sd         $s0,120($k1)
    sd         $s1,128($k1)
    sd         $s2,136($k1)
    sd         $s3,144($k1)
    sd         $s4,152($k1)
    sd         $s5,160($k1)
    sd         $s6,168($k1)
    sd         $s7,176($k1)
    mfc0       $s0,$12
    mfc0       $s2,$13
    dmfc0      $s3,$14
    dmfc0      $at,$8
    sd         $ra,240($k1)
    jal        tfi_save
    nop
    sd         $s0,248($k1)
    sd         $s2,280($k1)
    sd         $s3,288($k1)
    sd         $s3,352($k1)
    sd         $at,272($k1)
    sw         $k0,232($k0)
.L0000cac8:
    lui        $gp,0x0
    ld         $sp,136($k0)
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $sp,$sp,-32
    daddiu     $gp,$gp,0
    ori        $sp,$sp,0x7
    dsll       $gp,$gp,0x10
    xori       $sp,$sp,0x7
    j          uli_badtrap
    daddiu     $gp,$gp,0
    lui        $a0,0x0
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    b          .L0000cb28
    daddiu     $a0,$a0,1080
    lui        $a0,0x0
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,1136
.L0000cb28:
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,1436
    sw         $sp,0($at)
    dmfc0      $a1,$14
    li         $k0,3
    lb         $s1,-16305($zero)
    move       $a2,$sp
    ld         $sp,-15424($zero)
    sb         $k0,-16305($zero)
    move       $s0,$ra
    jal        printf
    move       $a3,$k1
    lui        $a0,0x0
    move       $a1,$s0
    daddiu     $a0,$a0,0
    move       $a2,$s1
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    jal        printf
    daddiu     $a0,$a0,1388
    mfc0       $a0,$12
    lui        $k0,0x1
    ori        $k0,$k0,0x4
    and        $a0,$k0,$a0
    ori        $a0,$a0,0xa1
    mtc0       $a0,$12
    lui        $a0,0x0
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    jal        panic
    daddiu     $a0,$a0,1408

glabel intrnorm
    lb         $k1,-14584($zero)
    xori       $k1,$k1,0x1
    beqz       $k1, .L0000cbec
    ld         $k1,-15264($zero)
    beqz       $k1, .L0000cbec
    ld         $k0,-16360($zero)
    bne        $k1, $k0, .L0000cbec
    nop
    dmfc0      $k1,$14
    bgez       $k1, .L0000cdcc
    nop
.L0000cbec:
    ld         $k0,-16344($zero)
    bnez       $k0, .L0000ccf4
    nop
    lb         $k0,-16305($zero)
    addi       $k0,$k0,-2
    beqz       $k0, .L0000cdb0
    addi       $k0,$k0,1
    beqz       $k0, .L0000cc90
    addi       $k0,$k0,-2
    beqz       $k0, .L0000ccbc
    li         $k0,2
    sb         $k0,-16305($zero)
    ld         $k1,-16360($zero)
    ld         $k1,992($k1)
    daddiu     $k1,$k1,360
    sd         $sp,224($k1)
    li         $k0,2
    ld         $sp,-16336($zero)
    sd         $gp,216($k1)
    lui        $gp,0x0
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    j          ecommon
    daddiu     $gp,$gp,0

glabel _baduk
    lui        $a0,0x0
    ld         $sp,-15424($zero)
    move       $a2,$zero
    lui        $a1,0x0
    daddiu     $a0,$a0,0
    daddiu     $a1,$a1,0
    dsll       $a0,$a0,0x10
    dsll       $a1,$a1,0x10
    daddiu     $a0,$a0,0
    daddiu     $a1,$a1,0
    dsll       $a0,$a0,0x10
    dsll       $a1,$a1,0x10
    daddiu     $a0,$a0,1440
    j          assfail
    daddiu     $a1,$a1,1453
.L0000cc90:
    li         $k1,2
    sb         $k1,-16305($zero)
    daddiu     $k1,$sp,-360
    ori        $k1,$k1,0x7
    xori       $k1,$k1,0x7
    sd         $sp,224($k1)
    ld         $k0,-16352($zero)
    ld         $sp,-16336($zero)
    sd         $k1,552($k0)
    j          ecommon
    li         $k0,2
.L0000ccbc:
    li         $k1,2
    li         $k0,1
    sb         $k1,-16305($zero)
    ld         $k1,-16336($zero)
    sd         $sp,224($k1)
    move       $sp,$k1
    sb         $k0,-16301($zero)
    lb         $k0,-16304($zero)
    beqz       $k0, .L0000ccec
    nop
    j          ecommon_allsaved
    li         $k0,2
.L0000ccec:
    j          ecommon
    li         $k0,2
.L0000ccf4:
    lb         $k1,-16305($zero)
    li         $at,2
    beq        $k1, $at, .L0000cdb0
    nop
    ld         $k0,-16344($zero)
    ld         $k1,136($k0)
    li         $k0,2
    daddiu     $k1,$k1,-360
    ori        $k1,$k1,0x7
    xori       $k1,$k1,0x7
    sd         $gp,216($k1)
    lui        $gp,0x0
    sd         $sp,224($k1)
    daddiu     $gp,$gp,0
    move       $sp,$k1
    ld         $at,-16328($zero)
    dsll       $gp,$gp,0x10
    sb         $k0,-16305($zero)
    daddiu     $gp,$gp,0
    sd         $ra,240($k1)
    dsll       $gp,$gp,0x10
    sd         $a7,80($k1)
    daddiu     $gp,$gp,0
    sd         $a6,72($k1)
    sd         $a5,64($k1)
    sd         $a4,56($k1)
    sd         $a3,48($k1)
    sd         $a2,40($k1)
    sd         $a1,32($k1)
    sd         $a0,24($k1)
    sd         $s7,176($k1)
    sd         $s6,168($k1)
    sd         $s5,160($k1)
    sd         $s4,152($k1)
    sd         $s3,144($k1)
    sd         $s2,136($k1)
    sd         $s1,128($k1)
    sd         $s0,120($k1)
    jal        tfi_save
    sd         $at,0($k1)
    ld         $t1,-16344($zero)
    ld         $t0,144($t1)
    sd         $t0,-16360($zero)
    jal        uli_setasids
    lh         $a0,168($t1)
    j          ecommon_allsaved
    nop
.L0000cdb0:
    daddiu     $k1,$sp,-360
    li         $k0,256
    ori        $k1,$k1,0x7
    xori       $k1,$k1,0x7
    sd         $sp,224($k1)
    j          ecommon
    move       $sp,$k1
.L0000cdcc:
    sd         $at,-16328($zero)
    daddiu     $k1,$k1,-4
    li         $at,-32768
    and        $k1,$k1,$at
    dmfc0      $at,$10
    andi       $k0,$at,0xff
    or         $k0,$k0,$k1
    dmtc0      $k0,$10
    tlbp
    mfc0       $k0,$0
    bltz       $k0, .L0000d05c
    nop
    tlbr
    mfc0       $k0,$5
    srl        $k0,$k0,0x1
    ori        $k0,$k0,0xfff
    daddiu     $k0,$k0,1
    dmfc0      $k1,$14
    daddiu     $k1,$k1,-4
    and        $k0,$k0,$k1
    bnez       $k0, .L0000ce30
    nop
    dmfc0      $k0,$2
    b          .L0000ce34
    nop
.L0000ce30:
    dmfc0      $k0,$3
.L0000ce34:
    li         $k1,24576
    mtc0       $k1,$5
    andi       $k0,$k0,0x2
    beqz       $k0, .L0000d05c
    nop
    dmtc0      $at,$10
    dmfc0      $k1,$14
    lw         $k0,-4($k1)
    srl        $at,$k0,0x1a
    bnez       $at, .L0000d05c
    andi       $at,$k0,0x38
    xori       $at,$at,0x18
    bnez       $at, .L0000d05c
    nop
    ld         $k1,-14552($zero)
    beqz       $k1, .L0000d05c
    nop
    sw         $k0,4($k1)
    cache      0x15,0($k1)
    cache      0x10,0($k1)
    dmfc0      $zero,$14
    ld         $at,-16328($zero)
    mfhi       $k0
    sd         $k0,-14568($zero)
    mflo       $k0
    sd         $k0,-14560($zero)
    jalr       $k0,$k1
    nop
    ld         $k0,-14560($zero)
    mflo       $k1
    mtlo       $k0
    beq        $k0, $k1, .L0000cec4
    ld         $k0,-14568($zero)
    mthi       $k0
    j          .text
    nop
.L0000cec4:
    mfhi       $k1
    bne        $k0, $k1, .L0000ced4
    li         $at,1
    li         $at,0
.L0000ced4:
    sd         $at,-14568($zero)
    mthi       $k0
    dmfc0      $k1,$14
    daddiu     $k0,$k1,-4
    andi       $k0,$k0,0x3fff
    bnez       $k0, .L0000cf70
    nop
    daddiu     $k1,$k1,-8
    li         $at,-32768
    and        $k1,$k1,$at
    dmfc0      $at,$10
    andi       $k0,$at,0xff
    or         $k0,$k0,$k1
    dmtc0      $k0,$10
    tlbp
    mfc0       $k0,$0
    bltzl      $k0, .L0000d02c
    li         $at,4
    tlbr
    mfc0       $k0,$5
    srl        $k0,$k0,0x1
    ori        $k0,$k0,0xfff
    daddiu     $k0,$k0,1
    dmfc0      $k1,$14
    daddiu     $k1,$k1,-8
    and        $k0,$k0,$k1
    bnez       $k0, .L0000cf50
    nop
    dmfc0      $k0,$2
    b          .L0000cf54
    nop
.L0000cf50:
    dmfc0      $k0,$3
.L0000cf54:
    li         $k1,24576
    mtc0       $k1,$5
    andi       $k0,$k0,0x2
    beqzl      $k0, .L0000d02c
    li         $at,4
    dmtc0      $at,$10
    dmfc0      $k1,$14
.L0000cf70:
    lw         $k0,-8($k1)
    srl        $at,$k0,0x1a
    bnez       $at, .L0000cfb0
    nop
    andi       $k0,$k0,0x3f
    xori       $k0,$k0,0x8
    beqz       $k0, .L0000d02c
    li         $at,8
    xori       $k0,$k0,0x1
    bnez       $k0, .L0000d02c
    li         $at,4
    ld         $at,-14568($zero)
    bnez       $at, .L0000d05c
    nop
    b          .L0000d02c
    li         $at,8
.L0000cfb0:
    xori       $at,$at,0x1
    bnez       $at, .L0000cfd0
    srl        $k0,$k0,0x10
    andi       $k0,$k0,0x8
    beqz       $k0, .L0000d02c
    li         $at,8
    b          .L0000d02c
    li         $at,4
.L0000cfd0:
    li         $k0,2
    bne        $k0, $at, .L0000cff0
    nop
    ld         $at,-14568($zero)
    bnez       $at, .L0000d05c
    nop
    b          .L0000d02c
    li         $at,8
.L0000cff0:
    sltiu      $k0,$at,8
    beqz       $k0, .L0000d004
    nop
    b          .L0000d02c
    li         $at,8
.L0000d004:
    ori        $at,$at,0x3
    xori       $k0,$at,0x17
    beqz       $k0, .L0000d02c
    li         $at,8
    lw         $k0,-8($k1)
    srl        $k0,$k0,0x15
    xori       $k0,$k0,0x228
    beqz       $k0, .L0000d02c
    li         $at,8
    li         $at,4
.L0000d02c:
    dmfc0      $k1,$14
    dsubu      $k1,$k1,$at
    dmtc0      $k1,$14
    lw         $k0,-14576($zero)
    addiu      $k0,$k0,1
    sw         $k0,-14576($zero)
    xori       $at,$at,0x8
    bnez       $at, .L0000d05c
    lw         $at,-14580($zero)
    addiu      $at,$at,1
    b          .L0000d05c
    sw         $at,-14580($zero)
.L0000d05c:
    j          .text
    ld         $at,-16328($zero)

glabel ecommon
    ld         $at,-16328($zero)
    sd         $ra,240($k1)
    sd         $a7,80($k1)
    sd         $a6,72($k1)
    sd         $a5,64($k1)
    sd         $a4,56($k1)
    sd         $a3,48($k1)
    sd         $a2,40($k1)
    sd         $a1,32($k1)
    sd         $a0,24($k1)
    sd         $s7,176($k1)
    sd         $s6,168($k1)
    sd         $s5,160($k1)
    sd         $s4,152($k1)
    sd         $s3,144($k1)
    sd         $s2,136($k1)
    sd         $s1,128($k1)
    sd         $s0,120($k1)
    jal        tfi_save
    sd         $at,0($k1)

glabel ecommon_allsaved
    ld         $a0,-16352($zero)
    andi       $a1,$k0,0xff
    beqz       $a0, .L0000d0e8
    nop
    andi       $t0,$k0,0x100
    lw         $s7,736($a0)
    bnez       $t0, .L0000d0e8
    nop
    jal        ktimer_switch
    nop
.L0000d0e8:
    mfc0       $a3,$13
    dmfc0      $a0,$14
    sd         $a3,280($k1)
    mfc0       $s0,$12
    sd         $a0,288($k1)
    sd         $a0,352($k1)
    dmfc0      $a0,$8
    sd         $s0,248($k1)
    andi       $a1,$a3,0x7c
    sd         $a0,272($k1)
    sll        $a2,$a1,0x1
    move       $a0,$k1
    ld         $a2,-16000($a2)
    jr         $a2
    nop

glabel softfp_adderr
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    move       $a0,$zero
    jal        cmn_err
    ld         $a1,-32408($gp)
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,16

glabel softfp_insterr
    ld         $a1,-32408($gp)
    move       $a0,$zero
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,32
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,16

glabel ioerror_dump
    daddiu     $sp,$sp,-32
    sd         $s1,8($sp)
    andi       $at,$a1,0x4
    move       $t0,$a0
    move       $t1,$a2
    sd         $s0,0($sp)
    move       $s0,$a3
    beqz       $at, .L0000d2cc
    sd         $ra,16($sp)
    ld         $a2,-32408($gp)
    daddiu     $a2,$a2,232
.L0000d19c:
    andi       $a3,$a1,0x8
    beqz       $a3, .L0000d2d8
    ld         $a3,-32408($gp)
    ld         $a3,-32408($gp)
    daddiu     $a3,$a3,248
.L0000d1b0:
    andi       $a4,$a1,0x1
    beqz       $a4, .L0000d2e0
    ld         $a4,-32408($gp)
    ld         $a4,-32408($gp)
    daddiu     $a4,$a4,256
.L0000d1c4:
    andi       $a5,$a1,0x2
    beqz       $a5, .L0000d2e8
    ld         $a5,-32408($gp)
    ld         $a5,-32408($gp)
    daddiu     $a5,$a5,264
.L0000d1d8:
    ld         $a6,-32400($gp)
    ld         $s1,-32408($gp)
    dsll       $a7,$t1,0x3
    daddiu     $a6,$a6,5944
    move       $a1,$t0
    daddu      $a6,$a6,$a7
    daddiu     $a0,$s1,64
    jal        printf
    ld         $a6,0($a6)
    lw         $a0,0($s0)
    srl        $a7,$a0,0x1f
    beqz       $a7, .L0000d224
    sll        $t0,$a0,0x1
    daddiu     $a1,$s1,112
    lh         $a2,4($s0)
    jal        printf
    daddiu     $a0,$s1,96
    lw         $a0,0($s0)
    sll        $t0,$a0,0x1
.L0000d224:
    bltz       $t0, .L0000d2f0
.L0000d228:
    sll        $t1,$a0,0x2
    bltz       $t1, .L0000d308
.L0000d230:
    sll        $t2,$a0,0x3
    bltz       $t2, .L0000d320
.L0000d238:
    sll        $t3,$a0,0x4
    bltz       $t3, .L0000d33c
.L0000d240:
    sll        $t8,$a0,0x5
    bltz       $t8, .L0000d358
.L0000d248:
    sll        $t9,$a0,0x6
    bltz       $t9, .L0000d374
.L0000d250:
    sll        $ra,$a0,0x7
    bltz       $ra, .L0000d38c
.L0000d258:
    sll        $at,$a0,0x8
    bltz       $at, .L0000d3a4
.L0000d260:
    sll        $v0,$a0,0x9
    bltz       $v0, .L0000d3bc
.L0000d268:
    sll        $v1,$a0,0xa
    bltz       $v1, .L0000d3d8
.L0000d270:
    sll        $a1,$a0,0xb
    bltz       $a1, .L0000d3f4
.L0000d278:
    sll        $a2,$a0,0xc
    bltz       $a2, .L0000d410
.L0000d280:
    sll        $a3,$a0,0xd
    bltz       $a3, .L0000d42c
    ld         $a1,-32408($gp)
    lh         $a1,10($s0)
.L0000d290:
    ld         $a2,-32392($gp)
    dsll       $a3,$a1,0x4
    daddu      $a2,$a2,$a3
    ld         $a2,8($a2)
    daddiu     $a0,$s1,208
    jal        printf
    ld         $a2,1608($a2)
    ld         $a0,-32408($gp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jal        printf
    daddiu     $a0,$a0,328
    ld         $ra,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000d2cc:
    ld         $a2,-32408($gp)
    b          .L0000d19c
    daddiu     $a2,$a2,240
.L0000d2d8:
    b          .L0000d1b0
    daddiu     $a3,$a3,240
.L0000d2e0:
    b          .L0000d1c4
    daddiu     $a4,$a4,240
.L0000d2e8:
    b          .L0000d1d8
    daddiu     $a5,$a5,240
.L0000d2f0:
    daddiu     $a1,$s1,128
    lh         $a2,6($s0)
    jal        printf
    daddiu     $a0,$s1,96
    b          .L0000d228
    lw         $a0,0($s0)
.L0000d308:
    daddiu     $a1,$s1,144
    lh         $a2,8($s0)
    jal        printf
    daddiu     $a0,$s1,96
    b          .L0000d230
    lw         $a0,0($s0)
.L0000d320:
    ld         $a1,-32408($gp)
    daddiu     $a0,$s1,96
    lh         $a2,10($s0)
    jal        printf
    daddiu     $a1,$a1,272
    b          .L0000d238
    lw         $a0,0($s0)
.L0000d33c:
    ld         $a1,-32408($gp)
    daddiu     $a0,$s1,96
    lh         $a2,12($s0)
    jal        printf
    daddiu     $a1,$a1,280
    b          .L0000d240
    lw         $a0,0($s0)
.L0000d358:
    ld         $a1,-32408($gp)
    daddiu     $a0,$s1,96
    lh         $a2,14($s0)
    jal        printf
    daddiu     $a1,$a1,288
    b          .L0000d248
    lw         $a0,0($s0)
.L0000d374:
    daddiu     $a1,$s1,160
    ld         $a2,16($s0)
    jal        printf
    daddiu     $a0,$s1,96
    b          .L0000d250
    lw         $a0,0($s0)
.L0000d38c:
    daddiu     $a1,$s1,176
    ld         $a2,24($s0)
    jal        printf
    daddiu     $a0,$s1,96
    b          .L0000d258
    lw         $a0,0($s0)
.L0000d3a4:
    daddiu     $a1,$s1,192
    ld         $a2,32($s0)
    jal        printf
    daddiu     $a0,$s1,96
    b          .L0000d260
    lw         $a0,0($s0)
.L0000d3bc:
    ld         $a1,-32408($gp)
    daddiu     $a0,$s1,96
    ld         $a2,40($s0)
    jal        printf
    daddiu     $a1,$a1,296
    b          .L0000d268
    lw         $a0,0($s0)
.L0000d3d8:
    ld         $a1,-32408($gp)
    daddiu     $a0,$s1,96
    ld         $a2,48($s0)
    jal        printf
    daddiu     $a1,$a1,304
    b          .L0000d270
    lw         $a0,0($s0)
.L0000d3f4:
    ld         $a1,-32408($gp)
    daddiu     $a0,$s1,96
    ld         $a2,56($s0)
    jal        printf
    daddiu     $a1,$a1,312
    b          .L0000d278
    lw         $a0,0($s0)
.L0000d410:
    ld         $a1,-32408($gp)
    daddiu     $a0,$s1,96
    ld         $a2,64($s0)
    jal        printf
    daddiu     $a1,$a1,320
    b          .L0000d280
    lw         $a0,0($s0)
.L0000d42c:
    daddiu     $a0,$s1,96
    ld         $a2,72($s0)
    jal        printf
    daddiu     $a1,$a1,324
    b          .L0000d290
    lh         $a1,10($s0)

glabel error_mark_page
    ld         $a1,-32408($gp)
    li         $a0,5
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,336
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel error_reclaim_page
    ld         $a1,-32408($gp)
    li         $a0,5
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,368
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    daddiu     $sp,$sp,16

glabel _hook_exceptions
    lh         $at,0($gp)
    daddiu     $sp,$sp,-48
    ld         $a6,-32368($gp)
    sd         $s2,8($sp)
    li         $a5,1
    blez       $at, .L0000d4b8
    lw         $a4,0($a6)
    lw         $v0,0($gp)
    addiu      $v0,$v0,1
    sw         $v0,0($gp)
.L0000d4b8:
    ld         $s2,-32384($gp)
    ld         $a1,-32376($gp)
    sd         $ra,32($sp)
    lui        $a2,0xa000
    sltu       $v1,$a1,$s2
    sd         $s0,24($sp)
    move       $s0,$a2
    dsubu      $a3,$s2,$a1
    beqz       $v1, .L0000d514
    sw         $a3,0($gp)
    move       $s0,$a2
.L0000d4e4:
    daddiu     $a1,$a1,4
    sltu       $a0,$a1,$s2
    daddiu     $s0,$s0,4
    lw         $a7,-4($a1)
    sw         $a7,-4($s0)
    beqz       $a0, .L0000d514
    daddiu     $a1,$a1,4
    sltu       $t1,$a1,$s2
    daddiu     $s0,$s0,4
    lw         $t0,-4($a1)
    bnez       $t1, .L0000d4e4
    sw         $t0,-4($s0)
.L0000d514:
    lw         $t2,0($gp)
    beqz       $t2, .L0000d528
    nop
    sw         $a4,0($a2)
    sw         $a5,0($gp)
.L0000d528:
    ld         $a4,-32360($gp)
    ld         $a2,-32352($gp)
    sll        $a1,$a3,0x0
    dsubu      $t3,$a2,$a4
    ld         $a6,-32368($gp)
    daddu      $t3,$a1,$t3
    sd         $s1,16($sp)
    slti       $t3,$t3,129
    ld         $s1,-32344($gp)
    beqz       $t3, .L0000d560
    sd         $s3,0($sp)
    move       $s1,$a2
    b          .L0000d564
    move       $s3,$a4
.L0000d560:
    ld         $s3,-32336($gp)
.L0000d564:
    dsubu      $t8,$s1,$s3
    daddu      $t8,$a1,$t8
    slti       $t8,$t8,129
    beqz       $t8, .L0000d704
    ld         $a0,-32328($gp)
.L0000d578:
    sltu       $a4,$s3,$s1
    move       $a1,$s3
    beqz       $a4, .L0000d5b4
    lw         $a5,0($a6)
.L0000d588:
    daddiu     $a1,$a1,4
    sltu       $t9,$a1,$s1
    lw         $ra,-4($a1)
    sw         $ra,0($s0)
    beqz       $t9, .L0000d5b4
    daddiu     $a1,$a1,4
    sltu       $v0,$a1,$s1
    daddiu     $s0,$s0,8
    lw         $at,-4($a1)
    bnez       $v0, .L0000d588
    sw         $at,-4($s0)
.L0000d5b4:
    lui        $a3,0xa000
    lw         $a1,0($gp)
    ori        $a3,$a3,0x80
    move       $a2,$a3
    blez       $a1, .L0000d600
    dsubu      $a1,$s2,$a1
    move       $a2,$a3
.L0000d5d0:
    daddiu     $a1,$a1,4
    sltu       $a7,$a1,$s2
    daddiu     $a2,$a2,4
    lw         $t0,-4($a1)
    sw         $t0,-4($a2)
    beqz       $a7, .L0000d600
    daddiu     $a1,$a1,4
    sltu       $t2,$a1,$s2
    daddiu     $a2,$a2,4
    lw         $t1,-4($a1)
    bnez       $t2, .L0000d5d0
    sw         $t1,-4($a2)
.L0000d600:
    lw         $t3,0($gp)
    beqz       $t3, .L0000d610
    ld         $s2,8($sp)
    sw         $a5,0($a3)
.L0000d610:
    beqz       $a4, .L0000d644
    move       $a1,$s3
.L0000d618:
    daddiu     $a1,$a1,4
    sltu       $t8,$a1,$s1
    lw         $t9,-4($a1)
    sw         $t9,0($a2)
    beqz       $t8, .L0000d644
    daddiu     $a1,$a1,4
    sltu       $at,$a1,$s1
    daddiu     $a2,$a2,8
    lw         $ra,-4($a1)
    bnez       $at, .L0000d618
    sw         $ra,-4($a2)
.L0000d644:
    ld         $a3,-32320($gp)
    ld         $a1,-32312($gp)
    ld         $s1,16($sp)
    sltu       $t8,$a1,$a3
    ld         $a2,-32304($gp)
    lui        $a4,0xa000
    ld         $a5,-32296($gp)
    beqz       $t8, .L0000d694
    ori        $s0,$a4,0x100
.L0000d668:
    daddiu     $a1,$a1,4
    sltu       $t9,$a1,$a3
    lw         $ra,-4($a1)
    sw         $ra,0($s0)
    beqz       $t9, .L0000d694
    daddiu     $a1,$a1,4
    sltu       $v0,$a1,$a3
    daddiu     $s0,$s0,8
    lw         $at,-4($a1)
    bnez       $v0, .L0000d668
    sw         $at,-4($s0)
.L0000d694:
    sltu       $v1,$a5,$a2
    beqz       $v1, .L0000d6d8
    ld         $s0,24($sp)
    move       $a1,$a5
    ori        $s0,$a4,0x180
.L0000d6a8:
    daddiu     $a1,$a1,4
    sltu       $a0,$a1,$a2
    lw         $a3,-4($a1)
    sw         $a3,0($s0)
    beqz       $a0, .L0000d6d4
    daddiu     $a1,$a1,4
    sltu       $a5,$a1,$a2
    daddiu     $s0,$s0,8
    lw         $a4,-4($a1)
    bnez       $a5, .L0000d6a8
    sw         $a4,-4($s0)
.L0000d6d4:
    ld         $s0,24($sp)
.L0000d6d8:
    ld         $s3,0($sp)
    ld         $t1,-32512($gp)
    ld         $a7,-32504($gp)
    li         $t0,-16384
    sd         $t0,0($t1)
    li         $a6,-15160
    jal        flush_cache
    sd         $a6,0($a7)
    ld         $ra,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000d704:
    li         $a2,414
    jal        assfail
    daddiu     $a1,$a0,96
    b          .L0000d578
    ld         $a6,-32368($gp)

glabel sw_cachesynch_patch
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        get_cpu_irr
    nop
    srl        $at,$v0,0x8
    li         $v0,4
    andi       $at,$at,0xff
    bne        $at, $v0, .L0000d77c
    ld         $ra,0($sp)
    ld         $a3,-32288($gp)
    ld         $v0,0($a3)
    ld         $a2,-32280($gp)
    beqz       $v0, .L0000d77c
    move       $a1,$v0
.L0000d750:
    lw         $v1,0($a2)
    sw         $v1,0($a1)
    ld         $a1,8($a3)
    beqz       $a1, .L0000d77c
    nop
    lw         $a0,4($a2)
    sw         $a0,0($a1)
    ld         $a1,16($a3)
    daddiu     $a2,$a2,8
    bnez       $a1, .L0000d750
    daddiu     $a3,$a3,16
.L0000d77c:
    jr         $ra
    daddiu     $sp,$sp,16

glabel _j_exceptnorm
    ld         $k0,-16384($zero)
    nop
    jr         $k0
    nop

glabel _j_exceptnorm_nosymmon
    j          exception
    nop

glabel utlbmiss_prolog_up
    dmfc0      $k0,$20
    nop
    dsra       $k0,$k0,0x6

glabel utlbmiss_prolog_mp
    b          .L0000d818
    dmfc0      $k0,$20
    jr         $k1
.L0000d818:
    dsra       $k0,$k0,0x6

glabel utlbmiss
    dsll       $k0,$k0,0x4
    li         $k1,3
    dsll32     $k1,$k1,0x1e
    or         $k0,$k0,$k1

glabel utlbmiss_not_large_page
.L0000d890:
    ld         $k1,0($k0)
    ld         $k0,8($k0)
    mtc0       $k1,$2
    mtc0       $k0,$3
    tlbwr
    eret

glabel lpg_utlbmiss
    dsll       $k0,$k0,0x4
    li         $k1,3
    dsll32     $k1,$k1,0x1e
    or         $k0,$k0,$k1
    ld         $k1,0($k0)
    dsrl32     $k1,$k1,0x19
    andi       $k1,$k1,0xf
    beqz       $k1, .L0000d890
    nop
    sd         $at,-16328($zero)
    li         $at,1
    sllv       $at,$at,$k1
    addi       $at,$at,-1
    sll        $at,$at,0xd
    mtc0       $at,$5
    srl        $k1,$at,0xf
    addi       $k1,$k1,1
    or         $at,$zero,$k1
    sll        $at,$at,0x4
    addi       $at,$at,-1
    nor        $at,$zero,$at
    and        $k0,$k0,$at
    sll        $k1,$k1,0x3
    ld         $at,0($k0)
    mtc0       $at,$2
    dadd       $k0,$k0,$k1
    ld         $at,0($k0)
    mtc0       $at,$3
    tlbwr
    nop
    li         $k1,24576
    mtc0       $k1,$5
    ld         $at,-16328($zero)
    eret

glabel utlbmiss2
    dsll       $k0,$k0,0x4
    li         $k1,3
    dsll32     $k1,$k1,0x1e
    or         $k0,$k0,$k1

glabel utlbmiss2_not_large_page
.L0000d990:
    ld         $k1,0($k0)
    ld         $k0,8($k0)
    mtc0       $k1,$2
    mtc0       $k0,$3
    xori       $k1,$k1,0x100
    beqz       $k1, .L0000d9bc
    xori       $k0,$k0,0x100
    beqz       $k0, .L0000da20
    dmfc0      $k1,$20
    tlbwr
    eret

glabel utlbmiss_sharedseg1a
.L0000d9bc:
    dmfc0      $k1,$20

glabel utlbmiss_sharedseg1
    bnez       $k0, .L0000d9f8
    lui        $k0,0x2000
    dsra       $k1,$k1,0x6
    dsll       $k1,$k1,0x4
    dsubu      $k1,$k1,$k0
    li         $k0,3
    dsll32     $k0,$k0,0x1e
    or         $k1,$k1,$k0
    ld         $k0,0($k1)
    ld         $k1,8($k1)
    mtc0       $k0,$2
    mtc0       $k1,$3
    tlbwr
    eret
.L0000d9f8:
    dsra       $k1,$k1,0x6
    dsll       $k1,$k1,0x4
    dsubu      $k1,$k1,$k0
    li         $k0,3
    dsll32     $k0,$k0,0x1e
    or         $k1,$k1,$k0
    ld         $k0,0($k1)
    mtc0       $k0,$2
    tlbwr
    eret

glabel utlbmiss_sharedseg2a
.L0000da20:
    lui        $k0,0x2000

glabel utlbmiss_sharedseg2
    dsra       $k1,$k1,0x6
    dsll       $k1,$k1,0x4
    dsubu      $k1,$k1,$k0
    li         $k0,3
    dsll32     $k0,$k0,0x1e
    or         $k1,$k1,$k0
    ld         $k1,8($k1)
    mtc0       $k1,$3
    tlbwr
    eret

glabel lpg_overlay_utlbmiss
    dsll       $k0,$k0,0x4
    li         $k1,3
    dsll32     $k1,$k1,0x1e
    or         $k0,$k0,$k1
    ld         $k1,0($k0)
    dsrl32     $k1,$k1,0x19
    andi       $k1,$k1,0xf
    beqz       $k1, .L0000d990
    nop
    sd         $at,-16328($zero)
    li         $at,1
    sllv       $at,$at,$k1
    addi       $at,$at,-1
    sll        $at,$at,0xd
    mtc0       $at,$5
    srl        $k1,$at,0xf
    addi       $k1,$k1,1
    or         $at,$zero,$k1
    sll        $at,$at,0x4
    addi       $at,$at,-1
    nor        $at,$zero,$at
    and        $k0,$k0,$at
    sll        $k1,$k1,0x3
    ld         $at,0($k0)
    mtc0       $at,$2
    dadd       $k0,$k0,$k1
    ld         $at,0($k0)
    mtc0       $at,$3
    tlbwr
    nop
    li         $k1,24576
    mtc0       $k1,$5
    ld         $at,-16328($zero)
    eret

glabel utlbmiss1
    mfc0       $k1,$12
    andi       $k1,$k1,0x10
    beqz       $k1, .L0000daf0
    lw         $k1,-15172($zero)
    addi       $k1,$k1,1
    j          utlbmiss
    sw         $k1,-15172($zero)
.L0000daf0:
    lw         $k1,-15168($zero)
    addi       $k1,$k1,1
    j          utlbmiss
    sw         $k1,-15168($zero)

glabel lpg_counting_utlbmiss
    dmfc0      $k1,$12
    andi       $k1,$k1,0x10
    beqz       $k1, .L0000db1c
    lw         $k1,-15172($zero)
    addi       $k1,$k1,1
    j          lpg_utlbmiss
    sw         $k1,-15172($zero)
.L0000db1c:
    lw         $k1,-15168($zero)
    addi       $k1,$k1,1
    j          lpg_utlbmiss
    sw         $k1,-15168($zero)

glabel utlbmiss3
    dmfc0      $k1,$12
    andi       $k1,$k1,0x10
    beqz       $k1, .L0000db48
    lw         $k1,-15172($zero)
    addi       $k1,$k1,1
    j          utlbmiss2
    sw         $k1,-15172($zero)
.L0000db48:
    lw         $k1,-15168($zero)
    addi       $k1,$k1,1
    j          utlbmiss2
    sw         $k1,-15168($zero)

glabel lpg_overlay_counting_utlbmiss
    dmfc0      $k1,$12
    andi       $k1,$k1,0x10
    beqz       $k1, .L0000db74
    lw         $k1,-15172($zero)
    addi       $k1,$k1,1
    j          lpg_overlay_utlbmiss
    sw         $k1,-15172($zero)
.L0000db74:
    lw         $k1,-15168($zero)
    addi       $k1,$k1,1
    j          lpg_overlay_utlbmiss
    sw         $k1,-15168($zero)

glabel utlbmiss_prolog_patch
    ld         $k1,-15160($zero)

glabel utlbmissj
    j          utlbmiss
    nop

glabel _ecc_errorvec
    mtc0       $k1,$17
    dsrl32     $k1,$k1,0x0
    dsll       $k1,$k1,0x3
    mtc0       $k1,$18
    dsrl32     $k1,$k1,0x0
    mtc0       $k1,$19
    lui        $k1,0xaff5
    ld         $k1,0($k1)
    dsll       $k1,$k1,0x3
    ld         $k1,4080($k1)
    sd         $k0,200($k1)
    sd         $at,0($k1)
    lui        $k0,0x0
    daddiu     $k0,$k0,0
    dsll       $k0,$k0,0x10
    daddiu     $k0,$k0,0
    dsll       $k0,$k0,0x10
    daddiu     $k0,$k0,0
    li         $at,-1
    dsrl       $at,$at,0x18
    and        $k0,$k0,$at
    li         $at,9
    dsll32     $at,$at,0x1c
    or         $k0,$k0,$at
    jr         $k0
    nop

glabel _ecc_end
    lui        $v0,0xaff0
    sll        $v1,$a0,0x2
    ori        $v0,$v0,0x20
    daddu      $v0,$v0,$v1
    jr         $ra
    lw         $v0,0($v0)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        .text
    nop
    ld         $ra,0($sp)
    daddiu     $sp,$sp,16
    andi       $v0,$v0,0x1ff
    jr         $ra
    dsll       $v0,$v0,0x19
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        .text
    nop
    lui        $a3,0x8000
    srl        $a2,$v0,0x10
    and        $a3,$v0,$a3
    move       $v0,$zero
    andi       $a2,$a2,0x3f
    ld         $ra,0($sp)
    beqz       $a3, .L0000dc90
    addiu      $a2,$a2,1
    sll        $v0,$a2,0x19
.L0000dc88:
    jr         $ra
    daddiu     $sp,$sp,16
.L0000dc90:
    b          .L0000dc88
    nop
    lui        $at,0x2000
    daddiu     $sp,$sp,-32
    sltu       $at,$a0,$at
    lui        $v0,0xe000
    sd         $s2,8($sp)
    move       $s2,$a0
    bnez       $at, .L0000dcbc
    sd         $s0,0($sp)
    daddu      $s2,$a0,$v0
.L0000dcbc:
    sd         $s1,24($sp)
    move       $s0,$zero
    b          .L0000dcdc
    sd         $ra,16($sp)
.L0000dccc:
    addiu      $s0,$s0,1
    slti       $v0,$s0,4
    beqz       $v0, .L0000dd1c
    nop
.L0000dcdc:
    jal        .text
    move       $a0,$s0
    beqz       $v0, .L0000dccc
    move       $s1,$v0
    jal        .text
    move       $a0,$s0
    sltu       $a2,$s2,$v0
    dsll32     $a0,$s1,0x0
    dsrl32     $a0,$a0,0x0
    bnez       $a2, .L0000dccc
    daddu      $a0,$a0,$v0
    sltu       $a1,$s2,$a0
    beqz       $a1, .L0000dccc
    nop
    b          .L0000dd24
    ld         $ra,16($sp)
.L0000dd1c:
    li         $s0,-1
    ld         $ra,16($sp)
.L0000dd24:
    ld         $s1,24($sp)
    move       $v0,$s0
    ld         $s0,0($sp)
    ld         $s2,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel szmem
    daddiu     $sp,$sp,-32
    ld         $at,-32536($gp)
    sd         $s1,8($sp)
    sd         $s2,0($sp)
    move       $s2,$a1
    sd         $s0,24($sp)
    beqz       $at, .L0000dd68
    sll        $v0,$at,0x0
.L0000dd5c:
    ld         $s2,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000dd68:
    move       $s0,$zero
    move       $s1,$zero
    sd         $ra,16($sp)
.L0000dd74:
    jal        .text
    move       $a0,$s0
    addiu      $s0,$s0,1
    dsll32     $v0,$v0,0x0
    slti       $v1,$s0,4
    dsrl32     $v0,$v0,0x0
    bnez       $v1, .L0000dd74
    daddu      $s1,$v0,$s1
    ld         $s0,24($sp)
    lui        $a3,0x2000
    beqz       $s2, .L0000ddd4
    dsrl       $a0,$s1,0xe
    dsll32     $a1,$s2,0x0
    dsrl32     $a1,$a1,0x0
    slt        $v1,$a0,$a1
    movz       $a0,$a1,$v1
    sd         $a0,-32536($gp)
.L0000ddb8:
    ld         $ra,16($sp)
    sll        $v0,$a0,0x0
    ld         $s1,8($sp)
    dsll       $a2,$a0,0xe
    daddu      $a2,$a2,$a3
    b          .L0000dd5c
    sd         $a2,-32528($gp)
.L0000ddd4:
    b          .L0000ddb8
    sd         $a0,-32536($gp)

glabel is_in_main_memory
    lui        $a4,0x2000
    ld         $a3,-32528($gp)
    sltu       $a4,$a0,$a4
    sltiu      $v0,$a0,16384
    bnez       $a4, .L0000ddfc
    sltu       $a3,$a0,$a3
    bnez       $a3, .L0000de04
    nop
.L0000ddfc:
    beqz       $v0, .L0000de0c
    move       $v0,$zero
.L0000de04:
    jr         $ra
    li         $v0,1
.L0000de0c:
    jr         $ra
    nop

glabel block_is_in_main_memory
    daddiu     $sp,$sp,-32
    sd         $a0,0($sp)
    sd         $ra,16($sp)
    jal        is_in_main_memory
    sd         $a1,8($sp)
    beqz       $v0, .L0000de50
    ld         $a1,8($sp)
    ld         $a0,0($sp)
    daddu      $a0,$a0,$a1
    jal        is_in_main_memory
    daddiu     $a0,$a0,-1
    beqz       $v0, .L0000de54
    move       $v0,$zero
    b          .L0000de54
    li         $v0,1
.L0000de50:
    move       $v0,$zero
.L0000de54:
    ld         $ra,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel is_in_pfdat
    lwu        $at,0($gp)
    dsrl       $at,$at,0xe
    slt        $at,$a0,$at
    ld         $v0,-32536($gp)
    bnez       $at, .L0000de88
    li         $a3,0x8000
    daddu      $v1,$v0,$a3
    sltu       $v1,$a0,$v1
    bnez       $v1, .L0000de8c
    li         $v0,1
.L0000de88:
    move       $v0,$zero
.L0000de8c:
    jr         $ra
    nop

glabel clean_icache
    ld         $a5,-32496($gp)
    daddiu     $sp,$sp,-16
    li         $a6,1
    beqz       $a1, .L0000df00
    sd         $ra,0($sp)
    andi       $t0,$a0,0x3fff
    andi       $t3,$a3,0x100
    sltu       $t2,$a0,$a5
    dsll32     $t8,$a2,0x0
    li         $t1,-11
    beqz       $t3, .L0000dedc
    dsrl       $a7,$t8,0x12
    li         $at,-11
    dsll32     $at,$at,0x1b
    sltu       $at,$a0,$at
    bnez       $at, .L0000dee0
    dsll32     $v0,$a6,0x8
    bnez       $t2, .L0000df18
.L0000dedc:
    dsll32     $v0,$a6,0x8
.L0000dee0:
    sltu       $v0,$a0,$v0
    dsll32     $a5,$t1,0x1b
    bnez       $v0, .L0000def4
    or         $t2,$t0,$a7
    beqz       $t3, .L0000df0c
.L0000def4:
    or         $a3,$t2,$a5
.L0000def8:
    jal        __icache_inval
    move       $a0,$a3
.L0000df00:
    ld         $ra,0($sp)
.L0000df04:
    jr         $ra
    daddiu     $sp,$sp,16
.L0000df0c:
    move       $a3,$a0
    b          .L0000def8
    nop
.L0000df18:
    jal        __cache_wb_inval
    nop
    b          .L0000df04
    ld         $ra,0($sp)

glabel clean_dcache
    li         $a6,-11
    ld         $a5,-32496($gp)
    daddiu     $sp,$sp,-32
    li         $a7,1
    beqz       $a1, .L0000dfdc
    sd         $ra,16($sp)
    sltu       $t2,$a0,$a5
    andi       $t0,$a0,0x3fff
    dsll32     $t8,$a6,0x1b
    dsll32     $t1,$a2,0x0
    andi       $t3,$a3,0x100
    sd         $t3,8($sp)
    andi       $ra,$a3,0x2
    sd         $t1,0($sp)
    dsrl       $t1,$t1,0x12
    move       $a5,$a0
    beqz       $t3, .L0000df88
    ld         $v0,8($sp)
    li         $t9,-11
    dsll32     $t9,$t9,0x1b
    sltu       $t9,$a0,$t9
    bnez       $t9, .L0000df8c
    dsll32     $at,$a7,0x8
    bnez       $t2, .L0000dfe8
.L0000df88:
    dsll32     $at,$a7,0x8
.L0000df8c:
    sltu       $at,$a0,$at
    li         $t3,3
    andi       $t2,$a3,0x3
    bnez       $at, .L0000dfa8
    or         $t9,$t0,$t1
    beqz       $v0, .L0000dfac
    nop
.L0000dfa8:
    or         $a5,$t9,$t8
.L0000dfac:
    beq        $t2, $t3, .L0000dff8
    andi       $v1,$a3,0x1
    beqz       $v1, .L0000dfcc
    nop
    jal        __dcache_inval
    move       $a0,$a5
    b          .L0000dfe0
    ld         $ra,16($sp)
.L0000dfcc:
    beqz       $ra, .L0000dfe0
    ld         $ra,16($sp)
    jal        __dcache_wb
    move       $a0,$a5
.L0000dfdc:
    ld         $ra,16($sp)
.L0000dfe0:
    jr         $ra
    daddiu     $sp,$sp,32
.L0000dfe8:
    jal        __cache_wb_inval
    nop
    b          .L0000dfe0
    ld         $ra,16($sp)
.L0000dff8:
    jal        __dcache_wb_inval
    move       $a0,$a5
    b          .L0000dfe0
    ld         $ra,16($sp)

glabel sync_dcaches_excl
    daddiu     $sp,$sp,-64
    sd         $s0,40($sp)
    sd         $s1,16($sp)
    ld         $at,-16352($zero)
    li         $v1,2
    sd         $s5,24($sp)
    move       $s5,$a0
    move       $s1,$a1
    sd         $s7,32($sp)
    move       $s7,$a2
    beqz       $at, .L0000e044
    sd         $ra,48($sp)
    lbu        $v0,-16305($zero)
    beq        $v0, $v1, .L0000e114
    nop
.L0000e044:
    jal        splhi
    nop
    sw         $v0,8($sp)
.L0000e050:
    dsll32     $t8,$s7,0x0
    li         $t9,-3
    dsll32     $t9,$t9,0x1d
    dsrl       $t8,$t8,0x12
    andi       $s0,$s5,0x3fff
    or         $t8,$t8,$t9
    move       $a1,$s1
    daddu      $s0,$s0,$t8
    jal        __dcache_wb_inval
    move       $a0,$s0
    li         $a5,2
    beqz       $s1, .L0000e0c8
    ld         $a1,-16352($zero)
    move       $a2,$zero
    addiu      $a0,$s1,-1
.L0000e08c:
    daddu      $ra,$a2,$s0
    addiu      $a2,$a2,128
    sltu       $t9,$a0,$a2
    lbu        $ra,0($ra)
    bnez       $t9, .L0000e0c8
    daddu      $v0,$a2,$s0
    addiu      $a2,$a2,128
    sltu       $at,$a0,$a2
    lbu        $v0,0($v0)
    bnez       $at, .L0000e0c8
    daddu      $v1,$a2,$s0
    addiu      $a2,$a2,128
    sltu       $a3,$a0,$a2
    beqz       $a3, .L0000e08c
    lbu        $v1,0($v1)
.L0000e0c8:
    beqz       $a1, .L0000e0dc
    nop
    lbu        $a4,-16305($zero)
    beq        $a4, $a5, .L0000e104
    nop
.L0000e0dc:
    jal        splx
    lw         $a0,8($sp)
    ld         $s0,40($sp)
.L0000e0e8:
    ld         $ra,48($sp)
    ld         $s1,16($sp)
    li         $v0,1
    ld         $s5,24($sp)
    ld         $s7,32($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L0000e104:
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L0000e0e8
    ld         $s0,40($sp)
.L0000e114:
    jal        rt_pin_thread
    nop
    b          .L0000e050
    sd         $v0,0($sp)

glabel sync_dcaches
    daddiu     $sp,$sp,-64
    sd         $s1,40($sp)
    move       $s1,$a1
    sd         $s2,24($sp)
    move       $s2,$a2
    sd         $s3,16($sp)
    dsll32     $at,$a3,0xf
    move       $s3,$a3
    sd         $s0,32($sp)
    li         $s0,-4
    sd         $ra,48($sp)
    bgez       $at, .L0000e168
    and        $s0,$a0,$s0
    jal        sync_dcaches_excl
    move       $a0,$s0
    b          .L0000e230
    move       $a0,$v0
.L0000e168:
    ld         $t8,-16352($zero)
    beqz       $t8, .L0000e180
    li         $ra,2
    lbu        $t9,-16305($zero)
    beq        $t9, $ra, .L0000e250
    nop
.L0000e180:
    jal        splhi
    nop
    sw         $v0,8($sp)
.L0000e18c:
    li         $at,1
    dsll32     $at,$at,0x8
    sltu       $at,$s0,$at
    li         $a0,-11
    dsll32     $a6,$s2,0x0
    ld         $a1,-16352($zero)
    andi       $a2,$s3,0x100
    bnez       $at, .L0000e1b4
    dsrl       $v0,$a6,0x12
    beqz       $a2, .L0000e260
.L0000e1b4:
    dsll32     $a4,$a0,0x1b
    andi       $a3,$s0,0x3fff
    or         $a4,$v0,$a4
    daddu      $a3,$a3,$a4
.L0000e1c4:
    beqz       $s1, .L0000e200
    move       $v0,$zero
    addiu      $a0,$s1,-1
.L0000e1d0:
    daddu      $a6,$v0,$a3
    addiu      $v0,$v0,128
    sltu       $a5,$a0,$v0
    lbu        $a7,0($a6)
    pref       0x0,256($a6)
    bnez       $a5, .L0000e200
    daddu      $t0,$v0,$a3
    addiu      $v0,$v0,128
    sltu       $t1,$a0,$v0
    pref       0x0,256($t0)
    beqz       $t1, .L0000e1d0
    lbu        $t0,0($t0)
.L0000e200:
    beqz       $a1, .L0000e224
    li         $t3,2
    lbu        $t2,-16305($zero)
    bne        $t2, $t3, .L0000e224
    nop
    jal        rt_unpin_thread
    ld         $a0,0($sp)
    b          .L0000e230
    move       $a0,$zero
.L0000e224:
    jal        splx
    lw         $a0,8($sp)
    move       $a0,$zero
.L0000e230:
    ld         $s3,16($sp)
    ld         $ra,48($sp)
    ld         $s2,24($sp)
    move       $v0,$a0
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L0000e250:
    jal        rt_pin_thread
    nop
    b          .L0000e18c
    sd         $v0,0($sp)
.L0000e260:
    move       $a3,$s0
    b          .L0000e1c4
    nop

glabel __heart_invalidate_war
    daddiu     $sp,$sp,-32
    li         $at,-11
    sd         $s1,0($sp)
    dsll32     $at,$at,0x1b
    ld         $a3,-32496($gp)
    sltu       $at,$a0,$at
    move       $a4,$a0
    move       $s1,$a1
    sd         $s0,8($sp)
    sd         $ra,16($sp)
    bnez       $at, .L0000e32c
    sltu       $a3,$a0,$a3
    beqz       $a3, .L0000e32c
    li         $s0,-1
    li         $t8,-3
    dsrl       $s0,$s0,0x18
    dsll32     $t8,$t8,0x1d
    and        $s0,$a0,$s0
    or         $s0,$s0,$t8
    jal        __dcache_inval
    move       $a0,$s0
    lw         $t8,0($gp)
    li         $t9,1
    move       $a3,$zero
    beq        $t8, $t9, .L0000e318
    addiu      $a0,$s1,-1
    beqz       $s1, .L0000e31c
    ld         $ra,16($sp)
.L0000e2dc:
    daddu      $at,$a3,$s0
    addiu      $a3,$a3,128
    sltu       $ra,$a0,$a3
    lbu        $at,0($at)
    bnez       $ra, .L0000e318
    daddu      $v1,$a3,$s0
    addiu      $a3,$a3,128
    sltu       $v0,$a0,$a3
    lbu        $v1,0($v1)
    bnez       $v0, .L0000e318
    daddu      $a1,$a3,$s0
    addiu      $a3,$a3,128
    sltu       $a2,$a0,$a3
    beqz       $a2, .L0000e2dc
    lbu        $a1,0($a1)
.L0000e318:
    ld         $ra,16($sp)
.L0000e31c:
    ld         $s0,8($sp)
    ld         $s1,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000e32c:
    move       $a0,$a4
    move       $a1,$s1
    lui        $a2,0x4
    jal        cache_operation
    ori        $a2,$a2,0x8001
    b          .L0000e31c
    ld         $ra,16($sp)

glabel pmem_getfirstclick
    jr         $ra
    li         $v0,0x8000

glabel node_getfirstfree
    jr         $ra
    li         $v0,0x8000

glabel node_getmaxclick
    ld         $v0,-32536($gp)
    daddiu     $v0,$v0,32767
    jr         $ra
    sll        $v0,$v0,0x0

glabel setupbadmem
    daddiu     $sp,$sp,-32
    sd         $s0,16($sp)
    move       $a0,$zero
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        .text
    move       $s8,$a2
    dsll32     $a1,$s8,0x0
    li         $a4,0x8000
    lui        $a6,0x40
    dsll32     $a2,$v0,0x0
    ld         $a5,0($gp)
    lui        $at,0x4000
    dsrl32     $a2,$a2,0x0
    lui        $a7,0x80
    li         $a3,0xffff
    sd         $s1,24($sp)
    bne        $a2, $at, .L0000e3c8
    move       $t0,$a5
    ori        $a4,$a6,0x14
    daddu      $a4,$a4,$a5
    li         $s0,1
    b          .L0000e3ec
    sh         $a3,0($a4)
.L0000e3c8:
    ori        $t1,$a7,0x14
    dsll       $a5,$a4,0x10
    li         $s0,1
    bne        $a2, $a5, .L0000e3e8
    li         $a6,0xffff
    daddu      $t1,$t1,$t0
    b          .L0000e3ec
    sh         $a6,0($t1)
.L0000e3e8:
    move       $s0,$zero
.L0000e3ec:
    lw         $a2,0($gp)
    dsrl       $s1,$a1,0x12
    li         $v0,1
    beqz       $a2, .L0000e464
    dsll32     $t2,$v0,0x0
    sltu       $t2,$s1,$t2
    bnez       $t2, .L0000e464
    slti       $t3,$a2,2
    beqz       $t3, .L0000e480
    addiu      $s0,$s0,1
    li         $t9,1
.L0000e418:
    ld         $s8,0($gp)
    lui        $t8,0xff
    dsll32     $t9,$t9,0x1
    ori        $t8,$t8,0xffd4
    sltu       $t9,$s1,$t9
    ld         $a1,-32272($gp)
    daddu      $t8,$t8,$s8
    li         $s8,0xffff
    bnez       $t9, .L0000e464
    sh         $s8,0($t8)
    lw         $ra,0($gp)
    slti       $ra,$ra,2
    beqz       $ra, .L0000e498
    addiu      $s0,$s0,1
    ld         $v0,0($gp)
.L0000e454:
    lui        $at,0x1ff
    ori        $at,$at,0xffd4
    daddu      $at,$at,$v0
    sh         $s8,0($at)
.L0000e464:
    ld         $ra,0($sp)
    ld         $s1,24($sp)
    ld         $s8,8($sp)
    move       $v0,$s0
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000e480:
    ld         $a1,-32272($gp)
    li         $a0,5
    jal        cmn_err
    ld         $a2,-32488($gp)
    b          .L0000e418
    li         $t9,1
.L0000e498:
    ld         $a2,-32480($gp)
    jal        cmn_err
    li         $a0,5
    b          .L0000e454
    ld         $v0,0($gp)

glabel maddr_to_dimm
    daddiu     $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        .text
    move       $s8,$a0
    ld         $ra,0($sp)
    li         $a5,-1
    daddu      $a2,$v0,$v0
    ld         $a4,-32264($gp)
    dsrl       $a3,$s8,0x3
    ld         $s8,8($sp)
    beq        $v0, $a5, .L0000e4f8
    andi       $a3,$a3,0x1
    daddu      $v0,$a3,$a2
    dsll       $v0,$v0,0x3
    daddu      $v0,$a4,$v0
    ld         $v0,0($v0)
.L0000e4f0:
    jr         $ra
    daddiu     $sp,$sp,16
.L0000e4f8:
    b          .L0000e4f0
    move       $v0,$zero

glabel log_dimmerr
    daddiu     $sp,$sp,-80
    sd         $s0,72($sp)
    sd         $a0,56($sp)
    sd         $a2,32($sp)
    sd         $a3,48($sp)
    sd         $s3,24($sp)
    move       $s3,$a1
    sd         $s1,40($sp)
    sd         $ra,64($sp)
    jal        maddr_to_dimm
    move       $s1,$a4
    ld         $a1,-32272($gp)
    beqz       $s3, .L0000e5bc
    move       $s0,$v0
    daddiu     $a0,$sp,16
    daddiu     $a1,$a1,128
    ld         $a4,32($sp)
    li         $a2,68
    li         $a5,67
    andi       $a3,$a4,0x3f
    slti       $a4,$a4,64
    xori       $a4,$a4,0x1
    jal        sprintf
    movn       $a2,$a5,$a4
    ld         $a2,-32272($gp)
    li         $a0,5
    bnez       $s1, .L0000e5cc
    daddiu     $a2,$a2,136
.L0000e570:
    ld         $a3,-32272($gp)
    bnez       $s0, .L0000e5d8
    daddiu     $a3,$a3,152
.L0000e57c:
    ld         $v0,-32272($gp)
    daddiu     $a6,$v0,168
    daddiu     $a5,$v0,40
.L0000e588:
    ld         $s1,40($sp)
    ld         $s3,24($sp)
    ld         $a4,56($sp)
    daddiu     $a1,$v0,56
    ld         $a7,48($sp)
    sd         $a7,0($sp)
    jal        cmn_err
    daddiu     $a7,$sp,16
    ld         $ra,64($sp)
    move       $v0,$s0
    ld         $s0,72($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0000e5bc:
    li         $a0,1
    sb         $zero,16($sp)
    beqz       $s1, .L0000e570
    daddiu     $a2,$a1,140
.L0000e5cc:
    ld         $a3,-32272($gp)
    beqz       $s0, .L0000e57c
    daddiu     $a3,$a3,144
.L0000e5d8:
    ld         $v0,-32272($gp)
    move       $a6,$s0
    b          .L0000e588
    daddiu     $a5,$v0,160

glabel VEC_addrerr
    j          VEC_trap
    nop

glabel VEC_tlbmiss
    ld         $a2,272($k1)
    andi       $k0,$s0,0xffa0
    ori        $k0,$k0,0x1
    mtc0       $k0,$12
    jal        tlbmiss
    move       $s1,$a0
    ld         $s0,248($s1)
    bnez       $v0, .L0000e634
    nop
    andi       $s2,$s0,0xffa0
    mtc0       $s2,$12
    j          exception_exit
    move       $k1,$s1
.L0000e634:
    move       $a0,$s1
    move       $a1,$v0
    j          soft_trap
    ld         $a3,280($a0)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        getsr
    nop
    lui        $a0,0x2000
    jal        setsr
    or         $a0,$v0,$a0
    jal        set_fpc_csr
    move       $a0,$zero
    jal        getsr
    nop
    lui        $a0,0x2000
    nor        $a0,$a0,$zero
    jal        setsr
    and        $a0,$v0,$a0
    ld         $a1,-32256($gp)
    jal        cmn_err
    li         $a0,5
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
    ld         $a2,-16360($zero)
    daddiu     $sp,$sp,-16
    li         $at,1
    sd         $s0,0($sp)
    move       $s0,$a0
    bne        $a2, $a0, .L0000e6bc
    sd         $ra,8($sp)
    ld         $v0,992($a2)
    sw         $at,0($v0)
.L0000e6bc:
    move       $a0,$s0
    li         $a1,8
    jal        sigtouthread
    move       $a2,$zero
    move       $a0,$s0
    jal        checkfp
    move       $a1,$zero
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel fp_intr
    daddiu     $sp,$sp,-48
    sd         $s0,16($sp)
    ld         $s0,-16360($zero)
    li         $a3,1
    sd         $s1,24($sp)
    move       $s1,$a0
    beqz       $s0, .L0000e7f0
    sd         $ra,32($sp)
    ld         $a1,792($s0)
    lbu        $a0,533($a1)
    beqz       $a0, .L0000e724
    nop
    beq        $a0, $a3, .L0000e800
    li         $a4,2
    sb         $a3,533($a1)
.L0000e724:
    ld         $at,280($s1)
    li         $v0,0x8000
    dsll       $v0,$v0,0x10
    and        $at,$at,$v0
    beqz       $at, .L0000e764
    nop
    jal        load_fpcsr
    nop
    move       $a2,$v0
    move       $a0,$s1
    lw         $a1,1344($s0)
    jal        emulate_branch
    daddiu     $a3,$sp,0
    sd         $v0,8($sp)
    b          .L0000e774
    lw         $a1,1348($s0)
.L0000e764:
    ld         $a0,288($s1)
    lw         $a1,1344($s0)
    daddiu     $a0,$a0,4
    sd         $a0,8($sp)
.L0000e774:
    li         $a2,17
    srl        $a0,$a1,0x1a
    li         $a4,35
    li         $a3,19
    beq        $a0, $a2, .L0000e7d4
    srl        $a5,$a1,0x19
.L0000e78c:
    bne        $a0, $a3, .L0000e7b8
    nop
.L0000e794:
    jal        .text
    move       $a0,$s1
    beqz       $v0, .L0000e7e4
    ld         $a3,8($sp)
    move       $a0,$s0
    jal        checkfp
    li         $a1,2
    b          .L0000e7c4
    ld         $ra,32($sp)
.L0000e7b8:
    jal        .text
    move       $a0,$s0
.L0000e7c0:
    ld         $ra,32($sp)
.L0000e7c4:
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000e7d4:
    bne        $a5, $a4, .L0000e78c
    nop
    b          .L0000e794
    nop
.L0000e7e4:
    sd         $a3,352($s1)
    b          .L0000e7c0
    sd         $a3,288($s1)
.L0000e7f0:
    jal        .text
    nop
    b          .L0000e7c4
    ld         $ra,32($sp)
.L0000e800:
    sb         $a4,533($a1)
    jal        .text
    move       $a0,$s0
    b          .L0000e7c4
    ld         $ra,32($sp)
    daddiu     $sp,$sp,-80
    lw         $at,0($gp)
    sd         $s3,16($sp)
    move       $s3,$a0
    sd         $s1,8($sp)
    move       $s1,$a1
    beqz       $at, .L0000e840
    sd         $ra,64($sp)
    ld         $a0,-16360($zero)
    jal        checkfp
    move       $a1,$zero
.L0000e840:
    sd         $s7,72($sp)
    sd         $s5,56($sp)
    sd         $s0,48($sp)
    sd         $s4,40($sp)
    sd         $s6,32($sp)
    jal        get_current_abi
    sd         $s2,24($sp)
    jal        load_fpcsr
    move       $s0,$v0
    ld         $a1,-16360($zero)
    ld         $a1,792($a1)
    ld         $a0,288($s3)
    ld         $t8,512($a1)
    ld         $s2,-32472($gp)
    sltu       $t8,$a0,$t8
    bnez       $t8, .L0000e8a0
    and        $s2,$v0,$s2
    ld         $a2,520($a1)
    sltu       $a2,$a2,$a0
    bnez       $a2, .L0000e8a0
    li         $a4,-3969
    andi       $a3,$s2,0xf80
    b          .L0000e8a4
    and        $s2,$s2,$a4
.L0000e8a0:
    move       $a3,$zero
.L0000e8a4:
    move       $a2,$s2
    move       $a0,$s3
    srl        $a5,$s1,0x6
    andi       $a5,$a5,0x1f
    andi       $s7,$s0,0xc
    lui        $a6,0x100
    li         $s4,3
    move       $a4,$s4
    and        $a6,$v0,$a6
    sltu       $s6,$zero,$s7
    movz       $a4,$zero,$a6
    jal        fp_init_glob
    move       $a1,$s6
    li         $a6,19
    srl        $v0,$s1,0x1a
    beq        $v0, $a6, .L0000e978
    li         $s5,1
    li         $a7,17
    beq        $v0, $a7, .L0000e904
    move       $a0,$s2
    jal        .text
    move       $a1,$s3
    b          .L0000e948
    move       $a0,$v0
.L0000e904:
    move       $s5,$zero
    srl        $s4,$s1,0x15
    beqz       $s7, .L0000e980
    andi       $s4,$s4,0xf
.L0000e914:
    beqz       $s4, .L0000ea40
    li         $t8,4
    beq        $s4, $t8, .L0000ea44
    move       $a1,$s6
    li         $t9,1
    beq        $s4, $t9, .L0000e99c
    li         $ra,5
    beq        $s4, $ra, .L0000e9a0
    move       $a1,$s6
    move       $a0,$s2
    jal        .text
    move       $a1,$s3
    move       $a0,$v0
.L0000e948:
    ld         $s7,72($sp)
    ld         $s5,56($sp)
    ld         $s0,48($sp)
    ld         $s4,40($sp)
    ld         $s6,32($sp)
    ld         $ra,64($sp)
    ld         $s2,24($sp)
    move       $v0,$a0
    ld         $s1,8($sp)
    ld         $s3,16($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0000e978:
    bnez       $s7, .L0000e914
    andi       $s4,$s1,0x7
.L0000e980:
    sll        $at,$s1,0x14
    bgez       $at, .L0000e914
    move       $a0,$s2
    jal        .text
    move       $a1,$s3
    b          .L0000e948
    move       $a0,$v0
.L0000e99c:
    move       $a1,$s6
.L0000e9a0:
    srl        $a0,$s1,0xb
    jal        fpload_d
    andi       $a0,$a0,0x1f
    move       $s0,$v0
.L0000e9b0:
    beqz       $s5, .L0000ea58
    andi       $s5,$s1,0x3f
    beqz       $s7, .L0000eaa4
    sll        $a5,$s1,0xf
.L0000e9c0:
    beqz       $s4, .L0000eb50
    move       $a1,$s6
    li         $a1,1
    beq        $s4, $a1, .L0000e9e8
    move       $a1,$s6
    move       $a0,$s2
    jal        .text
    move       $a1,$s3
    b          .L0000e948
    move       $a0,$v0
.L0000e9e8:
    srl        $a0,$s1,0x10
    jal        fpload_d
    andi       $a0,$a0,0x1f
    move       $s4,$v0
    move       $a1,$s6
    srl        $a0,$s1,0x15
    jal        fpload_d
    andi       $a0,$a0,0x1f
    move       $a3,$v0
.L0000ea0c:
    andi       $v1,$s1,0x3f
    addiu      $v1,$v1,-32
    dsll32     $v1,$v1,0x0
    ld         $v0,-32256($gp)
    dsrl32     $a0,$v1,0x0
    sltiu      $a0,$a0,26
    daddiu     $v0,$v0,632
    dsrl       $v1,$v1,0x1d
    beqz       $a0, .L0000eb3c
    daddu      $v0,$v0,$v1
    ld         $a0,0($v0)
    jr         $a0
    li         $a0,1
.L0000ea40:
    move       $a1,$s6
.L0000ea44:
    srl        $a0,$s1,0xb
    jal        fpload_s
    andi       $a0,$a0,0x1f
    b          .L0000e9b0
    move       $s0,$v0
.L0000ea58:
    sltiu      $a1,$s5,4
    bnez       $a1, .L0000ea74
    sltiu      $a2,$s5,48
    bnez       $a2, .L0000eaf4
    sltiu      $a3,$s5,64
    beqz       $a3, .L0000eaf4
    nop
.L0000ea74:
    beqz       $s7, .L0000ec64
    sll        $a1,$s1,0xf
.L0000ea7c:
    beqz       $s4, .L0000ed54
    move       $a1,$s6
    li         $a4,1
    beq        $s4, $a4, .L0000ead0
    move       $a1,$s6
    move       $a0,$s2
    jal        .text
    move       $a1,$s3
    b          .L0000e948
    move       $a0,$v0
.L0000eaa4:
    bltz       $a5, .L0000eac0
    move       $a0,$s2
    sll        $a6,$s1,0xa
    bltz       $a6, .L0000eabc
    sll        $a7,$s1,0x19
    bgez       $a7, .L0000e9c0
.L0000eabc:
    move       $a0,$s2
.L0000eac0:
    jal        .text
    move       $a1,$s3
    b          .L0000e948
    move       $a0,$v0
.L0000ead0:
    srl        $a0,$s1,0x10
    jal        fpload_d
    andi       $a0,$a0,0x1f
    sd         $v0,0($sp)
.L0000eae0:
    sltiu      $a1,$s5,48
    bnez       $a1, .L0000eaf4
    sltiu      $a2,$s5,64
    bnez       $a2, .L0000eafc
    nop
.L0000eaf4:
    beqz       $s7, .L0000ecbc
    sll        $a2,$s1,0x19
.L0000eafc:
    beqz       $s4, .L0000ec7c
    sltiu      $a2,$s5,48
    li         $v0,1
    beq        $v0, $s4, .L0000ecd4
    sltiu      $a3,$s5,48
    li         $a3,4
    beq        $s4, $a3, .L0000ed2c
    li         $a1,32
    li         $a4,5
    beq        $s4, $a4, .L0000eb78
    li         $a1,32
    move       $a0,$s2
    jal        .text
    move       $a1,$s3
    b          .L0000e948
    move       $a0,$v0
.L0000eb3c:
    move       $a0,$s2
    jal        .text
    move       $a1,$s3
    b          .L0000e948
    move       $a0,$v0
.L0000eb50:
    srl        $a0,$s1,0x10
    jal        fpload_s
    andi       $a0,$a0,0x1f
    move       $s4,$v0
    move       $a1,$s6
    srl        $a0,$s1,0x15
    jal        fpload_s
    andi       $a0,$a0,0x1f
    b          .L0000ea0c
    move       $a3,$v0
.L0000eb78:
    beq        $s5, $a1, .L0000ed8c
    move       $a0,$zero
    li         $a2,33
    beq        $s5, $a2, .L0000ed14
    move       $a0,$v0
    move       $a0,$s2
    jal        .text
    move       $a1,$s3
    b          .L0000e948
    move       $a0,$v0
.L0000eba0:
    move       $a0,$zero
    move       $a1,$s0
    jal        _madd_sd
    move       $a2,$s4
    b          .L0000ebcc
    ld         $a0,-16360($zero)
.L0000ebb8:
    li         $a0,1
    move       $a1,$s0
    jal        _madd_sd
    move       $a2,$s4
    ld         $a0,-16360($zero)
.L0000ebcc:
    lbu        $a0,1353($a0)
    b          .L0000e948
    andi       $a0,$a0,0x10
.L0000ebd8:
    move       $a1,$s0
    jal        _nmsub_sd
    move       $a2,$s4
    b          .L0000ebcc
    ld         $a0,-16360($zero)
.L0000ebec:
    move       $a0,$zero
    move       $a1,$s0
    jal        _nmsub_sd
    move       $a2,$s4
    b          .L0000ebcc
    ld         $a0,-16360($zero)
.L0000ec04:
    li         $a0,1
    move       $a1,$s0
    jal        _nmadd_sd
    move       $a2,$s4
    b          .L0000ebcc
    ld         $a0,-16360($zero)
.L0000ec1c:
    move       $a0,$zero
    move       $a1,$s0
    jal        _nmadd_sd
    move       $a2,$s4
    b          .L0000ebcc
    ld         $a0,-16360($zero)
.L0000ec34:
    li         $a0,1
    move       $a1,$s0
    jal        _msub_sd
    move       $a2,$s4
    b          .L0000ebcc
    ld         $a0,-16360($zero)
.L0000ec4c:
    move       $a0,$zero
    move       $a1,$s0
    jal        _msub_sd
    move       $a2,$s4
    b          .L0000ebcc
    ld         $a0,-16360($zero)
.L0000ec64:
    bgez       $a1, .L0000ea7c
    move       $a0,$s2
    jal        .text
    move       $a1,$s3
    b          .L0000e948
    move       $a0,$v0
.L0000ec7c:
    bnez       $a2, .L0000ec94
    dsll32     $v1,$s5,0x0
    sltiu      $a3,$s5,64
    bnez       $a3, .L0000edb0
    move       $a0,$zero
    dsll32     $v1,$s5,0x0
.L0000ec94:
    ld         $v0,-32256($gp)
    dsrl32     $a0,$v1,0x0
    sltiu      $a0,$a0,38
    daddiu     $v0,$v0,328
    dsrl       $v1,$v1,0x1d
    beqz       $a0, .L0000ed78
    daddu      $v0,$v0,$v1
    ld         $a1,0($v0)
    jr         $a1
    move       $a0,$zero
.L0000ecbc:
    bgez       $a2, .L0000eafc
    move       $a0,$s2
    jal        .text
    move       $a1,$s3
    b          .L0000e948
    move       $a0,$v0
.L0000ecd4:
    bnez       $a3, .L0000ecec
    dsll32     $a1,$s5,0x0
    sltiu      $a4,$s5,64
    bnez       $a4, .L0000edd8
    move       $a0,$v0
    dsll32     $a1,$s5,0x0
.L0000ecec:
    ld         $a0,-32256($gp)
    dsrl32     $a2,$a1,0x0
    sltiu      $a2,$a2,38
    daddiu     $a0,$a0,24
    dsrl       $a1,$a1,0x1d
    beqz       $a2, .L0000ed9c
    daddu      $a0,$a0,$a1
    ld         $a3,0($a0)
    jr         $a3
    li         $a0,1
.L0000ed14:
    jal        _cvtsd_l
    move       $a1,$s0
    ld         $a0,-16360($zero)
.L0000ed20:
    lbu        $a0,1353($a0)
    b          .L0000e948
    andi       $a0,$a0,0x10
.L0000ed2c:
    beq        $s5, $a1, .L0000f01c
    move       $a0,$zero
    li         $a2,33
    beq        $s5, $a2, .L0000ed68
    move       $a0,$v0
    move       $a0,$s2
    jal        .text
    move       $a1,$s3
    b          .L0000e948
    move       $a0,$v0
.L0000ed54:
    srl        $a0,$s1,0x10
    jal        fpload_s
    andi       $a0,$a0,0x1f
    b          .L0000eae0
    sd         $v0,0($sp)
.L0000ed68:
    jal        _cvtsd_w
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ed78:
    move       $a0,$s2
    jal        .text
    move       $a1,$s3
    b          .L0000e948
    move       $a0,$v0
.L0000ed8c:
    jal        _cvtsd_l
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ed9c:
    move       $a0,$s2
    jal        .text
    move       $a1,$s3
    b          .L0000e948
    move       $a0,$v0
.L0000edb0:
    move       $a1,$s0
    andi       $a3,$s1,0xf
    srl        $a4,$s1,0x8
    ld         $a2,0($sp)
    jal        _comp_sd
    andi       $a4,$a4,0x7
    ld         $a0,-16360($zero)
    lbu        $a0,1353($a0)
    b          .L0000e948
    andi       $a0,$a0,0x10
.L0000edd8:
    move       $a1,$s0
    andi       $a3,$s1,0xf
    srl        $a4,$s1,0x8
    ld         $a2,0($sp)
    jal        _comp_sd
    andi       $a4,$a4,0x7
    ld         $a0,-16360($zero)
    lbu        $a0,1353($a0)
    b          .L0000e948
    andi       $a0,$a0,0x10
.L0000ee00:
    move       $a0,$zero
    move       $a1,$s0
    jal        _add_sd
    ld         $a2,0($sp)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ee18:
    jal        _cvtl_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ee28:
    move       $a0,$zero
    jal        _cvtw_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ee3c:
    jal        _cvtd_s
    move       $a0,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ee4c:
    move       $a0,$zero
    jal        _rsqrt_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ee60:
    move       $a0,$zero
    lui        $a1,0x3f80
    jal        _div_sd
    move       $a2,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ee78:
    ld         $a2,-16360($zero)
    move       $a0,$zero
    li         $a1,3
    sb         $a1,1352($a2)
    jal        _cvtw_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ee98:
    ld         $a4,-16360($zero)
    move       $a0,$zero
    move       $a1,$s0
    li         $a3,2
    jal        _cvtw_sd
    sb         $a3,1352($a4)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000eeb8:
    ld         $a6,-16360($zero)
    move       $a0,$zero
    move       $a1,$s0
    li         $a5,1
    jal        _cvtw_sd
    sb         $a5,1352($a6)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000eed8:
    ld         $a7,-16360($zero)
    move       $a0,$zero
    move       $a1,$s0
    jal        _cvtw_sd
    sb         $zero,1352($a7)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000eef4:
    ld         $t1,-16360($zero)
    move       $a0,$zero
    move       $a1,$s0
    li         $t0,3
    jal        _cvtl_sd
    sb         $t0,1352($t1)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ef14:
    ld         $t3,-16360($zero)
    move       $a0,$zero
    move       $a1,$s0
    li         $t2,2
    jal        _cvtl_sd
    sb         $t2,1352($t3)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ef34:
    ld         $t9,-16360($zero)
    move       $a0,$zero
    move       $a1,$s0
    li         $t8,1
    jal        _cvtl_sd
    sb         $t8,1352($t9)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ef54:
    ld         $ra,-16360($zero)
    move       $a0,$zero
    sb         $zero,1352($ra)
    jal        _cvtl_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ef70:
    move       $a0,$zero
    jal        _neg_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000ef84:
    ld         $a1,-16360($zero)
    lbu        $a2,1353($a1)
    move       $a0,$s0
    lbu        $a1,1354($a1)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000efac:
    move       $a0,$zero
    jal        _abs_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000efc0:
    move       $a0,$zero
    jal        _sqrt_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000efd4:
    move       $a0,$zero
    move       $a1,$s0
    jal        _div_sd
    ld         $a2,0($sp)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000efec:
    move       $a0,$zero
    move       $a1,$s0
    jal        _mul_sd
    ld         $a2,0($sp)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f004:
    move       $a0,$zero
    move       $a1,$s0
    jal        _sub_sd
    ld         $a2,0($sp)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f01c:
    jal        _cvtsd_w
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f02c:
    move       $a1,$s0
    ld         $a2,0($sp)
    jal        _add_sd
    li         $a0,1
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f044:
    jal        _cvtl_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f054:
    li         $a0,1
    jal        _cvtw_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f068:
    jal        _cvts_d
    move       $a0,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f078:
    li         $a0,1
    jal        _rsqrt_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f08c:
    li         $a0,1
    move       $a2,$s0
    li         $a1,1023
    jal        _div_sd
    dsll32     $a1,$a1,0x14
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f0a8:
    ld         $a3,-16360($zero)
    li         $a0,1
    move       $a1,$s0
    li         $a2,3
    jal        _cvtw_sd
    sb         $a2,1352($a3)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f0c8:
    ld         $a5,-16360($zero)
    li         $a0,1
    move       $a1,$s0
    li         $a4,2
    jal        _cvtw_sd
    sb         $a4,1352($a5)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f0e8:
    ld         $a6,-16360($zero)
    li         $a0,1
    move       $a1,$s0
    jal        _cvtw_sd
    sb         $v0,1352($a6)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f104:
    ld         $a7,-16360($zero)
    li         $a0,1
    move       $a1,$s0
    jal        _cvtw_sd
    sb         $zero,1352($a7)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f120:
    ld         $t1,-16360($zero)
    li         $a0,1
    move       $a1,$s0
    li         $t0,3
    jal        _cvtl_sd
    sb         $t0,1352($t1)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f140:
    ld         $t3,-16360($zero)
    li         $a0,1
    move       $a1,$s0
    li         $t2,2
    jal        _cvtl_sd
    sb         $t2,1352($t3)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f160:
    ld         $t8,-16360($zero)
    li         $a0,1
    move       $a1,$s0
    jal        _cvtl_sd
    sb         $v0,1352($t8)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f17c:
    ld         $t9,-16360($zero)
    li         $a0,1
    move       $a1,$s0
    jal        _cvtl_sd
    sb         $zero,1352($t9)
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f198:
    li         $a0,1
    jal        _neg_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f1ac:
    ld         $a1,-16360($zero)
    lbu        $a2,1353($a1)
    move       $a0,$s0
    lbu        $a1,1354($a1)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f1d4:
    li         $a0,1
    jal        _abs_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f1e8:
    li         $a0,1
    jal        _sqrt_sd
    move       $a1,$s0
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f1fc:
    move       $a1,$s0
    ld         $a2,0($sp)
    jal        _div_sd
    li         $a0,1
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f214:
    move       $a1,$s0
    ld         $a2,0($sp)
    jal        _mul_sd
    li         $a0,1
    b          .L0000ed20
    ld         $a0,-16360($zero)
.L0000f22c:
    move       $a1,$s0
    ld         $a2,0($sp)
    jal        _sub_sd
    li         $a0,1
    b          .L0000ed20
    ld         $a0,-16360($zero)
    move       $at,$a0
    li         $a0,4
    move       $a2,$a1
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        softfp_psignal
    move       $a1,$at
    ld         $a0,-16360($zero)
    jal        checkfp
    move       $a1,$zero
    ld         $ra,0($sp)
    li         $v0,1
    jr         $ra
    daddiu     $sp,$sp,16

glabel _rsqrt_sd
    daddiu     $sp,$sp,-96
    sd         $s0,48($sp)
    move       $s0,$a0
    daddiu     $a4,$sp,8
    daddiu     $a3,$sp,4
    daddiu     $a2,$sp,0
    sd         $a1,88($sp)
    nop
    sd         $ra,56($sp)
    jal        breakout_and_test_sd
    daddiu     $a1,$sp,88
    bnez       $v0, .L0000f34c
    sd         $s1,64($sp)
    daddiu     $at,$gp,0
    dsll       $s1,$s0,0x2
    lw         $t2,4($sp)
    daddu      $at,$s1,$at
    lw         $at,0($at)
    bne        $at, $t2, .L0000f360
    lw         $v0,0($sp)
    beqz       $v0, .L0000f53c
    move       $a0,$s0
    ld         $a1,-16360($zero)
    lui        $a2,0x1
    lw         $a0,1340($a1)
    ori        $a2,$a2,0x40
    or         $a0,$a0,$a2
    sw         $a0,1340($a1)
    ld         $v1,-16360($zero)
    lw         $v1,1340($v1)
    andi       $v1,$v1,0x800
    beqz       $v1, .L0000f488
    ld         $a1,-32248($gp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0000f350
    ld         $ra,56($sp)
.L0000f318:
    move       $a0,$s0
    ld         $a2,16($sp)
    dsrl       $a4,$a4,0x3
    nor        $a3,$t9,$zero
    ld         $a1,-32216($gp)
    addu       $a5,$t8,$t2
    and        $a3,$a3,$a4
    sw         $a5,4($sp)
    daddu      $a1,$t3,$a1
    dsllv      $a2,$a5,$a2
    or         $a2,$a2,$a3
    jal        _div_sd
    ld         $a1,0($a1)
.L0000f34c:
    ld         $ra,56($sp)
.L0000f350:
    ld         $s1,64($sp)
    ld         $s0,48($sp)
    jr         $ra
    daddiu     $sp,$sp,96
.L0000f360:
    beqz       $t2, .L0000f440
    lw         $a3,0($sp)
.L0000f368:
    li         $a4,1
    beq        $a3, $a4, .L0000f4ac
    dsll       $t3,$s0,0x3
    sd         $t3,40($sp)
    daddiu     $a0,$gp,0
    ld         $a2,-32232($gp)
    daddu      $a0,$s1,$a0
    sd         $a0,32($sp)
    daddu      $a2,$t3,$a2
    beqz       $t2, .L0000f4f8
    sd         $a2,24($sp)
    ld         $t9,0($a2)
    ld         $a7,8($sp)
    lw         $t8,0($a0)
    or         $a7,$t9,$a7
    sd         $a7,8($sp)
    subu       $t2,$t2,$t8
    sw         $t2,4($sp)
.L0000f3b0:
    daddiu     $t0,$gp,0
    daddu      $t0,$s1,$t0
    andi       $ra,$t2,0x1
    sra        $t2,$t2,0x1
    lw         $t0,0($t0)
    dsllv      $a7,$a7,$ra
    li         $t1,64
    dsrlv      $a3,$a7,$t0
    sd         $t0,16($sp)
    subu       $t1,$t1,$t0
    addiu      $t0,$t0,1
    sw         $t2,4($sp)
    dsllv      $a7,$a7,$t1
    li         $t1,-4
    bltz       $t0, .L0000f4f0
    sd         $a7,8($sp)
    move       $a2,$zero
    b          .L0000f5b4
    li         $a4,1
.L0000f3fc:
    dsll       $a5,$a6,0x2
    ori        $a4,$a4,0x4
.L0000f404:
    dsrl32     $a3,$a7,0x1e
    slt        $a6,$t0,$a2
    addiu      $a2,$a2,1
    dsll       $a7,$a7,0x2
    sd         $a7,8($sp)
    bnez       $a6, .L0000f318
    or         $a3,$a5,$a3
    dsubu      $a6,$a3,$a4
.L0000f424:
    dsll       $a5,$a4,0x1
    and        $a4,$t1,$a5
    bgez       $a6, .L0000f3fc
    ori        $a4,$a4,0x1
    dsll       $a5,$a3,0x2
    b          .L0000f404
    nop
.L0000f440:
    ld         $a6,8($sp)
    bnez       $a6, .L0000f368
    lw         $a3,0($sp)
    ld         $t1,-16360($zero)
    lw         $t0,1340($t1)
    ori        $t0,$t0,0x8020
    sw         $t0,1340($t1)
    ld         $a7,-16360($zero)
    lw         $a7,1340($a7)
    andi       $a7,$a7,0x400
    beqz       $a7, .L0000f578
    ld         $a1,-32240($gp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0000f350
    ld         $ra,56($sp)
.L0000f488:
    dsll       $a2,$s0,0x3
    daddu      $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0000f350
    ld         $ra,56($sp)
.L0000f4ac:
    ld         $a5,-16360($zero)
    lui        $a6,0x1
    lw         $a4,1340($a5)
    ori        $a6,$a6,0x40
    or         $a4,$a4,$a6
    sw         $a4,1340($a5)
    ld         $a3,-16360($zero)
    lw         $a3,1340($a3)
    andi       $a3,$a3,0x800
    beqz       $a3, .L0000f554
    ld         $a1,-32248($gp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0000f350
    ld         $ra,56($sp)
.L0000f4f0:
    b          .L0000f318
    li         $a4,1
.L0000f4f8:
    ld         $t0,-32224($gp)
    daddu      $a7,$t3,$t0
    ld         $a7,0($a7)
    jalr       $a7
    daddiu     $a0,$sp,8
    ld         $t3,40($sp)
    ld         $a7,8($sp)
    ld         $t9,24($sp)
    ld         $t8,32($sp)
    daddiu     $t2,$gp,0
    ld         $t9,0($t9)
    daddu      $t2,$s1,$t2
    lw         $t2,0($t2)
    lw         $t8,0($t8)
    subu       $t2,$t2,$v0
    b          .L0000f3b0
    sw         $t2,4($sp)
.L0000f53c:
    jal        fpstore_sd
    move       $a1,$zero
    jal        store_fpcsr
    nop
    b          .L0000f350
    ld         $ra,56($sp)
.L0000f554:
    dsll       $a2,$s0,0x3
    daddu      $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0000f350
    ld         $ra,56($sp)
.L0000f578:
    daddiu     $a3,$gp,0
    lwu        $a2,0($sp)
    dsll       $a4,$s0,0x3
    daddu      $a3,$s1,$a3
    lw         $a3,0($a3)
    daddu      $a1,$a1,$a4
    ld         $a1,0($a1)
    move       $a0,$s0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    or         $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0000f350
    ld         $ra,56($sp)
.L0000f5b4:
    addiu      $a2,$a2,1
    b          .L0000f424
    dsubu      $a6,$a3,$a4

glabel _cvtsd_l
    ld         $a6,-32200($gp)
    daddiu     $sp,$sp,-48
    sd         $s1,0($sp)
    li         $a3,-1
    sd         $s0,8($sp)
    move       $a2,$a1
    beqz       $a1, .L0000f700
    sd         $ra,16($sp)
    dsll32     $at,$a3,0x1f
    dsll       $s0,$a0,0x3
    beq        $a1, $at, .L0000f6a8
    nop
    bltz       $a1, .L0000f670
    li         $a0,-1
    move       $s1,$zero
.L0000f5fc:
    dsll32     $v0,$a0,0x15
    dsra32     $a5,$a2,0x1c
    and        $v0,$a2,$v0
    li         $a0,64
    andi       $a5,$a5,0xf
    beqz       $v0, .L0000f6cc
    daddu      $a5,$a5,$a6
    li         $v1,-1
    dsll32     $v1,$v1,0x1c
    and        $v1,$a2,$v1
    beqz       $v1, .L0000f67c
    nop
    lb         $a5,0($a5)
    addiu      $a5,$a5,8
.L0000f634:
    subu       $a3,$a0,$a5
    dsllv      $a3,$a2,$a3
    addiu      $a1,$a5,52
    dsrav      $a2,$a2,$a5
    sd         $a2,40($sp)
.L0000f648:
    ld         $a4,-32192($gp)
    daddu      $a4,$s0,$a4
    ld         $a4,0($a4)
    jalr       $a4
    move       $a0,$s1
    ld         $ra,16($sp)
.L0000f660:
    ld         $s1,0($sp)
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000f670:
    li         $s1,1
    b          .L0000f5fc
    dnegu      $a2,$a1
.L0000f67c:
    li         $a5,-1
    dsll32     $a5,$a5,0x18
    and        $a5,$a2,$a5
    beqz       $a5, .L0000f6ec
    ld         $a1,-32200($gp)
    dsra32     $a5,$a2,0x18
    andi       $a5,$a5,0xf
    daddu      $a5,$a5,$a1
    lb         $a5,0($a5)
    b          .L0000f634
    addiu      $a5,$a5,4
.L0000f6a8:
    ld         $a1,-32208($gp)
    sd         $a2,40($sp)
    daddu      $a1,$s0,$a1
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0000f660
    ld         $ra,16($sp)
.L0000f6cc:
    daddiu     $a0,$sp,40
    jal        renorm_d
    sd         $a2,40($sp)
    move       $a3,$zero
    li         $a1,52
    ld         $a2,40($sp)
    b          .L0000f648
    subu       $a1,$a1,$v0
.L0000f6ec:
    dsra32     $a5,$a2,0x14
    andi       $a5,$a5,0xf
    daddu      $a5,$a5,$a1
    b          .L0000f634
    lb         $a5,0($a5)
.L0000f700:
    sd         $a1,40($sp)
    jal        fpstore_sd
    move       $a1,$zero
    jal        store_fpcsr
    nop
    b          .L0000f660
    ld         $ra,16($sp)

glabel fpstore_sd
    ld         $a5,-16360($zero)
    daddiu     $sp,$sp,-16
    lbu        $a2,1353($a5)
    move       $a4,$a1
    sd         $ra,0($sp)
    lbu        $a5,1354($a5)
    beqz       $a0, .L0000f754
    andi       $a2,$a2,0x20
    move       $a0,$a1
    jal        fpstore_d
    move       $a1,$a5
    ld         $ra,0($sp)
.L0000f74c:
    jr         $ra
    daddiu     $sp,$sp,16
.L0000f754:
    move       $a0,$a1
    jal        fpstore_s
    move       $a1,$a5
    b          .L0000f74c
    ld         $ra,0($sp)

glabel fpstore_d
    daddiu     $sp,$sp,-48
    sd         $ra,8($sp)
    sd         $s3,0($sp)
    sd         $s1,24($sp)
    move       $s1,$a0
    move       $s3,$a1
    sd         $s0,16($sp)
    move       $s0,$a2
    jal        splhi
    sd         $s2,32($sp)
    move       $s2,$v0
    ld         $v0,-15264($zero)
    ld         $at,-16360($zero)
    beq        $at, $v0, .L0000f7e0
    nop
    jal        splx
    move       $a0,$s2
    ld         $v0,-16360($zero)
    ld         $v0,992($v0)
    dsll       $a0,$s3,0x3
    beqz       $s0, .L0000f81c
    daddu      $v0,$a0,$v0
    sd         $s1,40($v0)
.L0000f7c4:
    ld         $s3,0($sp)
.L0000f7c8:
    ld         $ra,8($sp)
    ld         $s2,32($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0000f7e0:
    jal        getsr
    nop
    lui        $a1,0x2000
    lui        $a0,0x2400
    movz       $a0,$a1,$s0
    jal        setsr
    or         $a0,$v0,$a0
    move       $a0,$s1
    move       $a1,$s3
    jal        fpunit_fpstore_d
    move       $a2,$s0
    jal        splx
    move       $a0,$s2
    b          .L0000f7c8
    ld         $s3,0($sp)
.L0000f81c:
    li         $a2,-1
    dsrl32     $a2,$a2,0x0
    and        $a4,$s1,$a2
    sd         $a4,40($v0)
    ld         $a3,-16360($zero)
    ld         $a3,992($a3)
    dsra32     $a4,$s1,0x0
    daddu      $a3,$a3,$a0
    and        $a2,$a2,$a4
    b          .L0000f7c4
    sd         $a2,48($a3)

glabel fpstore_s
    daddiu     $sp,$sp,-48
    sd         $a2,0($sp)
    sd         $ra,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    sd         $s1,24($sp)
    move       $s1,$a1
    jal        splhi
    sd         $s2,32($sp)
    move       $s2,$v0
    ld         $v0,-15264($zero)
    ld         $at,-16360($zero)
    bne        $at, $v0, .L0000f8bc
    nop
    jal        getsr
    nop
    ld         $a1,0($sp)
    lui        $a2,0x2000
    lui        $a0,0x2400
    movz       $a0,$a2,$a1
    jal        setsr
    or         $a0,$v0,$a0
    move       $a0,$s0
    jal        fpunit_fpstore_s
    move       $a1,$s1
    jal        splx
    move       $a0,$s2
    b          .L0000f8dc
    ld         $ra,16($sp)
.L0000f8bc:
    jal        splx
    move       $a0,$s2
    ld         $a3,-16360($zero)
    ld         $a3,992($a3)
    dsll       $a4,$s1,0x3
    daddu      $a3,$a3,$a4
    sd         $s0,40($a3)
    ld         $ra,16($sp)
.L0000f8dc:
    ld         $s2,32($sp)
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel fpload_d
    daddiu     $sp,$sp,-32
    sd         $ra,8($sp)
    sd         $s1,16($sp)
    move       $s1,$a0
    sd         $s0,0($sp)
    move       $s0,$a1
    jal        splhi
    sd         $s2,24($sp)
    move       $s2,$v0
    ld         $v0,-15264($zero)
    ld         $at,-16360($zero)
    beq        $at, $v0, .L0000f960
    nop
    jal        splx
    move       $a0,$s2
    ld         $a2,-16360($zero)
    ld         $a2,992($a2)
    dsll       $a1,$s1,0x3
    daddu      $a1,$a1,$a2
    beqz       $s0, .L0000f99c
    ld         $a0,40($a1)
    move       $v0,$a0
.L0000f948:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    ld         $s2,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000f960:
    jal        getsr
    nop
    lui        $a1,0x2000
    lui        $a0,0x2400
    movz       $a0,$a1,$s0
    jal        setsr
    or         $a0,$v0,$a0
    move       $a0,$s1
    jal        fpunit_fpload_d
    move       $a1,$s0
    move       $s0,$v0
    jal        splx
    move       $a0,$s2
    b          .L0000f948
    move       $v0,$s0
.L0000f99c:
    sll        $v0,$a0,0x0
    ld         $v1,48($a1)
    li         $a2,-1
    dsrl32     $a2,$a2,0x0
    dsll32     $v1,$v1,0x0
    and        $v0,$v0,$a2
    b          .L0000f948
    or         $v0,$v0,$v1

glabel fpload_s
    daddiu     $sp,$sp,-32
    sd         $a1,0($sp)
    sd         $ra,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    jal        splhi
    sd         $s1,24($sp)
    move       $s1,$v0
    ld         $v0,-15264($zero)
    ld         $at,-16360($zero)
    bne        $at, $v0, .L0000fa28
    nop
    jal        getsr
    nop
    ld         $a1,0($sp)
    lui        $a2,0x2000
    lui        $a0,0x2400
    movz       $a0,$a2,$a1
    jal        setsr
    or         $a0,$v0,$a0
    jal        fpunit_fpload_s
    move       $a0,$s0
    move       $s0,$v0
    jal        splx
    move       $a0,$s1
    b          .L0000fa50
    move       $v0,$s0
.L0000fa28:
    jal        splx
    move       $a0,$s1
    ld         $v0,-16360($zero)
    ld         $v0,992($v0)
    dsll       $v1,$s0,0x3
    daddu      $v0,$v0,$v1
    li         $v1,-1
    ld         $v0,40($v0)
    dsrl32     $v1,$v1,0x0
    and        $v0,$v0,$v1
.L0000fa50:
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel store_fpcsr
    ld         $a3,-16360($zero)
    lbu        $at,1353($a3)
    daddiu     $sp,$sp,-32
    sd         $ra,16($sp)
    andi       $at,$at,0x10
    sd         $s0,0($sp)
    beqz       $at, .L0000faf0
    lw         $s0,1340($a3)
.L0000fa84:
    jal        splhi
    nop
    ld         $a3,-16360($zero)
    lbu        $v1,1353($a3)
    andi       $v1,$v1,0x10
    beqz       $v1, .L0000fac0
    nop
.L0000faa0:
    ld         $a0,992($a3)
    sw         $s0,304($a0)
.L0000faa8:
    ld         $s0,0($sp)
    jal        splx
    move       $a0,$v0
    ld         $ra,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000fac0:
    ld         $a1,-15264($zero)
    bne        $a1, $a3, .L0000faa0
    sd         $v0,8($sp)
    jal        getsr
    nop
    lui        $a0,0x2000
    jal        setsr
    or         $a0,$v0,$a0
    jal        set_fpc_csr
    move       $a0,$s0
    b          .L0000faa8
    ld         $v0,8($sp)
.L0000faf0:
    lw         $a4,1336($a3)
    lui        $v0,0x3
    ori        $t9,$v0,0xf000
    beqz       $a4, .L0000fa84
    sll        $a0,$a4,0x5
    or         $s0,$a4,$s0
    and        $t8,$s0,$a0
    and        $t8,$t8,$t9
    b          .L0000fa84
    xor        $s0,$s0,$t8

glabel load_fpcsr
    daddiu     $sp,$sp,-32
    sd         $s0,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    sd         $s7,16($sp)
    ld         $a0,-16360($zero)
    ld         $at,-15264($zero)
    beq        $at, $a0, .L0000fb64
    move       $s7,$v0
    ld         $s0,992($a0)
    lw         $s0,304($s0)
.L0000fb44:
    jal        splx
    move       $a0,$s7
    ld         $ra,0($sp)
    ld         $s7,16($sp)
    move       $v0,$s0
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0000fb64:
    jal        getsr
    nop
    lui        $a0,0x2000
    jal        setsr
    or         $a0,$v0,$a0
    jal        get_fpc_csr
    nop
    b          .L0000fb44
    move       $s0,$v0

glabel post_sig
    ld         $a4,-16360($zero)
    lbu        $at,1353($a4)
    andi       $at,$at,0x10
    daddiu     $sp,$sp,-16
    beqz       $at, .L0000fba8
    sd         $ra,0($sp)
.L0000fba0:
    jr         $ra
    daddiu     $sp,$sp,16
.L0000fba8:
    lw         $a1,1340($a4)
    jal        softfp_psignal
    ld         $a2,1328($a4)
    ld         $v1,-16360($zero)
    lbu        $v0,1353($v1)
    ori        $v0,$v0,0x10
    sb         $v0,1353($v1)
    move       $a1,$zero
    jal        checkfp
    ld         $a0,-16360($zero)
    b          .L0000fba0
    ld         $ra,0($sp)

glabel fp_init_glob
    ld         $a6,-16360($zero)
    sd         $a0,1328($a6)
    ld         $a0,-16360($zero)
    sw         $a2,1340($a0)
    ld         $v1,-16360($zero)
    sw         $a3,1336($v1)
    ld         $a0,-16360($zero)
    li         $v0,32
    andi       $v1,$a2,0x3
    sb         $v1,1352($a0)
    movz       $v0,$zero,$a1
    ld         $v1,-16360($zero)
    or         $v0,$a4,$v0
    ori        $v0,$v0,0x4
    sb         $v0,1353($v1)
    ld         $at,-16360($zero)
    jr         $ra
    sb         $a5,1354($at)

glabel breakout_sd
    daddiu     $t3,$gp,0
    dsll       $a7,$a0,0x2
    ld         $t2,0($a1)
    daddu      $t3,$a7,$t3
    lw         $t3,0($t3)
    daddiu     $t1,$gp,0
    dsrav      $t2,$t2,$t3
    daddu      $t1,$a7,$t1
    sll        $t2,$t2,0x0
    sw         $t2,0($a3)
    lw         $t1,0($t1)
    daddiu     $t0,$gp,0
    daddu      $a7,$a7,$t0
    and        $t1,$t1,$t2
    sw         $t1,0($a3)
    lw         $t3,0($a7)
    ld         $t2,0($a1)
    ld         $t0,-32184($gp)
    dsll       $t1,$a0,0x3
    dsrav      $t2,$t2,$t3
    daddu      $t0,$t0,$t1
    andi       $t2,$t2,0x1
    sw         $t2,0($a2)
    ld         $t0,0($t0)
    ld         $a6,0($a1)
    and        $a6,$a6,$t0
    sd         $a6,0($a4)
    ld         $at,-16360($zero)
    lbu        $at,1353($at)
    andi       $at,$at,0x1
    beqz       $at, .L0000fcf8
    daddiu     $sp,$sp,-16
    lw         $t8,0($a3)
    bnez       $t8, .L0000fcf8
    nop
    beqz       $a6, .L0000fcf8
    nop
    sd         $zero,0($a4)
    lw         $v1,0($a7)
    lwu        $v0,0($a2)
    dsllv      $v0,$v0,$v1
    sd         $v0,0($a1)
    ld         $v0,-16360($zero)
    lw         $at,1340($v0)
    ori        $at,$at,0x1004
    sw         $at,1340($v0)
    ld         $t9,-16360($zero)
    lw         $t9,1340($t9)
    andi       $t9,$t9,0x80
    beqz       $t9, .L0000fcf8
    sd         $ra,0($sp)
    jal        post_sig
    li         $a0,8
    ld         $ra,0($sp)
.L0000fcf8:
    jr         $ra
    daddiu     $sp,$sp,16

glabel screen_nan_sd
    dsll       $v0,$a0,0x2
    daddiu     $at,$gp,0
    daddu      $at,$at,$v0
    lw         $at,0($at)
    daddiu     $sp,$sp,-16
    lui        $a4,0x1
    ld         $a6,-32176($gp)
    ori        $a4,$a4,0x40
    bne        $at, $a2, .L0000fd80
    dsll       $v0,$a0,0x3
    daddu      $v1,$v0,$a6
    ld         $v1,0($v1)
    and        $v1,$v1,$a3
    beqz       $v1, .L0000fd88
    nop
    ld         $a3,-16360($zero)
    lw         $a2,1340($a3)
    or         $a2,$a2,$a4
    sw         $a2,1340($a3)
    ld         $a1,-16360($zero)
    lw         $a1,1340($a1)
    andi       $a1,$a1,0x800
    beqz       $a1, .L0000fdb0
    sd         $ra,0($sp)
    jal        post_sig
    li         $a0,8
.L0000fd68:
    jal        store_fpcsr
    nop
    ld         $ra,0($sp)
    li         $v0,1
.L0000fd78:
    jr         $ra
    daddiu     $sp,$sp,16
.L0000fd80:
    b          .L0000fd78
    move       $v0,$zero
.L0000fd88:
    move       $v0,$zero
    beqz       $a3, .L0000fd78
    sd         $ra,0($sp)
    jal        fpstore_sd
    nop
    jal        store_fpcsr
    nop
    ld         $ra,0($sp)
    b          .L0000fd78
    li         $v0,1
.L0000fdb0:
    ld         $a1,-32168($gp)
    daddu      $a1,$v0,$a1
    jal        fpstore_sd
    ld         $a1,0($a1)
    b          .L0000fd68
    nop

glabel breakout_and_test_sd
    daddiu     $sp,$sp,-48
    sd         $a1,32($sp)
    sd         $a3,24($sp)
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    jal        breakout_sd
    sd         $a4,16($sp)
    ld         $a3,16($sp)
    ld         $a1,32($sp)
    ld         $a2,24($sp)
    ld         $a1,0($a1)
    lw         $a2,0($a2)
    move       $a0,$s8
    jal        screen_nan_sd
    ld         $a3,0($a3)
    ld         $ra,0($sp)
    beqz       $v0, .L0000fe20
    ld         $s8,8($sp)
    li         $v0,1
.L0000fe18:
    jr         $ra
    daddiu     $sp,$sp,48
.L0000fe20:
    b          .L0000fe18
    move       $v0,$zero

glabel breakout_and_test2_sd
    daddiu     $sp,$sp,-128
    sd         $a1,0($sp)
    sd         $a3,56($sp)
    sd         $s8,16($sp)
    sd         $s3,8($sp)
    sd         $s0,40($sp)
    move       $s0,$a0
    move       $s3,$a4
    sd         $s2,24($sp)
    move       $s2,$a5
    move       $s8,$a6
    sd         $s1,48($sp)
    sd         $ra,32($sp)
    jal        breakout_sd
    move       $s1,$a7
    move       $a0,$s0
    move       $a1,$s2
    move       $a2,$s8
    ld         $a4,128($sp)
    jal        breakout_sd
    move       $a3,$s1
    ld         $s8,16($sp)
    dsll       $v1,$s0,0x2
    daddiu     $v0,$gp,0
    ld         $a1,56($sp)
    daddu      $v0,$v0,$v1
    lw         $v0,0($v0)
    lw         $a1,0($a1)
    lui        $t8,0x1
    ld         $a3,-32176($gp)
    ld         $a0,128($sp)
    dsll       $a2,$s0,0x3
    ori        $t8,$t8,0x40
    ld         $a4,-32176($gp)
    bne        $a1, $v0, .L0000fecc
    daddu      $a6,$a2,$a3
    ld         $a6,0($a6)
    ld         $a5,0($s3)
    and        $a5,$a5,$a6
    bnez       $a5, .L0000fef0
    nop
.L0000fecc:
    lw         $a3,0($s1)
    bne        $a3, $v0, .L0000ff44
    dsll       $a2,$s0,0x3
    ld         $a7,0($a0)
    daddu      $t0,$a2,$a4
    ld         $t0,0($t0)
    and        $a7,$a7,$t0
    beqz       $a7, .L0000ff44
    nop
.L0000fef0:
    ld         $t3,-16360($zero)
    lw         $t2,1340($t3)
    or         $t2,$t2,$t8
    sw         $t2,1340($t3)
    ld         $t1,-16360($zero)
    lw         $t1,1340($t1)
    andi       $t1,$t1,0x800
    beqz       $t1, .L0000ffa8
    ld         $a1,-32168($gp)
    jal        post_sig
    li         $a0,8
.L0000ff1c:
    jal        store_fpcsr
    nop
    li         $v0,1
.L0000ff28:
    ld         $s3,8($sp)
    ld         $ra,32($sp)
    ld         $s2,24($sp)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L0000ff44:
    bne        $a1, $v0, .L0000ff74
    nop
    ld         $t9,0($s3)
    beqz       $t9, .L0000ff74
    ld         $a1,0($sp)
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0000ff28
    li         $v0,1
.L0000ff74:
    bne        $a3, $v0, .L0000ffa0
    nop
    ld         $a2,0($a0)
    beqz       $a2, .L0000ffa0
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($s2)
    jal        store_fpcsr
    nop
    b          .L0000ff28
    li         $v0,1
.L0000ffa0:
    b          .L0000ff28
    move       $v0,$zero
.L0000ffa8:
    daddu      $a1,$a2,$a1
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    b          .L0000ff1c
    nop

glabel breakout_and_test3_sd
    daddiu     $sp,$sp,-128
    sd         $a1,0($sp)
    sd         $a3,24($sp)
    sd         $s8,48($sp)
    sd         $s3,32($sp)
    sd         $s0,56($sp)
    move       $s0,$a0
    move       $s3,$a4
    sd         $s2,8($sp)
    move       $s2,$a5
    move       $s8,$a6
    sd         $s1,40($sp)
    sd         $ra,16($sp)
    jal        breakout_sd
    move       $s1,$a7
    move       $a0,$s0
    move       $a1,$s2
    move       $a2,$s8
    move       $a3,$s1
    jal        breakout_sd
    ld         $a4,128($sp)
    ld         $s8,24($sp)
    ld         $a2,144($sp)
    ld         $a1,136($sp)
    ld         $a3,152($sp)
    move       $a0,$s0
    jal        breakout_sd
    ld         $a4,160($sp)
    dsll       $v1,$s0,0x2
    daddiu     $v0,$gp,0
    lw         $a0,0($s8)
    daddu      $v0,$v0,$v1
    lw         $v0,0($v0)
    ld         $t2,-32176($gp)
    dsll       $a2,$s0,0x3
    ld         $a7,152($sp)
    bne        $a0, $v0, .L000100d0
    ld         $a5,-32176($gp)
    ld         $a1,0($s3)
    daddu      $a3,$a2,$a5
    ld         $a3,0($a3)
    and        $a1,$a1,$a3
    beqz       $a1, .L000100d0
    nop
.L00010070:
    ld         $a6,-16360($zero)
    lui        $a7,0x1
    lw         $a5,1340($a6)
    ori        $a7,$a7,0x40
    or         $a5,$a5,$a7
    sw         $a5,1340($a6)
    ld         $a4,-16360($zero)
    lw         $a4,1340($a4)
    andi       $a4,$a4,0x800
    beqz       $a4, .L000101b8
    ld         $a1,-32168($gp)
    jal        post_sig
    li         $a0,8
.L000100a4:
    jal        store_fpcsr
    nop
    li         $v0,1
.L000100b0:
    ld         $s2,8($sp)
    ld         $s3,32($sp)
    ld         $ra,16($sp)
    ld         $s1,40($sp)
    ld         $s8,48($sp)
    ld         $s0,56($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L000100d0:
    lw         $a5,0($s1)
    dsll       $a2,$s0,0x3
    ld         $a3,160($sp)
    bne        $a5, $v0, .L000100fc
    daddu      $t1,$a2,$t2
    ld         $t0,128($sp)
    ld         $t1,0($t1)
    ld         $t0,0($t0)
    and        $t0,$t0,$t1
    bnez       $t0, .L00010070
    nop
.L000100fc:
    lw         $a7,0($a7)
    dsll       $a2,$s0,0x3
    ld         $t0,160($sp)
    bne        $a7, $v0, .L00010124
    daddu      $a6,$a2,$t2
    ld         $t1,0($a6)
    ld         $t0,0($t0)
    and        $t0,$t0,$t1
    bnez       $t0, .L00010070
    nop
.L00010124:
    bne        $a0, $v0, .L00010154
    nop
    ld         $t1,0($s3)
    beqz       $t1, .L00010154
    ld         $a1,0($sp)
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L000100b0
    li         $v0,1
.L00010154:
    bne        $a5, $v0, .L00010180
    ld         $a2,128($sp)
    ld         $a2,0($a2)
    beqz       $a2, .L00010180
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($s2)
    jal        store_fpcsr
    nop
    b          .L000100b0
    li         $v0,1
.L00010180:
    bne        $a7, $v0, .L000101b0
    nop
    ld         $a3,0($a3)
    beqz       $a3, .L000101b0
    ld         $a1,136($sp)
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L000100b0
    li         $v0,1
.L000101b0:
    b          .L000100b0
    move       $v0,$zero
.L000101b8:
    daddu      $a1,$a2,$a1
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    b          .L000100a4
    nop

glabel _cvtsd_w
    daddiu     $sp,$sp,-48
    sd         $s0,0($sp)
    move       $a3,$a1
    move       $s0,$a0
    sd         $s1,8($sp)
    move       $s1,$zero
    beqz       $a1, .L00010258
    sd         $ra,16($sp)
    dsll32     $a3,$a1,0x0
    dsra32     $a3,$a3,0x0
    bltz       $a3, .L00010248
    nop
    sd         $a3,40($sp)
.L00010204:
    jal        renorm_d
    daddiu     $a0,$sp,40
    ld         $a4,-32096($gp)
    dsll       $a5,$s0,0x3
    daddu      $a4,$a4,$a5
    ld         $a4,0($a4)
    move       $a0,$s1
    move       $a3,$zero
    li         $a1,52
    ld         $a2,40($sp)
    jalr       $a4
    subu       $a1,$a1,$v0
    ld         $ra,16($sp)
.L00010238:
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00010248:
    li         $s1,1
    dnegu      $a6,$a3
    b          .L00010204
    sd         $a6,40($sp)
.L00010258:
    sd         $a1,40($sp)
    jal        fpstore_sd
    move       $a1,$zero
    jal        store_fpcsr
    nop
    b          .L00010238
    ld         $ra,16($sp)

glabel _nmsub_sd
    daddiu     $sp,$sp,-144
    sd         $a3,136($sp)
    sd         $a2,128($sp)
    sd         $a1,120($sp)
    ld         $t1,-16360($zero)
    sd         $a0,96($sp)
    li         $t2,-5
    lbu        $t0,1353($t1)
    daddiu     $a1,$sp,120
    daddiu     $a2,$sp,48
    sd         $ra,104($sp)
    daddiu     $a3,$sp,52
    and        $t0,$t0,$t2
    sb         $t0,1353($t1)
    daddiu     $a4,$sp,56
    daddiu     $v1,$sp,80
    sd         $v1,16($sp)
    daddiu     $a5,$sp,128
    daddiu     $v0,$sp,84
    sd         $v0,24($sp)
    daddiu     $at,$sp,88
    daddiu     $a6,$sp,136
    sd         $a6,8($sp)
    daddiu     $a7,$sp,72
    daddiu     $a6,$sp,64
    sd         $a7,0($sp)
    daddiu     $a7,$sp,68
    jal        breakout_and_test3_sd
    sd         $at,32($sp)
    beqz       $v0, .L000102fc
    ld         $a0,96($sp)
    ld         $ra,104($sp)
.L000102f4:
    jr         $ra
    daddiu     $sp,$sp,144
.L000102fc:
    lw         $a7,80($sp)
    ld         $a6,72($sp)
    lw         $a5,68($sp)
    lw         $a4,64($sp)
    ld         $a3,56($sp)
    lw         $a2,52($sp)
    lw         $a1,48($sp)
    lw         $t0,84($sp)
    sw         $t0,4($sp)
    ld         $t3,88($sp)
    xori       $a1,$a1,0x1
    jal        madd
    sd         $t3,8($sp)
    b          .L000102f4
    ld         $ra,104($sp)

glabel _cvtw_sd
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    move       $s0,$a0
    sd         $a1,56($sp)
    daddiu     $a1,$sp,56
    daddiu     $a2,$sp,0
    daddiu     $a3,$sp,4
    nop
    sd         $ra,32($sp)
    jal        breakout_sd
    daddiu     $a4,$sp,8
    daddiu     $a3,$gp,0
    dsll       $a5,$s0,0x2
    daddu      $a3,$a5,$a3
    lw         $a3,0($a3)
    lw         $a4,4($sp)
    addiu      $at,$a3,32
    slt        $at,$a4,$at
    ld         $a7,-32080($gp)
    dsll       $a2,$s0,0x3
    lui        $t0,0x1
    ld         $a1,8($sp)
    bnez       $at, .L000103d4
    ori        $t0,$t0,0x40
    ld         $a7,-16360($zero)
    lw         $a6,1340($a7)
    or         $a6,$a6,$t0
    sw         $a6,1340($a7)
    ld         $a4,-16360($zero)
    lw         $a5,1340($a4)
    andi       $a5,$a5,0x800
    beqz       $a5, .L00010498
    lui        $a0,0x7fff
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00010444
    ld         $ra,32($sp)
.L000103d4:
    daddu      $a6,$a7,$a2
    beqz       $a4, .L00010450
    nop
    ld         $t1,0($a6)
    subu       $a4,$a4,$a3
    sw         $a4,4($sp)
    or         $t1,$t1,$a1
    beqz       $s0, .L00010488
    sd         $t1,8($sp)
.L000103f8:
    move       $a1,$zero
    slti       $a5,$a4,-1
    li         $a2,1
    li         $a3,52
    subu       $a7,$a3,$a4
    beqz       $a5, .L0001041c
    dsll32     $a2,$a2,0x1e
    b          .L00010438
    sd         $zero,8($sp)
.L0001041c:
    li         $a6,-1
    addiu      $a2,$a4,12
    beq        $a4, $a6, .L000104bc
    ld         $a1,8($sp)
    dsllv      $a2,$a1,$a2
    dsrlv      $a1,$a1,$a7
    sd         $a1,8($sp)
.L00010438:
    jal        round_w
    lw         $a0,0($sp)
    ld         $ra,32($sp)
.L00010444:
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00010450:
    beqz       $a1, .L000104cc
    sd         $a5,16($sp)
    ld         $a3,-32088($gp)
    daddu      $a3,$a3,$a2
    ld         $a3,0($a3)
    jalr       $a3
    daddiu     $a0,$sp,8
    ld         $a4,16($sp)
    daddiu     $a5,$gp,0
    daddu      $a4,$a4,$a5
    lw         $a4,0($a4)
    subu       $a4,$a4,$v0
    bnez       $s0, .L000103f8
    sw         $a4,4($sp)
.L00010488:
    ld         $a6,8($sp)
    dsll       $a6,$a6,0x1d
    b          .L000103f8
    sd         $a6,8($sp)
.L00010498:
    lbu        $a2,1353($a4)
    ori        $a0,$a0,0xffff
    lbu        $a1,1354($a4)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00010444
    ld         $ra,32($sp)
.L000104bc:
    dsll       $a2,$a1,0xb
    sd         $zero,8($sp)
    b          .L00010438
    move       $a1,$zero
.L000104cc:
    ld         $a1,-16360($zero)
    lbu        $a2,1353($a1)
    move       $a0,$zero
    lbu        $a1,1354($a1)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00010444
    ld         $ra,32($sp)

glabel _cvtl_sd
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    move       $s0,$a0
    sd         $a1,56($sp)
    daddiu     $a1,$sp,56
    daddiu     $a2,$sp,0
    daddiu     $a3,$sp,4
    nop
    sd         $ra,32($sp)
    jal        breakout_sd
    daddiu     $a4,$sp,8
    ld         $at,-32072($gp)
    dsll       $a5,$s0,0x3
    ld         $v0,56($sp)
    daddu      $at,$a5,$at
    ld         $at,0($at)
    ld         $a7,-32056($gp)
    beq        $at, $v0, .L0001068c
    daddu      $a2,$a5,$a7
    daddiu     $a3,$gp,0
    dsll       $a6,$s0,0x2
    daddu      $a3,$a6,$a3
    lw         $a3,0($a3)
    lw         $a4,4($sp)
    addiu      $v0,$a3,63
    slt        $v0,$a4,$v0
    bnez       $v0, .L000105a8
    nop
    ld         $a7,-16360($zero)
    lui        $t0,0x1
    lw         $a6,1340($a7)
    ori        $t0,$t0,0x40
    or         $a6,$a6,$t0
    sw         $a6,1340($a7)
    ld         $a4,-16360($zero)
    lw         $a5,1340($a4)
    andi       $a5,$a5,0x800
    beqz       $a5, .L000106b8
    li         $a0,-1
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L000105f4
    ld         $ra,32($sp)
.L000105a8:
    beqz       $a4, .L00010628
    ld         $a1,8($sp)
    ld         $t1,0($a2)
    subu       $a4,$a4,$a3
    sw         $a4,4($sp)
    or         $t1,$t1,$a1
    beqz       $s0, .L00010660
    sd         $t1,8($sp)
.L000105c8:
    move       $a1,$zero
    slti       $a5,$a4,-1
    slti       $a7,$a4,52
    li         $a3,52
    li         $a2,1
    beqz       $a5, .L00010600
    dsll32     $a2,$a2,0x1e
    sd         $zero,8($sp)
.L000105e8:
    jal        round_l
    lw         $a0,0($sp)
    ld         $ra,32($sp)
.L000105f4:
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00010600:
    subu       $t0,$a3,$a4
    li         $a6,-1
    addiu      $a2,$a4,12
    beq        $a4, $a6, .L000106dc
    ld         $a1,8($sp)
    beqz       $a7, .L00010670
    dsllv      $a2,$a1,$a2
    dsrlv      $a1,$a1,$t0
    b          .L000105e8
    sd         $a1,8($sp)
.L00010628:
    beqz       $a1, .L000106ec
    sd         $a6,16($sp)
    ld         $a3,-32064($gp)
    daddu      $a3,$a5,$a3
    ld         $a3,0($a3)
    jalr       $a3
    daddiu     $a0,$sp,8
    ld         $a4,16($sp)
    daddiu     $a5,$gp,0
    daddu      $a4,$a4,$a5
    lw         $a4,0($a4)
    subu       $a4,$a4,$v0
    bnez       $s0, .L000105c8
    sw         $a4,4($sp)
.L00010660:
    ld         $a6,8($sp)
    dsll       $a6,$a6,0x1d
    b          .L000105c8
    sd         $a6,8($sp)
.L00010670:
    beq        $a4, $a3, .L000105e8
    move       $a2,$zero
    addiu      $a7,$a4,-52
    dsllv      $a1,$a1,$a7
    sd         $a1,8($sp)
    b          .L000105e8
    nop
.L0001068c:
    ld         $a1,-16360($zero)
    li         $a0,-1
    lbu        $a2,1353($a1)
    dsll32     $a0,$a0,0x1f
    lbu        $a1,1354($a1)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L000105f4
    ld         $ra,32($sp)
.L000106b8:
    lbu        $a2,1353($a4)
    dsrl       $a0,$a0,0x1
    lbu        $a1,1354($a4)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L000105f4
    ld         $ra,32($sp)
.L000106dc:
    dsll       $a2,$a1,0xb
    sd         $zero,8($sp)
    b          .L000105e8
    move       $a1,$zero
.L000106ec:
    ld         $a1,-16360($zero)
    lbu        $a2,1353($a1)
    move       $a0,$zero
    lbu        $a1,1354($a1)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L000105f4
    ld         $ra,32($sp)

glabel _comp_sd
    daddiu     $v0,$gp,0
    dsll       $a7,$a0,0x2
    daddu      $v0,$a7,$v0
    daddiu     $at,$gp,0
    lw         $v0,0($v0)
    dsll       $t3,$a0,0x3
    ld         $t8,-32048($gp)
    daddu      $at,$a7,$at
    lw         $at,0($at)
    dsrav      $t0,$a1,$v0
    daddiu     $sp,$sp,-32
    dsrav      $v0,$a2,$v0
    daddu      $t8,$t3,$t8
    dsrav      $t9,$a1,$at
    daddiu     $t1,$gp,0
    ld         $t8,0($t8)
    dsrav      $at,$a2,$at
    daddu      $t1,$a7,$t1
    sll        $at,$at,0x0
    and        $t2,$t8,$a1
    sll        $v0,$v0,0x0
    lw         $t1,0($t1)
    and        $t8,$t8,$a2
    sll        $t9,$t9,0x0
    sll        $t0,$t0,0x0
    andi       $t9,$t9,0x1
    and        $t0,$t1,$t0
    and        $t1,$t1,$v0
    andi       $at,$at,0x1
    beqz       $a4, .L00010794
    sd         $at,8($sp)
    addiu      $a4,$a4,1
.L00010794:
    daddiu     $a6,$gp,0
    daddu      $a6,$a7,$a6
    sd         $a6,0($sp)
    lw         $a6,0($a6)
    bne        $a6, $t0, .L000107b4
    sd         $ra,16($sp)
    bnez       $t2, .L000107cc
    lui        $a7,0x80
.L000107b4:
    ld         $a5,8($sp)
    bne        $a6, $t1, .L00010878
    li         $a7,-1
    beqz       $t8, .L00010878
    nop
    lui        $a7,0x80
.L000107cc:
    ld         $a6,-16360($zero)
    andi       $t9,$a3,0x1
    sllv       $a7,$a7,$a4
    beqz       $t9, .L000108f8
    lw         $a0,1340($a6)
    or         $t9,$a0,$a7
    sw         $t9,1340($a6)
.L000107e8:
    ld         $a6,0($sp)
    lw         $a6,0($a6)
    andi       $a0,$a3,0x8
    bne        $a6, $t0, .L00010810
    ld         $a1,-32040($gp)
    daddu      $a7,$t3,$a1
    ld         $a7,0($a7)
    and        $a7,$a7,$t2
    bnez       $a7, .L00010834
    nop
.L00010810:
    bne        $a6, $t1, .L0001082c
    ld         $t0,-32040($gp)
    daddu      $t0,$t3,$t0
    ld         $t0,0($t0)
    and        $t0,$t0,$t8
    bnez       $t0, .L00010834
    nop
.L0001082c:
    beqz       $a0, .L00010868
    nop
.L00010834:
    ld         $t3,-16360($zero)
    lui        $t8,0x1
    lw         $t2,1340($t3)
    ori        $t8,$t8,0x40
    or         $t2,$t2,$t8
    sw         $t2,1340($t3)
    ld         $t1,-16360($zero)
    lw         $t1,1340($t1)
    andi       $t1,$t1,0x800
    beqz       $t1, .L00010868
    nop
    jal        post_sig
    li         $a0,8
.L00010868:
    jal        store_fpcsr
    nop
    b          .L000108d4
    ld         $ra,16($sp)
.L00010878:
    lui        $t0,0x80
    beqz       $a0, .L00010908
    ld         $a6,-16360($zero)
    beqz       $t9, .L00010914
.L00010888:
    dsrl       $t1,$a7,0x1
    and        $a1,$a1,$t1
    beqz       $a5, .L000108a8
    dnegu      $a1,$a1
    li         $a5,-1
.L0001089c:
    dsrl       $a5,$a5,0x1
    and        $a2,$a2,$a5
    dnegu      $a2,$a2
.L000108a8:
    slt        $t1,$a1,$a2
.L000108ac:
    sllv       $a7,$t0,$a4
    beqz       $t1, .L000108dc
    lw         $a0,1340($a6)
    andi       $t2,$a3,0x4
    beqz       $t2, .L00010938
    or         $a1,$a0,$a7
    sw         $a1,1340($a6)
.L000108c8:
    jal        store_fpcsr
    nop
    ld         $ra,16($sp)
.L000108d4:
    jr         $ra
    daddiu     $sp,$sp,32
.L000108dc:
    bne        $a1, $a2, .L00010928
    or         $a4,$a0,$a7
    andi       $t3,$a3,0x2
    beqz       $t3, .L00010948
    nor        $v1,$a7,$zero
    b          .L000108c8
    sw         $a4,1340($a6)
.L000108f8:
    nor        $t9,$a7,$zero
    and        $t9,$a0,$t9
    b          .L000107e8
    sw         $t9,1340($a6)
.L00010908:
    dsll32     $a2,$a2,0x0
    bnez       $t9, .L00010888
    dsll32     $a1,$a1,0x0
.L00010914:
    ld         $ra,8($sp)
    bnez       $ra, .L0001089c
    li         $a5,-1
    b          .L000108ac
    slt        $t1,$a1,$a2
.L00010928:
    nor        $at,$a7,$zero
    and        $at,$a0,$at
    b          .L000108c8
    sw         $at,1340($a6)
.L00010938:
    nor        $v0,$a7,$zero
    and        $v0,$a0,$v0
    b          .L000108c8
    sw         $v0,1340($a6)
.L00010948:
    and        $v1,$a0,$v1
    b          .L000108c8
    sw         $v1,1340($a6)

glabel _nmadd_sd
    daddiu     $sp,$sp,-144
    sd         $a3,136($sp)
    sd         $a2,128($sp)
    sd         $a1,120($sp)
    ld         $t1,-16360($zero)
    sd         $a0,96($sp)
    li         $t2,-5
    lbu        $t0,1353($t1)
    daddiu     $a1,$sp,120
    daddiu     $a2,$sp,48
    sd         $ra,104($sp)
    daddiu     $a3,$sp,52
    and        $t0,$t0,$t2
    sb         $t0,1353($t1)
    daddiu     $a4,$sp,56
    daddiu     $v1,$sp,80
    sd         $v1,16($sp)
    daddiu     $a5,$sp,128
    daddiu     $v0,$sp,84
    sd         $v0,24($sp)
    daddiu     $at,$sp,88
    daddiu     $a6,$sp,136
    sd         $a6,8($sp)
    daddiu     $a7,$sp,72
    daddiu     $a6,$sp,64
    sd         $a7,0($sp)
    daddiu     $a7,$sp,68
    jal        breakout_and_test3_sd
    sd         $at,32($sp)
    beqz       $v0, .L000109dc
    ld         $a0,96($sp)
    ld         $ra,104($sp)
.L000109d4:
    jr         $ra
    daddiu     $sp,$sp,144
.L000109dc:
    ld         $a6,72($sp)
    lw         $a5,68($sp)
    lw         $a4,64($sp)
    ld         $a3,56($sp)
    lw         $a2,52($sp)
    lw         $a7,80($sp)
    lw         $a1,48($sp)
    lw         $t0,84($sp)
    sw         $t0,4($sp)
    ld         $t0,88($sp)
    xori       $a1,$a1,0x1
    sd         $t0,8($sp)
    jal        madd
    xori       $a7,$a7,0x1
    b          .L000109d4
    ld         $ra,104($sp)

glabel _madd_sd
    daddiu     $sp,$sp,-144
    sd         $a3,136($sp)
    sd         $a2,128($sp)
    sd         $a1,120($sp)
    ld         $t1,-16360($zero)
    sd         $a0,96($sp)
    li         $t2,-5
    lbu        $t0,1353($t1)
    daddiu     $a1,$sp,120
    daddiu     $a2,$sp,48
    sd         $ra,104($sp)
    daddiu     $a3,$sp,52
    and        $t0,$t0,$t2
    sb         $t0,1353($t1)
    daddiu     $a4,$sp,56
    daddiu     $v1,$sp,80
    sd         $v1,16($sp)
    daddiu     $a5,$sp,128
    daddiu     $v0,$sp,84
    sd         $v0,24($sp)
    daddiu     $at,$sp,88
    daddiu     $a6,$sp,136
    sd         $a6,8($sp)
    daddiu     $a7,$sp,72
    daddiu     $a6,$sp,64
    sd         $a7,0($sp)
    daddiu     $a7,$sp,68
    jal        breakout_and_test3_sd
    sd         $at,32($sp)
    beqz       $v0, .L00010aa4
    ld         $a0,96($sp)
    ld         $ra,104($sp)
.L00010a9c:
    jr         $ra
    daddiu     $sp,$sp,144
.L00010aa4:
    lw         $a7,80($sp)
    ld         $a6,72($sp)
    lw         $a5,68($sp)
    lw         $a4,64($sp)
    ld         $a3,56($sp)
    lw         $a2,52($sp)
    lw         $a1,48($sp)
    lw         $t8,84($sp)
    sw         $t8,4($sp)
    ld         $t3,88($sp)
    jal        madd
    sd         $t3,8($sp)
    b          .L00010a9c
    ld         $ra,104($sp)

glabel _sqrt_sd
    daddiu     $sp,$sp,-64
    sd         $s0,24($sp)
    move       $s0,$a0
    daddiu     $a4,$sp,8
    daddiu     $a3,$sp,4
    daddiu     $a2,$sp,0
    sd         $a1,56($sp)
    nop
    sd         $ra,32($sp)
    jal        breakout_and_test_sd
    daddiu     $a1,$sp,56
    bnez       $v0, .L00010bac
    daddiu     $at,$gp,0
    dsll       $a2,$s0,0x2
    lw         $a1,4($sp)
    daddu      $at,$a2,$at
    lw         $at,0($at)
    bne        $at, $a1, .L00010bbc
    lw         $v0,0($sp)
    beqz       $v0, .L00010d84
    move       $a0,$s0
    ld         $a1,-16360($zero)
    lui        $a2,0x1
    lw         $a0,1340($a1)
    ori        $a2,$a2,0x40
    or         $a0,$a0,$a2
    sw         $a0,1340($a1)
    ld         $v1,-16360($zero)
    lw         $v1,1340($v1)
    andi       $v1,$v1,0x800
    beqz       $v1, .L00010cdc
    ld         $a1,-32032($gp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00010bb0
    ld         $ra,32($sp)
.L00010b74:
    dsrl       $a2,$a5,0x3
    dsrl       $a3,$a5,0x2
    beqz       $a6, .L00010c9c
    dsll32     $a3,$a3,0x1f
    li         $a4,1
    dsll32     $a4,$a4,0x1e
    beqz       $s0, .L00010ca4
    or         $a3,$a3,$a4
.L00010b94:
    ld         $a6,-32008($gp)
.L00010b98:
    ld         $a5,16($sp)
    daddu      $a5,$a5,$a6
    ld         $a5,0($a5)
    jalr       $a5
    move       $a0,$t3
.L00010bac:
    ld         $ra,32($sp)
.L00010bb0:
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00010bbc:
    beqz       $a1, .L00010cb8
.L00010bc0:
    lw         $t3,0($sp)
    li         $a7,1
    beq        $t3, $a7, .L00010d00
    dsll       $a0,$s0,0x3
    sd         $a0,16($sp)
    beqz       $a1, .L00010d4c
    sd         $a2,40($sp)
    sd         $a0,16($sp)
    daddiu     $t2,$gp,0
    ld         $t0,-32016($gp)
    ld         $t1,8($sp)
    daddu      $t2,$a2,$t2
    lw         $t2,0($t2)
    daddu      $t0,$a0,$t0
    ld         $t0,0($t0)
    subu       $a1,$a1,$t2
    sw         $a1,4($sp)
    or         $t0,$t0,$t1
    sd         $t0,8($sp)
.L00010c0c:
    daddiu     $t1,$gp,0
    daddu      $t1,$a2,$t1
    andi       $t8,$a1,0x1
    sra        $a1,$a1,0x1
    lw         $t1,0($t1)
    li         $a5,1
    dsllv      $t0,$t0,$t8
    li         $t2,64
    dsrlv      $a6,$t0,$t1
    subu       $t2,$t2,$t1
    addiu      $t1,$t1,1
    sw         $a1,4($sp)
    move       $a2,$zero
    dsllv      $t0,$t0,$t2
    li         $t2,-4
    bltz       $t1, .L00010d44
    sd         $t0,8($sp)
    b          .L00010dc0
    addiu      $a2,$a2,1
.L00010c58:
    dsll       $a3,$a7,0x2
    ori        $a5,$a5,0x4
.L00010c60:
    dsrl32     $a6,$t0,0x1e
    slt        $a7,$t1,$a2
    addiu      $a2,$a2,1
    dsll       $t0,$t0,0x2
    sd         $t0,8($sp)
    bnez       $a7, .L00010b74
    or         $a6,$a3,$a6
    dsubu      $a7,$a6,$a5
.L00010c80:
    dsll       $t8,$a5,0x1
    and        $a5,$t2,$t8
    bgez       $a7, .L00010c58
    ori        $a5,$a5,0x1
    dsll       $a3,$a6,0x2
    b          .L00010c60
    nop
.L00010c9c:
    bnez       $s0, .L00010b98
    ld         $a6,-32008($gp)
.L00010ca4:
    dsrl32     $t9,$a3,0x3
    dsll       $a3,$a3,0x1d
    dsll       $a2,$a2,0x1d
    b          .L00010b94
    or         $a2,$t9,$a2
.L00010cb8:
    ld         $a3,8($sp)
    bnez       $a3, .L00010bc0
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,56($sp)
    jal        store_fpcsr
    nop
    b          .L00010bb0
    ld         $ra,32($sp)
.L00010cdc:
    dsll       $a2,$s0,0x3
    daddu      $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L00010bb0
    ld         $ra,32($sp)
.L00010d00:
    ld         $a5,-16360($zero)
    lui        $a6,0x1
    lw         $a4,1340($a5)
    ori        $a6,$a6,0x40
    or         $a4,$a4,$a6
    sw         $a4,1340($a5)
    ld         $a3,-16360($zero)
    lw         $a3,1340($a3)
    andi       $a3,$a3,0x800
    beqz       $a3, .L00010d9c
    ld         $a1,-32032($gp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00010bb0
    ld         $ra,32($sp)
.L00010d44:
    b          .L00010b74
    li         $a5,1
.L00010d4c:
    ld         $t0,-32024($gp)
    daddu      $a7,$a0,$t0
    ld         $a7,0($a7)
    jalr       $a7
    daddiu     $a0,$sp,8
    ld         $a2,40($sp)
    daddiu     $a1,$gp,0
    lw         $t3,0($sp)
    daddu      $a1,$a2,$a1
    lw         $a1,0($a1)
    ld         $t0,8($sp)
    subu       $a1,$a1,$v0
    b          .L00010c0c
    sw         $a1,4($sp)
.L00010d84:
    jal        fpstore_sd
    ld         $a1,56($sp)
    jal        store_fpcsr
    nop
    b          .L00010bb0
    ld         $ra,32($sp)
.L00010d9c:
    dsll       $a2,$s0,0x3
    daddu      $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L00010bb0
    ld         $ra,32($sp)
.L00010dc0:
    b          .L00010c80
    dsubu      $a7,$a6,$a5

glabel _msub_sd
    daddiu     $sp,$sp,-144
    sd         $a3,136($sp)
    sd         $a2,128($sp)
    sd         $a1,120($sp)
    ld         $t1,-16360($zero)
    sd         $a0,96($sp)
    li         $t2,-5
    lbu        $t0,1353($t1)
    daddiu     $a1,$sp,120
    daddiu     $a2,$sp,48
    sd         $ra,104($sp)
    daddiu     $a3,$sp,52
    and        $t0,$t0,$t2
    sb         $t0,1353($t1)
    daddiu     $a4,$sp,56
    daddiu     $v1,$sp,80
    sd         $v1,16($sp)
    daddiu     $a5,$sp,128
    daddiu     $v0,$sp,84
    sd         $v0,24($sp)
    daddiu     $at,$sp,88
    daddiu     $a6,$sp,136
    sd         $a6,8($sp)
    daddiu     $a7,$sp,72
    daddiu     $a6,$sp,64
    sd         $a7,0($sp)
    daddiu     $a7,$sp,68
    jal        breakout_and_test3_sd
    sd         $at,32($sp)
    beqz       $v0, .L00010e50
    ld         $a0,96($sp)
    ld         $ra,104($sp)
.L00010e48:
    jr         $ra
    daddiu     $sp,$sp,144
.L00010e50:
    ld         $a6,72($sp)
    lw         $a5,68($sp)
    lw         $a4,64($sp)
    ld         $a3,56($sp)
    lw         $a2,52($sp)
    lw         $a1,48($sp)
    lw         $a7,80($sp)
    lw         $t0,84($sp)
    sw         $t0,4($sp)
    ld         $t3,88($sp)
    xori       $a7,$a7,0x1
    jal        madd
    sd         $t3,8($sp)
    b          .L00010e48
    ld         $ra,104($sp)

glabel _cvts_d
    daddiu     $sp,$sp,-48
    sd         $a0,32($sp)
    li         $a0,1
    daddiu     $a1,$sp,32
    daddiu     $a2,$sp,0
    daddiu     $a3,$sp,4
    sd         $ra,16($sp)
    jal        breakout_sd
    daddiu     $a4,$sp,8
    lw         $a1,4($sp)
    li         $at,2047
    ld         $a2,8($sp)
    li         $a4,1
    beq        $a1, $at, .L00010ef4
    dsll32     $a0,$a4,0x14
    beqz       $a1, .L00010f4c
    addiu      $a1,$a1,-1023
    sw         $a1,4($sp)
    or         $a2,$a2,$a0
    sd         $a2,8($sp)
.L00010edc:
    lw         $a0,0($sp)
    jal        round_s
    move       $a3,$zero
    ld         $ra,16($sp)
.L00010eec:
    jr         $ra
    daddiu     $sp,$sp,48
.L00010ef4:
    li         $v0,1
    dsll32     $v0,$v0,0x13
    and        $v0,$a2,$v0
    beqz       $v0, .L00010f70
    nop
    ld         $a1,-16360($zero)
    lui        $a2,0x1
    lw         $a0,1340($a1)
    ori        $a2,$a2,0x40
    or         $a0,$a0,$a2
    sw         $a0,1340($a1)
    ld         $a4,-16360($zero)
    lw         $v1,1340($a4)
    andi       $v1,$v1,0x800
    beqz       $v1, .L00010fbc
    lui        $a0,0x7fbf
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00010eec
    ld         $ra,16($sp)
.L00010f4c:
    beqz       $a2, .L00010fe0
    nop
    jal        renorm_d
    daddiu     $a0,$sp,8
    ld         $a2,8($sp)
    li         $a1,-1022
    subu       $a1,$a1,$v0
    b          .L00010edc
    sw         $a1,4($sp)
.L00010f70:
    beqz       $a2, .L00011018
    lwu        $a0,0($sp)
    dsrl       $a2,$a2,0x1d
    beqz       $a2, .L0001100c
    sd         $a2,8($sp)
    lui        $a1,0x7f80
    lwu        $a0,0($sp)
    dsll       $a0,$a0,0x1f
    or         $a0,$a2,$a0
    or         $a0,$a0,$a1
.L00010f98:
    ld         $a1,-16360($zero)
    lbu        $a2,1353($a1)
    lbu        $a1,1354($a1)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00010eec
    ld         $ra,16($sp)
.L00010fbc:
    lbu        $a2,1353($a4)
    ori        $a0,$a0,0xffff
    lbu        $a1,1354($a4)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00010eec
    ld         $ra,16($sp)
.L00010fe0:
    ld         $a1,-16360($zero)
    lwu        $a0,0($sp)
    lbu        $a2,1353($a1)
    dsll       $a0,$a0,0x1f
    lbu        $a1,1354($a1)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00010eec
    ld         $ra,16($sp)
.L0001100c:
    lui        $a0,0x7fbf
    b          .L00010f98
    ori        $a0,$a0,0xffff
.L00011018:
    ld         $a1,-16360($zero)
    dsll       $a0,$a0,0x1f
    lui        $a3,0x7f80
    lbu        $a2,1353($a1)
    or         $a0,$a0,$a3
    lbu        $a1,1354($a1)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00010eec
    ld         $ra,16($sp)

glabel checkfp
    daddiu     $sp,$sp,-48
    sd         $ra,32($sp)
    sd         $a0,16($sp)
    jal        splhi
    sd         $a1,24($sp)
    sd         $v0,8($sp)
    ld         $v0,-15264($zero)
    ld         $a0,16($sp)
    ld         $a1,24($sp)
    beqz       $v0, .L00011210
    nop
    bne        $a0, $v0, .L00011210
    li         $at,1
    beq        $a1, $at, .L000111e4
    nop
    ld         $t0,792($a0)
    ld         $a3,992($a0)
    lb         $t0,156($t0)
    andi       $t0,$t0,0xc
    beqz       $t0, .L000110a8
    nop
    lui        $t0,0x400
.L000110a8:
    mfc0       $v1,$12
    lui        $at,0x2000
    or         $v0,$v1,$at
    or         $v0,$v0,$t0
    mtc0       $v0,$12
    li         $at,2
    beq        $a1, $at, .L000110d0
    nop
    cfc1       $v0,c1_fcsr
    sw         $v0,304($a3)
.L000110d0:
    bnez       $t0, .L0001115c
    nop
    swc1       $f31,292($a3)
    swc1       $f30,284($a3)
    swc1       $f29,276($a3)
    swc1       $f28,268($a3)
    swc1       $f27,260($a3)
    swc1       $f26,252($a3)
    swc1       $f25,244($a3)
    swc1       $f24,236($a3)
    swc1       $f23,228($a3)
    swc1       $f22,220($a3)
    swc1       $f21,212($a3)
    swc1       $f20,204($a3)
    swc1       $f19,196($a3)
    swc1       $f18,188($a3)
    swc1       $f17,180($a3)
    swc1       $f16,172($a3)
    swc1       $f15,164($a3)
    swc1       $f14,156($a3)
    swc1       $f13,148($a3)
    swc1       $f12,140($a3)
    swc1       $f11,132($a3)
    swc1       $f10,124($a3)
    swc1       $f9,116($a3)
    swc1       $f8,108($a3)
    swc1       $f7,100($a3)
    swc1       $f6,92($a3)
    swc1       $f5,84($a3)
    swc1       $f4,76($a3)
    swc1       $f3,68($a3)
    swc1       $f2,60($a3)
    swc1       $f1,52($a3)
    b          .L000111dc
    swc1       $f0,44($a3)
.L0001115c:
    sdc1       $f31,288($a3)
    sdc1       $f30,280($a3)
    sdc1       $f29,272($a3)
    sdc1       $f28,264($a3)
    sdc1       $f27,256($a3)
    sdc1       $f26,248($a3)
    sdc1       $f25,240($a3)
    sdc1       $f24,232($a3)
    sdc1       $f23,224($a3)
    sdc1       $f22,216($a3)
    sdc1       $f21,208($a3)
    sdc1       $f20,200($a3)
    sdc1       $f19,192($a3)
    sdc1       $f18,184($a3)
    sdc1       $f17,176($a3)
    sdc1       $f16,168($a3)
    sdc1       $f15,160($a3)
    sdc1       $f14,152($a3)
    sdc1       $f13,144($a3)
    sdc1       $f12,136($a3)
    sdc1       $f11,128($a3)
    sdc1       $f10,120($a3)
    sdc1       $f9,112($a3)
    sdc1       $f8,104($a3)
    sdc1       $f7,96($a3)
    sdc1       $f6,88($a3)
    sdc1       $f5,80($a3)
    sdc1       $f4,72($a3)
    sdc1       $f3,64($a3)
    sdc1       $f2,56($a3)
    sdc1       $f1,48($a3)
    sdc1       $f0,40($a3)
.L000111dc:
    ctc1       $zero,c1_fcsr
    mtc0       $v1,$12
.L000111e4:
    ld         $t1,-16360($zero)
    sd         $zero,-15264($zero)
    beqz       $t1, .L00011210
    nop
    ld         $t1,992($t1)
    lui        $at,0xdfff
    ori        $at,$at,0xffff
    ld         $a1,608($t1)
    daddiu     $t1,$t1,360
    and        $a1,$a1,$at
    sd         $a1,248($t1)
.L00011210:
    jal        splx
    ld         $a0,8($sp)
    ld         $ra,32($sp)
    daddiu     $sp,$sp,48
    jr         $ra
    nop

glabel fpunit_fpstore_s
    lui        $at,0x0
    daddiu     $at,$at,0
    sll        $v0,$a1,0x3
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,4424
    daddu      $at,$at,$v0
    ld         $v0,0($at)
    jr         $v0
    nop
.L0001125c:
    mtc1       $a0,$f0
    jr         $ra
    nop
.L00011268:
    mtc1       $a0,$f1
    jr         $ra
    nop
.L00011274:
    mtc1       $a0,$f2
    jr         $ra
    nop
.L00011280:
    mtc1       $a0,$f3
    jr         $ra
    nop
.L0001128c:
    mtc1       $a0,$f4
    jr         $ra
    nop
.L00011298:
    mtc1       $a0,$f5
    jr         $ra
    nop
.L000112a4:
    mtc1       $a0,$f6
    jr         $ra
    nop
.L000112b0:
    mtc1       $a0,$f7
    jr         $ra
    nop
.L000112bc:
    mtc1       $a0,$f8
    jr         $ra
    nop
.L000112c8:
    mtc1       $a0,$f9
    jr         $ra
    nop
.L000112d4:
    mtc1       $a0,$f10
    jr         $ra
    nop
.L000112e0:
    mtc1       $a0,$f11
    jr         $ra
    nop
.L000112ec:
    mtc1       $a0,$f12
    jr         $ra
    nop
.L000112f8:
    mtc1       $a0,$f13
    jr         $ra
    nop
.L00011304:
    mtc1       $a0,$f14
    jr         $ra
    nop
.L00011310:
    mtc1       $a0,$f15
    jr         $ra
    nop
.L0001131c:
    mtc1       $a0,$f16
    jr         $ra
    nop
.L00011328:
    mtc1       $a0,$f17
    jr         $ra
    nop
.L00011334:
    mtc1       $a0,$f18
    jr         $ra
    nop
.L00011340:
    mtc1       $a0,$f19
    jr         $ra
    nop
.L0001134c:
    mtc1       $a0,$f20
    jr         $ra
    nop
.L00011358:
    mtc1       $a0,$f21
    jr         $ra
    nop
.L00011364:
    mtc1       $a0,$f22
    jr         $ra
    nop
.L00011370:
    mtc1       $a0,$f23
    jr         $ra
    nop
.L0001137c:
    mtc1       $a0,$f24
    jr         $ra
    nop
.L00011388:
    mtc1       $a0,$f25
    jr         $ra
    nop
.L00011394:
    mtc1       $a0,$f26
    jr         $ra
    nop
.L000113a0:
    mtc1       $a0,$f27
    jr         $ra
    nop
.L000113ac:
    mtc1       $a0,$f28
    jr         $ra
    nop
.L000113b8:
    mtc1       $a0,$f29
    jr         $ra
    nop
.L000113c4:
    mtc1       $a0,$f30
    jr         $ra
    nop
.L000113d0:
    mtc1       $a0,$f31
    jr         $ra
    nop
    nop

glabel fpunit_fpstore_d
    bnez       $a2, .L00011414
    sll        $v0,$a1,0x3
    lui        $at,0x0
    daddiu     $at,$at,0
    srl        $v0,$v0,0x1
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,4680
    daddu      $at,$at,$v0
    ld         $v0,0($at)
    jr         $v0
    nop
.L00011414:
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,4808
    daddu      $at,$at,$v0
    ld         $v0,0($at)
    jr         $v0
    nop
.L0001143c:
    mtc1       $a0,$f0
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f1
    jr         $ra
    nop
.L00011450:
    mtc1       $a0,$f2
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f3
    jr         $ra
    nop
.L00011464:
    mtc1       $a0,$f4
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f5
    jr         $ra
    nop
.L00011478:
    mtc1       $a0,$f6
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f7
    jr         $ra
    nop
.L0001148c:
    mtc1       $a0,$f8
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f9
    jr         $ra
    nop
.L000114a0:
    mtc1       $a0,$f10
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f11
    jr         $ra
    nop
.L000114b4:
    mtc1       $a0,$f12
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f13
    jr         $ra
    nop
.L000114c8:
    mtc1       $a0,$f14
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f15
    jr         $ra
    nop
.L000114dc:
    mtc1       $a0,$f16
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f17
    jr         $ra
    nop
.L000114f0:
    mtc1       $a0,$f18
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f19
    jr         $ra
    nop
.L00011504:
    mtc1       $a0,$f20
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f21
    jr         $ra
    nop
.L00011518:
    mtc1       $a0,$f22
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f23
    jr         $ra
    nop
.L0001152c:
    mtc1       $a0,$f24
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f25
    jr         $ra
    nop
.L00011540:
    mtc1       $a0,$f26
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f27
    jr         $ra
    nop
.L00011554:
    mtc1       $a0,$f28
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f29
    jr         $ra
    nop
.L00011568:
    mtc1       $a0,$f30
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f31
    jr         $ra
    nop
.L0001157c:
    dmtc1      $a0,$f0
    jr         $ra
    nop
.L00011588:
    dmtc1      $a0,$f1
    jr         $ra
    nop
.L00011594:
    dmtc1      $a0,$f2
    jr         $ra
    nop
.L000115a0:
    dmtc1      $a0,$f3
    jr         $ra
    nop
.L000115ac:
    dmtc1      $a0,$f4
    jr         $ra
    nop
.L000115b8:
    dmtc1      $a0,$f5
    jr         $ra
    nop
.L000115c4:
    dmtc1      $a0,$f6
    jr         $ra
    nop
.L000115d0:
    dmtc1      $a0,$f7
    jr         $ra
    nop
.L000115dc:
    dmtc1      $a0,$f8
    jr         $ra
    nop
.L000115e8:
    dmtc1      $a0,$f9
    jr         $ra
    nop
.L000115f4:
    dmtc1      $a0,$f10
    jr         $ra
    nop
.L00011600:
    dmtc1      $a0,$f11
    jr         $ra
    nop
.L0001160c:
    dmtc1      $a0,$f12
    jr         $ra
    nop
.L00011618:
    dmtc1      $a0,$f13
    jr         $ra
    nop
.L00011624:
    dmtc1      $a0,$f14
    jr         $ra
    nop
.L00011630:
    dmtc1      $a0,$f15
    jr         $ra
    nop
.L0001163c:
    dmtc1      $a0,$f16
    jr         $ra
    nop
.L00011648:
    dmtc1      $a0,$f17
    jr         $ra
    nop
.L00011654:
    dmtc1      $a0,$f18
    jr         $ra
    nop
.L00011660:
    dmtc1      $a0,$f19
    jr         $ra
    nop
.L0001166c:
    dmtc1      $a0,$f20
    jr         $ra
    nop
.L00011678:
    dmtc1      $a0,$f21
    jr         $ra
    nop
.L00011684:
    dmtc1      $a0,$f22
    jr         $ra
    nop
.L00011690:
    dmtc1      $a0,$f23
    jr         $ra
    nop
.L0001169c:
    dmtc1      $a0,$f24
    jr         $ra
    nop
.L000116a8:
    dmtc1      $a0,$f25
    jr         $ra
    nop
.L000116b4:
    dmtc1      $a0,$f26
    jr         $ra
    nop
.L000116c0:
    dmtc1      $a0,$f27
    jr         $ra
    nop
.L000116cc:
    dmtc1      $a0,$f28
    jr         $ra
    nop
.L000116d8:
    dmtc1      $a0,$f29
    jr         $ra
    nop
.L000116e4:
    dmtc1      $a0,$f30
    jr         $ra
    nop
.L000116f0:
    dmtc1      $a0,$f31
    jr         $ra
    nop
    nop

glabel longway
    lb         $k0,-16305($zero)
    beqz       $k0, .L00011810
    addi       $k0,$k0,-1
    beqz       $k0, .L000117a8
    addi       $k0,$k0,-3
    bnezl      $k0, .L00011724
    addi       $k0,$k0,2
    j          keruliframe
    nop
.L00011724:
    bnez       $k0, .L00011750
    daddiu     $k0,$sp,-360
    ori        $k0,$k0,0x7
    xori       $k0,$k0,0x7
    sd         $sp,224($k0)
    move       $sp,$k0
    sd         $k1,208($k0)
    move       $k1,$k0
    sd         $gp,216($k0)
    j          ecommon
    li         $k0,256
.L00011750:
    daddiu     $k0,$sp,-360
    ori        $k0,$k0,0x7
    xori       $k0,$k0,0x7
    sd         $sp,224($k0)
    move       $sp,$k0
    sd         $k1,208($k0)
    move       $k1,$k0
    sd         $gp,216($k0)
    j          ecommon
    li         $k0,256
    move       $a3,$sp
    ld         $sp,-15424($zero)
    mfc0       $a0,$12
    li         $at,-4
    and        $a0,$a0,$at
    mtc0       $a0,$12
    nop
    dmfc0      $a0,$14
    mfc0       $a1,$13
    move       $a2,$k1
    jal        idle_err
    nop
.L000117a8:
    lui        $k0,0x0
    daddiu     $k0,$k0,0
    dsll       $k0,$k0,0x10
    daddiu     $k0,$k0,0
    dsll       $k0,$k0,0x10
    daddiu     $k0,$k0,0
    lw         $k0,0($k0)
    bnez       $k0, .L000117e8
    nop
    ld         $k0,-16352($zero)
    beqz       $k0, .L000117e8
    nop
    ld         $k0,224($k0)
    sltu       $at,$k0,$sp
    beqz       $at, .L00011854
    nop
.L000117e8:
    daddiu     $k0,$sp,-360
    ori        $k0,$k0,0x7
    xori       $k0,$k0,0x7
    sd         $sp,224($k0)
    move       $sp,$k0
    sd         $k1,208($k0)
    move       $k1,$k0
    sd         $gp,216($k0)
    j          ecommon
    li         $k0,256
.L00011810:
    ld         $k0,-16360($zero)
    ld         $k0,992($k0)
    daddiu     $k0,$k0,360
    sd         $k1,208($k0)
    move       $k1,$k0
    li         $k0,1
    sd         $gp,216($k1)
    lui        $gp,0x0
    sd         $sp,224($k1)
    daddiu     $gp,$gp,0
    li         $sp,-16528
    sb         $k0,-16305($zero)
    dsll       $gp,$gp,0x10
    daddiu     $gp,$gp,0
    dsll       $gp,$gp,0x10
    j          ecommon
    daddiu     $gp,$gp,0

glabel stkovflw
.L00011854:
    lui        $a0,0x0
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    b          .L000118e0
    daddiu     $a0,$a0,7600

glabel stkundflw
    lui        $a0,0x0
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    b          .L000118e0
    daddiu     $a0,$a0,7656

glabel stkscr1
    lui        $a0,0x0
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    b          .L000118e0
    daddiu     $a0,$a0,7713

glabel stkscr2
    lui        $a0,0x0
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    b          .L000118e0
    daddiu     $a0,$a0,7778

glabel stkscr3
    lui        $a0,0x0
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    b          .L000118e0
    daddiu     $a0,$a0,7843
.L000118e0:
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    sw         $sp,0($at)
    dmfc0      $a1,$14
    li         $k0,3
    lb         $s1,-16305($zero)
    move       $a2,$sp
    ld         $sp,-15424($zero)
    sb         $k0,-16305($zero)
    move       $s0,$ra
    jal        printf
    move       $a3,$k1
    lui        $a0,0x0
    move       $a1,$s0
    daddiu     $a0,$a0,0
    move       $a2,$s1
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    jal        printf
    daddiu     $a0,$a0,7908
    mfc0       $a0,$12
    lui        $k0,0x1
    ori        $k0,$k0,0x4
    and        $a0,$k0,$a0
    ori        $a0,$a0,0xa1
    mtc0       $a0,$12
    lui        $a0,0x0
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    daddiu     $a0,$a0,0
    dsll       $a0,$a0,0x10
    jal        panic
    daddiu     $a0,$a0,7928
    j          _baduk
    nop

glabel _cvtd_s
    daddiu     $sp,$sp,-48
    daddiu     $a1,$sp,32
    daddiu     $a2,$sp,0
    daddiu     $a3,$sp,4
    daddiu     $a4,$sp,8
    sd         $a0,32($sp)
    sd         $ra,16($sp)
    jal        breakout_sd
    move       $a0,$zero
    lw         $a4,4($sp)
    li         $at,255
    beq        $a4, $at, .L00011a04
    ld         $a5,8($sp)
    beqz       $a4, .L00011a50
    addiu      $a4,$a4,-127
    sw         $a4,4($sp)
.L000119c0:
    ld         $a1,-16360($zero)
    dsll       $a5,$a5,0x1d
    addiu      $a3,$a4,1023
    lw         $a0,0($sp)
    dsll32     $a3,$a3,0x14
    lbu        $a2,1353($a1)
    dsll32     $a0,$a0,0x1f
    or         $a0,$a0,$a5
    andi       $a2,$a2,0x20
    lbu        $a1,1354($a1)
    jal        fpstore_d
    or         $a0,$a0,$a3
    jal        store_fpcsr
    nop
    ld         $ra,16($sp)
.L000119fc:
    jr         $ra
    daddiu     $sp,$sp,48
.L00011a04:
    dsll32     $a4,$a5,0x9
    ld         $a3,-16360($zero)
    bgez       $a4, .L00011a84
    lui        $a1,0x1
    lw         $a6,1340($a3)
    ori        $a7,$a1,0x40
    or         $a6,$a6,$a7
    sw         $a6,1340($a3)
    ld         $a4,-16360($zero)
    lw         $a5,1340($a4)
    andi       $a5,$a5,0x800
    beqz       $a5, .L00011ac4
    nop
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L000119fc
    ld         $ra,16($sp)
.L00011a50:
    beqz       $a5, .L00011ae8
    nop
    jal        renorm_s
    daddiu     $a0,$sp,8
    li         $a4,-126
    ld         $a5,8($sp)
    lui        $a6,0x80
    subu       $a4,$a4,$v0
    sw         $a4,4($sp)
    nor        $a6,$a6,$zero
    and        $a5,$a5,$a6
    b          .L000119c0
    sd         $a5,8($sp)
.L00011a84:
    li         $a4,2047
    lbu        $a2,1353($a3)
    dsll32     $a4,$a4,0x14
    lw         $a6,0($sp)
    lbu        $a1,1354($a3)
    andi       $a2,$a2,0x20
    beqz       $a5, .L00011b14
    dsll32     $a6,$a6,0x1f
    dsll       $a0,$a5,0x1d
    or         $a0,$a6,$a0
    jal        fpstore_d
    or         $a0,$a4,$a0
    jal        store_fpcsr
    nop
    b          .L000119fc
    ld         $ra,16($sp)
.L00011ac4:
    lbu        $a2,1353($a4)
    lbu        $a1,1354($a4)
    ld         $a0,-32464($gp)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L000119fc
    ld         $ra,16($sp)
.L00011ae8:
    ld         $a1,-16360($zero)
    lw         $a0,0($sp)
    lbu        $a2,1353($a1)
    dsll32     $a0,$a0,0x1f
    lbu        $a1,1354($a1)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L000119fc
    ld         $ra,16($sp)
.L00011b14:
    jal        fpstore_d
    or         $a0,$a6,$a4
    jal        store_fpcsr
    nop
    b          .L000119fc
    ld         $ra,16($sp)

glabel round_w
    li         $at,-1
    dsrl       $at,$at,0x1
    li         $a4,-1
    and        $at,$a2,$at
    li         $a5,1
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    beqz       $at, .L00011b60
    move       $s0,$a1
    dsll32     $a3,$a5,0x1e
    dsll32     $a6,$a4,0x1f
    and        $a2,$a2,$a6
    or         $a2,$a2,$a3
.L00011b60:
    dsll32     $t2,$a0,0x0
    andi       $t3,$s0,0x1
    dsll       $t3,$t3,0x2
    dsrl32     $a7,$a2,0x1e
    ld         $a4,-16360($zero)
    dsrl32     $t0,$a2,0x1f
    daddu      $t0,$t0,$t0
    andi       $a7,$a7,0x1
    lbu        $t1,1352($a4)
    dsrl       $t2,$t2,0x1d
    daddu      $a7,$a7,$t0
    ld         $t0,-32000($gp)
    daddu      $t2,$t2,$t3
    dsll       $t1,$t1,0x4
    daddu      $a7,$a7,$t2
    daddu      $t0,$t0,$t1
    daddu      $a7,$a7,$t0
    lui        $a5,0x7fff
    lb         $a7,0($a7)
    lui        $a1,0x8000
    ori        $a6,$a5,0xffff
    beqz       $a0, .L00011bc0
    daddu      $s0,$a7,$s0
    dnegu      $s0,$s0
.L00011bc0:
    slt        $t0,$s0,$a1
    slt        $a6,$a6,$s0
    lui        $a0,0x1
    sd         $ra,8($sp)
    bnez       $t0, .L00011be0
    ori        $t1,$a0,0x40
    beqz       $a6, .L00011c1c
    nop
.L00011be0:
    lw         $t0,1340($a4)
    or         $t0,$t0,$t1
    sw         $t0,1340($a4)
    ld         $a4,-16360($zero)
    lw         $a7,1340($a4)
    andi       $a7,$a7,0x800
    beqz       $a7, .L00011c74
    lui        $a0,0x7fff
    jal        post_sig
    li         $a0,8
.L00011c08:
    jal        store_fpcsr
    ld         $s0,0($sp)
    ld         $ra,8($sp)
.L00011c14:
    jr         $ra
    daddiu     $sp,$sp,16
.L00011c1c:
    beqz       $a2, .L00011c50
    nop
    lw         $t3,1340($a4)
    ori        $t3,$t3,0x1004
    sw         $t3,1340($a4)
    ld         $a4,-16360($zero)
    lw         $t2,1340($a4)
    andi       $t2,$t2,0x80
    beqz       $t2, .L00011c50
    nop
    jal        post_sig
    li         $a0,8
    ld         $a4,-16360($zero)
.L00011c50:
    lbu        $a2,1353($a4)
    move       $a0,$s0
    lbu        $a1,1354($a4)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    ld         $s0,0($sp)
    b          .L00011c14
    ld         $ra,8($sp)
.L00011c74:
    lbu        $a2,1353($a4)
    ori        $a0,$a0,0xffff
    lbu        $a1,1354($a4)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    b          .L00011c08
    nop

glabel round_s
    daddiu     $sp,$sp,-112
    sd         $s0,16($sp)
    sd         $s3,0($sp)
    li         $a6,-1
    move       $s3,$a0
    sd         $s2,8($sp)
    dsrl       $a6,$a6,0x1
    move       $s2,$a1
    sd         $s5,32($sp)
    and        $at,$a6,$a3
    move       $s5,$a1
    move       $s0,$a2
    sd         $s1,24($sp)
    move       $s1,$a3
    beqz       $at, .L00011ce8
    sd         $s8,64($sp)
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$a3,$t9
    or         $s1,$s1,$t8
.L00011ce8:
    dsll32     $t8,$s0,0x3
    dsrl       $s1,$s1,0x1d
    or         $s1,$s1,$t8
    and        $at,$a6,$s1
    dsrl       $s8,$s0,0x1d
    beqz       $at, .L00011d1c
    sd         $s4,56($sp)
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L00011d1c:
    sd         $s6,40($sp)
    sd         $ra,48($sp)
    ld         $a5,-16360($zero)
    slti       $at,$s2,-150
    sd         $s7,72($sp)
    move       $s4,$s1
    beqz       $at, .L00011ea0
    lbu        $a1,1352($a5)
    lbu        $v0,1353($a5)
    andi       $v0,$v0,0x2
    beqz       $v0, .L00012188
.L00011d48:
    dsll       $v1,$a1,0x4
    dsll32     $s6,$s3,0x0
    ld         $a0,-31992($gp)
    dsrl       $s6,$s6,0x1d
    daddu      $v1,$s6,$v1
    daddu      $v1,$v1,$a0
    lb         $v1,0($v1)
    lui        $s0,0x80
    sltiu      $v1,$v1,1
    movn       $s0,$zero,$v1
.L00011d70:
    lw         $t9,1340($a5)
.L00011d74:
    ori        $t9,$t9,0x2008
    sw         $t9,1340($a5)
    ld         $a5,-16360($zero)
    lw         $a0,1340($a5)
    andi       $t8,$a0,0x100
    beqz       $t8, .L00011f54
    ori        $v1,$a0,0x1004
    jal        post_sig
    li         $a0,8
    andi       $a6,$s8,0x1
    dsll       $a6,$a6,0x2
    ld         $a5,-16360($zero)
    dsrl32     $t1,$s4,0x1e
    daddu      $a6,$s6,$a6
    dsrl32     $t2,$s4,0x1f
    lbu        $t0,1352($a5)
    andi       $t1,$t1,0x1
    daddu      $t2,$t2,$t2
    ld         $a7,-32000($gp)
    daddu      $t1,$t1,$t2
    dsll       $t0,$t0,0x4
    daddu      $a6,$a6,$t1
    daddu      $a7,$a7,$t0
    daddu      $a6,$a6,$a7
    lb         $a6,0($a6)
    dsll32     $a6,$a6,0x0
    dsrl32     $a6,$a6,0x0
    daddu      $a6,$a6,$s8
    dsll32     $ra,$a6,0x7
    addiu      $a0,$s2,192
    bgez       $ra, .L000121f4
    move       $a7,$a0
    addiu      $a7,$s2,193
    beqz       $s4, .L00011e10
    dsrl       $a6,$a6,0x1
.L00011e00:
    lw         $t0,1340($a5)
    ori        $t0,$t0,0x1004
    sw         $t0,1340($a5)
    ld         $a5,-16360($zero)
.L00011e10:
    lbu        $a3,1353($a5)
.L00011e14:
    andi       $t1,$a3,0x4
    beqz       $t1, .L00011e68
    andi       $a2,$a3,0x20
    dsll32     $a0,$s3,0x0
    lui        $a4,0x80
    addiu      $a3,$a7,127
    nor        $a4,$a4,$zero
    dsll       $a3,$a3,0x17
    and        $a4,$a6,$a4
    dsrl       $a0,$a0,0x1
    or         $a3,$a3,$a4
    lbu        $a1,1354($a5)
    jal        fpstore_s
    or         $a0,$a0,$a3
    ld         $a6,-16360($zero)
    sll        $a5,$s3,0x1f
    dsll32     $a5,$a5,0x0
    ld         $a6,992($a6)
    dsrl32     $a5,$a5,0x0
    or         $a5,$a5,$s0
    sd         $a5,296($a6)
.L00011e68:
    jal        store_fpcsr
    nop
    ld         $s3,0($sp)
.L00011e74:
    ld         $s2,8($sp)
    ld         $s6,40($sp)
    ld         $s4,56($sp)
    ld         $s8,64($sp)
    ld         $s0,16($sp)
    ld         $ra,48($sp)
    ld         $s1,24($sp)
    ld         $s5,32($sp)
    ld         $s7,72($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00011ea0:
    slti       $a7,$s2,-126
    beqz       $a7, .L00011fbc
    li         $a2,-127
    li         $s1,-126
    subu       $s1,$s1,$s2
    dsrlv      $s0,$s8,$s1
    lbu        $t9,1353($a5)
    dsrlv      $s1,$s4,$s1
    addiu      $t8,$s2,190
    andi       $t9,$t9,0x2
    dsllv      $t8,$s8,$t8
    beqz       $t9, .L00012260
    or         $s1,$s1,$t8
    lui        $t8,0x7f
    ori        $t8,$t8,0xffff
    sltu       $t8,$s0,$t8
    bnez       $t8, .L00011d48
    dsll32     $s6,$s3,0x0
    dsrl32     $a0,$s1,0x1f
    dsll       $v0,$a0,0x2
    dsrl32     $ra,$s1,0x1e
    dsll       $a2,$s1,0x2
    andi       $ra,$ra,0x1
    sltu       $t9,$zero,$a2
    daddu      $ra,$ra,$ra
    dsrl       $s6,$s6,0x1d
    daddu      $t9,$t9,$ra
    ld         $ra,-31992($gp)
    dsll       $at,$a1,0x4
    daddu      $v0,$s6,$v0
    daddu      $t9,$t9,$v0
    daddu      $ra,$ra,$at
    daddu      $t9,$t9,$ra
    lb         $t9,0($t9)
    lui        $s0,0x80
    sltiu      $t9,$t9,1
    beqz       $a0, .L00011d70
    movn       $s0,$zero,$t9
    li         $a1,1
    beq        $a1, $a0, .L00012404
    sltiu      $at,$s0,1
.L00011f44:
    beq        $at, $a1, .L00011d70
    nop
    lw         $a0,1340($a5)
    ori        $v1,$a0,0x1004
.L00011f54:
    sw         $v1,1340($a5)
    ld         $a5,-16360($zero)
    lw         $v0,1340($a5)
    andi       $v0,$v0,0x80
    beqz       $v0, .L00011f78
    nop
    jal        post_sig
    li         $a0,8
    ld         $a5,-16360($zero)
.L00011f78:
    lbu        $a3,1353($a5)
    andi       $a0,$a3,0x4
    bnez       $a0, .L00011f94
    sll        $a0,$s3,0x1f
    andi       $a1,$a3,0x8
    bnez       $a1, .L00011fac
    sll        $a0,$s3,0x1f
.L00011f94:
    dsll32     $a0,$a0,0x0
    andi       $a2,$a3,0x20
    dsrl32     $a0,$a0,0x0
    lbu        $a1,1354($a5)
    jal        fpstore_s
    or         $a0,$a0,$s0
.L00011fac:
    jal        store_fpcsr
    nop
    b          .L00011e74
    ld         $s3,0($sp)
.L00011fbc:
    and        $a3,$a6,$s1
    beqz       $a3, .L00011fe0
    sltu       $a0,$zero,$s1
    li         $s1,-1
    dsll32     $s1,$s1,0x1f
    li         $t8,1
    and        $s1,$s4,$s1
    dsll32     $t8,$t8,0x1e
    or         $s1,$s1,$t8
.L00011fe0:
    dsll       $ra,$a1,0x4
    dsrl32     $t9,$s1,0x1e
    dsrl32     $at,$s1,0x1f
    dsll32     $a3,$s3,0x0
    andi       $t8,$s8,0x1
    dsll       $t8,$t8,0x2
    dsrl       $s6,$a3,0x1d
    ld         $s0,-32000($gp)
    daddu      $at,$at,$at
    andi       $t9,$t9,0x1
    daddu      $t9,$t9,$at
    daddu      $t8,$s6,$t8
    daddu      $s0,$s0,$ra
    daddu      $t8,$t8,$t9
    daddu      $s0,$s0,$t8
    lb         $s0,0($s0)
    dsrl32     $a3,$a3,0x0
    dsll32     $s0,$s0,0x0
    dsrl32     $s0,$s0,0x0
    beq        $s2, $a2, .L000122e8
    daddu      $s0,$s0,$s8
    dsll32     $t9,$s0,0x7
.L00012038:
    bgez       $t9, .L0001204c
    slti       $ra,$s5,128
    addiu      $s5,$s2,1
    dsrl       $s0,$s0,0x1
.L00012048:
    slti       $ra,$s5,128
.L0001204c:
    bnez       $ra, .L00012100
    lw         $a2,1340($a5)
    ori        $ra,$a2,0x4010
    sw         $ra,1340($a5)
    ld         $a5,-16360($zero)
    daddu      $t9,$a1,$a1
    lw         $a0,1340($a5)
    ld         $s2,-31984($gp)
    daddu      $t9,$a3,$t9
    dsll       $t9,$t9,0x2
    andi       $t8,$a0,0x200
    daddu      $s2,$s2,$t9
    beqz       $t8, .L00012204
    lwu        $s2,0($s2)
    jal        post_sig
    li         $a0,8
    ld         $a5,-16360($zero)
    lbu        $a3,1353($a5)
    andi       $at,$a3,0x4
    beqz       $at, .L000120d8
    andi       $a2,$a3,0x20
    dsll32     $a0,$s3,0x0
    lui        $a4,0x80
    addiu      $a3,$s5,-65
    nor        $a4,$a4,$zero
    dsll       $a3,$a3,0x17
    and        $a4,$s0,$a4
    dsrl       $a0,$a0,0x1
    or         $a3,$a3,$a4
    lbu        $a1,1354($a5)
    jal        fpstore_s
    or         $a0,$a0,$a3
    ld         $a5,-16360($zero)
    ld         $a5,992($a5)
    sd         $s2,296($a5)
.L000120d8:
    beqz       $s1, .L000120f0
    nop
    ld         $a7,-16360($zero)
    lw         $a6,1340($a7)
    ori        $a6,$a6,0x1004
    sw         $a6,1340($a7)
.L000120f0:
    jal        store_fpcsr
    nop
    b          .L00011e74
    ld         $s3,0($sp)
.L00012100:
    slti       $t8,$s5,-126
    dsll32     $s7,$s3,0x0
    bnez       $t8, .L00012130
    dsrl       $s7,$s7,0x1
    lui        $t8,0x80
    addiu      $s1,$s5,127
    nor        $t8,$t8,$zero
    dsll       $s1,$s1,0x17
    and        $t8,$s0,$t8
    or         $s1,$s1,$t8
    b          .L00012134
    or         $s1,$s7,$s1
.L00012130:
    or         $s1,$s7,$s0
.L00012134:
    andi       $t9,$a2,0x100
    beqz       $t9, .L000123e8
    slti       $a1,$s5,-126
    bnez       $a1, .L00012310
    li         $a1,1
.L00012148:
    beq        $a0, $a1, .L000121c4
    nop
.L00012150:
    lbu        $a3,1353($a5)
    andi       $ra,$a3,0x4
    bnez       $ra, .L0001216c
    move       $a0,$s1
    andi       $at,$a3,0x8
    bnez       $at, .L00012178
    move       $a0,$s1
.L0001216c:
    andi       $a2,$a3,0x20
    jal        fpstore_s
    lbu        $a1,1354($a5)
.L00012178:
    jal        store_fpcsr
    nop
    b          .L00011e74
    ld         $s3,0($sp)
.L00012188:
    dsll       $t8,$a1,0x4
    dsll32     $s7,$s3,0x0
    ld         $s0,-32000($gp)
    dsrl       $s6,$s7,0x1d
    daddu      $t8,$s6,$t8
    daddu      $s0,$s0,$t8
    lb         $s0,1($s0)
    dsll32     $s0,$s0,0x0
    dsrl32     $s0,$s0,0x0
    dsll32     $t8,$s0,0x8
    lui        $a0,0x80
    bgez       $t8, .L00012420
    dsrl       $s7,$s7,0x1
    or         $s1,$a0,$s0
    or         $s1,$s7,$s1
.L000121c4:
    lw         $t9,1340($a5)
    ori        $t9,$t9,0x1004
    sw         $t9,1340($a5)
    ld         $a5,-16360($zero)
    lw         $t8,1340($a5)
    andi       $t8,$t8,0x80
    beqz       $t8, .L00012150
    nop
    jal        post_sig
    li         $a0,8
    b          .L00012150
    ld         $a5,-16360($zero)
.L000121f4:
    bnez       $s4, .L00011e00
    nop
    b          .L00011e14
    lbu        $a3,1353($a5)
.L00012204:
    ori        $at,$a0,0x1004
    sw         $at,1340($a5)
    ld         $a5,-16360($zero)
    lw         $ra,1340($a5)
    andi       $ra,$ra,0x80
    beqz       $ra, .L0001222c
    nop
    jal        post_sig
    li         $a0,8
    ld         $a5,-16360($zero)
.L0001222c:
    lbu        $a3,1353($a5)
    andi       $v0,$a3,0x4
    bnez       $v0, .L00012240
    andi       $a0,$a3,0x8
    bnez       $a0, .L00012250
.L00012240:
    move       $a0,$s2
    andi       $a2,$a3,0x20
    jal        fpstore_s
    lbu        $a1,1354($a5)
.L00012250:
    jal        store_fpcsr
    nop
    b          .L00011e74
    ld         $s3,0($sp)
.L00012260:
    li         $a2,1
    and        $v1,$a6,$s1
    sltu       $a0,$zero,$s1
    dsll32     $t8,$a2,0x1e
    li         $a3,-1
    beqz       $v1, .L00012284
    dsll32     $t9,$a3,0x1f
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L00012284:
    dsll       $a2,$a1,0x4
    dsrl32     $v1,$s1,0x1e
    dsrl32     $a3,$s1,0x1f
    dsll32     $a6,$s3,0x0
    andi       $v0,$s0,0x1
    dsll       $v0,$v0,0x2
    dsrl       $s6,$a6,0x1d
    ld         $at,-32000($gp)
    daddu      $a3,$a3,$a3
    andi       $v1,$v1,0x1
    daddu      $v1,$v1,$a3
    daddu      $v0,$s6,$v0
    daddu      $at,$at,$a2
    daddu      $v0,$v0,$v1
    daddu      $at,$at,$v0
    lb         $at,0($at)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    daddu      $s0,$at,$s0
    dsll32     $ra,$s0,0x8
    li         $s5,-127
    bltz       $ra, .L000122f4
    dsrl32     $a3,$a6,0x0
    b          .L000122fc
    nop
.L000122e8:
    dsll32     $v1,$s0,0x8
    bgez       $v1, .L00012038
    dsll32     $t9,$s0,0x7
.L000122f4:
    b          .L00012048
    addiu      $s5,$s5,1
.L000122fc:
    lw         $a2,1340($a5)
    andi       $a1,$a2,0x100
    dsrl       $s7,$a6,0x1
    beqz       $a1, .L000123ec
    or         $s1,$s7,$s0
.L00012310:
    li         $a0,8
    ori        $a2,$a2,0x2008
    jal        post_sig
    sw         $a2,1340($a5)
    dsrl32     $t0,$s4,0x1e
    ld         $a5,-16360($zero)
    andi       $a7,$s8,0x1
    dsrl32     $t2,$s4,0x1f
    daddu      $t2,$t2,$t2
    andi       $t0,$t0,0x1
    lbu        $t1,1352($a5)
    ld         $a6,-32000($gp)
    dsll       $a7,$a7,0x2
    daddu      $t0,$t0,$t2
    daddu      $a7,$s6,$a7
    dsll       $t1,$t1,0x4
    daddu      $a7,$a7,$t0
    daddu      $a6,$a6,$t1
    daddu      $a6,$a6,$a7
    lb         $a6,0($a6)
    dsll32     $a6,$a6,0x0
    dsrl32     $a6,$a6,0x0
    daddu      $a6,$a6,$s8
    dsll32     $a3,$a6,0x7
    addiu      $a0,$s2,192
    bgez       $a3, .L00012448
    move       $a7,$a0
    addiu      $a7,$s2,193
    beqz       $s4, .L00012398
    dsrl       $a6,$a6,0x1
.L00012388:
    lw         $t2,1340($a5)
    ori        $t2,$t2,0x1004
    sw         $t2,1340($a5)
    ld         $a5,-16360($zero)
.L00012398:
    lbu        $a3,1353($a5)
.L0001239c:
    andi       $t3,$a3,0x4
    beqz       $t3, .L000123d8
    lui        $a1,0x80
    addiu      $a0,$a7,127
    nor        $a1,$a1,$zero
    dsll       $a0,$a0,0x17
    and        $a1,$a6,$a1
    andi       $a2,$a3,0x20
    or         $a0,$a0,$a1
    lbu        $a1,1354($a5)
    jal        fpstore_s
    or         $a0,$s7,$a0
    ld         $a2,-16360($zero)
    ld         $a2,992($a2)
    sd         $s1,296($a2)
.L000123d8:
    jal        store_fpcsr
    nop
    b          .L00011e74
    ld         $s3,0($sp)
.L000123e8:
    beqz       $a1, .L00012440
.L000123ec:
    li         $a1,1
    bne        $a0, $a1, .L00012150
    ori        $a3,$a2,0x2008
    sw         $a3,1340($a5)
    b          .L00012148
    ld         $a5,-16360($zero)
.L00012404:
    dsll       $a4,$s1,0x1
    bltz       $a4, .L00011f44
    sltiu      $at,$s0,1
    bnez       $a2, .L00011f44
    sltiu      $at,$s0,1
    b          .L00011d74
    lw         $t9,1340($a5)
.L00012420:
    lw         $a2,1340($a5)
    andi       $a6,$a2,0x100
    bnez       $a6, .L00012310
    or         $s1,$s7,$s0
    ori        $a7,$a2,0x2008
    sw         $a7,1340($a5)
    b          .L000121c4
    ld         $a5,-16360($zero)
.L00012440:
    b          .L00012148
    li         $a1,1
.L00012448:
    bnez       $s4, .L00012388
    nop
    b          .L0001239c
    lbu        $a3,1353($a5)

glabel maddrnd_s
    daddiu     $sp,$sp,-80
    li         $v0,-1
    sd         $s3,8($sp)
    dsrl       $v0,$v0,0x1
    move       $s3,$a0
    sd         $s2,16($sp)
    and        $at,$v0,$a3
    move       $s2,$a1
    sd         $s0,24($sp)
    move       $s0,$a2
    sd         $s1,32($sp)
    beqz       $at, .L000124a4
    move       $s1,$a3
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$a3,$t9
    or         $s1,$s1,$t8
.L000124a4:
    dsll32     $t8,$s0,0x3
    dsrl       $s1,$s1,0x1d
    or         $s1,$s1,$t8
    and        $at,$v0,$s1
    beqz       $at, .L000124d4
    dsrl       $s0,$s0,0x1d
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L000124d4:
    ld         $a2,-16360($zero)
    slti       $at,$s2,-150
    sd         $ra,40($sp)
    li         $a6,-127
    beqz       $at, .L0001257c
    lbu        $a0,1352($a2)
    lbu        $v0,1353($a2)
    andi       $v0,$v0,0x2
    beqz       $v0, .L000127e0
.L000124f8:
    dsll       $v1,$a0,0x4
    dsll32     $a3,$s3,0x0
    ld         $a1,-31992($gp)
    dsrl       $a3,$a3,0x1d
    daddu      $v1,$v1,$a3
    daddu      $v1,$v1,$a1
    lb         $v1,0($v1)
    lui        $s0,0x80
    li         $s2,1
    sltiu      $v1,$v1,1
    move       $s1,$s2
    movn       $s0,$zero,$v1
.L00012528:
    lw         $a5,1340($a2)
    ori        $a5,$a5,0x1004
    sw         $a5,1340($a2)
    ld         $a4,-16360($zero)
    lw         $a4,1340($a4)
    andi       $a4,$a4,0x80
    beqz       $a4, .L00012550
    nop
    jal        post_sig
    li         $a0,8
.L00012550:
    beq        $s1, $s2, .L00012724
.L00012554:
    dsll32     $v0,$s3,0x0
.L00012558:
    dsrl       $v0,$v0,0x1
    or         $v0,$s0,$v0
.L00012560:
    ld         $s3,8($sp)
    ld         $ra,40($sp)
    ld         $s2,16($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L0001257c:
    slti       $v1,$s2,-126
    beqz       $v1, .L00012624
    addiu      $t8,$s2,190
    li         $ra,-126
    lbu        $t9,1353($a2)
    dsllv      $t8,$s0,$t8
    subu       $ra,$ra,$s2
    dsrlv      $s0,$s0,$ra
    andi       $t9,$t9,0x2
    dsrlv      $s1,$s1,$ra
    beqz       $t9, .L00012874
    or         $s1,$s1,$t8
    lui        $t9,0x7f
    ori        $t9,$t9,0xffff
    sltu       $t9,$s0,$t9
    bnez       $t9, .L000124f8
    dsll32     $a3,$s3,0x0
    dsrl32     $v0,$s1,0x1f
    dsll       $a4,$v0,0x2
    dsrl32     $at,$s1,0x1e
    dsll       $a1,$s1,0x2
    andi       $at,$at,0x1
    sltu       $ra,$zero,$a1
    daddu      $at,$at,$at
    dsrl       $a3,$a3,0x1d
    daddu      $ra,$ra,$at
    ld         $at,-31992($gp)
    dsll       $v1,$a0,0x4
    daddu      $a3,$a3,$a4
    daddu      $ra,$ra,$a3
    daddu      $at,$at,$v1
    daddu      $ra,$ra,$at
    lb         $ra,0($ra)
    li         $s2,1
    lui        $s0,0x80
    sltiu      $ra,$ra,1
    beqz       $v0, .L00012920
    movn       $s0,$zero,$ra
    beq        $s2, $v0, .L00012910
    dsll       $a5,$s1,0x1
.L0001261c:
    b          .L00012528
    sltiu      $s1,$s0,1
.L00012624:
    and        $v1,$v0,$s1
    beqz       $v1, .L00012648
    sltu       $a3,$zero,$s1
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L00012648:
    dsll32     $v0,$s3,0x0
    andi       $a4,$s0,0x1
    dsll       $a4,$a4,0x2
    dsrl32     $ra,$s1,0x1e
    dsrl32     $at,$s1,0x1f
    daddu      $at,$at,$at
    andi       $ra,$ra,0x1
    dsrl       $a1,$v0,0x1d
    daddu      $ra,$ra,$at
    ld         $at,-32000($gp)
    dsll       $v1,$a0,0x4
    daddu      $a1,$a1,$a4
    daddu      $ra,$ra,$a1
    daddu      $at,$at,$v1
    daddu      $ra,$ra,$at
    lb         $ra,0($ra)
    dsrl32     $v0,$v0,0x0
    dsll32     $ra,$ra,0x0
    dsrl32     $ra,$ra,0x0
    beq        $s2, $a6, .L000128fc
    daddu      $s0,$ra,$s0
    dsll32     $at,$s0,0x7
.L000126a0:
    bgez       $at, .L000126b4
    slti       $v1,$s2,128
    addiu      $s2,$s2,1
    dsrl       $s0,$s0,0x1
.L000126b0:
    slti       $v1,$s2,128
.L000126b4:
    bnez       $v1, .L00012764
    lw         $a1,1340($a2)
    ori        $t9,$a1,0x4010
    sw         $t9,1340($a2)
    ld         $a2,-16360($zero)
    daddu      $t8,$a0,$a0
    lw         $a3,1340($a2)
    ld         $s0,-31984($gp)
    daddu      $t8,$v0,$t8
    dsll       $t8,$t8,0x2
    andi       $a4,$a3,0x200
    daddu      $s0,$s0,$t8
    lwu        $s0,0($s0)
    beqz       $a4, .L0001284c
    ori        $a3,$a3,0x1004
    jal        post_sig
    li         $a0,8
    ld         $at,-16360($zero)
    lbu        $ra,1353($at)
    ori        $ra,$ra,0x8
    beqz       $s1, .L0001271c
    sb         $ra,1353($at)
    ld         $v0,-16360($zero)
    lw         $at,1340($v0)
    ori        $at,$at,0x1004
    sw         $at,1340($v0)
.L0001271c:
    b          .L00012560
    move       $v0,$s0
.L00012724:
    ld         $a0,-16360($zero)
    lw         $v1,1340($a0)
    ori        $v1,$v1,0x2008
    sw         $v1,1340($a0)
    ld         $v0,-16360($zero)
    lw         $v0,1340($v0)
    andi       $v0,$v0,0x100
    beqz       $v0, .L00012558
    dsll32     $v0,$s3,0x0
    jal        post_sig
    li         $a0,8
    ld         $a1,-16360($zero)
    lbu        $a0,1353($a1)
    ori        $a0,$a0,0x8
    b          .L00012554
    sb         $a0,1353($a1)
.L00012764:
    andi       $a4,$a1,0x100
    beqz       $a4, .L00012930
    slti       $v0,$s2,-126
    beqz       $v0, .L00012844
    li         $s1,1
    sd         $a3,0($sp)
.L0001277c:
    li         $a0,8
    ori        $a5,$a1,0x2008
    jal        post_sig
    sw         $a5,1340($a2)
    ld         $a7,-16360($zero)
    lbu        $a6,1353($a7)
    ld         $a3,0($sp)
    ori        $a6,$a6,0x8
    sb         $a6,1353($a7)
.L000127a0:
    beq        $a3, $s1, .L00012928
    slti       $v1,$s2,-126
.L000127a8:
    dsll32     $v0,$s3,0x0
    bnez       $v1, .L000127d4
    dsrl       $v0,$v0,0x1
    lui        $a1,0x80
    addiu      $a0,$s2,127
    nor        $a1,$a1,$zero
    dsll       $a0,$a0,0x17
    and        $a1,$s0,$a1
    or         $a0,$a0,$a1
    b          .L000127d8
    or         $a0,$v0,$a0
.L000127d4:
    or         $a0,$v0,$s0
.L000127d8:
    b          .L00012560
    move       $v0,$a0
.L000127e0:
    dsll       $s0,$a0,0x4
    dsll32     $t8,$s3,0x0
    dsrl       $t8,$t8,0x1d
    ld         $s1,-32000($gp)
    daddu      $s0,$s0,$t8
    daddu      $s0,$s0,$s1
    lb         $s0,1($s0)
    dsll32     $s0,$s0,0x0
    dsrl32     $s0,$s0,0x0
    dsll32     $a3,$s0,0x8
    bgez       $a3, .L0001294c
    li         $s1,1
    li         $s2,-126
.L00012814:
    lw         $ra,1340($a2)
    ori        $ra,$ra,0x1004
    sw         $ra,1340($a2)
    ld         $t9,-16360($zero)
    lw         $t9,1340($t9)
    andi       $t9,$t9,0x80
    beqz       $t9, .L000127a8
    slti       $v1,$s2,-126
    jal        post_sig
    li         $a0,8
    b          .L000127a8
    slti       $v1,$s2,-126
.L00012844:
    b          .L000127a0
    li         $s1,1
.L0001284c:
    sw         $a3,1340($a2)
    ld         $at,-16360($zero)
    lw         $at,1340($at)
    andi       $at,$at,0x80
    beqz       $at, .L0001286c
    nop
    jal        post_sig
    li         $a0,8
.L0001286c:
    b          .L00012560
    move       $v0,$s0
.L00012874:
    li         $a1,1
    and        $v1,$v0,$s1
    sltu       $a3,$zero,$s1
    dsll32     $t8,$a1,0x1e
    li         $a6,-1
    beqz       $v1, .L00012898
    dsll32     $t9,$a6,0x1f
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L00012898:
    li         $s2,-127
    dsll32     $v0,$s3,0x0
    andi       $a7,$s0,0x1
    dsll       $a7,$a7,0x2
    dsrl32     $a1,$s1,0x1e
    dsrl32     $a4,$s1,0x1f
    daddu      $a4,$a4,$a4
    andi       $a1,$a1,0x1
    dsrl       $a6,$v0,0x1d
    daddu      $a1,$a1,$a4
    ld         $a4,-32000($gp)
    dsll       $a5,$a0,0x4
    daddu      $a6,$a6,$a7
    daddu      $a1,$a1,$a6
    daddu      $a4,$a4,$a5
    daddu      $a1,$a1,$a4
    lb         $a1,0($a1)
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    daddu      $s0,$a1,$s0
    dsll32     $v1,$s0,0x8
    bltz       $v1, .L00012908
    dsrl32     $v0,$v0,0x0
    b          .L00012974
    nop
.L000128fc:
    dsll32     $a4,$s0,0x8
    bgez       $a4, .L000126a0
    dsll32     $at,$s0,0x7
.L00012908:
    b          .L000126b0
    addiu      $s2,$s2,1
.L00012910:
    bltz       $a5, .L0001261c
    nop
    bnez       $a1, .L0001261c
    nop
.L00012920:
    b          .L00012528
    li         $s1,1
.L00012928:
    b          .L00012814
    ld         $a2,-16360($zero)
.L00012930:
    beqz       $v0, .L0001296c
.L00012934:
    li         $s1,1
    bne        $a3, $s1, .L000127a8
    slti       $v1,$s2,-126
    ori        $a6,$a1,0x2008
    b          .L000127a0
    sw         $a6,1340($a2)
.L0001294c:
    lw         $a1,1340($a2)
    andi       $a7,$a1,0x100
    beqz       $a7, .L00012990
    ori        $t2,$a1,0x2008
    move       $t0,$s1
    sd         $t0,0($sp)
    b          .L0001277c
    move       $s2,$a6
.L0001296c:
    b          .L000127a0
    li         $s1,1
.L00012974:
    lw         $a1,1340($a2)
    andi       $t1,$a1,0x100
    beqz       $t1, .L000129a0
    li         $s1,1
    li         $s2,-127
    b          .L0001277c
    sd         $a3,0($sp)
.L00012990:
    sw         $t2,1340($a2)
    ld         $a2,-16360($zero)
    b          .L00012814
    move       $s2,$a6
.L000129a0:
    b          .L00012934
    li         $s2,-127

glabel round_l
    dsll32     $t2,$a0,0x0
    li         $at,-1
    daddiu     $sp,$sp,-16
    dsrl       $at,$at,0x1
    li         $a4,-1
    and        $at,$a2,$at
    li         $a5,1
    dsll32     $a6,$a4,0x1f
    sd         $s0,0($sp)
    move       $s0,$a1
    beqz       $at, .L000129e4
    sd         $ra,8($sp)
    dsll32     $a3,$a5,0x1e
    and        $a2,$a2,$a6
    or         $a2,$a2,$a3
.L000129e4:
    andi       $t3,$s0,0x1
    dsll       $t3,$t3,0x2
    dsrl32     $a7,$a2,0x1e
    ld         $a4,-16360($zero)
    dsrl32     $t0,$a2,0x1f
    daddu      $t0,$t0,$t0
    andi       $a7,$a7,0x1
    lbu        $t1,1352($a4)
    dsrl       $t2,$t2,0x1d
    daddu      $a7,$a7,$t0
    ld         $t0,-31976($gp)
    daddu      $t2,$t2,$t3
    dsll       $t1,$t1,0x4
    daddu      $a7,$a7,$t2
    daddu      $t0,$t0,$t1
    daddu      $a7,$a7,$t0
    lb         $a7,0($a7)
    beqz       $a0, .L00012a34
    daddu      $s0,$a7,$s0
    dnegu      $s0,$s0
.L00012a34:
    beqz       $a2, .L00012a68
    nop
    lw         $t1,1340($a4)
    ori        $t1,$t1,0x1004
    sw         $t1,1340($a4)
    ld         $a4,-16360($zero)
    lw         $t0,1340($a4)
    andi       $t0,$t0,0x80
    beqz       $t0, .L00012a68
    nop
    jal        post_sig
    li         $a0,8
    ld         $a4,-16360($zero)
.L00012a68:
    lbu        $a2,1353($a4)
    move       $a0,$s0
    lbu        $a1,1354($a4)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    ld         $s0,0($sp)
    ld         $ra,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel round_d
    daddiu     $sp,$sp,-112
    sd         $s8,32($sp)
    sd         $s3,16($sp)
    li         $a6,-1
    move       $s3,$a0
    sd         $s2,0($sp)
    dsrl       $a6,$a6,0x1
    move       $s2,$a1
    sd         $s6,8($sp)
    and        $at,$a6,$a3
    move       $s6,$a1
    move       $s8,$a2
    sd         $s1,24($sp)
    move       $s1,$a3
    beqz       $at, .L00012ae8
    sd         $s4,40($sp)
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$a3,$t9
    or         $s1,$s1,$t8
.L00012ae8:
    sd         $ra,48($sp)
    sd         $s7,56($sp)
    sd         $s0,64($sp)
    ld         $a5,-16360($zero)
    slti       $at,$s2,-1075
    sd         $s5,72($sp)
    move       $s4,$s1
    beqz       $at, .L00012c88
    lbu        $a1,1352($a5)
    lbu        $v0,1353($a5)
    andi       $v0,$v0,0x2
    beqz       $v0, .L00012f64
    li         $s1,1
    dsll32     $s1,$s1,0x1e
.L00012b20:
    dsll       $t8,$a1,0x4
    dsll32     $s7,$s3,0x0
    ld         $t9,-31968($gp)
    dsrl       $s7,$s7,0x1d
    daddu      $t8,$s7,$t8
    daddu      $t8,$t8,$t9
    lb         $t8,0($t8)
    li         $s0,1
    dsll32     $s0,$s0,0x14
    sltiu      $t8,$t8,1
    movn       $s0,$zero,$t8
.L00012b4c:
    lw         $t9,1340($a5)
.L00012b50:
    ori        $t9,$t9,0x2008
    sw         $t9,1340($a5)
    ld         $a5,-16360($zero)
    lw         $a0,1340($a5)
    andi       $t8,$a0,0x100
    beqz       $t8, .L00012d40
    ori        $v1,$a0,0x1004
    jal        post_sig
    li         $a0,8
    andi       $a6,$s8,0x1
    dsll       $a6,$a6,0x2
    ld         $a5,-16360($zero)
    dsrl32     $t1,$s4,0x1e
    daddu      $a6,$s7,$a6
    dsrl32     $t2,$s4,0x1f
    lbu        $t0,1352($a5)
    andi       $t1,$t1,0x1
    daddu      $t2,$t2,$t2
    ld         $a7,-31976($gp)
    daddu      $t1,$t1,$t2
    dsll       $t0,$t0,0x4
    daddu      $a6,$a6,$t1
    daddu      $a7,$a7,$t0
    daddu      $a6,$a6,$a7
    lb         $a6,0($a6)
    dsll32     $a6,$a6,0x0
    dsrl32     $a6,$a6,0x0
    li         $ra,1
    daddu      $a6,$a6,$s8
    dsll32     $ra,$ra,0x15
    and        $ra,$a6,$ra
    addiu      $a0,$s2,1536
    beqz       $ra, .L00012fd4
    move       $a7,$a0
    addiu      $a7,$s2,1537
    beqz       $s4, .L00012bf4
    dsrl       $a6,$a6,0x1
.L00012be4:
    lw         $t0,1340($a5)
    ori        $t0,$t0,0x1004
    sw         $t0,1340($a5)
    ld         $a5,-16360($zero)
.L00012bf4:
    lbu        $a3,1353($a5)
.L00012bf8:
    andi       $t1,$a3,0x4
    beqz       $t1, .L00012c38
    ld         $a1,-32456($gp)
    andi       $a2,$a3,0x20
    addiu      $a0,$a7,1023
    dsll32     $a0,$a0,0x14
    and        $a1,$a6,$a1
    dsll32     $s5,$s3,0x1f
    or         $a0,$a0,$a1
    lbu        $a1,1354($a5)
    jal        fpstore_d
    or         $a0,$s5,$a0
    ld         $a2,-16360($zero)
    ld         $a2,992($a2)
    or         $a1,$s5,$s0
    sd         $a1,296($a2)
.L00012c38:
    beqz       $s1, .L00012c50
    nop
    ld         $a4,-16360($zero)
    lw         $a3,1340($a4)
    ori        $a3,$a3,0x1004
    sw         $a3,1340($a4)
.L00012c50:
    jal        store_fpcsr
    nop
    ld         $s2,0($sp)
.L00012c5c:
    ld         $s6,8($sp)
    ld         $s3,16($sp)
    ld         $s4,40($sp)
    ld         $s7,56($sp)
    ld         $s0,64($sp)
    ld         $ra,48($sp)
    ld         $s1,24($sp)
    ld         $s5,72($sp)
    ld         $s8,32($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L00012c88:
    slti       $a4,$s2,-1022
    beqz       $a4, .L00012da0
    li         $a3,-1023
    li         $s1,-1022
    subu       $s1,$s1,$s2
    dsrlv      $s0,$s8,$s1
    lbu        $t9,1353($a5)
    dsrlv      $s1,$s4,$s1
    addiu      $t8,$s2,1086
    andi       $t9,$t9,0x2
    dsllv      $t8,$s8,$t8
    beqz       $t9, .L00013040
    or         $s1,$s1,$t8
    li         $t8,-1
    dsrl       $t8,$t8,0xc
    sltu       $t8,$s0,$t8
    bnez       $t8, .L00012b20
    dsll32     $s7,$s3,0x0
    dsrl32     $a0,$s1,0x1f
    dsll       $v0,$a0,0x2
    dsrl32     $ra,$s1,0x1e
    dsll       $a2,$s1,0x2
    andi       $ra,$ra,0x1
    sltu       $t9,$zero,$a2
    daddu      $ra,$ra,$ra
    dsrl       $s7,$s7,0x1d
    daddu      $t9,$t9,$ra
    ld         $ra,-31968($gp)
    dsll       $at,$a1,0x4
    daddu      $v0,$s7,$v0
    daddu      $t9,$t9,$v0
    daddu      $ra,$ra,$at
    daddu      $t9,$t9,$ra
    li         $s0,1
    lb         $t9,0($t9)
    dsll32     $s0,$s0,0x14
    sltiu      $t9,$t9,1
    beqz       $a0, .L00012b4c
    movn       $s0,$zero,$t9
    li         $a1,1
    beq        $a1, $a0, .L000131f8
    sltiu      $at,$s0,1
.L00012d30:
    beq        $at, $a1, .L00012b4c
    nop
    lw         $a0,1340($a5)
    ori        $v1,$a0,0x1004
.L00012d40:
    sw         $v1,1340($a5)
    ld         $a5,-16360($zero)
    lw         $v0,1340($a5)
    andi       $v0,$v0,0x80
    beqz       $v0, .L00012d64
    nop
    jal        post_sig
    li         $a0,8
    ld         $a5,-16360($zero)
.L00012d64:
    lbu        $a3,1353($a5)
    andi       $a0,$a3,0x4
    bnez       $a0, .L00012d80
    andi       $a2,$a3,0x20
    andi       $a1,$a3,0x8
    bnez       $a1, .L00012d90
    andi       $a2,$a3,0x20
.L00012d80:
    dsll32     $a0,$s3,0x1f
    lbu        $a1,1354($a5)
    jal        fpstore_d
    or         $a0,$s0,$a0
.L00012d90:
    jal        store_fpcsr
    nop
    b          .L00012c5c
    ld         $s2,0($sp)
.L00012da0:
    and        $a2,$a6,$s1
    beqz       $a2, .L00012dc4
    sltu       $a0,$zero,$s1
    li         $s1,-1
    dsll32     $s1,$s1,0x1f
    li         $t8,1
    and        $s1,$s4,$s1
    dsll32     $t8,$t8,0x1e
    or         $s1,$s1,$t8
.L00012dc4:
    dsll       $ra,$a1,0x4
    dsrl32     $t9,$s1,0x1e
    dsrl32     $at,$s1,0x1f
    dsll32     $a2,$s3,0x0
    andi       $t8,$s8,0x1
    dsll       $t8,$t8,0x2
    dsrl       $s7,$a2,0x1d
    ld         $s0,-31976($gp)
    daddu      $at,$at,$at
    andi       $t9,$t9,0x1
    daddu      $t9,$t9,$at
    daddu      $t8,$s7,$t8
    daddu      $s0,$s0,$ra
    daddu      $t8,$t8,$t9
    daddu      $s0,$s0,$t8
    lb         $s0,0($s0)
    dsrl32     $a2,$a2,0x0
    dsll32     $s0,$s0,0x0
    dsrl32     $s0,$s0,0x0
    beq        $s2, $a3, .L000130d0
    daddu      $s0,$s0,$s8
    li         $t9,1
.L00012e1c:
    dsll32     $t9,$t9,0x15
    and        $t9,$s0,$t9
    beqz       $t9, .L00012e38
    slti       $ra,$s6,1024
    addiu      $s6,$s2,1
    dsrl       $s0,$s0,0x1
.L00012e34:
    slti       $ra,$s6,1024
.L00012e38:
    bnez       $ra, .L00012ee4
    lw         $a3,1340($a5)
    ori        $ra,$a3,0x4010
    sw         $ra,1340($a5)
    ld         $a5,-16360($zero)
    daddu      $t9,$a1,$a1
    lw         $a0,1340($a5)
    ld         $s2,-31960($gp)
    daddu      $t9,$a2,$t9
    dsll       $t9,$t9,0x3
    andi       $t8,$a0,0x200
    daddu      $s2,$s2,$t9
    beqz       $t8, .L00012fe4
    ld         $s2,0($s2)
    jal        post_sig
    li         $a0,8
    ld         $a5,-16360($zero)
    lbu        $a3,1353($a5)
    andi       $at,$a3,0x4
    beqz       $at, .L00012ebc
    ld         $a4,-32456($gp)
    andi       $a2,$a3,0x20
    addiu      $a3,$s6,-513
    dsll32     $a3,$a3,0x14
    and        $a4,$s0,$a4
    dsll32     $a0,$s3,0x1f
    or         $a3,$a3,$a4
    lbu        $a1,1354($a5)
    jal        fpstore_d
    or         $a0,$a0,$a3
    ld         $a4,-16360($zero)
    ld         $a4,992($a4)
    sd         $s2,296($a4)
.L00012ebc:
    beqz       $s1, .L00012ed4
    nop
    ld         $a6,-16360($zero)
    lw         $a5,1340($a6)
    ori        $a5,$a5,0x1004
    sw         $a5,1340($a6)
.L00012ed4:
    jal        store_fpcsr
    nop
    b          .L00012c5c
    ld         $s2,0($sp)
.L00012ee4:
    slti       $a6,$s6,-1022
    bnez       $a6, .L00012f0c
    dsll32     $s5,$s3,0x1f
    ld         $t8,-32456($gp)
    addiu      $s1,$s6,1023
    dsll32     $s1,$s1,0x14
    and        $t8,$s0,$t8
    or         $s1,$s1,$t8
    b          .L00012f10
    or         $s1,$s5,$s1
.L00012f0c:
    or         $s1,$s5,$s0
.L00012f10:
    andi       $t8,$a3,0x100
    beqz       $t8, .L000131dc
    slti       $a1,$s6,-1022
    bnez       $a1, .L00013100
    li         $a1,1
.L00012f24:
    beq        $a0, $a1, .L00012fa4
    nop
.L00012f2c:
    lbu        $a3,1353($a5)
    andi       $t9,$a3,0x4
    bnez       $t9, .L00012f48
    move       $a0,$s1
    andi       $ra,$a3,0x8
    bnez       $ra, .L00012f54
    move       $a0,$s1
.L00012f48:
    andi       $a2,$a3,0x20
    jal        fpstore_d
    lbu        $a1,1354($a5)
.L00012f54:
    jal        store_fpcsr
    nop
    b          .L00012c5c
    ld         $s2,0($sp)
.L00012f64:
    dsll       $s5,$a1,0x4
    dsll32     $s7,$s3,0x0
    ld         $s0,-31976($gp)
    dsrl       $s7,$s7,0x1d
    daddu      $s5,$s7,$s5
    daddu      $s0,$s0,$s5
    li         $a0,1
    lb         $s0,1($s0)
    dsll32     $a0,$a0,0x14
    dsll32     $s0,$s0,0x0
    dsrl32     $s0,$s0,0x0
    and        $at,$a0,$s0
    beqz       $at, .L00013214
    dsll32     $s5,$s3,0x1f
    or         $s1,$a0,$s0
    or         $s1,$s5,$s1
.L00012fa4:
    lw         $t9,1340($a5)
    ori        $t9,$t9,0x1004
    sw         $t9,1340($a5)
    ld         $a5,-16360($zero)
    lw         $t8,1340($a5)
    andi       $t8,$t8,0x80
    beqz       $t8, .L00012f2c
    nop
    jal        post_sig
    li         $a0,8
    b          .L00012f2c
    ld         $a5,-16360($zero)
.L00012fd4:
    bnez       $s4, .L00012be4
    nop
    b          .L00012bf8
    lbu        $a3,1353($a5)
.L00012fe4:
    ori        $at,$a0,0x1004
    sw         $at,1340($a5)
    ld         $a5,-16360($zero)
    lw         $ra,1340($a5)
    andi       $ra,$ra,0x80
    beqz       $ra, .L0001300c
    nop
    jal        post_sig
    li         $a0,8
    ld         $a5,-16360($zero)
.L0001300c:
    lbu        $a3,1353($a5)
    andi       $v0,$a3,0x4
    bnez       $v0, .L00013020
    andi       $a0,$a3,0x8
    bnez       $a0, .L00013030
.L00013020:
    move       $a0,$s2
    andi       $a2,$a3,0x20
    jal        fpstore_d
    lbu        $a1,1354($a5)
.L00013030:
    jal        store_fpcsr
    nop
    b          .L00012c5c
    ld         $s2,0($sp)
.L00013040:
    li         $a2,1
    and        $v1,$a6,$s1
    sltu       $a0,$zero,$s1
    dsll32     $t8,$a2,0x1e
    li         $a3,-1
    beqz       $v1, .L00013064
    dsll32     $t9,$a3,0x1f
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L00013064:
    dsll       $t0,$a1,0x4
    dsrl32     $a7,$s1,0x1e
    dsrl32     $t1,$s1,0x1f
    dsll32     $a2,$s3,0x0
    andi       $a6,$s0,0x1
    dsll       $a6,$a6,0x2
    dsrl       $s7,$a2,0x1d
    ld         $a4,-31976($gp)
    daddu      $t1,$t1,$t1
    andi       $a7,$a7,0x1
    daddu      $a7,$a7,$t1
    daddu      $a6,$s7,$a6
    daddu      $a4,$a4,$t0
    daddu      $a6,$a6,$a7
    daddu      $a4,$a4,$a6
    lb         $a4,0($a4)
    dsll32     $a4,$a4,0x0
    li         $a3,1
    dsrl32     $a4,$a4,0x0
    dsll32     $a3,$a3,0x14
    daddu      $s0,$a4,$s0
    and        $a3,$s0,$a3
    li         $s6,-1023
    bnez       $a3, .L000130e4
    dsrl32     $a2,$a2,0x0
    b          .L000130ec
    nop
.L000130d0:
    li         $a7,1
    dsll32     $a7,$a7,0x14
    and        $a7,$s0,$a7
    beqz       $a7, .L00012e1c
    li         $t9,1
.L000130e4:
    b          .L00012e34
    addiu      $s6,$s6,1
.L000130ec:
    lw         $a3,1340($a5)
    andi       $t0,$a3,0x100
    dsll32     $s5,$s3,0x1f
    beqz       $t0, .L000131e0
    or         $s1,$s5,$s0
.L00013100:
    li         $a0,8
    ori        $t1,$a3,0x2008
    jal        post_sig
    sw         $t1,1340($a5)
    dsrl32     $t0,$s4,0x1e
    ld         $a5,-16360($zero)
    andi       $a7,$s8,0x1
    dsrl32     $t2,$s4,0x1f
    daddu      $t2,$t2,$t2
    andi       $t0,$t0,0x1
    lbu        $t1,1352($a5)
    ld         $a6,-31976($gp)
    dsll       $a7,$a7,0x2
    daddu      $t0,$t0,$t2
    daddu      $a7,$s7,$a7
    dsll       $t1,$t1,0x4
    daddu      $a7,$a7,$t0
    daddu      $a6,$a6,$t1
    daddu      $a6,$a6,$a7
    lb         $a6,0($a6)
    dsll32     $a6,$a6,0x0
    li         $t2,1
    dsrl32     $a6,$a6,0x0
    dsll32     $t2,$t2,0x15
    daddu      $a6,$a6,$s8
    and        $t2,$a6,$t2
    addiu      $a0,$s2,1536
    beqz       $t2, .L0001323c
    move       $a7,$a0
    addiu      $a7,$s2,1537
    beqz       $s4, .L00013190
    dsrl       $a6,$a6,0x1
.L00013180:
    lw         $t2,1340($a5)
    ori        $t2,$t2,0x1004
    sw         $t2,1340($a5)
    ld         $a5,-16360($zero)
.L00013190:
    lbu        $a3,1353($a5)
.L00013194:
    andi       $t3,$a3,0x4
    beqz       $t3, .L000131cc
    ld         $a1,-32456($gp)
    addiu      $a0,$a7,1023
    dsll32     $a0,$a0,0x14
    and        $a1,$a6,$a1
    andi       $a2,$a3,0x20
    or         $a0,$a0,$a1
    lbu        $a1,1354($a5)
    jal        fpstore_d
    or         $a0,$s5,$a0
    ld         $a1,-16360($zero)
    ld         $a1,992($a1)
    sd         $s1,296($a1)
.L000131cc:
    jal        store_fpcsr
    nop
    b          .L00012c5c
    ld         $s2,0($sp)
.L000131dc:
    beqz       $a1, .L00013234
.L000131e0:
    li         $a1,1
    bne        $a0, $a1, .L00012f2c
    ori        $a2,$a3,0x2008
    sw         $a2,1340($a5)
    b          .L00012f24
    ld         $a5,-16360($zero)
.L000131f8:
    dsll       $a3,$s1,0x1
    bltz       $a3, .L00012d30
    sltiu      $at,$s0,1
    bnez       $a2, .L00012d30
    sltiu      $at,$s0,1
    b          .L00012b50
    lw         $t9,1340($a5)
.L00013214:
    lw         $a3,1340($a5)
    andi       $a4,$a3,0x100
    bnez       $a4, .L00013100
    or         $s1,$s5,$s0
    ori        $a6,$a3,0x2008
    sw         $a6,1340($a5)
    b          .L00012fa4
    ld         $a5,-16360($zero)
.L00013234:
    b          .L00012f24
    li         $a1,1
.L0001323c:
    bnez       $s4, .L00013180
    nop
    b          .L00013194
    lbu        $a3,1353($a5)

glabel maddrnd_d
    daddiu     $sp,$sp,-80
    li         $a6,-1
    sd         $s3,8($sp)
    dsrl       $a6,$a6,0x1
    move       $s3,$a0
    sd         $s1,32($sp)
    and        $at,$a6,$a3
    move       $s1,$a1
    sd         $s0,24($sp)
    move       $s0,$a2
    sd         $s2,16($sp)
    beqz       $at, .L00013298
    move       $s2,$a3
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s2,$a3,$t9
    or         $s2,$s2,$t8
.L00013298:
    ld         $a2,-16360($zero)
    slti       $at,$s1,-1075
    sd         $ra,40($sp)
    li         $a7,-1023
    beqz       $at, .L00013340
    lbu        $a0,1352($a2)
    lbu        $v0,1353($a2)
    andi       $v0,$v0,0x2
    beqz       $v0, .L000135ac
.L000132bc:
    dsll       $v1,$a0,0x4
    dsll32     $a3,$s3,0x0
    ld         $a1,-31968($gp)
    dsrl       $a3,$a3,0x1d
    daddu      $v1,$v1,$a3
    daddu      $v1,$v1,$a1
    lb         $v1,0($v1)
    li         $s0,1
    dsll32     $s0,$s0,0x14
    sltiu      $v1,$v1,1
    li         $s1,1
    movn       $s0,$zero,$v1
.L000132ec:
    lw         $a5,1340($a2)
    ori        $a5,$a5,0x1004
    sw         $a5,1340($a2)
    ld         $a4,-16360($zero)
    lw         $a4,1340($a4)
    andi       $a4,$a4,0x80
    beqz       $a4, .L00013318
    li         $a6,1
    jal        post_sig
    li         $a0,8
    li         $a6,1
.L00013318:
    beq        $s1, $a6, .L000134f4
.L0001331c:
    dsll32     $v0,$s3,0x1f
.L00013320:
    or         $v0,$s0,$v0
.L00013324:
    ld         $s3,8($sp)
    ld         $ra,40($sp)
    ld         $s2,16($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00013340:
    slti       $v1,$s1,-1022
    beqz       $v1, .L000133ec
    addiu      $t8,$s1,1086
    li         $ra,-1022
    lbu        $t9,1353($a2)
    dsllv      $t8,$s0,$t8
    subu       $ra,$ra,$s1
    dsrlv      $s0,$s0,$ra
    andi       $t9,$t9,0x2
    dsrlv      $s2,$s2,$ra
    beqz       $t9, .L00013644
    or         $s2,$s2,$t8
    li         $t9,-1
    dsrl       $t9,$t9,0xc
    sltu       $t9,$s0,$t9
    bnez       $t9, .L000132bc
    dsll32     $a3,$s3,0x0
    dsrl32     $v0,$s2,0x1f
    dsll       $a4,$v0,0x2
    dsrl32     $at,$s2,0x1e
    dsll       $a1,$s2,0x2
    andi       $at,$at,0x1
    sltu       $ra,$zero,$a1
    daddu      $at,$at,$at
    dsrl       $a3,$a3,0x1d
    daddu      $ra,$ra,$at
    ld         $at,-31968($gp)
    dsll       $v1,$a0,0x4
    daddu      $a3,$a3,$a4
    daddu      $ra,$ra,$a3
    daddu      $at,$at,$v1
    daddu      $ra,$ra,$at
    li         $s0,1
    lb         $ra,0($ra)
    dsll32     $s0,$s0,0x14
    sltiu      $ra,$ra,1
    beqz       $v0, .L00013700
    movn       $s0,$zero,$ra
    li         $v1,1
    beq        $v1, $v0, .L000136f0
    dsll       $a7,$s2,0x1
.L000133e4:
    b          .L000132ec
    sltiu      $s1,$s0,1
.L000133ec:
    and        $a1,$a6,$s2
    beqz       $a1, .L00013410
    sltu       $v0,$zero,$s2
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s2,$s2,$t9
    or         $s2,$s2,$t8
.L00013410:
    dsrl32     $ra,$s2,0x1e
    andi       $ra,$ra,0x1
    dsrl32     $at,$s2,0x1f
    daddu      $at,$at,$at
    dsll32     $a3,$s3,0x0
    dsrl       $a1,$a3,0x1d
    andi       $a4,$s0,0x1
    daddu      $ra,$ra,$at
    dsll       $a4,$a4,0x2
    ld         $at,-31976($gp)
    daddu      $a1,$a1,$a4
    dsll       $v1,$a0,0x4
    daddu      $ra,$ra,$a1
    daddu      $at,$at,$v1
    daddu      $ra,$ra,$at
    lb         $ra,0($ra)
    dsrl32     $a3,$a3,0x0
    dsll32     $ra,$ra,0x0
    dsrl32     $ra,$ra,0x0
    beq        $s1, $a7, .L000136d4
    daddu      $s0,$ra,$s0
    li         $at,1
.L00013468:
    dsll32     $at,$at,0x15
    and        $at,$s0,$at
    beqz       $at, .L00013484
    slti       $v1,$s1,1024
    addiu      $s1,$s1,1
    dsrl       $s0,$s0,0x1
.L00013480:
    slti       $v1,$s1,1024
.L00013484:
    bnez       $v1, .L00013534
    lw         $a1,1340($a2)
    ori        $t9,$a1,0x4010
    sw         $t9,1340($a2)
    ld         $a2,-16360($zero)
    daddu      $t8,$a0,$a0
    lw         $v0,1340($a2)
    ld         $s0,-31960($gp)
    daddu      $t8,$a3,$t8
    dsll       $t8,$t8,0x3
    andi       $v1,$v0,0x200
    daddu      $s0,$s0,$t8
    ld         $s0,0($s0)
    beqz       $v1, .L0001361c
    ori        $v0,$v0,0x1004
    jal        post_sig
    li         $a0,8
    ld         $at,-16360($zero)
    lbu        $ra,1353($at)
    ori        $ra,$ra,0x8
    beqz       $s2, .L000134ec
    sb         $ra,1353($at)
    ld         $v0,-16360($zero)
    lw         $at,1340($v0)
    ori        $at,$at,0x1004
    sw         $at,1340($v0)
.L000134ec:
    b          .L00013324
    move       $v0,$s0
.L000134f4:
    ld         $a0,-16360($zero)
    lw         $v1,1340($a0)
    ori        $v1,$v1,0x2008
    sw         $v1,1340($a0)
    ld         $v0,-16360($zero)
    lw         $v0,1340($v0)
    andi       $v0,$v0,0x100
    beqz       $v0, .L00013320
    dsll32     $v0,$s3,0x1f
    jal        post_sig
    li         $a0,8
    ld         $a1,-16360($zero)
    lbu        $a0,1353($a1)
    ori        $a0,$a0,0x8
    b          .L0001331c
    sb         $a0,1353($a1)
.L00013534:
    andi       $a3,$a1,0x100
    beqz       $a3, .L00013710
    slti       $a0,$s1,-1022
    beqz       $a0, .L00013614
    nop
    sd         $v0,0($sp)
.L0001354c:
    li         $a0,8
    ori        $a4,$a1,0x2008
    jal        post_sig
    sw         $a4,1340($a2)
    ld         $a6,-16360($zero)
    lbu        $a5,1353($a6)
    ld         $v0,0($sp)
    ori        $a5,$a5,0x8
    sb         $a5,1353($a6)
.L00013570:
    li         $a6,1
.L00013574:
    beq        $v0, $a6, .L00013708
.L00013578:
    slti       $a7,$s1,-1022
.L0001357c:
    bnez       $a7, .L000135a0
    dsll32     $v0,$s3,0x1f
    ld         $a1,-32456($gp)
    addiu      $a0,$s1,1023
    dsll32     $a0,$a0,0x14
    and        $a1,$s0,$a1
    or         $a0,$a0,$a1
    b          .L000135a4
    or         $a0,$v0,$a0
.L000135a0:
    or         $a0,$v0,$s0
.L000135a4:
    b          .L00013324
    move       $v0,$a0
.L000135ac:
    dsll       $s0,$a0,0x4
    dsll32     $t9,$s3,0x0
    ld         $t8,-31976($gp)
    dsrl       $t9,$t9,0x1d
    daddu      $s0,$s0,$t9
    daddu      $s0,$s0,$t8
    li         $a1,1
    lb         $s0,1($s0)
    dsll32     $a1,$a1,0x14
    dsll32     $s0,$s0,0x0
    dsrl32     $s0,$s0,0x0
    and        $a1,$s0,$a1
    beqz       $a1, .L00013728
    li         $s1,-1022
.L000135e4:
    lw         $at,1340($a2)
    ori        $at,$at,0x1004
    sw         $at,1340($a2)
    ld         $ra,-16360($zero)
    lw         $ra,1340($ra)
    andi       $ra,$ra,0x80
    beqz       $ra, .L0001357c
    slti       $a7,$s1,-1022
    jal        post_sig
    li         $a0,8
    b          .L0001357c
    slti       $a7,$s1,-1022
.L00013614:
    b          .L00013574
    li         $a6,1
.L0001361c:
    sw         $v0,1340($a2)
    ld         $v1,-16360($zero)
    lw         $v1,1340($v1)
    andi       $v1,$v1,0x80
    beqz       $v1, .L0001363c
    nop
    jal        post_sig
    li         $a0,8
.L0001363c:
    b          .L00013324
    move       $v0,$s0
.L00013644:
    li         $a1,1
    and        $a4,$a6,$s2
    sltu       $v0,$zero,$s2
    dsll32     $t8,$a1,0x1e
    li         $a3,-1
    beqz       $a4, .L00013668
    dsll32     $t9,$a3,0x1f
    and        $s2,$s2,$t9
    or         $s2,$s2,$t8
.L00013668:
    li         $s1,-1023
    dsll32     $a3,$s3,0x0
    andi       $t1,$s0,0x1
    dsll       $t1,$t1,0x2
    dsrl32     $a5,$s2,0x1e
    dsrl32     $a6,$s2,0x1f
    daddu      $a6,$a6,$a6
    andi       $a5,$a5,0x1
    dsrl       $t0,$a3,0x1d
    daddu      $a5,$a5,$a6
    ld         $a6,-31976($gp)
    dsll       $a7,$a0,0x4
    daddu      $t0,$t0,$t1
    daddu      $a5,$a5,$t0
    daddu      $a6,$a6,$a7
    daddu      $a5,$a5,$a6
    lb         $a5,0($a5)
    dsll32     $a5,$a5,0x0
    li         $a4,1
    dsrl32     $a5,$a5,0x0
    dsll32     $a4,$a4,0x14
    daddu      $s0,$a5,$s0
    and        $a4,$s0,$a4
    bnez       $a4, .L000136e8
    dsrl32     $a3,$a3,0x0
    b          .L0001374c
    nop
.L000136d4:
    li         $a6,1
    dsll32     $a6,$a6,0x14
    and        $a6,$s0,$a6
    beqz       $a6, .L00013468
    li         $at,1
.L000136e8:
    b          .L00013480
    addiu      $s1,$s1,1
.L000136f0:
    bltz       $a7, .L000133e4
    nop
    bnez       $a1, .L000133e4
    nop
.L00013700:
    b          .L000132ec
    li         $s1,1
.L00013708:
    b          .L000135e4
    ld         $a2,-16360($zero)
.L00013710:
    beqz       $a0, .L00013744
.L00013714:
    li         $t0,1
    bne        $v0, $t0, .L00013578
    ori        $t1,$a1,0x2008
    b          .L00013570
    sw         $t1,1340($a2)
.L00013728:
    lw         $a1,1340($a2)
    andi       $t2,$a1,0x100
    beqz       $t2, .L00013764
    li         $t3,1
    sd         $t3,0($sp)
    b          .L0001354c
    move       $s1,$a7
.L00013744:
    b          .L00013574
    li         $a6,1
.L0001374c:
    lw         $a1,1340($a2)
    andi       $t8,$a1,0x100
    beqz       $t8, .L00013778
    li         $s1,-1023
    b          .L0001354c
    sd         $v0,0($sp)
.L00013764:
    ori        $t9,$a1,0x2008
    sw         $t9,1340($a2)
    ld         $a2,-16360($zero)
    b          .L000135e4
    move       $s1,$a7
.L00013778:
    b          .L00013714
    li         $s1,-1023

glabel VEC_unexp
    lui        $a1,0x0
    li         $a0,0
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    jal        cmn_err
    daddiu     $a1,$a1,8064

glabel slave_loop
    lw         $t0,12($a0)
    lui        $t1,0x0
    daddiu     $t1,$t1,0
    dsll       $t1,$t1,0x10
    daddiu     $t1,$t1,0
    dsll       $t1,$t1,0x10
    daddiu     $t1,$t1,0
    daddu      $t0,$t0,$t1
    li         $t1,1
    sb         $t1,0($t0)
.L00013828:
    lui        $t0,0xff
    ori        $t0,$t0,0xffff
.L00013830:
    bnez       $t0, .L00013830
    addiu      $t0,$t0,-1
    ld         $t0,24($a0)
    beqz       $t0, .L00013828
    nop
    ld         $sp,64($a0)
    sd         $zero,24($a0)
    ld         $a0,72($a0)
    jalr       $t0
    nop

glabel start_slave_loop
    lui        $t2,0x0
    daddiu     $t2,$t2,0
    dsll       $t2,$t2,0x10
    daddiu     $t2,$t2,0
    dsll       $t2,$t2,0x10
    daddiu     $t2,$t2,0
    lui        $t0,0xa800
    dsll32     $t0,$t0,0x0
    ori        $t0,$t0,0x600
    li         $t1,2
.L000138a8:
    sd         $zero,64($t0)
    sd         $t0,72($t0)
    sd         $t2,24($t0)
    addi       $t1,$t1,-1
    bnez       $t1, .L000138a8
    daddiu     $t0,$t0,128
    jr         $ra
    nop

glabel backtouser
    ld         $a0,-16352($zero)
    jal        ktimer_switch
    li         $a1,0
    sb         $zero,-16305($zero)
    ld         $gp,216($k1)
    jal        tfi_restore
    nop
    ld         $a0,24($k1)
    ld         $a1,32($k1)
    ld         $a2,40($k1)
    ld         $a3,48($k1)
    ld         $a4,56($k1)
    ld         $a5,64($k1)
    ld         $a6,72($k1)
    ld         $a7,80($k1)
    ld         $s0,120($k1)
    ld         $s1,128($k1)
    ld         $s2,136($k1)
    ld         $s3,144($k1)
    ld         $s4,152($k1)
    ld         $s5,160($k1)
    ld         $s6,168($k1)
    ld         $s7,176($k1)
    ld         $ra,240($k1)
    ld         $k0,288($k1)
    ld         $at,0($k1)
    dmtc0      $k0,$14
    ld         $sp,224($k1)
    ld         $k1,248($k1)
    nop
    mtc0       $k1,$12
    eret

glabel earlynofault
    li         $at,28
    daddiu     $sp,$sp,-16
    beq        $a1, $at, .L0001396c
    sd         $ra,0($sp)
    move       $v0,$zero
.L00013964:
    jr         $ra
    daddiu     $sp,$sp,16
.L0001396c:
    ld         $a1,288($a0)
    jal        dobuserre
    li         $a2,1
    ld         $ra,0($sp)
    b          .L00013964
    li         $v0,1

glabel idle_err
    daddiu     $sp,$sp,-48
    sd         $a2,24($sp)
    li         $a4,28
    sd         $a3,16($sp)
    sd         $s0,0($sp)
    li         $at,24
    andi       $a7,$a1,0x7c
    andi       $t0,$a1,0x4000
    move       $s0,$a0
    sd         $s8,8($sp)
    move       $s8,$a1
    beq        $a7, $at, .L000139bc
    sd         $ra,32($sp)
    bne        $a7, $a4, .L00013a08
.L000139bc:
    move       $a0,$zero
    move       $a1,$s0
    jal        dobuserre
    move       $a2,$zero
.L000139cc:
    jal        getbadvaddr
    nop
    move       $a6,$v0
    ld         $a1,-31952($gp)
    move       $a0,$zero
    ld         $a2,24($sp)
    move       $a3,$s0
    move       $a4,$s8
    jal        cmn_err
    ld         $a5,16($sp)
    ld         $ra,32($sp)
    ld         $s0,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00013a08:
    beqz       $t0, .L000139cc
    move       $a0,$zero
    move       $a1,$s0
    jal        dobuserr
    move       $a2,$zero
    b          .L000139cc
    nop

glabel dobuserre
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        dobuserr_common
    li         $a3,1
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel dobuserr
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        dobuserr_common
    move       $a3,$zero
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
    daddiu     $sp,$sp,-32
    sd         $ra,16($sp)
    sd         $s7,0($sp)
    move       $s7,$a1
    sd         $s2,8($sp)
    move       $s2,$a0
    move       $a0,$a1
    jal        maddr_to_dimm
    sd         $s0,24($sp)
    move       $s0,$v0
    li         $a0,6
    ld         $a1,-31952($gp)
    move       $a2,$s2
    move       $a3,$s7
    jal        cmn_err
    daddiu     $a1,$a1,80
    ld         $s7,0($sp)
    ld         $s2,8($sp)
    beqz       $s0, .L00013ac0
    ld         $v0,-31952($gp)
    lbu        $a2,0($s0)
    beqz       $a2, .L00013ac0
    daddiu     $a1,$v0,96
    b          .L00013ac8
    li         $a0,6
.L00013ac0:
    daddiu     $a1,$v0,152
    li         $a0,6
.L00013ac8:
    jal        cmn_err
    move       $a2,$s0
    ld         $ra,16($sp)
    ld         $s0,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
    daddiu     $sp,$sp,-64
    sd         $a2,32($sp)
    sd         $a4,0($sp)
    sd         $a5,8($sp)
    sd         $ra,40($sp)
    sd         $s2,24($sp)
    move       $a7,$a0
    move       $s2,$a1
    sd         $s0,16($sp)
    move       $s0,$a3
    bnez       $a0, .L00013b1c
    sd         $s1,48($sp)
    ld         $s1,-31952($gp)
    b          .L00013b24
    daddiu     $a1,$s1,216
.L00013b1c:
    ld         $s1,-31952($gp)
    daddiu     $a1,$s1,232
.L00013b24:
    li         $a0,6
    daddiu     $a2,$s1,248
    jal        cmn_err
    move       $a3,$a7
    li         $a0,6
    daddiu     $a1,$s1,80
    daddiu     $a2,$s1,264
    jal        cmn_err
    move       $a3,$s2
    ld         $s2,24($sp)
    li         $a0,6
    daddiu     $a1,$s1,80
    daddiu     $a2,$s1,280
    jal        cmn_err
    ld         $a3,32($sp)
    li         $at,254
    beq        $s0, $at, .L00013b84
    li         $a0,255
    bne        $s0, $a0, .L00013b98
    ld         $ra,40($sp)
.L00013b74:
    ld         $s0,16($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00013b84:
    daddiu     $a0,$s1,296
    jal        .text
    ld         $a1,8($sp)
    b          .L00013b74
    ld         $ra,40($sp)
.L00013b98:
    daddiu     $a1,$s1,312
    li         $a0,6
    move       $a2,$s0
    jal        cmn_err
    ld         $a3,0($sp)
    b          .L00013b74
    ld         $ra,40($sp)
    daddiu     $sp,$sp,-32
    lh         $at,0($gp)
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    bnez       $at, .L00013be4
    sd         $s1,16($sp)
.L00013bd0:
    ld         $ra,8($sp)
.L00013bd4:
    ld         $s1,16($sp)
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00013be4:
    ld         $s1,-31952($gp)
    li         $a0,6
    daddiu     $a2,$s1,344
    jal        cmn_err
    daddiu     $a1,$s1,584
    lw         $a0,0($s0)
    srl        $v0,$a0,0x1f
    bnez       $v0, .L00013cb0
    daddiu     $a2,$s1,392
.L00013c08:
    sll        $v1,$a0,0x1
    bltz       $v1, .L00013cc8
    daddiu     $a2,$s1,408
.L00013c14:
    sll        $a1,$a0,0x2
    bltz       $a1, .L00013ce0
    daddiu     $a2,$s1,424
.L00013c20:
    sll        $a2,$a0,0x3
    bltz       $a2, .L00013cf8
    daddiu     $a2,$s1,440
.L00013c2c:
    sll        $a3,$a0,0x4
    bltz       $a3, .L00013d10
.L00013c34:
    sll        $a4,$a0,0x5
    bltz       $a4, .L00013d2c
.L00013c3c:
    sll        $a5,$a0,0x6
    bltz       $a5, .L00013d48
.L00013c44:
    sll        $a6,$a0,0x7
    bltz       $a6, .L00013d64
.L00013c4c:
    sll        $a7,$a0,0x8
    bltz       $a7, .L00013d80
.L00013c54:
    sll        $t0,$a0,0x9
    bltz       $t0, .L00013d9c
.L00013c5c:
    sll        $t1,$a0,0xa
    bltz       $t1, .L00013db8
.L00013c64:
    sll        $t2,$a0,0xb
    bltz       $t2, .L00013c9c
.L00013c6c:
    sll        $t3,$a0,0xc
    bltz       $t3, .L00013dd4
.L00013c74:
    sll        $t8,$a0,0xd
    bgez       $t8, .L00013bd0
    ld         $a2,-31952($gp)
    daddiu     $a1,$s1,80
    li         $a0,6
    ld         $a3,72($s0)
    jal        cmn_err
    daddiu     $a2,$a2,600
    b          .L00013bd4
    ld         $ra,8($sp)
.L00013c9c:
    ld         $a1,56($s0)
    jal        .text
    daddiu     $a0,$s1,568
    b          .L00013c6c
    lw         $a0,0($s0)
.L00013cb0:
    daddiu     $a1,$s1,80
    lh         $a3,4($s0)
    jal        cmn_err
    li         $a0,6
    b          .L00013c08
    lw         $a0,0($s0)
.L00013cc8:
    daddiu     $a1,$s1,80
    lh         $a3,6($s0)
    jal        cmn_err
    li         $a0,6
    b          .L00013c14
    lw         $a0,0($s0)
.L00013ce0:
    daddiu     $a1,$s1,80
    lh         $a3,8($s0)
    jal        cmn_err
    li         $a0,6
    b          .L00013c20
    lw         $a0,0($s0)
.L00013cf8:
    daddiu     $a1,$s1,80
    lh         $a3,10($s0)
    jal        cmn_err
    li         $a0,6
    b          .L00013c2c
    lw         $a0,0($s0)
.L00013d10:
    daddiu     $a2,$s1,456
    daddiu     $a1,$s1,80
    lh         $a3,12($s0)
    jal        cmn_err
    li         $a0,6
    b          .L00013c34
    lw         $a0,0($s0)
.L00013d2c:
    daddiu     $a2,$s1,472
    daddiu     $a1,$s1,80
    lh         $a3,14($s0)
    jal        cmn_err
    li         $a0,6
    b          .L00013c3c
    lw         $a0,0($s0)
.L00013d48:
    daddiu     $a2,$s1,488
    daddiu     $a1,$s1,80
    ld         $a3,16($s0)
    jal        cmn_err
    li         $a0,6
    b          .L00013c44
    lw         $a0,0($s0)
.L00013d64:
    daddiu     $a2,$s1,504
    daddiu     $a1,$s1,80
    ld         $a3,24($s0)
    jal        cmn_err
    li         $a0,6
    b          .L00013c4c
    lw         $a0,0($s0)
.L00013d80:
    daddiu     $a2,$s1,520
    daddiu     $a1,$s1,80
    ld         $a3,32($s0)
    jal        cmn_err
    li         $a0,6
    b          .L00013c54
    lw         $a0,0($s0)
.L00013d9c:
    daddiu     $a2,$s1,536
    daddiu     $a1,$s1,80
    ld         $a3,40($s0)
    jal        cmn_err
    li         $a0,6
    b          .L00013c5c
    lw         $a0,0($s0)
.L00013db8:
    daddiu     $a2,$s1,552
    daddiu     $a1,$s1,80
    ld         $a3,48($s0)
    jal        cmn_err
    li         $a0,6
    b          .L00013c64
    lw         $a0,0($s0)
.L00013dd4:
    ld         $a2,-31952($gp)
    daddiu     $a1,$s1,80
    li         $a0,6
    ld         $a3,64($s0)
    jal        cmn_err
    daddiu     $a2,$a2,592
    b          .L00013c74
    lw         $a0,0($s0)

glabel dobuserr_common
    daddiu     $sp,$sp,-880
    sd         $a1,768($sp)
    sd         $a2,792($sp)
    sd         $zero,720($sp)
    sd         $zero,608($sp)
    sd         $zero,600($sp)
    sd         $zero,584($sp)
    sd         $zero,576($sp)
    sd         $zero,568($sp)
    sd         $zero,552($sp)
    sd         $zero,560($sp)
    sd         $zero,544($sp)
    sd         $zero,536($sp)
    sd         $zero,528($sp)
    sd         $s7,832($sp)
    sd         $s3,840($sp)
    sd         $s8,848($sp)
    sd         $s4,856($sp)
    lw         $at,0($gp)
    sd         $s6,656($sp)
    lh         $s6,-15456($zero)
    sd         $s0,632($sp)
    li         $s0,1
    sd         $s1,640($sp)
    sllv       $s1,$s0,$s6
    sd         $s5,624($sp)
    and        $at,$s1,$at
    move       $s5,$a0
    sd         $s2,648($sp)
    move       $s2,$a3
    beqz       $at, .L00014520
    sd         $ra,864($sp)
    daddiu     $at,$gp,0
    li         $s8,256
    sllv       $s8,$s8,$s6
.L00013e80:
    ll         $ra,0($at)
    or         $v0,$ra,$s8
    sc         $v0,0($at)
    beqzl      $v0, .L00013e80
    nop
    nor        $ra,$ra,$zero
    b          .L00013ec8
    and        $s8,$s8,$ra
.L00013ea0:
    ld         $ra,0($gp)
    bnez       $ra, .L00014150
    nop
.L00013eac:
    lw         $a1,0($gp)
    andi       $at,$a1,0xf
    bnez       $at, .L00013ea0
    or         $a2,$s1,$a1
    jal        compare_and_swap_int
    daddiu     $a0,$gp,0
    beqz       $v0, .L00013ea0
.L00013ec8:
    lui        $v1,0xaff0
    ld         $a2,-31944($gp)
    dsll       $a1,$s6,0x3
    ld         $s7,0($v1)
    sd         $s7,664($sp)
    daddu      $a1,$a1,$a2
    lui        $v0,0xaff1
    sd         $s7,0($a1)
    ld         $s7,64($v0)
    sd         $s7,16($a1)
    ld         $s4,168($v1)
    sd         $s4,32($a1)
    ld         $t3,144($v1)
    sd         $t3,704($sp)
    ld         $a3,-32400($gp)
    sd         $t3,48($a1)
    ld         $t2,136($v1)
    sd         $t2,616($sp)
    ld         $a4,-32440($gp)
    ld         $a0,-32448($gp)
    sd         $s4,728($sp)
    sd         $t2,64($a1)
    ld         $s4,0($a0)
    sd         $s4,80($a1)
    lw         $t1,0($a4)
    ld         $a5,-32408($gp)
    ld         $t0,-32432($gp)
    dsll32     $t1,$t1,0x0
    dsrl32     $t1,$t1,0x0
    sd         $t1,96($a1)
    lw         $t0,0($t0)
    ld         $a6,-32416($gp)
    ld         $a7,-32424($gp)
    dsll32     $t0,$t0,0x0
    dsrl32     $t0,$t0,0x0
    sd         $t0,112($a1)
    lw         $a7,0($a7)
    sd         $t1,680($sp)
    sd         $t0,696($sp)
    dsll32     $a7,$a7,0x0
    dsrl32     $a7,$a7,0x0
    sd         $a7,688($sp)
    sd         $a7,128($a1)
    ld         $a6,0($a6)
    sd         $a6,592($sp)
    sd         $a6,144($a1)
    ld         $a5,0($a5)
    sd         $a5,752($sp)
    sd         $a5,160($a1)
    ld         $a3,0($a3)
    sd         $a3,712($sp)
    sd         $a3,176($a1)
    ld         $a2,152($v1)
    sd         $a2,776($sp)
    sd         $a2,192($a1)
    ld         $a2,792($sp)
    ld         $v1,160($v1)
    sd         $v1,672($sp)
    beqz       $a2, .L00014768
    sd         $v1,208($a1)
    ld         $a3,792($sp)
    beq        $s0, $a3, .L00014770
    ld         $a5,792($sp)
    li         $a4,2
    beq        $a4, $a5, .L00014778
    move       $t2,$a4
.L00013fd0:
    beqz       $s2, .L00014048
    move       $a0,$zero
    beqz       $s5, .L00014048
    move       $a0,$zero
    ld         $a4,280($s5)
    andi       $v0,$a4,0x7c
    li         $a6,24
    beq        $v0, $a6, .L00014910
    li         $t1,0x8000
    li         $a7,28
    beq        $v0, $a7, .L0001496c
    ld         $t8,-31952($gp)
    ld         $t0,-31952($gp)
    ld         $a0,32($sp)
    daddiu     $t0,$t0,3432
    sd         $t0,24($sp)
.L00014010:
    li         $t1,-1
    dsll32     $t1,$t1,0x1f
    sltu       $t1,$a0,$t1
    bnez       $t1, .L00014170
    li         $t2,-1
    dsll32     $t2,$t2,0x1e
    sltu       $t2,$a0,$t2
    beqz       $t2, .L00014174
    lui        $t2,0x8000
    li         $a4,-1
    dsrl       $a4,$a4,0x18
    and        $a4,$a0,$a4
    b          .L000141b8
    sd         $a4,40($sp)
.L00014048:
    move       $s1,$s7
    sd         $a0,760($sp)
    move       $s3,$s4
    beqz       $a0, .L00014070
    sd         $a0,784($sp)
    andi       $a7,$s4,0x8
    beqz       $a7, .L00014070
    nop
    lui        $s1,0x1
    or         $s1,$s7,$s1
.L00014070:
    sd         $s8,384($sp)
    beqz       $s1, .L00014758
    sd         $s2,360($sp)
    li         $ra,3
    addiu      $s8,$s6,20
    addiu      $v1,$s6,36
    addiu      $v0,$s6,32
    dsllv      $v1,$s0,$v1
    addiu      $at,$s6,28
    dsllv      $v0,$s0,$v0
    dsllv      $at,$s0,$at
    sd         $v0,496($sp)
    or         $v0,$v0,$v1
    dsllv      $s8,$s0,$s8
    sd         $at,520($sp)
    or         $at,$at,$v0
    dsll32     $ra,$ra,0xb
    sd         $s8,480($sp)
    or         $s8,$s8,$at
    or         $s8,$s8,$ra
    and        $s8,$s1,$s8
    sd         $s2,360($sp)
    bnez       $s8, .L00014fac
    sd         $v1,488($sp)
    ld         $s8,-31936($gp)
    move       $s2,$zero
    ld         $s0,-31952($gp)
.L000140dc:
    dsll32     $ra,$s7,0xf
    bgez       $ra, .L00014100
    ld         $v0,-32392($gp)
    lui        $at,0x3306
    ori        $at,$at,0x2000
    and        $at,$s4,$at
    bnez       $at, .L000152e0
    sd         $at,472($sp)
.L000140fc:
    ld         $v0,-32392($gp)
.L00014100:
    and        $a4,$s7,$s1
    and        $a5,$v0,$a4
    beqz       $a5, .L000145e0
    and        $a0,$s4,$s3
    ld         $a6,704($sp)
    dsrl       $a6,$a6,0x15
    andi       $a6,$a6,0x3
    bne        $s6, $a6, .L00014268
    ld         $a7,768($sp)
    sw         $zero,72($sp)
    sd         $a5,368($sp)
    move       $v0,$zero
    beqz       $a7, .L00014560
    sd         $a4,400($sp)
    lui        $v0,0x8
    sw         $v0,72($sp)
    bnez       $s5, .L00014568
    sd         $a7,136($sp)
    b          .L0001457c
    lui        $t0,0x1000
.L00014150:
    ld         $t1,0($s4)
    and        $t1,$s3,$t1
    beqz       $t1, .L00014900
    move       $a0,$s5
    jal        heart_intr
    move       $a1,$s3
    b          .L00013eac
    nop
.L00014170:
    lui        $t2,0x8000
.L00014174:
    sltu       $t2,$a0,$t2
    bnez       $t2, .L00014194
    lui        $v0,0xa000
    sltu       $t3,$a0,$v0
    beqz       $t3, .L000141a0
    lui        $t9,0xc000
    b          .L000141ac
    lui        $a4,0x1fff
.L00014194:
    sltu       $t8,$a0,$v0
    bnez       $t8, .L00014780
    lui        $t9,0xc000
.L000141a0:
    sltu       $t9,$a0,$t9
    beqz       $t9, .L00014780
    lui        $a4,0x1fff
.L000141ac:
    ori        $a4,$a4,0xffff
    and        $a4,$a0,$a4
    sd         $a4,40($sp)
.L000141b8:
    move       $a0,$a4
    daddiu     $a2,$sp,56
    jal        heart_paddr_to_port
    daddiu     $a1,$sp,48
    li         $a0,1
    b          .L00014048
    sw         $v0,64($sp)
.L000141d4:
    sd         $a5,456($sp)
    sd         $a5,88($sp)
    sd         $a6,464($sp)
    lui        $a7,0x200
    or         $a7,$v0,$a7
    sw         $a7,72($sp)
.L000141ec:
    daddiu     $a3,$sp,72
    li         $a5,1
    ld         $a4,400($sp)
    li         $a1,1
    dsll32     $a5,$a5,0x9
    li         $a2,2
    dsll32     $a1,$a1,0x8
    and        $a1,$a4,$a1
    and        $a4,$a4,$a5
    sd         $a1,312($sp)
    movz       $a2,$zero,$a4
    sltu       $a1,$zero,$a1
    daddiu     $a0,$s0,1144
    sd         $a4,320($sp)
    or         $a1,$a1,$a2
    lw         $a2,16($sp)
    jal        heart_error_refine
    ori        $a1,$a1,0x4
    beqz       $v0, .L00014258
    ld         $a4,368($sp)
    li         $a2,9
    beq        $v0, $a2, .L000154cc
    ld         $a1,-31952($gp)
.L00014248:
    jal        .text
    daddiu     $a0,$sp,72
    addiu      $s2,$s2,1
    ld         $a4,368($sp)
.L00014258:
    nor        $a4,$a4,$zero
    and        $s1,$s1,$a4
    sltiu      $a3,$s1,1
    sd         $a3,720($sp)
.L00014268:
    ld         $a5,720($sp)
    beqz       $a5, .L000145dc
.L00014270:
    ld         $a6,784($sp)
.L00014274:
    beqz       $a6, .L000142cc
    ld         $t9,792($sp)
    lw         $a0,64($sp)
    bltz       $a0, .L000142bc
    li         $t2,254
    slti       $a7,$a0,16
    beqz       $a7, .L000142b8
    ld         $t0,768($sp)
    move       $v0,$zero
    beqz       $t0, .L0001436c
    sw         $zero,72($sp)
    lui        $v0,0x8
    sw         $v0,72($sp)
    bnez       $s5, .L00014374
    sd         $t0,136($sp)
    b          .L00014388
    lw         $a2,16($sp)
.L000142b8:
    li         $t2,254
.L000142bc:
    beq        $a0, $t2, .L00014954
    ld         $t3,784($sp)
.L000142c4:
    bnez       $t3, .L00015454
.L000142c8:
    ld         $t9,792($sp)
.L000142cc:
    li         $t8,1
    beq        $t8, $t9, .L00014414
.L000142d4:
    lh         $ra,0($gp)
    beqz       $ra, .L00014414
    nop
    bnez       $s2, .L000150f8
    ld         $v0,792($sp)
.L000142e8:
    li         $at,2
    beq        $at, $v0, .L00014440
    nor        $t9,$s3,$zero
    ld         $a0,792($sp)
    li         $v1,1
    beq        $v1, $a0, .L00014440
    nor        $t9,$s3,$zero
    beqz       $s2, .L00014440
    nor        $t9,$s3,$zero
    ld         $a1,360($sp)
    beqz       $a1, .L00014430
    daddiu     $a2,$s0,3408
    ld         $a4,384($sp)
    daddiu     $a3,$gp,0
    move       $v0,$zero
    nor        $a4,$a4,$zero
.L00014328:
    ll         $a2,0($a3)
    and        $a5,$a2,$a4
    sc         $a5,0($a3)
    beqzl      $a5, .L00014328
    nop
.L0001433c:
    ld         $s7,832($sp)
    ld         $s3,840($sp)
    ld         $s5,624($sp)
    ld         $s8,848($sp)
    ld         $s4,856($sp)
    ld         $s0,632($sp)
    ld         $ra,864($sp)
    ld         $s1,640($sp)
    ld         $s2,648($sp)
    ld         $s6,656($sp)
    jr         $ra
    daddiu     $sp,$sp,880
.L0001436c:
    beqz       $s5, .L00014388
    lw         $a2,16($sp)
.L00014374:
    sd         $s5,144($sp)
    lui        $a5,0x4
    or         $v0,$v0,$a5
    sw         $v0,72($sp)
    lw         $a2,16($sp)
.L00014388:
    lw         $t0,64($sp)
    sh         $s6,82($sp)
    sh         $t0,78($sp)
    daddiu     $a3,$sp,72
    li         $a1,4
    ld         $t0,40($sp)
    daddiu     $a0,$s0,3080
    lui        $a6,0x1000
    ld         $a7,56($sp)
    sd         $a7,96($sp)
    lui        $a7,0x20
    or         $a6,$v0,$a6
    sd         $t0,88($sp)
    or         $a6,$a6,$a7
    lui        $a7,0x200
    ld         $t0,32($sp)
    or         $a6,$a6,$a7
    lui        $a7,0x4000
    sd         $t0,120($sp)
    or         $a6,$a6,$a7
    lui        $a7,0x100
    or         $a6,$a6,$a7
    jal        heart_error_refine
    sw         $a6,72($sp)
    beqz       $v0, .L000142cc
    ld         $t9,792($sp)
    li         $t1,9
    beq        $v0, $t1, .L000154b4
    ld         $a1,-31952($gp)
.L000143fc:
    jal        .text
    daddiu     $a0,$sp,72
    ld         $t3,792($sp)
    li         $t2,1
    bne        $t2, $t3, .L000142d4
    addiu      $s2,$s2,1
.L00014414:
    beqz       $s2, .L000142e8
    ld         $v0,792($sp)
    ld         $t8,760($sp)
    beqz       $t8, .L000142e8
    ld         $v0,792($sp)
    b          .L000155b4
    daddiu     $a2,$s0,264
.L00014430:
    move       $a1,$zero
    jal        cmn_err_tag
    li         $a0,68
    nor        $t9,$s3,$zero
.L00014440:
    and        $t9,$s4,$t9
    lui        $ra,0x4f0
    and        $t9,$t9,$ra
    beqz       $t9, .L00014458
    ld         $ra,-32440($gp)
    sw         $zero,0($ra)
.L00014458:
    xor        $s3,$s4,$s3
    beqz       $s3, .L00014468
    ld         $at,-32448($gp)
    sd         $s3,0($at)
.L00014468:
    xor        $s1,$s7,$s1
    beqz       $s1, .L00014484
    ld         $v1,360($sp)
    lui        $v0,0xaff1
    ori        $v0,$v0,0x40
    sd         $s1,0($v0)
    ld         $v1,360($sp)
.L00014484:
    beqz       $v1, .L000144b8
    lui        $a4,0xaff1
    lh         $a3,-15456($zero)
    move       $a0,$s6
    li         $a2,1
    addiu      $a3,$a3,59
    dsllv      $a2,$a2,$a3
    li         $a3,-1
    move       $a1,$zero
    dsll32     $a3,$a3,0x1f
    jal        heart_imr_bits_rmw
    or         $a2,$a2,$a3
    lui        $a4,0xaff1
.L000144b8:
    ori        $a4,$a4,0x40
    ld         $a4,0($a4)
    beqz       $a4, .L000144e4
    ld         $t1,792($sp)
    lh         $a7,-15456($zero)
    lui        $a6,0xaff1
    li         $a5,1
    addiu      $a7,$a7,59
    dsllv      $a5,$a5,$a7
    sd         $a5,32($a6)
    ld         $t1,792($sp)
.L000144e4:
    li         $t0,1
    ld         $t8,384($sp)
    daddiu     $t3,$gp,0
    nor        $t8,$t8,$zero
.L000144f4:
    ll         $t2,0($t3)
    and        $t9,$t2,$t8
    sc         $t9,0($t3)
    beqzl      $t9, .L000144f4
    nop
    beq        $t0, $t1, .L00014938
    nop
    beqz       $s2, .L000148f8
    nop
    b          .L0001433c
    move       $v0,$zero
.L00014520:
    daddiu     $t8,$gp,0
    li         $s8,16
    sllv       $s8,$s8,$s6
.L0001452c:
    ll         $ra,0($t8)
    or         $t9,$ra,$s8
    sc         $t9,0($t8)
    beqzl      $t9, .L0001452c
    nop
    lui        $s4,0xaff1
    ori        $s4,$s4,0x30
    addiu      $s3,$s6,46
    dsllv      $s3,$s0,$s3
    nor        $ra,$ra,$zero
    and        $s8,$s8,$ra
    b          .L00013eac
    or         $s8,$s1,$s8
.L00014560:
    beqz       $s5, .L0001457c
    lui        $t0,0x1000
.L00014568:
    sd         $s5,144($sp)
    lui        $ra,0x4
    or         $v0,$v0,$ra
    sw         $v0,72($sp)
    lui        $t0,0x1000
.L0001457c:
    or         $v0,$v0,$t0
    ld         $t0,760($sp)
    ld         $a5,616($sp)
    li         $a7,-1
    sh         $a6,82($sp)
    dsrl       $a7,$a7,0x18
    sw         $v0,72($sp)
    beqz       $t0, .L000141d4
    and        $a5,$a5,$a7
    ld         $a4,40($sp)
    bne        $a5, $a4, .L000141d4
    nop
    sd         $a4,88($sp)
    sd         $zero,784($sp)
    sd         $a6,464($sp)
    sd         $a5,456($sp)
    lui        $t1,0x20
    ld         $t2,32($sp)
    sd         $t2,120($sp)
    lui        $t2,0x200
    or         $t1,$v0,$t1
    or         $t1,$t1,$t2
    b          .L000141ec
    sw         $t1,72($sp)
.L000145dc:
    and        $a0,$s4,$s3
.L000145e0:
    lui        $a5,0x4f0
    and        $a4,$a5,$a0
    beqz       $a4, .L000146f8
    andi       $a6,$s4,0x8
    ld         $t3,768($sp)
    sw         $zero,72($sp)
    sd         $a4,392($sp)
    move       $v0,$zero
    beqz       $t3, .L00014620
    sd         $a0,744($sp)
    lui        $v0,0x8
    sw         $v0,72($sp)
    bnez       $s5, .L00014628
    sd         $t3,136($sp)
    b          .L0001463c
    lui        $a4,0x4000
.L00014620:
    beqz       $s5, .L0001463c
    lui        $a4,0x4000
.L00014628:
    sd         $s5,144($sp)
    lui        $t9,0x4
    or         $v0,$v0,$t9
    sw         $v0,72($sp)
    lui        $a4,0x4000
.L0001463c:
    lui        $a5,0x100
    or         $a4,$v0,$a4
    or         $a4,$a4,$a5
    sw         $a4,72($sp)
    ld         $at,680($sp)
    ld         $a2,696($sp)
    ld         $a1,688($sp)
    srl        $v1,$at,0x18
    sll        $at,$at,0x0
    sd         $at,736($sp)
    andi       $a2,$a2,0xffff
    andi       $at,$at,0xff
    sd         $at,168($sp)
    dsll32     $a2,$a2,0x0
    andi       $v1,$v1,0xff
    or         $a1,$a1,$a2
    lw         $a2,16($sp)
    andi       $v1,$v1,0xf
    sd         $v1,296($sp)
    daddiu     $a3,$sp,72
    daddiu     $a0,$s0,1360
    sd         $a1,304($sp)
    li         $v0,10
    sd         $a1,96($sp)
    li         $a1,9
    sh         $v1,78($sp)
    andi       $at,$at,0x80
    jal        heart_error_refine
    movn       $a1,$v0,$at
    beqz       $v0, .L000146d4
    ld         $a6,392($sp)
    li         $a5,9
    beq        $v0, $a5, .L000155e0
    ld         $a1,-31952($gp)
.L000146c4:
    jal        .text
    daddiu     $a0,$sp,72
    addiu      $s2,$s2,1
    ld         $a6,392($sp)
.L000146d4:
    lui        $a7,0x800
    nor        $a6,$a6,$a7
    and        $s3,$s3,$a6
    beqz       $s3, .L00014940
    lui        $t3,0x1
.L000146e8:
    ld         $t0,608($sp)
    bnez       $t0, .L00014274
    ld         $a6,784($sp)
    andi       $a6,$s4,0x8
.L000146f8:
    beqz       $a6, .L000148b0
    andi       $a4,$s4,0x7
    ld         $a5,592($sp)
    srl        $a4,$a5,0x12
    andi       $a4,$a4,0x3fff
    andi       $a4,$a4,0x3
    bne        $s6, $a4, .L000148a0
    sll        $a5,$a5,0x0
    ld         $a7,760($sp)
    beqz       $a7, .L0001489c
    ld         $a7,584($sp)
    sw         $zero,72($sp)
    ld         $t0,768($sp)
    sd         $a6,176($sp)
    sd         $a5,336($sp)
    move       $v0,$zero
    beqz       $t0, .L00014794
    sd         $a4,376($sp)
    lui        $v0,0x8
    sw         $v0,72($sp)
    bnez       $s5, .L0001479c
    sd         $t0,136($sp)
    b          .L000147b0
    lw         $a2,16($sp)
.L00014758:
    ld         $s8,-31936($gp)
    move       $s2,$zero
    b          .L00014270
    ld         $s0,-31952($gp)
.L00014768:
    b          .L00013fd0
    sw         $s0,16($sp)
.L00014770:
    b          .L00013fd0
    sw         $zero,16($sp)
.L00014778:
    b          .L00013fd0
    sw         $t2,16($sp)
.L00014780:
    jal        .text
    nop
    move       $a4,$v0
    b          .L000141b8
    sd         $v0,40($sp)
.L00014794:
    beqz       $s5, .L000147b0
    lw         $a2,16($sp)
.L0001479c:
    sd         $s5,144($sp)
    lui        $t3,0x4
    or         $v0,$v0,$t3
    sw         $v0,72($sp)
    lw         $a2,16($sp)
.L000147b0:
    ld         $ra,56($sp)
    sd         $ra,96($sp)
    ld         $ra,40($sp)
    ld         $at,376($sp)
    daddiu     $a3,$sp,72
    li         $a1,5
    sh         $at,82($sp)
    daddiu     $a0,$s0,1760
    lui        $t8,0x1000
    lw         $t9,64($sp)
    or         $t8,$v0,$t8
    sh         $t9,78($sp)
    lui        $t9,0x20
    sd         $ra,88($sp)
    or         $t8,$t8,$t9
    lui        $t9,0x200
    ld         $ra,32($sp)
    or         $t8,$t8,$t9
    lui        $t9,0x4000
    sd         $ra,120($sp)
    or         $t8,$t8,$t9
    lui        $t9,0x100
    or         $t8,$t8,$t9
    jal        heart_error_refine
    sw         $t8,72($sp)
    beqz       $v0, .L0001487c
    ld         $a5,176($sp)
    ld         $a0,336($sp)
    srl        $a4,$a0,0xc
    andi       $a0,$a0,0xfff
    sll        $a0,$a0,0xc
    li         $v1,9
    dsll32     $a0,$a0,0x0
    andi       $a4,$a4,0xf
    sd         $a4,288($sp)
    dsrl32     $a0,$a0,0x0
    beq        $v0, $v1, .L000157d8
    sd         $a0,512($sp)
.L00014848:
    lw         $a1,64($sp)
    bne        $a1, $a4, .L00015860
    ld         $a2,56($sp)
.L00014854:
    lui        $a4,0xff
    ld         $a3,512($sp)
    ori        $a4,$a4,0xf000
    and        $a4,$a2,$a4
    bne        $a3, $a4, .L0001587c
    daddiu     $a1,$s0,1928
.L0001486c:
    jal        .text
    daddiu     $a0,$sp,72
    addiu      $s2,$s2,1
    ld         $a5,176($sp)
.L0001487c:
    nor        $a5,$a5,$zero
    and        $s3,$s3,$a5
    beqz       $s3, .L00014dcc
    lui        $a7,0x1
.L0001488c:
    sd         $zero,784($sp)
    ld         $a6,576($sp)
    sd         $a6,584($sp)
    ld         $a7,584($sp)
.L0001489c:
    sd         $a7,600($sp)
.L000148a0:
    ld         $t0,600($sp)
    bnez       $t0, .L00014274
    ld         $a6,784($sp)
    andi       $a4,$s4,0x7
.L000148b0:
    beqz       $a4, .L00014a00
    andi       $a1,$s1,0x3
    ld         $a5,752($sp)
    dsrl       $a5,$a5,0x16
    andi       $a5,$a5,0x3
    bne        $s6, $a5, .L000149f4
    ld         $a0,568($sp)
    ld         $a6,768($sp)
    sw         $zero,72($sp)
    move       $v0,$zero
    beqz       $a6, .L00014a78
    sd         $a4,184($sp)
    lui        $v0,0x8
    sw         $v0,72($sp)
    bnez       $s5, .L00014a80
    sd         $a6,136($sp)
    b          .L00014a94
    ld         $a0,712($sp)
.L000148f8:
    b          .L0001433c
    li         $v0,1
.L00014900:
    jal        us_delay
    li         $a0,5
    b          .L00013eac
    nop
.L00014910:
    dsll       $t1,$t1,0x10
    ld         $t0,-31952($gp)
    and        $t1,$a4,$t1
    ld         $a0,288($s5)
    daddiu     $t0,$t0,3424
    beqz       $t1, .L00014a70
    sd         $t0,24($sp)
    daddiu     $a0,$a0,4
    b          .L00014010
    sd         $a0,32($sp)
.L00014938:
    b          .L0001433c
    move       $v0,$zero
.L00014940:
    nor        $t3,$t3,$zero
    and        $s1,$s1,$t3
    sltiu      $t2,$s1,1
    b          .L000146e8
    sd         $t2,608($sp)
.L00014954:
    jal        is_in_main_memory
    ld         $a0,48($sp)
    bnez       $v0, .L000142c4
    ld         $t3,784($sp)
    b          .L00015778
    daddiu     $a2,$s0,3128
.L0001496c:
    move       $a0,$s5
    daddiu     $t8,$t8,3428
    jal        ldst_addr
    sd         $t8,24($sp)
    move       $a0,$v0
    b          .L00014010
    sd         $v0,32($sp)
.L00014988:
    sd         $a0,448($sp)
    sd         $a0,88($sp)
    sd         $a5,344($sp)
    lui        $t9,0x200
    or         $t9,$v0,$t9
    sw         $t9,72($sp)
.L000149a0:
    daddiu     $a3,$sp,72
    ld         $at,752($sp)
    daddiu     $a0,$s0,1992
    li         $a1,5
    lw         $a2,16($sp)
    li         $v0,6
    dsrl       $at,$at,0x8
    sd         $at,280($sp)
    andi       $at,$at,0x80
    jal        heart_error_refine
    movn       $a1,$v0,$at
    bnez       $v0, .L000158d4
    li         $a2,9
.L000149d4:
    ld         $v0,184($sp)
    nor        $v0,$v0,$zero
    and        $s3,$s3,$v0
    beqz       $s3, .L00014de0
    lui        $t1,0x1
.L000149e8:
    ld         $v1,552($sp)
    sd         $v1,568($sp)
    ld         $a0,568($sp)
.L000149f4:
    bnez       $a0, .L00014274
    ld         $a6,784($sp)
    andi       $a1,$s1,0x3
.L00014a00:
    beqz       $a1, .L00014b84
    addiu      $v1,$s6,60
    ld         $v0,776($sp)
    li         $a2,1
    dsll32     $a2,$a2,0xd
    and        $a2,$v0,$a2
    sd         $a2,272($sp)
    dsrl32     $v0,$v0,0xb
    andi       $v0,$v0,0x7
    beqz       $a2, .L00014df4
    sd         $v0,264($sp)
    bne        $s6, $v0, .L00014b24
    sd         $v0,264($sp)
    addiu      $v1,$s6,60
.L00014a38:
    li         $v0,1
    dsllv      $v0,$v0,$v1
    and        $a3,$v0,$s1
    beqz       $a3, .L00014b28
    ld         $t1,784($sp)
    andi       $a0,$s1,0x1
    beqz       $a0, .L00014b28
    ld         $t1,784($sp)
    ld         $a2,784($sp)
    nor        $a1,$v0,$zero
    bnez       $a2, .L00014b2c
    and        $s1,$s1,$a1
    b          .L00014b40
    sd         $zero,440($sp)
.L00014a70:
    b          .L00014010
    sd         $a0,32($sp)
.L00014a78:
    beqz       $s5, .L00014a94
    ld         $a0,712($sp)
.L00014a80:
    sd         $s5,144($sp)
    lui        $a3,0x4
    or         $v0,$v0,$a3
    sw         $v0,72($sp)
    ld         $a0,712($sp)
.L00014a94:
    li         $a2,-1
    ld         $a1,752($sp)
    dsrl32     $a2,$a2,0x0
    and        $a0,$a0,$a2
    ld         $a2,784($sp)
    lui        $a3,0x1000
    andi       $a1,$a1,0xff
    sh         $a5,82($sp)
    or         $v0,$v0,$a3
    dsll32     $a1,$a1,0x0
    sw         $v0,72($sp)
    beqz       $a2, .L00014988
    or         $a0,$a0,$a1
    ld         $a4,40($sp)
    bne        $a0, $a4, .L00014988
    nop
    sd         $a4,88($sp)
    sd         $zero,784($sp)
    sd         $a5,344($sp)
    sd         $a0,448($sp)
    ld         $t0,56($sp)
    sd         $t0,96($sp)
    lui        $a6,0x20
    lw         $a7,64($sp)
    sh         $a7,78($sp)
    lui        $a7,0x200
    or         $a6,$v0,$a6
    ld         $t0,32($sp)
    or         $a6,$a6,$a7
    lui        $a7,0x4000
    sd         $t0,120($sp)
    or         $a6,$a6,$a7
    lui        $a7,0x100
    or         $a6,$a6,$a7
    b          .L000149a0
    sw         $a6,72($sp)
.L00014b24:
    ld         $t1,784($sp)
.L00014b28:
    beqz       $t1, .L00014b3c
.L00014b2c:
    lw         $t2,64($sp)
    li         $t3,254
    beq        $t2, $t3, .L00014e94
    ld         $a1,-32384($gp)
.L00014b3c:
    sd         $zero,440($sp)
.L00014b40:
    ld         $a5,776($sp)
    li         $a6,1
    dsll32     $a6,$a6,0xa
    and        $a5,$a5,$a6
    beqz       $a5, .L00014e04
    ld         $a7,776($sp)
    move       $v0,$zero
    addiu      $s2,$s2,1
.L00014b60:
    beqz       $v0, .L00015950
.L00014b64:
    li         $t0,-4
    and        $s1,$s1,$t0
    sltiu      $a7,$s1,1
    sd         $a7,560($sp)
    ld         $t1,560($sp)
.L00014b78:
    bnez       $t1, .L00014274
    ld         $a6,784($sp)
    addiu      $v1,$s6,60
.L00014b84:
    li         $v0,1
    dsllv      $v0,$v0,$v1
    and        $t2,$v0,$s1
    beqz       $t2, .L00014bec
    li         $a4,1
    lw         $a3,0($gp)
    daddiu     $a0,$gp,0
    dsll       $a2,$s6,0x2
    daddu      $a0,$a2,$a0
    sd         $a0,256($sp)
    daddiu     $a4,$gp,0
    lw         $a0,0($a0)
    sd         $v0,800($sp)
    daddu      $a2,$a2,$a4
    lw         $a1,0($a2)
    slt        $a0,$a0,$a3
    sd         $a2,248($sp)
    addiu      $a1,$a1,1
    beqz       $a0, .L00015aac
    sw         $a1,0($a2)
.L00014bd4:
    nor        $a2,$v0,$zero
    and        $s1,$s1,$a2
    sltiu      $a1,$s1,1
    bnez       $a1, .L00014274
    ld         $a6,784($sp)
    li         $a4,1
.L00014bec:
    dsll32     $a4,$a4,0xa
    and        $a4,$s7,$a4
    beqz       $a4, .L00014c1c
    lui        $a7,0x1
    ld         $a5,728($sp)
    dsrl       $a5,$a5,0x14
    andi       $a5,$a5,0x3
    beq        $s6, $a5, .L00015b0c
.L00014c0c:
    ld         $a6,544($sp)
    bnez       $a6, .L00014274
    ld         $a6,784($sp)
    lui        $a7,0x1
.L00014c1c:
    and        $a7,$a7,$s1
    beqz       $a7, .L00014da8
    addiu      $a5,$s6,4
    beqz       $s3, .L00014d9c
    ld         $a0,536($sp)
    and        $t1,$s4,$s3
    lui        $t0,0x4f0
    and        $t0,$t0,$t1
    sd         $t1,744($sp)
    bnez       $t0, .L00015c78
    sd         $t0,392($sp)
.L00014c48:
    lui        $v0,0x1
    ori        $v0,$v0,0xd000
    and        $v0,$s3,$v0
    beqz       $v0, .L00014d08
    andi       $v1,$s3,0x8000
    beqz       $v1, .L00014c80
    sd         $v0,240($sp)
    lw         $a1,0($gp)
    lw         $a2,-32520($gp)
    lw         $a0,-32524($gp)
    slt        $a1,$a1,$a2
    addiu      $a0,$a0,1
    beqz       $a1, .L00016018
    sw         $a0,-32524($gp)
.L00014c80:
    andi       $a3,$s3,0x4000
    beqz       $a3, .L00014cac
    andi       $a7,$s3,0x1000
    lw         $a5,0($gp)
    lw         $a6,-32512($gp)
    lw         $a4,-32516($gp)
    slt        $a5,$a5,$a6
    addiu      $a4,$a4,1
    beqz       $a5, .L00016050
    sw         $a4,-32516($gp)
.L00014ca8:
    andi       $a7,$s3,0x1000
.L00014cac:
    beqz       $a7, .L00014cd4
    lui        $t3,0x1
    lw         $t1,0($gp)
    lw         $t2,-32504($gp)
    lw         $t0,-32508($gp)
    slt        $t1,$t1,$t2
    addiu      $t0,$t0,1
    beqz       $t1, .L00016088
    sw         $t0,-32508($gp)
.L00014cd0:
    lui        $t3,0x1
.L00014cd4:
    and        $t3,$t3,$s3
    beqz       $t3, .L00014d00
    ld         $at,240($sp)
    lw         $t9,0($gp)
    lw         $ra,-32496($gp)
    lw         $t8,-32500($gp)
    slt        $t9,$t9,$ra
    addiu      $t8,$t8,1
    beqz       $t9, .L000160c0
    sw         $t8,-32500($gp)
.L00014cfc:
    ld         $at,240($sp)
.L00014d00:
    nor        $at,$at,$zero
    and        $s3,$s3,$at
.L00014d08:
    dsll32     $v0,$s3,0x4
    bgez       $v0, .L00014d40
    andi       $a3,$s3,0x800
    lw         $a0,0($gp)
    lw         $a1,-32488($gp)
    lw         $v1,-32492($gp)
    slt        $a0,$a0,$a1
    addiu      $v1,$v1,1
    beqz       $a0, .L00015fe0
    sw         $v1,-32492($gp)
.L00014d30:
    lui        $a2,0x800
    nor        $a2,$a2,$zero
    and        $s3,$s3,$a2
    andi       $a3,$s3,0x800
.L00014d40:
    beqz       $a3, .L00014d60
    andi       $a6,$s3,0x400
    lw         $a4,0($gp)
    li         $a5,-2049
    and        $s3,$s3,$a5
    addiu      $a4,$a4,1
    sw         $a4,0($gp)
    andi       $a6,$s3,0x400
.L00014d60:
    beqz       $a6, .L00014d80
    and        $v0,$s4,$s3
    lw         $a7,0($gp)
    li         $t0,-1025
    and        $s3,$s3,$t0
    addiu      $a7,$a7,1
    sw         $a7,0($gp)
    and        $v0,$s4,$s3
.L00014d80:
    andi       $v0,$v0,0x7
    bnez       $v0, .L00015e24
    ld         $t2,784($sp)
.L00014d8c:
    beqz       $s3, .L00014edc
.L00014d90:
    ld         $v1,528($sp)
    sd         $v1,536($sp)
    ld         $a0,536($sp)
.L00014d9c:
    bnez       $a0, .L00014274
    ld         $a6,784($sp)
    addiu      $a5,$s6,4
.L00014da8:
    li         $a4,1
    dsllv      $a4,$a4,$a5
    and        $a4,$s1,$a4
    bnez       $a4, .L000160f8
    andi       $v0,$s1,0x4
.L00014dbc:
    beqz       $v0, .L00014274
    ld         $a6,784($sp)
    b          .L00016150
    sd         $v0,232($sp)
.L00014dcc:
    nor        $a7,$a7,$zero
    and        $s1,$s1,$a7
    sltiu      $a6,$s1,1
    b          .L0001488c
    sd         $a6,576($sp)
.L00014de0:
    nor        $t1,$t1,$zero
    and        $s1,$s1,$t1
    sltiu      $t0,$s1,1
    b          .L000149e8
    sd         $t0,552($sp)
.L00014df4:
    bne        $s6, $v0, .L00014b78
    ld         $t1,560($sp)
    b          .L00014a38
    addiu      $v1,$s6,60
.L00014e04:
    dsrl32     $a7,$a7,0x2
    ld         $a6,-31928($gp)
    andi       $a7,$a7,0xff
    dsll       $a7,$a7,0x3
    daddu      $a6,$a6,$a7
    lw         $v0,0($a6)
    li         $t3,1
    beq        $v0, $t3, .L00014ec0
    li         $t0,2
    beq        $v0, $t0, .L00014ecc
    li         $a4,255
.L00014e30:
    sd         $a5,816($sp)
    andi       $t2,$s1,0x3
    li         $t1,1
    ld         $v0,776($sp)
    li         $v1,-1
    sd         $a4,160($sp)
    dsrl       $v1,$v1,0x1e
    and        $v0,$v0,$v1
    beq        $t1, $t2, .L00014ef4
    sd         $v0,504($sp)
    move       $a6,$t1
    sd         $a5,816($sp)
    addiu      $s2,$s2,1
    move       $a7,$zero
    sd         $a4,160($sp)
.L00014e6c:
    ld         $a2,160($sp)
    move       $a0,$v0
    andi       $a1,$s7,0x1
    ld         $a3,672($sp)
    move       $a4,$a6
    jal        log_dimmerr
    sd         $a7,824($sp)
    ld         $v0,824($sp)
    b          .L00014b60
    ld         $a5,816($sp)
.L00014e94:
    ld         $a0,48($sp)
    li         $a2,-1
    and        $a0,$a0,$a1
    ld         $a1,776($sp)
    dsrl       $a2,$a2,0x1e
    and        $a1,$a1,$a2
    bne        $a0, $a1, .L00014b3c
    li         $a3,1
    sd         $a3,440($sp)
    b          .L00014b40
    sd         $zero,784($sp)
.L00014ec0:
    li         $a4,2
    bne        $v0, $a4, .L00014e30
    lbu        $a4,4($a6)
.L00014ecc:
    lbu        $a4,4($a6)
    addiu      $a4,$a4,64
    b          .L00014e30
    andi       $a4,$a4,0xff
.L00014edc:
    lui        $a6,0x1
    nor        $a6,$a6,$zero
    and        $s1,$s1,$a6
    sltiu      $a5,$s1,1
    b          .L00014d90
    sd         $a5,528($sp)
.L00014ef4:
    li         $t2,1
    lui        $a7,0xaff1
    li         $t1,-7
    ori        $a7,$a7,0x40
    lui        $t0,0xaff6
    dsll32     $t1,$t1,0x1c
    sd         $t2,0($a7)
    ld         $t3,0($t0)
    or         $t1,$v0,$t1
    ld         $t1,0($t1)
    ld         $a7,0($a7)
    lui        $t9,0xaff0
    ld         $t8,0($t0)
    ld         $t8,24($t9)
    lui        $ra,0x10
    sd         $t8,216($sp)
    li         $t3,-11
    dsll32     $t3,$t3,0x1b
    or         $t8,$t8,$ra
    sd         $t8,24($t9)
    move       $t2,$v0
    or         $t2,$v0,$t3
    ld         $t8,0($t0)
.L00014f50:
    lld        $t1,0($t2)
    move       $t3,$t1
    move       $t1,$t3
    scd        $t3,0($t2)
    beqzl      $t3, .L00014f50
    nop
    li         $a1,8
    move       $a0,$t2
    ld         $t0,0($t0)
    andi       $a7,$a7,0x1
    jal        __dcache_wb_inval
    sd         $a7,808($sp)
    ld         $v0,504($sp)
    ld         $a6,808($sp)
    ld         $t3,216($sp)
    lui        $t2,0xaff6
    lui        $t8,0xaff0
    ld         $t9,0($t2)
    ori        $t8,$t8,0x18
    sd         $t3,0($t8)
    li         $a7,1
    b          .L00014e6c
    ld         $t2,0($t2)
.L00014fac:
    ld         $s0,-31952($gp)
    li         $a0,6
    daddiu     $a2,$s0,608
    jal        cmn_err
    daddiu     $a1,$s0,584
    li         $ra,1
    dsll32     $ra,$ra,0xc
    and        $ra,$s8,$ra
    beqz       $ra, .L00014fec
    li         $a2,1
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,656
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    li         $a2,1
.L00014fec:
    dsll32     $a2,$a2,0xb
    and        $a2,$s8,$a2
    beqz       $a2, .L00015014
    ld         $a2,488($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,680
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,488($sp)
.L00015014:
    and        $a2,$a2,$s8
    beqz       $a2, .L00015038
    ld         $a2,496($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,704
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,496($sp)
.L00015038:
    and        $a2,$a2,$s8
    beqz       $a2, .L0001505c
    ld         $a2,520($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,736
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,520($sp)
.L0001505c:
    and        $a2,$a2,$s8
    beqz       $a2, .L00015080
    ld         $a2,480($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,768
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,480($sp)
.L00015080:
    and        $a2,$a2,$s8
    beqz       $a2, .L000150a0
    sd         $s8,328($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,808
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
.L000150a0:
    ld         $s8,-31936($gp)
    daddiu     $a1,$s0,832
    ld         $a2,-31952($gp)
    li         $a0,6
    daddiu     $a4,$s8,144
    ld         $a3,664($sp)
    jal        cmn_err
    daddiu     $a2,$a2,3440
    daddiu     $a4,$s8,1824
    move       $a3,$s7
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,832
    li         $a0,6
    jal        cmn_err
    daddiu     $a2,$a2,3448
    ld         $a3,328($sp)
    nor        $a3,$a3,$zero
    and        $s1,$s1,$a3
    beqz       $s1, .L00015744
    nop
    b          .L000140dc
    li         $s2,1
.L000150f8:
    ld         $a4,760($sp)
    beqz       $a4, .L00015178
    ld         $a1,-31952($gp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,3168
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    beqz       $s5, .L0001513c
    ld         $a3,768($sp)
    daddiu     $a1,$s0,80
    ld         $a2,-31952($gp)
    li         $a0,6
    move       $a3,$s5
    jal        cmn_err
    daddiu     $a2,$a2,3560
    ld         $a3,768($sp)
.L0001513c:
    beqz       $a3, .L0001515c
    ld         $a5,48($sp)
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    daddiu     $a2,$a2,3564
    ld         $a5,48($sp)
.L0001515c:
    ld         $a4,56($sp)
    lw         $a3,64($sp)
    ld         $a2,40($sp)
    ld         $a1,32($sp)
    jal        .text
    ld         $a0,24($sp)
    ld         $a1,-31952($gp)
.L00015178:
    daddiu     $a2,$s0,3224
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a4,$s8,144
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,832
    li         $a0,6
    ld         $a3,664($sp)
    jal        cmn_err
    daddiu     $a2,$a2,3440
    daddiu     $a4,$s8,1824
    move       $a3,$s7
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,832
    li         $a0,6
    jal        cmn_err
    daddiu     $a2,$a2,3448
    daddiu     $a4,$s8,3392
    daddiu     $a2,$s0,2288
    daddiu     $a1,$s0,832
    ld         $a3,728($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a4,$s8,3552
    daddiu     $a2,$s0,3280
    daddiu     $a1,$s0,832
    ld         $a3,704($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a2,$s0,3296
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    ld         $a3,616($sp)
    daddiu     $a4,$s8,3792
    move       $a3,$s4
    daddiu     $a2,$s0,1128
    daddiu     $a1,$s0,832
    jal        cmn_err
    li         $a0,6
    daddiu     $a4,$s8,4976
    daddiu     $a2,$s0,3312
    daddiu     $a1,$s0,832
    ld         $a3,680($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a4,$s8,5456
    daddiu     $a2,$s0,3336
    daddiu     $a1,$s0,832
    ld         $a3,696($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a4,$s8,5576
    daddiu     $a2,$s0,3360
    daddiu     $a1,$s0,832
    ld         $a3,688($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a4,$s8,5720
    daddiu     $a2,$s0,3384
    daddiu     $a1,$s0,832
    ld         $a3,592($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a4,$s8,5920
    daddiu     $a2,$s0,2880
    daddiu     $a1,$s0,832
    ld         $a3,752($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a4,$s8,6120
    daddiu     $a2,$s0,2904
    daddiu     $a1,$s0,832
    ld         $a3,712($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a4,$s8,6344
    daddiu     $a2,$s0,2136
    daddiu     $a1,$s0,832
    ld         $a3,776($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a2,$s0,2152
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    ld         $a3,672($sp)
    b          .L000142e8
    ld         $v0,792($sp)
.L000152e0:
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,848
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    dsll32     $a2,$s4,0x2
    bgez       $a2, .L00015318
    dsll32     $a2,$s4,0x3
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,904
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    dsll32     $a2,$s4,0x3
.L00015318:
    bgez       $a2, .L00015338
    dsll32     $a2,$s4,0x6
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,936
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    dsll32     $a2,$s4,0x6
.L00015338:
    bgez       $a2, .L00015358
    dsll32     $a2,$s4,0x7
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,968
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    dsll32     $a2,$s4,0x7
.L00015358:
    bgez       $a2, .L00015378
    dsll32     $a2,$s4,0xd
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1000
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    dsll32     $a2,$s4,0xd
.L00015378:
    bgez       $a2, .L00015398
    dsll32     $a2,$s4,0xe
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1032
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    dsll32     $a2,$s4,0xe
.L00015398:
    bgez       $a2, .L000153b8
    andi       $a2,$s4,0x2000
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1064
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    andi       $a2,$s4,0x2000
.L000153b8:
    beqz       $a2, .L000153d8
    daddiu     $a4,$s8,144
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1096
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a4,$s8,144
.L000153d8:
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,832
    li         $a0,6
    ld         $a3,664($sp)
    jal        cmn_err
    daddiu     $a2,$a2,3440
    daddiu     $a4,$s8,1824
    move       $a3,$s7
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,832
    li         $a0,6
    jal        cmn_err
    daddiu     $a2,$a2,3448
    daddiu     $a4,$s8,3792
    move       $a3,$s4
    daddiu     $a2,$s0,1128
    daddiu     $a1,$s0,832
    jal        cmn_err
    li         $a0,6
    ld         $s3,472($sp)
    nor        $s3,$s3,$zero
    and        $s3,$s4,$s3
    bnez       $s3, .L000140fc
    addiu      $s2,$s2,1
    lui        $t8,0x1
    nor        $t8,$t8,$zero
    and        $s1,$s1,$t8
    bnez       $s1, .L00014100
    ld         $v0,-32392($gp)
    b          .L00014274
    ld         $a6,784($sp)
.L00015454:
    daddiu     $a2,$s0,3104
    ld         $a1,-31952($gp)
    li         $a0,6
    addiu      $s2,$s2,1
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a4,$s8,1824
    move       $a3,$s7
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,832
    li         $a0,6
    jal        cmn_err
    daddiu     $a2,$a2,3448
    ld         $a3,760($sp)
    beqz       $a3, .L000142c8
    ld         $a5,48($sp)
    ld         $a4,56($sp)
    lw         $a3,64($sp)
    ld         $a2,40($sp)
    ld         $a1,32($sp)
    jal        .text
    ld         $a0,24($sp)
    b          .L000142cc
    ld         $t9,792($sp)
.L000154b4:
    daddiu     $a2,$s0,3104
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    b          .L000143fc
    nop
.L000154cc:
    daddiu     $a2,$s0,1160
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,320($sp)
    beqz       $a2, .L00015500
    ld         $a2,312($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1184
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,312($sp)
.L00015500:
    beqz       $a2, .L00015520
    ld         $a4,520($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1224
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a4,520($sp)
.L00015520:
    ld         $a3,400($sp)
    ld         $a2,-32392($gp)
    and        $a3,$a3,$a4
    and        $a2,$a2,$a3
    beqz       $a2, .L00015550
    ld         $a3,400($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1264
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a3,400($sp)
.L00015550:
    addiu      $a5,$s6,24
    li         $a4,1
    ld         $a2,-32392($gp)
    dsllv      $a4,$a4,$a5
    and        $a3,$a3,$a4
    and        $a2,$a2,$a3
    beqz       $a2, .L00015588
    daddiu     $a2,$s0,1328
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1296
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a2,$s0,1328
.L00015588:
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    ld         $a3,464($sp)
    daddiu     $a2,$s0,1344
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    ld         $a3,456($sp)
    b          .L00014248
    nop
.L000155b4:
    daddiu     $a1,$s0,80
    ld         $a3,32($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a2,$s0,280
    daddiu     $a1,$s0,80
    ld         $a3,40($sp)
    jal        cmn_err
    li         $a0,6
    b          .L000142e8
    ld         $v0,792($sp)
.L000155e0:
    daddiu     $a2,$s0,1384
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,744($sp)
    dsll32     $a2,$a2,0x5
    bgez       $a2, .L00015618
    ld         $a2,744($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1408
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,744($sp)
.L00015618:
    dsll32     $a2,$a2,0x8
    bgez       $a2, .L0001563c
    ld         $a2,744($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1448
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,744($sp)
.L0001563c:
    dsll32     $a2,$a2,0x9
    bgez       $a2, .L00015660
    ld         $a2,744($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1480
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,744($sp)
.L00015660:
    dsll32     $a2,$a2,0xa
    bgez       $a2, .L00015684
    ld         $a2,744($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1512
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,744($sp)
.L00015684:
    dsll32     $a2,$a2,0xb
    bgez       $a2, .L000156a8
    ld         $a2,296($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1544
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,296($sp)
.L000156a8:
    daddiu     $a1,$s0,1584
    ld         $a3,736($sp)
    li         $a0,6
    ld         $a4,304($sp)
    jal        cmn_err
    srl        $a3,$a3,0x1c
    ld         $v0,736($sp)
    ld         $t3,168($sp)
    sll        $a4,$v0,0x11
    bltz       $a4, .L0001574c
    ld         $a4,-31952($gp)
    daddiu     $a4,$a4,3456
.L000156d8:
    sll        $a5,$v0,0x14
    bltz       $a5, .L00015754
    ld         $a5,-31952($gp)
    daddiu     $a5,$a5,3456
.L000156e8:
    sll        $a6,$v0,0x15
    bltz       $a6, .L0001575c
    ld         $a6,-31952($gp)
    daddiu     $a6,$a6,3456
.L000156f8:
    sll        $a7,$v0,0x17
    bltz       $a7, .L00015764
    ld         $a7,-31952($gp)
    daddiu     $a7,$a7,3456
.L00015708:
    sll        $t0,$v0,0x16
    bltz       $t0, .L0001576c
    ld         $t2,-31952($gp)
    daddiu     $t2,$t2,3456
.L00015718:
    daddiu     $a1,$s0,1704
    li         $a0,6
    srl        $a3,$v0,0xc
    sw         $t3,12($sp)
    srl        $a2,$v0,0x14
    andi       $a3,$a3,0x3
    sd         $t2,0($sp)
    jal        cmn_err
    andi       $a2,$a2,0xf
    b          .L000146c4
    nop
.L00015744:
    b          .L00014270
    li         $s2,1
.L0001574c:
    b          .L000156d8
    daddiu     $a4,$s0,1640
.L00015754:
    b          .L000156e8
    daddiu     $a5,$s0,1656
.L0001575c:
    b          .L000156f8
    daddiu     $a6,$s0,1672
.L00015764:
    b          .L00015708
    daddiu     $a7,$s0,1688
.L0001576c:
    ld         $t2,-31952($gp)
    b          .L00015718
    daddiu     $t2,$t2,3464
.L00015778:
    ld         $a1,-31952($gp)
    li         $a0,6
    addiu      $s2,$s2,1
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a4,$s8,1824
    move       $a3,$s7
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,832
    li         $a0,6
    jal        cmn_err
    daddiu     $a2,$a2,3448
    ld         $a3,760($sp)
    beqz       $a3, .L000142cc
    ld         $t9,792($sp)
    ld         $a5,48($sp)
    ld         $a4,56($sp)
    ld         $a2,40($sp)
    ld         $a1,32($sp)
    lw         $a3,64($sp)
    jal        .text
    ld         $a0,24($sp)
    b          .L000142cc
    ld         $t9,792($sp)
.L000157d8:
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1784
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,80
    li         $a0,6
    ld         $a3,376($sp)
    jal        cmn_err
    daddiu     $a2,$a2,3472
    daddiu     $a2,$s0,1816
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    ld         $a3,288($sp)
    daddiu     $a2,$s0,1832
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    ld         $a3,512($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1848
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $v0,336($sp)
    srl        $v0,$v0,0x10
    andi       $v0,$v0,0x3
    bnez       $v0, .L0001588c
    li         $a3,1
    ld         $a2,-31952($gp)
    b          .L000158a8
    daddiu     $a2,$a2,3480
.L00015860:
    daddiu     $a1,$s0,1880
    li         $a0,4
    lw         $a2,64($sp)
    jal        cmn_err
    move       $a3,$a4
    b          .L00014854
    ld         $a2,56($sp)
.L0001587c:
    jal        cmn_err
    li         $a0,4
    b          .L0001486c
    nop
.L0001588c:
    bne        $a3, $v0, .L00015940
    li         $a4,2
    ld         $a2,-31952($gp)
    b          .L000158a8
    daddiu     $a2,$a2,3488
.L000158a0:
    ld         $a2,-31952($gp)
    daddiu     $a2,$a2,3432
.L000158a8:
    ld         $a1,-31952($gp)
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1864
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    b          .L00014848
    ld         $a4,288($sp)
.L000158d4:
    bne        $v0, $a2, .L000158ec
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2016
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
.L000158ec:
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,80
    li         $a0,6
    ld         $a3,344($sp)
    jal        cmn_err
    daddiu     $a2,$a2,3472
    daddiu     $a2,$s0,2040
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    ld         $a3,448($sp)
    daddiu     $a2,$s0,2056
    ld         $a3,280($sp)
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    andi       $a3,$a3,0x7ff
    jal        .text
    daddiu     $a0,$sp,72
    b          .L000149d4
    addiu      $s2,$s2,1
.L00015940:
    bne        $a4, $v0, .L000158a0
    ld         $a2,-31952($gp)
    b          .L000158a8
    daddiu     $a2,$a2,3496
.L00015950:
    andi       $a3,$s1,0x2
    beqz       $a3, .L00015964
    ld         $a2,-31952($gp)
    b          .L00015968
    daddiu     $a2,$s0,2072
.L00015964:
    daddiu     $a2,$a2,3456
.L00015968:
    andi       $a3,$s1,0x1
    beqz       $a3, .L00015a98
    ld         $a3,-31952($gp)
    bnez       $a5, .L00015aa0
    daddiu     $a3,$s0,2088
.L0001597c:
    ld         $a5,-31952($gp)
    daddiu     $a5,$a5,3512
.L00015984:
    ld         $a7,776($sp)
    dsrl32     $a7,$a7,0x2
    ld         $a6,-31928($gp)
    andi       $a7,$a7,0xff
    sd         $a7,208($sp)
    dsll       $a7,$a7,0x3
    daddu      $a6,$a6,$a7
    lw         $a6,0($a6)
    ld         $a4,-31920($gp)
    dsll       $a6,$a6,0x3
    daddiu     $a1,$s0,2104
    daddu      $a4,$a4,$a6
    li         $a0,6
    jal        cmn_err
    ld         $a4,0($a4)
    daddiu     $a4,$s8,6344
    daddiu     $a2,$s0,2136
    daddiu     $a1,$s0,832
    ld         $a3,776($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a2,$s0,2152
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    ld         $a3,672($sp)
    ld         $t0,272($sp)
    beqz       $t0, .L00015a18
    ld         $a2,-31952($gp)
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,232
    li         $a0,6
    daddiu     $a3,$a2,3528
    jal        cmn_err
    daddiu     $a2,$a2,3520
    b          .L00015a2c
    nop
.L00015a18:
    daddiu     $a1,$s0,80
    li         $a0,6
    ld         $a3,264($sp)
    jal        cmn_err
    daddiu     $a2,$a2,3520
.L00015a2c:
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,80
    li         $a0,6
    ld         $a3,208($sp)
    jal        cmn_err
    daddiu     $a2,$a2,3536
    daddiu     $a2,$s0,2168
    daddiu     $a1,$s0,80
    ld         $a3,776($sp)
    li         $a4,-1
    li         $a0,6
    dsrl       $a4,$a4,0x1e
    jal        cmn_err
    and        $a3,$a3,$a4
    ld         $a5,440($sp)
    beqz       $a5, .L00015a90
    ld         $a6,760($sp)
    beqz       $a6, .L00015a90
    ld         $a5,48($sp)
    ld         $a4,56($sp)
    lw         $a3,64($sp)
    ld         $a2,40($sp)
    ld         $a1,32($sp)
    jal        .text
    ld         $a0,24($sp)
.L00015a90:
    b          .L00014b64
    addiu      $s2,$s2,1
.L00015a98:
    beqz       $a5, .L0001597c
    daddiu     $a3,$a3,3456
.L00015aa0:
    ld         $a5,-31952($gp)
    b          .L00015984
    daddiu     $a5,$a5,3504
.L00015aac:
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2184
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a4,$s8,1824
    move       $a3,$s7
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,832
    li         $a0,6
    jal        cmn_err
    daddiu     $a2,$a2,3448
    ld         $a3,248($sp)
    daddiu     $a2,$s0,2232
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    lw         $a3,0($a3)
    ld         $a5,256($sp)
    lw         $a4,0($gp)
    ld         $v0,800($sp)
    addiu      $a4,$a4,60
    b          .L00014bd4
    sw         $a4,0($a5)
.L00015b0c:
    ld         $a6,784($sp)
    ld         $v0,728($sp)
    lui        $v1,0xf
    sd         $a5,200($sp)
    ori        $v1,$v1,0xfff8
    sd         $a4,192($sp)
    beqz       $a6, .L00015b50
    and        $v0,$v0,$v1
    ld         $a0,40($sp)
    lui        $a1,0xff0
    or         $a1,$v0,$a1
    bne        $a0, $a1, .L00015b50
    li         $a2,1
    sd         $a2,432($sp)
    sd         $zero,784($sp)
    b          .L00015b58
    sd         $v0,352($sp)
.L00015b50:
    sd         $zero,432($sp)
    sd         $v0,352($sp)
.L00015b58:
    daddiu     $a2,$s0,2248
    ld         $a1,-31952($gp)
    li         $a0,6
    addiu      $s2,$s2,1
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a4,$s8,1824
    move       $a3,$s7
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,832
    li         $a0,6
    jal        cmn_err
    daddiu     $a2,$a2,3448
    daddiu     $a4,$s8,3392
    daddiu     $a2,$s0,2288
    daddiu     $a1,$s0,832
    ld         $a3,728($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a2,$s0,2304
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    ld         $a3,200($sp)
    daddiu     $a2,$s0,2320
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    ld         $a3,352($sp)
    ld         $v0,728($sp)
    dsll32     $a0,$v0,0x9
    lui        $v1,0x40
    bgez       $a0, .L00015c54
    and        $v0,$v0,$v1
    ld         $a4,-31952($gp)
    daddiu     $a4,$a4,3544
    beqz       $a4, .L00015c64
    nop
.L00015bf0:
    beqz       $v0, .L00015c6c
    daddiu     $a1,$s0,232
.L00015bf8:
    ld         $a3,-31952($gp)
    daddiu     $a3,$a3,3544
.L00015c00:
    daddiu     $a2,$s0,2336
    jal        cmn_err
    li         $a0,6
    ld         $a4,432($sp)
    beqz       $a4, .L00015c40
    ld         $a7,192($sp)
    ld         $a5,760($sp)
    beqz       $a5, .L00015c3c
    ld         $a5,48($sp)
    ld         $a4,56($sp)
    lw         $a3,64($sp)
    ld         $a2,40($sp)
    ld         $a1,32($sp)
    jal        .text
    ld         $a0,24($sp)
.L00015c3c:
    ld         $a7,192($sp)
.L00015c40:
    nor        $a7,$a7,$zero
    and        $s1,$s1,$a7
    sltiu      $a6,$s1,1
    b          .L00014c0c
    sd         $a6,544($sp)
.L00015c54:
    ld         $t0,-31952($gp)
    daddiu     $t0,$t0,3552
    bnez       $t0, .L00015bf0
    nop
.L00015c64:
    bnez       $v0, .L00015bf8
    daddiu     $a1,$s0,216
.L00015c6c:
    ld         $a3,-31952($gp)
    b          .L00015c00
    daddiu     $a3,$a3,3552
.L00015c78:
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,1384
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,744($sp)
    dsll32     $a2,$a2,0x5
    bgez       $a2, .L00015cb4
    ld         $a2,744($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2352
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,744($sp)
.L00015cb4:
    dsll32     $a2,$a2,0x8
    bgez       $a2, .L00015cd8
    ld         $a2,744($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2376
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,744($sp)
.L00015cd8:
    dsll32     $a2,$a2,0x9
    bgez       $a2, .L00015cfc
    ld         $a2,744($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2408
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,744($sp)
.L00015cfc:
    dsll32     $a2,$a2,0xa
    bgez       $a2, .L00015d20
    ld         $a2,744($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2440
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,744($sp)
.L00015d20:
    dsll32     $a2,$a2,0xb
    bgez       $a2, .L00015d44
    ld         $a2,680($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2480
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,680($sp)
.L00015d44:
    daddiu     $a1,$s0,1584
    ld         $a5,696($sp)
    sll        $a6,$a2,0x0
    li         $a0,6
    srl        $a3,$a2,0x1c
    ld         $a4,688($sp)
    srl        $a2,$a2,0x18
    andi       $a5,$a5,0xffff
    andi       $a3,$a3,0xf
    dsll32     $a5,$a5,0x0
    andi       $a2,$a2,0xff
    or         $a4,$a4,$a5
    sd         $a6,736($sp)
    jal        cmn_err
    andi       $a2,$a2,0xf
    ld         $a7,736($sp)
    sll        $a7,$a7,0x11
    bltz       $a7, .L000162ac
    ld         $a4,-31952($gp)
    daddiu     $a4,$a4,3456
.L00015d94:
    ld         $a5,736($sp)
    sll        $a5,$a5,0x14
    bltz       $a5, .L000162b4
    ld         $a5,-31952($gp)
    daddiu     $a5,$a5,3456
.L00015da8:
    ld         $a6,736($sp)
    sll        $a6,$a6,0x15
    bltz       $a6, .L000162bc
    ld         $a6,-31952($gp)
    daddiu     $a6,$a6,3456
.L00015dbc:
    ld         $a7,736($sp)
    sll        $a7,$a7,0x17
    bltz       $a7, .L000162c4
    ld         $a7,-31952($gp)
    daddiu     $a7,$a7,3456
.L00015dd0:
    ld         $t0,736($sp)
    sll        $t0,$t0,0x16
    bltz       $t0, .L000162cc
    ld         $v0,-31952($gp)
    daddiu     $v0,$v0,3456
.L00015de4:
    ld         $a2,736($sp)
    daddiu     $a1,$s0,1704
    li         $a0,6
    andi       $t0,$a2,0xff
    srl        $a3,$a2,0xc
    sd         $v0,0($sp)
    srl        $a2,$a2,0x14
    andi       $a3,$a3,0x3
    sw         $t0,12($sp)
    jal        cmn_err
    andi       $a2,$a2,0xf
    ld         $t1,392($sp)
    addiu      $s2,$s2,1
    nor        $t1,$t1,$zero
    b          .L00014c48
    and        $s3,$s3,$t1
.L00015e24:
    ld         $t8,752($sp)
    ld         $t3,712($sp)
    li         $t9,-1
    dsrl32     $t9,$t9,0x0
    andi       $t8,$t8,0xff
    sd         $v0,408($sp)
    and        $t3,$t3,$t9
    dsll32     $t8,$t8,0x0
    or         $t3,$t3,$t8
    beqz       $t2, .L00015e68
    sd         $t3,448($sp)
    ld         $ra,40($sp)
    bne        $ra, $t3, .L00015e68
    li         $v0,1
    sd         $v0,424($sp)
    b          .L00015e6c
    sd         $zero,784($sp)
.L00015e68:
    sd         $zero,424($sp)
.L00015e6c:
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2744
    ld         $a3,408($sp)
    li         $a0,6
    addiu      $s2,$s2,1
    daddiu     $a1,$a1,584
    nor        $a3,$a3,$zero
    jal        cmn_err
    and        $s3,$s3,$a3
    ld         $a4,408($sp)
    andi       $a4,$a4,0x4
    beqz       $a4, .L00015eb8
    ld         $a2,408($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2768
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,408($sp)
.L00015eb8:
    andi       $a2,$a2,0x2
    beqz       $a2, .L00015edc
    ld         $a2,408($sp)
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2800
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    ld         $a2,408($sp)
.L00015edc:
    andi       $a2,$a2,0x1
    beqz       $a2, .L00015f00
    daddiu     $a4,$s8,1824
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2832
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a4,$s8,1824
.L00015f00:
    move       $a3,$s7
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,832
    li         $a0,6
    jal        cmn_err
    daddiu     $a2,$a2,3448
    daddiu     $a4,$s8,3792
    move       $a3,$s4
    daddiu     $a2,$s0,1128
    daddiu     $a1,$s0,832
    jal        cmn_err
    li         $a0,6
    daddiu     $a4,$s8,5920
    daddiu     $a2,$s0,2880
    daddiu     $a1,$s0,832
    ld         $a3,752($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a4,$s8,6120
    daddiu     $a2,$s0,2904
    daddiu     $a1,$s0,832
    ld         $a3,712($sp)
    jal        cmn_err
    li         $a0,6
    ld         $a3,752($sp)
    daddiu     $a2,$s0,2928
    daddiu     $a1,$s0,80
    li         $a0,6
    dsrl       $a3,$a3,0x16
    jal        cmn_err
    andi       $a3,$a3,0x3
    daddiu     $a2,$s0,2944
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    ld         $a3,448($sp)
    ld         $a3,752($sp)
    daddiu     $a2,$s0,2960
    daddiu     $a1,$s0,80
    li         $a0,6
    dsrl       $a3,$a3,0x8
    jal        cmn_err
    andi       $a3,$a3,0x7ff
    ld         $a4,424($sp)
    beqz       $a4, .L00014d8c
    ld         $a5,760($sp)
    beqz       $a5, .L00014d8c
    ld         $a5,48($sp)
    ld         $a4,56($sp)
    lw         $a3,64($sp)
    ld         $a2,40($sp)
    ld         $a1,32($sp)
    jal        .text
    ld         $a0,24($sp)
    b          .L00014d8c
    nop
.L00015fe0:
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2704
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a2,$s0,2568
    daddiu     $a1,$s0,80
    lw         $a3,-32492($gp)
    jal        cmn_err
    li         $a0,6
    lw         $a2,0($gp)
    addiu      $a2,$a2,60
    b          .L00014d30
    sw         $a2,-32488($gp)
.L00016018:
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2528
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a2,$s0,2568
    daddiu     $a1,$s0,80
    lw         $a3,-32524($gp)
    jal        cmn_err
    li         $a0,6
    lw         $a2,0($gp)
    addiu      $a2,$a2,60
    b          .L00014c80
    sw         $a2,-32520($gp)
.L00016050:
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2592
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a2,$s0,2568
    daddiu     $a1,$s0,80
    lw         $a3,-32516($gp)
    jal        cmn_err
    li         $a0,6
    lw         $a2,0($gp)
    addiu      $a2,$a2,60
    b          .L00014ca8
    sw         $a2,-32512($gp)
.L00016088:
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2624
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a2,$s0,2568
    daddiu     $a1,$s0,80
    lw         $a3,-32508($gp)
    jal        cmn_err
    li         $a0,6
    lw         $a2,0($gp)
    addiu      $a2,$a2,60
    b          .L00014cd0
    sw         $a2,-32504($gp)
.L000160c0:
    ld         $a1,-31952($gp)
    daddiu     $a2,$s0,2656
    li         $a0,6
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a2,$s0,2568
    daddiu     $a1,$s0,80
    lw         $a3,-32500($gp)
    jal        cmn_err
    li         $a0,6
    lw         $a2,0($gp)
    addiu      $a2,$a2,60
    b          .L00014cfc
    sw         $a2,-32496($gp)
.L000160f8:
    ld         $a3,784($sp)
    sd         $a4,224($sp)
    li         $v0,-1
    beqz       $a3, .L000161cc
    dsrl       $v0,$v0,0x1e
    lw         $v1,64($sp)
    ld         $a1,776($sp)
    li         $a0,254
    dsrl32     $a1,$a1,0xb
    andi       $a1,$a1,0x7
    bne        $v1, $a0, .L000162d8
    sd         $a1,264($sp)
    ld         $a3,776($sp)
    and        $a3,$v0,$a3
    bne        $s6, $a1, .L00016140
    sd         $a3,504($sp)
    ld         $a4,48($sp)
    bne        $a4, $a3, .L000161e4
.L00016140:
    li         $a6,1
    sd         $a6,416($sp)
    b          .L000161e8
    sd         $zero,784($sp)
.L00016150:
    daddiu     $a2,$s0,3040
    ld         $a1,-31952($gp)
    li         $a0,6
    addiu      $s2,$s2,1
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a4,$s8,1824
    move       $a3,$s7
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,832
    li         $a0,6
    jal        cmn_err
    daddiu     $a2,$a2,3448
    daddiu     $a4,$s8,6344
    daddiu     $a2,$s0,2136
    daddiu     $a1,$s0,832
    ld         $a3,776($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a2,$s0,3024
    daddiu     $a1,$s0,80
    ld         $a3,776($sp)
    li         $a4,-1
    li         $a0,6
    dsrl       $a4,$a4,0x1e
    jal        cmn_err
    and        $a3,$a3,$a4
    ld         $a5,232($sp)
    nor        $a5,$a5,$zero
    b          .L00014270
    and        $s1,$s1,$a5
.L000161cc:
    ld         $a7,776($sp)
    dsrl32     $a6,$a7,0xb
    and        $a7,$v0,$a7
    sd         $a7,504($sp)
    andi       $a6,$a6,0x7
    sd         $a6,264($sp)
.L000161e4:
    sd         $zero,416($sp)
.L000161e8:
    daddiu     $a2,$s0,2976
    ld         $a1,-31952($gp)
    li         $a0,6
    addiu      $s2,$s2,1
    jal        cmn_err
    daddiu     $a1,$a1,584
    daddiu     $a4,$s8,1824
    move       $a3,$s7
    ld         $a2,-31952($gp)
    daddiu     $a1,$s0,832
    li         $a0,6
    jal        cmn_err
    daddiu     $a2,$a2,3448
    daddiu     $a4,$s8,6344
    daddiu     $a2,$s0,2136
    daddiu     $a1,$s0,832
    ld         $a3,776($sp)
    jal        cmn_err
    li         $a0,6
    daddiu     $a2,$s0,3008
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    ld         $a3,264($sp)
    daddiu     $a2,$s0,3024
    daddiu     $a1,$s0,80
    li         $a0,6
    jal        cmn_err
    ld         $a3,504($sp)
    ld         $a3,416($sp)
    beqz       $a3, .L00016290
    ld         $a6,224($sp)
    ld         $a4,760($sp)
    beqz       $a4, .L0001628c
    ld         $a5,48($sp)
    ld         $a4,56($sp)
    lw         $a3,64($sp)
    ld         $a2,40($sp)
    ld         $a1,32($sp)
    jal        .text
    ld         $a0,24($sp)
.L0001628c:
    ld         $a6,224($sp)
.L00016290:
    nor        $a6,$a6,$zero
    and        $s1,$s1,$a6
    sltiu      $a5,$s1,1
    beqz       $a5, .L00014dbc
    andi       $v0,$s1,0x4
    b          .L00014274
    ld         $a6,784($sp)
.L000162ac:
    b          .L00015d94
    daddiu     $a4,$s0,1640
.L000162b4:
    b          .L00015da8
    daddiu     $a5,$s0,1656
.L000162bc:
    b          .L00015dbc
    daddiu     $a6,$s0,1672
.L000162c4:
    b          .L00015dd0
    daddiu     $a7,$s0,1688
.L000162cc:
    ld         $v0,-31952($gp)
    b          .L00015de4
    daddiu     $v0,$v0,3464
.L000162d8:
    ld         $v1,776($sp)
    and        $v1,$v0,$v1
    b          .L000161e4
    sd         $v1,504($sp)
    li         $at,-1
    dsll32     $at,$at,0x1e
    daddiu     $sp,$sp,-32
    ld         $v0,-32376($gp)
    sltu       $at,$a0,$at
    sd         $s0,8($sp)
    move       $s0,$a0
    sd         $ra,16($sp)
    bnez       $at, .L00016320
    sltu       $v0,$a0,$v0
    beqz       $v0, .L00016320
    move       $a0,$zero
    b          .L00016330
    move       $a1,$s0
.L00016320:
    jal        tlbgetpid
    nop
    andi       $a0,$v0,0xff
    move       $a1,$s0
.L00016330:
    jal        tlb_probe
    daddiu     $a2,$sp,0
    li         $a2,-1
    dsrl       $a1,$v0,0x6
    lui        $a0,0xfff
    ld         $ra,16($sp)
    beq        $v0, $a2, .L00016370
    ori        $v1,$a0,0xffff
    and        $v1,$a1,$v1
    srl        $v1,$v1,0x2
    andi       $v0,$s0,0x3fff
    dsll       $v1,$v1,0xe
    daddu      $v0,$v0,$v1
.L00016364:
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00016370:
    b          .L00016364
    li         $v0,-1

glabel _dummy_proc
    jr         $ra
    nop

glabel fpunit_fpload_s
    lui        $at,0x0
    daddiu     $at,$at,0
    sll        $v0,$a0,0x3
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,11040
    daddu      $at,$at,$v0
    ld         $v0,0($at)
    jr         $v0
    nop
.L000163bc:
    mfc1       $v0,$f0
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L000163d4:
    mfc1       $v0,$f1
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L000163ec:
    mfc1       $v0,$f2
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L00016404:
    mfc1       $v0,$f3
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L0001641c:
    mfc1       $v0,$f4
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L00016434:
    mfc1       $v0,$f5
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L0001644c:
    mfc1       $v0,$f6
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L00016464:
    mfc1       $v0,$f7
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L0001647c:
    mfc1       $v0,$f8
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L00016494:
    mfc1       $v0,$f9
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L000164ac:
    mfc1       $v0,$f10
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L000164c4:
    mfc1       $v0,$f11
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L000164dc:
    mfc1       $v0,$f12
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L000164f4:
    mfc1       $v0,$f13
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L0001650c:
    mfc1       $v0,$f14
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L00016524:
    mfc1       $v0,$f15
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L0001653c:
    mfc1       $v0,$f16
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L00016554:
    mfc1       $v0,$f17
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L0001656c:
    mfc1       $v0,$f18
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L00016584:
    mfc1       $v0,$f19
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L0001659c:
    mfc1       $v0,$f20
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L000165b4:
    mfc1       $v0,$f21
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L000165cc:
    mfc1       $v0,$f22
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L000165e4:
    mfc1       $v0,$f23
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L000165fc:
    mfc1       $v0,$f24
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L00016614:
    mfc1       $v0,$f25
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L0001662c:
    mfc1       $v0,$f26
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L00016644:
    mfc1       $v0,$f27
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L0001665c:
    mfc1       $v0,$f28
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L00016674:
    mfc1       $v0,$f29
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L0001668c:
    mfc1       $v0,$f30
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
.L000166a4:
    mfc1       $v0,$f31
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop

glabel renorm_d
    ld         $a3,0($a0)
    li         $v1,-1
    dsrl       $v1,$v1,0xb
    li         $v0,1
    and        $v1,$a3,$v1
    dsll32     $v0,$v0,0x14
    beqz       $v1, .L000167cc
    and        $v0,$a3,$v0
    beqz       $v0, .L000166f0
    li         $a5,4095
    move       $v0,$zero
    jr         $ra
    nop
.L000166f0:
    dsll32     $a5,$a5,0x8
    and        $a1,$a5,$a3
    move       $a4,$zero
    ld         $v1,-31912($gp)
    li         $a6,15
    bnez       $a1, .L0001675c
    dsll32     $v0,$a6,0x10
    move       $a4,$zero
.L00016710:
    dsll       $a3,$a3,0xc
    and        $a7,$a5,$a3
    addiu      $a4,$a4,12
    sd         $a3,0($a0)
    bnez       $a7, .L00016754
    nop
    dsll       $a3,$a3,0xc
    and        $t0,$a5,$a3
    addiu      $a4,$a4,12
    sd         $a3,0($a0)
    bnez       $t0, .L00016754
    nop
    dsll       $a3,$a3,0xc
    and        $t1,$a5,$a3
    addiu      $a4,$a4,12
    beqz       $t1, .L00016710
    sd         $a3,0($a0)
.L00016754:
    b          .L00016760
    and        $t2,$v0,$a3
.L0001675c:
    and        $t2,$v0,$a3
.L00016760:
    bnez       $t2, .L000167ac
    nop
.L00016768:
    dsll       $a3,$a3,0x4
    and        $t3,$v0,$a3
    addiu      $a4,$a4,4
    sd         $a3,0($a0)
    bnez       $t3, .L000167ac
    nop
    dsll       $a3,$a3,0x4
    and        $t8,$v0,$a3
    addiu      $a4,$a4,4
    sd         $a3,0($a0)
    bnez       $t8, .L000167ac
    nop
    dsll       $a3,$a3,0x4
    and        $t9,$v0,$a3
    addiu      $a4,$a4,4
    beqz       $t9, .L00016768
    sd         $a3,0($a0)
.L000167ac:
    dsrl32     $v0,$a3,0x10
    andi       $v0,$v0,0xf
    daddu      $v0,$v0,$v1
    lb         $v0,0($v0)
    dsllv      $at,$a3,$v0
    addu       $v0,$v0,$a4
    jr         $ra
    sd         $at,0($a0)
.L000167cc:
    jr         $ra
    move       $v0,$zero

glabel VEC_dbe
    lui        $t0,0xaff5
    ld         $t0,0($t0)
    lui        $t1,0xaff1
    dsll       $t2,$t0,0x3
    daddiu     $t3,$t0,8
    daddu      $t1,$t1,$t2
    li         $t2,1
    dsllv      $t2,$t2,$t3
    ld         $t3,0($t1)
    ori        $t2,$t2,0x1000
    dsll32     $t2,$t2,0x13
    nor        $t2,$t2,$zero
    and        $t3,$t3,$t2
    sd         $t3,0($t1)
    lui        $at,0xaff5
    ld         $zero,0($at)
    lui        $at,0xb800
    ld         $zero,0($at)
    sync
    lh         $t0,-15456($zero)
    j          VEC_trap
    sd         $t0,320($a0)

glabel renorm_s
    ld         $a3,0($a0)
    lui        $v0,0xff
    ori        $at,$v0,0xffff
    and        $at,$a3,$at
    beqz       $at, .L000168fc
    dsll32     $a4,$a3,0x8
    bgez       $a4, .L00016864
    and        $v1,$v0,$a3
    move       $v0,$zero
    jr         $ra
    nop
.L00016864:
    move       $a4,$zero
    bnez       $v1, .L000168c0
    lui        $a5,0xf0
    move       $a4,$zero
.L00016874:
    dsll       $a3,$a3,0x8
    and        $a1,$v0,$a3
    addiu      $a4,$a4,8
    sd         $a3,0($a0)
    bnez       $a1, .L000168b8
    nop
    dsll       $a3,$a3,0x8
    and        $a2,$v0,$a3
    addiu      $a4,$a4,8
    sd         $a3,0($a0)
    bnez       $a2, .L000168b8
    nop
    dsll       $a3,$a3,0x8
    and        $a6,$v0,$a3
    addiu      $a4,$a4,8
    beqz       $a6, .L00016874
    sd         $a3,0($a0)
.L000168b8:
    b          .L000168c4
    and        $a7,$a3,$a5
.L000168c0:
    and        $a7,$a3,$a5
.L000168c4:
    beqz       $a7, .L000168ec
    ld         $v1,-31904($gp)
.L000168cc:
    dsrl       $v0,$a3,0x14
    andi       $v0,$v0,0xf
    daddu      $v0,$v0,$v1
    lb         $v0,0($v0)
    dsllv      $t0,$a3,$v0
    addu       $v0,$v0,$a4
    jr         $ra
    sd         $t0,0($a0)
.L000168ec:
    dsll       $a3,$a3,0x4
    addiu      $a4,$a4,4
    b          .L000168cc
    sd         $a3,0($a0)
.L000168fc:
    jr         $ra
    move       $v0,$zero

glabel _get_count
    dmfc0      $v0,$9
    jr         $ra
    nop

glabel _get_compare
    dmfc0      $v0,$11
    jr         $ra
    nop

glabel _set_count
    dmtc0      $a0,$9
    jr         $ra
    nop

glabel _add_sd
    daddiu     $sp,$sp,-96
    sd         $a1,72($sp)
    daddiu     $a1,$sp,72
    sd         $a2,80($sp)
    daddiu     $a2,$sp,16
    daddiu     $a3,$sp,20
    sd         $a0,48($sp)
    daddiu     $a4,$sp,24
    daddiu     $a5,$sp,80
    daddiu     $at,$sp,40
    sd         $at,0($sp)
    daddiu     $a6,$sp,32
    sd         $ra,56($sp)
    jal        breakout_and_test2_sd
    daddiu     $a7,$sp,36
    beqz       $v0, .L00016984
    ld         $a0,48($sp)
    ld         $ra,56($sp)
.L0001697c:
    jr         $ra
    daddiu     $sp,$sp,96
.L00016984:
    lw         $a1,16($sp)
    lw         $a2,20($sp)
    ld         $a3,24($sp)
    lw         $a4,32($sp)
    lw         $a5,36($sp)
    jal        add
    ld         $a6,40($sp)
    b          .L0001697c
    ld         $ra,56($sp)

glabel fpunit_fpload_d
    bnez       $a1, .L000169e4
    sll        $v0,$a0,0x3
    lui        $at,0x0
    daddiu     $at,$at,0
    srl        $v0,$v0,0x1
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,11296
    daddu      $at,$at,$v0
    ld         $v0,0($at)
    jr         $v0
    nop
.L000169e4:
    lui        $at,0x0
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,0
    dsll       $at,$at,0x10
    daddiu     $at,$at,11424
    daddu      $at,$at,$v0
    ld         $v0,0($at)
    jr         $v0
    nop
.L00016a0c:
    mfc1       $a0,$f0
    mfc1       $v0,$f1
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016a2c:
    mfc1       $a0,$f2
    mfc1       $v0,$f3
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016a4c:
    mfc1       $a0,$f4
    mfc1       $v0,$f5
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016a6c:
    mfc1       $a0,$f6
    mfc1       $v0,$f7
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016a8c:
    mfc1       $a0,$f8
    mfc1       $v0,$f9
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016aac:
    mfc1       $a0,$f10
    mfc1       $v0,$f11
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016acc:
    mfc1       $a0,$f12
    mfc1       $v0,$f13
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016aec:
    mfc1       $a0,$f14
    mfc1       $v0,$f15
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016b0c:
    mfc1       $a0,$f16
    mfc1       $v0,$f17
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016b2c:
    mfc1       $a0,$f18
    mfc1       $v0,$f19
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016b4c:
    mfc1       $a0,$f20
    mfc1       $v0,$f21
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016b6c:
    mfc1       $a0,$f22
    mfc1       $v0,$f23
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016b8c:
    mfc1       $a0,$f24
    mfc1       $v0,$f25
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016bac:
    mfc1       $a0,$f26
    mfc1       $v0,$f27
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016bcc:
    mfc1       $a0,$f28
    mfc1       $v0,$f29
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016bec:
    mfc1       $a0,$f30
    mfc1       $v0,$f31
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
.L00016c0c:
    dmfc1      $v0,$f0
    nop
    jr         $ra
    nop
.L00016c1c:
    dmfc1      $v0,$f1
    nop
    jr         $ra
    nop
.L00016c2c:
    dmfc1      $v0,$f2
    nop
    jr         $ra
    nop
.L00016c3c:
    dmfc1      $v0,$f3
    nop
    jr         $ra
    nop
.L00016c4c:
    dmfc1      $v0,$f4
    nop
    jr         $ra
    nop
.L00016c5c:
    dmfc1      $v0,$f5
    nop
    jr         $ra
    nop
.L00016c6c:
    dmfc1      $v0,$f6
    nop
    jr         $ra
    nop
.L00016c7c:
    dmfc1      $v0,$f7
    nop
    jr         $ra
    nop
.L00016c8c:
    dmfc1      $v0,$f8
    nop
    jr         $ra
    nop
.L00016c9c:
    dmfc1      $v0,$f9
    nop
    jr         $ra
    nop
.L00016cac:
    dmfc1      $v0,$f10
    nop
    jr         $ra
    nop
.L00016cbc:
    dmfc1      $v0,$f11
    nop
    jr         $ra
    nop
.L00016ccc:
    dmfc1      $v0,$f12
    nop
    jr         $ra
    nop
.L00016cdc:
    dmfc1      $v0,$f13
    nop
    jr         $ra
    nop
.L00016cec:
    dmfc1      $v0,$f14
    nop
    jr         $ra
    nop
.L00016cfc:
    dmfc1      $v0,$f15
    nop
    jr         $ra
    nop
.L00016d0c:
    dmfc1      $v0,$f16
    nop
    jr         $ra
    nop
.L00016d1c:
    dmfc1      $v0,$f17
    nop
    jr         $ra
    nop
.L00016d2c:
    dmfc1      $v0,$f18
    nop
    jr         $ra
    nop
.L00016d3c:
    dmfc1      $v0,$f19
    nop
    jr         $ra
    nop
.L00016d4c:
    dmfc1      $v0,$f20
    nop
    jr         $ra
    nop
.L00016d5c:
    dmfc1      $v0,$f21
    nop
    jr         $ra
    nop
.L00016d6c:
    dmfc1      $v0,$f22
    nop
    jr         $ra
    nop
.L00016d7c:
    dmfc1      $v0,$f23
    nop
    jr         $ra
    nop
.L00016d8c:
    dmfc1      $v0,$f24
    nop
    jr         $ra
    nop
.L00016d9c:
    dmfc1      $v0,$f25
    nop
    jr         $ra
    nop
.L00016dac:
    dmfc1      $v0,$f26
    nop
    jr         $ra
    nop
.L00016dbc:
    dmfc1      $v0,$f27
    nop
    jr         $ra
    nop
.L00016dcc:
    dmfc1      $v0,$f28
    nop
    jr         $ra
    nop
.L00016ddc:
    dmfc1      $v0,$f29
    nop
    jr         $ra
    nop
.L00016dec:
    dmfc1      $v0,$f30
    nop
    jr         $ra
    nop
.L00016dfc:
    dmfc1      $v0,$f31
    nop
    jr         $ra
    nop

glabel _sub_sd
    daddiu     $sp,$sp,-96
    sd         $a1,72($sp)
    daddiu     $a1,$sp,72
    sd         $a2,80($sp)
    daddiu     $a2,$sp,16
    daddiu     $a3,$sp,20
    sd         $a0,48($sp)
    daddiu     $a4,$sp,24
    daddiu     $a5,$sp,80
    daddiu     $at,$sp,40
    sd         $at,0($sp)
    daddiu     $a6,$sp,32
    sd         $ra,56($sp)
    jal        breakout_and_test2_sd
    daddiu     $a7,$sp,36
    beqz       $v0, .L00016e5c
    ld         $a0,48($sp)
    ld         $ra,56($sp)
.L00016e54:
    jr         $ra
    daddiu     $sp,$sp,96
.L00016e5c:
    lw         $a1,16($sp)
    lw         $a2,20($sp)
    ld         $a3,24($sp)
    lw         $a4,32($sp)
    lw         $a5,36($sp)
    ld         $a6,40($sp)
    jal        add
    xori       $a4,$a4,0x1
    b          .L00016e54
    ld         $ra,56($sp)

glabel _mul_sd
    daddiu     $sp,$sp,-128
    sd         $s0,64($sp)
    move       $s0,$a0
    daddiu     $a7,$sp,36
    daddiu     $a6,$sp,32
    daddiu     $a5,$sp,112
    sd         $a1,104($sp)
    daddiu     $a4,$sp,24
    daddiu     $a3,$sp,20
    sd         $a2,112($sp)
    daddiu     $a2,$sp,16
    daddiu     $a1,$sp,104
    sd         $ra,72($sp)
    nop
    daddiu     $at,$sp,40
    jal        breakout_and_test2_sd
    sd         $at,0($sp)
    bnez       $v0, .L00016f78
    sd         $s1,88($sp)
    dsll       $s1,$s0,0x2
    daddiu     $a0,$gp,0
    daddu      $a0,$s1,$a0
    lw         $a0,0($a0)
    lw         $a6,20($sp)
    bne        $a0, $a6, .L00016f8c
    lw         $a3,36($sp)
    beq        $a0, $a3, .L00017104
    nop
    bnez       $a3, .L00016f50
    daddiu     $a3,$gp,0
    ld         $a1,40($sp)
    bnez       $a1, .L00016f50
    daddiu     $a3,$gp,0
    ld         $a4,-16360($zero)
    lui        $a5,0x1
    lw         $a3,1340($a4)
    ori        $a5,$a5,0x40
    or         $a3,$a3,$a5
    sw         $a3,1340($a4)
    ld         $a2,-16360($zero)
    lw         $a2,1340($a2)
    andi       $a2,$a2,0x800
    beqz       $a2, .L000171a4
    ld         $a1,-31896($gp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00016f7c
    ld         $ra,72($sp)
    daddiu     $a3,$gp,0
.L00016f50:
    lwu        $a2,32($sp)
    daddu      $a3,$s1,$a3
    lw         $a3,0($a3)
    ld         $a1,104($sp)
    move       $a0,$s0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    xor        $a1,$a1,$a2
    jal        store_fpcsr
    nop
.L00016f78:
    ld         $ra,72($sp)
.L00016f7c:
    ld         $s1,88($sp)
    ld         $s0,64($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L00016f8c:
    bne        $a0, $a3, .L00016fe8
    nop
    bnez       $a6, .L000170d4
    daddiu     $a3,$gp,0
    ld         $a4,24($sp)
    bnez       $a4, .L000170d0
    lui        $t0,0x1
    ld         $a7,-16360($zero)
    lw         $a6,1340($a7)
    ori        $t0,$t0,0x40
    or         $a6,$a6,$t0
    sw         $a6,1340($a7)
    ld         $a5,-16360($zero)
    lw         $a5,1340($a5)
    andi       $a5,$a5,0x800
    beqz       $a5, .L00017234
    ld         $a1,-31896($gp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00016f7c
    ld         $ra,72($sp)
.L00016fe8:
    beqz       $a6, .L00017138
    ld         $a4,24($sp)
.L00016ff0:
    beqz       $a3, .L00017148
    sd         $s2,80($sp)
.L00016ff8:
    beqz       $a6, .L000171c8
    dsll       $s2,$s0,0x3
    daddiu     $a2,$gp,0
    ld         $a0,-31880($gp)
    ld         $t2,24($sp)
    daddu      $t3,$s1,$a2
    lw         $t3,0($t3)
    daddu      $t1,$s2,$a0
    ld         $t1,0($t1)
    subu       $a6,$a6,$t3
    sw         $a6,20($sp)
    or         $t1,$t1,$t2
    beqz       $a3, .L00017200
    sd         $t1,24($sp)
.L00017030:
    daddu      $a1,$s2,$a0
    ld         $a1,0($a1)
    ld         $a4,40($sp)
    daddu      $t8,$s1,$a2
    lw         $t8,0($t8)
    or         $a1,$a1,$a4
    sd         $a1,40($sp)
    subu       $a3,$a3,$t8
    sw         $a3,36($sp)
.L00017054:
    beqz       $s0, .L00017190
    ld         $a0,24($sp)
.L0001705c:
    lw         $t8,32($sp)
    lw         $s1,16($sp)
    daddiu     $a2,$sp,48
    addu       $s0,$a3,$a6
    jal        mul64
    xor        $s1,$s1,$t8
    daddiu     $a0,$sp,56
    jal        renorm_d
    sd         $v0,56($sp)
    ld         $a4,48($sp)
    li         $t9,11
    li         $a5,64
    dsllv      $a3,$a4,$v0
    subu       $a5,$a5,$v0
    ld         $a2,56($sp)
    sd         $a3,48($sp)
    dsrlv      $a4,$a4,$a5
    or         $a2,$a2,$a4
    bne        $v0, $t9, .L000170b0
    sd         $a2,56($sp)
    addiu      $s0,$s0,1
.L000170b0:
    ld         $a6,-31872($gp)
    daddu      $a6,$s2,$a6
    ld         $a6,0($a6)
    move       $a0,$s1
    jalr       $a6
    move       $a1,$s0
    b          .L00016f78
    ld         $s2,80($sp)
.L000170d0:
    daddiu     $a3,$gp,0
.L000170d4:
    lwu        $a2,16($sp)
    daddu      $a3,$s1,$a3
    lw         $a3,0($a3)
    ld         $a1,112($sp)
    move       $a0,$s0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    xor        $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L00016f7c
    ld         $ra,72($sp)
.L00017104:
    daddiu     $a3,$gp,0
    lwu        $a2,16($sp)
    daddu      $a3,$s1,$a3
    lw         $a3,0($a3)
    ld         $a1,112($sp)
    move       $a0,$s0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    xor        $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L00016f7c
    ld         $ra,72($sp)
.L00017138:
    bnez       $a4, .L00016ff0
    nop
    b          .L00017158
    lw         $a2,32($sp)
.L00017148:
    ld         $a5,40($sp)
    bnez       $a5, .L00016ff8
    sd         $s2,80($sp)
    lw         $a2,32($sp)
.L00017158:
    lw         $a1,16($sp)
    xor        $a1,$a1,$a2
    daddiu     $a2,$gp,0
    dsll32     $a1,$a1,0x0
    daddu      $a2,$s1,$a2
    dsrl32     $a1,$a1,0x0
    lw         $a2,0($a2)
    move       $a0,$s0
    jal        fpstore_sd
    dsllv      $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L00016f7c
    ld         $ra,72($sp)
.L00017190:
    dsll       $a1,$a1,0x1d
    sd         $a1,40($sp)
    dsll       $a0,$a0,0x1d
    b          .L0001705c
    sd         $a0,24($sp)
.L000171a4:
    dsll       $a2,$s0,0x3
    daddu      $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L00016f7c
    ld         $ra,72($sp)
.L000171c8:
    ld         $a3,-31888($gp)
    daddu      $a3,$s2,$a3
    ld         $a3,0($a3)
    jalr       $a3
    daddiu     $a0,$sp,24
    daddiu     $a6,$gp,0
    lw         $a3,36($sp)
    daddu      $a6,$s1,$a6
    lw         $a6,0($a6)
    daddiu     $a2,$gp,0
    ld         $a0,-31880($gp)
    subu       $a6,$a6,$v0
    bnez       $a3, .L00017030
    sw         $a6,20($sp)
.L00017200:
    ld         $a7,-31888($gp)
    daddu      $a7,$s2,$a7
    ld         $a7,0($a7)
    jalr       $a7
    daddiu     $a0,$sp,40
    daddiu     $a3,$gp,0
    lw         $a6,20($sp)
    daddu      $a3,$s1,$a3
    lw         $a3,0($a3)
    ld         $a1,40($sp)
    subu       $a3,$a3,$v0
    b          .L00017054
    sw         $a3,36($sp)
.L00017234:
    dsll       $a2,$s0,0x3
    daddu      $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L00016f7c
    ld         $ra,72($sp)

glabel _abs_sd
    daddiu     $sp,$sp,-32
    sd         $a0,0($sp)
    ld         $a6,-31864($gp)
    daddiu     $a4,$gp,0
    dsll       $a2,$a0,0x2
    dsll       $a3,$a0,0x3
    sd         $a3,16($sp)
    daddu      $a4,$a2,$a4
    lw         $a4,0($a4)
    daddu      $a3,$a3,$a6
    daddiu     $a6,$gp,0
    move       $a5,$a1
    ld         $a3,0($a3)
    daddu      $a2,$a2,$a6
    lw         $a2,0($a2)
    dsrav      $a4,$a5,$a4
    sd         $a1,8($sp)
    and        $a3,$a3,$a5
    sll        $a4,$a4,0x0
    sd         $ra,24($sp)
    jal        screen_nan_sd
    and        $a2,$a2,$a4
    beqz       $v0, .L000172c4
    ld         $a3,-31856($gp)
    ld         $ra,24($sp)
.L000172bc:
    jr         $ra
    daddiu     $sp,$sp,32
.L000172c4:
    ld         $a2,16($sp)
    daddu      $a2,$a2,$a3
    ld         $a2,0($a2)
    ld         $a1,8($sp)
    nor        $a2,$a2,$zero
    ld         $a0,0($sp)
    jal        fpstore_sd
    and        $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L000172bc
    ld         $ra,24($sp)

glabel _neg_sd
    daddiu     $sp,$sp,-32
    sd         $a0,0($sp)
    ld         $a6,-31848($gp)
    daddiu     $a4,$gp,0
    dsll       $a2,$a0,0x2
    dsll       $a3,$a0,0x3
    sd         $a3,16($sp)
    daddu      $a4,$a2,$a4
    lw         $a4,0($a4)
    daddu      $a3,$a3,$a6
    daddiu     $a6,$gp,0
    move       $a5,$a1
    ld         $a3,0($a3)
    daddu      $a2,$a2,$a6
    lw         $a2,0($a2)
    dsrav      $a4,$a5,$a4
    sd         $a1,8($sp)
    and        $a3,$a3,$a5
    sll        $a4,$a4,0x0
    sd         $ra,24($sp)
    jal        screen_nan_sd
    and        $a2,$a2,$a4
    beqz       $v0, .L00017360
    ld         $a2,-31840($gp)
    ld         $ra,24($sp)
.L00017358:
    jr         $ra
    daddiu     $sp,$sp,32
.L00017360:
    ld         $a1,16($sp)
    daddu      $a1,$a1,$a2
    ld         $a2,8($sp)
    ld         $a1,0($a1)
    ld         $a0,0($sp)
    jal        fpstore_sd
    xor        $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L00017358
    ld         $ra,24($sp)

glabel _div_sd
    daddiu     $sp,$sp,-112
    sd         $s0,56($sp)
    move       $s0,$a0
    daddiu     $a7,$sp,36
    daddiu     $a6,$sp,32
    daddiu     $a5,$sp,96
    sd         $a1,88($sp)
    daddiu     $a4,$sp,24
    daddiu     $a3,$sp,20
    sd         $a2,96($sp)
    daddiu     $a2,$sp,16
    daddiu     $a1,$sp,88
    sd         $ra,64($sp)
    nop
    daddiu     $at,$sp,40
    jal        breakout_and_test2_sd
    sd         $at,0($sp)
    bnez       $v0, .L00017478
    sd         $s1,72($sp)
    dsll       $s1,$s0,0x2
    daddiu     $a1,$gp,0
    daddu      $a1,$s1,$a1
    lw         $a1,0($a1)
    lw         $a2,20($sp)
    bne        $a1, $a2, .L0001748c
    lw         $a0,36($sp)
    bne        $a1, $a0, .L000176bc
    daddiu     $a3,$gp,0
    ld         $a4,-16360($zero)
    lui        $a5,0x1
    lw         $a3,1340($a4)
    ori        $a5,$a5,0x40
    or         $a3,$a3,$a5
    sw         $a3,1340($a4)
    ld         $a2,-16360($zero)
    lw         $a2,1340($a2)
    andi       $a2,$a2,0x800
    beqz       $a2, .L00017698
    ld         $a1,-31832($gp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0001747c
    ld         $ra,64($sp)
.L00017440:
    beqz       $a5, .L000175b4
    move       $a3,$zero
.L00017448:
    li         $a6,1
    dsll32     $a6,$a6,0x1e
    beqz       $s0, .L000175bc
    or         $a3,$a3,$a6
.L00017458:
    ld         $a6,-31800($gp)
.L0001745c:
    ld         $a5,48($sp)
    lw         $a4,32($sp)
    daddu      $a5,$a5,$a6
    ld         $a5,0($a5)
    lw         $a0,16($sp)
    jalr       $a5
    xor        $a0,$a0,$a4
.L00017478:
    ld         $ra,64($sp)
.L0001747c:
    ld         $s1,72($sp)
    ld         $s0,56($sp)
    jr         $ra
    daddiu     $sp,$sp,112
.L0001748c:
    beq        $a1, $a0, .L000176ec
    nop
    beqz       $a0, .L0001764c
    ld         $a1,40($sp)
.L0001749c:
    beqz       $a2, .L000175d0
    ld         $a5,24($sp)
    daddiu     $a1,$gp,0
    ld         $a3,-31808($gp)
    dsll       $a7,$s0,0x3
    sd         $a7,48($sp)
    daddu      $t0,$s1,$a1
    lw         $t0,0($t0)
    daddu      $a7,$a7,$a3
    ld         $a7,0($a7)
    subu       $a2,$a2,$t0
    sw         $a2,20($sp)
    or         $a7,$a7,$a5
    beqz       $a0, .L00017614
    sd         $a7,24($sp)
.L000174d8:
    ld         $a6,48($sp)
    ld         $a7,40($sp)
    daddu      $t1,$s1,$a1
    lw         $t1,0($t1)
    daddu      $a6,$a6,$a3
    ld         $a6,0($a6)
    subu       $a0,$a0,$t1
    sw         $a0,36($sp)
    or         $a6,$a6,$a7
    sd         $a6,40($sp)
.L00017500:
    ld         $a5,24($sp)
    sltu       $a7,$a5,$a6
    beqz       $a7, .L0001751c
    subu       $a1,$a2,$a0
    addiu      $a1,$a1,-1
    dsll       $a5,$a5,0x1
    sd         $a5,24($sp)
.L0001751c:
    daddiu     $a7,$gp,0
    daddu      $a7,$s1,$a7
    lw         $a7,0($a7)
    bltz       $a7, .L00017728
    move       $a3,$zero
    b          .L00017828
    move       $a2,$zero
.L00017538:
    addiu      $a3,$a3,1
    dsll       $a5,$a5,0x1
    sd         $a5,24($sp)
    bnez       $t0, .L00017594
    sltu       $a4,$a5,$a6
    dsll       $a2,$a2,0x1
.L00017550:
    slt        $t0,$a7,$a3
    bnez       $a4, .L00017568
    addiu      $a3,$a3,1
    dsubu      $a5,$a5,$a6
    sd         $a5,24($sp)
    ori        $a2,$a2,0x1
.L00017568:
    dsll       $a5,$a5,0x1
    sd         $a5,24($sp)
    bnez       $t0, .L00017594
    sltu       $t1,$a5,$a6
    slt        $t0,$a7,$a3
    bnez       $t1, .L00017538
    dsll       $a2,$a2,0x1
    dsubu      $a5,$a5,$a6
    sd         $a5,24($sp)
    b          .L00017538
    ori        $a2,$a2,0x1
.L00017594:
    sltu       $t2,$a5,$a6
    bnez       $t2, .L00017440
    nop
    dsubu      $a5,$a5,$a6
    sd         $a5,24($sp)
    li         $a3,-1
    bnez       $a5, .L00017448
    dsll32     $a3,$a3,0x1f
.L000175b4:
    bnez       $s0, .L0001745c
    ld         $a6,-31800($gp)
.L000175bc:
    dsrl32     $a4,$a3,0x3
    dsll       $a3,$a3,0x1d
    dsll       $a2,$a2,0x1d
    b          .L00017458
    or         $a2,$a4,$a2
.L000175d0:
    beqz       $a5, .L00017730
    ld         $a4,-31816($gp)
    dsll       $a3,$s0,0x3
    sd         $a3,48($sp)
    daddu      $a3,$a3,$a4
    ld         $a3,0($a3)
    jalr       $a3
    daddiu     $a0,$sp,24
    daddiu     $a2,$gp,0
    lw         $a0,36($sp)
    daddu      $a2,$s1,$a2
    lw         $a2,0($a2)
    daddiu     $a1,$gp,0
    ld         $a3,-31808($gp)
    subu       $a2,$a2,$v0
    bnez       $a0, .L000174d8
    sw         $a2,20($sp)
.L00017614:
    ld         $a4,-31816($gp)
    ld         $a3,48($sp)
    daddu      $a3,$a3,$a4
    ld         $a3,0($a3)
    jalr       $a3
    daddiu     $a0,$sp,40
    daddiu     $a0,$gp,0
    lw         $a2,20($sp)
    daddu      $a0,$s1,$a0
    lw         $a0,0($a0)
    ld         $a6,40($sp)
    subu       $a0,$a0,$v0
    b          .L00017500
    sw         $a0,36($sp)
.L0001764c:
    bnez       $a1, .L0001749c
    nop
    beqz       $a2, .L0001776c
    ld         $a3,24($sp)
.L0001765c:
    ld         $a4,-16360($zero)
    lw         $a3,1340($a4)
    ori        $a3,$a3,0x8020
    sw         $a3,1340($a4)
    ld         $a2,-16360($zero)
    lw         $a2,1340($a2)
    andi       $a2,$a2,0x400
    beqz       $a2, .L000177b8
    lw         $a5,32($sp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0001747c
    ld         $ra,64($sp)
.L00017698:
    dsll       $a2,$s0,0x3
    daddu      $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0001747c
    ld         $ra,64($sp)
.L000176bc:
    lwu        $a2,32($sp)
    daddu      $a3,$s1,$a3
    lw         $a3,0($a3)
    ld         $a1,88($sp)
    move       $a0,$s0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    xor        $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001747c
    ld         $ra,64($sp)
.L000176ec:
    lw         $a2,32($sp)
    lw         $a1,16($sp)
    xor        $a1,$a1,$a2
    daddiu     $a2,$gp,0
    dsll32     $a1,$a1,0x0
    daddu      $a2,$s1,$a2
    dsrl32     $a1,$a1,0x0
    lw         $a2,0($a2)
    move       $a0,$s0
    jal        fpstore_sd
    dsllv      $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001747c
    ld         $ra,64($sp)
.L00017728:
    b          .L00017594
    move       $a2,$zero
.L00017730:
    lw         $a2,32($sp)
    lw         $a1,16($sp)
    xor        $a1,$a1,$a2
    daddiu     $a2,$gp,0
    dsll32     $a1,$a1,0x0
    daddu      $a2,$s1,$a2
    dsrl32     $a1,$a1,0x0
    lw         $a2,0($a2)
    move       $a0,$s0
    jal        fpstore_sd
    dsllv      $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001747c
    ld         $ra,64($sp)
.L0001776c:
    bnez       $a3, .L0001765c
    nop
    ld         $a6,-16360($zero)
    lui        $a7,0x1
    lw         $a5,1340($a6)
    ori        $a7,$a7,0x40
    or         $a5,$a5,$a7
    sw         $a5,1340($a6)
    ld         $a4,-16360($zero)
    lw         $a4,1340($a4)
    andi       $a4,$a4,0x800
    beqz       $a4, .L00017804
    ld         $a1,-31832($gp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0001747c
    ld         $ra,64($sp)
.L000177b8:
    lw         $a2,16($sp)
    dsll       $a4,$s0,0x3
    ld         $a1,-31824($gp)
    daddiu     $a3,$gp,0
    daddu      $a3,$s1,$a3
    xor        $a2,$a2,$a5
    lw         $a3,0($a3)
    daddu      $a1,$a1,$a4
    dsll32     $a2,$a2,0x0
    ld         $a1,0($a1)
    dsrl32     $a2,$a2,0x0
    move       $a0,$s0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    or         $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001747c
    ld         $ra,64($sp)
.L00017804:
    dsll       $a2,$s0,0x3
    daddu      $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0001747c
    ld         $ra,64($sp)
.L00017828:
    addiu      $a3,$a3,1
    sltu       $a4,$a5,$a6
    b          .L00017550
    dsll       $a2,$a2,0x1
    daddiu     $sp,$sp,-32
    sd         $a1,0($sp)
    sw         $a0,8($sp)
    sd         $ra,24($sp)
    jal        cacheOP
    daddiu     $a0,$sp,0
    ld         $ra,24($sp)
    lwu        $v1,12($sp)
    lwu        $v0,16($sp)
    daddiu     $sp,$sp,32
    dsll32     $v1,$v1,0x0
    jr         $ra
    or         $v0,$v0,$v1

glabel ecc_cacheop_get
    sd         $a1,0($a2)
    sw         $a0,8($a2)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cacheOP
    move       $a0,$a2
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
    daddiu     $sp,$sp,-128
    sd         $s2,80($sp)
    sd         $ra,88($sp)
    sd         $s4,96($sp)
    lui        $a7,0x0
    dsll32     $t1,$a2,0x0
    sd         $s7,40($sp)
    lui        $t8,0x0
    lui        $t0,0xfff
    sd         $s6,32($sp)
    move       $s6,$a0
    move       $s7,$a1
    sd         $s5,48($sp)
    move       $s5,$a3
    sd         $s3,24($sp)
    lui        $t2,0xc000
    move       $s3,$a4
    sd         $s8,16($sp)
    and        $a6,$t2,$a2
    andi       $s8,$a2,0x3ff8
    sd         $s0,104($sp)
    ori        $t0,$t0,0xffff
    daddiu     $t8,$t8,14664
    beqz       $a6, .L000179f0
    sd         $s1,112($sp)
    lui        $t8,0x0
    lui        $t1,0x4000
    lui        $s1,0x0
    daddiu     $t8,$t8,14664
    bne        $a6, $t1, .L00017aa4
    daddiu     $s1,$s1,0
    dsll32     $s2,$a2,0x0
    dsrl32     $s2,$s2,0x0
    daddiu     $s0,$a7,0
    lui        $s4,0xfff
    dsll32     $s0,$s0,0x0
    ori        $s4,$s4,0xffff
    dsll32     $s1,$s1,0x0
    dadd       $s1,$s1,$t8
    lui        $t8,0x0
    dsll       $s4,$s4,0x8
    daddiu     $t8,$t8,11680
    sd         $zero,72($sp)
    b          .L0001798c
    dadd       $s0,$s0,$t8
.L00017944:
    move       $a6,$s5
    daddiu     $a5,$s1,80
    move       $a4,$s2
    move       $a3,$s7
    daddiu     $a2,$s1,1224
    move       $a1,$s6
    and        $t8,$s4,$a7
    sd         $t1,8($sp)
    li         $a0,2961
    dsll       $t8,$t8,0x4
    or         $t8,$s8,$t8
    jal        cmn_err_tag
    sd         $t8,0($sp)
.L00017978:
    ld         $t9,72($sp)
    addiu      $t9,$t9,1
    sd         $t9,72($sp)
    slti       $t9,$t9,2
    beqz       $t9, .L000179c0
.L0001798c:
    ld         $a7,72($sp)
    dsll       $a7,$a7,0x3
    daddu      $a7,$s3,$a7
    ld         $a7,0($a7)
    move       $t1,$s0
    dsrl       $a0,$a7,0x6
    beqz       $a7, .L00017978
    andi       $a0,$a0,0x3
    bnez       $a0, .L00017944
    nop
    daddiu     $t1,$s0,16
    b          .L00017944
    nop
.L000179c0:
    ld         $s2,80($sp)
.L000179c4:
    ld         $s8,16($sp)
    ld         $s3,24($sp)
    ld         $s6,32($sp)
    ld         $s4,96($sp)
    ld         $s0,104($sp)
    ld         $ra,88($sp)
    ld         $s7,40($sp)
    ld         $s1,112($sp)
    ld         $s5,48($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L000179f0:
    dsrl32     $s2,$t1,0x0
    daddiu     $s0,$a7,0
    lui        $s1,0x0
    daddiu     $s1,$s1,11680
    dsll32     $s0,$s0,0x0
    dadd       $s0,$s0,$s1
    lui        $s1,0x0
    dsll       $s4,$t0,0x8
    daddiu     $s1,$s1,0
    dsll32     $s1,$s1,0x0
    sd         $zero,64($sp)
    b          .L00017a6c
    dadd       $s1,$s1,$t8
.L00017a24:
    move       $a6,$s5
    daddiu     $a5,$s1,80
    move       $a4,$s2
    move       $a3,$s7
    daddiu     $a2,$s1,1224
    move       $a1,$s6
    and        $t8,$s4,$a7
    sd         $t1,8($sp)
    li         $a0,2960
    dsll       $t8,$t8,0x4
    or         $t8,$s8,$t8
    jal        cmn_err_tag
    sd         $t8,0($sp)
.L00017a58:
    ld         $t9,64($sp)
    addiu      $t9,$t9,1
    sd         $t9,64($sp)
    slti       $t9,$t9,2
    beqz       $t9, .L00017a9c
.L00017a6c:
    ld         $a7,64($sp)
    dsll       $a7,$a7,0x3
    daddu      $a7,$s3,$a7
    ld         $a7,0($a7)
    move       $t1,$s0
    beqz       $a7, .L00017a58
    andi       $a0,$a7,0xc0
    bnez       $a0, .L00017a24
    nop
    daddiu     $t1,$s0,16
    b          .L00017a24
    nop
.L00017a9c:
    b          .L000179c4
    ld         $s2,80($sp)
.L00017aa4:
    daddiu     $s0,$a7,0
    lui        $t8,0x8000
    lui        $a0,0x3f
    dsll32     $s2,$a2,0x0
    move       $s4,$zero
    bne        $a6, $t8, .L00017b80
    dsrl32     $s2,$s2,0x0
    dsll32     $s0,$s0,0x0
    ori        $s8,$a0,0xffff
    lui        $s1,0x0
    lui        $t8,0x7f
    daddiu     $s1,$s1,0
    ori        $t8,$t8,0xffc0
    and        $t8,$a2,$t8
    sd         $t8,56($sp)
    lui        $t8,0x0
    dsll32     $s1,$s1,0x0
    daddiu     $t8,$t8,14664
    dadd       $s1,$s1,$t8
    lui        $t8,0x0
    dsll       $s8,$s8,0xe
    daddiu     $t8,$t8,11680
    b          .L00017c38
    dadd       $s0,$s0,$t8
.L00017b04:
    move       $a6,$s5
    daddiu     $a5,$s1,80
    move       $a4,$s2
    move       $a3,$s7
    daddiu     $a2,$s1,1224
    move       $a1,$s6
    ld         $at,56($sp)
    and        $v0,$s8,$a7
    sd         $t1,8($sp)
    li         $a0,2962
    dsll       $v0,$v0,0x4
    or         $at,$at,$v0
    jal        cmn_err_tag
    sd         $at,0($sp)
.L00017b3c:
    addiu      $s4,$s4,1
    slti       $v1,$s4,2
    dsll       $a7,$s4,0x3
    beqz       $v1, .L00017b78
    daddu      $a7,$s3,$a7
    ld         $a7,0($a7)
.L00017b54:
    move       $t1,$s0
    dsrl       $a0,$a7,0xa
    beqz       $a7, .L00017b3c
    andi       $a0,$a0,0x3
    bnez       $a0, .L00017b04
    nop
    daddiu     $t1,$s0,16
    b          .L00017b04
    nop
.L00017b78:
    b          .L000179c4
    ld         $s2,80($sp)
.L00017b80:
    bne        $t2, $a6, .L000179c0
    lui        $s1,0x0
    dsll32     $s2,$a2,0x0
    ori        $s8,$a0,0xffff
    move       $s4,$zero
    dsll       $s8,$s8,0xe
    dsrl32     $s2,$s2,0x0
    daddiu     $s1,$s1,0
    lui        $t9,0x0
    daddiu     $s0,$a7,0
    dsll32     $s0,$s0,0x0
    lui        $t8,0x7f
    daddiu     $t9,$t9,14664
    ori        $t8,$t8,0xffc0
    and        $t8,$a2,$t8
    sd         $t8,56($sp)
    lui        $t8,0x0
    dsll32     $s1,$s1,0x0
    daddiu     $t8,$t8,11680
    dadd       $s1,$s1,$t9
    dadd       $s0,$s0,$t8
    dsll       $a7,$s4,0x3
    daddu      $a7,$s3,$a7
.L00017bdc:
    ld         $a7,0($a7)
    beqz       $a7, .L00017c1c
    move       $a6,$s5
    daddiu     $a5,$s1,560
    move       $a4,$s2
    move       $a3,$s7
    daddiu     $a2,$s1,1224
    move       $a1,$s6
    ld         $t0,56($sp)
    and        $t1,$s8,$a7
    sd         $s0,8($sp)
    li         $a0,2963
    dsll       $t1,$t1,0x4
    or         $t0,$t0,$t1
    jal        cmn_err_tag
    sd         $t0,0($sp)
.L00017c1c:
    addiu      $s4,$s4,1
    slti       $t2,$s4,2
    dsll       $a7,$s4,0x3
    bnez       $t2, .L00017bdc
    daddu      $a7,$s3,$a7
    b          .L000179c4
    ld         $s2,80($sp)
.L00017c38:
    dsll       $a7,$s4,0x3
    daddu      $a7,$s3,$a7
    b          .L00017b54
    ld         $a7,0($a7)
    daddiu     $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s1,8($sp)
    move       $s1,$a1
    blez       $a1, .L00017c7c
    sd         $ra,16($sp)
.L00017c64:
    li         $a0,23
    jal        .text
    move       $a1,$s0
    addiu      $s1,$s1,-128
    bgtz       $s1, .L00017c64
    daddiu     $s0,$s0,128
.L00017c7c:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel ecc_init
    daddiu     $sp,$sp,-32
    sd         $s0,16($sp)
    sd         $s8,8($sp)
    li         $a0,4096
    sd         $ra,0($sp)
    li         $a1,2304
    jal        kmem_zalloc
    lh         $s8,-15456($zero)
    beqz       $v0, .L00017d30
    move       $s0,$v0
    move       $a0,$s0
.L00017cbc:
    jal        .text
    li         $a1,4096
    dsll32     $a1,$s8,0x0
    li         $at,-7
    dsll32     $at,$at,0x1c
    li         $a0,-1
    dsrl       $a1,$a1,0x1d
    dsrl       $a0,$a0,0x18
    and        $a0,$s0,$a0
    lui        $a2,0x0
    daddiu     $a2,$a2,2704
    lui        $v1,0x0
    sll        $v0,$s8,0x3
    daddiu     $v1,$v1,0
    ld         $s8,8($sp)
    addiu      $v0,$v0,4080
    dsll32     $v1,$v1,0x0
    ld         $ra,0($sp)
    dsll32     $v0,$v0,0x0
    dadd       $v1,$v1,$a2
    ld         $s0,16($sp)
    dsrl32     $v0,$v0,0x0
    daddu      $v1,$v1,$a1
    or         $v0,$at,$v0
    or         $at,$at,$a0
    sd         $at,0($v1)
    daddiu     $sp,$sp,32
    jr         $ra
    sd         $at,0($v0)
.L00017d30:
    lui        $a1,0x0
    lui        $a2,0x0
    daddiu     $a1,$a1,0
    daddiu     $a2,$a2,11680
    dsll32     $a1,$a1,0x0
    move       $a0,$zero
    dadd       $a1,$a1,$a2
    jal        cmn_err
    daddiu     $a1,$a1,48
    b          .L00017cbc
    move       $a0,$s0

glabel ecc_force_cache_line_invalid
    daddiu     $sp,$sp,-48
    sw         $zero,20($sp)
    sw         $zero,12($sp)
    sw         $zero,16($sp)
    or         $v0,$a1,$a0
    sd         $v0,0($sp)
    sd         $s8,32($sp)
    addiu      $at,$a2,8
    move       $s8,$a2
    sd         $ra,24($sp)
    daddiu     $a0,$sp,0
    jal        cacheOP
    sw         $at,8($sp)
    daddiu     $a0,$sp,0
    addiu      $v1,$s8,28
    jal        cacheOP
    sw         $v1,8($sp)
    ld         $ra,24($sp)
    ld         $s8,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel cer_to_hex
    li         $a7,48
    li         $a6,120
    daddiu     $sp,$sp,-16
    daddiu     $a3,$sp,0
    lui        $a5,0x0
    lui        $t0,0x0
    daddiu     $a5,$a5,0
    daddiu     $t0,$t0,11680
    dsll32     $a5,$a5,0x0
    daddiu     $a4,$sp,0
    dadd       $a5,$a5,$t0
.L00017ddc:
    andi       $t0,$a1,0xf
    srl        $a1,$a1,0x4
    daddu      $t0,$t0,$a5
    daddiu     $a3,$a3,1
    lbu        $t0,80($t0)
    sb         $t0,-1($a3)
    beqz       $a1, .L00017e14
    andi       $t1,$a1,0xf
    srl        $a1,$a1,0x4
    daddu      $t1,$t1,$a5
    daddiu     $a3,$a3,1
    lbu        $t1,80($t1)
    bnez       $a1, .L00017ddc
    sb         $t1,-1($a3)
.L00017e14:
    sb         $a6,0($a3)
    sb         $a7,1($a3)
    daddiu     $a3,$a3,2
.L00017e20:
    daddiu     $a3,$a3,-1
    sltu       $t2,$a4,$a3
    lbu        $t3,0($a3)
    sb         $t3,0($a0)
    beqz       $t2, .L00017e4c
    daddiu     $a3,$a3,-1
    sltu       $t9,$a4,$a3
    daddiu     $a0,$a0,2
    lbu        $t8,0($a3)
    bnez       $t9, .L00017e20
    sb         $t8,-1($a0)
.L00017e4c:
    jr         $ra
    daddiu     $sp,$sp,16

glabel ecc_handler
    daddiu     $sp,$sp,-128
    sd         $s3,64($sp)
    sd         $s2,72($sp)
    sd         $s6,80($sp)
    sd         $s4,88($sp)
    sd         $s0,48($sp)
    lwu        $s0,24($a1)
    sd         $ra,96($sp)
    sd         $s7,104($sp)
    dsll32     $at,$s0,0x2
    move       $a2,$zero
    move       $a5,$zero
    sd         $s1,56($sp)
    move       $s1,$a1
    bgez       $at, .L00017ec0
    sd         $s5,112($sp)
    lui        $s2,0x0
    daddiu     $s2,$s2,0
    lui        $t8,0x0
    dsll32     $s2,$s2,0x0
    daddiu     $t8,$t8,11680
    sll        $a1,$s0,0x0
    dadd       $s2,$s2,$t8
    jal        cer_to_hex
    daddiu     $a0,$s2,108
    b          .L000180c8
    daddiu     $s3,$s2,104
.L00017ec0:
    lw         $v0,568($a1)
    lw         $t8,572($a1)
    addiu      $t9,$v0,1
    andi       $t9,$t9,0xf
    sd         $a0,40($sp)
    beq        $t8, $t9, .L00017f28
    sd         $s8,120($sp)
    slti       $ra,$v0,17
    bnez       $ra, .L00017f00
    move       $s8,$v0
    sra        $ra,$v0,0x1f
    xor        $s8,$v0,$ra
    subu       $s8,$s8,$ra
    andi       $s8,$s8,0xf
    xor        $s8,$s8,$ra
    subu       $s8,$s8,$ra
.L00017f00:
    dsll       $v0,$s8,0x5
    daddu      $v0,$s1,$v0
    sw         $s0,56($v0)
    ld         $at,0($s1)
    sd         $at,80($v0)
    lw         $ra,568($s1)
    addiu      $ra,$ra,1
    andi       $ra,$ra,0xf
    b          .L00017f2c
    sw         $ra,568($s1)
.L00017f28:
    li         $s8,-1
.L00017f2c:
    li         $a1,0xc000
    dsll       $a1,$a1,0x10
    and        $v0,$a1,$s0
    sd         $zero,8($s1)
    beqz       $v0, .L000180f8
    sd         $zero,16($s1)
    lui        $a3,0x4000
    beq        $v0, $a3, .L0001812c
    li         $a4,0x8000
    dsll       $a4,$a4,0x10
    beq        $v0, $a4, .L00018270
    li         $s4,-11
    beq        $a1, $v0, .L000182e0
    lui        $t9,0x1200
    li         $s4,-11
    lui        $s3,0x0
    daddiu     $s3,$s3,0
    lui        $t8,0x0
    dsll32     $s3,$s3,0x0
    daddiu     $t8,$t8,11680
    dsll32     $s4,$s4,0x1b
    dadd       $s3,$s3,$t8
    bgez       $s8, .L00018020
    daddiu     $s3,$s3,168
    b          .L0001803c
    ld         $s8,120($sp)
.L00017f94:
    jal        .text
    move       $a1,$s3
    daddiu     $s2,$s2,1
    sltiu      $t8,$s2,2
    daddiu     $s6,$s6,8
    daddiu     $s3,$s3,1
    beqz       $t8, .L00017fdc
    sd         $v0,0($s6)
.L00017fb4:
    move       $t9,$s7
    movn       $t9,$s5,$s2
    and        $t9,$s0,$t9
    bnez       $t9, .L00017f94
    li         $a0,4
    daddiu     $s2,$s2,1
    sltiu      $ra,$s2,2
    daddiu     $s6,$s6,8
    bnez       $ra, .L00017fb4
    daddiu     $s3,$s3,1
.L00017fdc:
    move       $a0,$zero
    jal        .text
    ld         $a1,32($sp)
    ld         $s0,32($sp)
    move       $a0,$zero
    jal        .text
    xori       $a1,$s0,0x1
    move       $a0,$s0
    move       $a1,$zero
    jal        ecc_force_cache_line_invalid
    move       $a2,$zero
    move       $a0,$s0
    li         $a1,1
    jal        ecc_force_cache_line_invalid
    move       $a2,$zero
    move       $s3,$zero
.L0001801c:
    bltz       $s8, .L00018038
.L00018020:
    dsll       $v0,$s8,0x5
    daddu      $v0,$s1,$v0
    ld         $v1,8($s1)
    sd         $v1,64($v0)
    ld         $at,16($s1)
    sd         $at,72($v0)
.L00018038:
    ld         $s8,120($sp)
.L0001803c:
    li         $v1,1
    beqz       $s3, .L000180a4
    sb         $v1,-14624($zero)
    lbu        $a0,38($s1)
    li         $v0,2
    beq        $v0, $a0, .L000180a4
    ld         $a7,40($sp)
    sb         $v0,38($s1)
    li         $a5,0x2c
    li         $a2,8
    ld         $a6,0($a7)
    daddiu     $a1,$a7,952
    move       $a0,$a7
    sd         $a6,952($a7)
.L00018074:
    daddu      $t2,$a2,$a0
    addiu      $t1,$a2,8
    daddu      $t3,$a2,$a1
    ld         $t2,0($t2)
    addiu      $a5,$a5,-2
    daddu      $t0,$t1,$a0
    sd         $t2,0($t3)
    daddu      $t1,$t1,$a1
    ld         $t0,0($t0)
    addiu      $a2,$a2,16
    bgtz       $a5, .L00018074
    sd         $t0,0($t1)
.L000180a4:
    move       $s0,$zero
    li         $a0,19
.L000180ac:
    daddu      $a1,$s0,$s1
    jal        .text
    or         $a1,$s4,$a1
    addiu      $s0,$s0,128
    sltiu      $a2,$s0,4096
    bnez       $a2, .L000180ac
    li         $a0,19
.L000180c8:
    ld         $s2,72($sp)
    ld         $s6,80($sp)
    ld         $s4,88($sp)
    ld         $s0,48($sp)
    ld         $s7,104($sp)
    ld         $ra,96($sp)
    ld         $s1,56($sp)
    ld         $s5,112($sp)
    move       $v0,$s3
    ld         $s3,64($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L000180f8:
    lui        $s7,0x550
    lui        $s5,0xaa0
    move       $s2,$zero
    li         $s4,-11
    andi       $s3,$s0,0x3ff8
    lw         $a3,40($s1)
    dsll32     $s4,$s4,0x1b
    move       $s6,$s1
    daddu      $s3,$s4,$s3
    sd         $s3,32($sp)
    addiu      $a3,$a3,1
    b          .L00017fb4
    sw         $a3,40($s1)
.L0001812c:
    lui        $s7,0x550
    lw         $t8,44($s1)
    and        $t9,$s7,$s0
    lui        $s5,0xaa0
    addiu      $t8,$t8,1
    beqz       $t9, .L00018360
    sw         $t8,44($s1)
.L00018148:
    move       $s3,$zero
    move       $s6,$s1
    andi       $s2,$s0,0x3ff8
    lui        $t8,0x30
    lui        $ra,0xc00
    lui        $t9,0x3c0
    and        $ra,$s0,$ra
    sd         $ra,8($sp)
    and        $t9,$s0,$t9
    li         $s4,-11
    sd         $t9,16($sp)
    and        $t8,$s0,$t8
    dsll32     $s4,$s4,0x1b
    sd         $t8,24($sp)
    b          .L000181a8
    daddu      $s2,$s4,$s2
.L00018188:
    li         $a0,1
.L0001818c:
    jal        .text
    move       $a1,$s2
.L00018194:
    daddiu     $s3,$s3,1
    sltiu      $at,$s3,2
    daddiu     $s6,$s6,8
    beqz       $at, .L00018240
    daddiu     $s2,$s2,1
.L000181a8:
    move       $v0,$s7
    movn       $v0,$s5,$s3
    and        $v0,$s0,$v0
    beqz       $v0, .L00018194
    li         $a0,5
    jal        .text
    move       $a1,$s2
    ld         $v1,24($sp)
    ld         $a5,8($sp)
    li         $a1,2
    ld         $a3,16($sp)
    li         $a2,3
    beqz       $v1, .L000181f0
    sd         $v0,8($s6)
    dsrl       $a0,$v0,0x6
    and        $a0,$a2,$a0
    beq        $a2, $a0, .L000182a0
    nop
.L000181f0:
    beqz       $a3, .L00018200
    dsrl32     $a4,$v0,0x1d
    beq        $a1, $a4, .L000182c0
    nop
.L00018200:
    beqz       $a5, .L0001818c
    li         $a0,1
    dsrl       $a6,$v0,0x6
    and        $a6,$a2,$a6
    bne        $a2, $a6, .L00018188
    dsrl32     $a7,$v0,0x1d
    bne        $a1, $a7, .L0001818c
    li         $a0,1
    lui        $s2,0x0
    daddiu     $s2,$s2,0
    lui        $s3,0x0
    dsll32     $s2,$s2,0x0
    daddiu     $s3,$s3,11680
    dadd       $s2,$s2,$s3
    b          .L0001825c
    daddiu     $s3,$s2,584
.L00018240:
    lui        $s2,0x0
    lui        $t8,0x0
    daddiu     $s2,$s2,0
    daddiu     $t8,$t8,11680
    dsll32     $s2,$s2,0x0
    move       $s3,$zero
    dadd       $s2,$s2,$t8
.L0001825c:
    lui        $t8,0x1000
    and        $t8,$s0,$t8
    daddiu     $t9,$s2,424
    b          .L0001801c
    movn       $s3,$t9,$t8
.L00018270:
    dsll32     $s4,$s4,0x1b
    lui        $s3,0x0
    lw         $t8,48($s1)
    daddiu     $s3,$s3,0
    lui        $t9,0x0
    dsll32     $s3,$s3,0x0
    daddiu     $t9,$t9,11680
    addiu      $t8,$t8,1
    dadd       $s3,$s3,$t9
    sw         $t8,48($s1)
    b          .L0001801c
    daddiu     $s3,$s3,384
.L000182a0:
    lui        $s2,0x0
    daddiu     $s2,$s2,0
    lui        $s3,0x0
    dsll32     $s2,$s2,0x0
    daddiu     $s3,$s3,11680
    dadd       $s2,$s2,$s3
    b          .L0001825c
    daddiu     $s3,$s2,520
.L000182c0:
    lui        $s2,0x0
    daddiu     $s2,$s2,0
    lui        $s3,0x0
    dsll32     $s2,$s2,0x0
    daddiu     $s3,$s3,11680
    dadd       $s2,$s2,$s3
    b          .L0001825c
    daddiu     $s3,$s2,552
.L000182e0:
    lw         $t8,52($s1)
    and        $t9,$s0,$t9
    addiu      $t8,$t8,1
    beqz       $t9, .L0001839c
    sw         $t8,52($s1)
    lui        $ra,0xaff1
    ld         $ra,64($ra)
    andi       $ra,$ra,0x2
    beqz       $ra, .L00018430
    lui        $s3,0xaff0
    ld         $s3,152($s3)
    li         $t8,-1
    lui        $v0,0x7f
    dsrl       $t8,$t8,0x1e
    ori        $v0,$v0,0xffc0
    and        $s3,$s3,$t8
    and        $at,$v0,$s0
    and        $v0,$v0,$s3
    beq        $at, $v0, .L000183d8
    lui        $s2,0x0
    lui        $t8,0x0
    daddiu     $s2,$s2,0
    daddiu     $t8,$t8,11680
    dsll32     $s2,$s2,0x0
    move       $s3,$zero
    dadd       $s2,$s2,$t8
.L00018348:
    move       $a2,$a5
.L0001834c:
    beqz       $a2, .L000183bc
    lui        $t8,0x380
    li         $s4,-11
    b          .L0001801c
    dsll32     $s4,$s4,0x1b
.L00018360:
    and        $t8,$s5,$s0
    bnez       $t8, .L00018148
    dsll32     $t9,$s0,0x3
    bgez       $t9, .L00018510
    lui        $s3,0x0
    lui        $s3,0x0
    daddiu     $s3,$s3,0
    lui        $t8,0x0
    dsll32     $s3,$s3,0x0
    daddiu     $t8,$t8,11680
    dadd       $s3,$s3,$t8
    daddiu     $s3,$s3,424
.L00018390:
    li         $s4,-11
    b          .L0001801c
    dsll32     $s4,$s4,0x1b
.L0001839c:
    lui        $s2,0x0
    lui        $t8,0x0
    daddiu     $s2,$s2,0
    daddiu     $t8,$t8,11680
    dsll32     $s2,$s2,0x0
    move       $s3,$zero
    dadd       $s2,$s2,$t8
    lui        $t8,0x380
.L000183bc:
    and        $t8,$s0,$t8
    beqz       $t8, .L00018450
    dsll32     $t8,$s0,0x5
    daddiu     $s3,$s2,288
    li         $s4,-11
    b          .L0001801c
    dsll32     $s4,$s4,0x1b
.L000183d8:
    jal        maddr_to_dimm
    move       $a0,$s3
    move       $a3,$v0
    move       $a2,$s3
    lui        $t8,0x0
    lui        $t9,0x0
    daddiu     $t8,$t8,2704
    daddiu     $t9,$t9,11680
    lui        $s2,0x0
    lui        $s4,0x0
    daddiu     $s2,$s2,0
    daddiu     $s4,$s4,0
    dsll32     $s2,$s2,0x0
    dsll32     $s4,$s4,0x0
    dadd       $s2,$s2,$t9
    dadd       $s4,$s4,$t8
    daddiu     $a1,$s2,208
    jal        sprintf
    daddiu     $a0,$s4,1024
    daddiu     $s3,$s4,1024
    b          .L00018348
    li         $a5,1
.L00018430:
    move       $s3,$zero
    lui        $s2,0x0
    lui        $t8,0x0
    daddiu     $s2,$s2,0
    daddiu     $t8,$t8,11680
    dsll32     $s2,$s2,0x0
    b          .L0001834c
    dadd       $s2,$s2,$t8
.L00018450:
    bgez       $t8, .L0001852c
    dsll32     $t8,$s0,0x4
    move       $s5,$zero
.L0001845c:
    move       $s7,$s1
    lui        $s6,0x7f
    li         $s4,-11
    ori        $s6,$s6,0xffc0
    dsll32     $s4,$s4,0x1b
    and        $s6,$s0,$s6
    daddu      $s6,$s4,$s6
    b          .L000184d0
    sd         $s6,0($sp)
.L00018480:
    jal        .text
    move       $a1,$s6
    dsrl       $a1,$v0,0xa
    andi       $a1,$a1,0x3
    beqz       $a1, .L000184bc
    sd         $v0,8($s7)
    li         $a2,3
    beq        $a2, $a1, .L00018508
    move       $a0,$a2
    jal        .text
    move       $a1,$s6
    ld         $a0,0($sp)
    li         $a2,3
    jal        ecc_force_cache_line_invalid
    sll        $a1,$s5,0x0
.L000184bc:
    daddiu     $s5,$s5,1
    sltiu      $a3,$s5,2
    daddiu     $s7,$s7,8
    beqz       $a3, .L0001801c
    daddiu     $s6,$s6,1
.L000184d0:
    lui        $a1,0x400
    lui        $v0,0x800
    move       $a4,$a1
    movn       $a4,$v0,$s5
    and        $a4,$s0,$a4
    bnez       $a4, .L00018480
    li         $a0,7
    daddiu     $s5,$s5,1
    sltiu      $a5,$s5,2
    daddiu     $s7,$s7,8
    bnez       $a5, .L000184d0
    daddiu     $s6,$s6,1
    b          .L0001801c
    nop
.L00018508:
    b          .L0001801c
    daddiu     $s3,$s2,344
.L00018510:
    daddiu     $s3,$s3,0
    lui        $t8,0x0
    dsll32     $s3,$s3,0x0
    daddiu     $t8,$t8,11680
    dadd       $s3,$s3,$t8
    b          .L00018390
    daddiu     $s3,$s3,480
.L0001852c:
    bltz       $t8, .L0001845c
    move       $s5,$zero
    daddiu     $s3,$s2,312
    li         $s4,-11
    b          .L0001801c
    dsll32     $s4,$s4,0x1b

glabel ecc_panic
    move       $a4,$a2
    lw         $a2,24($a2)
    ld         $a3,0($a4)
    daddiu     $sp,$sp,-32
    sd         $s8,8($sp)
    move       $s8,$a0
    li         $a0,20
    daddiu     $a4,$a4,8
    sd         $a1,16($sp)
    sd         $ra,0($sp)
    jal        .text
    move       $a1,$s8
    move       $a2,$s8
    li         $a0,16
    lui        $a1,0x0
    ld         $a3,16($sp)
    lui        $a4,0x0
    daddiu     $a1,$a1,0
    daddiu     $a4,$a4,11680
    dsll32     $a1,$a1,0x0
    daddiu     $a3,$a3,952
    dadd       $a1,$a1,$a4
    jal        cmn_err
    daddiu     $a1,$a1,616
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel ecc_log
    jr         $ra
    nop

glabel ecc_printPending
    daddiu     $sp,$sp,-64
    sd         $s5,0($sp)
    move       $s5,$a0
    sd         $s4,24($sp)
    move       $s4,$zero
    lui        $t8,0x0
    daddiu     $t8,$t8,2704
    sd         $s1,8($sp)
    lui        $s1,0x0
    daddiu     $s1,$s1,11680
    sd         $s0,16($sp)
    lui        $s0,0x0
    sd         $s3,40($sp)
    lui        $s3,0x0
    daddiu     $s0,$s0,0
    daddiu     $s3,$s3,0
    dsll32     $s0,$s0,0x0
    sd         $s2,48($sp)
    dsll32     $s3,$s3,0x0
    dadd       $s0,$s0,$s1
    sd         $ra,32($sp)
    b          .L000186dc
    dadd       $s3,$s3,$t8
.L00018618:
    addiu      $s4,$s4,1
.L0001861c:
    slti       $t8,$s4,128
    dsll       $a7,$s4,0x3
    beqz       $t8, .L000186b8
    daddu      $a7,$s3,$a7
    ld         $a7,0($a7)
.L00018630:
    beqz       $a7, .L00018618
    nop
    lw         $a5,412($a7)
    lw         $a4,408($a7)
    lw         $a3,404($a7)
    move       $a1,$s4
    daddiu     $a0,$s0,648
    lw         $a2,400($a7)
    jalr       $s5
    daddiu     $s2,$a7,360
    lw         $t0,568($s2)
    lw         $s1,572($s2)
    beq        $s1, $t0, .L00018618
    nop
    dsll       $a1,$s1,0x5
.L0001866c:
    daddu      $a1,$s2,$a1
    ld         $a4,72($a1)
    ld         $a3,64($a1)
    ld         $a2,80($a1)
    daddiu     $a0,$s0,704
    jalr       $s5
    lwu        $a1,56($a1)
    addiu      $s1,$s1,1
    sra        $t8,$s1,0x1f
    xor        $s1,$s1,$t8
    subu       $s1,$s1,$t8
    andi       $s1,$s1,0xf
    lw         $a2,568($s2)
    xor        $s1,$s1,$t8
    subu       $s1,$s1,$t8
    bne        $s1, $a2, .L0001866c
    dsll       $a1,$s1,0x5
    b          .L0001861c
    addiu      $s4,$s4,1
.L000186b8:
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    ld         $s2,48($sp)
    ld         $ra,32($sp)
    ld         $s3,40($sp)
    ld         $s4,24($sp)
    ld         $s5,0($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000186dc:
    dsll       $a7,$s4,0x3
    daddu      $a7,$s3,$a7
    b          .L00018630
    ld         $a7,0($a7)

glabel ecc_compute_sctag_ecc
    daddiu     $sp,$sp,-48
    sd         $s3,24($sp)
    move       $s3,$a0
    sd         $s2,32($sp)
    move       $s2,$zero
    sd         $s0,8($sp)
    lui        $s0,0x0
    lui        $t8,0x0
    daddiu     $s0,$s0,0
    sd         $ra,16($sp)
    daddiu     $t8,$t8,14664
    dsll32     $s0,$s0,0x0
    sd         $s1,0($sp)
    move       $s1,$zero
    dadd       $s0,$s0,$t8
    dsll       $a0,$s2,0x3
.L0001872c:
    daddu      $a0,$s0,$a0
    ld         $a0,920($a0)
    sll        $s1,$s1,0x1
    jal        ecc_bitcount
    and        $a0,$a0,$s3
    andi       $a1,$v0,0x1
    addiu      $s2,$s2,1
    beqz       $a1, .L00018754
    slti       $a3,$s2,7
    ori        $s1,$s1,0x1
.L00018754:
    bnez       $a3, .L0001872c
    dsll       $a0,$s2,0x3
    ld         $s0,8($sp)
    ld         $ra,16($sp)
    move       $v0,$s1
    ld         $s1,0($sp)
    ld         $s2,32($sp)
    ld         $s3,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel scache_data_bit_error
    daddiu     $sp,$sp,-32
    move       $v0,$zero
    li         $t2,1
    sd         $s0,16($sp)
    li         $s0,-128
    sd         $s1,8($sp)
    li         $s1,-64
    sd         $s2,0($sp)
    andi       $s2,$a0,0x1ff
    lui        $a3,0x0
    lui        $a4,0x0
    daddiu     $a3,$a3,0
    daddiu     $a4,$a4,14664
    dsll32     $a3,$a3,0x0
    sd         $ra,24($sp)
    b          .L00018890
    dadd       $a3,$a3,$a4
.L000187c0:
    beq        $s2, $a4, .L0001886c
    addiu      $s0,$s0,1
    addiu      $v0,$v0,1
    addiu      $s1,$s1,1
    slti       $a4,$v0,136
    dsllv      $t8,$t2,$v0
    slti       $t3,$v0,128
    beqz       $a4, .L00018874
    slti       $t1,$v0,64
    dsllv      $ra,$t2,$s1
.L000187e8:
    dsllv      $t9,$t2,$s0
    li         $a2,8
    move       $a5,$zero
    b          .L00018814
    move       $a4,$zero
.L000187fc:
    or         $at,$a4,$at
    ld         $a7,16($t0)
    and        $a7,$a7,$t8
    movn       $a4,$at,$a7
.L0001880c:
    beqz       $a6, .L000187c0
    addiu      $a2,$a2,-1
.L00018814:
    dsll       $a7,$a5,0x2
    sllv       $at,$t2,$a2
    dsubu      $a7,$a7,$a5
    addiu      $a5,$a5,1
    dsll       $a7,$a7,0x3
    slti       $a6,$a5,9
    daddu      $a7,$a3,$a7
    bnez       $t1, .L000187fc
    daddiu     $t0,$a7,1008
    beqz       $t3, .L00018854
    sllv       $v1,$t2,$a2
    ld         $at,1016($a7)
    or         $v1,$a4,$v1
    and        $at,$at,$ra
    b          .L0001880c
    movn       $a4,$v1,$at
.L00018854:
    ld         $v1,1008($a7)
    and        $v1,$v1,$t9
    beqz       $v1, .L0001880c
    sllv       $a0,$t2,$a2
    b          .L0001880c
    or         $a4,$a4,$a0
.L0001886c:
    b          .L0001887c
    ld         $ra,24($sp)
.L00018874:
    li         $v0,-1
    ld         $ra,24($sp)
.L0001887c:
    ld         $s2,0($sp)
    ld         $s1,8($sp)
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00018890:
    slti       $t1,$v0,64
    dsllv      $t8,$t2,$v0
    slti       $t3,$v0,128
    b          .L000187e8
    dsllv      $ra,$t2,$s1

glabel ecc_compute_scdata_ecc
    daddiu     $sp,$sp,-48
    sd         $s4,16($sp)
    sd         $s3,8($sp)
    move       $s3,$a0
    move       $s4,$a1
    sd         $s2,0($sp)
    move       $s2,$zero
    sd         $s0,24($sp)
    lui        $s0,0x0
    lui        $t8,0x0
    daddiu     $s0,$s0,0
    sd         $s1,32($sp)
    daddiu     $t8,$t8,14664
    dsll32     $s0,$s0,0x0
    move       $s1,$zero
    sd         $ra,40($sp)
    dadd       $s0,$s0,$t8
.L000188e8:
    dsll       $a1,$s2,0x2
    dsubu      $a1,$a1,$s2
    dsll       $a1,$a1,0x3
    daddu      $a1,$s0,$a1
    ld         $a0,1016($a1)
    ld         $a1,1024($a1)
    sll        $s1,$s1,0x1
    and        $a1,$a1,$s4
    and        $a0,$a0,$s3
    jal        ecc_bitcount
    xor        $a0,$a0,$a1
    andi       $a2,$v0,0x1
    addiu      $s2,$s2,1
    beqz       $a2, .L00018928
    slti       $a4,$s2,9
    ori        $s1,$s1,0x1
.L00018928:
    bnez       $a4, .L000188e8
    dsll32     $a0,$s1,0x0
    jal        ecc_bitcount
    dsrl32     $a0,$a0,0x0
    ld         $s2,0($sp)
    ld         $s3,8($sp)
    ld         $ra,40($sp)
    andi       $a1,$v0,0x1
    ld         $s4,16($sp)
    beqz       $a1, .L00018958
    ld         $s0,24($sp)
    ori        $s1,$s1,0x200
.L00018958:
    move       $v0,$s1
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel ecc_bitcount
    beqz       $a0, .L00018988
    move       $v0,$zero
.L00018970:
    daddiu     $at,$a0,-1
    and        $a0,$a0,$at
    bnez       $a0, .L00018970
    addiu      $v0,$v0,1
    jr         $ra
    nop
.L00018988:
    move       $v0,$zero
    jr         $ra
    nop

glabel ecc_scache_bits_in_error
    move       $v0,$a0
    daddiu     $sp,$sp,-16
    move       $v0,$zero
    beqz       $a0, .L000189d8
    sd         $ra,0($sp)
    dsll32     $a0,$a0,0x0
    jal        ecc_bitcount
    dsrl32     $a0,$a0,0x0
    li         $a1,1
    li         $a3,5
    ld         $ra,0($sp)
    beq        $v0, $a1, .L000189e0
    li         $a0,3
    beq        $v0, $a0, .L000189e0
    nop
    beq        $v0, $a3, .L000189e0
    li         $v0,2
.L000189d8:
    jr         $ra
    daddiu     $sp,$sp,16
.L000189e0:
    b          .L000189d8
    li         $v0,1

glabel warn
    daddiu     $sp,$sp,-80
    sd         $a4,48($sp)
    sd         $a5,56($sp)
    sd         $a6,64($sp)
    sd         $ra,0($sp)
    sd         $a2,32($sp)
    sd         $a0,16($sp)
    move       $at,$a0
    move       $a0,$zero
    sd         $a1,24($sp)
    li         $a1,20
    move       $a2,$at
    sd         $a3,40($sp)
    daddiu     $a3,$sp,24
    jal        icmn_err_tag
    sd         $a7,72($sp)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,80

glabel engr_dvt_thread
    li         $a0,5
    lui        $a1,0x0
    lui        $a2,0x0
    daddiu     $a1,$a1,0
    daddiu     $a2,$a2,11680
    dsll32     $a1,$a1,0x0
    daddiu     $sp,$sp,-16
    dadd       $a1,$a1,$a2
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,752
    jal        sthread_exit
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel dumptlb
    daddiu     $sp,$sp,-32
    ld         $a3,0($gp)
    dsll       $a2,$a0,0x2
    sd         $ra,8($sp)
    dsubu      $a2,$a2,$a0
    sd         $s0,24($sp)
    move       $s0,$zero
    dsll       $a2,$a2,0x6
    sd         $s1,16($sp)
    beqz       $a3, .L00018aec
    daddu      $a2,$a2,$a0
    dsll       $s1,$a2,0x3
    sd         $a0,0($sp)
    daddu      $s1,$a3,$s1
.L00018aac:
    dsll       $a1,$s0,0x2
    dsubu      $a1,$a1,$s0
    dsll       $a1,$a1,0x3
    move       $a0,$s0
    daddu      $a1,$s1,$a1
    daddiu     $a3,$a1,24
    daddiu     $a2,$a1,16
    jal        tlbgetent
    daddiu     $a1,$a1,8
    addiu      $s0,$s0,1
    slti       $a2,$s0,64
    bnez       $a2, .L00018aac
    ld         $a3,0($sp)
    sll        $a3,$a3,0x8
    ori        $a3,$a3,0x1
    sw         $a3,0($s1)
.L00018aec:
    ld         $ra,8($sp)
    ld         $s0,24($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel checkAllTlbsDumped
    ld         $at,0($gp)
    lw         $a1,0($gp)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    beqz       $at, .L00018b8c
    sd         $s0,8($sp)
    blez       $a1, .L00018b90
    ld         $ra,0($sp)
    move       $s0,$zero
    b          .L00018b40
    dsll32     $a0,$s0,0x10
    lw         $v0,0($gp)
.L00018b30:
    addiu      $s0,$s0,1
    slt        $v0,$s0,$v0
    beqz       $v0, .L00018b8c
    dsll32     $a0,$s0,0x10
.L00018b40:
    jal        cpu_enabled
    dsra32     $a0,$a0,0x10
    beqz       $v0, .L00018b30
    lw         $v0,0($gp)
    ld         $a1,0($gp)
    dsll       $a2,$s0,0x2
    dsubu      $a2,$a2,$s0
    dsll       $a2,$a2,0x6
    daddu      $a2,$a2,$s0
    dsll       $a2,$a2,0x3
    daddu      $a1,$a1,$a2
    lw         $a1,0($a1)
    bnez       $a1, .L00018b30
    lw         $v0,0($gp)
    ld         $a0,-31792($gp)
    jal        printf
    move       $a1,$s0
    b          .L00018b30
    lw         $v0,0($gp)
.L00018b8c:
    ld         $ra,0($sp)
.L00018b90:
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16
    nop

glabel VEC_nofault
    move       $a2,$s0
    jal        trap_nofault
    move       $s1,$k1
    j          exception_exit
    move       $k1,$s1

glabel VEC_cpfault
    andi       $a1,$s0,0x18
    beqz       $a1, .L00018f00
    move       $s5,$k1
    lui        $at,0x3000
    and        $a1,$a3,$at
    li         $at,1
    srl        $a1,$a1,0x1c
    bne        $a1, $at, .L00018ef8
    nop
    ld         $a1,-16360($zero)
    lui        $at,0x2000
    or         $a2,$s0,$at
    ld         $t0,992($a1)
    sw         $gp,312($t0)
    daddiu     $t0,$t0,0
    sd         $a2,248($k1)
    ld         $a2,-15264($zero)
    beq        $a2, $a1, .L00018ef0
    nop
    beqz       $a2, .L00018d5c
    nop
    ld         $t0,792($a2)
    lb         $t0,156($t0)
    andi       $t0,$t0,0xc
    beqz       $t0, .L00018c2c
    nop
    lui        $t0,0x400
.L00018c2c:
    andi       $t3,$s0,0xffa0
    lui        $at,0x2000
    or         $t3,$t3,$at
    or         $t3,$t3,$t0
    mtc0       $t3,$12
    ld         $a3,992($a2)
    cfc1       $a1,c1_fcsr
    sw         $a1,304($a3)
    bnez       $t0, .L00018cdc
    nop
    swc1       $f31,292($a3)
    swc1       $f30,284($a3)
    swc1       $f29,276($a3)
    swc1       $f28,268($a3)
    swc1       $f27,260($a3)
    swc1       $f26,252($a3)
    swc1       $f25,244($a3)
    swc1       $f24,236($a3)
    swc1       $f23,228($a3)
    swc1       $f22,220($a3)
    swc1       $f21,212($a3)
    swc1       $f20,204($a3)
    swc1       $f19,196($a3)
    swc1       $f18,188($a3)
    swc1       $f17,180($a3)
    swc1       $f16,172($a3)
    swc1       $f15,164($a3)
    swc1       $f14,156($a3)
    swc1       $f13,148($a3)
    swc1       $f12,140($a3)
    swc1       $f11,132($a3)
    swc1       $f10,124($a3)
    swc1       $f9,116($a3)
    swc1       $f8,108($a3)
    swc1       $f7,100($a3)
    swc1       $f6,92($a3)
    swc1       $f5,84($a3)
    swc1       $f4,76($a3)
    swc1       $f3,68($a3)
    swc1       $f2,60($a3)
    swc1       $f1,52($a3)
    swc1       $f0,44($a3)
    b          .L00018d5c
    nop
.L00018cdc:
    sdc1       $f31,288($a3)
    sdc1       $f30,280($a3)
    sdc1       $f29,272($a3)
    sdc1       $f28,264($a3)
    sdc1       $f27,256($a3)
    sdc1       $f26,248($a3)
    sdc1       $f25,240($a3)
    sdc1       $f24,232($a3)
    sdc1       $f23,224($a3)
    sdc1       $f22,216($a3)
    sdc1       $f21,208($a3)
    sdc1       $f20,200($a3)
    sdc1       $f19,192($a3)
    sdc1       $f18,184($a3)
    sdc1       $f17,176($a3)
    sdc1       $f16,168($a3)
    sdc1       $f15,160($a3)
    sdc1       $f14,152($a3)
    sdc1       $f13,144($a3)
    sdc1       $f12,136($a3)
    sdc1       $f11,128($a3)
    sdc1       $f10,120($a3)
    sdc1       $f9,112($a3)
    sdc1       $f8,104($a3)
    sdc1       $f7,96($a3)
    sdc1       $f6,88($a3)
    sdc1       $f5,80($a3)
    sdc1       $f4,72($a3)
    sdc1       $f3,64($a3)
    sdc1       $f2,56($a3)
    sdc1       $f1,48($a3)
    sdc1       $f0,40($a3)
.L00018d5c:
    ld         $t0,-16360($zero)
    ld         $a3,992($t0)
    ld         $t0,792($t0)
    lb         $t0,156($t0)
    daddiu     $a3,$a3,0
    andi       $t0,$t0,0xc
    beqz       $t0, .L00018d80
    nop
    lui        $t0,0x400
.L00018d80:
    andi       $a2,$s0,0xffa0
    lui        $at,0x2000
    or         $a2,$a2,$at
    or         $a2,$a2,$t0
    mtc0       $a2,$12
    bnez       $t0, .L00018e24
    nop
    lwc1       $f0,44($a3)
    lwc1       $f1,52($a3)
    lwc1       $f2,60($a3)
    lwc1       $f3,68($a3)
    lwc1       $f4,76($a3)
    lwc1       $f5,84($a3)
    lwc1       $f6,92($a3)
    lwc1       $f7,100($a3)
    lwc1       $f8,108($a3)
    lwc1       $f9,116($a3)
    lwc1       $f10,124($a3)
    lwc1       $f11,132($a3)
    lwc1       $f12,140($a3)
    lwc1       $f13,148($a3)
    lwc1       $f14,156($a3)
    lwc1       $f15,164($a3)
    lwc1       $f16,172($a3)
    lwc1       $f17,180($a3)
    lwc1       $f18,188($a3)
    lwc1       $f19,196($a3)
    lwc1       $f20,204($a3)
    lwc1       $f21,212($a3)
    lwc1       $f22,220($a3)
    lwc1       $f23,228($a3)
    lwc1       $f24,236($a3)
    lwc1       $f25,244($a3)
    lwc1       $f26,252($a3)
    lwc1       $f27,260($a3)
    lwc1       $f28,268($a3)
    lwc1       $f29,276($a3)
    lwc1       $f30,284($a3)
    lwc1       $f31,292($a3)
    b          .L00018ea4
    nop
.L00018e24:
    ldc1       $f0,40($a3)
    ldc1       $f1,48($a3)
    ldc1       $f2,56($a3)
    ldc1       $f3,64($a3)
    ldc1       $f4,72($a3)
    ldc1       $f5,80($a3)
    ldc1       $f6,88($a3)
    ldc1       $f7,96($a3)
    ldc1       $f8,104($a3)
    ldc1       $f9,112($a3)
    ldc1       $f10,120($a3)
    ldc1       $f11,128($a3)
    ldc1       $f12,136($a3)
    ldc1       $f13,144($a3)
    ldc1       $f14,152($a3)
    ldc1       $f15,160($a3)
    ldc1       $f16,168($a3)
    ldc1       $f17,176($a3)
    ldc1       $f18,184($a3)
    ldc1       $f19,192($a3)
    ldc1       $f20,200($a3)
    ldc1       $f21,208($a3)
    ldc1       $f22,216($a3)
    ldc1       $f23,224($a3)
    ldc1       $f24,232($a3)
    ldc1       $f25,240($a3)
    ldc1       $f26,248($a3)
    ldc1       $f27,256($a3)
    ldc1       $f28,264($a3)
    ldc1       $f29,272($a3)
    ldc1       $f30,280($a3)
    ldc1       $f31,288($a3)
.L00018ea4:
    ctc1       $zero,c1_fcsr
    lw         $a2,304($a3)
    nop
    andi       $a1,$a2,0xf80
    ori        $a1,$a1,0x1000
    sll        $a1,$a1,0x5
    lui        $at,0x3
    ori        $at,$at,0xf000
    and        $a3,$a2,$at
    and        $a3,$a3,$a1
    xor        $a2,$a2,$a3
    ctc1       $a2,c1_fcsr
    ld         $a3,-16360($zero)
    nop
    sd         $a3,-15264($zero)
    andi       $a2,$s0,0xffa0
    mtc0       $a2,$12
    j          exception_exit
    move       $k1,$s5
.L00018ef0:
    j          exception_exit
    nop
.L00018ef8:
    j          VEC_trap
    li         $a1,140
.L00018f00:
    lui        $a1,0x0
    ld         $a2,288($k1)
    move       $a3,$k1
    daddiu     $a1,$a1,0
    li         $a0,0
    dsll       $a1,$a1,0x10
    daddiu     $a1,$a1,0
    dsll       $a1,$a1,0x10
    jal        cmn_err
    daddiu     $a1,$a1,15952

glabel hwperf_init
    ld         $a0,-31784($gp)
    daddiu     $sp,$sp,-48
    sd         $s2,0($sp)
    ld         $s2,-31776($gp)
    sd         $s3,16($sp)
    daddiu     $a0,$a0,8
    sd         $ra,8($sp)
    jal        spinlock_init
    move       $a1,$s2
    sw         $zero,-32476($gp)
    ld         $s3,-31768($gp)
    sd         $s1,24($sp)
    ld         $a2,-31784($gp)
    sd         $s0,32($sp)
    sw         $zero,16($a2)
    lw         $a1,0($gp)
    sh         $zero,14($a2)
    li         $a3,1
    sh         $a3,12($a2)
    move       $s0,$zero
    blez       $a1, .L00018fec
    sd         $zero,0($a2)
    b          .L00018fb8
    dsll32     $a0,$s0,0x10
.L00018f88:
    ld         $a0,8($s1)
.L00018f8c:
    move       $a1,$zero
    ld         $a0,1744($a0)
    daddiu     $a2,$s2,48
    move       $a3,$s0
    jal        init_mutex
    daddiu     $a0,$a0,32
    lw         $a1,0($gp)
.L00018fa8:
    addiu      $s0,$s0,1
    slt        $a1,$s0,$a1
    beqz       $a1, .L00018fec
    dsll32     $a0,$s0,0x10
.L00018fb8:
    jal        cpu_enabled
    dsra32     $a0,$a0,0x10
    beqz       $v0, .L00018fa8
    lw         $a1,0($gp)
    jal        .text
    nop
    dsll       $s1,$s0,0x4
    daddu      $s1,$s3,$s1
    ld         $a1,8($s1)
    bnez       $v0, .L00018f88
    sd         $v0,1744($a1)
    b          .L00019014
    move       $a0,$zero
.L00018fec:
    ld         $s3,16($sp)
    jal        .text
    ld         $s0,32($sp)
    beqz       $v0, .L00019024
    sd         $v0,0($gp)
    ld         $ra,8($sp)
.L00019004:
    ld         $s2,0($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00019014:
    jal        cmn_err
    daddiu     $a1,$s2,16
    b          .L00018f8c
    ld         $a0,8($s1)
.L00019024:
    move       $a0,$zero
    jal        cmn_err
    daddiu     $a1,$s2,16
    b          .L00019004
    ld         $ra,8($sp)

glabel hwperf_overflowed_intr
    lw         $a2,-15364($zero)
    li         $at,14
    sra        $a2,$a2,0x8
    daddiu     $sp,$sp,-16
    li         $v0,15
    beq        $a2, $at, .L00019078
    sd         $ra,0($sp)
    beq        $a2, $v0, .L00019078
    nop
    jal        r10k_perf_overflow_intr
    nop
    move       $a2,$v0
.L00019068:
    ld         $ra,0($sp)
    move       $v0,$a2
    jr         $ra
    daddiu     $sp,$sp,16
.L00019078:
    jal        r12k_perf_overflow_intr
    nop
    b          .L00019068
    move       $a2,$v0

glabel hwperf_enable_sys_counters
    move       $a4,$a3
    move       $v0,$a1
    move       $a1,$a0
    daddiu     $sp,$sp,-16
    ld         $a0,0($gp)
    move       $at,$a2
    move       $a2,$v0
    sd         $ra,0($sp)
    jal        hwperf_enable_counters
    ori        $a3,$at,0x8
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel hwperf_enable_counters
    daddiu     $sp,$sp,-128
    sd         $a4,16($sp)
    sd         $s3,32($sp)
    sd         $s2,24($sp)
    move       $s2,$a1
    move       $s3,$a2
    sd         $s1,56($sp)
    move       $s1,$a3
    sd         $s0,48($sp)
    move       $s0,$a0
    sd         $ra,40($sp)
    li         $a0,1
    jal        cap_able
    dsll32     $a0,$a0,0x5
    andi       $a0,$s1,0x8
    beqz       $a0, .L00019108
    sd         $s4,72($sp)
    beqz       $v0, .L000191a4
    nop
.L00019108:
    beqz       $s3, .L00019178
    nop
.L00019110:
    lw         $v0,192($s2)
    bltz       $v0, .L00019124
    slti       $a1,$v0,65
    bnez       $a1, .L00019148
    sd         $a0,64($sp)
.L00019124:
    li         $v0,22
.L00019128:
    ld         $s2,24($sp)
    ld         $s3,32($sp)
    ld         $ra,40($sp)
    ld         $s4,72($sp)
    ld         $s0,48($sp)
    ld         $s1,56($sp)
    jr         $ra
    daddiu     $sp,$sp,128
.L00019148:
    li         $a1,25
    daddiu     $s4,$s0,32
    jal        mutex_lock
    move       $a0,$s4
    lh         $a2,0($s0)
    andi       $a2,$a2,0x8
    beqz       $a2, .L00019184
    move       $a0,$s0
    jal        mutex_unlock
    move       $a0,$s4
    b          .L00019128
    li         $v0,16
.L00019178:
    ld         $s3,-31784($gp)
    b          .L00019110
    daddiu     $s3,$s3,24
.L00019184:
    jal        hwperf_get_access
    move       $a1,$s1
    beqz       $v0, .L000191ac
    sd         $v0,8($sp)
    jal        mutex_unlock
    move       $a0,$s4
    b          .L00019128
    ld         $v0,8($sp)
.L000191a4:
    b          .L00019128
    li         $v0,1
.L000191ac:
    move       $a0,$s0
    move       $a1,$s2
    jal        r1nk_perf_init_counters
    move       $a2,$s3
    li         $a7,129
    beqz       $v0, .L000191e0
    sd         $v0,0($sp)
    jal        hwperf_release_access
    move       $a0,$s0
    jal        mutex_unlock
    move       $a0,$s4
    b          .L00019128
    ld         $v0,0($sp)
.L000191e0:
    lw         $at,192($s2)
    li         $ra,-1
    sh         $ra,22($s0)
    sh         $at,12($s0)
    lw         $a0,0($s3)
    andi       $a1,$s1,0x10
    li         $a3,1
    beqz       $a0, .L00019258
    li         $v0,2
    sw         $a0,24($s0)
.L00019208:
    ld         $a0,64($sp)
    movz       $v0,$a3,$a0
    beqz       $a1, .L00019224
    sh         $v0,0($s0)
    li         $v0,130
    movz       $v0,$a7,$a0
    sh         $v0,0($s0)
.L00019224:
    move       $a0,$s0
    li         $a3,-17
    ori        $a2,$v0,0x8
    and        $a2,$a2,$a3
    jal        hwperf_initiate_startup
    sh         $a2,0($s0)
    ld         $s1,16($sp)
    jal        mutex_unlock
    move       $a0,$s4
    lw         $a4,24($s0)
    move       $v0,$zero
    b          .L00019128
    sw         $a4,0($s1)
.L00019258:
    lw         $a2,24($s0)
    bltz       $a2, .L0001926c
    addiu      $a0,$a2,1
.L00019264:
    b          .L00019208
    sw         $a0,24($s0)
.L0001926c:
    b          .L00019264
    li         $a0,1

glabel hwperf_disable_sys_counters
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        hwperf_disable_counters
    ld         $a0,0($gp)
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel hwperf_disable_counters
    daddiu     $sp,$sp,-48
    sd         $s2,24($sp)
    sd         $s3,32($sp)
    li         $a1,25
    sd         $s1,16($sp)
    move       $s1,$a0
    sd         $s4,8($sp)
    daddiu     $s4,$a0,32
    sd         $ra,0($sp)
    jal        mutex_lock
    move       $a0,$s4
    lh         $v0,0($s1)
    li         $s2,-9
    andi       $at,$v0,0xf
    sd         $s0,40($sp)
    move       $s0,$zero
    li         $v1,-137
    ld         $s3,-31768($gp)
    beqz       $at, .L000193a0
    and        $v0,$v0,$v1
    andi       $a0,$v0,0x2
    beqz       $a0, .L00019338
    sh         $v0,0($s1)
    lw         $a1,0($gp)
    blez       $a1, .L00019338
    nop
    dsll32     $a0,$s0,0x10
.L000192fc:
    jal        cpu_enabled
    dsra32     $a0,$a0,0x10
    beqz       $v0, .L00019324
    dsll       $a2,$s0,0x4
    daddu      $a2,$s3,$a2
    ld         $a2,8($a2)
    ld         $a2,1744($a2)
    lh         $a1,0($a2)
    and        $a1,$a1,$s2
    sh         $a1,0($a2)
.L00019324:
    lw         $a3,0($gp)
    addiu      $s0,$s0,1
    slt        $a3,$s0,$a3
    bnez       $a3, .L000192fc
    dsll32     $a0,$s0,0x10
.L00019338:
    jal        hwperf_read_counters
    move       $a0,$s1
    jal        hwperf_check_release
    move       $a0,$s1
    jal        hwperf_release_access
    move       $a0,$s1
    lh         $v0,0($s1)
    andi       $v1,$v0,0x40
    beqz       $v1, .L00019398
    ori        $v0,$v0,0x10
.L00019360:
    lw         $a0,24($s1)
    addiu      $a0,$a0,1
    sw         $a0,24($s1)
    jal        mutex_unlock
    move       $a0,$s4
    move       $v0,$zero
.L00019378:
    ld         $s2,24($sp)
    ld         $s3,32($sp)
    ld         $ra,0($sp)
    ld         $s4,8($sp)
    ld         $s0,40($sp)
    ld         $s1,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00019398:
    b          .L00019360
    sh         $v0,0($s1)
.L000193a0:
    jal        mutex_unlock
    move       $a0,$s4
    b          .L00019378
    move       $v0,$zero

glabel hwperf_parent_accumulates
    beqz       $a0, .L000193dc
    li         $a3,-1
    lh         $a3,0($a0)
    andi       $a4,$a3,0xf
    beqz       $a4, .L000193cc
    ori        $a3,$a3,0x20
    sh         $a3,0($a0)
.L000193cc:
    lw         $a5,24($a0)
    sw         $a5,0($a1)
.L000193d4:
    jr         $ra
    move       $v0,$zero
.L000193dc:
    b          .L000193d4
    sw         $a3,0($a1)

glabel hwperf_change_sys_control
    move       $a3,$a2
    daddiu     $sp,$sp,-16
    move       $v0,$a0
    ld         $a0,0($gp)
    move       $at,$a1
    move       $a1,$v0
    sd         $ra,0($sp)
    jal        hwperf_change_control
    move       $a2,$at
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel cpumon_alloc
    ld         $v0,1144($a0)
    daddiu     $sp,$sp,-80
    sd         $s4,8($sp)
    move       $s4,$a0
    beqz       $v0, .L00019438
    sd         $s5,16($sp)
.L0001942c:
    ld         $s4,8($sp)
    jr         $ra
    daddiu     $sp,$sp,80
.L00019438:
    sd         $s1,24($sp)
    sd         $s0,32($sp)
    sd         $s3,40($sp)
    sd         $ra,48($sp)
    sd         $s6,56($sp)
    ld         $s5,792($a0)
    sd         $s2,64($sp)
    sd         $s5,0($sp)
    b          .L00019474
    daddiu     $s5,$s5,148
.L00019460:
    sd         $s3,1144($s4)
    move       $s1,$zero
.L00019468:
    move       $s0,$s2
.L0001946c:
    beqz       $s0, .L000194e8
    move       $a0,$s5
.L00019474:
    move       $s0,$zero
    jal        .text
    move       $s2,$zero
    move       $s3,$v0
    beqz       $v0, .L00019474
    move       $s1,$v0
    move       $a0,$s5
    jal        mutex_bitlock
    li         $a1,1
    ld         $t8,1144($s4)
    ld         $t9,0($sp)
    bnez       $t8, .L0001946c
    move       $s6,$v0
    ld         $t9,168($t9)
    bnez       $t9, .L00019460
    ld         $ra,0($sp)
    lw         $at,4($s3)
    lh         $v0,0($s3)
    move       $a0,$s5
    ori        $at,$at,0x2
    sw         $at,4($s3)
    li         $a1,1
    ori        $v0,$v0,0x10
    sh         $v0,0($s3)
    sd         $s3,168($ra)
    jal        mutex_bitunlock
    move       $a2,$s6
    b          .L00019468
    li         $s2,1
.L000194e8:
    li         $a1,1
    jal        mutex_bitunlock
    move       $a2,$s6
    beqz       $s1, .L00019508
    ld         $s2,64($sp)
    jal        hwperf_cpu_monitor_info_free
    move       $a0,$s1
    ld         $s2,64($sp)
.L00019508:
    ld         $s6,56($sp)
    ld         $ra,48($sp)
    ld         $s3,40($sp)
    ld         $s0,32($sp)
    ld         $s1,24($sp)
    ld         $s5,16($sp)
    b          .L0001942c
    ld         $v0,1144($s4)

glabel hwperf_change_control
    daddiu     $sp,$sp,-48
    sd         $a0,0($sp)
    sd         $a1,8($sp)
    sd         $a2,16($sp)
    sd         $ra,32($sp)
    jal        hwperf_disable_counters
    sd         $a3,24($sp)
    beqz       $v0, .L00019558
    ld         $a0,0($sp)
.L0001954c:
    ld         $ra,32($sp)
.L00019550:
    jr         $ra
    daddiu     $sp,$sp,48
.L00019558:
    ld         $a1,8($sp)
    ld         $a3,16($sp)
    move       $a2,$zero
    jal        hwperf_enable_counters
    ld         $a4,24($sp)
    beqz       $v0, .L0001957c
    nop
    b          .L00019550
    ld         $ra,32($sp)
.L0001957c:
    b          .L0001954c
    move       $v0,$zero

glabel hwperf_sys_control_info
    move       $a3,$a2
    daddiu     $sp,$sp,-16
    move       $v0,$a0
    ld         $a0,0($gp)
    move       $at,$a1
    move       $a1,$v0
    sd         $ra,0($sp)
    jal        hwperf_control_info
    move       $a2,$at
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel hwperf_control_info
    daddiu     $sp,$sp,-48
    sd         $a3,0($sp)
    sd         $s1,32($sp)
    move       $s1,$a2
    sd         $s2,40($sp)
    move       $s2,$a1
    li         $a1,25
    sd         $s0,24($sp)
    move       $s0,$a0
    sd         $s3,8($sp)
    daddiu     $s3,$a0,32
    sd         $ra,16($sp)
    jal        mutex_lock
    move       $a0,$s3
    lh         $at,0($s0)
    andi       $at,$at,0xf
    beqz       $at, .L000196e4
    lui        $a2,0x8000
    lh         $v0,112($s0)
    blez       $v0, .L00019654
    move       $v0,$zero
    daddu      $a1,$v0,$v0
.L0001960c:
    daddu      $a0,$a1,$s0
    daddu      $a1,$a1,$s2
    lhu        $a0,114($a0)
    sh         $a0,0($a1)
    lh         $v1,112($s0)
    addiu      $v0,$v0,1
    slt        $v1,$v0,$v1
    beqz       $v1, .L00019654
    daddu      $a5,$v0,$v0
    daddu      $a4,$a5,$s0
    daddu      $a5,$a5,$s2
    lhu        $a4,114($a4)
    sh         $a4,0($a5)
    lh         $a3,112($s0)
    addiu      $v0,$v0,1
    slt        $a3,$v0,$a3
    bnez       $a3, .L0001960c
    daddu      $a1,$v0,$v0
.L00019654:
    beqz       $s1, .L000196b4
    ld         $t1,0($sp)
    lh         $a7,12($s0)
    sw         $a7,0($s1)
    lh         $a6,112($s0)
    blez       $a6, .L000196b0
    move       $v0,$zero
    b          .L000196f4
    dsll       $t0,$v0,0x2
.L00019678:
    subu       $a5,$a2,$a7
.L0001967c:
    sw         $a5,4($a6)
    lh         $t1,112($s0)
    slt        $t1,$v0,$t1
    daddu      $a6,$t0,$s1
    beqz       $t1, .L000196b0
    daddu      $a7,$t0,$s0
    lw         $a7,180($a7)
.L00019698:
    move       $a5,$zero
    addiu      $v0,$v0,1
    bnez       $a7, .L00019678
    dsll       $t0,$v0,0x2
    b          .L0001967c
    nop
.L000196b0:
    ld         $t1,0($sp)
.L000196b4:
    lw         $t0,24($s0)
    move       $a0,$s3
    jal        mutex_unlock
    sw         $t0,0($t1)
    move       $v0,$zero
.L000196c8:
    ld         $s3,8($sp)
    ld         $ra,16($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $s2,40($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L000196e4:
    jal        mutex_unlock
    move       $a0,$s3
    b          .L000196c8
    li         $v0,22
.L000196f4:
    daddu      $a7,$t0,$s0
    daddu      $a6,$t0,$s1
    b          .L00019698
    lw         $a7,180($a7)

glabel hwperf_get_cpu_counters
    daddiu     $sp,$sp,-32
    ld         $at,-31784($gp)
    sd         $a0,16($sp)
    lhu        $at,12($at)
    sd         $a1,0($sp)
    li         $v0,8
    sd         $a2,8($sp)
    li         $a5,22
    beq        $at, $v0, .L00019738
    sd         $ra,24($sp)
.L0001972c:
    move       $v0,$a5
    jr         $ra
    daddiu     $sp,$sp,32
.L00019738:
    ld         $a0,16($sp)
    dsll32     $a0,$a0,0x10
    jal        cpu_enabled
    dsra32     $a0,$a0,0x10
    beqz       $v0, .L00019768
    ld         $a5,-31768($gp)
    ld         $a0,16($sp)
    dsll       $a0,$a0,0x4
    daddu      $a0,$a5,$a0
    ld         $a0,8($a0)
    ld         $a0,1744($a0)
    bnez       $a0, .L00019774
.L00019768:
    ld         $ra,24($sp)
    b          .L0001972c
    li         $a5,22
.L00019774:
    ld         $a1,0($sp)
    jal        hwperf_get_counters
    ld         $a2,8($sp)
    ld         $ra,24($sp)
    b          .L0001972c
    move       $a5,$v0

glabel hwperf_get_sys_counters
    move       $at,$a0
    ld         $a0,0($gp)
    move       $a2,$a1
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        hwperf_get_counters
    move       $a1,$at
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel hwperf_get_counters
    daddiu     $sp,$sp,-48
    sd         $s0,8($sp)
    move       $s0,$a0
    daddiu     $a0,$a0,32
    sd         $a0,24($sp)
    sd         $s8,32($sp)
    move       $s8,$a2
    sd         $s1,0($sp)
    move       $s1,$a1
    sd         $ra,16($sp)
    jal        mutex_lock
    li         $a1,25
    jal        hwperf_read_counters
    move       $a0,$s0
    lh         $at,112($s0)
    move       $a3,$zero
    blez       $at, .L0001985c
    ld         $a0,24($sp)
    dsll       $a4,$a3,0x3
    dsll       $a5,$a3,0x2
    daddu      $a7,$a4,$s0
    daddu      $a4,$a4,$s1
    daddu      $a5,$s0,$a5
.L00019810:
    ld         $a7,440($a7)
    sd         $a7,0($a4)
    lw         $a6,180($a5)
    beqz       $a6, .L0001983c
    addiu      $a3,$a3,1
    lw         $t0,308($a5)
    subu       $t0,$t0,$a6
    dsll32     $t0,$t0,0x0
    dsrl32     $t0,$t0,0x0
    daddu      $t0,$t0,$a7
    sd         $t0,0($a4)
.L0001983c:
    lh         $t1,112($s0)
    dsll       $a4,$a3,0x3
    dsll       $a5,$a3,0x2
    slt        $t1,$a3,$t1
    daddu      $a5,$s0,$a5
    daddu      $a7,$a4,$s0
    bnez       $t1, .L00019810
    daddu      $a4,$a4,$s1
.L0001985c:
    ld         $s1,0($sp)
    lw         $t2,24($s0)
    jal        mutex_unlock
    sw         $t2,0($s8)
    ld         $ra,16($sp)
    move       $v0,$zero
    ld         $s0,8($sp)
    ld         $s8,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel hwperf_plus_counters
    daddiu     $sp,$sp,-48
    sd         $s2,8($sp)
    move       $s2,$a2
    sd         $s1,0($sp)
    move       $s1,$a1
    li         $a1,25
    sd         $s0,16($sp)
    move       $s0,$a0
    sd         $s8,32($sp)
    daddiu     $s8,$a0,32
    sd         $ra,24($sp)
    jal        mutex_lock
    move       $a0,$s8
    jal        hwperf_read_counters
    move       $a0,$s0
    lh         $at,112($s0)
    blez       $at, .L00019934
    move       $a4,$zero
    dsll       $a7,$a4,0x2
    dsll       $t1,$a4,0x3
    daddu      $a7,$a7,$s0
    daddu      $a5,$t1,$s1
    daddu      $a6,$t1,$s0
.L000198e0:
    lw         $t0,180($a7)
    addiu      $a4,$a4,1
    beqz       $t0, .L00019908
    ld         $a3,0($a5)
    lw         $t2,308($a7)
    subu       $t2,$t2,$t0
    dsll32     $t2,$t2,0x0
    dsrl32     $t2,$t2,0x0
    daddu      $a3,$t2,$a3
    sd         $a3,0($a5)
.L00019908:
    dsll       $t1,$a4,0x3
    ld         $t8,440($a6)
    daddu      $t8,$t8,$a3
    sd         $t8,0($a5)
    lh         $t3,112($s0)
    dsll       $a7,$a4,0x2
    slt        $t3,$a4,$t3
    daddu      $a6,$t1,$s0
    daddu      $a7,$a7,$s0
    bnez       $t3, .L000198e0
    daddu      $a5,$t1,$s1
.L00019934:
    lw         $a0,24($s0)
    lw         $t9,0($s2)
    slt        $t9,$t9,$a0
    beqz       $t9, .L0001994c
    ld         $s1,0($sp)
    sw         $a0,0($s2)
.L0001994c:
    ld         $s2,8($sp)
    ld         $s0,16($sp)
    jal        mutex_unlock
    move       $a0,$s8
    ld         $ra,24($sp)
    ld         $s8,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel hwperf_set_counters
    daddiu     $sp,$sp,-48
    sd         $s2,8($sp)
    move       $s2,$a2
    sd         $s1,0($sp)
    move       $s1,$a1
    li         $a1,25
    sd         $s0,16($sp)
    move       $s0,$a0
    sd         $s8,32($sp)
    daddiu     $s8,$a0,32
    sd         $ra,24($sp)
    jal        mutex_lock
    move       $a0,$s8
    lh         $at,112($s0)
    blez       $at, .L000199f8
    move       $a3,$zero
    dsll       $a0,$a3,0x3
.L000199b0:
    daddu      $v1,$a0,$s1
    daddu      $a0,$a0,$s0
    ld         $v1,0($v1)
    sd         $v1,440($a0)
    lh         $v0,112($s0)
    addiu      $a3,$a3,1
    slt        $v0,$a3,$v0
    beqz       $v0, .L000199f8
    dsll       $a4,$a3,0x3
    daddu      $a2,$a4,$s1
    daddu      $a4,$a4,$s0
    ld         $a2,0($a2)
    sd         $a2,440($a4)
    lh         $a1,112($s0)
    addiu      $a3,$a3,1
    slt        $a1,$a3,$a1
    bnez       $a1, .L000199b0
    dsll       $a0,$a3,0x3
.L000199f8:
    lw         $a0,24($s0)
    lw         $a5,0($s2)
    slt        $a5,$a5,$a0
    beqz       $a5, .L00019a10
    ld         $s1,0($sp)
    sw         $a0,0($s2)
.L00019a10:
    ld         $s2,8($sp)
    ld         $s0,16($sp)
    jal        mutex_unlock
    move       $a0,$s8
    ld         $ra,24($sp)
    ld         $s8,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48

glabel hwperf_setup_counters
    ld         $at,-31784($gp)
    lhu        $at,12($at)
    li         $v0,4
    daddiu     $sp,$sp,-16
    beq        $at, $v0, .L00019a70
    sd         $ra,0($sp)
    lw         $v1,24($a0)
    lh         $v0,0($a0)
    addiu      $v1,$v1,1
    sw         $v1,24($a0)
    li         $v1,-9
    ori        $v0,$v0,0x40
    and        $v0,$v0,$v1
    sh         $v0,0($a0)
.L00019a68:
    jr         $ra
    daddiu     $sp,$sp,16
.L00019a70:
    jal        r1nk_perf_start_counters
    sd         $a0,-14632($zero)
    b          .L00019a68
    ld         $ra,0($sp)

glabel hwperf_multiplex_events
    daddiu     $sp,$sp,-32
    sd         $s1,8($sp)
    sd         $ra,0($sp)
    jal        r1nk_perf_update_counters
    move       $s1,$a0
    jal        .text
    move       $a0,$s1
    sd         $s0,16($sp)
    move       $s0,$zero
    beqz       $v0, .L00019b30
    sd         $s2,24($sp)
    lh         $at,0($s1)
    andi       $at,$at,0x8
    beqz       $at, .L00019b34
    ld         $ra,0($sp)
    lh         $a0,48($s1)
    blez       $a0, .L00019b28
    nop
    b          .L00019afc
    daddu      $s2,$s0,$s0
.L00019ad0:
    move       $a0,$s1
    jal        .text
    move       $a1,$s0
    sh         $v0,96($s2)
    addiu      $s0,$s0,1
    lh         $a0,48($s1)
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $v0,$s0,$a0
    beqz       $v0, .L00019b28
    daddu      $s2,$s0,$s0
.L00019afc:
    daddu      $s2,$s1,$s2
    lh         $t8,88($s2)
    slti       $t8,$t8,2
    beqz       $t8, .L00019ad0
    nop
    addiu      $s0,$s0,1
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $t8,$s0,$a0
    bnez       $t8, .L00019afc
    daddu      $s2,$s0,$s0
.L00019b28:
    jal        r1nk_perf_start_counters
    move       $a0,$s1
.L00019b30:
    ld         $ra,0($sp)
.L00019b34:
    ld         $s2,24($sp)
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel hwperf_add_counters
    lh         $at,112($a0)
    blez       $at, .L00019bbc
    move       $a4,$zero
    dsll       $a6,$a4,0x2
    daddu      $a6,$a0,$a6
.L00019b5c:
    lw         $a7,180($a6)
    dsll       $t0,$a4,0x3
    addiu      $a4,$a4,1
    daddu      $t1,$t0,$a1
    daddu      $a3,$t0,$a0
    ld         $a3,440($a3)
    beqz       $a7, .L00019b90
    daddiu     $a5,$t1,440
    lw         $t2,308($a6)
    subu       $t2,$t2,$a7
    dsll32     $t2,$t2,0x0
    dsrl32     $t2,$t2,0x0
    daddu      $a3,$t2,$a3
.L00019b90:
    lld        $t8,0($a5)
    daddu      $t9,$t8,$a3
    move       $t8,$t9
    scd        $t9,0($a5)
    beqzl      $t9, .L00019b90
    nop
    lh         $t3,112($a0)
    slt        $t3,$a4,$t3
    dsll       $a6,$a4,0x2
    bnez       $t3, .L00019b5c
    daddu      $a6,$a0,$a6
.L00019bbc:
    jr         $ra
    nop

glabel hwperf_fork_counters
    daddiu     $sp,$sp,-48
    sd         $s0,16($sp)
    ld         $s0,1144($a0)
    sd         $a1,8($sp)
    sd         $ra,24($sp)
    beqz       $s0, .L00019c60
    sd         $s1,32($sp)
    li         $a1,25
    daddiu     $s1,$s0,32
    jal        mutex_lock
    move       $a0,$s1
    lh         $at,0($s0)
    andi       $at,$at,0xf
    beqz       $at, .L00019c74
    nop
    jal        cpumon_alloc
    ld         $a0,8($sp)
    move       $a1,$v0
    sd         $v0,0($sp)
    jal        hwperf_copy_cmp
    move       $a0,$s0
    ld         $v1,0($sp)
    lh         $v0,0($v1)
    li         $a0,-49
    li         $a1,-1
    sh         $a1,22($v1)
    and        $v0,$v0,$a0
    sh         $v0,0($v1)
    jal        mutex_unlock
    move       $a0,$s1
    ld         $a3,-31784($gp)
    daddiu     $a3,$a3,16
    li         $a4,1
.L00019c48:
    ll         $a2,0($a3)
    addu       $a5,$a2,$a4
    move       $a2,$a5
    sc         $a5,0($a3)
    beqzl      $a5, .L00019c48
    nop
.L00019c60:
    ld         $ra,24($sp)
.L00019c64:
    ld         $s0,16($sp)
    ld         $s1,32($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00019c74:
    jal        mutex_unlock
    move       $a0,$s1
    b          .L00019c64
    ld         $ra,24($sp)

glabel hwperf_intr
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        r1nk_perf_intr
    nop
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel hwperf_sys_counters
    daddiu     $sp,$sp,-32
    sd         $ra,16($sp)
    jal        splhi
    sd         $a0,0($sp)
    ld         $a0,-14632($zero)
    beqz       $a0, .L00019cec
    sd         $v0,8($sp)
    lh         $a1,0($a0)
    andi       $at,$a1,0x8
    beqz       $at, .L00019ce4
    li         $a2,-9
    ori        $v1,$a1,0x40
    lw         $v0,24($a0)
    and        $v1,$v1,$a2
    sh         $v1,0($a0)
    addiu      $v0,$v0,1
    sw         $v0,24($a0)
.L00019ce4:
    jal        r1nk_perf_update_counters
    nop
.L00019cec:
    ld         $a0,0($sp)
    ld         $a1,-14640($zero)
    sd         $a1,24($sp)
    jal        hwperf_copy_cmp
    sd         $a1,-14632($zero)
    ld         $a1,24($sp)
    lh         $a3,0($a1)
    li         $a4,-3
    move       $a0,$a1
    and        $a3,$a3,$a4
    ori        $a3,$a3,0x4
    jal        r1nk_perf_start_counters
    sh         $a3,0($a1)
    jal        splx
    ld         $a0,8($sp)
    ld         $ra,16($sp)
    lh         $t0,-15456($zero)
    li         $a7,1
    sllv       $a7,$a7,$t0
    daddiu     $a6,$gp,-32480
    nor        $a7,$a7,$zero
.L00019d40:
    ll         $a5,0($a6)
    and        $t0,$a5,$a7
    sc         $t0,0($a6)
    beqzl      $t0, .L00019d40
    nop
    jr         $ra
    daddiu     $sp,$sp,32

glabel hwperf_get_access
    daddiu     $sp,$sp,-32
    sd         $s0,16($sp)
    sd         $a0,0($sp)
    ld         $a0,-31784($gp)
    move       $s0,$a1
    sd         $ra,8($sp)
    daddiu     $a0,$a0,8
    jal        mutex_spinlock
    sd         $a0,24($sp)
    move       $a1,$v0
    li         $t0,1
    ld         $a7,-31784($gp)
    andi       $a2,$s0,0x8
    ld         $a0,24($sp)
    li         $a6,1
    li         $a5,2
    li         $t1,4
    beqz       $a2, .L00019dd8
    lhu        $a4,12($a7)
    beq        $a4, $a5, .L00019df0
    nop
    beq        $a4, $a6, .L00019e0c
    li         $a5,8
    li         $s0,16
.L00019dbc:
    jal        mutex_spinunlock
    nop
    ld         $ra,8($sp)
    move       $v0,$s0
    ld         $s0,16($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L00019dd8:
    beq        $a4, $t0, .L00019e24
    li         $t3,1
    beq        $t1, $a4, .L00019e20
    li         $s0,16
    b          .L00019dbc
    nop
.L00019df0:
    ld         $a4,0($sp)
    ld         $a3,0($a7)
    beq        $a3, $a4, .L00019e08
    li         $s0,16
    b          .L00019dbc
    nop
.L00019e08:
    li         $a5,8
.L00019e0c:
    sh         $a5,12($a7)
    ld         $a6,0($sp)
    move       $s0,$zero
    b          .L00019dbc
    sd         $a6,0($a7)
.L00019e20:
    li         $t3,1
.L00019e24:
    sh         $t1,12($a7)
    daddiu     $t2,$a7,16
.L00019e2c:
    ll         $t0,0($t2)
    addu       $s0,$t0,$t3
    move       $t0,$s0
    sc         $s0,0($t2)
    beqzl      $s0, .L00019e2c
    nop
    b          .L00019dbc
    move       $s0,$zero

glabel hwperf_check_release
    daddiu     $sp,$sp,-48
    lui        $v0,0x2fa
    ori        $v0,$v0,0xf080
    sd         $v0,8($sp)
    sw         $zero,0($sp)
    lh         $a2,0($a0)
    sd         $s0,32($sp)
    andi       $at,$a2,0x1
    sd         $s1,24($sp)
    move       $s1,$a0
    beqz       $at, .L00019eb0
    sd         $ra,40($sp)
    lh         $v1,22($a0)
    li         $s0,-1
    beq        $v1, $s0, .L00019ea0
    ld         $ra,40($sp)
    jal        nano_delay
    daddiu     $a0,$sp,0
    lh         $a0,22($s1)
    bne        $a0, $s0, .L00019f6c
    ld         $ra,40($sp)
.L00019ea0:
    ld         $s0,32($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L00019eb0:
    andi       $a1,$a2,0x2
    ld         $a4,-31776($gp)
    andi       $a3,$a2,0x3
    move       $s0,$zero
    beqz       $a1, .L00019f5c
    lw         $a0,0($gp)
    blez       $a0, .L00019ea0
    ld         $ra,40($sp)
    b          .L00019ef8
    sd         $zero,16($sp)
.L00019ed8:
    lh         $a2,22($s1)
    li         $a3,-1
    bne        $a2, $a3, .L00019f88
    ld         $a0,-31776($gp)
.L00019ee8:
    lw         $a4,0($gp)
.L00019eec:
    addiu      $s0,$s0,1
    slt        $a4,$s0,$a4
    beqz       $a4, .L00019f54
.L00019ef8:
    dsll32     $a0,$s0,0x10
    jal        cpu_enabled
    dsra32     $a0,$a0,0x10
    ld         $a0,-31768($gp)
    beqz       $v0, .L00019ee8
    li         $a3,-1
    dsll       $a1,$s0,0x4
    daddu      $a0,$a0,$a1
    ld         $a0,8($a0)
    ld         $a0,1744($a0)
    beqz       $a0, .L00019eec
    lw         $a4,0($gp)
    lh         $a2,22($a0)
    beq        $a2, $a3, .L00019eec
    lw         $a4,0($gp)
    ld         $a4,16($sp)
    bnez       $a4, .L00019ed8
    nop
    jal        nano_delay
    daddiu     $a0,$sp,0
    li         $a5,1
    b          .L00019ed8
    sd         $a5,16($sp)
.L00019f54:
    b          .L00019ea0
    ld         $ra,40($sp)
.L00019f5c:
    bnez       $a3, .L00019ea0
    ld         $ra,40($sp)
    b          .L00019fa0
    li         $a2,905
.L00019f6c:
    ld         $a0,-31776($gp)
    li         $a2,888
    daddiu     $a1,$a0,104
    jal        assfail
    daddiu     $a0,$a0,64
    b          .L00019ea0
    ld         $ra,40($sp)
.L00019f88:
    li         $a2,900
    daddiu     $a1,$a0,104
    jal        assfail
    daddiu     $a0,$a0,64
    b          .L00019eec
    lw         $a4,0($gp)
.L00019fa0:
    daddiu     $a1,$a4,104
    jal        assfail
    daddiu     $a0,$a4,120
    b          .L00019ea0
    ld         $ra,40($sp)

glabel hwperf_release_access
    daddiu     $sp,$sp,-32
    sd         $s1,8($sp)
    ld         $s1,-31784($gp)
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s8,24($sp)
    daddiu     $s8,$s1,8
    sd         $ra,16($sp)
    jal        mutex_spinlock
    move       $a0,$s8
    lh         $a5,0($s0)
    move       $a1,$v0
    li         $v1,-3
    andi       $at,$a5,0x2
    li         $a4,4
    li         $a6,1
    lw         $a0,16($s1)
    beqz       $at, .L0001a038
    move       $a2,$a6
    movz       $a4,$a2,$a0
    sh         $a4,12($s1)
    lh         $v0,0($s0)
    and        $v0,$v0,$v1
    sh         $v0,0($s0)
    sd         $zero,0($s1)
.L0001a018:
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jal        mutex_spinunlock
    move       $a0,$s8
    ld         $ra,16($sp)
    ld         $s8,24($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0001a038:
    andi       $a3,$a5,0x1
    daddiu     $v0,$s1,16
    li         $a7,-2
    beqz       $a3, .L0001a018
    li         $a0,-1
.L0001a04c:
    ll         $a4,0($v0)
    addu       $a5,$a4,$a0
    move       $a4,$a5
    sc         $a5,0($v0)
    beqzl      $a5, .L0001a04c
    nop
    beqz       $a4, .L0001a07c
    lhu        $t2,12($s1)
.L0001a06c:
    lh         $a6,0($s0)
    and        $a6,$a6,$a7
    b          .L0001a018
    sh         $a6,0($s0)
.L0001a07c:
    xori       $t1,$t2,0x4
    li         $t0,1
    sltiu      $t1,$t1,1
    movz       $t0,$t2,$t1
    b          .L0001a06c
    sh         $t0,12($s1)

glabel hwperf_find_cpu
    daddiu     $sp,$sp,-32
    sd         $s2,8($sp)
    ld         $s2,-31768($gp)
    lw         $at,0($gp)
    sd         $ra,24($sp)
    sd         $s1,0($sp)
    move       $s1,$a0
    blez       $at, .L0001a110
    sd         $s0,16($sp)
    b          .L0001a0d0
    move       $s0,$zero
.L0001a0c0:
    addiu      $s0,$s0,1
    slt        $v0,$s0,$a3
    beqz       $v0, .L0001a114
    li         $v0,-1
.L0001a0d0:
    dsll32     $a0,$s0,0x10
    jal        cpu_enabled
    dsra32     $a0,$a0,0x10
    beqz       $v0, .L0001a0c0
    lw         $a3,0($gp)
    dsll       $v0,$s0,0x4
    daddu      $v0,$s2,$v0
    ld         $v0,8($v0)
    ld         $v0,24($v0)
    beqz       $v0, .L0001a0c0
    nop
    ld         $v1,1144($v0)
    bne        $v1, $s1, .L0001a0c0
    nop
    b          .L0001a114
    move       $v0,$s0
.L0001a110:
    li         $v0,-1
.L0001a114:
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    ld         $s1,0($sp)
    ld         $s2,8($sp)
    jr         $ra
    daddiu     $sp,$sp,32

glabel hwperf_initiate_startup
    daddiu     $sp,$sp,-48
    sd         $s4,8($sp)
    ld         $s4,-31768($gp)
    lh         $at,0($a0)
    sd         $ra,24($sp)
    sd         $s2,16($sp)
    andi       $at,$at,0x2
    move       $s2,$a0
    sd         $s3,0($sp)
    li         $s3,1
    beqz       $at, .L0001a240
    sd         $s1,32($sp)
    lw         $v1,0($gp)
    sw         $zero,-32480($gp)
    blez       $v1, .L0001a1f4
    sd         $s0,40($sp)
    b          .L0001a18c
    move       $s0,$zero
.L0001a174:
    jal        hwperf_sys_counters
    move       $a0,$s2
    lw         $a0,0($gp)
.L0001a180:
    addiu      $s0,$s0,1
    slt        $a0,$s0,$a0
    beqz       $a0, .L0001a1f4
.L0001a18c:
    dsll32     $s1,$s0,0x10
    dsra32     $s1,$s1,0x10
    jal        cpu_enabled
    move       $a0,$s1
    beqz       $v0, .L0001a180
    lw         $a0,0($gp)
    daddiu     $ra,$gp,-32480
    dsll       $at,$s0,0x4
    daddu      $at,$s4,$at
    ld         $at,8($at)
    lh         $at,928($at)
    sllv       $at,$s3,$at
.L0001a1bc:
    ll         $t9,0($ra)
    or         $v0,$t9,$at
    sc         $v0,0($ra)
    beqzl      $v0, .L0001a1bc
    nop
    lh         $t8,-15456($zero)
    beq        $t8, $s0, .L0001a174
    move       $a0,$s1
    li         $a2,1
    ld         $a1,-31760($gp)
    jal        cpuaction
    move       $a3,$s2
    b          .L0001a180
    lw         $a0,0($gp)
.L0001a1f4:
    lw         $v0,-32480($gp)
    beqz       $v0, .L0001a224
    ld         $s0,40($sp)
.L0001a200:
    lw         $v1,-32480($gp)
    beqz       $v1, .L0001a224
    nop
    lw         $a0,-32480($gp)
    beqz       $a0, .L0001a224
    nop
    lw         $a1,-32480($gp)
    bnez       $a1, .L0001a200
    nop
.L0001a224:
    ld         $s3,0($sp)
.L0001a228:
    ld         $ra,24($sp)
    ld         $s4,8($sp)
    ld         $s1,32($sp)
    ld         $s2,16($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0001a240:
    jal        hwperf_find_cpu
    nop
    li         $a2,-1
    beq        $v0, $a2, .L0001a228
    ld         $s3,0($sp)
    lh         $a3,-15456($zero)
    bne        $a3, $v0, .L0001a270
    dsll32     $a0,$v0,0x10
    jal        hwperf_proc_counters
    nop
    b          .L0001a228
    ld         $s3,0($sp)
.L0001a270:
    li         $a2,1
    ld         $a1,-31752($gp)
    jal        cpuaction
    dsra32     $a0,$a0,0x10
    b          .L0001a228
    ld         $s3,0($sp)

glabel hwperf_proc_counters
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        splhi
    sd         $s8,8($sp)
    ld         $a3,-16360($zero)
    beqz       $a3, .L0001a2cc
    move       $s8,$v0
    ld         $a0,1144($a3)
    beqz       $a0, .L0001a2cc
    nop
    lh         $at,0($a0)
    andi       $at,$at,0x8
    beqz       $at, .L0001a2cc
    nop
    ld         $v0,-14632($zero)
    beqz       $v0, .L0001a2e4
    nop
.L0001a2cc:
    jal        splx
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L0001a2e4:
    jal        hwperf_setup_counters
    nop
    b          .L0001a2cc
    nop

glabel hwperf_update_counters
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        r1nk_perf_update_counters
    move       $a0,$zero
    lh         $a0,-15456($zero)
    li         $v1,1
    ld         $ra,0($sp)
    sllv       $v1,$v1,$a0
    daddiu     $v0,$gp,-32480
    nor        $v1,$v1,$zero
.L0001a31c:
    ll         $at,0($v0)
    and        $a0,$at,$v1
    sc         $a0,0($v0)
    beqzl      $a0, .L0001a31c
    nop
    jr         $ra
    daddiu     $sp,$sp,16

glabel hwperf_update_counters_async
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        r1nk_perf_update_counters
    move       $a0,$zero
    lh         $a0,-15456($zero)
    li         $v1,1
    ld         $ra,0($sp)
    sllv       $v1,$v1,$a0
    daddiu     $v0,$gp,-32476
    nor        $v1,$v1,$zero
.L0001a360:
    ll         $at,0($v0)
    and        $a0,$at,$v1
    sc         $a0,0($v0)
    beqzl      $a0, .L0001a360
    nop
    jr         $ra
    daddiu     $sp,$sp,16

glabel hwperf_read_counters
    daddiu     $sp,$sp,-48
    sd         $ra,24($sp)
    sd         $s3,16($sp)
    lh         $at,0($a0)
    sd         $s4,0($sp)
    sd         $s0,8($sp)
    andi       $at,$at,0x2
    move       $s0,$a0
    li         $s4,1
    sd         $s1,32($sp)
    move       $s1,$zero
    beqz       $at, .L0001a5b4
    sd         $s2,40($sp)
    lw         $a0,0($gp)
    blez       $a0, .L0001a448
    sw         $zero,-32480($gp)
    ld         $s3,-31768($gp)
    b          .L0001a3e4
    dsll32     $s2,$s1,0x10
.L0001a3c8:
    jal        hwperf_update_counters
    nop
    lw         $a0,0($gp)
.L0001a3d4:
    addiu      $s1,$s1,1
    slt        $v0,$s1,$a0
    beqz       $v0, .L0001a448
    dsll32     $s2,$s1,0x10
.L0001a3e4:
    dsra32     $s2,$s2,0x10
    jal        cpu_enabled
    move       $a0,$s2
    beqz       $v0, .L0001a3d4
    lw         $a0,0($gp)
    daddiu     $ra,$gp,-32480
    dsll       $at,$s1,0x4
    daddu      $at,$s3,$at
    ld         $at,8($at)
    lh         $at,928($at)
    sllv       $at,$s4,$at
.L0001a410:
    ll         $t9,0($ra)
    or         $v0,$t9,$at
    sc         $v0,0($ra)
    beqzl      $v0, .L0001a410
    nop
    lh         $t8,-15456($zero)
    beq        $t8, $s1, .L0001a3c8
    move       $a0,$s2
    li         $a2,1
    ld         $a1,-31744($gp)
    jal        cpuaction
    move       $a3,$zero
    b          .L0001a3d4
    lw         $a0,0($gp)
.L0001a448:
    lw         $v0,-32480($gp)
    ld         $s3,-31768($gp)
    beqz       $v0, .L0001a47c
    lh         $a1,112($s0)
.L0001a458:
    lw         $v1,-32480($gp)
    beqz       $v1, .L0001a47c
    nop
    lw         $a2,-32480($gp)
    beqz       $a2, .L0001a47c
    nop
    lw         $a3,-32480($gp)
    bnez       $a3, .L0001a458
    nop
.L0001a47c:
    blez       $a1, .L0001a4b8
    move       $a1,$zero
    dsll       $a7,$a1,0x3
.L0001a488:
    dsll       $a6,$a1,0x2
    daddu      $a7,$s0,$a7
    daddu      $a6,$s0,$a6
    sd         $zero,440($a7)
    lw         $a5,180($a6)
    sw         $a5,308($a6)
    lh         $a4,112($s0)
    addiu      $a1,$a1,1
    slt        $a4,$a1,$a4
    bnez       $a4, .L0001a488
    dsll       $a7,$a1,0x3
    lw         $a0,0($gp)
.L0001a4b8:
    blez       $a0, .L0001a594
    move       $s1,$zero
    b          .L0001a564
    dsll32     $s2,$s1,0x10
.L0001a4c8:
    dsll       $a4,$s1,0x4
    daddu      $a4,$s3,$a4
    ld         $a4,8($a4)
    ld         $a4,1744($a4)
.L0001a4d8:
    blez       $a0, .L0001a554
    lw         $t9,0($gp)
    move       $a1,$zero
    dsll       $a3,$a1,0x2
    daddu      $a0,$a3,$s0
    dsll       $t0,$a1,0x3
    daddu      $a7,$t0,$s0
    daddu      $t0,$a4,$t0
.L0001a4f8:
    ld         $t0,440($t0)
    ld         $a6,440($a7)
    daddu      $a6,$a6,$t0
    sd         $a6,440($a7)
    lw         $a5,180($a0)
    daddu      $a3,$a4,$a3
    addiu      $a1,$a1,1
    beqz       $a5, .L0001a534
    dsll       $t0,$a1,0x3
    lw         $t3,180($a3)
    lw         $t2,308($a3)
    lw         $t1,308($a0)
    subu       $t2,$t2,$t3
    addu       $t1,$t1,$t2
    sw         $t1,308($a0)
.L0001a534:
    daddu      $a7,$t0,$s0
    lh         $t8,112($s0)
    slt        $t8,$a1,$t8
    daddu      $t0,$a4,$t0
    dsll       $a3,$a1,0x2
    bnez       $t8, .L0001a4f8
    daddu      $a0,$a3,$s0
    lw         $t9,0($gp)
.L0001a554:
    addiu      $s1,$s1,1
    slt        $t9,$s1,$t9
    beqz       $t9, .L0001a594
    dsll32     $s2,$s1,0x10
.L0001a564:
    dsra32     $s2,$s2,0x10
    jal        cpu_enabled
    move       $a0,$s2
    beqz       $v0, .L0001a554
    lw         $t9,0($gp)
    jal        cpu_enabled
    move       $a0,$s2
    move       $a4,$zero
    bnez       $v0, .L0001a4c8
    lh         $a0,112($s0)
    b          .L0001a4d8
    nop
.L0001a594:
    ld         $s3,16($sp)
.L0001a598:
    ld         $s4,0($sp)
    ld         $ra,24($sp)
    ld         $s0,8($sp)
    ld         $s1,32($sp)
    ld         $s2,40($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0001a5b4:
    lh         $a0,22($a0)
    li         $t8,-1
    daddiu     $v1,$gp,-32476
    ld         $a4,-31768($gp)
    move       $at,$s4
    beq        $a0, $t8, .L0001a594
    dsll       $a1,$a0,0x4
    lh         $t9,-15456($zero)
    beq        $t9, $a0, .L0001a628
    daddu      $a3,$a4,$a1
    ld         $a1,8($a3)
    lh         $a1,928($a1)
    sllv       $a1,$at,$a1
.L0001a5e8:
    ll         $ra,0($v1)
    or         $a2,$ra,$a1
    sc         $a2,0($v1)
    beqzl      $a2, .L0001a5e8
    nop
    ld         $v0,8($a3)
    lh         $v0,928($v0)
    sllv       $at,$at,$v0
    and        $ra,$ra,$at
    bnez       $ra, .L0001a594
    li         $a2,1
    ld         $a1,-31736($gp)
    jal        cpuaction
    move       $a3,$zero
    b          .L0001a598
    ld         $s3,16($sp)
.L0001a628:
    jal        r1nk_perf_update_counters
    move       $a0,$zero
    b          .L0001a598
    ld         $s3,16($sp)

glabel hwperf_copy_cmp
    lh         $at,112($a1)
    blez       $at, .L0001a694
    move       $a3,$zero
    dsll       $a6,$a3,0x2
.L0001a648:
    daddu      $a5,$a6,$a0
    daddu      $a6,$a6,$a1
    lw         $a7,180($a5)
    sw         $a7,180($a6)
    dsll       $a4,$a3,0x3
    lw         $a5,180($a5)
    daddu      $a2,$a3,$a3
    daddu      $a4,$a1,$a4
    sw         $a5,308($a6)
    daddu      $v1,$a2,$a0
    sd         $zero,440($a4)
    daddu      $a2,$a2,$a1
    lhu        $v1,114($v1)
    sh         $v1,114($a2)
    lh         $v0,112($a1)
    addiu      $a3,$a3,1
    slt        $v0,$a3,$v0
    bnez       $v0, .L0001a648
    dsll       $a6,$a3,0x2
.L0001a694:
    lw         $t1,24($a0)
    lh         $t0,48($a1)
    sw         $t1,24($a1)
    lh         $a7,12($a0)
    move       $a3,$zero
    blez       $t0, .L0001a6e8
    sh         $a7,12($a1)
    daddu      $t8,$a3,$a3
.L0001a6b4:
    daddu      $t3,$t8,$a0
    daddu      $t8,$t8,$a1
    lh         $at,88($t3)
    sh         $at,88($t8)
    lh         $t9,96($t3)
    sh         $t9,96($t8)
    lh         $t3,104($t3)
    sh         $t3,104($t8)
    lh         $t2,48($a1)
    addiu      $a3,$a3,1
    slt        $t2,$a3,$t2
    bnez       $t2, .L0001a6b4
    daddu      $t8,$a3,$a3
.L0001a6e8:
    lh         $t9,0($a0)
    jr         $ra
    sh         $t9,0($a1)

glabel hwperf_arch_nosupport
    jr         $ra
    li         $v0,89

glabel hwperf_arch_fatal
    ld         $a1,-31776($gp)
    move       $a0,$zero
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    daddiu     $a1,$a1,168
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
    daddiu     $sp,$sp,-16
    li         $a0,696
    sd         $ra,0($sp)
    move       $a1,$zero
    jal        kmem_zalloc
    sd         $s0,8($sp)
    bnez       $v0, .L0001a748
    move       $s0,$v0
    b          .L0001a794
    move       $s0,$zero
.L0001a748:
    li         $v0,32
    sh         $v0,112($s0)
    li         $at,2
    jal        r1nk_perf_architecture
    sh         $at,48($s0)
    sw         $v0,8($s0)
    ld         $a2,-16360($zero)
    beqz       $a2, .L0001a7a8
    li         $v1,0xffff
    ld         $a3,752($a2)
    beqz       $a3, .L0001a7a8
    nop
    lw         $v0,664($a3)
.L0001a77c:
    sw         $v0,16($s0)
    lw         $a0,0($gp)
    sd         $v1,56($s0)
    dsll       $v1,$v1,0x10
    sd         $v1,64($s0)
    sh         $a0,20($s0)
.L0001a794:
    ld         $ra,0($sp)
    move       $v0,$s0
    ld         $s0,8($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L0001a7a8:
    b          .L0001a77c
    move       $v0,$zero

glabel hwperf_cpu_monitor_info_free
    daddiu     $sp,$sp,-16
    bnez       $a0, .L0001a7c4
    sd         $ra,0($sp)
.L0001a7bc:
    jr         $ra
    daddiu     $sp,$sp,16
.L0001a7c4:
    jal        kern_free
    nop
    b          .L0001a7bc
    ld         $ra,0($sp)
    lh         $a4,48($a0)
    blez       $a4, .L0001a804
    move       $v0,$zero
    daddu      $at,$v0,$v0
.L0001a7e4:
    daddu      $at,$a0,$at
    lh         $at,88($at)
    slti       $at,$at,2
    addiu      $v0,$v0,1
    beqz       $at, .L0001a810
    slt        $a3,$v0,$a4
    bnez       $a3, .L0001a7e4
    daddu      $at,$v0,$v0
.L0001a804:
    move       $v0,$zero
    jr         $ra
    nop
.L0001a810:
    jr         $ra
    li         $v0,1
    daddu      $a6,$a1,$a1
    daddu      $a6,$a0,$a6
    lh         $a4,104($a6)
    li         $a7,1
    dsll       $a5,$a1,0x3
    lh         $a6,96($a6)
    addiu      $a4,$a4,1
    daddu      $a5,$a0,$a5
    dsll32     $a4,$a4,0x10
    ld         $a5,56($a5)
    move       $v0,$a6
    dsra32     $a4,$a4,0x10
.L0001a848:
    addiu      $v0,$v0,1
    dsll32     $v0,$v0,0x10
    dsra32     $v0,$v0,0x10
    xor        $t1,$v0,$a4
    sltiu      $t1,$t1,1
    movn       $v0,$zero,$t1
    dsllv      $t0,$a7,$v0
    and        $t0,$a5,$t0
    daddu      $a3,$v0,$v0
    beqz       $t0, .L0001a880
    daddu      $a3,$a0,$a3
    lhu        $v1,114($a3)
    bnez       $v1, .L0001a888
    nop
.L0001a880:
    bne        $a6, $v0, .L0001a848
    nop
.L0001a888:
    jr         $ra
    nop

glabel r1nk_perf_intr
    daddiu     $sp,$sp,-64
    sd         $s1,24($sp)
    ld         $s1,-14632($zero)
    sd         $ra,40($sp)
    beqz       $s1, .L0001aa24
    sd         $s0,48($sp)
    lh         $a1,48($s1)
    slti       $at,$a1,4
    beqz       $at, .L0001aa38
    sd         $a0,16($sp)
.L0001a8b8:
    move       $s0,$zero
    blez       $a1, .L0001a8f4
    sd         $s2,32($sp)
    daddiu     $s2,$sp,0
.L0001a8c8:
    jal        r1nkperf_data_register_get
    move       $a0,$s0
    dsll       $v1,$s0,0x2
    addiu      $a1,$s0,1
    lh         $a0,48($s1)
    dsll32     $a1,$a1,0x10
    dsra32     $s0,$a1,0x10
    slt        $a0,$s0,$a0
    daddu      $v1,$s2,$v1
    bnez       $a0, .L0001a8c8
    sw         $v0,0($v1)
.L0001a8f4:
    daddiu     $s2,$sp,0
    jal        r1nk_perf_stop_counters
    move       $a0,$s1
    lh         $a2,48($s1)
    blez       $a2, .L0001aa08
    move       $s0,$zero
.L0001a90c:
    dsll       $a1,$s0,0x2
    daddu      $a1,$s2,$a1
    li         $a0,2
    jal        r1nkperf_data_register_set
    lw         $a1,0($a1)
    addiu      $s0,$s0,1
    lh         $a1,48($s1)
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $a2,$s0,$a1
    bnez       $a2, .L0001a90c
    nop
    blez       $a1, .L0001aa08
    move       $a2,$zero
    move       $s0,$zero
    lui        $a7,0x8000
    b          .L0001a994
    li         $t0,-1
.L0001a954:
    dsll32     $s0,$s0,0x10
    lw         $ra,180($a6)
    subu       $ra,$a5,$ra
    dsll32     $ra,$ra,0x0
    dsrl32     $ra,$ra,0x0
.L0001a968:
    lld        $t8,0($t9)
    daddu      $at,$t8,$ra
    move       $t8,$at
    scd        $at,0($t9)
    beqzl      $at, .L0001a968
    nop
    lh         $a1,48($s1)
    dsra32     $s0,$s0,0x10
    slt        $t8,$s0,$a1
    beqz       $t8, .L0001aa10
    ld         $a0,16($sp)
.L0001a994:
    daddu      $a4,$s0,$s0
.L0001a998:
    daddu      $a4,$s1,$a4
    lh         $a4,96($a4)
    beq        $a4, $t0, .L0001a9e8
    dsll       $a6,$a4,0x2
    daddu      $a6,$s1,$a6
    dsll       $a5,$s0,0x2
    lw         $a1,180($a6)
    addiu      $s0,$s0,1
    dsll       $t9,$a4,0x3
    daddu      $a5,$a5,$s2
    daddu      $t9,$s1,$t9
    daddiu     $t9,$t9,440
    beqz       $a1, .L0001a954
    lw         $a5,0($a5)
    sltu       $t1,$a5,$a7
    bnez       $t1, .L0001a954
    nop
    li         $a2,1
    b          .L0001a954
    sw         $a1,308($a6)
.L0001a9e8:
    addiu      $s0,$s0,1
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $t2,$s0,$a1
    bnez       $t2, .L0001a998
    daddu      $a4,$s0,$s0
    b          .L0001aa10
    ld         $a0,16($sp)
.L0001aa08:
    move       $a2,$zero
    ld         $a0,16($sp)
.L0001aa10:
    jal        r1nk_perf_intr_action
    move       $a1,$s1
    ld         $s2,32($sp)
    jal        r1nk_perf_start_counters
    move       $a0,$s1
.L0001aa24:
    ld         $ra,40($sp)
    ld         $s0,48($sp)
    ld         $s1,24($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L0001aa38:
    ld         $a0,-31728($gp)
    li         $a2,101
    jal        assfail
    daddiu     $a1,$a0,32
    b          .L0001a8b8
    lh         $a1,48($s1)

glabel r1nk_perf_intr_action
    lh         $a4,0($a1)
    move       $a5,$a0
    andi       $at,$a4,0x80
    li         $a6,3
    daddiu     $sp,$sp,-16
    sd         $ra,8($sp)
    beqz       $at, .L0001aab4
    andi       $a4,$a4,0x4
    beqz       $a4, .L0001aa94
    nop
    ld         $a3,248($a0)
    ld         $a2,240($a0)
    ld         $a1,224($a0)
    jal        prfintr
    ld         $a0,288($a0)
    b          .L0001aaac
    ld         $ra,8($sp)
.L0001aa94:
    ld         $a0,-16352($zero)
    beqz       $a0, .L0001aaac
    ld         $ra,8($sp)
    lbu        $a5,112($a0)
    beq        $a5, $a6, .L0001ab04
.L0001aaa8:
    ld         $ra,8($sp)
.L0001aaac:
    jr         $ra
    daddiu     $sp,$sp,16
.L0001aab4:
    beqz       $a2, .L0001aaac
    ld         $ra,8($sp)
    lh         $a4,12($a1)
    beqz       $a4, .L0001aaa8
    sd         $a0,0($sp)
    move       $a1,$a4
    ld         $a0,-16360($zero)
    jal        sigtouthread
    move       $a2,$zero
    ld         $a7,0($sp)
    ld         $a7,248($a7)
    li         $t0,16
    andi       $a7,$a7,0x18
    bne        $a7, $t0, .L0001aaac
    ld         $ra,8($sp)
    ld         $t1,-16360($zero)
    ld         $t1,992($t1)
    li         $t0,1
    b          .L0001aaa8
    sw         $t0,0($t1)
.L0001ab04:
    ld         $a0,-16360($zero)
    li         $a1,4
    jal        mutex_bitlock
    daddiu     $a0,$a0,132
    ld         $a3,-16360($zero)
    lw         $a1,816($a3)
    lui        $a4,0x40
    or         $a1,$a1,$a4
    sw         $a1,816($a3)
    ld         $a0,-16360($zero)
    move       $a2,$v0
    li         $a1,4
    jal        mutex_bitunlock
    daddiu     $a0,$a0,132
    ld         $a6,-16360($zero)
    ld         $a6,992($a6)
    li         $a5,1
    b          .L0001aaa8
    sw         $a5,0($a6)

glabel r1nk_perf_update_counters
    daddiu     $sp,$sp,-48
    sd         $ra,32($sp)
    sd         $s2,24($sp)
    sd         $s1,8($sp)
    move       $s1,$a0
    beqz       $a0, .L0001ac5c
    sd         $s3,16($sp)
    move       $s3,$zero
.L0001ab70:
    jal        r1nk_perf_check_architecture
    move       $a0,$s1
    lh         $v0,48($s1)
    blez       $v0, .L0001abf0
    sd         $s0,40($sp)
    b          .L0001abc4
    move       $s0,$zero
.L0001ab8c:
    jal        r1nkperf_data_register_get
    move       $a0,$s0
    dsll       $a0,$s2,0x2
    daddu      $a0,$s1,$a0
    lw         $at,180($a0)
    beqz       $at, .L0001ac28
    dsll       $ra,$s2,0x3
    sw         $v0,308($a0)
    addiu      $s0,$s0,1
.L0001abb0:
    lh         $v0,48($s1)
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $a1,$s0,$v0
    beqz       $a1, .L0001abf0
.L0001abc4:
    daddu      $s2,$s0,$s0
.L0001abc8:
    daddu      $s2,$s1,$s2
    lh         $s2,96($s2)
    bgez       $s2, .L0001ab8c
    nop
    addiu      $s0,$s0,1
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $t8,$s0,$v0
    bnez       $t8, .L0001abc8
    daddu      $s2,$s0,$s0
.L0001abf0:
    lh         $t8,0($s1)
    andi       $t8,$t8,0x8
    beqz       $t8, .L0001ac8c
    nop
.L0001ac00:
    beqz       $s3, .L0001ac10
    ld         $s0,40($sp)
    jal        splx
    lw         $a0,0($sp)
.L0001ac10:
    ld         $ra,32($sp)
.L0001ac14:
    ld         $s2,24($sp)
    ld         $s3,16($sp)
    ld         $s1,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0001ac28:
    daddu      $ra,$s1,$ra
    move       $a0,$s0
    daddiu     $ra,$ra,440
.L0001ac34:
    lld        $t9,0($ra)
    daddu      $at,$t9,$v0
    move       $t9,$at
    scd        $at,0($ra)
    beqzl      $at, .L0001ac34
    nop
    jal        r1nkperf_data_register_set
    move       $a1,$zero
    b          .L0001abb0
    addiu      $s0,$s0,1
.L0001ac5c:
    jal        splhi
    nop
    ld         $s1,-14632($zero)
    move       $a0,$v0
    beqz       $s1, .L0001acb4
    li         $s3,1
    lh         $at,0($s1)
    andi       $at,$at,0xf
    beqz       $at, .L0001acb4
    nop
    b          .L0001ab70
    sw         $v0,0($sp)
.L0001ac8c:
    jal        r1nk_perf_stop_counters
    move       $a0,$s1
    lh         $v0,0($s1)
    andi       $a0,$v0,0x4
    li         $v1,-5
    beqz       $a0, .L0001acac
    and        $v0,$v0,$v1
    sh         $v0,0($s1)
.L0001acac:
    b          .L0001ac00
    sd         $zero,-14632($zero)
.L0001acb4:
    jal        splx
    nop
    b          .L0001ac14
    ld         $ra,32($sp)

glabel r1nk_perf_start_counters
    daddiu     $sp,$sp,-48
    sd         $s1,32($sp)
    sd         $ra,40($sp)
    jal        getsr
    move       $s1,$a0
    jal        issplhi
    sll        $a0,$v0,0x0
    sd         $s2,24($sp)
    sd         $s0,16($sp)
    sd         $s4,8($sp)
    beqz       $v0, .L0001ae24
    sd         $s3,0($sp)
    lh         $at,0($s1)
.L0001acf8:
    andi       $at,$at,0x8
    beqz       $at, .L0001ae00
    ld         $s0,16($sp)
    jal        r1nk_perf_check_architecture
    move       $a0,$s1
    lh         $a0,48($s1)
    li         $s3,14
    li         $s4,15
    lh         $a2,-15456($zero)
    nop
    move       $s0,$zero
    blez       $a0, .L0001adfc
    sh         $a2,22($s1)
    b          .L0001ad7c
    daddu      $s2,$s0,$s0
.L0001ad34:
    lhu        $a1,114($a0)
.L0001ad38:
    jal        r1nkperf_control_register_set
    move       $a0,$s0
    dsll       $a0,$s2,0x2
    daddu      $a0,$s1,$a0
    lw         $a3,180($a0)
    beqz       $a3, .L0001ae1c
    move       $a1,$zero
    lw         $a1,308($a0)
.L0001ad58:
    jal        r1nkperf_data_register_set
    move       $a0,$s0
    addiu      $s0,$s0,1
    lh         $a0,48($s1)
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $a1,$s0,$a0
    beqz       $a1, .L0001adfc
    daddu      $s2,$s0,$s0
.L0001ad7c:
    daddu      $s2,$s1,$s2
    lh         $s2,96($s2)
    bltz       $s2, .L0001ade4
    nop
    lw         $a1,-15364($zero)
    sra        $a1,$a1,0x8
    daddu      $a3,$s2,$s2
    beq        $a1, $s3, .L0001ada4
    daddu      $a0,$s1,$a3
    bne        $a1, $s4, .L0001ad34
.L0001ada4:
    li         $a2,1
    bne        $s0, $a2, .L0001ad34
    daddu      $a3,$s2,$s2
    daddu      $a3,$s1,$a3
    lhu        $a3,114($a3)
    srl        $a2,$a3,0x5
    lui        $a1,0xffff
    addiu      $a2,$a2,16
    ori        $a1,$a1,0x1f
    andi       $a2,$a2,0x7ff
    and        $a1,$a1,$a3
    sll        $a2,$a2,0x5
    or         $a1,$a1,$a2
    dsll32     $a1,$a1,0x10
    b          .L0001ad38
    dsra32     $a1,$a1,0x10
.L0001ade4:
    addiu      $s0,$s0,1
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $a4,$s0,$a0
    bnez       $a4, .L0001ad7c
    daddu      $s2,$s0,$s0
.L0001adfc:
    ld         $s0,16($sp)
.L0001ae00:
    ld         $s1,32($sp)
    ld         $ra,40($sp)
    ld         $s2,24($sp)
    ld         $s3,0($sp)
    ld         $s4,8($sp)
    jr         $ra
    daddiu     $sp,$sp,48
.L0001ae1c:
    b          .L0001ad58
    nop
.L0001ae24:
    ld         $a0,-31728($gp)
    li         $a2,281
    daddiu     $a1,$a0,32
    jal        assfail
    daddiu     $a0,$a0,56
    b          .L0001acf8
    lh         $at,0($s1)

glabel r1nk_perf_stop_counters
    daddiu     $sp,$sp,-32
    sd         $s1,0($sp)
    sd         $ra,8($sp)
    jal        getsr
    move       $s1,$a0
    jal        issplhi
    sll        $a0,$v0,0x0
    beqz       $v0, .L0001aec0
    ld         $a0,-31728($gp)
.L0001ae64:
    jal        r1nk_perf_check_architecture
    move       $a0,$s1
    lh         $at,48($s1)
    li         $v0,-1
    sh         $v0,22($s1)
    blez       $at, .L0001aeac
    sd         $s0,16($sp)
    move       $s0,$zero
    move       $a0,$s0
.L0001ae88:
    jal        r1nkperf_control_register_set
    move       $a1,$zero
    addiu      $s0,$s0,1
    lh         $v1,48($s1)
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $v1,$s0,$v1
    bnez       $v1, .L0001ae88
    move       $a0,$s0
.L0001aeac:
    ld         $ra,8($sp)
    ld         $s0,16($sp)
    ld         $s1,0($sp)
    jr         $ra
    daddiu     $sp,$sp,32
.L0001aec0:
    li         $a2,350
    daddiu     $a1,$a0,32
    jal        assfail
    daddiu     $a0,$a0,56
    b          .L0001ae64
    nop

glabel r1nk_perf_init_counters
    daddiu     $sp,$sp,-64
    sd         $s1,24($sp)
    move       $s1,$a1
    sd         $s2,0($sp)
    move       $s2,$a2
    sd         $s0,8($sp)
    move       $s0,$a0
    sd         $ra,16($sp)
    li         $a0,1
    jal        cap_able
    dsll32     $a0,$a0,0x5
    lh         $a1,48($s0)
    li         $t3,-1
    move       $a4,$zero
    sd         $s3,32($sp)
    lui        $s3,0x8000
    move       $a7,$zero
    sd         $s4,40($sp)
    li         $s4,-5
    blez       $a1, .L0001af80
    sd         $s5,48($sp)
    daddu      $a5,$a4,$a4
.L0001af30:
    daddu      $a5,$s0,$a5
    sh         $zero,88($a5)
    addiu      $a4,$a4,1
    sh         $t3,96($a5)
    dsll32     $a4,$a4,0x10
    lh         $a2,48($s0)
    dsra32     $a4,$a4,0x10
    slt        $a2,$a4,$a2
    beqz       $a2, .L0001af80
    daddu      $a5,$a4,$a4
    daddu      $a5,$s0,$a5
    sh         $zero,88($a5)
    addiu      $a4,$a4,1
    sh         $t3,96($a5)
    dsll32     $a4,$a4,0x10
    lh         $a6,48($s0)
    dsra32     $a4,$a4,0x10
    slt        $a6,$a4,$a6
    bnez       $a6, .L0001af30
    daddu      $a5,$a4,$a4
.L0001af80:
    lh         $a6,112($s0)
    li         $t3,-1
    blez       $a6, .L0001b0fc
    li         $s5,1
    b          .L0001b114
    dsll       $a6,$a7,0x2
.L0001af98:
    dsra32     $a7,$a1,0x10
    lh         $t0,112($s0)
    daddu      $t9,$a7,$a7
    dsll       $a6,$a7,0x2
    addiu      $a2,$a7,1
    slt        $t0,$a7,$t0
    dsll32     $a1,$a2,0x10
    daddu      $t1,$a6,$s0
    beqz       $t0, .L0001b0fc
    daddu      $t8,$t9,$s1
    dsll       $t2,$a7,0x3
.L0001afc4:
    lh         $a5,0($t8)
    and        $a5,$a5,$s4
    dsll32     $a5,$a5,0x10
    daddu      $t9,$t9,$s0
    dsra32     $a5,$a5,0x10
    sh         $a5,0($t8)
    dsllv      $t0,$s5,$a7
    sh         $zero,114($t9)
    daddu      $at,$t2,$s0
    daddu      $t2,$t2,$s2
    sw         $zero,180($t1)
    ld         $t2,8($t2)
    andi       $t8,$a5,0xa
    sra        $ra,$a5,0x5
    sd         $t2,440($at)
    beqz       $a5, .L0001af98
    andi       $t2,$ra,0xf
    andi       $at,$a5,0x2
    daddu      $a4,$a6,$s1
    beqz       $at, .L0001b01c
    lw         $a4,64($a4)
    beqz       $v0, .L0001b104
.L0001b01c:
    slti       $a6,$t2,16
    bltz       $t2, .L0001b0d4
    nop
    beqz       $a6, .L0001b0d4
    nop
    beqz       $t8, .L0001b0d4
    nop
    bltz       $a4, .L0001b0d4
    nop
    beqz       $a4, .L0001b0cc
    sh         $a5,114($t9)
    subu       $a5,$s3,$a4
    sw         $a5,180($t1)
.L0001b050:
    sw         $a5,308($t1)
    lh         $a6,48($s0)
    move       $a4,$zero
    addiu      $t1,$a4,1
    dsll       $a3,$a4,0x3
    blez       $a6, .L0001af98
    daddu      $a3,$s0,$a3
    b          .L0001b10c
    dsll32     $t2,$t1,0x10
.L0001b074:
    lh         $v1,88($a5)
    sh         $a7,104($a5)
    addiu      $v1,$v1,1
    sh         $v1,88($a5)
    lh         $a6,48($s0)
.L0001b088:
    slt        $a0,$a4,$a6
    dsll       $a3,$a4,0x3
    beqz       $a0, .L0001af98
    daddu      $a3,$s0,$a3
    ld         $a3,56($a3)
.L0001b09c:
    daddu      $a5,$a4,$a4
    and        $a3,$a3,$t0
    daddu      $a5,$s0,$a5
    dsra32     $a4,$t2,0x10
    addiu      $t1,$a4,1
    beqz       $a3, .L0001b088
    dsll32     $t2,$t1,0x10
    lh         $a6,96($a5)
    bne        $a6, $t3, .L0001b074
    nop
    b          .L0001b074
    sh         $a7,96($a5)
.L0001b0cc:
    b          .L0001b050
    lw         $a5,180($t1)
.L0001b0d4:
    li         $v0,22
.L0001b0d8:
    ld         $s3,32($sp)
    ld         $s2,0($sp)
    ld         $s4,40($sp)
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    ld         $s5,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L0001b0fc:
    b          .L0001b0d8
    move       $v0,$zero
.L0001b104:
    b          .L0001b0d8
    li         $v0,1
.L0001b10c:
    b          .L0001b09c
    ld         $a3,56($a3)
.L0001b114:
    daddu      $t9,$a7,$a7
    addiu      $a2,$a7,1
    daddu      $t8,$t9,$s1
    dsll32     $a1,$a2,0x10
    daddu      $t1,$a6,$s0
    b          .L0001afc4
    dsll       $t2,$a7,0x3

glabel r1nk_perf_architecture
    lw         $a3,-15364($zero)
    daddiu     $sp,$sp,-16
    li         $a4,9
    li         $a5,2
    srl        $v0,$a3,0x8
    li         $at,14
    andi       $v0,$v0,0xff
    li         $a2,15
    srl        $a7,$a3,0x4
    beq        $v0, $at, .L0001b180
    andi       $a6,$a7,0xf
    beq        $v0, $a2, .L0001b180
    nop
    bne        $v0, $a4, .L0001b188
    sd         $ra,0($sp)
    li         $v0,1
    sltiu      $v1,$a6,3
    movz       $v0,$a5,$v1
.L0001b178:
    jr         $ra
    daddiu     $sp,$sp,16
.L0001b180:
    b          .L0001b178
    li         $v0,4
.L0001b188:
    ld         $a1,-31728($gp)
    move       $a0,$zero
    lh         $a2,-15456($zero)
    jal        cmn_err
    daddiu     $a1,$a1,72
    b          .L0001b178
    ld         $ra,0($sp)

glabel r1nk_perf_check_architecture
    daddiu     $sp,$sp,-16
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        r1nk_perf_architecture
    move       $s0,$a0
    lw         $at,8($s0)
    beq        $at, $v0, .L0001b200
    lw         $a0,0($gp)
    lh         $a2,20($s0)
    beqz       $a2, .L0001b204
    ld         $ra,8($sp)
    lw         $v0,4($s0)
    andi       $v0,$v0,0x1
    bnez       $v0, .L0001b204
    ld         $ra,8($sp)
    bnez       $a0, .L0001b210
    ld         $a1,-31728($gp)
.L0001b1e8:
    lw         $a0,16($s0)
    jal        signal
    move       $a1,$a2
    lw         $v1,4($s0)
    ori        $v1,$v1,0x1
    sw         $v1,4($s0)
.L0001b200:
    ld         $ra,8($sp)
.L0001b204:
    ld         $s0,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16
.L0001b210:
    li         $a0,5
    lw         $a3,16($s0)
    jal        cmn_err
    daddiu     $a1,$a1,136
    b          .L0001b1e8
    lh         $a2,20($s0)

glabel mul64
    dmultu     $a0,$a1
    mflo       $v0
    sd         $v0,0($a2)
    mfhi       $v0
    jr         $ra
    nop

glabel madd
    daddiu     $sp,$sp,-160
    sd         $a6,144($sp)
    sd         $a3,120($sp)
    sw         $a2,116($sp)
    sw         $a1,108($sp)
    sd         $s0,40($sp)
    daddiu     $t1,$gp,0
    sd         $s2,32($sp)
    dsll       $s2,$a0,0x2
    sd         $s1,48($sp)
    daddu      $t1,$s2,$t1
    move       $t3,$a1
    lw         $t1,0($t1)
    move       $t2,$a2
    move       $s1,$a0
    sd         $s4,56($sp)
    move       $s4,$a7
    move       $s0,$a5
    sd         $s3,24($sp)
    move       $s3,$a4
    bne        $t1, $a2, .L0001b2fc
    sd         $ra,72($sp)
    bne        $t1, $a5, .L0001b338
    lw         $a2,164($sp)
    bne        $t1, $a2, .L0001b708
    xor        $a3,$a4,$a1
    beq        $a3, $a7, .L0001b6c8
    daddiu     $a3,$gp,0
    ld         $t8,-16360($zero)
    lui        $t9,0x1
    lw         $t3,1340($t8)
    ori        $t9,$t9,0x40
    or         $t3,$t3,$t9
    sw         $t3,1340($t8)
    ld         $t2,-16360($zero)
    lw         $t2,1340($t2)
    andi       $t2,$t2,0x800
    beqz       $t2, .L0001b674
    ld         $a1,-31720($gp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0001b4c8
    ld         $s3,24($sp)
.L0001b2fc:
    bne        $t1, $a5, .L0001b338
    nop
    xor        $a3,$a6,$a3
    xor        $a6,$a6,$a3
    sd         $a6,144($sp)
    xor        $a3,$a6,$a3
    xor        $t2,$a5,$a2
    sd         $a3,120($sp)
    xor        $s0,$a5,$t2
    xor        $t3,$a4,$a1
    xor        $t2,$s0,$t2
    sw         $t2,116($sp)
    xor        $s3,$t3,$a4
    xor        $t3,$t3,$s3
    sw         $t3,108($sp)
.L0001b338:
    bne        $t1, $t2, .L0001b39c
    lw         $a2,164($sp)
    bne        $t1, $a2, .L0001b4e4
    nop
    beqz       $s0, .L0001b694
    xor        $a4,$s3,$t3
.L0001b350:
    beq        $s4, $a4, .L0001b74c
    daddiu     $a3,$gp,0
    ld         $a7,-16360($zero)
.L0001b35c:
    lui        $t0,0x1
    lw         $a6,1340($a7)
    ori        $t0,$t0,0x40
    or         $a6,$a6,$t0
    sw         $a6,1340($a7)
    ld         $a5,-16360($zero)
    lw         $a5,1340($a5)
    andi       $a5,$a5,0x800
    beqz       $a5, .L0001b6a4
    ld         $a1,-31720($gp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0001b4c8
    ld         $s3,24($sp)
.L0001b39c:
    beqz       $t2, .L0001b584
    nop
.L0001b3a4:
    beqz       $s0, .L0001b594
    sd         $s5,80($sp)
.L0001b3ac:
    beqz       $t2, .L0001b610
    dsll       $s5,$s1,0x3
    daddiu     $a1,$gp,0
    ld         $a0,-31704($gp)
    ld         $a2,-31712($gp)
    daddu      $t3,$s2,$a1
    lw         $t3,0($t3)
    daddu      $t1,$s5,$a0
    ld         $t1,0($t1)
    subu       $t2,$t2,$t3
    sw         $t2,116($sp)
    or         $t1,$t1,$a3
    beqz       $s0, .L0001b648
    sd         $t1,120($sp)
.L0001b3e4:
    daddu      $a6,$s5,$a0
    ld         $a6,0($a6)
    ld         $a7,144($sp)
    daddu      $t8,$s2,$a1
    lw         $t8,0($t8)
    or         $a6,$a6,$a7
    sd         $a6,144($sp)
    subu       $s0,$s0,$t8
.L0001b404:
    beqz       $s1, .L0001b5fc
    ld         $a3,120($sp)
.L0001b40c:
    daddiu     $a2,$sp,16
    move       $a1,$a6
    lw         $a7,108($sp)
    move       $a0,$a3
    addu       $s2,$s0,$t2
    xor        $a7,$a7,$s3
    jal        mul64
    sd         $a7,64($sp)
    ld         $s0,64($sp)
    daddiu     $a0,$sp,8
    jal        renorm_d
    sd         $v0,8($sp)
    ld         $a4,16($sp)
    li         $t0,11
    li         $a5,64
    dsllv      $a3,$a4,$v0
    subu       $a5,$a5,$v0
    ld         $a2,8($sp)
    sd         $a3,16($sp)
    dsrlv      $a4,$a4,$a5
    or         $a2,$a2,$a4
    bne        $v0, $t0, .L0001b46c
    sd         $a2,8($sp)
    addiu      $s2,$s2,1
.L0001b46c:
    ld         $a6,-31696($gp)
    daddu      $a6,$s5,$a6
    ld         $a6,0($a6)
    move       $a0,$s0
    jalr       $a6
    move       $a1,$s2
    daddiu     $a4,$sp,120
    daddiu     $a3,$sp,116
    ld         $s5,80($sp)
    daddiu     $a2,$sp,108
    daddiu     $a1,$sp,0
    move       $a0,$s1
    jal        breakout_sd
    sd         $v0,0($sp)
    ld         $a6,168($sp)
    lw         $a5,164($sp)
    ld         $a3,120($sp)
    move       $a0,$s1
    lw         $a2,116($sp)
    move       $a4,$s4
    jal        add
    lw         $a1,108($sp)
    ld         $s3,24($sp)
.L0001b4c8:
    ld         $s2,32($sp)
    ld         $ra,72($sp)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    ld         $s4,56($sp)
    jr         $ra
    daddiu     $sp,$sp,160
.L0001b4e4:
    bnez       $s0, .L0001b53c
    xor        $a1,$s3,$t3
    bnez       $a6, .L0001b53c
    xor        $a1,$s3,$t3
    ld         $t1,-16360($zero)
    lui        $t2,0x1
    lw         $t0,1340($t1)
    ori        $t2,$t2,0x40
    or         $t0,$t0,$t2
    sw         $t0,1340($t1)
    ld         $a7,-16360($zero)
    lw         $a7,1340($a7)
    andi       $a7,$a7,0x800
    beqz       $a7, .L0001b790
    ld         $a1,-31720($gp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0001b4c8
    ld         $s3,24($sp)
    xor        $a1,$s3,$t3
.L0001b53c:
    daddiu     $a2,$gp,0
    daddiu     $a3,$gp,0
    daddu      $a2,$s2,$a2
    dsll32     $a1,$a1,0x0
    daddu      $a3,$s2,$a3
    lw         $a2,0($a2)
    dsrl32     $a1,$a1,0x0
    lw         $a3,0($a3)
    dsllv      $a2,$t2,$a2
    move       $a0,$s1
    dsllv      $a1,$a1,$a3
    or         $a1,$a1,$a2
    jal        fpstore_sd
    sd         $a1,0($sp)
    jal        store_fpcsr
    nop
    b          .L0001b4c8
    ld         $s3,24($sp)
.L0001b584:
    bnez       $a3, .L0001b3a4
    nop
    b          .L0001b5a0
    lw         $a2,164($sp)
.L0001b594:
    bnez       $a6, .L0001b3ac
    sd         $s5,80($sp)
    lw         $a2,164($sp)
.L0001b5a0:
    bnez       $a2, .L0001b7b4
    ld         $a3,168($sp)
    bnez       $a3, .L0001b7b8
    daddiu     $a4,$gp,0
    ld         $a3,-16360($zero)
    lbu        $a3,1352($a3)
    daddiu     $a2,$gp,0
    li         $a4,3
    daddu      $a2,$s2,$a2
    xor        $a0,$s3,$t3
    beq        $a3, $a4, .L0001b800
    lw         $a2,0($a2)
    and        $a1,$a0,$s4
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    dsllv      $a1,$a1,$a2
    sd         $a1,0($sp)
.L0001b5e4:
    jal        fpstore_sd
    move       $a0,$s1
    jal        store_fpcsr
    nop
    b          .L0001b4c8
    ld         $s3,24($sp)
.L0001b5fc:
    dsll       $a6,$a6,0x1d
    sd         $a6,144($sp)
    dsll       $a3,$a3,0x1d
    b          .L0001b40c
    sd         $a3,120($sp)
.L0001b610:
    ld         $a2,-31712($gp)
    daddu      $a2,$s5,$a2
    ld         $a2,0($a2)
    jalr       $a2
    daddiu     $a0,$sp,120
    daddiu     $t2,$gp,0
    ld         $a2,-31712($gp)
    daddu      $t2,$s2,$t2
    lw         $t2,0($t2)
    ld         $a0,-31704($gp)
    daddiu     $a1,$gp,0
    subu       $t2,$t2,$v0
    bnez       $s0, .L0001b3e4
    sw         $t2,116($sp)
.L0001b648:
    daddu      $t3,$s5,$a2
    ld         $t3,0($t3)
    jalr       $t3
    daddiu     $a0,$sp,144
    daddiu     $s0,$gp,0
    daddu      $s0,$s2,$s0
    lw         $s0,0($s0)
    lw         $t2,116($sp)
    ld         $a6,144($sp)
    b          .L0001b404
    subu       $s0,$s0,$v0
.L0001b674:
    dsll       $a2,$s1,0x3
    daddu      $a1,$a1,$a2
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0001b4c8
    ld         $s3,24($sp)
.L0001b694:
    bnez       $a6, .L0001b350
    xor        $a4,$s3,$t3
    b          .L0001b35c
    ld         $a7,-16360($zero)
.L0001b6a4:
    dsll       $a2,$s1,0x3
    daddu      $a1,$a1,$a2
    move       $a0,$s1
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0001b4c8
    ld         $s3,24($sp)
.L0001b6c8:
    daddiu     $a4,$gp,0
    daddu      $a3,$s2,$a3
    dsll32     $a1,$a7,0x0
    daddu      $a4,$s2,$a4
    lw         $a3,0($a3)
    dsrl32     $a1,$a1,0x0
    lw         $a4,0($a4)
    dsllv      $a2,$a2,$a3
    dsllv      $a1,$a1,$a4
    or         $a1,$a1,$a2
    jal        fpstore_sd
    sd         $a1,0($sp)
    jal        store_fpcsr
    nop
    b          .L0001b4c8
    ld         $s3,24($sp)
.L0001b708:
    daddiu     $a2,$gp,0
    daddiu     $a4,$gp,0
    daddu      $a2,$s2,$a2
    dsll32     $a1,$a3,0x0
    daddu      $a4,$s2,$a4
    lw         $a2,0($a2)
    dsrl32     $a1,$a1,0x0
    lw         $a3,0($a4)
    dsllv      $a2,$t2,$a2
    dsllv      $a1,$a1,$a3
    or         $a1,$a1,$a2
    jal        fpstore_sd
    sd         $a1,0($sp)
    jal        store_fpcsr
    nop
    b          .L0001b4c8
    ld         $s3,24($sp)
.L0001b74c:
    daddiu     $a4,$gp,0
    daddu      $a3,$s2,$a3
    dsll32     $a1,$s4,0x0
    daddu      $a4,$s2,$a4
    lw         $a3,0($a3)
    dsrl32     $a1,$a1,0x0
    lw         $a4,0($a4)
    dsllv      $a2,$a2,$a3
    move       $a0,$s1
    dsllv      $a1,$a1,$a4
    or         $a1,$a1,$a2
    jal        fpstore_sd
    sd         $a1,0($sp)
    jal        store_fpcsr
    nop
    b          .L0001b4c8
    ld         $s3,24($sp)
.L0001b790:
    dsll       $a2,$s1,0x3
    daddu      $a1,$a1,$a2
    move       $a0,$s1
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0001b4c8
    ld         $s3,24($sp)
.L0001b7b4:
    daddiu     $a4,$gp,0
.L0001b7b8:
    daddiu     $a5,$gp,0
    daddu      $a4,$s2,$a4
    dsll32     $a1,$s4,0x0
    daddu      $a5,$s2,$a5
    lw         $a4,0($a4)
    dsrl32     $a1,$a1,0x0
    lw         $a5,0($a5)
    dsllv      $a2,$a2,$a4
    dsllv      $a1,$a1,$a5
    move       $a0,$s1
    or         $a1,$a1,$a2
    or         $a1,$a1,$a3
    jal        fpstore_sd
    sd         $a1,0($sp)
    jal        store_fpcsr
    nop
    b          .L0001b4c8
    ld         $s3,24($sp)
.L0001b800:
    or         $a1,$a0,$s4
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    dsllv      $a1,$a1,$a2
    b          .L0001b5e4
    sd         $a1,0($sp)

glabel add
    daddiu     $sp,$sp,-144
    sd         $a6,128($sp)
    sd         $a3,104($sp)
    sd         $s6,64($sp)
    sd         $s0,40($sp)
    sd         $s2,24($sp)
    daddiu     $v0,$gp,0
    sd         $s4,32($sp)
    dsll       $s4,$a0,0x2
    sd         $s5,56($sp)
    daddu      $v0,$s4,$v0
    lw         $v0,0($v0)
    move       $s5,$a0
    move       $s2,$a1
    sd         $s1,48($sp)
    move       $s1,$a2
    move       $s0,$a5
    sd         $s3,16($sp)
    move       $s3,$a4
    bne        $v0, $a2, .L0001b8c0
    sd         $ra,72($sp)
    bne        $v0, $a5, .L0001bc3c
    nop
    beq        $a1, $a4, .L0001bbd4
    daddiu     $a1,$gp,0
    ld         $a1,-16360($zero)
    lui        $a2,0x1
    lw         $a0,1340($a1)
    ori        $a2,$a2,0x40
    or         $a0,$a0,$a2
    sw         $a0,1340($a1)
    ld         $v1,-16360($zero)
    lw         $v1,1340($v1)
    andi       $v1,$v1,0x800
    beqz       $v1, .L0001bbb0
    ld         $a1,-31688($gp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0001ba18
    ld         $s6,64($sp)
.L0001b8c0:
    beq        $v0, $a5, .L0001bc7c
    nop
    beqz       $a2, .L0001bb08
    nop
.L0001b8d0:
    beqz       $s0, .L0001bb64
    nop
.L0001b8d8:
    beq        $s2, $s3, .L0001ba3c
    nop
    bne        $s1, $s0, .L0001ba3c
    nop
    bne        $a6, $a3, .L0001ba3c
    nop
    ld         $v1,-16360($zero)
    lbu        $v1,1352($v1)
    li         $a0,3
    daddiu     $v0,$gp,0
    daddu      $v0,$s4,$v0
    beq        $v1, $a0, .L0001bd18
    lw         $v0,0($v0)
    and        $a1,$s2,$s3
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    dsllv      $a1,$a1,$v0
.L0001b91c:
    jal        fpstore_sd
    move       $a0,$s5
    jal        store_fpcsr
    nop
    b          .L0001ba18
    ld         $s6,64($sp)
    move       $a0,$a6
.L0001b938:
    move       $a2,$a3
    subu       $v0,$s0,$s1
    sd         $a3,0($sp)
    move       $s5,$s3
    move       $s4,$s0
.L0001b94c:
    move       $a3,$zero
    beqz       $v0, .L0001baf8
    sd         $zero,8($sp)
    li         $a3,64
    subu       $a3,$a3,$v0
    dsllv      $a3,$a2,$a3
    dsrlv      $a2,$a2,$v0
    sd         $a2,0($sp)
    beq        $s2, $s3, .L0001b990
    sd         $a3,8($sp)
    nor        $a5,$a3,$zero
.L0001b978:
    sltiu      $a4,$a3,1
    daddiu     $a3,$a5,1
    sd         $a3,8($sp)
    nor        $a2,$a2,$zero
    daddu      $a2,$a4,$a2
    sd         $a2,0($sp)
.L0001b990:
    daddu      $a2,$a0,$a2
    beqz       $a2, .L0001bc24
    sd         $a2,0($sp)
.L0001b99c:
    li         $a6,-1
    dsll32     $a6,$a6,0x15
    and        $a6,$a2,$a6
    beqz       $a6, .L0001b9c8
    dsrl       $t1,$a2,0xb
    dsrl       $a7,$a3,0xb
    sd         $t1,0($sp)
    dsll32     $t0,$a2,0x15
    addiu      $s4,$s4,11
    or         $a7,$a7,$t0
    sd         $a7,8($sp)
.L0001b9c8:
    jal        renorm_d
    daddiu     $a0,$sp,0
    ld         $a2,0($sp)
    beqz       $v0, .L0001b9fc
    ld         $a3,8($sp)
    li         $t2,64
    subu       $t2,$t2,$v0
    dsrlv      $t2,$a3,$t2
    dsllv      $a3,$a3,$v0
    sd         $a3,8($sp)
    subu       $s4,$s4,$v0
    or         $a2,$a2,$t2
    sd         $a2,0($sp)
.L0001b9fc:
    ld         $t3,-31664($gp)
    daddu      $t3,$s6,$t3
    ld         $t3,0($t3)
    move       $a0,$s5
    jalr       $t3
    move       $a1,$s4
    ld         $s6,64($sp)
.L0001ba18:
    ld         $s3,16($sp)
    ld         $s2,24($sp)
    ld         $s4,32($sp)
    ld         $ra,72($sp)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    ld         $s5,56($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L0001ba3c:
    beqz       $s1, .L0001bcbc
    dsll       $s6,$s5,0x3
    daddiu     $a0,$gp,0
    ld         $a1,-31672($gp)
    daddu      $t9,$s4,$a0
    lw         $t9,0($t9)
    daddu      $t8,$s6,$a1
    ld         $t8,0($t8)
    subu       $s1,$s1,$t9
    or         $t8,$t8,$a3
    beqz       $s0, .L0001bcec
    sd         $t8,104($sp)
.L0001ba6c:
    daddu      $a6,$s6,$a1
    ld         $a6,0($a6)
    ld         $a7,128($sp)
    daddu      $ra,$s4,$a0
    lw         $ra,0($ra)
    or         $a6,$a6,$a7
    sd         $a6,128($sp)
    subu       $s0,$s0,$ra
.L0001ba8c:
    beqz       $s5, .L0001bc10
    ld         $a3,104($sp)
.L0001ba94:
    addiu      $v0,$s1,-55
    slt        $a7,$s0,$v0
    beqz       $a7, .L0001baa8
    nop
    move       $s0,$v0
.L0001baa8:
    addiu      $v0,$s0,-55
    slt        $t0,$s1,$v0
    beqz       $t0, .L0001bac0
    slt        $t1,$s0,$s1
    move       $s1,$v0
    slt        $t1,$s0,$s1
.L0001bac0:
    bnez       $t1, .L0001bae0
    move       $a0,$a3
    bne        $s1, $s0, .L0001b938
    move       $a0,$a6
    sltu       $t2,$a3,$a6
    bnez       $t2, .L0001b938
    move       $a0,$a6
    move       $a0,$a3
.L0001bae0:
    move       $a2,$a6
    subu       $v0,$s1,$s0
    move       $s5,$s2
    sd         $a6,0($sp)
    b          .L0001b94c
    move       $s4,$s1
.L0001baf8:
    beq        $s2, $s3, .L0001b990
    nop
    b          .L0001b978
    nor        $a5,$a3,$zero
.L0001bb08:
    bnez       $a3, .L0001b8d0
    nop
    bnez       $a5, .L0001bd30
    daddiu     $a3,$gp,0
    bnez       $a6, .L0001bd30
    daddiu     $a3,$gp,0
    ld         $v1,-16360($zero)
    lbu        $v1,1352($v1)
    daddiu     $v0,$gp,0
    li         $a0,3
    daddu      $v0,$s4,$v0
    beq        $v1, $a0, .L0001bd74
    lw         $v0,0($v0)
    and        $a1,$a1,$a4
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    dsllv      $a1,$a1,$v0
.L0001bb4c:
    jal        fpstore_sd
    move       $a0,$s5
    jal        store_fpcsr
    nop
    b          .L0001ba18
    ld         $s6,64($sp)
.L0001bb64:
    bnez       $a6, .L0001b8d8
    daddiu     $a4,$gp,0
    daddiu     $a1,$gp,0
    daddu      $a4,$s4,$a4
    dsll32     $a2,$s2,0x0
    daddu      $a1,$s4,$a1
    lw         $a4,0($a4)
    dsrl32     $a2,$a2,0x0
    lw         $a1,0($a1)
    dsllv      $a2,$a2,$a4
    dsllv      $a1,$s1,$a1
    move       $a0,$s5
    or         $a1,$a1,$a2
    jal        fpstore_sd
    or         $a1,$a3,$a1
    jal        store_fpcsr
    nop
    b          .L0001ba18
    ld         $s6,64($sp)
.L0001bbb0:
    dsll       $a2,$s5,0x3
    daddu      $a1,$a1,$a2
    move       $a0,$s5
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0001ba18
    ld         $s6,64($sp)
.L0001bbd4:
    daddu      $a1,$s4,$a1
    lw         $a1,0($a1)
    daddiu     $a3,$gp,0
    daddu      $a3,$s4,$a3
    dsllv      $a1,$a2,$a1
    lw         $a3,0($a3)
    dsll32     $a2,$s2,0x0
    dsrl32     $a2,$a2,0x0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    or         $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001ba18
    ld         $s6,64($sp)
.L0001bc10:
    dsll       $a6,$a6,0x1d
    sd         $a6,128($sp)
    dsll       $a3,$a3,0x1d
    b          .L0001ba94
    sd         $a3,104($sp)
.L0001bc24:
    addiu      $s4,$s4,-64
    sd         $zero,8($sp)
    move       $a2,$a3
    sd         $a3,0($sp)
    b          .L0001b99c
    move       $a3,$zero
.L0001bc3c:
    daddiu     $a1,$gp,0
    daddu      $a1,$s4,$a1
    lw         $a1,0($a1)
    daddiu     $a3,$gp,0
    daddu      $a3,$s4,$a3
    dsllv      $a1,$a2,$a1
    lw         $a3,0($a3)
    dsll32     $a2,$s2,0x0
    dsrl32     $a2,$a2,0x0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    or         $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001ba18
    ld         $s6,64($sp)
.L0001bc7c:
    daddiu     $a3,$gp,0
    daddiu     $a1,$gp,0
    daddu      $a3,$s4,$a3
    dsll32     $a2,$a4,0x0
    daddu      $a1,$s4,$a1
    lw         $a3,0($a3)
    dsrl32     $a2,$a2,0x0
    lw         $a1,0($a1)
    dsllv      $a2,$a2,$a3
    dsllv      $a1,$a5,$a1
    jal        fpstore_sd
    or         $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001ba18
    ld         $s6,64($sp)
.L0001bcbc:
    ld         $a2,-31680($gp)
    daddu      $a2,$s6,$a2
    ld         $a2,0($a2)
    jalr       $a2
    daddiu     $a0,$sp,104
    daddiu     $s1,$gp,0
    daddu      $s1,$s4,$s1
    lw         $s1,0($s1)
    daddiu     $a0,$gp,0
    ld         $a1,-31672($gp)
    bnez       $s0, .L0001ba6c
    subu       $s1,$s1,$v0
.L0001bcec:
    ld         $t8,-31680($gp)
    daddu      $t8,$s6,$t8
    ld         $t8,0($t8)
    jalr       $t8
    daddiu     $a0,$sp,128
    daddiu     $s0,$gp,0
    daddu      $s0,$s4,$s0
    lw         $s0,0($s0)
    ld         $a6,128($sp)
    b          .L0001ba8c
    subu       $s0,$s0,$v0
.L0001bd18:
    or         $a1,$s2,$s3
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    b          .L0001b91c
    dsllv      $a1,$a1,$v0
    daddiu     $a3,$gp,0
.L0001bd30:
    daddiu     $a1,$gp,0
    daddu      $a3,$s4,$a3
    dsll32     $a2,$s3,0x0
    daddu      $a1,$s4,$a1
    lw         $a3,0($a3)
    dsrl32     $a2,$a2,0x0
    lw         $a1,0($a1)
    dsllv      $a2,$a2,$a3
    dsllv      $a1,$s0,$a1
    move       $a0,$s5
    or         $a1,$a1,$a2
    jal        fpstore_sd
    or         $a1,$a6,$a1
    jal        store_fpcsr
    nop
    b          .L0001ba18
    ld         $s6,64($sp)
.L0001bd74:
    or         $a1,$a1,$a4
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    b          .L0001bb4c
    dsllv      $a1,$a1,$v0

glabel VEC_tlbmod
    ld         $a2,272($k1)
    andi       $k0,$s0,0xffa0
    ori        $k0,$k0,0x1
    mtc0       $k0,$12
    jal        tlbmod
    move       $s1,$a0
    bnez       $v0, .L0001bdc0
    nop
    andi       $s2,$s0,0xffa0
    mtc0       $s2,$12
    j          exception_exit
    move       $k1,$s1
.L0001bdc0:
    move       $a0,$s1
    move       $a1,$v0
    j          soft_trap
    ld         $a3,280($a0)

glabel readadapters
    jr         $ra
    move       $v0,$zero

glabel pio_mapalloc
    jr         $ra
    move       $v0,$zero

glabel pio_mapaddr
    jr         $ra
    move       $v0,$zero

glabel pio_mapfree
    jr         $ra
    nop

glabel VEC_ibe
    ld         $ra,280($k1)
    ld         $a2,288($k1)
    bgez       $ra, .L0001be04
    nop
    daddiu     $a2,$a2,4
.L0001be04:
    lui        $t0,0xaff5
    sd         $a2,272($k1)
    lui        $t1,0xaff1
    ld         $t0,0($t0)
    dsll       $t2,$t0,0x3
    daddiu     $t3,$t0,8
    daddu      $t1,$t1,$t2
    li         $t2,1
    dsllv      $t2,$t2,$t3
    ld         $t3,0($t1)
    ori        $t2,$t2,0x1000
    dsll32     $t2,$t2,0x13
    nor        $t2,$t2,$zero
    and        $t3,$t3,$t2
    sd         $t3,0($t1)
    lui        $at,0xaff5
    ld         $zero,0($at)
    lui        $at,0xb800
    ld         $zero,0($at)
    sync
    lh         $t0,-15456($zero)
    j          VEC_trap
    sd         $t0,320($a0)

glabel btool_size
    jr         $ra
    move       $v0,$zero

glabel btool_getinfo
    jr         $ra
    li         $v0,22

glabel btool_reinit
    jr         $ra
    nop

glabel other_prda
    lw         $v0,-32472($gp)
    lw         $at,2048($a0)
    beq        $at, $v0, .L0001be94
    li         $a2,-1
    sw         $a2,2048($a0)
.L0001be94:
    jr         $ra
    nop

glabel otherprda
    lw         $a2,-32472($gp)
    daddiu     $sp,$sp,-80
    beqz       $a0, .L0001beb8
    sd         $ra,72($sp)
    sw         $a2,2048($a0)
.L0001beb0:
    jr         $ra
    daddiu     $sp,$sp,80
.L0001beb8:
    daddiu     $a0,$sp,0
    daddiu     $a1,$sp,64
    jal        get_host_id
    move       $a2,$zero
    lw         $v1,-32472($gp)
    lw         $at,64($sp)
    sltiu      $v0,$v0,1
    ld         $ra,72($sp)
    movz       $at,$v1,$v0
    b          .L0001beb0
    sw         $at,-32472($gp)
