.section .text
.set noat
.set noreorder


glabel odsy_tport_lock_init
    li         $at,1
    sw         $at,0($gp)
    daddiu     $sp,$sp,-16
    sd         $ra,0($sp)
    jal        wbflush
    sw         $zero,0($gp)
    ld         $a1,-30720($gp)
    jal        spinlock_init
    daddiu     $a0,$gp,0
    ld         $ra,0($sp)
    jr         $ra
    daddiu     $sp,$sp,16

glabel ODSY_SET_GC
    lui        $t9,0x1
    li         $v1,2
    ld         $v0,-30720($gp)
    li         $at,12
    xor        $v1,$a4,$v1
    lui        $t3,0x11
    sltiu      $v1,$v1,1
    daddu      $t3,$a0,$t3
    movz       $at,$a5,$v1
    sw         $at,11112($v0)
    move       $t8,$t9
    ori        $t9,$t9,0x443
    sw         $t9,0($t3)
    sync
    li         $at,250
    sw         $at,0($t3)
    ori        $t8,$t8,0x46
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    lui        $a5,0x1
    sync
    ori        $a5,$a5,0x19
    sw         $a5,0($t3)
    sync
    sw         $t9,0($t3)
    li         $v0,150
    sync
    sw         $v0,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t9,0($t3)
    sync
    sw         $at,0($t3)
    sync
    sw         $t8,0($t3)
    lui        $a0,0x1
    sync
    sw         $t8,0($t3)
    ori        $a0,$a0,0x424
    sync
    sw         $a0,0($t3)
    sync
    ld         $v1,-30720($gp)
    lw         $v1,11112($v1)
    sw         $v1,0($t3)
    sync
    sw         $t9,0($t3)
    sync
    sw         $v0,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t9,0($t3)
    sync
    sw         $at,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    ld         $t2,-30720($gp)
    daddiu     $sp,$sp,-80
    li         $a5,2
    beqz       $a6, .L00000980
    lw         $t1,132($t2)
    ori        $t1,$t1,0x10
    ori        $t1,$t1,0x8
    sw         $t1,132($t2)
.L0000017c:
    lui        $t0,0xff
    beq        $a4, $a5, .L00000730
    lui        $at,0x10
    beqz       $a4, .L00000734
    lw         $v1,84($sp)
    beqz       $a6, .L000009a4
    sd         $at,0($sp)
    beqz       $a7, .L00000240
    lw         $a6,84($sp)
    srl        $at,$a6,0x4
    li         $v1,512
    lui        $a5,0x2
    andi       $a0,$a6,0xff
    andi       $v0,$a6,0xf0
    sll        $a0,$a0,0x10
    or         $a5,$t1,$a5
    sll        $v0,$v0,0x8
    or         $v0,$v0,$a0
    srl        $a7,$a6,0xc
    andi       $at,$at,0xff0
    andi       $a7,$a7,0xf
    sw         $v1,188($t2)
    or         $at,$at,$a7
    srl        $a7,$a6,0x8
    sw         $a5,132($t2)
    and        $a6,$t0,$a6
    andi       $a7,$a7,0xf000
    or         $at,$at,$v0
    sw         $at,192($t2)
    or         $a6,$a6,$a7
    lui        $a5,0x1
    ori        $a6,$a6,0xfff
    sw         $a6,196($t2)
    ori        $a5,$a5,0xc21
    sw         $a5,0($t3)
    sync
    ld         $a0,-30720($gp)
    lw         $a0,188($a0)
    sw         $a0,0($t3)
    sync
    ld         $v1,-30720($gp)
    lw         $v1,192($v1)
    sw         $v1,0($t3)
    sync
    ld         $v0,-30720($gp)
    lw         $v0,196($v0)
    sw         $v0,0($t3)
    sync
    ld         $t2,-30720($gp)
.L00000240:
    lw         $t1,132($t2)
    ld         $v0,0($sp)
