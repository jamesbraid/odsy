# DDX module odyssey: group vfmt
# Functions: 13

.text
.set noat
.set noreorder

glabel vfmtReadCmp1Format
    addiu	$sp,$sp,-1232
    sd	$gp,1192($sp)
    sd	$ra,1184($sp)
    lui	$v0,0x1f
    addiu	$v0,$v0,-1152
    addu	$gp,$t9,$v0
    sw	$a0,1220($sp)
    sw	$a1,1228($sp)
    sw	$zero,0($sp)
    li	$at,1
    sw	$at,4($sp)
    addiu	$a0,$sp,8
    lw	$a1,1220($sp)
    lw	$t9,-32508($gp)
    bal vfmtFindCmpFormatFile
    nop
    sd	$v0,1200($sp)
    move	$v1,$v0
    sw	$v1,4($sp)
    beqz	$v1,.L0154aec0
    nop
    li	$a1,427
    sw	$a1,-7168($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,13944
    lw	$a1,1220($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-27984
    bal vfmtReadCmp1Format-0x1b90
    nop
    b	.L0154b020
    nop
.L0154aec0:
    addiu	$a0,$sp,8
    lw	$t9,-32448($gp)
    bal SDBreadOpenDatabase
    nop
    sd	$v0,1200($sp)
    sw	$v0,0($sp)
    lw	$a2,0($sp)
    bnez	$a2,.L0154af10
    nop
    li	$a1,433
    sw	$a1,-7168($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,13968
    addiu	$a1,$sp,8
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-27984
    bal vfmtReadCmp1Format-0x1b90
    nop
    b	.L0154b020
    nop
.L0154af10:
    addiu	$a0,$sp,1032
    lw	$t9,-32492($gp)
    bal vfmtGetLastKonaFileStat
    nop
    sd	$v0,1200($sp)
    bnez	$v0,.L0154af58
    nop
    li	$a1,437
    sw	$a1,-7168($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,13944
    lw	$a1,1220($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-27984
    bal vfmtReadCmp1Format-0x1b90
    nop
    b	.L0154b020
    nop
.L0154af58:
    lw	$ra,1108($sp)
    lw	$at,1228($sp)
    sw	$ra,256($at)
    lw	$a0,1228($sp)
    lw	$a1,0($sp)
    move	$a2,$zero
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-27680
    bal vfmtReadCmp1Format-0x1a60
    nop
    sd	$v0,1200($sp)
    beqz	$v0,.L0154b020
    nop
    lw	$a0,1228($sp)
    lw	$a1,0($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-24720
    bal vfmtReadCmp1Format-0xed0
    nop
    sd	$v0,1200($sp)
    beqz	$v0,.L0154b020
    nop
    lw	$a0,1228($sp)
    lw	$a1,0($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-24080
    bal vfmtReadCmp1Format-0xc50
    nop
    sd	$v0,1200($sp)
    beqz	$v0,.L0154b020
    nop
    lw	$a0,1228($sp)
    lw	$a1,0($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-23424
    bal vfmtReadCmp1Format-0x9c0
    nop
    sd	$v0,1200($sp)
    beqz	$v0,.L0154b020
    nop
    lw	$a0,1228($sp)
    lw	$a1,0($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-22352
    bal vfmtReadCmp1Format-0x590
    nop
    sd	$v0,1200($sp)
    beqz	$v0,.L0154b020
    nop
    sw	$zero,4($sp)
.L0154b020:
    lw	$ra,0($sp)
    beqz	$ra,.L0154b03c
    nop
    lw	$a0,0($sp)
    lw	$t9,-32452($gp)
    bal SDBcloseReadDatabase
    nop
.L0154b03c:
    sw	$zero,0($sp)
    lw	$v0,4($sp)
    ld	$gp,1192($sp)
    ld	$ra,1184($sp)
    addiu	$sp,$sp,1232
    jr	$ra
    nop

glabel vfmtReadCmp1OdyFormat
    addiu	$sp,$sp,-1072
    sd	$gp,1040($sp)
    sd	$ra,1032($sp)
    lui	$v0,0x1f
    addiu	$v0,$v0,-1696
    addu	$gp,$t9,$v0
    sw	$a0,1060($sp)
    sw	$a1,1068($sp)
    sw	$zero,0($sp)
    li	$at,1
    sw	$at,4($sp)
    addiu	$a0,$sp,8
    lw	$a1,1060($sp)
    lw	$t9,-32504($gp)
    bal vfmtFindOdyFormatFile
    nop
    sd	$v0,1048($sp)
    move	$v1,$v0
    sw	$v1,4($sp)
    beqz	$v1,.L0154b0e0
    nop
    li	$a1,480
    sw	$a1,-7168($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,13944
    lw	$a1,1060($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-27984
    bal vfmtReadCmp1Format-0x1b90
    nop
    b	.L0154b15c
    nop
.L0154b0e0:
    addiu	$a0,$sp,8
    lw	$t9,-32448($gp)
    bal SDBreadOpenDatabase
    nop
    sd	$v0,1048($sp)
    sw	$v0,0($sp)
    lw	$a2,0($sp)
    bnez	$a2,.L0154b130
    nop
    li	$a1,486
    sw	$a1,-7168($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,13968
    addiu	$a1,$sp,8
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-27984
    bal vfmtReadCmp1Format-0x1b90
    nop
    b	.L0154b15c
    nop
.L0154b130:
    lw	$a0,1068($sp)
    lw	$a1,0($sp)
    li	$a2,1
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-27680
    bal vfmtReadCmp1Format-0x1a60
    nop
    sd	$v0,1048($sp)
    beqz	$v0,.L0154b15c
    nop
    sw	$zero,4($sp)
.L0154b15c:
    lw	$ra,0($sp)
    beqz	$ra,.L0154b178
    nop
    lw	$a0,0($sp)
    lw	$t9,-32452($gp)
    bal SDBcloseReadDatabase
    nop
.L0154b178:
    sw	$zero,0($sp)
    lw	$v0,4($sp)
    ld	$gp,1040($sp)
    ld	$ra,1032($sp)
    addiu	$sp,$sp,1072
    jr	$ra
    nop

glabel vfmtReadCmp1SG2Format
    addiu	$sp,$sp,-1088
    sd	$gp,1040($sp)
    sd	$ra,1032($sp)
    lui	$v0,0x1f
    addiu	$v0,$v0,-2016
    addu	$gp,$t9,$v0
    sw	$a0,1076($sp)
    sw	$a1,1084($sp)
    sw	$zero,0($sp)
    li	$at,1
    sw	$at,4($sp)
    addiu	$a0,$sp,8
    lw	$a1,1076($sp)
    lw	$t9,-32500($gp)
    bal vfmtFindSG2FormatFile
    nop
    sd	$v0,1048($sp)
    move	$v1,$v0
    sd	$v1,1056($sp)
    sw	$v1,4($sp)
    beqz	$v1,.L0154b224
    nop
    li	$a1,509
    sw	$a1,-7168($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,13944
    lw	$a1,1076($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-27984
    bal vfmtReadCmp1Format-0x1b90
    nop
    b	.L0154b2a8
    nop
.L0154b224:
    addiu	$a0,$sp,8
    addiu	$a1,$gp,19880
    lw	$t9,-27736($gp)
    jalr	$t9
    nop
    sd	$v0,1048($sp)
    move	$a2,$v0
    sd	$a2,1056($sp)
    sw	$a2,0($sp)
    bnez	$a2,.L0154b27c
    nop
    li	$a1,513
    sw	$a1,-7168($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,13968
    addiu	$a1,$sp,8
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-27984
    bal vfmtReadCmp1Format-0x1b90
    nop
    b	.L0154b2a8
    nop
.L0154b27c:
    lw	$a0,1084($sp)
    lw	$a1,0($sp)
    li	$a2,1
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-25472
    bal vfmtReadCmp1Format-0x11c0
    nop
    sd	$v0,1048($sp)
    beqz	$v0,.L0154b2a8
    nop
    sw	$zero,4($sp)
.L0154b2a8:
    lw	$ra,0($sp)
    beqz	$ra,.L0154b2c4
    nop
    lw	$a0,0($sp)
    lw	$t9,-27732($gp)
    jalr	$t9
    nop
.L0154b2c4:
    lw	$v0,4($sp)
    ld	$gp,1040($sp)
    ld	$ra,1032($sp)
    addiu	$sp,$sp,1088
    jr	$ra
    nop

glabel vfmtFindFormatFile
    addiu	$sp,$sp,-3168
    sd	$gp,3112($sp)
    sd	$ra,3104($sp)
    lui	$a3,0x1f
    addiu	$a3,$a3,-2512
    addu	$gp,$t9,$a3
    sw	$a0,3140($sp)
    sw	$a1,3148($sp)
    sw	$a2,3156($sp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,14624
    lw	$t9,-27964($gp)
    jalr	$t9
    nop
    sd	$v0,3120($sp)
    sw	$v0,0($sp)
    lw	$a4,0($sp)
    bnez	$a4,.L0154b3e4
    nop
    addiu	$a5,$gp,19912
    sw	$a5,0($sp)
.L0154b3e4:
    addiu	$a0,$sp,8
    lw	$a1,3148($sp)
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    addiu	$a0,$sp,8
    addiu	$a1,$gp,19920
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-19744
    bal vfmtReadCmp1SG2Format
    nop
    addiu	$a0,$sp,8
    li	$a1,47
    lw	$t9,-27636($gp)
    jalr	$t9
    nop
    sd	$v0,3120($sp)
    sw	$v0,1032($sp)
    lw	$ra,1032($sp)
    bnez	$ra,.L0154b460
    nop
    lw	$a0,3140($sp)
    addiu	$a1,$gp,19928
    lw	$a2,0($sp)
    lw	$a3,3156($sp)
    addiu	$a4,$sp,8
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    b	.L0154b4f8
    nop
.L0154b460:
    lw	$at,1032($sp)
    addiu	$v0,$sp,8
    subu	$at,$at,$v0
    sw	$at,1036($sp)
    addiu	$a0,$sp,1040
    addiu	$a1,$sp,8
    lw	$a2,1036($sp)
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
    lw	$v1,1036($sp)
    addiu	$a0,$sp,1040
    addu	$v1,$v1,$a0
    sb	$zero,0($v1)
    addiu	$a0,$sp,2064
    addiu	$a1,$gp,19936
    lw	$a2,0($sp)
    lw	$a3,3156($sp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    addiu	$a0,$sp,1040
    addiu	$a1,$sp,2064
    lw	$t9,-28328($gp)
    jalr	$t9
    nop
    sd	$v0,3120($sp)
    beqz	$v0,.L0154b4e4
    nop
    li	$a1,3
    sd	$a1,3096($sp)
    b	.L0154b5c8
    nop
.L0154b4e4:
    lw	$a0,3140($sp)
    addiu	$a1,$sp,8
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
.L0154b4f8:
    lw	$a0,3140($sp)
    la	$a1,sub_01740000
    addiu	$a1,$a1,8648
    lw	$t9,-28444($gp)
    jalr	$t9
    nop
    sd	$v0,3120($sp)
    bnez	$v0,.L0154b528
    nop
    sd	$zero,3096($sp)
    b	.L0154b5c8
    nop
.L0154b528:
    addiu	$a0,$gp,19944
    lw	$t9,-27964($gp)
    jalr	$t9
    nop
    sd	$v0,3120($sp)
    sw	$v0,3088($sp)
    lw	$a2,3088($sp)
    bnez	$a2,.L0154b55c
    nop
    li	$a3,1
    sd	$a3,3096($sp)
    b	.L0154b5c8
    nop
.L0154b55c:
    lw	$a0,3140($sp)
    addiu	$a1,$gp,19952
    lw	$a2,3088($sp)
    addiu	$a3,$sp,8
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,3140($sp)
    la	$a1,sub_01740000
    addiu	$a1,$a1,8648
    lw	$t9,-28444($gp)
    jalr	$t9
    nop
    sd	$v0,3120($sp)
    bnez	$v0,.L0154b5a8
    nop
    sd	$zero,3096($sp)
    b	.L0154b5c8
    nop
.L0154b5a8:
    lw	$a0,3140($sp)
    addiu	$a1,$sp,8
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    li	$a2,1
    sd	$a2,3096($sp)
    sd	$a2,3096($sp)
.L0154b5c8:
    ld	$v0,3096($sp)
    ld	$gp,3112($sp)
    ld	$ra,3104($sp)
    addiu	$sp,$sp,3168
    jr	$ra
    nop

glabel vfmtFindKonaFormatFile
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$at,0x1f
    addiu	$at,$at,-3104
    addu	$gp,$t9,$at
    sw	$a0,20($sp)
    sw	$a1,28($sp)
    lw	$a0,20($sp)
    lw	$a1,28($sp)
    lw	$a2,-7028($gp)
    lw	$t9,-32512($gp)
    bal vfmtFindFormatFile
    nop
    ld	$gp,8($sp)
    ld	$ra,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    nop

glabel vfmtFindCmpFormatFile
    addiu	$sp,$sp,-64
    sd	$gp,24($sp)
    sd	$ra,16($sp)
    lui	$at,0x1f
    addiu	$at,$at,-3184
    addu	$gp,$t9,$at
    sw	$a0,52($sp)
    sw	$a1,60($sp)
    lw	$a0,52($sp)
    lw	$a1,60($sp)
    lw	$a2,-7020($gp)
    lw	$t9,-32512($gp)
    bal vfmtFindFormatFile
    nop
    sd	$v0,32($sp)
    sw	$v0,0($sp)
    lw	$v0,0($sp)
    bnez	$v0,.L0154b68c
    nop
    lw	$v1,0($sp)
    sd	$v1,8($sp)
    b	.L0154b6b4
    nop
.L0154b68c:
    lw	$a0,52($sp)
    lw	$a1,60($sp)
    lw	$a2,-7024($gp)
    lw	$t9,-32512($gp)
    bal vfmtFindFormatFile
    nop
    sd	$v0,32($sp)
    move	$a0,$v0
    sd	$a0,8($sp)
    sd	$a0,8($sp)
.L0154b6b4:
    ld	$v0,8($sp)
    ld	$gp,24($sp)
    ld	$ra,16($sp)
    addiu	$sp,$sp,64
    jr	$ra
    nop

glabel vfmtFindOdyFormatFile
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$at,0x1f
    addiu	$at,$at,-3344
    addu	$gp,$t9,$at
    sw	$a0,20($sp)
    sw	$a1,28($sp)
    lw	$a0,20($sp)
    lw	$a1,28($sp)
    lw	$a2,-7016($gp)
    lw	$t9,-32512($gp)
    bal vfmtFindFormatFile
    nop
    ld	$gp,8($sp)
    ld	$ra,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    nop

glabel vfmtFindSG2FormatFile
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$at,0x1f
    addiu	$at,$at,-3424
    addu	$gp,$t9,$at
    sw	$a0,20($sp)
    sw	$a1,28($sp)
    lw	$a0,20($sp)
    lw	$a1,28($sp)
    lw	$a2,-7012($gp)
    lw	$t9,-32512($gp)
    bal vfmtFindFormatFile
    nop
    ld	$gp,8($sp)
    ld	$ra,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    nop

glabel vfmtFindKonaCombinationFile
    addiu	$sp,$sp,-1088
    sd	$gp,1048($sp)
    sd	$ra,1040($sp)
    lui	$at,0x1f
    addiu	$at,$at,-3504
    addu	$gp,$t9,$at
    sw	$a0,1076($sp)
    sw	$a1,1084($sp)
    addiu	$a0,$sp,0
    lw	$a1,1084($sp)
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    addiu	$a0,$sp,0
    la	$a1,sub_01740000
    addiu	$a1,$a1,8648
    lw	$t9,-28444($gp)
    jalr	$t9
    nop
    sd	$v0,1056($sp)
    bnez	$v0,.L0154b7ec
    nop
    lw	$a0,1076($sp)
    addiu	$a1,$sp,0
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    li	$a2,1
    sd	$a2,1032($sp)
    b	.L0154b88c
    nop
.L0154b7ec:
    la	$a0,sub_01720000
    addiu	$a0,$a0,14624
    lw	$t9,-27964($gp)
    jalr	$t9
    nop
    sd	$v0,1056($sp)
    sw	$v0,1024($sp)
    lw	$a1,1024($sp)
    bnez	$a1,.L0154b81c
    nop
    addiu	$a2,$gp,19912
    sw	$a2,1024($sp)
.L0154b81c:
    lw	$a0,1076($sp)
    la	$a1,sub_01720000
    addiu	$a1,$a1,14640
    lw	$a2,1024($sp)
    addiu	$a3,$sp,0
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1076($sp)
    la	$a1,sub_01740000
    addiu	$a1,$a1,8648
    lw	$t9,-28444($gp)
    jalr	$t9
    nop
    sd	$v0,1056($sp)
    bnez	$v0,.L0154b870
    nop
    li	$a2,1
    sd	$a2,1032($sp)
    b	.L0154b88c
    nop
.L0154b870:
    lw	$a0,1076($sp)
    addiu	$a1,$sp,0
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    sd	$zero,1032($sp)
    sd	$zero,1032($sp)
.L0154b88c:
    ld	$v0,1032($sp)
    ld	$gp,1048($sp)
    ld	$ra,1040($sp)
    addiu	$sp,$sp,1088
    jr	$ra
    nop

glabel vfmtFindCmpCombinationFile
    addiu	$sp,$sp,-1088
    sd	$gp,1056($sp)
    sd	$ra,1048($sp)
    lui	$at,0x1f
    addiu	$at,$at,-3824
    addu	$gp,$t9,$at
    sw	$a0,1076($sp)
    sw	$a1,1084($sp)
    sw	$zero,0($sp)
    addiu	$a0,$sp,8
    lw	$a1,1084($sp)
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
.L0154b8e8:
    addiu	$a0,$sp,8
    la	$a1,sub_01740000
    addiu	$a1,$a1,8648
    lw	$t9,-28444($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    bnez	$v0,.L0154b928
    nop
    lw	$a0,1076($sp)
    addiu	$a1,$sp,8
    lw	$t9,-28528($gp)
    jalr	$t9
    nop
    b	.L0154baf8
    nop
.L0154b928:
    la	$a0,sub_01720000
    addiu	$a0,$a0,14624
    lw	$t9,-27964($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    sw	$v0,1032($sp)
    lw	$a1,1032($sp)
    bnez	$a1,.L0154b958
    nop
    addiu	$a2,$gp,19912
    sw	$a2,1032($sp)
.L0154b958:
    lw	$a0,1076($sp)
    li	$a1,4
    la	$a2,sub_01720000
    addiu	$a2,$a2,14680
    lw	$a3,1032($sp)
    addiu	$a4,$sp,8
    lw	$t9,-27632($gp)
    jalr	$t9
    nop
    lw	$a0,1076($sp)
    la	$a1,sub_01740000
    addiu	$a1,$a1,8648
    lw	$t9,-28444($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    beqz	$v0,.L0154baf8
    nop
    lw	$a0,1076($sp)
    li	$a1,4
    la	$a2,sub_01720000
    addiu	$a2,$a2,14712
    lw	$a3,1032($sp)
    addiu	$a4,$sp,8
    lw	$t9,-27632($gp)
    jalr	$t9
    nop
    lw	$a0,1076($sp)
    la	$a1,sub_01740000
    addiu	$a1,$a1,8648
    lw	$t9,-28444($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    beqz	$v0,.L0154baf8
    nop
    lw	$a0,1076($sp)
    li	$a1,4
    la	$a2,sub_01720000
    addiu	$a2,$a2,14752
    lw	$a3,1032($sp)
    addiu	$a4,$sp,8
    lw	$t9,-27632($gp)
    jalr	$t9
    nop
    lw	$a0,1076($sp)
    la	$a1,sub_01740000
    addiu	$a1,$a1,8648
    lw	$t9,-28444($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    beqz	$v0,.L0154baf8
    nop
    lw	$a2,0($sp)
    bnez	$a2,.L0154ba84
    nop
    addiu	$a0,$sp,8
    addiu	$a1,$gp,19960
    lw	$t9,-27748($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    bnez	$v0,.L0154ba84
    nop
    addiu	$a0,$sp,8
    addiu	$a1,$gp,19960
    li	$a2,1024
    lw	$t9,-27628($gp)
    jalr	$t9
    nop
    li	$a3,1
    sw	$a3,0($sp)
    b	.L0154b8e8
    nop
.L0154ba84:
    lw	$a0,1084($sp)
    li	$a1,47
    lw	$t9,-28588($gp)
    jalr	$t9
    nop
    sd	$v0,1064($sp)
    bnez	$v0,.L0154bad0
    nop
    lw	$a0,1076($sp)
    li	$a1,1024
    la	$a2,sub_01720000
    addiu	$a2,$a2,14712
    lw	$a3,1032($sp)
    lw	$a4,1084($sp)
    lw	$t9,-27632($gp)
    jalr	$t9
    nop
    b	.L0154bae8
    nop
.L0154bad0:
    lw	$a0,1076($sp)
    lw	$a1,1084($sp)
    li	$a2,1024
    lw	$t9,-28512($gp)
    jalr	$t9
    nop
.L0154bae8:
    li	$a3,1
    sd	$a3,1040($sp)
    b	.L0154bb00
    nop
.L0154baf8:
    sd	$zero,1040($sp)
    sd	$zero,1040($sp)
.L0154bb00:
    ld	$v0,1040($sp)
    ld	$gp,1056($sp)
    ld	$ra,1048($sp)
    addiu	$sp,$sp,1088
    jr	$ra
    nop

glabel vfmtGetLastKonaFileStat
    addiu	$sp,$sp,-64
    sd	$ra,0($sp)
    lui	$a1,0x1f
    addiu	$a1,$a1,-4448
    addu	$at,$t9,$a1
    sw	$a0,52($sp)
    la	$a0,sub_01740000
    addiu	$a0,$a0,8648
    sd	$a0,8($sp)
    lw	$v1,52($sp)
    sd	$v1,16($sp)
    sd	$zero,24($sp)
    li	$v0,19
    sd	$v0,32($sp)
.L0154bb58:
    ld	$a3,24($sp)
    ld	$a4,8($sp)
    addu	$a4,$a3,$a4
    ld	$a4,0($a4)
    ld	$a5,16($sp)
    addu	$a5,$a3,$a5
    sd	$a4,0($a5)
    addiu	$a3,$a3,8
    sd	$a3,24($sp)
    ld	$a2,32($sp)
    addiu	$a2,$a2,-1
    sd	$a2,32($sp)
    bgtz	$a2,.L0154bb58
    nop
    li	$v0,1
    ld	$ra,0($sp)
    addiu	$sp,$sp,64
    jr	$ra
    nop

glabel vfmtReadCmp1Combination
    addiu	$sp,$sp,-1152
    sd	$gp,1112($sp)
    sd	$ra,1104($sp)
    lui	$v1,0x1f
    addiu	$v1,$v1,-4896
    addu	$gp,$t9,$v1
    sw	$a0,1140($sp)
    sw	$a1,1148($sp)
    li	$v0,1
    sw	$v0,0($sp)
    sw	$zero,4($sp)
    addiu	$at,$sp,12
    sw	$at,8($sp)
    addiu	$a0,$sp,16
    addiu	$a1,$gp,19968
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1148($sp)
    bnez	$a0,.L0154bd5c
    nop
    li	$a1,179
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,14984
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154bd5c:
    addiu	$a0,$sp,32
    lw	$a1,1140($sp)
    lw	$t9,-32496($gp)
    bal vfmtFindCmpCombinationFile
    nop
    sd	$v0,1120($sp)
    move	$a2,$v0
    sd	$a2,1128($sp)
    sw	$a2,0($sp)
    beqz	$a2,.L0154bdb4
    nop
    li	$a1,184
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15008
    lw	$a1,1140($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154bdb4:
    addiu	$a0,$sp,32
    lw	$t9,-32448($gp)
    bal SDBreadOpenDatabase
    nop
    sd	$v0,1120($sp)
    sw	$v0,4($sp)
    lw	$a2,4($sp)
    bnez	$a2,.L0154be04
    nop
    li	$a1,190
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15032
    addiu	$a1,$sp,32
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154be04:
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-7004($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,4992
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154be74
    nop
    li	$a1,193
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154be74:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-7000($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a2,1148($sp)
    addiu	$a2,$a2,255
    sw	$a2,1088($sp)
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    addiu	$a2,$sp,1088
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    sw	$v0,12($sp)
    lw	$a3,12($sp)
    bnez	$a3,.L0154bedc
    nop
    li	$a4,2
    sd	$a4,1096($sp)
    b	.L0154d4ec
    nop
.L0154bedc:
    lw	$a5,1148($sp)
    addiu	$a5,$a5,255
    lbu	$a5,0($a5)
    beqz	$a5,.L0154bf70
    nop
    lw	$a0,1148($sp)
    addiu	$a0,$a0,255
    lw	$a1,1148($sp)
    addiu	$a1,$a1,888
    lw	$t9,-32520($gp)
    bal vfmtReadCmp1OdyFormat
    nop
    sd	$v0,1120($sp)
    beqz	$v0,.L0154bf70
    nop
    lw	$a0,1148($sp)
    addiu	$a0,$a0,255
    lw	$a1,1148($sp)
    addiu	$a1,$a1,888
    lw	$t9,-32516($gp)
    bal vfmtReadCmp1SG2Format
    nop
    sd	$v0,1128($sp)
    beqz	$v0,.L0154bf70
    nop
    li	$a1,199
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15032
    lw	$a1,1148($sp)
    addiu	$a1,$a1,255
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154bf70:
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6996($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a2,1148($sp)
    sw	$a2,1088($sp)
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    addiu	$a2,$sp,1088
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    sw	$v0,12($sp)
    lw	$a3,12($sp)
    bnez	$a3,.L0154bfd0
    nop
    li	$a4,2
    sd	$a4,1096($sp)
    b	.L0154d4ec
    nop
.L0154bfd0:
    lw	$a5,1148($sp)
    lbu	$a5,0($a5)
    beqz	$a5,.L0154c030
    nop
    lw	$a0,1148($sp)
    lw	$a1,1148($sp)
    addiu	$a1,$a1,2256
    lw	$t9,-32524($gp)
    bal vfmtReadCmp1Format
    nop
    sd	$v0,1120($sp)
    beqz	$v0,.L0154c030
    nop
    li	$a1,205
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15032
    lw	$a1,1148($sp)
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c030:
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6992($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a2,1148($sp)
    addiu	$a2,$a2,510
    sw	$a2,1088($sp)
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    addiu	$a2,$sp,1088
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    sw	$v0,12($sp)
    lw	$a3,12($sp)
    bnez	$a3,.L0154c094
    nop
    li	$a4,2
    sd	$a4,1096($sp)
    b	.L0154d4ec
    nop
.L0154c094:
    lw	$a5,1148($sp)
    lbu	$a5,0($a5)
    beqz	$a5,.L0154c0fc
    nop
    lw	$a0,1148($sp)
    addiu	$a0,$a0,510
    lw	$a1,1148($sp)
    addiu	$a1,$a1,3624
    lw	$t9,-32524($gp)
    bal vfmtReadCmp1Format
    nop
    sd	$v0,1120($sp)
    beqz	$v0,.L0154c0fc
    nop
    li	$a1,211
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15032
    lw	$a1,1148($sp)
    addiu	$a1,$a1,510
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c0fc:
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6972($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,852
    li	$a3,2
    lw	$t9,-32460($gp)
    bal SDBgetSymbolValueArray
    nop
    sd	$v0,1120($sp)
    sw	$v0,12($sp)
    lw	$a3,12($sp)
    bnez	$a3,.L0154c164
    nop
    lw	$a5,8($sp)
    sw	$zero,0($a5)
    li	$a4,2
    sd	$a4,1096($sp)
    b	.L0154d4ec
    nop
.L0154c164:
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6988($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,768
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c1d4
    nop
    li	$a1,215
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c1d4:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6980($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,772
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c248
    nop
    li	$a1,216
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c248:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6984($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,776
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c2bc
    nop
    li	$a1,217
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c2bc:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6976($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,780
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c330
    nop
    li	$a1,218
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c330:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6952($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,848
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c3a4
    nop
    li	$a1,219
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c3a4:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6936($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,860
    li	$a3,3
    lw	$t9,-32460($gp)
    bal SDBgetSymbolValueArray
    nop
    sd	$v0,1120($sp)
    sw	$v0,12($sp)
    lw	$a3,12($sp)
    bnez	$a3,.L0154c410
    nop
    lw	$a5,8($sp)
    sw	$zero,0($a5)
    li	$a4,2
    sd	$a4,1096($sp)
    b	.L0154d4ec
    nop
.L0154c410:
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6940($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,872
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c480
    nop
    li	$a1,221
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c480:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6948($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,876
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c4f4
    nop
    li	$a1,222
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c4f4:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6944($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,880
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c568
    nop
    li	$a1,223
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c568:
    nop
    lw	$a2,1148($sp)
    lh	$a2,4992($a2)
    blez	$a2,.L0154d278
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6928($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5260
    li	$a3,2
    lw	$t9,-32460($gp)
    bal SDBgetSymbolValueArray
    nop
    sd	$v0,1120($sp)
    sw	$v0,12($sp)
    lw	$a3,12($sp)
    bnez	$a3,.L0154c5e4
    nop
    lw	$a5,8($sp)
    sw	$zero,0($a5)
    li	$a4,2
    sd	$a4,1096($sp)
    b	.L0154d4ec
    nop
.L0154c5e4:
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6924($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5268
    li	$a3,2
    lw	$t9,-32460($gp)
    bal SDBgetSymbolValueArray
    nop
    sd	$v0,1120($sp)
    sw	$v0,12($sp)
    lw	$a3,12($sp)
    bnez	$a3,.L0154c64c
    nop
    lw	$a5,8($sp)
    sw	$zero,0($a5)
    li	$a4,2
    sd	$a4,1096($sp)
    b	.L0154d4ec
    nop
.L0154c64c:
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6920($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5252
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c6bc
    nop
    li	$a1,229
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c6bc:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6916($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5256
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c730
    nop
    li	$a1,230
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c730:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6912($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5276
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c7a4
    nop
    li	$a1,231
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c7a4:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6908($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5280
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c818
    nop
    li	$a1,232
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c818:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6904($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5284
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c88c
    nop
    li	$a1,233
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c88c:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6900($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5288
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c900
    nop
    li	$a1,234
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c900:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6896($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5292
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c974
    nop
    li	$a1,235
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c974:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6892($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5296
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154c9e8
    nop
    li	$a1,236
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154c9e8:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6888($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5300
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154ca5c
    nop
    li	$a1,237
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154ca5c:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6892($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5304
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154cad0
    nop
    li	$a1,238
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154cad0:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6880($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5308
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154cb44
    nop
    li	$a1,239
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154cb44:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6876($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5312
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154cbb8
    nop
    li	$a1,240
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154cbb8:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6856($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5332
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154cc2c
    nop
    li	$a1,241
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154cc2c:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6852($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5336
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154cca0
    nop
    li	$a1,242
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154cca0:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6848($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5340
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154cd14
    nop
    li	$a1,243
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154cd14:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6844($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5344
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154cd88
    nop
    li	$a1,244
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154cd88:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6840($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5348
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154cdfc
    nop
    li	$a1,245
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154cdfc:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6836($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5352
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154ce70
    nop
    li	$a1,246
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154ce70:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6832($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5356
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154cee4
    nop
    li	$a1,247
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154cee4:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6828($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5356
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154cf58
    nop
    li	$a1,248
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154cf58:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6824($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5364
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154cfcc
    nop
    li	$a1,249
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154cfcc:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6820($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5364
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154d040
    nop
    li	$a1,250
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154d040:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6872($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5316
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154d0b4
    nop
    li	$a1,251
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154d0b4:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6864($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5328
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154d128
    nop
    li	$a1,252
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154d128:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6868($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5320
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154d19c
    nop
    li	$a1,253
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154d19c:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6860($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    addiu	$a2,$a2,5324
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154d210
    nop
    li	$a1,254
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154d210:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6932($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a2,1148($sp)
    addiu	$a2,$a2,4996
    sw	$a2,1088($sp)
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    addiu	$a2,$sp,1088
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    sw	$v0,12($sp)
    lw	$a3,12($sp)
    bnez	$a3,.L0154d278
    nop
    li	$a4,2
    sd	$a4,1096($sp)
    b	.L0154d4ec
    nop
.L0154d278:
    sw	$zero,1092($sp)
    lw	$a5,1092($sp)
    slti	$a5,$a5,4
    beqz	$a5,.L0154d4c4
    nop
.L0154d28c:
    addiu	$a0,$sp,16
    la	$a1,sub_01720000
    addiu	$a1,$a1,15080
    lw	$a2,1092($sp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6968($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    lw	$a3,1092($sp)
    sll	$a3,$a3,0x4
    addu	$a2,$a2,$a3
    addiu	$a2,$a2,784
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154d324
    nop
    li	$a1,262
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154d324:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6964($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    lw	$a3,1092($sp)
    sll	$a3,$a3,0x4
    addu	$a2,$a2,$a3
    addiu	$a2,$a2,792
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154d3a4
    nop
    li	$a1,263
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154d3a4:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6960($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    lw	$a3,1092($sp)
    sll	$a3,$a3,0x4
    addu	$a2,$a2,$a3
    addiu	$a2,$a2,788
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154d424
    nop
    li	$a1,264
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154d424:
    nop
    addiu	$a0,$sp,1056
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,16
    lw	$a3,-6956($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,4($sp)
    addiu	$a1,$sp,1056
    lw	$a2,1148($sp)
    lw	$a3,1092($sp)
    sll	$a3,$a3,0x4
    addu	$a2,$a2,$a3
    addiu	$a2,$a2,796
    lw	$t9,-32456($gp)
    bal SDBgetSymbolValueScalar
    nop
    sd	$v0,1120($sp)
    bnez	$v0,.L0154d4a4
    nop
    li	$a1,265
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15056
    addiu	$a1,$sp,1056
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154d4e0
    nop
.L0154d4a4:
    nop
    lw	$a3,1092($sp)
    addiu	$a3,$a3,1
    sw	$a3,1092($sp)
    lw	$a2,1092($sp)
    slti	$a2,$a2,4
    bnez	$a2,.L0154d28c
    nop
.L0154d4c4:
    lw	$a0,4($sp)
    lw	$t9,-32452($gp)
    bal SDBcloseReadDatabase
    nop
    sd	$zero,1096($sp)
    b	.L0154d4ec
    nop
.L0154d4e0:
    li	$a4,2
    sd	$a4,1096($sp)
    sd	$a4,1096($sp)
.L0154d4ec:
    ld	$v0,1096($sp)
    ld	$gp,1112($sp)
    ld	$ra,1104($sp)
    addiu	$sp,$sp,1152
    jr	$ra
    nop

glabel vfmtWriteCmp1Combination
    addiu	$sp,$sp,-1248
    sd	$gp,1216($sp)
    sd	$ra,1208($sp)
    lui	$at,0x1f
    addiu	$at,$at,-11088
    addu	$gp,$t9,$at
    sw	$a0,1236($sp)
    sw	$a1,1244($sp)
    addiu	$a0,$sp,0
    addiu	$a1,$gp,19968
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$v0,1244($sp)
    bnez	$v0,.L0154d578
    nop
    li	$a1,292
    sw	$a1,-7008($gp)
    la	$a0,sub_01720000
    addiu	$a0,$a0,15096
    lw	$t9,-32744($gp)
    addiu	$t9,$t9,-17488
    bal vfmtGetLastKonaFileStat
    nop
    b	.L0154e908
    nop
.L0154d578:
    li	$a3,1
    sh	$a3,16($sp)
    li	$a2,1
    sh	$a2,18($sp)
    addiu	$a0,$sp,24
    la	$a1,sub_01720000
    addiu	$a1,$a1,15136
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    addiu	$a0,$sp,128
    lw	$a1,1236($sp)
    lw	$t9,-32496($gp)
    bal vfmtFindCmpCombinationFile
    nop
    addiu	$a0,$sp,128
    addiu	$a1,$sp,16
    addiu	$a2,$sp,24
    lw	$t9,-32472($gp)
    bal SDBopenNewDatabase
    nop
    sd	$v0,1224($sp)
    sw	$v0,1152($sp)
    lw	$a4,1152($sp)
    bnez	$a4,.L0154d5f0
    nop
    li	$a5,1
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154d5f0:
    lw	$a0,1152($sp)
    lw	$a1,-7004($gp)
    li	$a2,7
    addiu	$a3,$sp,16
    la	$a4,xdr_u_short
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a0,1152($sp)
    la	$a1,sub_01720000
    addiu	$a1,$a1,15168
    li	$a2,7
    addiu	$a3,$sp,18
    la	$a4,xdr_u_short
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    li	$a2,1
    sw	$a2,1156($sp)
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-7000($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a3,1244($sp)
    addiu	$a3,$a3,255
    sw	$a3,1192($sp)
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,15
    addiu	$a3,$sp,1192
    la	$a4,xdr_string
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154d6b8
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154d6b8:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6996($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a6,1244($sp)
    sw	$a6,1192($sp)
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,15
    addiu	$a3,$sp,1192
    la	$a4,xdr_string
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a7,1156($sp)
    bnez	$a7,.L0154d720
    nop
    li	$t0,2
    sd	$t0,1200($sp)
    b	.L0154e914
    nop
.L0154d720:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6992($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$t1,1244($sp)
    addiu	$t1,$t1,510
    sw	$t1,1192($sp)
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,15
    addiu	$a3,$sp,1192
    la	$a4,xdr_string
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$t2,1156($sp)
    bnez	$t2,.L0154d78c
    nop
    li	$t3,2
    sd	$t3,1200($sp)
    b	.L0154e914
    nop
.L0154d78c:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6972($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    li	$a3,2
    lw	$a4,1244($sp)
    addiu	$a4,$a4,852
    la	$a5,xdr_int
    lw	$t9,-32484($gp)
    bal SDBaddNewArraySymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a5,1156($sp)
    bnez	$a5,.L0154d7f4
    nop
    li	$a6,2
    sd	$a6,1200($sp)
    b	.L0154e914
    nop
.L0154d7f4:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6936($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,10
    li	$a3,3
    lw	$a4,1244($sp)
    addiu	$a4,$a4,860
    la	$a5,xdr_bool
    lw	$t9,-32484($gp)
    bal SDBaddNewArraySymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a5,1156($sp)
    bnez	$a5,.L0154d85c
    nop
    li	$a6,2
    sd	$a6,1200($sp)
    b	.L0154e914
    nop
.L0154d85c:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6988($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,768
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154d8c0
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154d8c0:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6980($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,772
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154d924
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154d924:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6984($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,776
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154d988
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154d988:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6948($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,880
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154d9ec
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154d9ec:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6944($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,876
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154da50
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154da50:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6940($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,872
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154dab4
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154dab4:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6976($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,780
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154db18
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154db18:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6952($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,848
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154db7c
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154db7c:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6928($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    li	$a3,2
    lw	$a4,1244($sp)
    addiu	$a4,$a4,5260
    la	$a5,xdr_int
    lw	$t9,-32484($gp)
    bal SDBaddNewArraySymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a5,1156($sp)
    bnez	$a5,.L0154dbe4
    nop
    li	$a6,2
    sd	$a6,1200($sp)
    b	.L0154e914
    nop
.L0154dbe4:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6924($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    li	$a3,2
    lw	$a4,1244($sp)
    addiu	$a4,$a4,5268
    la	$a5,xdr_int
    lw	$t9,-32484($gp)
    bal SDBaddNewArraySymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a5,1156($sp)
    bnez	$a5,.L0154dc4c
    nop
    li	$a6,2
    sd	$a6,1200($sp)
    b	.L0154e914
    nop
.L0154dc4c:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6920($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5252
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154dcb0
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154dcb0:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6916($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5256
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154dd14
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154dd14:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6912($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5276
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154dd78
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154dd78:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6908($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5280
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154dddc
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154dddc:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6904($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5284
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154de40
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154de40:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6900($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5288
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154dea4
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154dea4:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6896($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5292
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154df08
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154df08:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6892($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5296
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154df6c
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154df6c:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6888($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5300
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154dfd0
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154dfd0:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6884($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5304
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e034
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e034:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6880($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5308
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e098
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e098:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6876($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5312
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e0fc
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e0fc:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6872($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5316
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e160
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e160:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6864($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,16
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5328
    la	$a4,xdr_float
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e1c4
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e1c4:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6868($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5320
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e228
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e228:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6860($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5324
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e28c
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e28c:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6932($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a6,1244($sp)
    addiu	$a6,$a6,4996
    sw	$a6,1192($sp)
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,15
    addiu	$a3,$sp,1192
    la	$a4,xdr_string
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a7,1156($sp)
    bnez	$a7,.L0154e2f8
    nop
    li	$t0,2
    sd	$t0,1200($sp)
    b	.L0154e914
    nop
.L0154e2f8:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6856($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5332
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e35c
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e35c:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6852($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5336
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e3c0
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e3c0:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6848($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5340
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e424
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e424:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6844($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5344
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e488
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e488:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6840($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5348
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e4ec
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e4ec:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6836($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5352
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e550
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e550:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6832($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5356
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e5b4
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e5b4:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6828($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5356
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e618
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e618:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6824($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5364
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e67c
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e67c:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6820($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    addiu	$a3,$a3,5364
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a4,1156($sp)
    bnez	$a4,.L0154e6e0
    nop
    li	$a5,2
    sd	$a5,1200($sp)
    b	.L0154e914
    nop
.L0154e6e0:
    sw	$zero,1196($sp)
    lw	$a6,1196($sp)
    slti	$a6,$a6,4
    beqz	$a6,.L0154e8ec
    nop
.L0154e6f4:
    addiu	$a0,$sp,0
    la	$a1,sub_01720000
    addiu	$a1,$a1,15080
    lw	$a2,1196($sp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6968($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    lw	$a4,1196($sp)
    sll	$a4,$a4,0x4
    addu	$a3,$a3,$a4
    addiu	$a3,$a3,784
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a5,1156($sp)
    bnez	$a5,.L0154e780
    nop
    li	$a6,2
    sd	$a6,1200($sp)
    b	.L0154e914
    nop
.L0154e780:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6964($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    lw	$a4,1196($sp)
    sll	$a4,$a4,0x4
    addu	$a3,$a3,$a4
    addiu	$a3,$a3,792
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a5,1156($sp)
    bnez	$a5,.L0154e7f0
    nop
    li	$a6,2
    sd	$a6,1200($sp)
    b	.L0154e914
    nop
.L0154e7f0:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6960($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    lw	$a4,1196($sp)
    sll	$a4,$a4,0x4
    addu	$a3,$a3,$a4
    addiu	$a3,$a3,788
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a5,1156($sp)
    bnez	$a5,.L0154e860
    nop
    li	$a6,2
    sd	$a6,1200($sp)
    b	.L0154e914
    nop
.L0154e860:
    addiu	$a0,$sp,1160
    addiu	$a1,$gp,19976
    addiu	$a2,$sp,0
    lw	$a3,-6956($gp)
    lw	$t9,-28520($gp)
    jalr	$t9
    nop
    lw	$a0,1152($sp)
    addiu	$a1,$sp,1160
    li	$a2,2
    lw	$a3,1244($sp)
    lw	$a4,1196($sp)
    sll	$a4,$a4,0x4
    addu	$a3,$a3,$a4
    addiu	$a3,$a3,796
    la	$a4,xdr_int
    lw	$t9,-32480($gp)
    bal SDBaddNewScalarSymbol
    nop
    sd	$v0,1224($sp)
    sw	$v0,1156($sp)
    lw	$a5,1156($sp)
    bnez	$a5,.L0154e8d0
    nop
    li	$a6,2
    sd	$a6,1200($sp)
    b	.L0154e914
    nop
.L0154e8d0:
    lw	$t0,1196($sp)
    addiu	$t0,$t0,1
    sw	$t0,1196($sp)
    lw	$a7,1196($sp)
    slti	$a7,$a7,4
    bnez	$a7,.L0154e6f4
    nop
.L0154e8ec:
    lw	$a0,1152($sp)
    lw	$t9,-32476($gp)
    bal SDBcloseNewDatabase
    nop
    sd	$zero,1200($sp)
    b	.L0154e914
    nop
.L0154e908:
    li	$t1,2
    sd	$t1,1200($sp)
    sd	$t1,1200($sp)
.L0154e914:
    ld	$v0,1200($sp)
    ld	$gp,1216($sp)
    ld	$ra,1208($sp)
    addiu	$sp,$sp,1248
    jr	$ra
    nop