.L00000248:
    lui        $at,0x1
    or         $v0,$t1,$v0
    sw         $v0,132($t2)
    ori        $at,$at,0x404
    sw         $at,0($t3)
    sync
    ld         $a7,-30720($gp)
    lw         $a7,132($a7)
    sw         $a7,0($t3)
    sync
    ld         $a5,-30720($gp)
    sw         $zero,9828($a5)
    li         $a6,2
    sw         $a6,9832($a5)
    lw         $v1,9828($a5)
    lw         $a5,9828($a5)
    lui        $a0,0x2200
    srl        $a5,$a5,0xa
    andi       $v1,$v1,0x3ff
    sll        $a5,$a5,0x17
    ori        $a0,$a0,0x8000
    or         $v1,$v1,$a5
    or         $v1,$v1,$a0
    sw         $v1,0($t3)
    sync
    ld         $v0,-30720($gp)
    srl        $at,$a1,0x8
    lw         $a0,9832($v0)
    srl        $a7,$a1,0x10
    lw         $v0,9832($v0)
    srl        $a6,$a3,0x4
    lui        $a5,0x2300
    srl        $v0,$v0,0xa
    andi       $a0,$a0,0x3ff
    sll        $v0,$v0,0x17
    ori        $a5,$a5,0x8000
    or         $a0,$a0,$v0
    lui        $v1,0xc580
    or         $a0,$a0,$a5
    sw         $a0,0($t3)
    ori        $v1,$v1,0xcc08
    sync
    sw         $v1,0($t3)
    andi       $v0,$a1,0xff
    sync
    sw         $v0,0($t3)
    andi       $at,$at,0xff
    sync
    sw         $at,0($t3)
    andi       $a7,$a7,0xff
    sync
    sw         $a7,0($t3)
    andi       $a6,$a6,0xff0
    sync
    ld         $a5,-30720($gp)
    and        $a0,$t0,$a3
    andi       $a7,$a3,0xff
    ori        $a0,$a0,0xff0
    sll        $a7,$a7,0x10
    sw         $a0,236($a5)
    lui        $v1,0x1
    or         $a6,$a6,$a7
    sw         $a6,232($a5)
    ori        $v1,$v1,0x1023
    sw         $v1,0($t3)
    sync
    ld         $v0,-30720($gp)
    lw         $v0,232($v0)
    sw         $v0,0($t3)
    sync
    ld         $at,-30720($gp)
    lw         $at,236($at)
    sw         $at,0($t3)
    sync
    ld         $a7,-30720($gp)
    ld         $a5,-30712($gp)
    lw         $a7,240($a7)
    dsll       $a6,$a4,0x2
    sw         $a7,0($t3)
    sync
    ld         $a7,-30720($gp)
    dsubu      $a6,$a6,$a4
    dsll       $a6,$a6,0x3
    daddiu     $a5,$a5,16664
    lw         $a7,244($a7)
    daddu      $a5,$a5,$a6
    sw         $a7,0($t3)
    sync
    lw         $a6,16($a5)
    lui        $v0,0x2000
    lw         $at,20($a5)
    lui        $a7,0x8
    nor        $a7,$a7,$zero
    sll        $a6,$a6,0xd
    sll        $at,$at,0x13
    andi       $a6,$a6,0xe000
    or         $a6,$a6,$v0
    lui        $v0,0x8
    and        $at,$at,$v0
    and        $a6,$a6,$a7
    or         $a6,$a6,$at
    li         $at,-7169
    lw         $a7,4($a5)
    and        $a6,$a6,$at
    lw         $at,0($a5)
    sll        $a7,$a7,0xa
    sll        $at,$at,0x7
    andi       $a7,$a7,0x1c00
    or         $a6,$a6,$a7
    li         $a7,-897
    andi       $at,$at,0x380
    and        $a6,$a6,$a7
    lw         $a7,8($a5)
    or         $a6,$a6,$at
    li         $at,-113
    sll        $a7,$a7,0x4
    and        $a6,$a6,$at
    andi       $a7,$a7,0x70
    lw         $a5,12($a5)
    or         $a6,$a6,$a7
.L00000428:
    ld         $v1,-30720($gp)
    lui        $v0,0x1
    sw         $a2,200($v1)
    ori        $v0,$v0,0x422
    sw         $v0,0($t3)
    sync
    ld         $at,-30720($gp)
    lw         $at,200($at)
    sw         $at,0($t3)
    sync
    ld         $t2,-30720($gp)
    sw         $zero,6960($t2)
    sw         $a6,6956($t2)
    sw         $a5,6948($t2)
    sw         $t9,0($t3)
    li         $a1,250
    sync
    sw         $a1,0($t3)
    sync
    sw         $t8,0($t3)
    lui        $t1,0x1
    sync
    sw         $t8,0($t3)
    ori        $t1,$t1,0x19
    sync
    sw         $t1,0($t3)
    sync
    sw         $t9,0($t3)
    li         $v1,150
    sync
    sw         $v1,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t9,0($t3)
    sync
    sw         $a1,0($t3)
    sync
    sw         $t8,0($t3)
    lui        $t0,0x1
    sync
    sw         $t8,0($t3)
    ori        $t0,$t0,0x1017
    sync
    sw         $t0,0($t3)
    sync
    ld         $a0,-30720($gp)
    lw         $a0,6948($a0)
    sw         $a0,0($t3)
    sync
    ld         $v0,-30720($gp)
    lw         $v0,6952($v0)
    sw         $v0,0($t3)
    sync
    ld         $at,-30720($gp)
    lw         $at,6956($at)
    sw         $at,0($t3)
    sync
    ld         $t2,-30720($gp)
    lw         $t2,6960($t2)
    sw         $t2,0($t3)
    sync
    sw         $t9,0($t3)
    sync
    sw         $v1,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t9,0($t3)
    sync
    sw         $a1,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t0,0($t3)
    sync
    ld         $a7,-30720($gp)
    lw         $a7,6948($a7)
    sw         $a7,0($t3)
    sync
    ld         $a4,-30720($gp)
    lw         $a4,6952($a4)
    sw         $a4,0($t3)
    sync
    sw         $zero,0($t3)
    sync
    ld         $a3,-30720($gp)
    lw         $a3,6960($a3)
    sw         $a3,0($t3)
    sync
    sw         $t0,0($t3)
    sync
    ld         $a0,-30720($gp)
    lw         $a0,6948($a0)
    sw         $a0,0($t3)
    sync
    ld         $v0,-30720($gp)
    lw         $v0,6952($v0)
    sw         $v0,0($t3)
    sync
    ld         $at,-30720($gp)
    lw         $at,6956($at)
    lui        $v0,0x80
    or         $at,$at,$v0
    sw         $at,0($t3)
    sync
    ld         $t2,-30720($gp)
    lw         $t2,6960($t2)
    sw         $t2,0($t3)
    sync
    sw         $t9,0($t3)
    sync
    sw         $a1,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t1,0($t3)
    sync
    sw         $t9,0($t3)
    sync
    sw         $v1,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t9,0($t3)
    sync
    sw         $a1,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t0,0($t3)
    sync
    ld         $a7,-30720($gp)
    lw         $a7,6948($a7)
    sw         $a7,0($t3)
    sync
    ld         $a4,-30720($gp)
    lw         $a4,6952($a4)
    sw         $a4,0($t3)
    sync
    ld         $a3,-30720($gp)
    lw         $a3,6956($a3)
    sw         $a3,0($t3)
    sync
    ld         $a0,-30720($gp)
    lw         $a0,6960($a0)
    sw         $a0,0($t3)
    sync
    sw         $t9,0($t3)
    sync
    sw         $v1,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t9,0($t3)
    sync
    sw         $a1,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    sw         $t8,0($t3)
    sync
    jr         $ra
    daddiu     $sp,$sp,80
.L00000730:
    lw         $v1,84($sp)
.L00000734:
    beqz       $a6, .L000009b0
    lui        $t0,0x8
    beqz       $a7, .L000007b0
    li         $a7,1
    lui        $at,0x1
    li         $a0,512
    sw         $a0,188($t2)
    li         $v0,1
    sw         $v0,196($t2)
    sll        $v1,$v1,0xc
    sw         $v1,192($t2)
    lui        $a5,0x2
    or         $a5,$t1,$a5
    sw         $a5,132($t2)
    ori        $t2,$at,0xc21
    sw         $t2,0($t3)
    sync
    ld         $a6,-30720($gp)
    lw         $a6,188($a6)
    sw         $a6,0($t3)
    sync
    ld         $a5,-30720($gp)
    lw         $a5,192($a5)
    sw         $a5,0($t3)
    sync
    ld         $a0,-30720($gp)
    lw         $a0,196($a0)
    sw         $a0,0($t3)
    sync
    ld         $t2,-30720($gp)
    li         $a7,1
.L000007b0:
    lw         $t1,132($t2)
.L000007b4:
    or         $a6,$t0,$t1
    sw         $a6,132($t2)
    lui        $a5,0x1
    ori        $a5,$a5,0x404
    sw         $a5,0($t3)
    sync
    ld         $a0,-30720($gp)
    lw         $a0,132($a0)
    sw         $a0,0($t3)
    sync
    ld         $v0,-30720($gp)
    sw         $a7,9828($v0)
    li         $v1,3
    sw         $v1,9832($v0)
    lw         $a6,9828($v0)
    lw         $v0,9828($v0)
    lui        $at,0x2200
    srl        $v0,$v0,0xa
    andi       $a6,$a6,0x3ff
    sll        $v0,$v0,0x17
    ori        $at,$at,0x8000
    or         $a6,$a6,$v0
    or         $a6,$a6,$at
    sw         $a6,0($t3)
    sync
    ld         $a5,-30720($gp)
    lw         $v1,9832($a5)
    lw         $a5,9832($a5)
    lui        $a0,0x2300
    srl        $a5,$a5,0xa
    andi       $v1,$v1,0x3ff
    sll        $a5,$a5,0x17
    ori        $a0,$a0,0x8000
    or         $v1,$v1,$a5
    lui        $v0,0xce80
    or         $v1,$v1,$a0
    sw         $v1,0($t3)
    ori        $v0,$v0,0xcc08
    sync
    sw         $v0,0($t3)
    sync
    sw         $zero,0($t3)
    sync
    sw         $zero,0($t3)
    lui        $at,0xc580
    sync
    sw         $zero,0($t3)
    ori        $at,$at,0xc406
    sync
    sw         $at,0($t3)
    sync
    sw         $a1,0($t3)
    sync
    ld         $a5,-30720($gp)
    sw         $a7,236($a5)
    sll        $a6,$a3,0xc
    lui        $a0,0x1
    sw         $a6,232($a5)
    ori        $a0,$a0,0x1023
    sw         $a0,0($t3)
    sync
    ld         $v1,-30720($gp)
    lw         $v1,232($v1)
    sw         $v1,0($t3)
    sync
    ld         $v0,-30720($gp)
    lw         $v0,236($v0)
    sw         $v0,0($t3)
    sync
    ld         $at,-30720($gp)
    ld         $a5,-30712($gp)
    lw         $at,240($at)
    dsll       $a6,$a4,0x2
    sw         $at,0($t3)
    sync
    ld         $v1,-30720($gp)
    dsubu      $a6,$a6,$a4
    dsll       $a6,$a6,0x3
    daddiu     $a5,$a5,16664
    lw         $v1,244($v1)
    daddu      $a5,$a5,$a6
    sw         $v1,0($t3)
    sync
    lw         $at,4($a5)
    lw         $v0,16($a5)
    lui        $a0,0x2000
    sll        $at,$at,0xa
    lui        $v1,0x8
    lw         $a6,20($a5)
    sll        $v0,$v0,0xd
    nor        $v1,$v1,$zero
    andi       $v0,$v0,0xe000
    sll        $a6,$a6,0x13
    or         $v0,$v0,$a0
    and        $a6,$t0,$a6
    and        $v0,$v0,$v1
    or         $a6,$a6,$v0
    li         $v0,-7169
    andi       $at,$at,0x1c00
    and        $a6,$a6,$v0
    lw         $v0,0($a5)
    or         $a6,$a6,$at
    li         $at,-897
    sll        $v0,$v0,0x7
    and        $a6,$a6,$at
    lw         $at,8($a5)
    andi       $v0,$v0,0x380
    or         $a6,$a6,$v0
    li         $v0,-113
    sll        $at,$at,0x4
    andi       $at,$at,0x70
    and        $a6,$a6,$v0
    lw         $a5,12($a5)
    b          .L00000428
    or         $a6,$a6,$at
.L00000980:
    li         $v0,-9
    li         $v1,-17
    lui        $at,0x2
    and        $t1,$t1,$v1
    nor        $at,$at,$zero
    and        $t1,$t1,$v0
    and        $t1,$t1,$at
    b          .L0000017c
    sw         $t1,132($t2)
.L000009a4:
    lui        $t0,0xff
    b          .L00000248
    ld         $v0,0($sp)
.L000009b0:
    b          .L000007b4
    li         $a7,1

glabel odsy_color
    daddiu     $sp,$sp,-32
    lw         $at,0($gp)
    sd         $a0,0($sp)
    sd         $a1,8($sp)
    beqz       $at, .L000009d8
    sd         $ra,16($sp)
.L000009d0:
    jr         $ra
    daddiu     $sp,$sp,32
.L000009d8:
    daddiu     $a0,$gp,0
    li         $v0,1
    jal        mutex_spinlock
    sw         $v0,0($gp)
    ld         $a4,-30704($gp)
    lui        $a3,0xce80
    ld         $a0,0($sp)
    lui        $a5,0x2200
    ld         $v1,8($sp)
    lui        $a2,0x11
    ori        $a5,$a5,0x8001
    daddu      $a0,$a0,$a2
    sw         $v1,8($a4)
    lui        $a4,0x2300
    sw         $a5,0($a0)
    sync
    ori        $a4,$a4,0x8003
    sw         $a4,0($a0)
    sync
    ori        $a3,$a3,0xcc08
    sw         $a3,0($a0)
    sync
    sw         $zero,0($a0)
    sync
    sw         $zero,0($a0)
    sync
    lui        $a2,0xc580
    sw         $zero,0($a0)
    sync
    ori        $a2,$a2,0xc406
    sw         $a2,0($a0)
    sync
    move       $a1,$v0
    sw         $v1,0($a0)
    sync
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    sw         $zero,0($gp)
    b          .L000009d0
    ld         $ra,16($sp)

glabel odsy_mapcolor
    daddiu     $sp,$sp,-64
    sd         $a0,40($sp)
    sd         $a1,32($sp)
    sd         $a2,24($sp)
    lw         $at,0($gp)
    sd         $a3,8($sp)
    sd         $a4,16($sp)
    beqz       $at, .L00000aa4
    sd         $ra,48($sp)
.L00000a9c:
    jr         $ra
    daddiu     $sp,$sp,64
.L00000aa4:
    daddiu     $a0,$gp,0
    li         $v0,1
    jal        mutex_spinlock
    sw         $v0,0($gp)
    sd         $v0,0($sp)
    ld         $a0,40($sp)
    jal        odsy_poll_dfifo_level
    move       $a1,$zero
    ld         $a2,16($sp)
    ld         $a3,8($sp)
    sra        $v1,$a2,0x6
    ld         $a4,24($sp)
    sra        $a1,$a3,0x6
    sll        $a3,$a3,0x2
    sra        $a0,$a4,0x6
    sll        $a4,$a4,0x2
    or         $a1,$a1,$a3
    or         $a0,$a0,$a4
    sll        $a1,$a1,0xa
    sll        $a0,$a0,0x14
    sll        $a2,$a2,0x2
    or         $a0,$a0,$a1
    ld         $a1,32($sp)
    or         $v1,$v1,$a2
    lui        $a2,0x3000
    ori        $a2,$a2,0x1
    sll        $a1,$a1,0xe
    or         $a1,$a1,$a2
    li         $a2,-1
    or         $v1,$v1,$a0
    dsll32     $a2,$a2,0x0
    li         $a0,-1
    dsll32     $a1,$a1,0x0
    dsrl32     $a0,$a0,0x0
    and        $a1,$a1,$a2
    ld         $a2,40($sp)
    and        $v1,$v1,$a0
    lui        $a0,0x40
    or         $v1,$v1,$a1
    ld         $a1,0($sp)
    daddu      $a0,$a0,$a2
    sd         $v1,0($a0)
    sync
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    sw         $zero,0($gp)
    b          .L00000a9c
    ld         $ra,48($sp)

glabel odsy_sboxfi
    daddiu     $sp,$sp,-64
    sd         $a0,0($sp)
    sd         $a1,24($sp)
    sd         $a1,16($sp)
    sd         $a2,32($sp)
    sd         $a2,8($sp)
    lw         $at,0($gp)
    sd         $s0,40($sp)
    move       $s0,$a3
    sd         $s1,48($sp)
    move       $s1,$a4
    beqz       $at, .L00000ba8
    sd         $ra,56($sp)
.L00000b98:
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L00000ba8:
    daddiu     $a0,$gp,0
    li         $a1,1
    jal        mutex_spinlock
    sw         $a1,0($gp)
    ld         $a5,24($sp)
    move       $a1,$v0
    lui        $a7,0x1
    ld         $a4,32($sp)
    lui        $t0,0x8080
    ld         $a3,0($sp)
    slt        $a5,$s0,$a5
    lui        $t1,0x11
    slt        $a4,$a4,$s1
    ld         $t2,-30704($gp)
    beqz       $a5, .L00000bf0
    daddu      $a3,$a3,$t1
    sd         $s0,16($sp)
    ld         $s0,24($sp)
.L00000bf0:
    beqz       $a4, .L00000c04
    ld         $v1,8($sp)
    sd         $s1,8($sp)
    ld         $s1,32($sp)
    ld         $v1,8($sp)
.L00000c04:
    ori        $a4,$a7,0x4400
    sw         $a4,0($a3)
    sync
    li         $a2,7
    sw         $a2,0($a3)
    sync
    ori        $t9,$t0,0xc800
    sw         $t9,0($a3)
    ld         $t8,16($sp)
    sync
    sw         $t8,0($a3)
    sync
    lw         $a0,16($t2)
    subu       $a0,$a0,$v1
    addiu      $a0,$a0,1
    sw         $a0,0($a3)
    sync
    sw         $t9,0($a3)
    addiu      $at,$s0,1
    sync
    sw         $at,0($a3)
    sync
    lw         $v0,16($t2)
    subu       $v0,$v0,$v1
    addiu      $v0,$v0,1
    sw         $v0,0($a3)
    sync
    sw         $t9,0($a3)
    sync
    sw         $at,0($a3)
    sync
    lw         $ra,16($t2)
    subu       $ra,$ra,$s1
    addiu      $ra,$ra,2
    sw         $ra,0($a3)
    sync
    sw         $t9,0($a3)
    sync
    sw         $t8,0($a3)
    sync
    lw         $t3,16($t2)
    subu       $t3,$t3,$s1
    lui        $a6,0x1
    addiu      $t3,$t3,2
    sw         $t3,0($a3)
    ori        $a6,$a6,0x4001
    sync
    sw         $a6,0($a3)
    sync
    ld         $a5,-30720($gp)
    lw         $a5,7036($a5)
    lui        $a2,0x1
    lui        $a4,0x1
    ori        $a4,$a4,0x443
    ori        $a2,$a2,0x46
    beqz       $a5, .L00000d08
    li         $v0,250
    sw         $a4,0($a3)
    sync
    sw         $v0,0($a3)
    sync
    sw         $a2,0($a3)
    sync
    sw         $a2,0($a3)
    sync
.L00000d08:
    sw         $a4,0($a3)
    sync
    sw         $v0,0($a3)
    sync
    sw         $a2,0($a3)
    sync
    sw         $a2,0($a3)
    sync
    lui        $a6,0x1
    ori        $a6,$a6,0x19
    sw         $a6,0($a3)
    sync
    sw         $a4,0($a3)
    sync
    li         $a5,150
    sw         $a5,0($a3)
    sync
    sw         $a2,0($a3)
    sync
    sw         $a2,0($a3)
    sync
    sw         $a2,0($a3)
    sync
    sw         $a2,0($a3)
    sync
    sw         $a4,0($a3)
    sync
    sw         $v0,0($a3)
    sync
    sw         $a2,0($a3)
    sync
    sw         $a2,0($a3)
    sync
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    sw         $zero,0($gp)
    b          .L00000b98
    ld         $ra,56($sp)

glabel odsy_pnt2i
    daddiu     $sp,$sp,-32
    sd         $a0,0($sp)
    lw         $at,0($gp)
    sd         $a1,8($sp)
    sd         $a2,16($sp)
    beqz       $at, .L00000dc4
    sd         $ra,24($sp)
.L00000dbc:
    jr         $ra
    daddiu     $sp,$sp,32
.L00000dc4:
    daddiu     $a0,$gp,0
    li         $v0,1
    jal        mutex_spinlock
    sw         $v0,0($gp)
    ld         $a7,0($sp)
    ld         $t8,8($sp)
    lui        $t0,0x11
    lui        $ra,0x1
    ld         $t3,-30704($gp)
    daddu      $a7,$a7,$t0
    ori        $ra,$ra,0x4400
    sw         $ra,0($a7)
    lui        $t9,0x8080
    sync
    sw         $zero,0($a7)
    ori        $t9,$t9,0xc800
    sync
    sw         $t9,0($a7)
    sync
    sw         $t8,0($a7)
    ld         $t8,16($sp)
    sync
    lw         $t3,16($t3)
    subu       $t3,$t3,$t8
    lui        $t2,0x1
    addiu      $t3,$t3,1
    sw         $t3,0($a7)
    ori        $t2,$t2,0x4001
    sync
    sw         $t2,0($a7)
    sync
    ld         $t1,-30720($gp)
    move       $a1,$v0
    lw         $t1,7036($t1)
    lui        $a5,0x1
    lui        $a6,0x1
    ori        $a6,$a6,0x443
    ori        $a5,$a5,0x46
    beqz       $t1, .L00000e84
    li         $t0,250
    sw         $a6,0($a7)
    sync
    sw         $t0,0($a7)
    sync
    sw         $a5,0($a7)
    sync
    sw         $a5,0($a7)
    sync
.L00000e84:
    sw         $a6,0($a7)
    sync
    sw         $t0,0($a7)
    sync
    sw         $a5,0($a7)
    sync
    sw         $a5,0($a7)
    sync
    lui        $t2,0x1
    ori        $t2,$t2,0x19
    sw         $t2,0($a7)
    sync
    sw         $a6,0($a7)
    sync
    li         $t1,150
    sw         $t1,0($a7)
    sync
    sw         $a5,0($a7)
    sync
    sw         $a5,0($a7)
    sync
    sw         $a5,0($a7)
    sync
    sw         $a5,0($a7)
    sync
    sw         $a6,0($a7)
    sync
    sw         $t0,0($a7)
    sync
    sw         $a5,0($a7)
    sync
    sw         $a5,0($a7)
    sync
    daddiu     $a0,$gp,0
    jal        mutex_spinunlock
    sw         $zero,0($gp)
    b          .L00000dbc
    ld         $ra,24($sp)

glabel odsy_cmov2i
    ld         $at,-30704($gp)
    sw         $a2,4($at)
    jr         $ra
    sw         $a1,0($at)

glabel odsy_drawbitmap
    daddiu     $sp,$sp,-144
    sd         $s2,32($sp)
    ld         $s2,-30720($gp)
    sd         $s1,48($sp)
    ld         $s1,0($a1)
    lw         $at,0($gp)
    sd         $s7,56($sp)
    move       $s7,$a0
    sd         $s0,40($sp)
    move       $s0,$a1
    beqz       $at, .L00000f74
    sd         $ra,96($sp)
.L00000f5c:
    ld         $s2,32($sp)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    ld         $s7,56($sp)
    jr         $ra
    daddiu     $sp,$sp,144
.L00000f74:
    daddiu     $a0,$gp,0
    li         $v0,1
    jal        mutex_spinlock
    sw         $v0,0($gp)
    move       $a7,$zero
    li         $a6,1
    li         $a5,3
    ld         $a1,-30704($gp)
    sd         $v0,24($sp)
    move       $a4,$zero
    li         $a3,-1
    li         $a2,3
    move       $a0,$s7
    lw         $a1,8($a1)
    li         $v1,1
    jal        ODSY_SET_GC
    sw         $v1,4($sp)
    sd         $s5,88($sp)
    sd         $s4,104($sp)
    sd         $s8,112($sp)
    sd         $s3,120($sp)
    sd         $s6,128($sp)
    lh         $a3,14($s0)
    ld         $t2,-30704($gp)
    lh         $a2,10($s0)
    lw         $t2,4($t2)
    sd         $s7,16($sp)
    lui        $a4,0x11
    sd         $a2,64($sp)
    subu       $a3,$t2,$a3
    addiu      $a3,$a3,-1
    blez       $a2, .L000015ac
    sd         $a3,80($sp)
    li         $a5,16
    li         $a1,250
    daddu      $s3,$a4,$s7
    lui        $s7,0x8080
    lui        $s4,0x1
    ori        $s7,$s7,0xc800
    ori        $v0,$s4,0x4001
    ori        $ra,$s4,0x4400
    ori        $t9,$s4,0x3c4f
    ori        $a0,$s4,0x3c4e
    ori        $s8,$s4,0x43f
    ori        $s6,$s4,0x19
    ori        $s5,$s4,0x46
    ori        $s4,$s4,0x443
    ld         $t3,-30704($gp)
.L00001034:
    lh         $t0,8($s0)
    ld         $v1,64($sp)
    lh         $t8,12($s0)
    li         $a6,64
    move       $t2,$a5
    lw         $t3,0($t3)
    slt        $at,$v1,$a6
    move       $t1,$zero
    movn       $a6,$v1,$at
    subu       $t3,$t3,$t8
    slti       $t8,$a6,1
    xori       $t8,$t8,0x1
    blez       $t0, .L0000147c
    sd         $t8,72($sp)
    ld         $t8,-30720($gp)
.L00001070:
    ld         $v1,72($sp)
    move       $a4,$a6
    slt        $at,$t0,$a5
    beqz       $v1, .L000010c8
    movn       $t2,$t0,$at
    daddu      $a7,$t1,$t1
    move       $a5,$zero
.L0000108c:
    lh         $a3,20($s0)
    mult       $a3,$a5
    mflo       $a2
    addiu      $a5,$a5,1
    daddu      $a2,$a2,$a2
    slt        $at,$a5,$a6
    daddu      $a2,$s1,$a2
    daddu      $a3,$a4,$a4
    daddu      $a2,$a7,$a2
    daddu      $a3,$s2,$a3
    lhu        $a2,0($a2)
    addiu      $a4,$a4,-1
    bnez       $at, .L0000108c
    sh         $a2,-2($a3)
    li         $a5,16
.L000010c8:
    li         $a3,6
    sw         $a3,128($t8)
    sw         $s8,0($s3)
    sync
    ld         $a2,-30720($gp)
    lw         $a2,128($a2)
    sw         $a2,0($s3)
    sync
    sw         $a0,0($s3)
    sync
    ld         $v1,-30720($gp)
    lw         $v1,0($v1)
    sw         $v1,0($s3)
    sync
    ld         $at,-30720($gp)
    lw         $at,4($at)
    sw         $at,0($s3)
    sync
    ld         $a7,-30720($gp)
    lw         $a7,8($a7)
    sw         $a7,0($s3)
    sync
    ld         $a4,-30720($gp)
    lw         $a4,12($a4)
    sw         $a4,0($s3)
    sync
    ld         $a3,-30720($gp)
    lw         $a3,16($a3)
    sw         $a3,0($s3)
    sync
    ld         $a2,-30720($gp)
    lw         $a2,20($a2)
    sw         $a2,0($s3)
    sync
    ld         $v1,-30720($gp)
    lw         $v1,24($v1)
    sw         $v1,0($s3)
    sync
    ld         $at,-30720($gp)
    lw         $at,28($at)
    sw         $at,0($s3)
    sync
    ld         $a7,-30720($gp)
    lw         $a7,32($a7)
    sw         $a7,0($s3)
    sync
    ld         $a4,-30720($gp)
    lw         $a4,36($a4)
    sw         $a4,0($s3)
    sync
    ld         $a3,-30720($gp)
    lw         $a3,40($a3)
    sw         $a3,0($s3)
    sync
    ld         $a2,-30720($gp)
    lw         $a2,44($a2)
    sw         $a2,0($s3)
    sync
    ld         $v1,-30720($gp)
    lw         $v1,48($v1)
    sw         $v1,0($s3)
    sync
    ld         $at,-30720($gp)
    lw         $at,52($at)
    sw         $at,0($s3)
    sync
    ld         $a7,-30720($gp)
    lw         $a7,56($a7)
    sw         $a7,0($s3)
    sync
    ld         $a4,-30720($gp)
    lw         $a4,60($a4)
    sw         $a4,0($s3)
    sync
    sw         $t9,0($s3)
    sync
    ld         $a3,-30720($gp)
    lw         $a3,64($a3)
    sw         $a3,0($s3)
    sync
    ld         $a2,-30720($gp)
    lw         $a2,68($a2)
    sw         $a2,0($s3)
    sync
    ld         $v1,-30720($gp)
    lw         $v1,72($v1)
    sw         $v1,0($s3)
    sync
    ld         $at,-30720($gp)
    lw         $at,76($at)
    sw         $at,0($s3)
    sync
    ld         $a7,-30720($gp)
    lw         $a7,80($a7)
    sw         $a7,0($s3)
    sync
    ld         $a4,-30720($gp)
    lw         $a4,84($a4)
    sw         $a4,0($s3)
    sync
    ld         $a3,-30720($gp)
    lw         $a3,88($a3)
    sw         $a3,0($s3)
    sync
    ld         $a2,-30720($gp)
    lw         $a2,92($a2)
    sw         $a2,0($s3)
    sync
    ld         $v1,-30720($gp)
    lw         $v1,96($v1)
    sw         $v1,0($s3)
    sync
    ld         $at,-30720($gp)
    lw         $at,100($at)
    sw         $at,0($s3)
    sync
    ld         $a7,-30720($gp)
    lw         $a7,104($a7)
    sw         $a7,0($s3)
    sync
    ld         $a4,-30720($gp)
    lw         $a4,108($a4)
    sw         $a4,0($s3)
    sync
    ld         $a3,-30720($gp)
    lw         $a3,112($a3)
    sw         $a3,0($s3)
    sync
    ld         $a2,-30720($gp)
    lw         $a2,116($a2)
    sw         $a2,0($s3)
    sync
    ld         $v1,-30720($gp)
    lw         $v1,120($v1)
    sw         $v1,0($s3)
    sync
    ld         $at,-30720($gp)
    ld         $v1,80($sp)
    lw         $at,124($at)
    sw         $at,0($s3)
    sync
    sw         $ra,0($s3)
    li         $a7,7
    sync
    sw         $a7,0($s3)
    sync
    sw         $s7,0($s3)
    ld         $at,-30704($gp)
    sync
    sw         $t3,0($s3)
    sync
    lw         $a4,16($at)
    subu       $a4,$a4,$v1
    subu       $a4,$a4,$a6
    addiu      $a4,$a4,1
    sw         $a4,0($s3)
    sync
    sw         $s7,0($s3)
    sync
    addu       $a4,$t2,$t3
    sw         $a4,0($s3)
    sync
    lw         $a3,16($at)
    subu       $a3,$a3,$v1
    subu       $a3,$a3,$a6
    addiu      $a3,$a3,1
    sw         $a3,0($s3)
    sync
    sw         $s7,0($s3)
    sync
    sw         $a4,0($s3)
    sync
    lw         $a2,16($at)
    subu       $a2,$a2,$v1
    addiu      $a2,$a2,1
    sw         $a2,0($s3)
    sync
    sw         $s7,0($s3)
    sync
    sw         $t3,0($s3)
    sync
    lw         $at,16($at)
    subu       $at,$at,$v1
    addiu      $at,$at,1
    sw         $at,0($s3)
    sync
    sw         $v0,0($s3)
    sync
    ld         $a7,-30720($gp)
    lw         $a7,7036($a7)
    beqz       $a7, .L000013e8
    nop
    sw         $s4,0($s3)
    sync
    sw         $a1,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    sw         $s5,0($s3)
    sync
.L000013e8:
    sw         $s4,0($s3)
    sync
    sw         $a1,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    sw         $s6,0($s3)
    sync
    sw         $s4,0($s3)
    sync
    li         $a7,150
    sw         $a7,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    sw         $s4,0($s3)
    sync
    addiu      $t1,$t1,1
    sw         $a1,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    subu       $t0,$t0,$t2
    move       $t2,$a5
    sw         $s5,0($s3)
    sync
    ld         $t8,-30720($gp)
    bgtz       $t0, .L00001070
    move       $t3,$a4
.L0000147c:
    lh         $t1,20($s0)
    ld         $t0,64($sp)
    ld         $t2,80($sp)
    ld         $t3,-30704($gp)
    subu       $t0,$t0,$a6
    sll        $t1,$t1,0x6
    addu       $t2,$a6,$t2
    sd         $t2,80($sp)
    daddu      $t1,$t1,$t1
    sd         $t0,64($sp)
    bgtz       $t0, .L00001034
    daddu      $s1,$s1,$t1
    ld         $t2,-30704($gp)
    li         $s2,250
    lw         $t2,4($t2)
.L000014b8:
    ld         $s8,112($sp)
    ld         $s1,24($sp)
    ld         $a0,16($sp)
    lh         $a3,16($s0)
    ld         $a1,-30704($gp)
    lh         $a2,18($s0)
    move       $a7,$zero
    lw         $a4,0($a1)
    move       $a6,$zero
    addu       $a2,$a2,$t2
    sw         $a2,4($a1)
    li         $a5,3
    addu       $a3,$a3,$a4
    sw         $a3,0($a1)
    li         $a2,3
    move       $a4,$zero
    lw         $a1,8($a1)
    li         $a3,-1
    jal        ODSY_SET_GC
    sw         $zero,4($sp)
    sw         $s4,0($s3)
    sync
    sw         $s2,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    sw         $s6,0($s3)
    sync
    sw         $s4,0($s3)
    sync
    li         $a5,150
    sw         $a5,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    sw         $s4,0($s3)
    sync
    sw         $s2,0($s3)
    sync
    sw         $s5,0($s3)
    sync
    daddiu     $a0,$gp,0
    sw         $s5,0($s3)
    sync
    sw         $zero,0($gp)
    jal        mutex_spinunlock
    move       $a1,$s1
    ld         $s6,128($sp)
    ld         $s3,120($sp)
    ld         $s4,104($sp)
    ld         $ra,96($sp)
    b          .L00000f5c
    ld         $s5,88($sp)
.L000015ac:
    li         $s2,250
    daddu      $s3,$a4,$s7
    lui        $s4,0x1
    ori        $s6,$s4,0x19
    ori        $s5,$s4,0x46
    sd         $s7,16($sp)
    b          .L000014b8
    ori        $s4,$s4,0x443

glabel odsy_getdesc
    li         $at,1
    beq        $a1, $at, .L000015dc
    li         $v0,1
    move       $v0,$zero
.L000015dc:
    jr         $ra
    nop

glabel odsy_tpinit
    daddiu     $sp,$sp,-64
    sd         $s1,48($sp)
    sd         $ra,24($sp)
    sd         $s3,16($sp)
    move       $s3,$a0
    jal        odsyPipeNrFromBase
    sd         $s2,40($sp)
    ld         $s1,0($gp)
    dsll       $s2,$v0,0x3
    daddu      $s1,$s1,$s2
    ld         $s1,0($s1)
    li         $s2,1
    sw         $s2,0($gp)
    jal        wbflush
    sw         $s2,0($gp)
    b          .L00001630
    sd         $s0,32($sp)
.L00001628:
    jal        us_delay
    li         $a0,5
.L00001630:
    ld         $t8,824($s1)
    lw         $t8,4204($t8)
    srl        $t8,$t8,0x7
    andi       $t8,$t8,0x1ff
    bnez       $t8, .L00001628
    nop
    b          .L00001664
    move       $s0,$zero
.L00001650:
    slti       $t9,$s0,6
    beqz       $t9, .L000017c0
    ld         $a1,-30720($gp)
    jal        odsyReset
    lh         $a0,790($s1)
.L00001664:
    ld         $a0,824($s1)
    sw         $zero,4228($a0)
    sync
    ld         $v1,824($s1)
    sw         $s2,4228($v1)
    sync
    ld         $v0,824($s1)
    sw         $zero,4228($v0)
    sync
    ld         $at,824($s1)
    sw         $zero,4212($at)
    sync
    ld         $ra,824($s1)
    sw         $s2,4220($ra)
    sync
    move       $a1,$zero
    jal        odsyInitCfifo
    lh         $a0,790($s1)
    bnez       $v0, .L00001650
    addiu      $s0,$s0,1
    move       $a0,$s1
    ld         $a1,-30696($gp)
    jal        odsyInitDBE
    move       $a2,$zero
    move       $a0,$s1
    ld         $a1,0($gp)
    jal        odsyInitDBE
    move       $a2,$zero
    ld         $a0,-30720($gp)
    lhu        $a4,232($s1)
    lhu        $a6,234($s1)
    ld         $a5,-30704($gp)
    lw         $a3,1360($s1)
    sw         $a6,16($a5)
    ld         $s0,-30712($gp)
    sw         $a4,12($a5)
    sw         $a3,16676($s0)
    sw         $a3,16700($s0)
    lw         $a2,1496($s1)
    li         $a1,11128
    jal        bzero
    sw         $a2,16724($s0)
    ld         $t0,-30720($gp)
    lw         $a7,1336($s1)
    move       $a2,$zero
    lui        $a3,0x11
    daddu      $a3,$s3,$a3
    srl        $a7,$a7,0x4
    sw         $a7,6952($t0)
    dsll       $a5,$a2,0x2
.L0000172c:
    daddu      $a5,$s0,$a5
    lw         $a5,0($a5)
    addiu      $a2,$a2,1
    slti       $a4,$a2,4165
    sw         $a5,0($a3)
    sync
    beqz       $a4, .L00001774
    move       $a0,$s3
    dsll       $a7,$a2,0x2
    daddu      $a7,$s0,$a7
    lw         $a7,0($a7)
    addiu      $a2,$a2,1
    slti       $a6,$a2,4165
    sw         $a7,0($a3)
    sync
    bnez       $a6, .L0000172c
    dsll       $a5,$a2,0x2
    move       $a0,$s3
.L00001774:
    move       $a7,$zero
    move       $a6,$zero
    li         $a1,1
    li         $a2,3
    li         $a3,-1
    move       $a4,$zero
    sw         $zero,4($sp)
    jal        ODSY_SET_GC
    li         $a5,3
    sw         $zero,0($gp)
    jal        wbflush
    sw         $zero,0($gp)
    ld         $s1,48($sp)
.L000017a8:
    ld         $ra,24($sp)
    ld         $s2,40($sp)
    ld         $s0,32($sp)
    ld         $s3,16($sp)
    jr         $ra
    daddiu     $sp,$sp,64
.L000017c0:
    li         $a0,1
    jal        cmn_err
    daddiu     $a1,$a1,16
    b          .L000017a8
    ld         $s1,48($sp)

glabel odsy_unblank
    jr         $ra
    nop
