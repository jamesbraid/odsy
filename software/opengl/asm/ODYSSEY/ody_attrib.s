# Source: ../ODYSSEY/ody_attrib.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_attrib.c
# Total Functions: 44

.text

# Function: ValidateColorMaterial
# Declared: Line 35 (Source lines: 35-145)
# Address: 0x0d9565c0 - 0x0d956828 (Size: 616 bytes, Frame: 192)
.ent ValidateColorMaterial
ValidateColorMaterial:
    # Line 35
    addiu	$sp,$sp,-64
    sd	$s1,56($sp)
    sd	$ra,48($sp)
    sd	$s2,40($sp)
    # Line 43
    lw	$at,1792($a0)
    # Line 35
    sd	$s3,32($sp)
    sd	$s0,16($sp)
    # Line 43
    lui	$a3,0x1
    andi	$at,$at,0x80
    # Line 35
    sd	$s4,24($sp)
    # Line 43
    addu	$s4,$a3,$a0
    # Line 35
    move	$s0,$a0
    # Line 43
    beqz	$at,.L0d9567f8
    lw	$s3,27004($s4)
    # Line 48
    lw	$a2,1384($a0)
    li	$v0,1028
    beq	$a2,$v0,.L0d956808
    li	$v1,1029
    beq	$a2,$v1,.L0d956818
    # Line 54
    li	$a0,16
    # Line 48
    li	$a1,1032
    xor	$a1,$a2,$a1
    # Line 57
    li	$a3,17
    # Line 48
    move	$a0,$zero
    movz	$a0,$a3,$a1
.L0d956624:
    # Line 60
    lw	$a2,1388($s0)
.L0d956628:
    li	$a3,5632
    beq	$a2,$a3,.L0d956810
    li	$a4,4610
    beq	$a2,$a4,.L0d956664
    # Line 66
    li	$a3,4
    # Line 60
    li	$a5,4608
    beq	$a2,$a5,.L0d956820
    li	$a6,4609
    beq	$a2,$a6,.L0d956664
    # Line 72
    li	$a3,2
    # Line 60
    li	$a7,5634
    xor	$a7,$a2,$a7
    # Line 75
    li	$t0,3
    # Line 60
    move	$a3,$zero
    movz	$a3,$t0,$a7
.L0d956664:
    # Line 78
    mult	$a3,$a0
    mflo	$s2
    xor	$t0,$s3,$s2
    beqz	$t0,.L0d9567dc
    ld	$s1,56($sp)
    # Line 93
    lw	$t9,6132($s0)
.L0d95667c:
    lw	$t9,496($t9)
    addiu	$a1,$sp,0
    jalr	$t9
    li	$a0,2816
    nor	$s1,$s2,$zero
    and	$s1,$s3,$s1
    beqz	$s1,.L0d956794
    andi	$t8,$s1,0x1
    beqz	$t8,.L0d9566bc
    # Line 105
    andi	$t9,$s1,0x2
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    addiu	$a2,$sp,0
    li	$a1,4608
    bal __glOdyim_Materialfv
    li	$a0,1028
    andi	$t9,$s1,0x2
.L0d9566bc:
    beqz	$t9,.L0d9566dc
    # Line 107
    andi	$ra,$s1,0x4
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    addiu	$a2,$sp,0
    li	$a1,4609
    bal __glOdyim_Materialfv
    li	$a0,1028
    andi	$ra,$s1,0x4
.L0d9566dc:
    beqz	$ra,.L0d9566fc
    # Line 109
    andi	$at,$s1,0x8
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    addiu	$a2,$sp,0
    li	$a1,4610
    bal __glOdyim_Materialfv
    li	$a0,1028
    andi	$at,$s1,0x8
.L0d9566fc:
    beqz	$at,.L0d95671c
    # Line 111
    andi	$v0,$s1,0x10
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    addiu	$a2,$sp,0
    li	$a1,5632
    bal __glOdyim_Materialfv
    li	$a0,1028
    andi	$v0,$s1,0x10
.L0d95671c:
    beqz	$v0,.L0d95673c
    # Line 114
    andi	$v1,$s1,0x20
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    addiu	$a2,$sp,0
    li	$a1,4608
    bal __glOdyim_Materialfv
    li	$a0,1029
    andi	$v1,$s1,0x20
.L0d95673c:
    beqz	$v1,.L0d95675c
    # Line 116
    andi	$a0,$s1,0x40
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    addiu	$a2,$sp,0
    li	$a1,4609
    bal __glOdyim_Materialfv
    li	$a0,1029
    andi	$a0,$s1,0x40
.L0d95675c:
    beqz	$a0,.L0d95677c
    # Line 118
    andi	$a1,$s1,0x80
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    addiu	$a2,$sp,0
    li	$a1,4610
    bal __glOdyim_Materialfv
    li	$a0,1029
    andi	$a1,$s1,0x80
.L0d95677c:
    beqz	$a1,.L0d956794
    # Line 120
    nop	# was lw $t9, -32412($gp) # &__glOdyim_Materialfv
    addiu	$a2,$sp,0
    li	$a1,5632
    bal __glOdyim_Materialfv
    li	$a0,1029
.L0d956794:
    # Line 123
    sw	$s2,27004($s4)
    lbu	$a2,3220($s0)
    beqz	$a2,.L0d9567d0
    # Line 143
    nop	# was lw $t9, -17976($gp) # &__glOdyim_Color4fv
    # Line 138
    andi	$a3,$s2,0x3ff
    sra	$a5,$s2,0xa
    lui	$a4,0x3500
    sll	$a5,$a5,0x17
    ori	$a4,$a4,0x8000
    or	$a3,$a3,$a5
    # Line 129
    sw	$s2,-24024($s4)
    # Line 138
    or	$a3,$a3,$a4
    lui	$a4,0x1
    sw	$a3,0($a4)
    # Line 143
    # lw $t9, -17976($gp) # &__glOdyim_Color4fv
.L0d9567d0:
    jal	__glOdyim_Color4fv
    addiu	$a0,$sp,0
.L0d9567d8:
    ld	$s1,56($sp)
.L0d9567dc:
    ld	$s2,40($sp)
    ld	$ra,48($sp)
    # Line 145
    ld	$s0,16($sp)
    ld	$s3,32($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9567f8:
    # Line 105
    beqz	$s3,.L0d9567d8
    move	$s2,$zero
    b	.L0d95667c
    # Line 93
    lw	$t9,6132($s0)
.L0d956808:
    b	.L0d956624
    # Line 50
    li	$a0,1
.L0d956810:
    b	.L0d956664
    # Line 62
    li	$a3,8
.L0d956818:
    # Line 54
    b	.L0d956628
    # Line 60
    lw	$a2,1388($s0)
.L0d956820:
    # Line 69
    b	.L0d956664
    li	$a3,1
.end ValidateColorMaterial

# Function: __glOdyim_IsEnabled
# Declared: Line 147 (Source lines: 148-188)
# Address: 0x0d956830 - 0x0d956ad8 (Size: 680 bytes, Frame: 16)
.globl __glOdyim_IsEnabled
.ent __glOdyim_IsEnabled
__glOdyim_IsEnabled:
    # Line 149
    lw	$v0,4120($zero)
    li	$a4,1
    # Line 148
    lui	$at,0x1a
    # Line 149
    lw	$a3,4112($zero)
    # Line 148
    addiu	$sp,$sp,-16
    addiu	$at,$at,7520
    sd	$gp,0($sp)
    # Line 149
    beq	$v0,$a4,.L0d956abc
    # Line 148
    addu	$gp,$t9,$at
    # Line 151
    li	$v0,0x8401
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0d9568ac
    sltu	$a1,$v0,$a0
    beqz	$a1,.L0d9569a8
    li	$v0,0x8410
    sltu	$a2,$a0,$v0
    bnez	$a2,.L0d9568f4
    sltu	$a5,$v0,$a0
    beqz	$a5,.L0d956974
    li	$a1,0x8411
    li	$v0,0x8412
    sltu	$a6,$a0,$v0
    li	$t0,0x8413
    bnez	$a6,.L0d956970
    sltu	$a7,$v0,$a0
    beqz	$a7,.L0d956978
    # Line 171
    lui	$v0,0x1
    # Line 151
    beq	$a0,$t0,.L0d956978
    # Line 171
    lui	$v0,0x1
    b	.L0d956918
    sd	$ra,8($sp)
.L0d9568ac:
    # Line 151
    li	$v0,0x835c
    sltu	$t1,$a0,$v0
    bnez	$t1,.L0d956940
    sltu	$t2,$v0,$a0
    beqz	$t2,.L0d956a34
    li	$v0,0x83ee
    sltu	$t3,$a0,$v0
    bnez	$t3,.L0d956a0c
    li	$t9,0x8400
    sltu	$t8,$v0,$a0
    beqz	$t8,.L0d956aa8
    nop
    bne	$a0,$t9,.L0d95691c
    # Line 188
    nop	# was lw $t9, -27312($gp) # &__glim_IsEnabled
    # Line 159
    lw	$a0,1796($a3)
    andi	$a0,$a0,0x1000
    b	.L0d956930
    sltu	$a0,$zero,$a0
.L0d9568f4:
    # Line 151
    li	$v0,0x840e
    sltu	$a1,$a0,$v0
    bnez	$a1,.L0d9569ec
    li	$a5,0x840f
    sltu	$a2,$v0,$a0
    beqz	$a2,.L0d956978
    # Line 171
    lui	$v0,0x1
    # Line 151
    beq	$a0,$a5,.L0d956978
    # Line 171
    lui	$v0,0x1
.L0d956918:
    # Line 188
    # lw $t9, -27312($gp) # &__glim_IsEnabled
.L0d95691c:
    sd	$ra,8($sp)
    jal	__glim_IsEnabled
    nop
    ld	$ra,8($sp)
    move	$a0,$v0
.L0d956930:
    move	$v0,$a0
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d956940:
    # Line 151
    li	$v0,0x832c
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0d9569c0
    sltu	$a7,$v0,$a0
    beqz	$a7,.L0d956a98
    li	$t0,0x8353
    bne	$a0,$t0,.L0d95691c
    # Line 188
    nop	# was lw $t9, -27312($gp) # &__glim_IsEnabled
    # Line 173
    lw	$a0,1796($a3)
    andi	$a0,$a0,0x4000
    b	.L0d956930
    sltu	$a0,$zero,$a0
.L0d956970:
    # Line 151
    bne	$a0,$a1,.L0d956918
.L0d956974:
    # Line 171
    lui	$v0,0x1
.L0d956978:
    lui	$v1,0xffff
    ori	$v0,$v0,0x647c
    ori	$v1,$v1,0x7bf4
    addu	$v0,$v0,$a3
    addu	$v1,$a0,$v1
    lw	$v0,0($v0)
    sllv	$v1,$a4,$v1
    # Line 188
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 171
    and	$v0,$v0,$v1
    # Line 188
    jr	$ra
    # Line 171
    sltu	$v0,$zero,$v0
.L0d9569a8:
    # Line 161
    lw	$v0,1796($a3)
    # Line 188
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 161
    andi	$v0,$v0,0x2000
    # Line 188
    jr	$ra
    # Line 161
    sltu	$v0,$zero,$v0
.L0d9569c0:
    # Line 151
    li	$v0,0x8198
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0d956a4c
    # Line 155
    lui	$a1,0x1
    # Line 151
    sltu	$a1,$v0,$a0
    bnez	$a1,.L0d95691c
    # Line 188
    nop	# was lw $t9, -27312($gp) # &__glim_IsEnabled
    # Line 157
    lw	$a0,1796($a3)
    andi	$a0,$a0,0x10
    b	.L0d956930
    sltu	$a0,$zero,$a0
.L0d9569ec:
    # Line 151
    li	$v0,0x840d
    sltu	$a1,$a0,$v0
    bnez	$a1,.L0d956a68
    sltu	$a2,$v0,$a0
    beqz	$a2,.L0d956978
    # Line 171
    lui	$v0,0x1
    b	.L0d956918
    sd	$ra,8($sp)
.L0d956a0c:
    # Line 151
    li	$v0,0x835e
    sltu	$a4,$a0,$v0
    bnez	$a4,.L0d956a7c
    sltu	$a5,$v0,$a0
    bnez	$a5,.L0d95691c
    # Line 188
    nop	# was lw $t9, -27312($gp) # &__glim_IsEnabled
    # Line 179
    lw	$a0,1816($a3)
    andi	$a0,$a0,0x4
    b	.L0d956930
    sltu	$a0,$zero,$a0
.L0d956a34:
    # Line 175
    lw	$v0,1816($a3)
    # Line 188
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 175
    andi	$v0,$v0,0x1
    # Line 188
    jr	$ra
    # Line 175
    sltu	$v0,$zero,$v0
.L0d956a4c:
    # Line 151
    li	$v1,0x803a
    bne	$a0,$v1,.L0d95691c
    # Line 188
    nop	# was lw $t9, -27312($gp) # &__glim_IsEnabled
    # Line 155
    lw	$a0,1796($a3)
    and	$a0,$a0,$a1
    b	.L0d956930
    sltu	$a0,$zero,$a0
.L0d956a68:
    # Line 151
    li	$a2,0x840c
    bne	$a0,$a2,.L0d95691c
    # Line 188
    nop	# was lw $t9, -27312($gp) # &__glim_IsEnabled
    b	.L0d956978
    # Line 171
    lui	$v0,0x1
.L0d956a7c:
    # Line 151
    li	$a4,0x835d
    bne	$a0,$a4,.L0d95691c
    # Line 188
    nop	# was lw $t9, -27312($gp) # &__glim_IsEnabled
    # Line 177
    lw	$a0,1816($a3)
    andi	$a0,$a0,0x2
    b	.L0d956930
    sltu	$a0,$zero,$a0
.L0d956a98:
    # Line 181
    lw	$a0,1816($a3)
    andi	$a0,$a0,0x8
    b	.L0d956930
    sltu	$a0,$zero,$a0
.L0d956aa8:
    # Line 153
    lui	$a0,0x1
    ori	$a0,$a0,0x9db4
    addu	$a0,$a0,$a3
    b	.L0d956930
    lbu	$a0,0($a0)
.L0d956abc:
    # Line 149
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    b	.L0d956930
    move	$a0,$zero
.end __glOdyim_IsEnabled

# Function: __glOdyim_Hint
# Declared: Line 193 (Source lines: 194-220)
# Address: 0x0d956ae0 - 0x0d956bbc (Size: 220 bytes, Frame: 16)
.globl __glOdyim_Hint
.ent __glOdyim_Hint
__glOdyim_Hint:
    # Line 206
    li	$a6,0x83ef
    # Line 194
    addiu	$sp,$sp,-16
    # Line 195
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$a4,1
    # Line 194
    lui	$v0,0x1a
    # Line 197
    li	$a2,4353
    sd	$ra,8($sp)
    # Line 194
    addiu	$v0,$v0,6832
    sd	$gp,0($sp)
    # Line 195
    beq	$at,$a4,.L0d956ba8
    # Line 194
    addu	$gp,$t9,$v0
    # Line 197
    li	$v1,4352
    beq	$a1,$v1,.L0d956b3c
    nop
    beq	$a1,$a2,.L0d956b3c
    li	$a5,4354
    beq	$a1,$a5,.L0d956b3c
    # Line 203
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d956b54
    ld	$ra,8($sp)
.L0d956b3c:
    # Line 206
    beq	$a0,$a6,.L0d956b60
    # Line 212
    lui	$a5,0x1
    # Line 218
    # lw $t9, -27436($gp) # &__glim_Hint
    jal	__glim_Hint
    nop
.L0d956b50:
    ld	$ra,8($sp)
.L0d956b54:
    # Line 220
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d956b60:
    # Line 208
    lui	$a0,0x2
    addu	$a0,$a3,$a0
    lw	$a7,-25160($a0)
    ld	$ra,8($sp)
    # Line 220
    ld	$gp,0($sp)
    # Line 208
    beq	$a7,$a1,.L0d956b50
    # Line 209
    lbu	$a2,-25164($a0)
    # Line 212
    addu	$a5,$a3,$a5
    li	$a3,2
    # Line 209
    beqz	$a2,.L0d956b50
    sw	$a1,-25160($a0)
    # Line 211
    sb	$a4,-25152($a0)
    # Line 212
    lw	$a4,26980($a5)
    ori	$a4,$a4,0x400
    sw	$a4,26980($a5)
    # Line 220
    addiu	$sp,$sp,16
    jr	$ra
    # Line 212
    sw	$a3,4120($zero)
.L0d956ba8:
    # Line 195
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d956b54
    ld	$ra,8($sp)
.end __glOdyim_Hint

# Function: __glOdyim_Enable
# Declared: Line 224 (Source lines: 224-598)
# Address: 0x0d956bc0 - 0x0d957ef8 (Size: 4920 bytes, Frame: 32)
.globl __glOdyim_Enable
.ent __glOdyim_Enable
__glOdyim_Enable:
    # Line 228
    lw	$v0,4120($zero)
    li	$a5,1
    # Line 224
    lui	$at,0x1a
    # Line 228
    lw	$a2,4112($zero)
    # Line 224
    addiu	$sp,$sp,-32
    addiu	$at,$at,6608
    sd	$gp,8($sp)
    # Line 228
    beq	$v0,$a5,.L0d957470
    # Line 224
    addu	$gp,$t9,$at
    # Line 236
    sltiu	$a3,$a0,12291
    bnez	$a3,.L0d956c4c
    sltiu	$v0,$a0,12292
    bnez	$v0,.L0d956d98
    li	$a3,0x8079
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0d956d0c
    sltu	$a1,$a3,$a0
    beqz	$a1,.L0d95713c
    li	$a3,0x83ee
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d956f68
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d957164
    li	$a3,0x840f
    lui	$a0,0x2
    addu	$a0,$a2,$a0
    lbu	$a7,-25164($a0)
    beqz	$a7,.L0d957850
.L0d956c30:
    # Line 593
    nop	# was lw $t9, -32160($gp) # &__glOdysseyFindWindowSize
    sd	$a2,0($sp)
    sd	$ra,16($sp)
    jal	__glOdysseyFindWindowSize
    ld	$a0,0($sp)
    b	.L0d956df4
    ld	$ra,16($sp)
.L0d956c4c:
    # Line 236
    sltiu	$a4,$a0,3473
    bnez	$a4,.L0d956cbc
    sltiu	$t2,$a0,3008
    sltiu	$a1,$a0,3474
    bnez	$a1,.L0d956f48
    # Line 437
    addiu	$t8,$a0,-3472
    # Line 236
    sltiu	$a4,$a0,3508
    bnez	$a4,.L0d956eec
    nop
    sltiu	$a4,$a0,3509
    bnez	$a4,.L0d9572d4
    # Line 446
    addiu	$a6,$a0,-3504
    # Line 236
    sltiu	$a4,$a0,3553
    bnez	$a4,.L0d957260
    sltiu	$a6,$a0,3554
    bnez	$a6,.L0d957ac0
    sltiu	$a7,$a0,12288
    bnez	$a7,.L0d957710
    sltiu	$v1,$a0,10754
    sltiu	$t0,$a0,12289
    bnez	$t0,.L0d956d98
    sltiu	$t1,$a0,12290
    bnez	$t1,.L0d957d6c
    li	$t0,12289
    bnez	$a3,.L0d956d98
    nop
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d956cbc:
    bnez	$t2,.L0d956e00
    sltiu	$t3,$a0,3009
    bnez	$t3,.L0d957350
    sltiu	$t8,$a0,3168
    bnez	$t8,.L0d9570d8
    sltiu	$at,$a0,3057
    sltiu	$t9,$a0,3169
    bnez	$t9,.L0d957818
    sltiu	$a3,$a0,3171
    bnez	$a3,.L0d9575d0
    sltiu	$t9,$a0,3170
    sltiu	$at,$a0,3172
    bnez	$at,.L0d957de8
    sltiu	$v0,$a0,3472
    bnez	$v0,.L0d957c50
    li	$a3,3456
    bnez	$a4,.L0d956f48
    # Line 437
    addiu	$t8,$a0,-3472
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d956d0c:
    # Line 236
    li	$a3,0x8011
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0d956e78
    sltu	$a1,$a3,$a0
    beqz	$a1,.L0d957440
    li	$a3,0x806f
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d9571fc
    sltu	$a5,$a3,$a0
    beqz	$a5,.L0d957a88
    li	$a3,0x8076
    sltu	$a6,$a0,$a3
    bnez	$a6,.L0d9576d0
    sltu	$a7,$a3,$a0
    beqz	$a7,.L0d957e9c
    li	$a3,0x8078
    sltu	$t0,$a0,$a3
    bnez	$t0,.L0d957d44
    li	$a4,0x8077
    sltu	$t1,$a3,$a0
    bnez	$t1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 493
    lw	$t8,5416($a2)
    # Line 492
    lw	$t2,5404($a2)
    # Line 493
    ori	$t8,$t8,0x4
    sw	$t8,5416($a2)
    # Line 492
    lui	$t3,0x7f0
    or	$t2,$t2,$t3
    # Line 493
    b	.L0d956df4
    # Line 492
    sw	$t2,5404($a2)
.L0d956d84:
    # Line 236
    bnez	$t9,.L0d957764
    li	$a7,12292
    sltiu	$at,$a0,12294
    beqz	$at,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d956d98:
    # Line 403
    lw	$a1,1804($a2)
.L0d956d9c:
    addiu	$a3,$a0,-12288
    # Line 404
    lui	$a0,0x1
    # Line 403
    sllv	$a3,$a5,$a3
    # Line 404
    addu	$a0,$a2,$a0
    # Line 403
    or	$a1,$a1,$a3
    sw	$a1,1804($a2)
    # Line 404
    lw	$v1,26980($a0)
    # Line 598
    ld	$gp,8($sp)
    # Line 404
    li	$v0,2
    ori	$v1,$v1,0x510
    sw	$v1,26980($a0)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 404
    sw	$v0,4120($zero)
.L0d956dd4:
    sd	$a2,0($sp)
    # Line 236
    beq	$a0,$a4,.L0d957ed0
    sd	$ra,16($sp)
.L0d956de0:
    # Line 597
    # lw $t9, -26792($gp) # &__glSetError
.L0d956de4:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
.L0d956df4:
    # Line 598
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d956e00:
    # Line 236
    sltiu	$a5,$a0,2896
    bnez	$a5,.L0d956fb8
    sltiu	$a6,$a0,2881
    sltiu	$a6,$a0,2897
    bnez	$a6,.L0d957670
    sltiu	$a7,$a0,2929
    bnez	$a7,.L0d9573e8
    sltiu	$t0,$a0,2912
    sltiu	$t0,$a0,2930
    bnez	$t0,.L0d957cc0
    sltiu	$t1,$a0,2977
    bnez	$t1,.L0d9579e8
    li	$a5,2960
    sltiu	$t2,$a0,2978
    beqz	$t2,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 322
    lw	$at,1792($a2)
    lui	$v0,0x40
    # Line 323
    lui	$t9,0x1
    addu	$t9,$a2,$t9
    # Line 322
    or	$at,$at,$v0
    sw	$at,1792($a2)
    # Line 323
    lw	$t8,26980($t9)
    # Line 598
    ld	$gp,8($sp)
    # Line 323
    li	$t3,2
    ori	$t8,$t8,0x104
    sw	$t8,26980($t9)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 323
    sw	$t3,4120($zero)
.L0d956e78:
    # Line 236
    sltiu	$a3,$a0,16387
    bnez	$a3,.L0d95702c
    sltiu	$v1,$a0,16384
    sltiu	$at,$a0,16388
    bnez	$at,.L0d957068
    sltiu	$a3,$a0,16390
    bnez	$a3,.L0d957058
    sltiu	$a6,$a0,16389
    sltiu	$v0,$a0,16391
    bnez	$v0,.L0d957068
    li	$a3,0x8010
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0d957be0
    li	$t1,16391
    sltu	$a1,$a3,$a0
    bnez	$a1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 500
    lw	$a5,1792($a2)
    lui	$a6,0x200
    or	$a5,$a5,$a6
    sw	$a5,1792($a2)
    # Line 501
    li	$a4,2
    sw	$a4,4120($zero)
    lw	$a3,11812($a2)
    # Line 598
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 501
    ori	$a3,$a3,0x10
    # Line 598
    jr	$ra
    # Line 501
    sw	$a3,11812($a2)
.L0d956eec:
    # Line 236
    sltiu	$a3,$a0,3479
    bnez	$a3,.L0d9570a4
    sltiu	$a7,$a0,3480
    bnez	$a7,.L0d956f48
    # Line 437
    addiu	$t8,$a0,-3472
    # Line 236
    sltiu	$a3,$a0,3505
    bnez	$a3,.L0d9575b8
    sltiu	$t8,$a0,3504
    sltiu	$t0,$a0,3506
    bnez	$t0,.L0d9572d4
    # Line 446
    addiu	$a6,$a0,-3504
    # Line 236
    sltiu	$t1,$a0,3507
    bnez	$t1,.L0d957c40
    li	$a1,3506
    bnez	$a4,.L0d9572d4
    # Line 446
    addiu	$a6,$a0,-3504
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d956f34:
    # Line 236
    bnez	$t2,.L0d957774
    li	$t0,3474
    beqz	$a4,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 437
    addiu	$t8,$a0,-3472
.L0d956f48:
    lw	$t3,1808($a2)
    sllv	$t8,$a5,$t8
    # Line 598
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 437
    andi	$t8,$t8,0xffff
    or	$t3,$t3,$t8
    # Line 598
    jr	$ra
    # Line 437
    sw	$t3,1808($a2)
.L0d956f68:
    # Line 236
    li	$a3,0x8198
    sltu	$t9,$a0,$a3
    bnez	$t9,.L0d9571bc
    sltu	$at,$a3,$a0
    beqz	$at,.L0d957a54
    li	$a3,0x835c
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0d9576a4
    sltu	$v1,$a3,$a0
    beqz	$v1,.L0d957e8c
    li	$a3,0x835e
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0d957d28
    sltu	$a4,$a3,$a0
    bnez	$a4,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 574
    lw	$a5,1816($a2)
    ori	$a5,$a5,0x4
    # Line 575
    b	.L0d956df4
    # Line 574
    sw	$a5,1816($a2)
.L0d956fb8:
    # Line 236
    bnez	$a6,.L0d9572f4
    sltiu	$a7,$a0,2848
    sltiu	$a7,$a0,2882
    bnez	$a7,.L0d957af8
    sltiu	$t0,$a0,2884
    bnez	$t0,.L0d9577d0
    li	$v0,2882
    sltiu	$t1,$a0,2885
    beqz	$t1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 253
    lw	$at,31740($a2)
    # Line 252
    lw	$v0,1792($a2)
    # Line 254
    lui	$t9,0x1
    # Line 253
    ori	$at,$at,0x100
    sw	$at,31740($a2)
    # Line 254
    addu	$t9,$a2,$t9
    # Line 252
    ori	$v0,$v0,0x1000
    sw	$v0,1792($a2)
    # Line 254
    lw	$t8,26976($t9)
    ori	$t8,$t8,0x2
    sw	$t8,26976($t9)
    li	$t3,2
    # Line 255
    sw	$t3,4120($zero)
    lw	$t2,11812($a2)
    # Line 598
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 255
    ori	$t2,$t2,0x4
    # Line 598
    jr	$ra
    # Line 255
    sw	$t2,11812($a2)
.L0d95702c:
    # Line 236
    bnez	$v1,.L0d956d84
    sltiu	$t9,$a0,12293
    sltiu	$a1,$a0,16385
    bnez	$a1,.L0d957068
    sltiu	$a4,$a0,16386
    bnez	$a4,.L0d95791c
    li	$t0,16385
    bnez	$a3,.L0d957068
    nop
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d957058:
    bnez	$a6,.L0d95790c
    li	$a7,16388
    beqz	$a3,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d957068:
    # Line 413
    lw	$t2,1800($a2)
.L0d95706c:
    addiu	$t3,$a0,-16384
    # Line 414
    lui	$t1,0x1
    # Line 413
    sllv	$t3,$a5,$t3
    # Line 414
    addu	$t1,$a2,$t1
    # Line 413
    or	$t2,$t2,$t3
    sw	$t2,1800($a2)
    # Line 414
    lw	$t0,26980($t1)
    # Line 598
    ld	$gp,8($sp)
    # Line 414
    li	$a7,2
    ori	$t0,$t0,0x140
    sw	$t0,26980($t1)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 414
    sw	$a7,4120($zero)
.L0d9570a4:
    # Line 236
    sltiu	$a4,$a0,3476
    bnez	$a4,.L0d956f34
    sltiu	$t2,$a0,3475
    sltiu	$t8,$a0,3477
    bnez	$t8,.L0d956f48
    # Line 437
    addiu	$t8,$a0,-3472
    # Line 236
    sltiu	$t9,$a0,3478
    bnez	$t9,.L0d95794c
    li	$t3,3477
    bnez	$a3,.L0d956f48
    # Line 437
    addiu	$t8,$a0,-3472
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d9570d8:
    # Line 236
    bnez	$at,.L0d9573a0
    sltiu	$a3,$a0,3042
    sltiu	$v0,$a0,3058
    bnez	$v0,.L0d957c6c
    sltiu	$v1,$a0,3089
    bnez	$v1,.L0d957994
    li	$v1,3058
    sltiu	$a1,$a0,3090
    sd	$a2,0($sp)
    beqz	$a1,.L0d956de0
    sd	$ra,16($sp)
    # Line 351
    ld	$a3,0($sp)
    lw	$t9,11972($a3)
    # Line 349
    lw	$a2,1792($a3)
    # Line 351
    move	$a0,$a3
    # Line 349
    ori	$a2,$a2,0x4000
    # Line 351
    jal	__glSetError
    # Line 349
    sw	$a2,1792($a3)
    # Line 352
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11964($t9)
    jalr	$t9
    nop
    b	.L0d956df4
    ld	$ra,16($sp)
.L0d95713c:
    # Line 598
    ld	$gp,8($sp)
    # Line 497
    lw	$v1,5416($a2)
    # Line 496
    lw	$at,5404($a2)
    # Line 598
    addiu	$sp,$sp,32
    # Line 496
    lui	$v0,0x800
    # Line 497
    ori	$v1,$v1,0x10
    sw	$v1,5416($a2)
    # Line 496
    or	$at,$at,$v0
    # Line 598
    jr	$ra
    # Line 496
    sw	$at,5404($a2)
.L0d957164:
    # Line 236
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0d957488
    sltu	$a4,$a3,$a0
    beqz	$a4,.L0d9574dc
    li	$a3,0x8412
    sltu	$a6,$a0,$a3
    bnez	$a6,.L0d9574c4
    sltu	$a7,$a3,$a0
    beqz	$a7,.L0d9574e0
    # Line 426
    lui	$t9,0x1
    # Line 236
    li	$a3,0x8568
    sltu	$t0,$a0,$a3
    bnez	$t0,.L0d957ec0
    li	$t9,0x8413
    sltu	$t1,$a3,$a0
    bnez	$t1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 562
    lw	$t2,1796($a2)
    lui	$t3,0x2
    or	$t2,$t2,$t3
    # Line 563
    b	.L0d956df4
    # Line 562
    sw	$t2,1796($a2)
.L0d9571bc:
    # Line 236
    li	$a3,0x80d0
    sltu	$t8,$a0,$a3
    bnez	$t8,.L0d957520
    sltu	$t9,$a3,$a0
    beqz	$t9,.L0d957dc4
    li	$a3,0x80d2
    sltu	$at,$a0,$a3
    bnez	$at,.L0d957b60
    li	$t9,0x80d1
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 550
    lw	$v1,1796($a2)
    ori	$v1,$v1,0x4
    # Line 551
    b	.L0d956df4
    # Line 550
    sw	$v1,1796($a2)
.L0d9571fc:
    # Line 236
    li	$a3,0x802e
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0d957580
    sltu	$a4,$a3,$a0
    beqz	$a4,.L0d957dd4
    li	$a3,0x803a
    sltu	$a5,$a0,$a3
    bnez	$a5,.L0d957b9c
    li	$a1,0x8037
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 327
    lw	$t3,1796($a2)
    lui	$t2,0x1
    # Line 328
    addu	$t1,$t2,$a2
    # Line 327
    or	$t2,$t2,$t3
    sw	$t2,1796($a2)
    # Line 328
    lw	$t0,26980($t1)
    # Line 598
    ld	$gp,8($sp)
    # Line 328
    li	$a7,2
    ori	$t0,$t0,0x4
    sw	$t0,26980($t1)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 328
    sw	$a7,4120($zero)
.L0d957260:
    # Line 236
    sltiu	$a3,$a0,3511
    bnez	$a3,.L0d9572bc
    sltiu	$t8,$a0,3512
    bnez	$t8,.L0d9572d4
    # Line 446
    addiu	$a6,$a0,-3504
    # Line 236
    sltiu	$t9,$a0,3552
    bnez	$t9,.L0d957c30
    li	$v1,3512
    beqz	$a4,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 361
    lw	$a1,1792($a2)
    lui	$a0,0x1
    # Line 362
    addu	$v1,$a0,$a2
    # Line 361
    or	$a0,$a0,$a1
    sw	$a0,1792($a2)
    # Line 362
    lw	$v0,26980($v1)
    # Line 598
    ld	$gp,8($sp)
    # Line 362
    li	$at,2
    ori	$v0,$v0,0x790
    sw	$v0,26980($v1)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 362
    sw	$at,4120($zero)
.L0d9572bc:
    # Line 236
    sltiu	$a4,$a0,3510
    bnez	$a4,.L0d95792c
    li	$t1,3509
    beqz	$a3,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 446
    addiu	$a6,$a0,-3504
.L0d9572d4:
    sllv	$a6,$a5,$a6
    lw	$a5,1812($a2)
    # Line 598
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 446
    andi	$a6,$a6,0xffff
    or	$a5,$a5,$a6
    # Line 598
    jr	$ra
    # Line 446
    sw	$a5,1812($a2)
.L0d9572f4:
    # Line 236
    bnez	$a7,.L0d957618
    li	$a1,2832
    sltiu	$t0,$a0,2849
    bnez	$t0,.L0d957e20
    li	$t1,2852
    bne	$a0,$t1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 302
    lw	$t9,31740($a2)
    # Line 301
    lw	$at,1792($a2)
    # Line 303
    lui	$t8,0x1
    # Line 302
    ori	$t9,$t9,0x8
    sw	$t9,31740($a2)
    # Line 303
    addu	$t8,$a2,$t8
    # Line 301
    ori	$at,$at,0x100
    sw	$at,1792($a2)
    # Line 303
    lw	$t3,26976($t8)
    # Line 598
    ld	$gp,8($sp)
    # Line 303
    li	$t2,2
    ori	$t3,$t3,0x2
    sw	$t3,26976($t8)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 303
    sw	$t2,4120($zero)
.L0d957350:
    # Line 239
    lw	$a3,31740($a2)
    # Line 238
    lw	$a1,1792($a2)
    # Line 240
    lui	$a0,0x1
    # Line 239
    ori	$a3,$a3,0x4000
    sw	$a3,31740($a2)
    # Line 240
    addu	$a0,$a2,$a0
    # Line 238
    ori	$a1,$a1,0x1
    sw	$a1,1792($a2)
    # Line 240
    lw	$a1,26976($a0)
    ori	$a1,$a1,0x2
    sw	$a1,26976($a0)
    li	$v0,2
    sw	$v0,4120($zero)
    # Line 241
    lw	$v1,26980($a0)
    # Line 598
    ld	$gp,8($sp)
    # Line 241
    ori	$v1,$v1,0x800
    sw	$v1,26980($a0)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 241
    sw	$v0,4120($zero)
.L0d9573a0:
    # Line 236
    bnez	$a3,.L0d957784
    li	$t1,3024
    sltiu	$a4,$a0,3043
    beqz	$a4,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 244
    lw	$t0,1792($a2)
    # Line 245
    lui	$a7,0x1
    addu	$a7,$a2,$a7
    # Line 244
    ori	$t0,$t0,0x2
    sw	$t0,1792($a2)
    # Line 245
    lw	$a6,26980($a7)
    # Line 598
    ld	$gp,8($sp)
    # Line 245
    li	$a5,2
    ori	$a6,$a6,0x800
    sw	$a6,26980($a7)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 245
    sw	$a5,4120($zero)
.L0d9573e8:
    # Line 236
    bnez	$t0,.L0d956dd4
    li	$a4,2903
    sltiu	$t1,$a0,2913
    beqz	$t1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 269
    lw	$at,1792($a2)
    # Line 270
    lw	$t9,31740($a2)
    # Line 271
    lui	$t8,0x1
    # Line 269
    ori	$at,$at,0x20
    sw	$at,1792($a2)
    # Line 270
    lui	$at,0x40
    # Line 271
    addu	$t8,$a2,$t8
    # Line 270
    or	$t9,$t9,$at
    sw	$t9,31740($a2)
    # Line 271
    lw	$t3,26976($t8)
    # Line 598
    ld	$gp,8($sp)
    # Line 271
    li	$t2,2
    ori	$t3,$t3,0x2
    sw	$t3,26976($t8)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 271
    sw	$t2,4120($zero)
.L0d957440:
    # Line 504
    lw	$a0,1792($a2)
    lui	$a1,0x400
    or	$a0,$a0,$a1
    sw	$a0,1792($a2)
    # Line 505
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11812($a2)
    # Line 598
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 505
    ori	$v0,$v0,0x10
    # Line 598
    jr	$ra
    # Line 505
    sw	$v0,11812($a2)
.L0d957470:
    # Line 228
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d956df4
    ld	$ra,16($sp)
.L0d957488:
    # Line 236
    li	$a3,0x840c
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d957880
    sltu	$a6,$a3,$a0
    beqz	$a6,.L0d9574e0
    # Line 426
    lui	$t9,0x1
    # Line 236
    li	$a3,0x840e
    sltu	$a7,$a0,$a3
    bnez	$a7,.L0d957e7c
    li	$t0,0x840d
    sltu	$t0,$a3,$a0
    beqz	$t0,.L0d9574e0
    # Line 426
    lui	$t9,0x1
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d9574c4:
    # Line 236
    li	$a3,0x8411
    sltu	$t1,$a0,$a3
    bnez	$t1,.L0d957e68
    sltu	$t2,$a3,$a0
    bnez	$t2,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9574dc:
    # Line 426
    lui	$t9,0x1
.L0d9574e0:
    # Line 598
    ld	$gp,8($sp)
    # Line 426
    lui	$v0,0xffff
    addu	$t9,$a2,$t9
    ori	$v0,$v0,0x7bf4
    # Line 427
    lw	$t8,26980($t9)
    # Line 426
    lw	$at,25724($t9)
    addu	$v0,$a0,$v0
    sllv	$v0,$a5,$v0
    # Line 427
    ori	$t8,$t8,0x140
    sw	$t8,26980($t9)
    li	$t3,2
    # Line 426
    or	$at,$at,$v0
    sw	$at,25724($t9)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 427
    sw	$t3,4120($zero)
.L0d957520:
    # Line 236
    li	$a3,0x80bc
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0d9578c4
    li	$v1,0x8094
    sltu	$a1,$a3,$a0
    bnez	$a1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 540
    lw	$a5,31956($a2)
    # Line 539
    lui	$a7,0x8000
    lw	$a6,1792($a2)
    # Line 541
    lui	$a4,0x1
    # Line 540
    ori	$a5,$a5,0x1
    sw	$a5,31956($a2)
    # Line 541
    addu	$a4,$a2,$a4
    # Line 539
    or	$a6,$a6,$a7
    sw	$a6,1792($a2)
    # Line 541
    lw	$a3,26976($a4)
    # Line 598
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 541
    ori	$a3,$a3,0x200
    sw	$a3,26976($a4)
    li	$a2,2
    # Line 598
    jr	$ra
    # Line 541
    sw	$a2,4120($zero)
.L0d957580:
    # Line 236
    li	$a3,0x8024
    sltu	$t0,$a0,$a3
    bnez	$t0,.L0d9578dc
    li	$a1,0x8012
    sltu	$t1,$a3,$a0
    bnez	$t1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 512
    lw	$t2,1792($a2)
    # Line 598
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 512
    lui	$t3,0x1000
    or	$t2,$t2,$t3
    # Line 598
    jr	$ra
    # Line 512
    sw	$t2,1792($a2)
.L0d9575b8:
    # Line 236
    bnez	$t8,.L0d95793c
    li	$t2,3480
    bnez	$a3,.L0d9572d4
    # Line 446
    addiu	$a6,$a0,-3504
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d9575d0:
    # Line 236
    bnez	$t9,.L0d95795c
    li	$t8,3169
    beqz	$a3,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 390
    lw	$a0,1792($a2)
    lui	$a1,0x10
    # Line 391
    lui	$v1,0x1
    addu	$v1,$a2,$v1
    # Line 390
    or	$a0,$a0,$a1
    sw	$a0,1792($a2)
    # Line 391
    lw	$v0,26980($v1)
    # Line 598
    ld	$gp,8($sp)
    # Line 391
    li	$at,2
    ori	$v0,$v0,0x120
    sw	$v0,26980($v1)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 391
    sw	$at,4120($zero)
.L0d957618:
    # Line 236
    bne	$a0,$a1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 332
    lw	$a6,31740($a2)
    # Line 331
    lw	$a5,1792($a2)
    # Line 333
    lui	$a4,0x1
    # Line 332
    ori	$a6,$a6,0x1
    sw	$a6,31740($a2)
    # Line 333
    addu	$a4,$a2,$a4
    # Line 331
    ori	$a5,$a5,0x400
    sw	$a5,1792($a2)
    # Line 333
    lw	$a5,26976($a4)
    ori	$a5,$a5,0x2
    sw	$a5,26976($a4)
    li	$a2,2
    sw	$a2,4120($zero)
    # Line 334
    lw	$a3,26980($a4)
    # Line 598
    ld	$gp,8($sp)
    # Line 334
    ori	$a3,$a3,0x800
    sw	$a3,26980($a4)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 334
    sw	$a2,4120($zero)
.L0d957670:
    # Line 278
    lw	$t1,1792($a2)
    # Line 279
    lui	$t0,0x1
    addu	$t0,$a2,$t0
    # Line 278
    ori	$t1,$t1,0x40
    sw	$t1,1792($a2)
    # Line 279
    lw	$a7,26980($t0)
    # Line 598
    ld	$gp,8($sp)
    # Line 279
    li	$a6,2
    ori	$a7,$a7,0x1c0
    sw	$a7,26980($t0)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 279
    sw	$a6,4120($zero)
.L0d9576a4:
    # Line 236
    li	$a3,0x8353
    sltu	$t1,$a0,$a3
    bnez	$t1,.L0d957b48
    li	$t3,0x832c
    sltu	$t2,$a3,$a0
    bnez	$t2,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 554
    lw	$t3,1796($a2)
    ori	$t3,$t3,0x4000
    # Line 555
    b	.L0d956df4
    # Line 554
    sw	$t3,1796($a2)
.L0d9576d0:
    # Line 236
    li	$a3,0x8075
    sltu	$t8,$a0,$a3
    bnez	$t8,.L0d957b78
    li	$v0,0x8074
    sltu	$t9,$a3,$a0
    bnez	$t9,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 598
    ld	$gp,8($sp)
    # Line 481
    lw	$v0,5416($a2)
    # Line 480
    lw	$at,5404($a2)
    # Line 598
    addiu	$sp,$sp,32
    # Line 481
    ori	$v0,$v0,0x1
    sw	$v0,5416($a2)
    # Line 480
    ori	$at,$at,0xf00
    # Line 598
    jr	$ra
    # Line 480
    sw	$at,5404($a2)
.L0d957710:
    # Line 236
    bnez	$v1,.L0d957bf0
    li	$t2,10753
    sltiu	$a1,$a0,10755
    beqz	$a1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 472
    lw	$a5,31740($a2)
    # Line 470
    lw	$a6,1796($a2)
    # Line 473
    lui	$a4,0x1
    # Line 472
    ori	$a5,$a5,0x40
    sw	$a5,31740($a2)
    # Line 473
    addu	$a4,$a2,$a4
    # Line 470
    ori	$a6,$a6,0x400
    sw	$a6,1796($a2)
    # Line 473
    lw	$a3,26976($a4)
    # Line 598
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 473
    ori	$a3,$a3,0x2
    sw	$a3,26976($a4)
    li	$a2,2
    # Line 598
    jr	$ra
    # Line 473
    sw	$a2,4120($zero)
.L0d957764:
    # Line 236
    beq	$a0,$a7,.L0d956d98
    nop
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d957774:
    beq	$a0,$t0,.L0d956f48
    # Line 437
    addiu	$t8,$a0,-3472
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d957784:
    # Line 236
    bne	$a0,$t1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 264
    lw	$at,1792($a2)
    # Line 265
    lw	$t9,31740($a2)
    # Line 266
    lui	$t8,0x1
    # Line 264
    ori	$at,$at,0x8
    sw	$at,1792($a2)
    # Line 265
    lui	$at,0x4
    # Line 266
    addu	$t8,$a2,$t8
    # Line 265
    or	$t9,$t9,$at
    sw	$t9,31740($a2)
    # Line 266
    lw	$t3,26976($t8)
    # Line 598
    ld	$gp,8($sp)
    # Line 266
    li	$t2,2
    ori	$t3,$t3,0x2
    sw	$t3,26976($t8)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 266
    sw	$t2,4120($zero)
.L0d9577d0:
    # Line 236
    bne	$a0,$v0,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 344
    lw	$a3,31740($a2)
    # Line 343
    lw	$a4,1792($a2)
    # Line 345
    lui	$a1,0x1
    # Line 344
    ori	$a3,$a3,0x10
    sw	$a3,31740($a2)
    # Line 345
    addu	$a1,$a2,$a1
    # Line 343
    ori	$a4,$a4,0x2000
    sw	$a4,1792($a2)
    # Line 345
    lw	$a0,26976($a1)
    # Line 598
    ld	$gp,8($sp)
    # Line 345
    li	$v1,2
    ori	$a0,$a0,0x2
    sw	$a0,26976($a1)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 345
    sw	$v1,4120($zero)
.L0d957818:
    # Line 380
    lw	$t0,1792($a2)
    lui	$t1,0x4
    # Line 381
    lui	$a7,0x1
    addu	$a7,$a2,$a7
    # Line 380
    or	$t0,$t0,$t1
    sw	$t0,1792($a2)
    # Line 381
    lw	$a6,26980($a7)
    # Line 598
    ld	$gp,8($sp)
    # Line 381
    li	$a5,2
    ori	$a6,$a6,0x120
    sw	$a6,26980($a7)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 381
    sw	$a5,4120($zero)
.L0d957850:
    sd	$a2,0($sp)
    # Line 590
    sb	$a5,-25152($a0)
    # Line 591
    lui	$t2,0x1
    # Line 589
    sb	$a5,-25164($a0)
    # Line 591
    addu	$t2,$a2,$t2
    lw	$t1,26980($t2)
    sd	$ra,16($sp)
    ori	$t1,$t1,0x400
    sw	$t1,26980($t2)
    li	$t0,2
    b	.L0d956c30
    sw	$t0,4120($zero)
.L0d957880:
    # Line 236
    li	$a3,0x8401
    sltu	$t3,$a0,$a3
    bnez	$t3,.L0d957d7c
    sltu	$t8,$a3,$a0
    bnez	$t8,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 291
    lw	$v1,1796($a2)
    # Line 292
    lui	$v0,0x1
    addu	$v0,$a2,$v0
    # Line 291
    ori	$v1,$v1,0x2000
    sw	$v1,1796($a2)
    # Line 292
    lw	$at,26980($v0)
    ori	$at,$at,0x80
    sw	$at,26980($v0)
    li	$t9,2
    # Line 293
    b	.L0d956df4
    # Line 292
    sw	$t9,4120($zero)
.L0d9578c4:
    # Line 236
    bne	$a0,$v1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 558
    lw	$a0,1796($a2)
    ori	$a0,$a0,0x20
    # Line 559
    b	.L0d956df4
    # Line 558
    sw	$a0,1796($a2)
.L0d9578dc:
    # Line 236
    bne	$a0,$a1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 508
    lw	$a5,1792($a2)
    lui	$a6,0x800
    or	$a5,$a5,$a6
    sw	$a5,1792($a2)
    # Line 509
    li	$a4,2
    sw	$a4,4120($zero)
    lw	$a3,11812($a2)
    ori	$a3,$a3,0x10
    # Line 510
    b	.L0d956df4
    # Line 509
    sw	$a3,11812($a2)
.L0d95790c:
    # Line 236
    beq	$a0,$a7,.L0d957068
    nop
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d95791c:
    bne	$a0,$t0,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    b	.L0d95706c
    # Line 413
    lw	$t2,1800($a2)
.L0d95792c:
    # Line 236
    beq	$a0,$t1,.L0d9572d4
    # Line 446
    addiu	$a6,$a0,-3504
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d95793c:
    # Line 236
    beq	$a0,$t2,.L0d956f48
    # Line 437
    addiu	$t8,$a0,-3472
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d95794c:
    # Line 236
    beq	$a0,$t3,.L0d956f48
    # Line 437
    addiu	$t8,$a0,-3472
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d95795c:
    # Line 236
    bne	$a0,$t8,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 385
    lw	$v1,1792($a2)
    # Line 386
    lui	$v0,0x1
    # Line 385
    lui	$a0,0x8
    # Line 386
    addu	$v0,$a2,$v0
    # Line 385
    or	$v1,$v1,$a0
    sw	$v1,1792($a2)
    # Line 386
    lw	$at,26980($v0)
    ori	$at,$at,0x120
    sw	$at,26980($v0)
    li	$t9,2
    # Line 388
    b	.L0d956df4
    # Line 386
    sw	$t9,4120($zero)
.L0d957994:
    # Line 236
    bne	$a0,$v1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 313
    lw	$a4,1796($a2)
    # Line 318
    lui	$a3,0x1
    # Line 317
    lw	$a5,31740($a2)
    # Line 313
    ori	$a4,$a4,0x800
    sw	$a4,1796($a2)
    # Line 317
    lui	$a6,0x10
    # Line 318
    addu	$a3,$a2,$a3
    # Line 317
    or	$a5,$a5,$a6
    sw	$a5,31740($a2)
    # Line 318
    lw	$a4,26976($a3)
    ori	$a4,$a4,0x2
    sw	$a4,26976($a3)
    li	$a0,2
    sw	$a0,4120($zero)
    # Line 319
    lw	$a1,26980($a3)
    ori	$a1,$a1,0x800
    sw	$a1,26980($a3)
    # Line 320
    b	.L0d956df4
    # Line 319
    sw	$a0,4120($zero)
.L0d9579e8:
    # Line 236
    bne	$a0,$a5,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 355
    lw	$t9,1792($a2)
    # Line 356
    lbu	$t2,3226($a2)
    # Line 357
    lui	$t0,0x1
    # Line 355
    ori	$t9,$t9,0x8000
    # Line 356
    sltu	$t2,$zero,$t2
    li	$t8,0x8000
    lw	$t3,31740($a2)
    sll	$t2,$t2,0xf
    nor	$t8,$t8,$zero
    # Line 355
    sw	$t9,1792($a2)
    # Line 356
    andi	$t2,$t2,0x8000
    and	$t3,$t3,$t8
    # Line 357
    addu	$t0,$a2,$t0
    # Line 356
    or	$t2,$t2,$t3
    sw	$t2,31740($a2)
    # Line 357
    lw	$t1,26976($t0)
    ori	$t1,$t1,0x2
    sw	$t1,26976($t0)
    li	$a6,2
    sw	$a6,4120($zero)
    # Line 358
    lw	$a7,26980($t0)
    ori	$a7,$a7,0x800
    sw	$a7,26980($t0)
    # Line 359
    b	.L0d956df4
    # Line 358
    sw	$a6,4120($zero)
.L0d957a54:
    # Line 274
    lw	$a0,1796($a2)
    # Line 275
    lui	$v1,0x1
    addu	$v1,$a2,$v1
    # Line 274
    ori	$a0,$a0,0x10
    sw	$a0,1796($a2)
    # Line 275
    lw	$v0,26980($v1)
    # Line 598
    ld	$gp,8($sp)
    # Line 275
    li	$at,2
    ori	$v0,$v0,0x1000
    sw	$v0,26980($v1)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 275
    sw	$at,4120($zero)
.L0d957a88:
    # Line 519
    lw	$a4,1792($a2)
    lui	$a5,0x4000
    # Line 520
    lui	$a3,0x1
    addu	$a3,$a2,$a3
    # Line 519
    or	$a4,$a4,$a5
    sw	$a4,1792($a2)
    # Line 520
    lw	$a1,26980($a3)
    # Line 598
    ld	$gp,8($sp)
    # Line 520
    li	$a0,2
    ori	$a1,$a1,0x790
    sw	$a1,26980($a3)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 520
    sw	$a0,4120($zero)
.L0d957ac0:
    # Line 369
    lw	$a7,1792($a2)
    lui	$t0,0x2
    # Line 370
    lui	$a6,0x1
    addu	$a6,$a2,$a6
    # Line 369
    or	$a7,$a7,$t0
    sw	$a7,1792($a2)
    # Line 370
    lw	$a5,26980($a6)
    # Line 598
    ld	$gp,8($sp)
    # Line 370
    li	$a4,2
    ori	$a5,$a5,0x790
    sw	$a5,26980($a6)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 370
    sw	$a4,4120($zero)
.L0d957af8:
    # Line 338
    lw	$t3,31740($a2)
    # Line 337
    lw	$t2,1792($a2)
    # Line 339
    lui	$t1,0x1
    # Line 338
    ori	$t3,$t3,0x4
    sw	$t3,31740($a2)
    # Line 339
    addu	$t1,$a2,$t1
    # Line 337
    ori	$t2,$t2,0x800
    sw	$t2,1792($a2)
    # Line 339
    lw	$t2,26976($t1)
    ori	$t2,$t2,0x2
    sw	$t2,26976($t1)
    li	$a7,2
    sw	$a7,4120($zero)
    # Line 340
    lw	$t0,26980($t1)
    # Line 598
    ld	$gp,8($sp)
    # Line 340
    ori	$t0,$t0,0x800
    sw	$t0,26980($t1)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 340
    sw	$a7,4120($zero)
.L0d957b48:
    # Line 236
    bne	$a0,$t3,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 578
    lw	$t8,1816($a2)
    ori	$t8,$t8,0x8
    # Line 579
    b	.L0d956df4
    # Line 578
    sw	$t8,1816($a2)
.L0d957b60:
    # Line 236
    bne	$a0,$t9,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 547
    lw	$at,1796($a2)
    ori	$at,$at,0x2
    # Line 548
    b	.L0d956df4
    # Line 547
    sw	$at,1796($a2)
.L0d957b78:
    # Line 236
    bne	$a0,$v0,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 477
    lw	$a0,5416($a2)
    # Line 476
    lw	$v1,5404($a2)
    # Line 477
    ori	$a0,$a0,0x20
    sw	$a0,5416($a2)
    # Line 476
    ori	$v1,$v1,0xff
    # Line 477
    b	.L0d956df4
    # Line 476
    sw	$v1,5404($a2)
.L0d957b9c:
    # Line 236
    bne	$a0,$a1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 452
    lw	$a7,1792($a2)
    lui	$t0,0x100
    # Line 454
    lw	$a6,31740($a2)
    # Line 455
    lui	$a5,0x1
    # Line 452
    or	$a7,$a7,$t0
    sw	$a7,1792($a2)
    # Line 455
    addu	$a5,$a2,$a5
    # Line 454
    ori	$a6,$a6,0x80
    sw	$a6,31740($a2)
    # Line 455
    lw	$a4,26976($a5)
    ori	$a4,$a4,0x2
    sw	$a4,26976($a5)
    li	$a3,2
    # Line 456
    b	.L0d956df4
    # Line 455
    sw	$a3,4120($zero)
.L0d957be0:
    # Line 236
    beq	$a0,$t1,.L0d957068
    nop
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d957bf0:
    bne	$a0,$t2,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 461
    lw	$v0,1796($a2)
    # Line 463
    lw	$at,31740($a2)
    # Line 464
    lui	$t9,0x1
    # Line 461
    ori	$v0,$v0,0x200
    sw	$v0,1796($a2)
    # Line 464
    addu	$t9,$a2,$t9
    # Line 463
    ori	$at,$at,0x20
    sw	$at,31740($a2)
    # Line 464
    lw	$t8,26976($t9)
    ori	$t8,$t8,0x2
    sw	$t8,26976($t9)
    li	$t3,2
    # Line 465
    b	.L0d956df4
    # Line 464
    sw	$t3,4120($zero)
.L0d957c30:
    # Line 236
    beq	$a0,$v1,.L0d9572d4
    # Line 446
    addiu	$a6,$a0,-3504
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d957c40:
    # Line 236
    beq	$a0,$a1,.L0d9572d4
    # Line 446
    addiu	$a6,$a0,-3504
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d957c50:
    # Line 236
    bne	$a0,$a3,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 377
    lw	$a4,1792($a2)
    lui	$a5,0x80
    or	$a4,$a4,$a5
    # Line 378
    b	.L0d956df4
    # Line 377
    sw	$a4,1792($a2)
.L0d957c6c:
    # Line 307
    lw	$t2,31740($a2)
    lui	$t3,0x8
    # Line 306
    lw	$t1,1792($a2)
    # Line 308
    lui	$t0,0x1
    # Line 307
    or	$t2,$t2,$t3
    sw	$t2,31740($a2)
    # Line 308
    addu	$t0,$a2,$t0
    # Line 306
    ori	$t1,$t1,0x4
    sw	$t1,1792($a2)
    # Line 308
    lw	$t1,26976($t0)
    ori	$t1,$t1,0x2
    sw	$t1,26976($t0)
    li	$a6,2
    sw	$a6,4120($zero)
    # Line 309
    lw	$a7,26980($t0)
    # Line 598
    ld	$gp,8($sp)
    # Line 309
    ori	$a7,$a7,0x800
    sw	$a7,26980($t0)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 309
    sw	$a6,4120($zero)
.L0d957cc0:
    # Line 258
    lw	$a0,1792($a2)
    # Line 259
    lbu	$at,3225($a2)
    # Line 258
    ori	$a0,$a0,0x10
    # Line 259
    lw	$v0,31740($a2)
    lui	$t8,0x1
    sltu	$at,$zero,$at
    nor	$v1,$t8,$zero
    sll	$at,$at,0x10
    # Line 258
    sw	$a0,1792($a2)
    # Line 259
    and	$v0,$v0,$v1
    and	$at,$t8,$at
    # Line 260
    addu	$t8,$t8,$a2
    # Line 259
    or	$at,$at,$v0
    sw	$at,31740($a2)
    # Line 260
    lw	$t9,26976($t8)
    ori	$t9,$t9,0x2
    sw	$t9,26976($t8)
    li	$t2,2
    sw	$t2,4120($zero)
    # Line 261
    lw	$t3,26980($t8)
    # Line 598
    ld	$gp,8($sp)
    # Line 261
    ori	$t3,$t3,0x800
    sw	$t3,26980($t8)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 261
    sw	$t2,4120($zero)
.L0d957d28:
    # Line 236
    li	$a1,0x835d
    bne	$a0,$a1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 570
    lw	$a3,1816($a2)
    ori	$a3,$a3,0x2
    # Line 571
    b	.L0d956df4
    # Line 570
    sw	$a3,1816($a2)
.L0d957d44:
    # Line 236
    bne	$a0,$a4,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 489
    lw	$a7,5416($a2)
    # Line 488
    lw	$a5,5404($a2)
    # Line 489
    ori	$a7,$a7,0x8
    sw	$a7,5416($a2)
    # Line 488
    lui	$a6,0xf000
    or	$a5,$a5,$a6
    # Line 489
    b	.L0d956df4
    # Line 488
    sw	$a5,5404($a2)
.L0d957d6c:
    # Line 236
    bne	$a0,$t0,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    b	.L0d956d9c
    # Line 403
    lw	$a1,1804($a2)
.L0d957d7c:
    # Line 236
    li	$t1,0x8400
    bne	$a0,$t1,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 284
    lw	$at,1796($a2)
    # Line 285
    lui	$t8,0x1
    addu	$t8,$a2,$t8
    # Line 284
    ori	$at,$at,0x1000
    sw	$at,1796($a2)
    # Line 285
    lw	$t9,26976($t8)
    ori	$t9,$t9,0x4
    sw	$t9,26976($t8)
    li	$t2,2
    sw	$t2,4120($zero)
    # Line 286
    lw	$t3,26980($t8)
    ori	$t3,$t3,0x1c0
    sw	$t3,26980($t8)
    # Line 289
    b	.L0d956df4
    # Line 286
    sw	$t2,4120($zero)
.L0d957dc4:
    # Line 544
    lw	$t9,1796($a2)
    ori	$t9,$t9,0x1
    # Line 545
    b	.L0d956df4
    # Line 544
    sw	$t9,1796($a2)
.L0d957dd4:
    # Line 515
    lw	$at,1792($a2)
    lui	$v0,0x2000
    or	$at,$at,$v0
    # Line 516
    b	.L0d956df4
    # Line 515
    sw	$at,1792($a2)
.L0d957de8:
    # Line 395
    lw	$a3,1792($a2)
    lui	$a4,0x20
    # Line 396
    lui	$a1,0x1
    addu	$a1,$a2,$a1
    # Line 395
    or	$a3,$a3,$a4
    sw	$a3,1792($a2)
    # Line 396
    lw	$a0,26980($a1)
    # Line 598
    ld	$gp,8($sp)
    # Line 396
    li	$v1,2
    ori	$a0,$a0,0x120
    sw	$a0,26980($a1)
    # Line 598
    addiu	$sp,$sp,32
    jr	$ra
    # Line 396
    sw	$v1,4120($zero)
.L0d957e20:
    # Line 295
    lw	$a6,1792($a2)
    # Line 296
    lw	$a7,31740($a2)
    # Line 297
    lui	$a5,0x1
    # Line 295
    ori	$a6,$a6,0x200
    sw	$a6,1792($a2)
    # Line 297
    addu	$a5,$a2,$a5
    # Line 296
    ori	$a7,$a7,0x2
    sw	$a7,31740($a2)
    # Line 297
    lw	$a6,26976($a5)
    ori	$a6,$a6,0x2
    sw	$a6,26976($a5)
    li	$a3,2
    sw	$a3,4120($zero)
    # Line 298
    lw	$a4,26980($a5)
    ori	$a4,$a4,0x800
    sw	$a4,26980($a5)
    # Line 299
    b	.L0d956df4
    # Line 298
    sw	$a3,4120($zero)
.L0d957e68:
    # Line 236
    li	$a7,0x8410
    beq	$a0,$a7,.L0d9574e0
    # Line 426
    lui	$t9,0x1
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d957e7c:
    # Line 236
    bne	$a0,$t0,.L0d956de4
    # Line 597
    nop	# was lw $t9, -26792($gp) # &__glSetError
    b	.L0d9574e0
    # Line 426
    lui	$t9,0x1
.L0d957e8c:
    # Line 566
    lw	$t1,1816($a2)
    ori	$t1,$t1,0x1
    # Line 567
    b	.L0d956df4
    # Line 566
    sw	$t1,1816($a2)
.L0d957e9c:
    # Line 485
    lw	$t8,5416($a2)
    # Line 484
    lui	$t3,0xf
    lw	$t2,5404($a2)
    # Line 485
    ori	$t8,$t8,0x2
    sw	$t8,5416($a2)
    # Line 484
    ori	$t3,$t3,0xf000
    or	$t2,$t2,$t3
    # Line 485
    b	.L0d956df4
    # Line 484
    sw	$t2,5404($a2)
.L0d957ec0:
    # Line 236
    beq	$a0,$t9,.L0d9574e0
    # Line 426
    lui	$t9,0x1
    b	.L0d956de0
    sd	$ra,16($sp)
.L0d957ed0:
    # Line 248
    ld	$v0,0($sp)
    # Line 249
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,26048
    # Line 248
    lw	$at,1792($v0)
    # Line 249
    move	$a0,$v0
    # Line 248
    ori	$at,$at,0x80
    # Line 249
    bal __glOdyim_FinishAsyncSGIX
    # Line 248
    sw	$at,1792($v0)
    b	.L0d956df4
    ld	$ra,16($sp)
.end __glOdyim_Enable

# Function: PushAttributes
# Declared: Line 603 (Source lines: 603-835)
# Address: 0x0d957f00 - 0x0d958dbc (Size: 3772 bytes, Frame: 240)
.ent PushAttributes
PushAttributes:
    # Line 603
    addiu	$sp,$sp,-112
    sd	$s0,8($sp)
    # Line 610
    lw	$s0,4112($zero)
    sd	$s5,88($sp)
    sd	$s8,80($sp)
    sd	$ra,72($sp)
    sd	$s7,64($sp)
    lw	$at,4120($zero)
    sd	$s3,48($sp)
    li	$v1,1
    # Line 603
    move	$v0,$a2
    sd	$s2,16($sp)
    move	$s2,$a0
    # Line 610
    beq	$at,$v1,.L0d958d8c
    sd	$s6,40($sp)
    sd	$a2,104($sp)
    sd	$a1,96($sp)
    sd	$s1,0($sp)
    # Line 612
    lw	$s3,0($a1)
    # Line 613
    lw	$s1,0($a2)
    sd	$s4,56($sp)
    beqz	$s3,.L0d958c58
    # Line 611
    lw	$s4,6132($s0)
.L0d957f5c:
    # Line 627
    lui	$s7,0x1
    addu	$a0,$s7,$s0
    sd	$a0,32($sp)
    # Line 623
    sw	$s2,0($s1)
    # Line 624
    ld	$a6,1792($s0)
    sd	$a6,1616($s1)
    ld	$a5,1800($s0)
    sd	$a5,1624($s1)
    ld	$a4,1808($s0)
    sd	$a4,1632($s1)
    lw	$a3,1816($s0)
    sw	$a3,1640($s1)
    # Line 625
    lw	$a2,31740($s0)
    sw	$a2,132($s3)
    # Line 626
    lw	$a1,31744($s0)
    sw	$a1,136($s3)
    # Line 627
    addu	$a1,$s7,$s3
    sd	$a1,24($sp)
    andi	$a2,$s2,0x200
    lw	$a0,25724($a0)
    beqz	$a2,.L0d957fd4
    sw	$a0,-5884($a1)
    # Line 630
    lwc1	$f3,1648($s0)
    swc1	$f3,1472($s1)
    lwc1	$f2,1652($s0)
    swc1	$f2,1476($s1)
    lwc1	$f1,1656($s0)
    swc1	$f1,1480($s1)
    lwc1	$f0,1660($s0)
    swc1	$f0,1484($s1)
.L0d957fd4:
    andi	$a7,$s2,0x4000
    beqz	$a7,.L0d95805c
    addiu	$a5,$s0,1824
    addiu	$a0,$s1,1648
    li	$a7,0x8
    # Line 633
    addiu	$a6,$s1,1644
    addiu	$a2,$s0,1820
    lw	$t0,1820($s0)
    li	$a1,4
    li	$v0,0x12
    sw	$t0,1644($s1)
.L0d958000:
    addu	$a4,$a1,$a2
    addu	$t0,$a1,$a6
    lw	$a4,0($a4)
    addiu	$v0,$v0,-2
    addu	$a3,$a1,$a5
    sw	$a4,0($t0)
    addu	$a4,$a1,$a0
    lw	$a3,0($a3)
    addu	$a1,$a1,$a7
    bgtz	$v0,.L0d958000
    sw	$a3,0($a4)
    # Line 635
    lw	$t2,31784($s0)
    sw	$t2,176($s3)
    # Line 636
    lw	$t1,31796($s0)
    sw	$t1,188($s3)
    # Line 637
    lw	$t0,31800($s0)
    sw	$t0,192($s3)
    # Line 638
    lw	$a7,31804($s0)
    sw	$a7,196($s3)
    # Line 639
    lw	$a6,31808($s0)
    sw	$a6,200($s3)
    # Line 640
    lw	$a5,31836($s0)
    sw	$a5,228($s3)
.L0d95805c:
    andi	$t3,$s2,0x1
    beqz	$t3,.L0d958188
    # Line 665
    andi	$a1,$s2,0x100
    li	$a0,2
    # Line 643
    li	$v0,34
    move	$a1,$zero
    addiu	$a5,$s1,8
    addiu	$a2,$s0,184
.L0d95807c:
    addiu	$a0,$a0,-1
    addu	$t8,$a1,$a2
    addiu	$v0,$v0,-1
    addu	$t9,$a1,$a5
    ld	$t8,0($t8)
    addiu	$a1,$a1,8
    bnez	$a0,.L0d95807c
    sd	$t8,0($t9)
    addiu	$a0,$a2,24
    addiu	$a6,$a5,24
    li	$t2,0x20
    addiu	$t3,$a2,8
    addiu	$a7,$a5,8
    addiu	$t0,$a5,16
    addiu	$t1,$a2,16
    nop
    nop
.L0d9580c0:
    addu	$v1,$a1,$a2
    addu	$a3,$a1,$a5
    ld	$v1,0($v1)
    addu	$at,$a1,$t3
    sd	$v1,0($a3)
    addu	$v1,$a1,$a7
    ld	$at,0($at)
    addu	$ra,$a1,$t1
    sd	$at,0($v1)
    addu	$at,$a1,$t0
    ld	$ra,0($ra)
    addiu	$v0,$v0,-4
    addu	$t9,$a1,$a0
    sd	$ra,0($at)
    addu	$ra,$a1,$a6
    ld	$t9,0($t9)
    addu	$a1,$a1,$t2
    bgtz	$v0,.L0d9580c0
    sd	$t9,0($ra)
    # Line 645
    lw	$t9,496($s4)
    addiu	$a1,$s1,256
    jalr	$t9
    li	$a0,2816
    # Line 647
    lw	$t9,496($s4)
    addiu	$a1,$s1,272
    jalr	$t9
    li	$a0,2817
    # Line 648
    lw	$t9,496($s4)
    addiu	$a1,$s1,32
    jalr	$t9
    li	$a0,2818
    # Line 650
    lw	$t9,496($s4)
    addiu	$a1,$s1,48
    jalr	$t9
    li	$a0,2819
    lbu	$a0,3220($s0)
    addiu	$a1,$s1,208
    beqz	$a0,.L0d958c48
    lw	$t9,496($s4)
    # Line 653
    jalr	$t9
    li	$a0,2820
.L0d958164:
    # Line 659
    lw	$t9,496($s4)
    addiu	$a1,$s1,112
    jalr	$t9
    li	$a0,2822
    # Line 665
    lw	$t9,480($s4)
    addiu	$a1,$s1,277
    jalr	$t9
    li	$a0,2883
    andi	$a1,$s2,0x100
.L0d958188:
    beqz	$a1,.L0d9581b4
    # Line 672
    and	$a6,$s7,$s2
    # Line 669
    ld	$a5,1632($s0)
    sd	$a5,1456($s1)
    ld	$a4,1640($s0)
    sd	$a4,1464($s1)
    # Line 671
    lw	$a3,31792($s0)
    sw	$a3,184($s3)
    # Line 672
    lw	$a2,31836($s0)
    sw	$a2,228($s3)
    and	$a6,$s7,$s2
.L0d9581b4:
    beqz	$a6,.L0d95820c
    addiu	$a2,$s0,1936
    addiu	$a5,$s1,1760
    li	$a6,0x8
    # Line 675
    li	$v0,12
    move	$a1,$zero
    addiu	$a7,$s1,1756
    addiu	$a0,$s0,1932
    nop
    nop
    nop
.L0d9581e0:
    addu	$t1,$a1,$a0
    addu	$t2,$a1,$a7
    lw	$t1,0($t1)
    addiu	$v0,$v0,-2
    addu	$t0,$a1,$a2
    sw	$t1,0($t2)
    addu	$t1,$a1,$a5
    lw	$t0,0($t0)
    addu	$a1,$a1,$a6
    bgtz	$v0,.L0d9581e0
    sw	$t0,0($t1)
.L0d95820c:
    andi	$t2,$s2,0x80
    beqz	$t2,.L0d9582e4
    # Line 678
    addiu	$v0,$s1,1412
    addiu	$a0,$s0,1588
    lw	$a6,1588($s0)
    sw	$a6,1412($s1)
    lw	$a5,1592($s0)
    sw	$a5,1416($s1)
    lw	$a4,1596($s0)
    sw	$a4,1420($s1)
    lw	$a3,1600($s0)
    sw	$a3,1424($s1)
    lw	$v1,1604($s0)
    sw	$v1,1428($s1)
    lw	$at,1608($s0)
    sw	$at,1432($s1)
    lw	$ra,1612($s0)
    sw	$ra,1436($s1)
    lw	$t9,1616($s0)
    sw	$t9,1440($s1)
    lw	$t8,1620($s0)
    sw	$t8,1444($s1)
    lw	$t3,1624($s0)
    sw	$t3,1448($s1)
    # Line 684
    ld	$v0,32($sp)
    ld	$a0,24($sp)
    # Line 681
    lw	$a1,31752($s0)
    sw	$a1,144($s3)
    # Line 682
    lw	$a7,31756($s0)
    # Line 684
    addiu	$a0,$a0,-5960
    addiu	$v0,$v0,25648
    # Line 682
    sw	$a7,148($s3)
    # Line 684
    ld	$a4,32($sp)
    ld	$a5,24($sp)
    ld	$t8,25648($a4)
    sd	$t8,-5960($a5)
    ld	$t3,25656($a4)
    sd	$t3,-5952($a5)
    ld	$t2,25664($a4)
    sd	$t2,-5944($a5)
    ld	$t1,25672($a4)
    sd	$t1,-5936($a5)
    ld	$t0,25680($a4)
    sd	$t0,-5928($a5)
    ld	$a7,25688($a4)
    sd	$a7,-5920($a5)
    ld	$a6,25696($a4)
    sd	$a6,-5912($a5)
    ld	$a4,25704($a4)
    sd	$a4,-5904($a5)
    ld	$a3,64($v0)
    sd	$a3,64($a0)
    lw	$t9,72($v0)
    sw	$t9,72($a0)
.L0d9582e4:
    andi	$ra,$s2,0x8000
    beqz	$ra,.L0d95831c
    # Line 687
    andi	$a2,$s2,0x40
    ld	$a1,1896($s0)
    sd	$a1,1720($s1)
    ld	$a0,1904($s0)
    sd	$a0,1728($s1)
    ld	$v1,1912($s0)
    sd	$v1,1736($s1)
    ld	$v0,1920($s0)
    sd	$v0,1744($s1)
    lw	$at,1928($s0)
    sw	$at,1752($s1)
    andi	$a2,$s2,0x40
.L0d95831c:
    beqz	$a2,.L0d9585fc
    # Line 718
    andi	$v0,$s2,0x4
    # Line 691
    lw	$t9,3588($s0)
    lw	$t8,1792($s0)
    sll	$s7,$t9,0x3
    andi	$t8,$t8,0x80
    subu	$s7,$s7,$t9
    sll	$s7,$s7,0x2
    addu	$s7,$s7,$t9
    beqz	$t8,.L0d958360
    sll	$s7,$s7,0x2
    # Line 700
    lw	$t9,304($s4)
    jalr	$t9
    li	$a0,2903
    # Line 701
    lw	$t9,308($s4)
    jalr	$t9
    li	$a0,2903
.L0d958360:
    # Line 704
    lw	$a4,1384($s0)
    sw	$a4,1208($s1)
    # Line 705
    lw	$a3,1388($s0)
    sw	$a3,1212($s1)
    # Line 706
    lw	$a2,1392($s0)
    sw	$a2,1216($s1)
    # Line 707
    lw	$a1,1396($s0)
    sw	$a1,1220($s1)
    lw	$a0,1400($s0)
    sw	$a0,1224($s1)
    lw	$v1,1404($s0)
    sw	$v1,1228($s1)
    lw	$v0,1408($s0)
    sw	$v0,1232($s1)
    lw	$at,1412($s0)
    sw	$at,1236($s1)
    lw	$ra,1416($s0)
    sw	$ra,1240($s1)
    lw	$t9,1420($s0)
    # Line 708
    addiu	$a0,$s0,1424
    addiu	$v0,$s1,1248
    # Line 707
    sw	$t9,1244($s1)
    # Line 708
    ld	$ra,1424($s0)
    sd	$ra,1248($s1)
    ld	$t9,1432($s0)
    sd	$t9,1256($s1)
    ld	$t8,1440($s0)
    sd	$t8,1264($s1)
    ld	$t3,1448($s0)
    sd	$t3,1272($s1)
    ld	$t2,1456($s0)
    sd	$t2,1280($s1)
    ld	$t1,1464($s0)
    sd	$t1,1288($s1)
    ld	$t0,1472($s0)
    sd	$t0,1296($s1)
    ld	$a7,1480($s0)
    sd	$a7,1304($s1)
    ld	$a6,1488($s0)
    sd	$a6,1312($s1)
    ld	$a5,1496($s0)
    sd	$a5,1320($s1)
    # Line 709
    addiu	$v0,$s1,1328
    addiu	$a0,$s0,1504
    ld	$t2,1504($s0)
    sd	$t2,1328($s1)
    ld	$t1,1512($s0)
    sd	$t1,1336($s1)
    ld	$t0,1520($s0)
    sd	$t0,1344($s1)
    ld	$a7,1528($s0)
    sd	$a7,1352($s1)
    ld	$a6,1536($s0)
    sd	$a6,1360($s1)
    ld	$a5,1544($s0)
    sd	$a5,1368($s1)
    ld	$a4,1552($s0)
    sd	$a4,1376($s1)
    ld	$a3,1560($s0)
    sd	$a3,1384($s1)
    ld	$v1,1568($s0)
    sd	$v1,1392($s1)
    ld	$at,1576($s0)
    sd	$at,1400($s1)
    # Line 710
    lw	$t9,0($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s7
    # Line 712
    # lw $t9, -17016($gp) # &memcpy
    # Line 710
    move	$a0,$v0
    sw	$v0,1408($s1)
    # Line 712
    move	$a2,$s7
    jal	memcpy
    lw	$a1,1584($s0)
    # Line 715
    ld	$a2,32($sp)
    li	$a6,6
    ld	$a5,24($sp)
    li	$v0,78
    move	$a1,$zero
    addiu	$a5,$a5,-5884
    addiu	$a2,$a2,25724
    nop
    nop
    nop
.L0d9584b0:
    addiu	$a6,$a6,-1
    addu	$a7,$a1,$a2
    addiu	$v0,$v0,-1
    addu	$t0,$a1,$a5
    lw	$a7,0($a7)
    addiu	$a1,$a1,4
    bnez	$a6,.L0d9584b0
    sw	$a7,0($t0)
    addiu	$t1,$a2,28
    addiu	$t0,$a5,28
    li	$a6,0x20
    addiu	$s8,$a2,4
    addiu	$s7,$a5,4
    addiu	$ra,$a5,8
    addiu	$s5,$a2,8
    addiu	$a7,$a2,12
    addiu	$a0,$a5,12
    addiu	$s6,$a2,20
    addiu	$t2,$a5,20
    addiu	$t3,$a5,24
    addiu	$t8,$a2,24
    addiu	$t9,$a5,16
    addiu	$s4,$a2,16
    nop
.L0d958510:
    addu	$a4,$a1,$a2
    addu	$at,$a1,$a5
    lw	$a4,0($a4)
    addu	$a3,$a1,$s8
    sw	$a4,0($at)
    addu	$a4,$a1,$s7
    lw	$a3,0($a3)
    addu	$v1,$a1,$s5
    sw	$a3,0($a4)
    addu	$a3,$a1,$ra
    lw	$v1,0($v1)
    addu	$at,$a1,$a7
    sw	$v1,0($a3)
    addu	$v1,$a1,$a0
    lw	$at,0($at)
    addu	$a4,$a1,$s4
    sw	$at,0($v1)
    addu	$at,$a1,$t9
    lw	$a4,0($a4)
    addu	$a3,$a1,$s6
    sw	$a4,0($at)
    addu	$a4,$a1,$t2
    lw	$a3,0($a3)
    addu	$v1,$a1,$t8
    sw	$a3,0($a4)
    addu	$a3,$a1,$t3
    lw	$v1,0($v1)
    addiu	$v0,$v0,-8
    addu	$at,$a1,$t1
    sw	$v1,0($a3)
    addu	$v1,$a1,$t0
    lw	$at,0($at)
    addu	$a1,$a1,$a6
    bgtz	$v0,.L0d958510
    sw	$at,0($v1)
    # Line 716
    ld	$t9,32($sp)
    lw	$at,-27268($t9)
    sw	$at,6660($s3)
    lw	$ra,-27264($t9)
    sw	$ra,6664($s3)
    lw	$t9,-27260($t9)
    sw	$t9,6668($s3)
    # Line 717
    ld	$t8,31856($s0)
    sd	$t8,248($s3)
    ld	$t3,31864($s0)
    sd	$t3,256($s3)
    ld	$t2,31872($s0)
    sd	$t2,264($s3)
    ld	$t1,31880($s0)
    sd	$t1,272($s3)
    # Line 718
    ld	$t0,31888($s0)
    sd	$t0,280($s3)
    ld	$a7,31896($s0)
    sd	$a7,288($s3)
    ld	$a6,31904($s0)
    sd	$a6,296($s3)
    ld	$a5,31912($s0)
    sd	$a5,304($s3)
    andi	$v0,$s2,0x4
.L0d9585fc:
    beqz	$v0,.L0d958650
    # Line 727
    dsll32	$a6,$s2,0xe
    # Line 722
    lwc1	$f5,468($s0)
    swc1	$f5,292($s1)
    lwc1	$f4,472($s0)
    swc1	$f4,296($s1)
    lw	$a5,476($s0)
    sw	$a5,300($s1)
    lhu	$a4,480($s0)
    sh	$a4,304($s1)
    lh	$a3,482($s0)
    sh	$a3,306($s1)
    # Line 724
    lw	$a2,31828($s0)
    sw	$a2,220($s3)
    # Line 725
    lw	$a1,31812($s0)
    sw	$a1,204($s3)
    # Line 726
    lw	$a0,31816($s0)
    sw	$a0,208($s3)
    # Line 727
    lw	$v1,31820($s0)
    sw	$v1,212($s3)
    dsll32	$a6,$s2,0xe
.L0d958650:
    bgez	$a6,.L0d958664
    # Line 730
    andi	$t0,$s2,0x20
    lw	$a7,1980($s0)
    sw	$a7,1804($s1)
    andi	$t0,$s2,0x20
.L0d958664:
    beqz	$t0,.L0d958700
    # Line 739
    andi	$t0,$s2,0x2
    # Line 733
    lw	$a0,1236($s0)
    sw	$a0,1060($s1)
    addiu	$a7,$s0,648
    # Line 734
    lw	$v1,1240($s0)
    li	$a6,0x10
    # Line 735
    addiu	$a5,$s1,464
    # Line 734
    sw	$v1,1064($s1)
    # Line 735
    addiu	$a2,$s0,640
    li	$v0,8
    ld	$t1,640($s0)
    li	$a1,0xe
    addiu	$a0,$s1,472
    sd	$t1,464($s1)
.L0d9586a0:
    addu	$a4,$v0,$a2
    addu	$t0,$v0,$a5
    ld	$a4,0($a4)
    addiu	$a1,$a1,-2
    addu	$a3,$v0,$a7
    sd	$a4,0($t0)
    addu	$a4,$v0,$a0
    ld	$a3,0($a3)
    addu	$v0,$v0,$a6
    bgtz	$a1,.L0d9586a0
    sd	$a3,0($a4)
    # Line 738
    # lw $t9, -26820($gp) # &__glCopyColorTableScaleBias
    # Line 735
    addu	$a7,$v0,$a2
    # Line 738
    addiu	$a1,$s1,2364
    # Line 735
    addu	$a6,$v0,$a5
    lw	$a5,0($a7)
    # Line 738
    addiu	$a0,$s0,5432
    jal	__glCopyColorTableScaleBias
    # Line 735
    sw	$a5,0($a6)
    # Line 739
    # lw $t9, -26688($gp) # &__glCopyConvolutionPixelModeState
    addiu	$a1,$s1,464
    jal	__glCopyConvolutionPixelModeState
    addiu	$a0,$s0,640
    andi	$t0,$s2,0x2
.L0d958700:
    beqz	$t0,.L0d95872c
    # Line 745
    andi	$t3,$s2,0x8
    # Line 743
    lwc1	$f7,456($s0)
    swc1	$f7,280($s1)
    lwc1	$f6,460($s0)
    swc1	$f6,284($s1)
    lw	$t2,464($s0)
    sw	$t2,288($s1)
    # Line 745
    lw	$t1,31832($s0)
    sw	$t1,224($s3)
    andi	$t3,$s2,0x8
.L0d95872c:
    beqz	$t3,.L0d958780
    # Line 751
    andi	$a3,$s2,0x10
    # Line 748
    lw	$a2,484($s0)
    sw	$a2,308($s1)
    lw	$a1,488($s0)
    sw	$a1,312($s1)
    lw	$a0,492($s0)
    sw	$a0,316($s1)
    lw	$v1,496($s0)
    sw	$v1,320($s1)
    lw	$v0,500($s0)
    sw	$v0,324($s1)
    lw	$at,504($s0)
    sw	$at,328($s1)
    lw	$ra,508($s0)
    sw	$ra,332($s1)
    # Line 750
    lw	$t9,31748($s0)
    sw	$t9,140($s3)
    # Line 751
    lw	$t8,31824($s0)
    sw	$t8,216($s3)
    andi	$a3,$s2,0x10
.L0d958780:
    beqz	$a3,.L0d9587e0
    addiu	$a2,$s0,520
    addiu	$a5,$s1,344
    li	$a6,0x10
    # Line 754
    li	$a1,16
    move	$v0,$zero
    addiu	$a7,$s1,336
    addiu	$a0,$s0,512
.L0d9587a0:
    addu	$t0,$v0,$a0
    addu	$t1,$v0,$a7
    ld	$t0,0($t0)
    addiu	$a1,$a1,-2
    addu	$a4,$v0,$a2
    sd	$t0,0($t1)
    addu	$t0,$v0,$a5
    ld	$a4,0($a4)
    addu	$v0,$v0,$a6
    bgtz	$a1,.L0d9587a0
    sd	$a4,0($t0)
    # Line 756
    # lw $t9, -17016($gp) # &memcpy
    move	$a0,$s3
    li	$a2,128
    jal	memcpy
    addiu	$a1,$s0,31608
.L0d9587e0:
    dsll32	$t1,$s2,0xc
    bgez	$t1,.L0d958830
    # Line 762
    ld	$t9,24($sp)
    ld	$t8,32($sp)
    # Line 760
    lw	$a0,2524($s0)
    sw	$a0,2348($s1)
    lw	$v1,2528($s0)
    sw	$v1,2352($s1)
    lw	$v0,2532($s0)
    sw	$v0,2356($s1)
    lw	$at,2536($s0)
    sw	$at,2360($s1)
    # Line 762
    lw	$ra,26044($t8)
    sw	$ra,-5564($t9)
    # Line 763
    lw	$t8,26048($t8)
    sw	$t8,-5560($t9)
    # Line 764
    lw	$t3,31776($s0)
    sw	$t3,168($s3)
    # Line 765
    lw	$t2,31780($s0)
    sw	$t2,172($s3)
.L0d958830:
    andi	$a1,$s2,0x400
    beqz	$a1,.L0d958868
    # Line 771
    dsll32	$a7,$s2,0xd
    # Line 768
    ld	$a6,1664($s0)
    sd	$a6,1488($s1)
    ld	$a5,1672($s0)
    sd	$a5,1496($s1)
    ld	$a4,1680($s0)
    sd	$a4,1504($s1)
    # Line 770
    lw	$a3,31788($s0)
    sw	$a3,180($s3)
    # Line 771
    lw	$a2,31836($s0)
    sw	$a2,228($s3)
    dsll32	$a7,$s2,0xd
.L0d958868:
    bgez	$a7,.L0d958b64
    addiu	$a7,$s0,1992
    addiu	$a6,$s1,1816
    # Line 774
    lw	$t9,3608($s0)
    li	$t1,0x10
    # Line 780
    addiu	$a0,$s1,1808
    addiu	$t0,$s0,1984
    # Line 774
    sll	$s4,$t9,0x3
    # Line 780
    li	$v0,8
    ld	$t8,1984($s0)
    # Line 774
    addu	$s4,$s4,$t9
    # Line 780
    li	$a5,0xe
    sd	$t8,1808($s1)
    # Line 774
    sll	$s4,$s4,0x2
.L0d9588a0:
    # Line 780
    addu	$a1,$v0,$t0
    addu	$a2,$v0,$a0
    ld	$a1,0($a1)
    addiu	$a5,$a5,-2
    addu	$v1,$v0,$a7
    sd	$a1,0($a2)
    addu	$a1,$v0,$a6
    ld	$v1,0($v1)
    addu	$v0,$v0,$t1
    bgtz	$a5,.L0d9588a0
    sd	$v1,0($a1)
    li	$t2,3
    # Line 781
    li	$a5,31
    # Line 780
    addu	$a2,$v0,$t0
    # Line 781
    move	$t1,$zero
    # Line 780
    addu	$a3,$v0,$a0
    lw	$a2,0($a2)
    # Line 781
    addiu	$a6,$s1,1932
    addiu	$a7,$s0,2108
    # Line 780
    sw	$a2,0($a3)
.L0d9588f0:
    addiu	$t2,$t2,-1
    # Line 781
    addu	$a3,$t1,$a7
    addiu	$a5,$a5,-1
    addu	$a4,$t1,$a6
    lw	$a3,0($a3)
    addiu	$t1,$t1,4
    bnez	$t2,.L0d9588f0
    sw	$a3,0($a4)
    addiu	$t8,$a7,12
    addiu	$t2,$a6,12
    li	$t0,0x10
    addiu	$ra,$a7,4
    addiu	$t9,$a6,4
    addiu	$a0,$a6,8
    addiu	$t3,$a7,8
    move	$v0,$t1
.L0d958930:
    addu	$v1,$v0,$a7
    addu	$a1,$v0,$a6
    lw	$v1,0($v1)
    addu	$at,$v0,$ra
    sw	$v1,0($a1)
    addu	$v1,$v0,$t9
    lw	$at,0($at)
    addu	$t1,$v0,$t3
    sw	$at,0($v1)
    addu	$at,$v0,$a0
    lw	$t1,0($t1)
    addiu	$a5,$a5,-4
    addu	$a4,$v0,$t8
    sw	$t1,0($at)
    addu	$t1,$v0,$t2
    lw	$a4,0($a4)
    addu	$v0,$v0,$t0
    bgtz	$a5,.L0d958930
    sw	$a4,0($t1)
    addiu	$a6,$s0,2240
    addiu	$a7,$s1,2064
    li	$t1,0x10
    # Line 782
    addiu	$t0,$s1,2056
    addiu	$a0,$s0,2232
    ld	$a1,2232($s0)
    li	$v0,8
    li	$a5,0xe
    sd	$a1,2056($s1)
.L0d9589a0:
    addu	$a1,$v0,$a0
    addu	$a2,$v0,$t0
    ld	$a1,0($a1)
    addiu	$a5,$a5,-2
    addu	$v1,$v0,$a6
    sd	$a1,0($a2)
    addu	$a1,$v0,$a7
    ld	$v1,0($v1)
    addu	$v0,$v0,$t1
    bgtz	$a5,.L0d9589a0
    sd	$v1,0($a1)
    li	$t2,3
    # Line 783
    li	$t1,31
    # Line 782
    addu	$a2,$v0,$a0
    # Line 783
    move	$a5,$zero
    # Line 782
    addu	$a3,$v0,$t0
    lw	$a2,0($a2)
    # Line 783
    addiu	$a6,$s1,2180
    addiu	$a7,$s0,2356
    # Line 782
    sw	$a2,0($a3)
.L0d9589f0:
    addiu	$t2,$t2,-1
    # Line 783
    addu	$a3,$a5,$a7
    addiu	$t1,$t1,-1
    addu	$a4,$a5,$a6
    lw	$a3,0($a3)
    addiu	$a5,$a5,4
    bnez	$t2,.L0d9589f0
    sw	$a3,0($a4)
    addiu	$t8,$a7,12
    addiu	$t3,$a6,12
    li	$t2,0x10
    addiu	$ra,$a7,4
    addiu	$t9,$a6,4
    addiu	$t0,$a6,8
    addiu	$a0,$a7,8
    move	$v0,$t1
.L0d958a30:
    addu	$v1,$a5,$a7
    addu	$a1,$a5,$a6
    lw	$v1,0($v1)
    addu	$at,$a5,$ra
    sw	$v1,0($a1)
    addu	$v1,$a5,$t9
    lw	$at,0($at)
    addu	$t1,$a5,$a0
    sw	$at,0($v1)
    addu	$at,$a5,$t0
    lw	$t1,0($t1)
    addiu	$v0,$v0,-4
    addu	$a4,$a5,$t8
    sw	$t1,0($at)
    addu	$t1,$a5,$t3
    lw	$a4,0($a4)
    addu	$a5,$a5,$t2
    bgtz	$v0,.L0d958a30
    sw	$a4,0($t1)
    # Line 786
    lbu	$a3,2520($s0)
    sb	$a3,2344($s1)
    # Line 787
    lbu	$a2,2521($s0)
    sb	$a2,2345($s1)
    # Line 788
    lbu	$a1,2522($s0)
    sb	$a1,2346($s1)
    # Line 789
    lbu	$a0,2523($s0)
    sb	$a0,2347($s1)
    # Line 792
    lw	$t9,0($s0)
    move	$a1,$s4
    jalr	$t9
    move	$a0,$s0
    # Line 794
    # lw $t9, -17016($gp) # &memcpy
    # Line 792
    move	$a0,$v0
    sw	$v0,2308($s1)
    # Line 794
    move	$a2,$s4
    jal	memcpy
    lw	$a1,2484($s0)
    ld	$s6,32($sp)
    li	$s4,0xa580
    li	$s7,3553
    ld	$s5,24($sp)
    addu	$s4,$s4,$s3
    # Line 804
    # lw $t9, -17016($gp) # &memcpy
    ld	$a1,32($sp)
    move	$a0,$s4
    li	$a2,2452
    jal	memcpy
    lw	$a1,25604($a1)
    lw	$a2,-23156($s5)
    beq	$s7,$a2,.L0d958c9c
.L0d958af8:
    nop	# was lw $t9, -17016($gp) # &memcpy
    li	$a2,2452
    # Line 803
    addiu	$s4,$s4,2452
    # Line 804
    lw	$a1,25608($s6)
    jal	memcpy
    move	$a0,$s4
    lw	$a3,-20704($s5)
    beq	$s7,$a3,.L0d958cd8
.L0d958b18:
    nop	# was lw $t9, -17016($gp) # &memcpy
    li	$a2,2452
    # Line 803
    addiu	$s4,$s4,2452
    # Line 804
    lw	$a1,25612($s6)
    jal	memcpy
    move	$a0,$s4
    lw	$a4,-18252($s5)
    beq	$s7,$a4,.L0d958d14
.L0d958b38:
    nop	# was lw $t9, -17016($gp) # &memcpy
    li	$a2,2452
    # Line 803
    addiu	$s4,$s4,2452
    # Line 804
    lw	$a1,25616($s6)
    jal	memcpy
    move	$a0,$s4
    lw	$a5,-15800($s5)
    beq	$s7,$a5,.L0d958d50
    nop
.L0d958b5c:
    # Line 818
    lw	$a6,1792($s0)
    sw	$a6,1616($s1)
.L0d958b64:
    andi	$a7,$s2,0x1000
    beqz	$a7,.L0d958bac
    ld	$s5,88($sp)
    # Line 824
    lw	$s3,3600($s0)
    # Line 826
    lw	$t8,1744($s0)
    sw	$t8,1568($s1)
    # Line 827
    lw	$t9,0($s0)
    move	$a0,$s0
    # Line 824
    sll	$s3,$s3,0x4
    # Line 827
    jalr	$t9
    move	$a1,$s3
    # Line 829
    # lw $t9, -17016($gp) # &memcpy
    # Line 827
    move	$a0,$v0
    sw	$v0,1572($s1)
    # Line 829
    move	$a2,$s3
    jal	memcpy
    lw	$a1,1748($s0)
    ld	$s5,88($sp)
.L0d958bac:
    ld	$s8,80($sp)
    ld	$ra,72($sp)
    ld	$s7,64($sp)
    ld	$s4,56($sp)
    andi	$t9,$s2,0x800
    ld	$s3,48($sp)
    beqz	$t9,.L0d958c34
    ld	$s6,40($sp)
    # Line 835
    ld	$s2,16($sp)
    # Line 833
    ld	$a3,1688($s0)
    sd	$a3,1512($s1)
    ld	$a2,1696($s0)
    sd	$a2,1520($s1)
    ld	$a1,1704($s0)
    sd	$a1,1528($s1)
    ld	$a0,1712($s0)
    sd	$a0,1536($s1)
    ld	$v1,1720($s0)
    sd	$v1,1544($s1)
    ld	$v0,1728($s0)
    move	$s5,$s5
    sd	$v0,1552($s1)
    move	$s8,$s8
    move	$s7,$s7
    ld	$at,1736($s0)
    move	$s4,$s4
    move	$ra,$ra
    # Line 835
    ld	$s0,8($sp)
    move	$s3,$s3
    move	$s6,$s6
    # Line 833
    sd	$at,1560($s1)
    # Line 835
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d958c34:
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d958c48:
    # Line 656
    jalr	$t9
    li	$a0,2821
    b	.L0d958164
    nop
.L0d958c58:
    # Line 615
    lw	$t9,4($s0)
    ld	$s5,104($sp)
    move	$a0,$s0
    li	$a2,0xed50
    ld	$s1,96($sp)
    jalr	$t9
    li	$a1,1
    # Line 617
    sw	$v0,0($s1)
    # Line 619
    lw	$t9,4($s0)
    # Line 615
    move	$s3,$v0
    # Line 619
    li	$a2,3024
    li	$a1,1
    jalr	$t9
    move	$a0,$s0
    move	$s1,$v0
    b	.L0d957f5c
    # Line 621
    sw	$v0,0($s5)
.L0d958c9c:
    # Line 809
    lw	$s3,-21884($s5)
    # Line 810
    lw	$t9,0($s0)
    # Line 809
    addu	$s3,$s3,$s3
    # Line 810
    move	$a0,$s0
    # Line 809
    sll	$s3,$s3,0x2
    # Line 810
    jalr	$t9
    move	$a1,$s3
    # Line 811
    # lw $t9, -17016($gp) # &memcpy
    # Line 810
    move	$s8,$v0
    # Line 811
    move	$a0,$v0
    move	$a2,$s3
    jal	memcpy
    lw	$a1,-21880($s5)
    b	.L0d958af8
    # Line 812
    sw	$s8,-21880($s5)
.L0d958cd8:
    # Line 809
    lw	$s3,-19432($s5)
    # Line 810
    lw	$t9,0($s0)
    # Line 809
    addu	$s3,$s3,$s3
    # Line 810
    move	$a0,$s0
    # Line 809
    sll	$s3,$s3,0x2
    # Line 810
    jalr	$t9
    move	$a1,$s3
    # Line 811
    # lw $t9, -17016($gp) # &memcpy
    # Line 810
    move	$s8,$v0
    # Line 811
    move	$a0,$v0
    move	$a2,$s3
    jal	memcpy
    lw	$a1,-19428($s5)
    b	.L0d958b18
    # Line 812
    sw	$s8,-19428($s5)
.L0d958d14:
    # Line 809
    lw	$s3,-16980($s5)
    # Line 810
    lw	$t9,0($s0)
    # Line 809
    addu	$s3,$s3,$s3
    # Line 810
    move	$a0,$s0
    # Line 809
    sll	$s3,$s3,0x2
    # Line 810
    jalr	$t9
    move	$a1,$s3
    # Line 811
    # lw $t9, -17016($gp) # &memcpy
    # Line 810
    move	$s8,$v0
    # Line 811
    move	$a0,$v0
    move	$a2,$s3
    jal	memcpy
    lw	$a1,-16976($s5)
    b	.L0d958b38
    # Line 812
    sw	$s8,-16976($s5)
.L0d958d50:
    # Line 809
    lw	$s7,-14528($s5)
    # Line 810
    lw	$t9,0($s0)
    # Line 809
    addu	$s7,$s7,$s7
    # Line 810
    move	$a0,$s0
    # Line 809
    sll	$s7,$s7,0x2
    # Line 810
    jalr	$t9
    move	$a1,$s7
    # Line 811
    # lw $t9, -17016($gp) # &memcpy
    # Line 810
    move	$s3,$v0
    # Line 811
    move	$a0,$v0
    move	$a2,$s7
    jal	memcpy
    lw	$a1,-14524($s5)
    b	.L0d958b5c
    # Line 812
    sw	$s3,-14524($s5)
.L0d958d8c:
    move	$s6,$s6
    move	$s3,$s3
    move	$s7,$s7
    # Line 610
    # lw $t9, -26792($gp) # &__glSetError
    move	$ra,$ra
    move	$s8,$s8
    move	$s5,$s5
    li	$a0,1282
    ld	$s0,8($sp)
    ld	$s2,16($sp)
    jr	$t9
    addiu	$sp,$sp,112
.end PushAttributes

# Function: __glOdyim_PushAttrib
# Declared: Line 838 (Source lines: 838-854)
# Address: 0x0d958dc0 - 0x0d958e94 (Size: 212 bytes, Frame: 48)
.globl __glOdyim_PushAttrib
.ent __glOdyim_PushAttrib
__glOdyim_PushAttrib:
    # Line 838
    addiu	$sp,$sp,-48
    # Line 844
    lw	$at,4120($zero)
    lw	$a1,4112($zero)
    li	$v0,1
    # Line 838
    lui	$v1,0x1a
    # Line 846
    lui	$a2,0x1
    sd	$ra,40($sp)
    # Line 838
    addiu	$v1,$v1,-2096
    sd	$gp,32($sp)
    # Line 844
    beq	$at,$v0,.L0d958e80
    # Line 838
    addu	$gp,$t9,$v1
    # Line 846
    addu	$a2,$a1,$a2
    sd	$a2,0($sp)
    # Line 847
    lw	$a4,3776($a1)
    lw	$a3,26832($a2)
    # Line 846
    lw	$a2,26836($a2)
    # Line 847
    sll	$a4,$a4,0x2
    sd	$a1,8($sp)
    addu	$a3,$a3,$a4
    # Line 846
    sd	$a2,16($sp)
    # Line 847
    sltu	$a2,$a2,$a3
    lw	$a3,12732($a1)
    beqz	$a2,.L0d958e64
    sd	$a3,24($sp)
    # Line 849
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,32512
    ld	$a1,16($sp)
    bal __glOdyim_Enable
    ld	$a2,24($sp)
    # Line 851
    ld	$at,24($sp)
    # Line 850
    ld	$v1,0($sp)
    ld	$v0,16($sp)
    ld	$ra,40($sp)
    addiu	$v0,$v0,4
    sw	$v0,26836($v1)
    # Line 851
    ld	$v0,8($sp)
    # Line 854
    ld	$gp,32($sp)
    addiu	$sp,$sp,48
    # Line 851
    addiu	$at,$at,4
    # Line 854
    jr	$ra
    # Line 851
    sw	$at,12732($v0)
.L0d958e64:
    # Line 853
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1283
    ld	$ra,40($sp)
.L0d958e74:
    # Line 854
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d958e80:
    # Line 844
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d958e74
    ld	$ra,40($sp)
.end __glOdyim_PushAttrib

# Function: __glOdyssey_CopyContext
# Declared: Line 858 (Source lines: 861-874)
# Address: 0x0d958ea0 - 0x0d958f10 (Size: 112 bytes, Frame: 16)
.globl __glOdyssey_CopyContext
.ent __glOdyssey_CopyContext
__glOdyssey_CopyContext:
    # Line 861
    move	$a5,$a2
    lw	$v0,4112($zero)
    move	$a4,$a0
    lui	$at,0x1a
    addiu	$sp,$sp,-16
    addiu	$at,$at,-2320
    sd	$gp,0($sp)
    beq	$v0,$a1,.L0d958ed4
    addu	$gp,$t9,$at
    # Line 869
    li	$v0,1
    # Line 874
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d958ed4:
    # Line 872
    # lw $t9, -32744($gp) # &.text
    move	$a0,$a2
    lui	$a1,0x1
    ori	$a2,$a1,0x68cc
    addiu	$t9,$t9,32512
    ori	$a1,$a1,0x68c8
    addu	$a2,$a4,$a2
    sd	$ra,8($sp)
    bal __glOdyim_Enable
    addu	$a1,$a4,$a1
    ld	$ra,8($sp)
    # Line 874
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyssey_CopyContext

# Function: TargetIndexToTargetEnum
# Declared: Line 878 (Source lines: 879-891)
# Address: 0x0d958f10 - 0x0d958f5c (Size: 76 bytes, Frame: 0)
.ent TargetIndexToTargetEnum
TargetIndexToTargetEnum:
    # Line 879
    beqz	$a0,.L0d958f44
    # Line 884
    li	$v0,3553
    # Line 879
    li	$at,1
    beq	$a0,$at,.L0d958f4c
    nop
    li	$v0,3
    beq	$a0,$v0,.L0d958f54
    li	$v1,2
    # Line 891
    move	$v0,$zero
    xor	$v1,$a0,$v1
    # Line 888
    li	$a0,0x806f
    # Line 882
    jr	$ra
    movz	$v0,$a0,$v1
.L0d958f44:
    jr	$ra
    li	$v0,3552
.L0d958f4c:
    jr	$ra
    nop
.L0d958f54:
    jr	$ra
    # Line 886
    li	$v0,0x8095
.end TargetIndexToTargetEnum

# Function: PopAttributes
# Declared: Line 896 (Source lines: 896-1606)
# Address: 0x0d958f60 - 0x0d95ac90 (Size: 7472 bytes, Frame: 224)
.ent PopAttributes
PopAttributes:
    # Line 896
    addiu	$sp,$sp,-352
    sd	$s1,40($sp)
    # Line 905
    lw	$s1,4112($zero)
    sd	$s0,336($sp)
    lw	$at,4120($zero)
    # Line 896
    sd	$s7,48($sp)
    # Line 905
    li	$v0,1
    # Line 896
    move	$s7,$a0
    sd	$s2,56($sp)
    move	$s2,$a1
    # Line 905
    beq	$at,$v0,.L0d95ac78
    sd	$ra,328($sp)
    sd	$s6,312($sp)
    # Line 954
    lw	$s6,0($a1)
    sd	$s3,304($sp)
    sd	$s8,24($sp)
    andi	$v1,$s6,0x2000
    li	$s8,2
    # Line 949
    lw	$a0,6132($s1)
    # Line 954
    lui	$s3,0x1
    beqz	$v1,.L0d959144
    sd	$a0,296($sp)
    lw	$a0,1616($a1)
    lw	$v0,1792($s1)
    nor	$a1,$a0,$zero
    and	$a1,$v0,$a1
    andi	$a1,$a1,0x4000
    beqz	$a1,.L0d958fe4
    # Line 976
    nop	# was lw $t9, -23720($gp) # &__glReadjustZCounts
    jal	__glReadjustZCounts
    move	$a0,$s1
    lw	$a0,1616($s2)
    lw	$v0,1792($s1)
.L0d958fe4:
    nor	$a2,$v0,$zero
    and	$a2,$a0,$a2
    andi	$a2,$a2,0x4000
    beqz	$a2,.L0d959004
    # Line 1016
    ld	$v0,-14296($gp)
    # Line 984
    lw	$a3,31364($s1)
    sw	$a3,31368($s1)
    # Line 1016
    ld	$v0,-14296($gp)
.L0d959004:
    # Line 1013
    addu	$s0,$s3,$s1
    lw	$a1,6660($s7)
    sw	$a1,-27268($s0)
    lw	$a0,6664($s7)
    sw	$a0,-27264($s0)
    lw	$v1,6668($s7)
    sw	$v1,-27260($s0)
    # Line 1016
    lw	$at,31740($s1)
    and	$at,$at,$v0
    sw	$at,31740($s1)
    lui	$v1,0x5f
    lw	$v0,132($s7)
    ori	$v1,$v1,0xe1df
    and	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,31740($s1)
    lw	$ra,26976($s0)
    ori	$ra,$ra,0x2
    sw	$ra,26976($s0)
    sw	$s8,4120($zero)
    li	$t9,0xe000
    lw	$t8,31744($s1)
    nor	$t9,$t9,$zero
    and	$t8,$t8,$t9
    sw	$t8,31744($s1)
    lw	$t9,136($s7)
    andi	$t9,$t9,0xe000
    or	$t8,$t8,$t9
    sw	$t8,31744($s1)
    lw	$t3,26976($s0)
    ori	$t3,$t3,0x4
    sw	$t3,26976($s0)
    sw	$s8,4120($zero)
    sw	$zero,1792($s1)
    lw	$t2,1616($s2)
    sw	$t2,1792($s1)
    sw	$zero,1796($s1)
    lw	$t1,1620($s2)
    sw	$t1,1796($s1)
    # Line 1019
    ld	$t0,1616($s2)
    sd	$t0,1792($s1)
    ld	$a7,1624($s2)
    sd	$a7,1800($s1)
    ld	$a6,1632($s2)
    sd	$a6,1808($s1)
    lw	$a5,1640($s2)
    # Line 1020
    addu	$a4,$s3,$s7
    # Line 1019
    sw	$a5,1816($s1)
    # Line 1020
    lw	$a4,-5884($a4)
    sw	$a4,25724($s0)
    # Line 1027
    lw	$t9,11972($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1028
    lw	$t9,11964($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1032
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,26048
    bal __glOdyim_FinishAsyncSGIX
    move	$a0,$s1
    # Line 1038
    lw	$v1,1792($s1)
    lui	$a1,0x8000
    lw	$a0,31956($s1)
    and	$v1,$v1,$a1
    li	$a1,-2
    sltu	$v1,$zero,$v1
    and	$a0,$a0,$a1
    or	$v1,$v1,$a0
    sw	$v1,31956($s1)
    # Line 1039
    lw	$v0,26976($s0)
    ori	$v0,$v0,0x200
    sw	$v0,26976($s0)
    sw	$s8,4120($zero)
    # Line 1041
    lw	$at,26980($s0)
    ori	$at,$at,0xfc0
    sw	$at,26980($s0)
    # Line 1048
    sw	$s8,4120($zero)
    lw	$ra,11812($s1)
    ori	$ra,$ra,0x3e
    sw	$ra,11812($s1)
.L0d959144:
    andi	$t1,$s6,0x200
    beqz	$t1,.L0d959174
    # Line 1055
    andi	$t2,$s6,0x4000
    lwc1	$f3,1472($s2)
    swc1	$f3,1648($s1)
    lwc1	$f2,1476($s2)
    swc1	$f2,1652($s1)
    lwc1	$f1,1480($s2)
    swc1	$f1,1656($s1)
    lwc1	$f0,1484($s2)
    swc1	$f0,1660($s1)
    andi	$t2,$s6,0x4000
.L0d959174:
    beqz	$t2,.L0d95ac60
    addiu	$a5,$s2,1648
    addiu	$a2,$s1,1824
    li	$a1,0x8
    # Line 1058
    addiu	$a6,$s1,1820
    addiu	$a7,$s2,1644
    lw	$t3,1644($s2)
    li	$v0,4
    li	$a0,0x12
    sw	$t3,1820($s1)
    nop
.L0d9591a0:
    addu	$a3,$v0,$a7
    addu	$a4,$v0,$a6
    lw	$a3,0($a3)
    addiu	$a0,$a0,-2
    addu	$v1,$v0,$a5
    sw	$a3,0($a4)
    addu	$a3,$v0,$a2
    lw	$v1,0($v1)
    addu	$v0,$v0,$a1
    bgtz	$a0,.L0d9591a0
    sw	$v1,0($a3)
    # Line 1071
    lw	$a5,176($s7)
    addu	$s0,$s3,$s1
    sw	$a5,31784($s1)
    lw	$a4,-26576($s0)
    beqz	$a4,.L0d959204
    # Line 1072
    lui	$a6,0x1
    sw	$zero,-26576($s0)
    ori	$t1,$a6,0x443
    sw	$t1,0($s3)
    li	$a7,250
    sw	$a7,0($s3)
    ori	$a6,$a6,0x46
    sw	$a6,0($s3)
    sw	$a6,0($s3)
.L0d959204:
    lui	$v0,0x1
    ori	$a0,$v0,0x41e
    sw	$a0,0($s3)
    lw	$v1,31784($s1)
    sw	$v1,0($s3)
    # Line 1074
    lw	$at,188($s7)
    sw	$at,31796($s1)
    # Line 1075
    lw	$ra,192($s7)
    sw	$ra,31800($s1)
    # Line 1076
    lw	$t9,196($s7)
    sw	$t9,31804($s1)
    # Line 1077
    lw	$t8,26976($s0)
    ori	$t8,$t8,0x1
    sw	$t8,26976($s0)
    sw	$s8,4120($zero)
    # Line 1079
    lw	$t3,200($s7)
    sw	$t3,31808($s1)
    lw	$t2,-26576($s0)
    beqz	$t2,.L0d959278
    # Line 1080
    lui	$a2,0x1
    sw	$zero,-26576($s0)
    ori	$a3,$v0,0x443
    sw	$a3,0($s3)
    li	$a2,250
    sw	$a2,0($s3)
    ori	$a1,$v0,0x46
    sw	$a1,0($s3)
    sw	$a1,0($s3)
    lui	$a2,0x1
.L0d959278:
    ori	$a2,$a2,0x422
    sw	$a2,0($s3)
    lw	$a1,31808($s1)
    sw	$a1,0($s3)
    # Line 1085
    lw	$a0,228($s7)
    srl	$a0,$a0,0x14
    lw	$v1,31836($s1)
    lui	$a1,0x10
    andi	$a0,$a0,0x1
    nor	$a2,$a1,$zero
    sll	$a0,$a0,0x14
    and	$v1,$v1,$a2
    and	$a0,$a0,$a1
    or	$v1,$v1,$a0
    sw	$v1,31836($s1)
    # Line 1088
    lw	$a0,228($s7)
    srl	$a0,$a0,0x15
    lui	$a1,0x20
    andi	$a0,$a0,0x1
    nor	$a2,$a1,$zero
    sll	$a0,$a0,0x15
    and	$v1,$v1,$a2
    and	$a0,$a0,$a1
    or	$v1,$v1,$a0
    sw	$v1,31836($s1)
    # Line 1091
    lw	$a0,228($s7)
    srl	$a0,$a0,0x16
    lui	$a1,0x40
    andi	$a0,$a0,0x1
    nor	$a2,$a1,$zero
    sll	$a0,$a0,0x16
    and	$v1,$v1,$a2
    and	$a0,$a0,$a1
    or	$v1,$v1,$a0
    sw	$v1,31836($s1)
    # Line 1094
    lw	$a0,228($s7)
    srl	$a0,$a0,0x17
    lui	$a1,0x80
    andi	$a0,$a0,0x1
    nor	$a2,$a1,$zero
    sll	$a0,$a0,0x17
    and	$v1,$v1,$a2
    and	$a0,$a0,$a1
    or	$v1,$v1,$a0
    sw	$v1,31836($s1)
    # Line 1097
    lw	$v0,228($s7)
    li	$a0,-4096
    and	$v1,$v1,$a0
    andi	$v0,$v0,0xfff
    or	$v0,$v0,$v1
    sw	$v0,31836($s1)
    # Line 1098
    lw	$at,26976($s0)
    ori	$at,$at,0x80
    sw	$at,26976($s0)
    sw	$s8,4120($zero)
    # Line 1100
    lw	$ra,26980($s0)
    # Line 1103
    ld	$t9,296($sp)
    # Line 1100
    ori	$ra,$ra,0x800
    sw	$ra,26980($s0)
    sw	$s8,4120($zero)
    # Line 1103
    lw	$t9,256($t9)
    sd	$s5,320($sp)
    sd	$s4,32($sp)
    jal	.text
    lw	$a0,1888($s1)
    li	$t8,2048
    lui	$s5,0x1e
    sd	$t8,104($sp)
    li	$s4,15
    ori	$s5,$s5,0x4000
.L0d959390:
    andi	$t9,$s6,0x100
    # Line 1112
    li	$a1,250
    lui	$a0,0x1
    # Line 1103
    beqz	$t9,.L0d959448
    # Line 1112
    ori	$a2,$a0,0x443
    # Line 1107
    ld	$v1,1456($s2)
    sd	$v1,1632($s1)
    ld	$v0,1464($s2)
    sd	$v0,1640($s1)
    # Line 1111
    lw	$at,184($s7)
    addu	$s0,$s3,$s1
    sw	$at,31792($s1)
    lw	$ra,-26576($s0)
    # Line 1109
    or	$s5,$s3,$s5
    # Line 1112
    ori	$a0,$a0,0x46
    # Line 1111
    beqz	$ra,.L0d9593e8
    # Line 1108
    ori	$s4,$s4,0x10
    # Line 1112
    sw	$zero,-26576($s0)
    sw	$a2,0($s3)
    sw	$a1,0($s3)
    sw	$a0,0($s3)
    sw	$a0,0($s3)
.L0d9593e8:
    lui	$t0,0x1
    ori	$t0,$t0,0x420
    sw	$t0,0($s3)
    lw	$a7,31792($s1)
    sw	$a7,0($s3)
    # Line 1116
    lw	$a6,228($s7)
    srl	$a6,$a6,0x18
    andi	$a6,$a6,0x1
    lui	$a7,0x100
    lw	$a5,31836($s1)
    nor	$t0,$a7,$zero
    sll	$a6,$a6,0x18
    and	$a5,$a5,$t0
    and	$a6,$a6,$a7
    or	$a5,$a5,$a6
    sw	$a5,31836($s1)
    # Line 1117
    lw	$a4,26976($s0)
    ori	$a4,$a4,0x80
    sw	$a4,26976($s0)
    sw	$s8,4120($zero)
    # Line 1119
    lw	$a3,26980($s0)
    ori	$a3,$a3,0x800
    sw	$a3,26980($s0)
    sw	$s8,4120($zero)
.L0d959448:
    and	$t1,$s3,$s6
    beqz	$t1,.L0d9594b8
    # Line 1125
    andi	$at,$s6,0x80
    addiu	$a7,$s2,1760
    addiu	$a2,$s1,1936
    li	$a1,0x8
    # Line 1122
    li	$a0,12
    move	$v0,$zero
    addiu	$a5,$s1,1932
    addiu	$a6,$s2,1756
.L0d959470:
    addu	$t3,$v0,$a6
    addu	$t8,$v0,$a5
    lw	$t3,0($t3)
    addiu	$a0,$a0,-2
    addu	$t2,$v0,$a7
    sw	$t3,0($t8)
    addu	$t3,$v0,$a2
    lw	$t2,0($t2)
    addu	$v0,$v0,$a1
    bgtz	$a0,.L0d959470
    sw	$t2,0($t3)
    # Line 1124
    lw	$ra,1632($s2)
    sw	$ra,1808($s1)
    # Line 1123
    lui	$t9,0x80
    # Line 1125
    lw	$t8,1636($s2)
    # Line 1123
    or	$s4,$s4,$t9
    # Line 1125
    sw	$t8,1812($s1)
    andi	$at,$s6,0x80
.L0d9594b8:
    beqz	$at,.L0d9595b4
    # Line 1135
    andi	$t9,$s6,0x8000
    # Line 1128
    addiu	$v0,$s1,1588
    addiu	$a0,$s2,1412
    lw	$t3,1412($s2)
    sw	$t3,1588($s1)
    lw	$t2,1416($s2)
    sw	$t2,1592($s1)
    lw	$t1,1420($s2)
    sw	$t1,1596($s1)
    lw	$t0,1424($s2)
    sw	$t0,1600($s1)
    lw	$a7,1428($s2)
    sw	$a7,1604($s1)
    lw	$a6,1432($s2)
    sw	$a6,1608($s1)
    lw	$a5,1436($s2)
    sw	$a5,1612($s1)
    lw	$a4,1440($s2)
    sw	$a4,1616($s1)
    lw	$a3,1444($s2)
    sw	$a3,1620($s1)
    lw	$v1,1448($s2)
    sw	$v1,1624($s1)
    # Line 1131
    ld	$v0,104($sp)
    # Line 1129
    ori	$s4,$s4,0x20
    # Line 1130
    lui	$t9,0x40
    # Line 1132
    lw	$ra,144($s7)
    # Line 1134
    addu	$a2,$s3,$s7
    addu	$s0,$s3,$s1
    # Line 1132
    sw	$ra,31752($s1)
    # Line 1134
    addiu	$a0,$s0,25648
    addiu	$a1,$a2,-5960
    # Line 1133
    lw	$t8,148($s7)
    # Line 1130
    or	$s5,$s5,$t9
    # Line 1131
    ori	$v0,$v0,0x10
    # Line 1133
    sw	$t8,31756($s1)
    sd	$v0,104($sp)
    # Line 1134
    ld	$t2,-5960($a2)
    sd	$t2,25648($s0)
    ld	$t1,-5952($a2)
    sd	$t1,25656($s0)
    ld	$t0,-5944($a2)
    sd	$t0,25664($s0)
    ld	$a7,-5936($a2)
    sd	$a7,25672($s0)
    ld	$a5,-5928($a2)
    sd	$a5,25680($s0)
    ld	$a4,-5920($a2)
    sd	$a4,25688($s0)
    ld	$a3,-5912($a2)
    sd	$a3,25696($s0)
    ld	$v1,-5904($a2)
    sd	$v1,25704($s0)
    ld	$at,-5896($a2)
    sd	$at,25712($s0)
    lw	$t8,-5888($a2)
    sw	$t8,25720($s0)
    # Line 1135
    lw	$t3,26980($s0)
    ori	$t3,$t3,0x1000
    sw	$t3,26980($s0)
    sw	$s8,4120($zero)
    andi	$t9,$s6,0x8000
.L0d9595b4:
    beqz	$t9,.L0d9595e8
    # Line 1138
    andi	$a1,$s6,0x40
    ld	$a0,1720($s2)
    sd	$a0,1896($s1)
    ld	$v1,1728($s2)
    sd	$v1,1904($s1)
    ld	$v0,1736($s2)
    sd	$v0,1912($s1)
    ld	$at,1744($s2)
    sd	$at,1920($s1)
    lw	$ra,1752($s2)
    sw	$ra,1928($s1)
    andi	$a1,$s6,0x40
.L0d9595e8:
    beqz	$a1,.L0d959b58
    # Line 1241
    andi	$v0,$s6,0x1
    # Line 1143
    lw	$t9,1624($s2)
    sw	$t9,1800($s1)
    # Line 1144
    lw	$t8,1208($s2)
    sw	$t8,1384($s1)
    # Line 1145
    lw	$t3,1212($s2)
    sw	$t3,1388($s1)
    # Line 1146
    lw	$t2,1216($s2)
    sw	$t2,1392($s1)
    # Line 1147
    lw	$t1,1220($s2)
    sw	$t1,1396($s1)
    lw	$t0,1224($s2)
    sw	$t0,1400($s1)
    lw	$a7,1228($s2)
    sw	$a7,1404($s1)
    lw	$a6,1232($s2)
    sw	$a6,1408($s1)
    lw	$a5,1236($s2)
    sw	$a5,1412($s1)
    lw	$a4,1240($s2)
    sw	$a4,1416($s1)
    lw	$a3,1244($s2)
    # Line 1148
    addiu	$v0,$s1,1424
    addiu	$a0,$s2,1248
    # Line 1147
    sw	$a3,1420($s1)
    # Line 1148
    ld	$t1,1248($s2)
    sd	$t1,1424($s1)
    ld	$t0,1256($s2)
    sd	$t0,1432($s1)
    ld	$a7,1264($s2)
    sd	$a7,1440($s1)
    ld	$a6,1272($s2)
    sd	$a6,1448($s1)
    ld	$a5,1280($s2)
    sd	$a5,1456($s1)
    ld	$a4,1288($s2)
    sd	$a4,1464($s1)
    ld	$a3,1296($s2)
    sd	$a3,1472($s1)
    ld	$v1,1304($s2)
    sd	$v1,1480($s1)
    ld	$at,1312($s2)
    sd	$at,1488($s1)
    ld	$ra,1320($s2)
    sd	$ra,1496($s1)
    # Line 1149
    addiu	$a0,$s1,1504
    addiu	$v0,$s2,1328
    ld	$a5,1328($s2)
    sd	$a5,1504($s1)
    ld	$a4,1336($s2)
    sd	$a4,1512($s1)
    ld	$a3,1344($s2)
    sd	$a3,1520($s1)
    ld	$v1,1352($s2)
    sd	$v1,1528($s1)
    ld	$at,1360($s2)
    sd	$at,1536($s1)
    ld	$ra,1368($s2)
    sd	$ra,1544($s1)
    ld	$t9,1376($s2)
    sd	$t9,1552($s1)
    ld	$t8,1384($s2)
    sd	$t8,1560($s1)
    ld	$t3,1392($s2)
    sd	$t3,1568($s1)
    ld	$t2,1400($s2)
    sd	$t2,1576($s1)
    # Line 1150
    lw	$a3,3588($s1)
    # lw $t9, -17016($gp) # &memcpy
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    lw	$a1,1408($s2)
    sll	$a2,$a2,0x2
    lw	$a0,1584($s1)
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 1153
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,1408($s2)
    # Line 1154
    sw	$zero,1408($s2)
    # Line 1167
    lw	$a3,3588($s1)
    li	$a4,1
    addu	$s0,$s3,$s1
    lw	$a2,26984($s0)
    sllv	$a3,$a4,$a3
    li	$a5,6
    addiu	$a3,$a3,-1
    # Line 1171
    li	$v0,78
    # Line 1167
    or	$a2,$a2,$a3
    sw	$a2,26984($s0)
    # Line 1171
    move	$a0,$zero
    addu	$a1,$s3,$s7
    # Line 1168
    lw	$a7,3588($s1)
    # Line 1171
    addiu	$a1,$a1,-5884
    # Line 1162
    lui	$a6,0x820
    ori	$a6,$a6,0x1800
    # Line 1168
    lw	$a3,26988($s0)
    sllv	$a4,$a4,$a7
    # Line 1162
    or	$s5,$s5,$a6
    # Line 1168
    addiu	$a4,$a4,-1
    # Line 1171
    addiu	$a2,$s0,25724
    # Line 1168
    or	$a3,$a3,$a4
    sw	$a3,26988($s0)
.L0d959790:
    addiu	$a5,$a5,-1
    # Line 1171
    addu	$a4,$a0,$a1
    addiu	$v0,$v0,-1
    addu	$a6,$a0,$a2
    lw	$a4,0($a4)
    addiu	$a0,$a0,4
    bnez	$a5,.L0d959790
    sw	$a4,0($a6)
    addiu	$ra,$a1,28
    addiu	$t2,$a2,28
    li	$t1,0x20
    addiu	$t9,$a2,4
    addiu	$t8,$a2,8
    addiu	$a4,$a2,12
    sd	$a4,72($sp)
    addiu	$a7,$a1,20
    addiu	$a5,$a1,12
    sd	$a5,88($sp)
    addiu	$a5,$a2,20
    addiu	$t0,$a1,24
    addiu	$a3,$a2,24
    sd	$a3,64($sp)
    addiu	$a6,$a2,16
    addiu	$v1,$a1,8
    sd	$v1,80($sp)
    addiu	$t3,$a1,16
    addiu	$at,$a1,4
    sd	$at,96($sp)
.L0d959800:
    ld	$a4,80($sp)
    addu	$v1,$a0,$a1
    lw	$v1,0($v1)
    addu	$a3,$a0,$a2
    ld	$at,96($sp)
    sw	$v1,0($a3)
    ld	$a3,72($sp)
    addu	$at,$a0,$at
    addu	$v1,$a0,$t9
    lw	$at,0($at)
    sw	$at,0($v1)
    addu	$a4,$a0,$a4
    ld	$v1,88($sp)
    addu	$at,$a0,$t8
    lw	$a4,0($a4)
    sw	$a4,0($at)
    addu	$v1,$a0,$v1
    addu	$a3,$a0,$a3
    lw	$v1,0($v1)
    sw	$v1,0($a3)
    addu	$at,$a0,$t3
    ld	$a3,64($sp)
    addu	$v1,$a0,$a6
    lw	$at,0($at)
    addu	$a4,$a0,$a7
    sw	$at,0($v1)
    addu	$at,$a0,$a5
    lw	$a4,0($a4)
    addu	$v1,$a0,$t0
    sw	$a4,0($at)
    addu	$a3,$a0,$a3
    lw	$v1,0($v1)
    addiu	$v0,$v0,-8
    addu	$at,$a0,$ra
    sw	$v1,0($a3)
    lw	$at,0($at)
    addu	$v1,$a0,$t2
    addu	$a0,$a0,$t1
    bgtz	$v0,.L0d959800
    sw	$at,0($v1)
    # Line 1172
    ld	$t8,248($s7)
    sd	$t8,31856($s1)
    ld	$t3,256($s7)
    sd	$t3,31864($s1)
    ld	$t2,264($s7)
    sd	$t2,31872($s1)
    ld	$t1,272($s7)
    sd	$t1,31880($s1)
    # Line 1173
    ld	$t0,280($s7)
    sd	$t0,31888($s1)
    ld	$a7,288($s7)
    sd	$a7,31896($s1)
    ld	$a6,296($s7)
    sd	$a6,31904($s1)
    ld	$a5,304($s7)
    sd	$a5,31912($s1)
    # Line 1177
    lw	$a4,6660($s7)
    sw	$a4,-27268($s0)
    lw	$a3,6664($s7)
    sw	$a3,-27264($s0)
    lw	$a2,6668($s7)
    # Line 1178
    lw	$a0,26976($s0)
    # Line 1177
    sw	$a2,-27260($s0)
    # Line 1178
    lui	$a1,0x80
    or	$a0,$a0,$a1
    sw	$a0,26976($s0)
    beqz	$s5,.L0d959944
    sw	$s8,4120($zero)
    # Line 1181
    lw	$ra,31740($s1)
    nor	$at,$s5,$zero
    and	$ra,$ra,$at
    sw	$ra,31740($s1)
    lw	$at,132($s7)
    and	$at,$at,$s5
    or	$ra,$ra,$at
    sw	$ra,31740($s1)
    lw	$t9,26976($s0)
    ori	$t9,$t9,0x2
    sw	$t9,26976($s0)
    move	$s5,$zero
    sw	$s8,4120($zero)
.L0d959944:
    ld	$a2,-14288($gp)
    lw	$a1,31744($s1)
    and	$a1,$a1,$a2
    sw	$a1,31744($s1)
    lui	$a3,0x8
    lw	$a2,136($s7)
    ori	$a3,$a3,0xe000
    and	$a2,$a2,$a3
    or	$a1,$a1,$a2
    sw	$a1,31744($s1)
    lw	$a0,26976($s0)
    ori	$a0,$a0,0x4
    sw	$a0,26976($s0)
    sw	$s8,4120($zero)
    li	$v1,192
    lw	$v0,1792($s1)
    nor	$v1,$s4,$v1
    and	$v0,$v0,$v1
    sw	$v0,1792($s1)
    lw	$v1,1616($s2)
    ori	$a0,$s4,0xc0
    and	$v1,$v1,$a0
    or	$v0,$v0,$v1
    sw	$v0,1792($s1)
    ld	$v0,104($sp)
    li	$at,12288
    lw	$ra,1796($s1)
    # Line 1190
    # lw $t9, -32744($gp) # &.text
    # Line 1181
    nor	$at,$v0,$at
    and	$ra,$ra,$at
    sw	$ra,1796($s1)
    lw	$at,1620($s2)
    ori	$v0,$v0,0x3000
    # Line 1190
    addiu	$t9,$t9,26048
    # Line 1181
    and	$at,$at,$v0
    or	$ra,$ra,$at
    sw	$ra,1796($s1)
    # Line 1190
    bal __glOdyim_FinishAsyncSGIX
    move	$a0,$s1
    # Line 1200
    ld	$t9,296($sp)
    lw	$t9,128($t9)
    addiu	$a2,$s2,1248
    li	$a1,4608
    jal	.text
    li	$a0,1028
    # Line 1202
    ld	$t9,296($sp)
    lw	$t9,128($t9)
    addiu	$a2,$s2,1328
    li	$a1,4608
    jalr	$t9
    li	$a0,1029
    # Line 1205
    ld	$t9,296($sp)
    lw	$t9,128($t9)
    addiu	$a2,$s2,1264
    li	$a1,4609
    jalr	$t9
    li	$a0,1028
    # Line 1207
    ld	$t9,296($sp)
    lw	$t9,128($t9)
    addiu	$a2,$s2,1344
    li	$a1,4609
    jalr	$t9
    li	$a0,1029
    # Line 1210
    ld	$t9,296($sp)
    lw	$t9,128($t9)
    addiu	$a2,$s2,1280
    li	$a1,4610
    jalr	$t9
    li	$a0,1028
    # Line 1212
    ld	$t9,296($sp)
    lw	$t9,128($t9)
    addiu	$a2,$s2,1360
    li	$a1,4610
    jalr	$t9
    li	$a0,1029
    # Line 1215
    ld	$t9,296($sp)
    lw	$t9,128($t9)
    addiu	$a2,$s2,1296
    li	$a1,5632
    jalr	$t9
    li	$a0,1028
    # Line 1217
    ld	$t9,296($sp)
    lw	$t9,128($t9)
    addiu	$a2,$s2,1376
    li	$a1,5632
    jalr	$t9
    li	$a0,1029
    # Line 1220
    ld	$t9,296($sp)
    lw	$t9,124($t9)
    li	$a1,5633
    lwc1	$f14,1312($s2)
    jalr	$t9
    li	$a0,1028
    # Line 1222
    ld	$t9,296($sp)
    lw	$t9,124($t9)
    li	$a1,5633
    lwc1	$f14,1392($s2)
    jalr	$t9
    li	$a0,1029
    # Line 1225
    lwc1	$f6,1316($s2)
    swc1	$f6,0($sp)
    # Line 1226
    lwc1	$f5,1324($s2)
    swc1	$f5,4($sp)
    # Line 1227
    lwc1	$f4,1320($s2)
    # Line 1228
    ld	$t9,296($sp)
    # Line 1227
    swc1	$f4,8($sp)
    # Line 1228
    lw	$t9,128($t9)
    addiu	$a2,$sp,0
    li	$a1,5635
    jalr	$t9
    li	$a0,1028
    # Line 1230
    lwc1	$f9,1396($s2)
    swc1	$f9,0($sp)
    # Line 1231
    lwc1	$f8,1404($s2)
    swc1	$f8,4($sp)
    # Line 1232
    lwc1	$f7,1400($s2)
    # Line 1233
    ld	$t9,296($sp)
    # Line 1232
    swc1	$f7,8($sp)
    # Line 1233
    lw	$t9,128($t9)
    addiu	$a2,$sp,0
    li	$a1,5635
    jalr	$t9
    li	$a0,1029
    # Line 1237
    lw	$at,26980($s0)
    ori	$at,$at,0x1c0
    sw	$at,26980($s0)
    # Line 1241
    sw	$s8,4120($zero)
    lw	$ra,11812($s1)
    sd	$zero,104($sp)
    move	$s4,$zero
    ori	$ra,$ra,0x20
    sw	$ra,11812($s1)
    andi	$v0,$s6,0x1
.L0d959b58:
    beqz	$v0,.L0d959c58
    # Line 1272
    andi	$ra,$s6,0x4
    li	$a5,2
    # Line 1244
    li	$v0,34
    move	$a0,$zero
    addiu	$a2,$s1,184
    addiu	$a1,$s2,8
.L0d959b74:
    addiu	$a5,$a5,-1
    addu	$v1,$a0,$a1
    addiu	$v0,$v0,-1
    addu	$a3,$a0,$a2
    ld	$v1,0($v1)
    addiu	$a0,$a0,8
    bnez	$a5,.L0d959b74
    sd	$v1,0($a3)
    addiu	$a6,$a1,24
    addiu	$a5,$a2,24
    li	$t1,0x20
    addiu	$a7,$a1,8
    addiu	$t0,$a2,8
    addiu	$t2,$a2,16
    addiu	$t3,$a1,16
.L0d959bb0:
    addu	$t9,$a0,$a1
    addu	$ra,$a0,$a2
    ld	$t9,0($t9)
    addu	$t8,$a0,$a7
    sd	$t9,0($ra)
    addu	$t9,$a0,$t0
    ld	$t8,0($t8)
    addu	$a4,$a0,$t3
    sd	$t8,0($t9)
    addu	$t8,$a0,$t2
    ld	$a4,0($a4)
    addiu	$v0,$v0,-4
    addu	$a3,$a0,$a6
    sd	$a4,0($t8)
    addu	$a4,$a0,$a5
    ld	$a3,0($a3)
    addu	$a0,$a0,$t1
    bgtz	$v0,.L0d959bb0
    sd	$a3,0($a4)
    # Line 1249
    addu	$ra,$s3,$s1
    sb	$zero,-22724($ra)
    # Line 1265
    lw	$t9,6132($s1)
    lw	$t9,1500($t9)
    jalr	$t9
    addiu	$a0,$s1,432
    # Line 1267
    lw	$t9,6132($s1)
    lw	$t9,1552($t9)
    jalr	$t9
    lwc1	$f12,448($s1)
    # Line 1268
    lw	$t9,6132($s1)
    lw	$t9,1604($t9)
    jalr	$t9
    addiu	$a0,$s1,208
    # Line 1270
    lw	$t9,6132($s1)
    lw	$t9,1732($t9)
    jalr	$t9
    addiu	$a0,$s1,224
    # Line 1272
    lw	$t9,6132($s1)
    lw	$t9,36($t9)
    jalr	$t9
    lbu	$a0,453($s1)
    andi	$ra,$s6,0x4
.L0d959c58:
    beqz	$ra,.L0d959d28
    # Line 1289
    dsll32	$ra,$s6,0xe
    # Line 1276
    lwc1	$f11,292($s2)
    swc1	$f11,468($s1)
    lwc1	$f10,296($s2)
    swc1	$f10,472($s1)
    lw	$a5,300($s2)
    sw	$a5,476($s1)
    lhu	$a4,304($s2)
    sh	$a4,480($s1)
    lh	$a3,306($s2)
    sh	$a3,482($s1)
    # Line 1281
    lw	$a2,220($s7)
    # Line 1282
    addu	$s0,$s3,$s1
    # Line 1281
    sw	$a2,31828($s1)
    # Line 1282
    lw	$a1,26976($s0)
    ori	$a1,$a1,0x40
    sw	$a1,26976($s0)
    sw	$s8,4120($zero)
    # Line 1284
    lw	$a0,204($s7)
    sw	$a0,31812($s1)
    # Line 1285
    lw	$v1,208($s7)
    sw	$v1,31816($s1)
    # Line 1286
    lw	$v0,212($s7)
    sw	$v0,31820($s1)
    lw	$at,-26576($s0)
    # Line 1279
    ori	$s5,$s5,0xa
    # Line 1286
    beqz	$at,.L0d959cf0
    # Line 1277
    ori	$s4,$s4,0x300
    # Line 1287
    sw	$zero,-26576($s0)
    lui	$a6,0x1
    ori	$t0,$a6,0x443
    sw	$t0,0($s3)
    li	$a7,250
    sw	$a7,0($s3)
    ori	$a6,$a6,0x46
    sw	$a6,0($s3)
    sw	$a6,0($s3)
.L0d959cf0:
    lui	$t9,0x1
    ori	$t9,$t9,0xc48
    sw	$t9,0($s3)
    lw	$t8,31812($s1)
    sw	$t8,0($s3)
    lw	$t3,31816($s1)
    sw	$t3,0($s3)
    lw	$t2,31820($s1)
    sw	$t2,0($s3)
    # Line 1289
    sw	$s8,4120($zero)
    lw	$t1,11812($s1)
    ori	$t1,$t1,0x2
    sw	$t1,11812($s1)
    dsll32	$ra,$s6,0xe
.L0d959d28:
    bgez	$ra,.L0d959d3c
    # Line 1292
    andi	$v0,$s6,0x20
    lw	$at,1804($s2)
    sw	$at,1980($s1)
    andi	$v0,$s6,0x20
.L0d959d3c:
    beqz	$v0,.L0d959e08
    addiu	$a1,$s2,472
    addiu	$a6,$s1,648
    li	$a7,0x10
    # Line 1295
    addiu	$a5,$s1,640
    addiu	$a2,$s2,464
    ld	$v1,464($s2)
    li	$v0,8
    li	$a0,0xe
    sd	$v1,640($s1)
    nop
    nop
    nop
.L0d959d70:
    addu	$a3,$v0,$a2
    addu	$a4,$v0,$a5
    ld	$a3,0($a3)
    addiu	$a0,$a0,-2
    addu	$v1,$v0,$a1
    sd	$a3,0($a4)
    addu	$a3,$v0,$a6
    ld	$v1,0($v1)
    addu	$v0,$v0,$a7
    bgtz	$a0,.L0d959d70
    sd	$v1,0($a3)
    # Line 1300
    # lw $t9, -26820($gp) # &__glCopyColorTableScaleBias
    # Line 1295
    addu	$a6,$v0,$a2
    addu	$a7,$v0,$a5
    lw	$a6,0($a6)
    sw	$a6,0($a7)
    # Line 1296
    lw	$a5,1064($s2)
    sw	$a5,1240($s1)
    # Line 1300
    addiu	$a1,$s1,5432
    # Line 1297
    lw	$a4,1060($s2)
    # Line 1300
    addiu	$a0,$s2,2364
    jal	__glCopyColorTableScaleBias
    # Line 1297
    sw	$a4,1236($s1)
    # Line 1301
    # lw $t9, -26688($gp) # &__glCopyConvolutionPixelModeState
    addiu	$a1,$s1,640
    jal	__glCopyConvolutionPixelModeState
    addiu	$a0,$s2,464
    # Line 1312
    sw	$s8,4120($zero)
    lw	$t1,11812($s1)
    # Line 1303
    lui	$t2,0x3e00
    # Line 1305
    ld	$a7,104($sp)
    lui	$t0,0x2
    ori	$t0,$t0,0x4027
    # Line 1312
    ori	$t1,$t1,0x10
    sw	$t1,11812($s1)
    # Line 1303
    or	$s4,$s4,$t2
    # Line 1305
    or	$a7,$a7,$t0
    sd	$a7,104($sp)
.L0d959e08:
    # Line 1312
    andi	$t3,$s6,0x2
    beqz	$t3,.L0d959e60
    # Line 1320
    andi	$v1,$s6,0x8
    # Line 1315
    lwc1	$f13,280($s2)
    swc1	$f13,456($s1)
    lwc1	$f12,284($s2)
    swc1	$f12,460($s1)
    lw	$v0,288($s2)
    sw	$v0,464($s1)
    # Line 1318
    lw	$at,224($s7)
    # Line 1319
    addu	$ra,$s3,$s1
    # Line 1318
    sw	$at,31832($s1)
    # Line 1319
    lw	$t9,26976($ra)
    ori	$t9,$t9,0x40
    sw	$t9,26976($ra)
    # Line 1320
    sw	$s8,4120($zero)
    lw	$t8,11812($s1)
    # Line 1317
    ori	$s5,$s5,0x1
    # Line 1316
    ori	$s4,$s4,0x400
    # Line 1320
    ori	$t8,$t8,0x8
    sw	$t8,11812($s1)
    andi	$v1,$s6,0x8
.L0d959e60:
    # Line 1351
    li	$t9,250
    lui	$t8,0x1
    # Line 1320
    beqz	$v1,.L0d959f64
    # Line 1351
    ori	$ra,$t8,0x443
    # Line 1337
    ld	$a3,104($sp)
    # Line 1323
    lw	$t3,308($s2)
    sw	$t3,484($s1)
    lw	$t2,312($s2)
    sw	$t2,488($s1)
    lw	$t1,316($s2)
    sw	$t1,492($s1)
    lw	$t0,320($s2)
    sw	$t0,496($s1)
    lw	$a7,324($s2)
    sw	$a7,500($s1)
    lw	$a6,328($s2)
    sw	$a6,504($s1)
    lw	$a5,332($s2)
    sw	$a5,508($s1)
    # Line 1350
    lw	$a4,140($s7)
    addu	$s0,$s3,$s1
    sw	$a4,31748($s1)
    # Line 1348
    lui	$a2,0x80
    # Line 1331
    lui	$a0,0x100
    # Line 1350
    lw	$a1,-26576($s0)
    # Line 1331
    ori	$a0,$a0,0x3800
    # Line 1348
    ori	$a2,$a2,0x7f4
    or	$s5,$s5,$a2
    # Line 1337
    ori	$a3,$a3,0x600
    sd	$a3,104($sp)
    # Line 1350
    beqz	$a1,.L0d959ef8
    # Line 1331
    or	$s4,$s4,$a0
    # Line 1351
    sw	$zero,-26576($s0)
    sw	$ra,0($s3)
    sw	$t9,0($s3)
    ori	$t8,$t8,0x46
    sw	$t8,0($s3)
    sw	$t8,0($s3)
.L0d959ef8:
    lui	$v0,0x1
    ori	$a1,$v0,0x415
    sw	$a1,0($s3)
    lw	$a0,31748($s1)
    sw	$a0,0($s3)
    # Line 1353
    lw	$v1,216($s7)
    sw	$v1,31824($s1)
    lw	$at,-26576($s0)
    beqz	$at,.L0d959f44
    # Line 1354
    lui	$a7,0x1
    sw	$zero,-26576($s0)
    ori	$a4,$v0,0x443
    sw	$a4,0($s3)
    li	$a3,250
    sw	$a3,0($s3)
    ori	$a2,$v0,0x46
    sw	$a2,0($s3)
    sw	$a2,0($s3)
    lui	$a7,0x1
.L0d959f44:
    ori	$a7,$a7,0x458
    sw	$a7,0($s3)
    lw	$a6,31824($s1)
    sw	$a6,0($s3)
    # Line 1356
    sw	$s8,4120($zero)
    lw	$a5,11812($s1)
    ori	$a5,$a5,0x4
    sw	$a5,11812($s1)
.L0d959f64:
    andi	$t0,$s6,0x10
    beqz	$t0,.L0d95a13c
    # Line 1365
    dsll32	$v1,$s6,0xc
    addiu	$a2,$s2,344
    addiu	$a7,$s1,520
    li	$a5,0x10
    # Line 1359
    li	$v0,16
    move	$a0,$zero
    addiu	$a1,$s1,512
    addiu	$a6,$s2,336
    nop
.L0d959f90:
    addu	$t2,$a0,$a6
    addu	$t3,$a0,$a1
    ld	$t2,0($t2)
    addiu	$v0,$v0,-2
    addu	$t1,$a0,$a2
    sd	$t2,0($t3)
    addu	$t2,$a0,$a7
    ld	$t1,0($t1)
    addu	$a0,$a0,$a5
    bgtz	$v0,.L0d959f90
    sd	$t1,0($t2)
    # Line 1361
    # lw $t9, -17016($gp) # &memcpy
    li	$a2,128
    move	$a1,$s7
    jal	memcpy
    addiu	$a0,$s1,31608
    addu	$s0,$s3,$s1
    lw	$t3,-26576($s0)
    beqz	$t3,.L0d95a008
    # Line 1363
    lui	$ra,0x1
    lui	$t8,0x1
    sw	$zero,-26576($s0)
    ori	$ra,$t8,0x443
    sw	$ra,0($s3)
    li	$t9,250
    sw	$t9,0($s3)
    ori	$t8,$t8,0x46
    sw	$t8,0($s3)
    sw	$t8,0($s3)
    lui	$ra,0x1
.L0d95a008:
    ori	$v0,$ra,0x43f
    sw	$v0,0($s3)
    lw	$at,31736($s1)
    sw	$at,0($s3)
    ori	$t9,$ra,0x3c4e
    sw	$t9,0($s3)
    lw	$t8,31608($s1)
    sw	$t8,0($s3)
    lw	$t3,31612($s1)
    sw	$t3,0($s3)
    lw	$t2,31616($s1)
    sw	$t2,0($s3)
    lw	$t1,31620($s1)
    sw	$t1,0($s3)
    lw	$t0,31624($s1)
    sw	$t0,0($s3)
    lw	$a7,31628($s1)
    sw	$a7,0($s3)
    lw	$a6,31632($s1)
    sw	$a6,0($s3)
    lw	$a5,31636($s1)
    sw	$a5,0($s3)
    lw	$a4,31640($s1)
    sw	$a4,0($s3)
    lw	$a3,31644($s1)
    sw	$a3,0($s3)
    lw	$a2,31648($s1)
    sw	$a2,0($s3)
    lw	$a1,31652($s1)
    sw	$a1,0($s3)
    lw	$a0,31656($s1)
    sw	$a0,0($s3)
    lw	$v1,31660($s1)
    sw	$v1,0($s3)
    lw	$v0,31664($s1)
    sw	$v0,0($s3)
    lw	$at,31668($s1)
    sw	$at,0($s3)
    ori	$ra,$ra,0x3c4f
    sw	$ra,0($s3)
    lw	$t9,31672($s1)
    sw	$t9,0($s3)
    lw	$t8,31676($s1)
    sw	$t8,0($s3)
    lw	$t3,31680($s1)
    sw	$t3,0($s3)
    lw	$t2,31684($s1)
    sw	$t2,0($s3)
    lw	$t1,31688($s1)
    sw	$t1,0($s3)
    lw	$t0,31692($s1)
    sw	$t0,0($s3)
    lw	$a7,31696($s1)
    sw	$a7,0($s3)
    lw	$a6,31700($s1)
    sw	$a6,0($s3)
    lw	$a5,31704($s1)
    sw	$a5,0($s3)
    lw	$a4,31708($s1)
    sw	$a4,0($s3)
    lw	$a3,31712($s1)
    sw	$a3,0($s3)
    lw	$a2,31716($s1)
    sw	$a2,0($s3)
    lw	$a1,31720($s1)
    sw	$a1,0($s3)
    lw	$a0,31724($s1)
    sw	$a0,0($s3)
    lw	$v1,31728($s1)
    sw	$v1,0($s3)
    lw	$v0,31732($s1)
    sw	$v0,0($s3)
    # Line 1365
    sw	$s8,4120($zero)
    lw	$at,11812($s1)
    ori	$at,$at,0x40
    sw	$at,11812($s1)
    dsll32	$v1,$s6,0xc
.L0d95a13c:
    bgez	$v1,.L0d95a2a4
    # Line 1410
    andi	$a6,$s6,0x400
    # Line 1379
    lw	$v0,1792($s1)
    andi	$a0,$v0,0x4000
    beqz	$a0,.L0d95a190
    nop
    lw	$a2,2524($s1)
    lw	$a1,2348($s2)
    lw	$a7,2360($s2)
    bne	$a1,$a2,.L0d95a1a4
    lw	$t0,2536($s1)
    lw	$a4,2528($s1)
    lw	$a3,2352($s2)
    bne	$a3,$a4,.L0d95a1a8
    # Line 1387
    nop	# was lw $t9, -23720($gp) # &__glReadjustZCounts
    # Line 1379
    lw	$a6,2532($s1)
    lw	$a5,2356($s2)
    bne	$a5,$a6,.L0d95a1a8
    # Line 1387
    nop	# was lw $t9, -23720($gp) # &__glReadjustZCounts
    # Line 1379
    bne	$a7,$t0,.L0d95a1a8
    # Line 1387
    nop	# was lw $t9, -23720($gp) # &__glReadjustZCounts
.L0d95a190:
    # Line 1379
    lw	$a0,1616($s2)
    nor	$t1,$a0,$zero
    and	$t1,$v0,$t1
    andi	$t1,$t1,0x4000
    beqz	$t1,.L0d95a1b8
.L0d95a1a4:
    # Line 1387
    nop	# was lw $t9, -23720($gp) # &__glReadjustZCounts
.L0d95a1a8:
    jal	__glReadjustZCounts
    move	$a0,$s1
    lw	$a0,1616($s2)
    lw	$v0,1792($s1)
.L0d95a1b8:
    nor	$t2,$v0,$zero
    and	$t2,$a0,$t2
    andi	$t2,$t2,0x4000
    beqz	$t2,.L0d95a1d4
    nop
    # Line 1392
    lw	$t3,31364($s1)
    sw	$t3,31368($s1)
.L0d95a1d4:
    # Line 1395
    lw	$at,2348($s2)
    sw	$at,2524($s1)
    lw	$ra,2352($s2)
    sw	$ra,2528($s1)
    lw	$t9,2356($s2)
    # Line 1397
    ori	$s5,$s5,0x2000
    # Line 1395
    sw	$t9,2532($s1)
    lw	$t8,2360($s2)
    # Line 1397
    beqz	$s5,.L0d95a234
    # Line 1395
    sw	$t8,2536($s1)
    # Line 1400
    lw	$a0,31740($s1)
    nor	$a1,$s5,$zero
    and	$a0,$a0,$a1
    sw	$a0,31740($s1)
    lw	$a1,132($s7)
    and	$a1,$a1,$s5
    addu	$v1,$s3,$s1
    or	$a0,$a0,$a1
    sw	$a0,31740($s1)
    lw	$v0,26976($v1)
    ori	$v0,$v0,0x2
    sw	$v0,26976($v1)
    move	$s5,$zero
    sw	$s8,4120($zero)
.L0d95a234:
    lw	$a4,1792($s1)
    li	$a5,16384
    nor	$a5,$s4,$a5
    and	$a4,$a4,$a5
    sw	$a4,1792($s1)
    lw	$a5,1616($s2)
    ori	$a6,$s4,0x4000
    and	$a5,$a5,$a6
    or	$a4,$a4,$a5
    sw	$a4,1792($s1)
    ld	$a4,104($sp)
    lw	$a2,1796($s1)
    # Line 1409
    lw	$t9,11972($s1)
    # Line 1400
    nor	$a3,$a4,$zero
    and	$a2,$a2,$a3
    sw	$a2,1796($s1)
    lw	$a3,1620($s2)
    # Line 1409
    move	$a0,$s1
    # Line 1400
    and	$a3,$a3,$a4
    or	$a2,$a2,$a3
    # Line 1409
    jalr	$t9
    # Line 1400
    sw	$a2,1796($s1)
    # Line 1410
    lw	$t9,11964($s1)
    jalr	$t9
    move	$a0,$s1
    move	$s4,$zero
    sd	$zero,104($sp)
    andi	$a6,$s6,0x400
.L0d95a2a4:
    beqz	$a6,.L0d95a33c
    # Line 1426
    dsll32	$v1,$s6,0xd
    # Line 1414
    ld	$v0,1488($s2)
    sd	$v0,1664($s1)
    ld	$at,1496($s2)
    sd	$at,1672($s1)
    ld	$ra,1504($s2)
    sd	$ra,1680($s1)
    # Line 1418
    lw	$t9,180($s7)
    # Line 1419
    addu	$t0,$s3,$s1
    # Line 1418
    sw	$t9,31788($s1)
    # Line 1419
    lw	$t8,26976($t0)
    ori	$t8,$t8,0x20
    sw	$t8,26976($t0)
    sw	$s8,4120($zero)
    # Line 1423
    lw	$t3,228($s7)
    srl	$t3,$t3,0xc
    lui	$t8,0xf
    andi	$t3,$t3,0xff
    ori	$t8,$t8,0xf000
    lw	$t2,31836($s1)
    nor	$t9,$t8,$zero
    sll	$t3,$t3,0xc
    and	$t2,$t2,$t9
    and	$t3,$t3,$t8
    or	$t2,$t2,$t3
    sw	$t2,31836($s1)
    # Line 1424
    lw	$t1,26976($t0)
    ori	$t1,$t1,0x80
    sw	$t1,26976($t0)
    sw	$s8,4120($zero)
    # Line 1426
    lw	$a7,26980($t0)
    ori	$a7,$a7,0x800
    sw	$a7,26980($t0)
    # Line 1416
    ori	$s5,$s5,0x8000
    # Line 1415
    ori	$s4,$s4,0x8000
    # Line 1426
    sw	$s8,4120($zero)
    dsll32	$v1,$s6,0xd
.L0d95a33c:
    bgez	$v1,.L0d95a9ec
    addiu	$a2,$s2,1816
    addiu	$a7,$s1,1992
    li	$a1,0x10
    # Line 1435
    addiu	$a5,$s1,1984
    addiu	$a6,$s2,1808
    ld	$a3,1808($s2)
    li	$v0,8
    li	$a0,0xe
    sd	$a3,1984($s1)
    nop
    nop
    nop
.L0d95a370:
    addu	$a3,$v0,$a6
    addu	$a4,$v0,$a5
    ld	$a3,0($a3)
    addiu	$a0,$a0,-2
    addu	$v1,$v0,$a2
    sd	$a3,0($a4)
    addu	$a3,$v0,$a7
    ld	$v1,0($v1)
    addu	$v0,$v0,$a1
    bgtz	$a0,.L0d95a370
    sd	$v1,0($a3)
    li	$t0,3
    # Line 1436
    li	$a7,31
    # Line 1435
    addu	$a4,$v0,$a6
    # Line 1436
    move	$a0,$zero
    # Line 1435
    addu	$t1,$v0,$a5
    lw	$a4,0($a4)
    # Line 1436
    addiu	$a1,$s1,2108
    addiu	$a2,$s2,1932
    # Line 1435
    sw	$a4,0($t1)
.L0d95a3c0:
    addiu	$t0,$t0,-1
    # Line 1436
    addu	$a5,$a0,$a2
    addiu	$a7,$a7,-1
    addu	$a6,$a0,$a1
    lw	$a5,0($a5)
    addiu	$a0,$a0,4
    bnez	$t0,.L0d95a3c0
    sw	$a5,0($a6)
    addiu	$t2,$a2,12
    addiu	$t1,$a1,12
    li	$t0,0x10
    addiu	$t8,$a2,4
    addiu	$t3,$a1,4
    addiu	$a6,$a1,8
    addiu	$a5,$a2,8
    move	$v0,$a7
.L0d95a400:
    addu	$at,$a0,$a2
    addu	$v1,$a0,$a1
    lw	$at,0($at)
    addu	$ra,$a0,$t8
    sw	$at,0($v1)
    addu	$at,$a0,$t3
    lw	$ra,0($ra)
    addu	$t9,$a0,$a5
    sw	$ra,0($at)
    addu	$ra,$a0,$a6
    lw	$t9,0($t9)
    addiu	$v0,$v0,-4
    addu	$a7,$a0,$t2
    sw	$t9,0($ra)
    addu	$t9,$a0,$t1
    lw	$a7,0($a7)
    addu	$a0,$a0,$t0
    bgtz	$v0,.L0d95a400
    sw	$a7,0($t9)
    addiu	$a1,$s2,2064
    addiu	$a2,$s1,2240
    li	$a7,0x10
    # Line 1437
    addiu	$a6,$s1,2232
    addiu	$a5,$s2,2056
    ld	$v1,2056($s2)
    li	$v0,8
    li	$a0,0xe
    sd	$v1,2232($s1)
.L0d95a470:
    addu	$a3,$v0,$a5
    addu	$a4,$v0,$a6
    ld	$a3,0($a3)
    addiu	$a0,$a0,-2
    addu	$v1,$v0,$a1
    sd	$a3,0($a4)
    addu	$a3,$v0,$a2
    ld	$v1,0($v1)
    addu	$v0,$v0,$a7
    bgtz	$a0,.L0d95a470
    sd	$v1,0($a3)
    li	$t0,3
    # Line 1438
    li	$a0,31
    # Line 1437
    addu	$a4,$v0,$a5
    # Line 1438
    move	$a7,$zero
    # Line 1437
    addu	$t1,$v0,$a6
    lw	$a4,0($a4)
    # Line 1438
    addiu	$a2,$s1,2356
    addiu	$a1,$s2,2180
    # Line 1437
    sw	$a4,0($t1)
.L0d95a4c0:
    addiu	$t0,$t0,-1
    # Line 1438
    addu	$a5,$a7,$a1
    addiu	$a0,$a0,-1
    addu	$a6,$a7,$a2
    lw	$a5,0($a5)
    addiu	$a7,$a7,4
    bnez	$t0,.L0d95a4c0
    sw	$a5,0($a6)
    addiu	$t2,$a1,12
    addiu	$t1,$a2,12
    li	$t0,0x10
    addiu	$t8,$a1,4
    addiu	$t3,$a2,4
    addiu	$a6,$a2,8
    addiu	$a5,$a1,8
    move	$v0,$a7
.L0d95a500:
    addu	$at,$v0,$a1
    addu	$v1,$v0,$a2
    lw	$at,0($at)
    addu	$ra,$v0,$t8
    sw	$at,0($v1)
    addu	$at,$v0,$t3
    lw	$ra,0($ra)
    addu	$t9,$v0,$a5
    sw	$ra,0($at)
    addu	$ra,$v0,$a6
    lw	$t9,0($t9)
    addiu	$a0,$a0,-4
    addu	$a7,$v0,$t2
    sw	$t9,0($ra)
    addu	$t9,$v0,$t1
    lw	$a7,0($a7)
    addu	$v0,$v0,$t0
    bgtz	$a0,.L0d95a500
    sw	$a7,0($t9)
    # Line 1451
    # lw $t9, -30560($gp) # &__glOdyim_TexEnviv
    # Line 1441
    lbu	$a1,2344($s2)
    sb	$a1,2520($s1)
    # Line 1442
    lbu	$a0,2345($s2)
    sb	$a0,2521($s1)
    # Line 1443
    lbu	$v1,2346($s2)
    sb	$v1,2522($s1)
    # Line 1444
    lbu	$v0,2347($s2)
    # Line 1451
    li	$a1,8704
    # Line 1444
    sb	$v0,2523($s1)
    # Line 1451
    li	$a0,8960
    jal	__glOdyim_TexEnviv
    lw	$a2,2308($s2)
    # Line 1453
    # lw $t9, -30568($gp) # &__glOdyim_TexEnvfv
    lw	$a2,2308($s2)
    li	$a1,8705
    li	$a0,8960
    jal	__glOdyim_TexEnvfv
    addiu	$a2,$a2,4
    # Line 1455
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,2308($s2)
    # Line 1456
    sd	$zero,256($sp)
    sw	$zero,2308($s2)
    addu	$a2,$s3,$s7
    sd	$a2,288($sp)
    li	$at,0xa5e8
    li	$ra,0xa5e4
    addu	$at,$s7,$at
    sd	$at,112($sp)
    li	$t9,0xa5e0
    addu	$ra,$s7,$ra
    sd	$ra,120($sp)
    li	$t8,0xa5dc
    addu	$t9,$s7,$t9
    sd	$t9,176($sp)
    li	$t3,0xa5d8
    addu	$t8,$s7,$t8
    sd	$t8,168($sp)
    li	$t2,0xa5d4
    addu	$t3,$s7,$t3
    sd	$t3,144($sp)
    li	$t1,0xa600
    addu	$t2,$s7,$t2
    sd	$t2,264($sp)
    li	$t0,0xa5f0
    addu	$t1,$s7,$t1
    sd	$t1,136($sp)
    li	$a7,0xa5c4
    addu	$t0,$s7,$t0
    sd	$t0,128($sp)
    li	$a6,0xa5c0
    addu	$a7,$s7,$a7
    sd	$a7,200($sp)
    li	$a5,0xa5bc
    addu	$a6,$s7,$a6
    sd	$a6,240($sp)
    li	$a4,0xa5ac
    addu	$a5,$s7,$a5
    sd	$a5,152($sp)
    li	$a3,0xa598
    addu	$a4,$s7,$a4
    sd	$a4,248($sp)
    li	$a2,0xa594
    addu	$a3,$s7,$a3
    sd	$a3,280($sp)
    addu	$a2,$s7,$a2
    sd	$a2,216($sp)
    li	$v1,0xa5c8
    li	$a0,0xa5cc
    addu	$v1,$s7,$v1
    sd	$v1,192($sp)
    li	$a1,0xa5d0
    addu	$a0,$s7,$a0
    sd	$a0,232($sp)
    addu	$a1,$s7,$a1
    sd	$a1,224($sp)
    li	$a1,0xa5a4
    addu	$a1,$s7,$a1
    sd	$a1,272($sp)
    li	$v0,0xa5ec
    addu	$v0,$s7,$v0
    sd	$v0,160($sp)
    li	$a0,0xa5a0
    la	$v0,sub_0d960000
    li	$v1,0xa59c
    addu	$a0,$s7,$a0
    sd	$a0,208($sp)
    addu	$v1,$s7,$v1
    sd	$v1,184($sp)
    addiu	$v0,$v0,-28912
.L0d95a6bc:
    # Line 1467
    move	$t9,$v0
    bal __glOdyssey_CopyContext
    ld	$a0,256($sp)
    # Line 1469
    # lw $t9, -30544($gp) # &__glOdyim_BindTexture
    ld	$a1,288($sp)
    # Line 1467
    move	$s0,$v0
    # Line 1469
    move	$a0,$v0
    jal	__glOdyim_BindTexture
    lw	$a1,-23160($a1)
    # Line 1472
    # lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    move	$a0,$s0
    ld	$a2,184($sp)
    jal	__glOdyim_TexParameteriv
    li	$a1,10242
    # Line 1474
    # lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    move	$a0,$s0
    ld	$a2,208($sp)
    jal	__glOdyim_TexParameteriv
    li	$a1,10243
    # Line 1476
    # lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    move	$a0,$s0
    ld	$a2,272($sp)
    jal	__glOdyim_TexParameteriv
    li	$a1,0x8072
    # Line 1478
    # lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    move	$a0,$s0
    ld	$a2,216($sp)
    jal	__glOdyim_TexParameteriv
    li	$a1,10241
    # Line 1480
    # lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    move	$a0,$s0
    ld	$a2,280($sp)
    jal	__glOdyim_TexParameteriv
    li	$a1,10240
    # Line 1482
    # lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    move	$a0,$s0
    ld	$a2,248($sp)
    jal	__glOdyim_TexParameterfv
    li	$a1,4100
    # Line 1484
    # lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    move	$a0,$s0
    ld	$a2,152($sp)
    jal	__glOdyim_TexParameterfv
    li	$a1,0x8066
    # Line 1486
    # lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    move	$a0,$s0
    ld	$a2,240($sp)
    jal	__glOdyim_TexParameteriv
    li	$a1,0x809a
    # Line 1488
    # lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    move	$a0,$s0
    ld	$a2,200($sp)
    jal	__glOdyim_TexParameteriv
    li	$a1,0x809b
    # Line 1490
    # lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    move	$a0,$s0
    ld	$a2,128($sp)
    jal	__glOdyim_TexParameterfv
    li	$a1,0x8179
    # Line 1493
    # lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    move	$a0,$s0
    ld	$a2,136($sp)
    jal	__glOdyim_TexParameterfv
    li	$a1,0x817a
    # Line 1496
    # lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    move	$a0,$s0
    ld	$a2,264($sp)
    jal	__glOdyim_TexParameterfv
    li	$a1,0x813a
    # Line 1498
    # lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    move	$a0,$s0
    ld	$a2,144($sp)
    jal	__glOdyim_TexParameterfv
    li	$a1,0x813b
    # Line 1500
    # lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    move	$a0,$s0
    ld	$a2,168($sp)
    jal	__glOdyim_TexParameteriv
    li	$a1,0x813c
    # Line 1502
    # lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    move	$a0,$s0
    ld	$a2,176($sp)
    jal	__glOdyim_TexParameteriv
    li	$a1,0x813d
    # Line 1504
    # lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    move	$a0,$s0
    ld	$a2,120($sp)
    jal	__glOdyim_TexParameterfv
    li	$a1,0x818e
    # Line 1506
    # lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    move	$a0,$s0
    ld	$a2,112($sp)
    jal	__glOdyim_TexParameterfv
    li	$a1,0x818f
    # Line 1508
    # lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    move	$a0,$s0
    ld	$a2,160($sp)
    jal	__glOdyim_TexParameterfv
    li	$a1,0x8190
    # Line 1510
    # lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    move	$a0,$s0
    ld	$a2,192($sp)
    jal	__glOdyim_TexParameterfv
    li	$a1,0x8369
    # Line 1512
    # lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    move	$a0,$s0
    ld	$a2,232($sp)
    jal	__glOdyim_TexParameterfv
    li	$a1,0x836a
    # Line 1514
    # lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    move	$a0,$s0
    ld	$a2,224($sp)
    jal	__glOdyim_TexParameterfv
    li	$a1,0x836b
    li	$a2,3553
    beq	$a2,$s0,.L0d95ac34
    # Line 1517
    ld	$a1,288($sp)
    la	$v0,sub_0d960000
.L0d95a894:
    # Line 1464
    ld	$t2,120($sp)
    ld	$t3,176($sp)
    ld	$t8,168($sp)
    ld	$t9,144($sp)
    ld	$ra,264($sp)
    ld	$at,136($sp)
    ld	$v1,128($sp)
    ld	$a0,200($sp)
    ld	$a2,152($sp)
    ld	$a1,240($sp)
    addiu	$a2,$a2,2452
    sd	$a2,152($sp)
    addiu	$a1,$a1,2452
    sd	$a1,240($sp)
    addiu	$a0,$a0,2452
    sd	$a0,200($sp)
    addiu	$v1,$v1,2452
    sd	$v1,128($sp)
    addiu	$at,$at,2452
    sd	$at,136($sp)
    addiu	$ra,$ra,2452
    sd	$ra,264($sp)
    addiu	$t9,$t9,2452
    sd	$t9,144($sp)
    addiu	$t8,$t8,2452
    sd	$t8,168($sp)
    addiu	$t3,$t3,2452
    sd	$t3,176($sp)
    addiu	$t2,$t2,2452
    sd	$t2,120($sp)
    ld	$t1,288($sp)
    ld	$t0,184($sp)
    ld	$a3,248($sp)
    ld	$a7,208($sp)
    ld	$a5,216($sp)
    ld	$a6,272($sp)
    addiu	$a5,$a5,2452
    sd	$a5,216($sp)
    ld	$a5,224($sp)
    addiu	$a6,$a6,2452
    sd	$a6,272($sp)
    ld	$a6,232($sp)
    addiu	$a7,$a7,2452
    sd	$a7,208($sp)
    ld	$a7,192($sp)
    addiu	$a3,$a3,2452
    sd	$a3,248($sp)
    addiu	$t0,$t0,2452
    sd	$t0,184($sp)
    ld	$t0,160($sp)
    addiu	$t1,$t1,2452
    sd	$t1,288($sp)
    ld	$t1,112($sp)
    ld	$a4,280($sp)
    addiu	$t1,$t1,2452
    sd	$t1,112($sp)
    addiu	$a4,$a4,2452
    sd	$a4,280($sp)
    ld	$a4,256($sp)
    addiu	$t0,$t0,2452
    sd	$t0,160($sp)
    addiu	$a4,$a4,1
    sd	$a4,256($sp)
    li	$a3,4
    addiu	$a7,$a7,2452
    sd	$a7,192($sp)
    addiu	$v0,$v0,-28912
    addiu	$a6,$a6,2452
    sd	$a6,232($sp)
    addiu	$a5,$a5,2452
    bne	$a3,$a4,.L0d95a6bc
    sd	$a5,224($sp)
    # Line 1538
    lw	$a0,1616($s2)
    lui	$a1,0x8000
    and	$a0,$a0,$a1
    lui	$v1,0xc03f
    lw	$v0,31956($s1)
    beqz	$a0,.L0d95ac50
    or	$s4,$s4,$v1
    # Line 1540
    ori	$a2,$v0,0x1
    sw	$a2,31956($s1)
.L0d95a9d8:
    # Line 1545
    addu	$a4,$s3,$s1
    lw	$a3,26980($a4)
    ori	$a3,$a3,0x700
    sw	$a3,26980($a4)
    sw	$s8,4120($zero)
.L0d95a9ec:
    andi	$a4,$s6,0x1000
    beqz	$a4,.L0d95aa60
    # Line 1560
    andi	$t1,$s6,0x800
    # Line 1551
    lw	$a0,1748($s1)
    # Line 1550
    lw	$a3,1568($s2)
    # Line 1551
    # lw $t9, -17016($gp) # &memcpy
    # Line 1550
    sw	$a3,1744($s1)
    # Line 1551
    lw	$a2,3600($s1)
    lw	$a1,1572($s2)
    jal	memcpy
    sll	$a2,$a2,0x4
    # Line 1554
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,1572($s2)
    # Line 1557
    ld	$a5,104($sp)
    # Line 1555
    sw	$zero,1572($s2)
    # Line 1558
    lw	$t0,1628($s2)
    # Line 1560
    addu	$a7,$s3,$s1
    # Line 1558
    sw	$t0,1804($s1)
    # Line 1560
    lw	$a6,26980($a7)
    # Line 1557
    or	$a5,$s3,$a5
    sd	$a5,104($sp)
    # Line 1556
    lui	$a4,0x40
    # Line 1560
    ori	$a6,$a6,0x514
    sw	$a6,26980($a7)
    # Line 1556
    or	$s4,$s4,$a4
    # Line 1560
    sw	$s8,4120($zero)
    andi	$t1,$s6,0x800
.L0d95aa60:
    beqz	$t1,.L0d95ab64
    ld	$s0,336($sp)
    # Line 1569
    ldc1	$f14,1704($s1)
    ldc1	$f15,1528($s2)
    sub.d	$f14,$f14,$f15
    ldc1	$f0,_lit8_3eb0c6f7a0b5ed8d
    abs.d	$f14,$f14
    c.lt.d	$f14,$f0
    bc1f	.L0d95aaa8
    li	$s6,1
    ldc1	$f17,1536($s2)
    ldc1	$f16,1712($s1)
    sub.d	$f16,$f16,$f17
    abs.d	$f16,$f16
    li	$t2,1
    c.lt.d $f16,$f0
    move	$s6,$zero
    movf	$s6,$t2,$fcc1
.L0d95aaa8:
    # Line 1577
    # lw $t9, -23732($gp) # &__glUpdateViewportTransform
    # Line 1576
    ld	$a0,1512($s2)
    sd	$a0,1688($s1)
    ld	$v1,1520($s2)
    sd	$v1,1696($s1)
    ld	$v0,1528($s2)
    sd	$v0,1704($s1)
    ld	$at,1536($s2)
    sd	$at,1712($s1)
    ld	$ra,1544($s2)
    sd	$ra,1720($s1)
    ld	$t8,1552($s2)
    sd	$t8,1728($s1)
    ld	$t3,1560($s2)
    # Line 1577
    move	$a0,$s1
    jal	__glUpdateViewportTransform
    # Line 1576
    sd	$t3,1736($s1)
    # Line 1578
    lw	$t9,11964($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1580
    addu	$s0,$s3,$s1
    lw	$a1,26980($s0)
    ori	$a1,$a1,0x1
    sw	$a1,26980($s0)
    beqz	$s6,.L0d95ab60
    sw	$s8,4120($zero)
    # Line 1589
    # lw $t9, -30016($gp) # &__glOdysseyNormalizedEyeToWindowZ
    # Line 1583
    lw	$a2,26980($s0)
    # Line 1587
    ldc1	$f13,_lit8_bff0000000000000
    # Line 1583
    ori	$a2,$a2,0x4000
    sw	$a2,26980($s0)
    sw	$s8,4120($zero)
    # Line 1587
    sdc1	$f13,26072($s0)
    # Line 1589
    ldc1	$f12,1528($s2)
    jal	__glOdysseyNormalizedEyeToWindowZ
    cvt.s.d	$f12,$f12
    ldc1	$f12,1536($s2)
    # lw $t9, -30016($gp) # &__glOdysseyNormalizedEyeToWindowZ
    sdc1	$f0,16($sp)
    jal	__glOdysseyNormalizedEyeToWindowZ
    cvt.s.d	$f12,$f12
    ldc1	$f12,16($sp)
    # lw $t9, -30012($gp) # &__glOdyim_DepthRange
    cvt.d.s	$f13,$f0
    jal	__glOdyim_DepthRange
    cvt.d.s	$f12,$f12
.L0d95ab60:
    ld	$s0,336($sp)
.L0d95ab64:
    ld	$ra,328($sp)
    beqz	$s5,.L0d95aba4
    ld	$s6,312($sp)
    # Line 1596
    lw	$a5,31740($s1)
    nor	$a6,$s5,$zero
    and	$a5,$a5,$a6
    sw	$a5,31740($s1)
    lw	$a6,132($s7)
    and	$a6,$a6,$s5
    addu	$a4,$s3,$s1
    or	$a5,$a5,$a6
    sw	$a5,31740($s1)
    lw	$a3,26976($a4)
    ori	$a3,$a3,0x2
    sw	$a3,26976($a4)
    sw	$s8,4120($zero)
.L0d95aba4:
    lw	$t2,1792($s1)
    nor	$t3,$s4,$zero
    and	$t2,$t2,$t3
    sw	$t2,1792($s1)
    lw	$t3,1616($s2)
    ld	$s5,320($sp)
    and	$t3,$t3,$s4
    or	$t2,$t2,$t3
    sw	$t2,1792($s1)
    ld	$t2,104($sp)
    lw	$t0,1796($s1)
    ld	$s3,304($sp)
    nor	$t1,$t2,$zero
    and	$t0,$t0,$t1
    sw	$t0,1796($s1)
    lw	$t1,1620($s2)
    # Line 1606
    ld	$s7,48($sp)
    ld	$s4,32($sp)
    # Line 1596
    and	$t1,$t1,$t2
    or	$t0,$t0,$t1
    sw	$t0,1796($s1)
    # Line 1602
    sw	$zero,0($s2)
    # Line 1606
    ld	$s2,56($sp)
    # Line 1604
    sw	$s8,4120($zero)
    lw	$a7,11812($s1)
    # Line 1606
    ld	$s8,24($sp)
    # Line 1604
    ori	$a7,$a7,0x1
    sw	$a7,11812($s1)
    # Line 1606
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0d95ac20:
    ld	$s1,40($sp)
    ld	$s2,56($sp)
    ld	$s7,48($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0d95ac34:
    # Line 1517
    # lw $t9, -30548($gp) # &__glOdyim_DetailTexFuncSGIS
    lw	$a2,-21880($a1)
    move	$a0,$s0
    jal	__glOdyim_DetailTexFuncSGIS
    lw	$a1,-21884($a1)
    b	.L0d95a894
    la	$v0,sub_0d960000
.L0d95ac50:
    # Line 1542
    li	$a2,-2
    and	$a2,$v0,$a2
    b	.L0d95a9d8
    sw	$a2,31956($s1)
.L0d95ac60:
    sd	$s4,32($sp)
    # Line 1103
    move	$s4,$zero
    sd	$zero,104($sp)
    sd	$s5,320($sp)
    b	.L0d959390
    move	$s5,$zero
.L0d95ac78:
    # Line 905
    # lw $t9, -26792($gp) # &__glSetError
    move	$s0,$s0
    jal	__glSetError
    li	$a0,1282
    b	.L0d95ac20
    ld	$ra,328($sp)
.end PopAttributes

# Function: __glOdyssey_ResolveContext
# Declared: Line 1608 (Source lines: 1608-1615)
# Address: 0x0d95ac90 - 0x0d95ad10 (Size: 128 bytes, Frame: 32)
.globl __glOdyssey_ResolveContext
.ent __glOdyssey_ResolveContext
__glOdyssey_ResolveContext:
    # Line 1608
    addiu	$sp,$sp,-32
    sd	$s1,0($sp)
    lui	$t8,0x1a
    # Line 1609
    lw	$s1,4112($zero)
    # Line 1608
    addiu	$t8,$t8,-9984
    sd	$gp,16($sp)
    addu	$gp,$t9,$t8
    # Line 1610
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 1608
    sd	$s0,24($sp)
    # Line 1610
    lui	$s0,0x1
    # Line 1608
    sd	$ra,8($sp)
    # Line 1610
    addu	$s0,$s1,$s0
    addiu	$t9,$t9,-28832
    lw	$a1,26828($s0)
    bal __glOdyssey_CopyContext
    lw	$a0,26824($s0)
    # Line 1611
    lw	$t9,12($s1)
    move	$a0,$s1
    jal	sub_0d960000
    lw	$a1,26824($s0)
    # Line 1612
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,26828($s0)
    ld	$s1,0($sp)
    # Line 1615
    ld	$gp,16($sp)
    ld	$ra,8($sp)
    # Line 1614
    sw	$zero,26828($s0)
    # Line 1613
    sw	$zero,26824($s0)
    # Line 1615
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyssey_ResolveContext

# Function: __glOdyim_PopAttrib
# Declared: Line 1619 (Source lines: 1619-1636)
# Address: 0x0d95ad10 - 0x0d95adb0 (Size: 160 bytes, Frame: 16)
.globl __glOdyim_PopAttrib
.ent __glOdyim_PopAttrib
__glOdyim_PopAttrib:
    # Line 1619
    addiu	$sp,$sp,-16
    # Line 1622
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 1619
    lui	$v1,0x1a
    # Line 1623
    lui	$a5,0x1
    sd	$ra,8($sp)
    # Line 1619
    addiu	$v1,$v1,-10112
    sd	$gp,0($sp)
    # Line 1622
    beq	$at,$v0,.L0d95ad9c
    # Line 1619
    addu	$gp,$t9,$v1
    # Line 1623
    addu	$a5,$a3,$a5
    lw	$a4,26836($a5)
    lw	$a0,26832($a5)
    sltu	$a0,$a0,$a4
    beqz	$a0,.L0d95ad84
    # Line 1635
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1627
    lw	$a6,12732($a3)
    # Line 1633
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 1628
    lw	$a0,-4($a4)
    # Line 1629
    lw	$a1,-4($a6)
    # Line 1633
    addiu	$t9,$t9,-28832
    # Line 1630
    addiu	$a7,$a4,-4
    sw	$a7,26836($a5)
    # Line 1627
    addiu	$a6,$a6,-4
    # Line 1633
    bal __glOdyssey_CopyContext
    # Line 1631
    sw	$a6,12732($a3)
    b	.L0d95ad90
    ld	$ra,8($sp)
.L0d95ad84:
    # Line 1635
    jal	sub_0d960000
    li	$a0,1284
    ld	$ra,8($sp)
.L0d95ad90:
    # Line 1636
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95ad9c:
    # Line 1622
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95ad90
    ld	$ra,8($sp)
.end __glOdyim_PopAttrib

# Function: __glOdysseyFreeAttributeState
# Declared: Line 1649 (Source lines: 1649-1671)
# Address: 0x0d95adb0 - 0x0d95ae98 (Size: 232 bytes, Frame: 48)
.globl __glOdysseyFreeAttributeState
.ent __glOdysseyFreeAttributeState
__glOdysseyFreeAttributeState:
    # Line 1649
    addiu	$sp,$sp,-48
    sd	$s2,16($sp)
    lw	$v1,12732($a0)
    lw	$at,12728($a0)
    sd	$s1,24($sp)
    sd	$s0,0($sp)
    lui	$v0,0x1a
    sltu	$at,$at,$v1
    move	$s0,$a0
    sd	$ra,32($sp)
    addiu	$v0,$v0,-10272
    sd	$gp,8($sp)
    beqz	$at,.L0d95ae08
    addu	$gp,$t9,$v0
    # Line 1658
    # lw $t9, -32480($gp) # &__glOdyim_PopAttrib
.L0d95adec:
    bal __glOdyim_PopAttrib
    nop
    lw	$a1,12732($s0)
    lw	$a0,12728($s0)
    sltu	$a0,$a0,$a1
    bnez	$a0,.L0d95adec
    nop	# was lw $t9, -32480($gp) # &__glOdyim_PopAttrib
.L0d95ae08:
    # Line 1661
    lui	$s2,0x1
    lw	$a2,3776($s0)
    addu	$s2,$s0,$s2
    lw	$a3,26832($s2)
    sll	$a2,$a2,0x2
    addu	$a2,$a3,$a2
    sltu	$a2,$a3,$a2
    beqz	$a2,.L0d95ae68
    move	$s1,$a3
    nop
.L0d95ae30:
    # Line 1664
    lw	$a1,0($s1)
    beqz	$a1,.L0d95ae68
    nop
    # Line 1665
    lw	$t9,12($s0)
    jal	__glOdyim_PopAttrib
    move	$a0,$s0
    # Line 1663
    lw	$t8,3776($s0)
    lw	$a3,26832($s2)
    sll	$t8,$t8,0x2
    addiu	$s1,$s1,4
    addu	$t8,$a3,$t8
    sltu	$t8,$s1,$t8
    bnez	$t8,.L0d95ae30
    nop
.L0d95ae68:
    # Line 1669
    lw	$t9,12($s0)
    move	$a0,$s0
    ld	$s1,24($sp)
    jalr	$t9
    move	$a1,$a3
    ld	$s0,0($sp)
    ld	$ra,32($sp)
    # Line 1671
    ld	$gp,8($sp)
    # Line 1670
    sw	$zero,26832($s2)
    # Line 1671
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdysseyFreeAttributeState

# Function: __glOdyim_AlphaFunc
# Declared: Line 1674 (Source lines: 1674-1694)
# Address: 0x0d95aea0 - 0x0d95afe0 (Size: 320 bytes, Frame: 16)
.globl __glOdyim_AlphaFunc
.ent __glOdyim_AlphaFunc
__glOdyim_AlphaFunc:
    # Line 1692
    li	$t0,250
    # Line 1674
    addiu	$sp,$sp,-16
    # Line 1676
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 1674
    lui	$v1,0x1a
    # Line 1682
    mtc1	$zero,$f2
    sd	$ra,8($sp)
    # Line 1674
    addiu	$v1,$v1,-10512
    sd	$gp,0($sp)
    # Line 1676
    beq	$at,$v0,.L0d95afcc
    # Line 1674
    addu	$gp,$t9,$v1
    # Line 1678
    sltiu	$a1,$a0,512
    # Line 1688
    ldc1	$f0,_lit8_3ff0000000000000
    # Line 1678
    bnez	$a1,.L0d95afb8
    # Line 1689
    lwc1	$f4,_lit_457ff000
    # Line 1678
    sltiu	$a3,$a0,520
    beqz	$a3,.L0d95afbc
    # Line 1679
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1682
    c.lt.s $f13,$f2
    lwc1	$f5,3544($a2)
    movf.s	$f2,$f13,$fcc2
    c.lt.s $f5,$f2
    movf.s	$f5,$f2,$fcc1
    # Line 1688
    cvt.d.s	$f1,$f5
    lw	$a3,31784($a2)
    andi	$a4,$a0,0x7
    li	$a5,-28673
    sll	$a4,$a4,0xc
    c.le.d	$f0,$f1
    # Line 1685
    sw	$a0,1820($a2)
    # Line 1688
    andi	$a4,$a4,0x7000
    and	$a3,$a3,$a5
    # Line 1692
    lui	$t3,0x1
    # Line 1688
    or	$a3,$a3,$a4
    sw	$a3,31784($a2)
    # Line 1689
    lui	$a0,0x1
    # Line 1692
    ori	$t3,$t3,0x41e
    # Line 1688
    bc1t	.L0d95af48
    # Line 1686
    swc1	$f5,1824($a2)
    # Line 1689
    lwc1	$f4,_lit_45800000
    mul.s	$f4,$f5,$f4
.L0d95af48:
    trunc.l.s	$f5,$f4
    dmfc1	$a6,$f5
    li	$a7,-4096
    sll	$a6,$a6,0x0
    and	$a7,$a3,$a7
    andi	$a6,$a6,0xfff
    addu	$a4,$a0,$a2
    or	$a6,$a6,$a7
    sw	$a6,31784($a2)
    lw	$a5,-26576($a4)
    # Line 1692
    ori	$t1,$a0,0x443
    ld	$ra,8($sp)
    # Line 1694
    ld	$gp,0($sp)
    # Line 1689
    beqz	$a5,.L0d95af98
    # Line 1692
    ori	$a7,$a0,0x46
    sw	$zero,-26576($a4)
    sw	$t1,0($a0)
    sw	$t0,0($a0)
    sw	$a7,0($a0)
    sw	$a7,0($a0)
.L0d95af98:
    sw	$t3,0($a0)
    lw	$t2,31784($a2)
    # Line 1694
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1692
    sw	$t2,0($a0)
.L0d95afac:
    # Line 1694
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95afb8:
    # Line 1679
    # lw $t9, -26792($gp) # &__glSetError
.L0d95afbc:
    jal	__glSetError
    li	$a0,1280
    b	.L0d95afac
    ld	$ra,8($sp)
.L0d95afcc:
    # Line 1676
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95afac
    ld	$ra,8($sp)
.end __glOdyim_AlphaFunc

# Function: __glOdyim_BlendFunc
# Declared: Line 1697 (Source lines: 1697-1793)
# Address: 0x0d95afe0 - 0x0d95b2ec (Size: 780 bytes, Frame: 16)
.globl __glOdyim_BlendFunc
.ent __glOdyim_BlendFunc
__glOdyim_BlendFunc:
    # Line 1699
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 1697
    lui	$at,0x1a
    # Line 1699
    lw	$a3,4112($zero)
    # Line 1697
    addiu	$sp,$sp,-16
    addiu	$at,$at,-10832
    sd	$gp,0($sp)
    # Line 1699
    beq	$v0,$v1,.L0d95b2d4
    # Line 1697
    addu	$gp,$t9,$at
    # Line 1701
    sltiu	$a4,$a0,774
    bnez	$a4,.L0d95b09c
    sltiu	$a7,$a0,771
    sltiu	$v0,$a0,775
    beqz	$v0,.L0d95b0d0
    # Line 1710
    li	$a4,16
.L0d95b01c:
    # Line 1746
    sltiu	$a5,$a1,772
.L0d95b020:
    bnez	$a5,.L0d95b0b4
    sltiu	$v1,$a1,773
    beqz	$v1,.L0d95b10c
    li	$a5,0x8002
    # Line 1767
    li	$a5,32
.L0d95b034:
    # Line 1791
    sll	$a6,$a4,0x6
.L0d95b038:
    lw	$a7,31796($a3)
    # Line 1792
    andi	$a4,$a5,0x3f
    # Line 1791
    li	$t0,-8129
    andi	$a6,$a6,0x1fc0
    and	$a7,$a7,$t0
    # Line 1788
    sw	$a0,1828($a3)
    # Line 1791
    or	$a6,$a6,$a7
    # Line 1792
    li	$a7,-64
    # Line 1789
    sw	$a1,1832($a3)
    # Line 1793
    lui	$a2,0x1
    # Line 1792
    and	$a5,$a6,$a7
    # Line 1793
    addu	$a2,$a3,$a2
    # Line 1792
    or	$a4,$a4,$a5
    sw	$a4,31796($a3)
    # Line 1793
    lw	$a1,26976($a2)
    # Line 1743
    ld	$gp,0($sp)
    # Line 1793
    li	$a0,2
    ori	$a1,$a1,0x1
    sw	$a1,26976($a2)
    # Line 1743
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1793
    sw	$a0,4120($zero)
.L0d95b090:
    # Line 1743
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95b09c:
    # Line 1701
    bnez	$a7,.L0d95b0f0
    sltiu	$t0,$a0,772
    beqz	$t0,.L0d95b16c
    sltiu	$a5,$a0,773
    # Line 1719
    b	.L0d95b01c
    li	$a4,57
.L0d95b0b4:
    # Line 1746
    sltiu	$t1,$a1,769
    bnez	$t1,.L0d95b130
    sltiu	$t2,$a1,770
    beqz	$t2,.L0d95b1a4
    sltiu	$t0,$a1,771
    # Line 1758
    b	.L0d95b034
    li	$a5,56
.L0d95b0d0:
    # Line 1701
    li	$a5,0x8002
    sltu	$t3,$a0,$a5
    bnez	$t3,.L0d95b14c
    sltu	$t8,$a5,$a0
    bnez	$t8,.L0d95b1dc
    li	$a5,0x8004
    # Line 1734
    b	.L0d95b01c
    li	$a4,59
.L0d95b0f0:
    # Line 1701
    beqz	$a0,.L0d95b294
    # Line 1703
    move	$a4,$zero
    # Line 1701
    sltiu	$t9,$a0,2
    beqz	$t9,.L0d95b1bc
    li	$t1,770
    # Line 1707
    b	.L0d95b01c
    li	$a4,8
.L0d95b10c:
    # Line 1746
    sltu	$at,$a1,$a5
    bnez	$at,.L0d95b184
    sltu	$v0,$a5,$a1
    li	$t0,0x8003
    li	$a5,0x8004
    bnez	$v0,.L0d95b238
    sltu	$v1,$a5,$a1
    # Line 1776
    b	.L0d95b034
    li	$a5,59
.L0d95b130:
    # Line 1746
    beqz	$a1,.L0d95b29c
    # Line 1748
    move	$a5,$zero
    # Line 1746
    sltiu	$v1,$a1,2
    beqz	$v1,.L0d95b1cc
    li	$t2,768
    # Line 1752
    b	.L0d95b034
    li	$a5,8
.L0d95b14c:
    # Line 1701
    sltiu	$a2,$a0,776
    bnez	$a2,.L0d95b200
    li	$t9,775
    sltiu	$a4,$a0,777
    beqz	$a4,.L0d95b2b4
    li	$a7,0x8001
    # Line 1728
    b	.L0d95b01c
    li	$a4,64
.L0d95b16c:
    # Line 1701
    bnez	$a5,.L0d95b228
    li	$at,772
    beqz	$a4,.L0d95b214
    # Line 1742
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1725
    b	.L0d95b01c
    li	$a4,58
.L0d95b184:
    # Line 1746
    li	$a5,0x8001
    sltu	$a6,$a1,$a5
    bnez	$a6,.L0d95b254
    sltu	$a7,$a5,$a1
    bnez	$a7,.L0d95b268
    # Line 1773
    li	$a5,40
    b	.L0d95b038
    # Line 1791
    sll	$a6,$a4,0x6
.L0d95b1a4:
    # Line 1746
    bnez	$t0,.L0d95b280
    nop
    beqz	$a5,.L0d95b26c
    # Line 1784
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1764
    b	.L0d95b034
    li	$a5,57
.L0d95b1bc:
    # Line 1701
    bne	$a0,$t1,.L0d95b214
    # Line 1742
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1716
    b	.L0d95b01c
    li	$a4,24
.L0d95b1cc:
    # Line 1746
    bne	$a1,$t2,.L0d95b26c
    # Line 1784
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1755
    b	.L0d95b034
    li	$a5,16
.L0d95b1dc:
    # Line 1701
    sltu	$t3,$a0,$a5
    li	$a6,0x8003
    # Line 1740
    li	$a4,60
    # Line 1701
    bnez	$t3,.L0d95b2a4
    sltu	$t8,$a5,$a0
    bnez	$t8,.L0d95b214
    # Line 1742
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1740
    b	.L0d95b020
    # Line 1746
    sltiu	$a5,$a1,772
.L0d95b200:
    # Line 1701
    bne	$a0,$t9,.L0d95b210
    # Line 1713
    li	$a4,56
    b	.L0d95b020
    # Line 1746
    sltiu	$a5,$a1,772
.L0d95b210:
    # Line 1742
    # lw $t9, -26792($gp) # &__glSetError
.L0d95b214:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d95b090
    ld	$ra,8($sp)
.L0d95b228:
    # Line 1701
    bne	$a0,$at,.L0d95b210
    # Line 1722
    li	$a4,32
    b	.L0d95b020
    # Line 1746
    sltiu	$a5,$a1,772
.L0d95b238:
    sltu	$v0,$a1,$a5
    bnez	$v0,.L0d95b2c4
    # Line 1782
    li	$a5,60
    # Line 1746
    bnez	$v1,.L0d95b26c
    # Line 1784
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1782
    b	.L0d95b038
    # Line 1791
    sll	$a6,$a4,0x6
.L0d95b254:
    # Line 1746
    li	$a2,773
    bne	$a1,$a2,.L0d95b268
    # Line 1770
    li	$a5,58
    b	.L0d95b038
    # Line 1791
    sll	$a6,$a4,0x6
.L0d95b268:
    # Line 1784
    # lw $t9, -26792($gp) # &__glSetError
.L0d95b26c:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d95b090
    ld	$ra,8($sp)
.L0d95b280:
    # Line 1746
    li	$a5,770
    bne	$a1,$a5,.L0d95b26c
    # Line 1784
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1761
    b	.L0d95b034
    li	$a5,24
.L0d95b294:
    b	.L0d95b020
    # Line 1746
    sltiu	$a5,$a1,772
.L0d95b29c:
    b	.L0d95b038
    # Line 1791
    sll	$a6,$a4,0x6
.L0d95b2a4:
    # Line 1701
    bne	$a0,$a6,.L0d95b214
    # Line 1742
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1737
    b	.L0d95b01c
    li	$a4,48
.L0d95b2b4:
    # Line 1701
    bne	$a0,$a7,.L0d95b214
    # Line 1742
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1731
    b	.L0d95b01c
    li	$a4,40
.L0d95b2c4:
    # Line 1746
    bne	$a1,$t0,.L0d95b26c
    # Line 1784
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1779
    b	.L0d95b034
    li	$a5,48
.L0d95b2d4:
    # Line 1699
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95b090
    ld	$ra,8($sp)
.end __glOdyim_BlendFunc

# Function: __glOdyim_BlendEquationEXT
# Declared: Line 1797 (Source lines: 1797-1834)
# Address: 0x0d95b2f0 - 0x0d95b480 (Size: 400 bytes, Frame: 16)
.globl __glOdyim_BlendEquationEXT
.ent __glOdyim_BlendEquationEXT
__glOdyim_BlendEquationEXT:
    # Line 1799
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 1797
    lui	$at,0x1a
    # Line 1799
    lw	$a2,4112($zero)
    # Line 1797
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11616
    sd	$gp,0($sp)
    # Line 1799
    beq	$v0,$v1,.L0d95b468
    # Line 1797
    addu	$gp,$t9,$at
    # Line 1801
    li	$a3,0x800a
    li	$t9,0x800b
    sltu	$v0,$a0,$a3
    li	$at,0x8008
    sltu	$v1,$a3,$a0
    bnez	$v0,.L0d95b38c
    # Line 1822
    li	$a3,6
    # Line 1801
    bnez	$v1,.L0d95b3b4
    # Line 1822
    li	$a5,2
.L0d95b338:
    # Line 1834
    lui	$a1,0x1
.L0d95b33c:
    # Line 1833
    lw	$a4,31796($a2)
    li	$a6,0xe000
    sll	$a3,$a3,0xd
    nor	$a6,$a6,$zero
    # Line 1831
    sw	$a0,1836($a2)
    # Line 1833
    andi	$a3,$a3,0xe000
    and	$a4,$a4,$a6
    # Line 1834
    addu	$a1,$a2,$a1
    # Line 1833
    or	$a3,$a3,$a4
    sw	$a3,31796($a2)
    # Line 1834
    lw	$a0,26976($a1)
    # Line 1828
    ld	$gp,0($sp)
    # Line 1834
    ori	$a0,$a0,0x1
    sw	$a0,26976($a1)
    # Line 1828
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1834
    sw	$a5,4120($zero)
.L0d95b380:
    # Line 1828
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95b38c:
    # Line 1801
    li	$a3,0x8007
    sltu	$a7,$a0,$a3
    # Line 1809
    li	$a5,2
    # Line 1801
    bnez	$a7,.L0d95b3e0
    sltu	$t0,$a3,$a0
    bnez	$t0,.L0d95b41c
    move	$a3,$a5
    # Line 1807
    li	$a5,2
    b	.L0d95b338
    li	$a3,1
.L0d95b3b4:
    # Line 1801
    li	$a3,0x8320
    sltu	$t1,$a0,$a3
    li	$v1,0x8321
    bnez	$t1,.L0d95b408
    sltu	$t2,$a3,$a0
    # Line 1816
    li	$a3,4
    # Line 1801
    bnez	$t2,.L0d95b458
    # Line 1816
    li	$a5,2
    # Line 1813
    li	$a5,2
    b	.L0d95b338
    li	$a3,3
.L0d95b3e0:
    # Line 1801
    li	$v0,3057
    li	$a3,0x8006
    sltu	$t3,$a0,$a3
    bnez	$t3,.L0d95b42c
    sltu	$t8,$a3,$a0
    # Line 1804
    li	$a5,2
    # Line 1801
    bnez	$t8,.L0d95b440
    # Line 1804
    move	$a3,$zero
    b	.L0d95b33c
    # Line 1834
    lui	$a1,0x1
.L0d95b408:
    # Line 1825
    li	$a3,7
    # Line 1801
    bne	$a0,$t9,.L0d95b440
    # Line 1825
    li	$a5,2
    b	.L0d95b33c
    # Line 1834
    lui	$a1,0x1
.L0d95b41c:
    # Line 1801
    bne	$a0,$at,.L0d95b444
    # Line 1827
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1810
    b	.L0d95b33c
    # Line 1834
    lui	$a1,0x1
.L0d95b42c:
    # Line 1818
    li	$a3,5
    # Line 1801
    bne	$a0,$v0,.L0d95b440
    # Line 1818
    li	$a5,2
    b	.L0d95b33c
    # Line 1834
    lui	$a1,0x1
.L0d95b440:
    # Line 1827
    # lw $t9, -26792($gp) # &__glSetError
.L0d95b444:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d95b380
    ld	$ra,8($sp)
.L0d95b458:
    # Line 1801
    bne	$a0,$v1,.L0d95b444
    # Line 1827
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1816
    b	.L0d95b33c
    # Line 1834
    lui	$a1,0x1
.L0d95b468:
    # Line 1799
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95b380
    ld	$ra,8($sp)
.end __glOdyim_BlendEquationEXT

# Function: __glOdyim_ColorMask
# Declared: Line 1838 (Source lines: 1838-1851)
# Address: 0x0d95b480 - 0x0d95b578 (Size: 248 bytes, Frame: 16)
.globl __glOdyim_ColorMask
.ent __glOdyim_ColorMask
__glOdyim_ColorMask:
    # Line 1839
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 1838
    lui	$at,0x1a
    # Line 1839
    lw	$a5,4112($zero)
    # Line 1838
    addiu	$sp,$sp,-16
    addiu	$at,$at,-12016
    sd	$gp,0($sp)
    # Line 1839
    beq	$v0,$v1,.L0d95b560
    # Line 1838
    addu	$gp,$t9,$at
    # Line 1850
    lui	$a4,0x1
    # Line 1847
    sltu	$t0,$zero,$a1
    # Line 1842
    sb	$a1,1885($a5)
    # Line 1849
    lui	$a1,0x80
    # Line 1848
    sltu	$a6,$zero,$a2
    lui	$t1,0x40
    sll	$a6,$a6,0x16
    # Line 1849
    sltu	$a7,$zero,$a3
    # Line 1848
    and	$a6,$a6,$t1
    # Line 1847
    sll	$t0,$t0,0x15
    # Line 1846
    sltu	$t2,$zero,$a0
    lw	$t3,31836($a5)
    lui	$t8,0x10
    sll	$t2,$t2,0x14
    and	$t2,$t2,$t8
    nor	$t8,$t8,$zero
    and	$t3,$t3,$t8
    # Line 1847
    lui	$t8,0x20
    # Line 1846
    or	$t2,$t2,$t3
    # Line 1847
    nor	$t3,$t8,$zero
    and	$t0,$t0,$t8
    and	$t2,$t2,$t3
    # Line 1848
    nor	$t1,$t1,$zero
    # Line 1847
    or	$t0,$t0,$t2
    # Line 1844
    sb	$a3,1887($a5)
    # Line 1849
    sll	$a7,$a7,0x17
    # Line 1848
    and	$t0,$t0,$t1
    # Line 1843
    sb	$a2,1886($a5)
    # Line 1848
    or	$a2,$a6,$t0
    # Line 1849
    nor	$a6,$a1,$zero
    # Line 1841
    sb	$a0,1884($a5)
    # Line 1849
    and	$a1,$a7,$a1
    and	$a2,$a2,$a6
    # Line 1850
    addu	$a0,$a5,$a4
    # Line 1849
    or	$a1,$a1,$a2
    sw	$a1,31836($a5)
    # Line 1850
    lw	$v1,26976($a0)
    # Line 1851
    ld	$gp,0($sp)
    # Line 1850
    li	$v0,2
    ori	$v1,$v1,0x80
    sw	$v1,26976($a0)
    # Line 1851
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1850
    sw	$v0,4120($zero)
.L0d95b554:
    # Line 1851
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95b560:
    # Line 1839
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95b554
    ld	$ra,8($sp)
.end __glOdyim_ColorMask

# Function: __glOdyim_ColorMaterial
# Declared: Line 1854 (Source lines: 1854-1888)
# Address: 0x0d95b580 - 0x0d95b68c (Size: 268 bytes, Frame: 32)
.globl __glOdyim_ColorMaterial
.ent __glOdyim_ColorMaterial
__glOdyim_ColorMaterial:
    # Line 1854
    addiu	$sp,$sp,-32
    # Line 1868
    li	$t1,5634
    li	$t0,5632
    # Line 1854
    sd	$s0,8($sp)
    # Line 1868
    li	$a7,4610
    li	$a6,4609
    # Line 1855
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 1854
    lui	$v1,0x1a
    # Line 1857
    li	$a4,1032
    sd	$ra,16($sp)
    # Line 1854
    addiu	$v1,$v1,-12272
    sd	$gp,0($sp)
    # Line 1855
    beq	$at,$v0,.L0d95b678
    # Line 1854
    addu	$gp,$t9,$v1
    # Line 1857
    li	$a2,1028
    beq	$a0,$a2,.L0d95b5ec
    li	$a3,1029
    beq	$a0,$a3,.L0d95b5f0
    # Line 1868
    li	$a5,4608
    # Line 1857
    beq	$a0,$a4,.L0d95b5ec
    # Line 1864
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d95b668
    ld	$ra,16($sp)
.L0d95b5ec:
    # Line 1868
    li	$a5,4608
.L0d95b5f0:
    beq	$a1,$a5,.L0d95b628
    nop
    beq	$a1,$a6,.L0d95b628
    nop
    beq	$a1,$a7,.L0d95b628
    nop
    beq	$a1,$t0,.L0d95b628
    nop
    beq	$a1,$t1,.L0d95b628
    # Line 1877
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d95b668
    ld	$ra,16($sp)
.L0d95b628:
    # Line 1881
    lw	$t2,1792($s0)
    andi	$t2,$t2,0x80
    sw	$a1,1388($s0)
    beqz	$t2,.L0d95b654
    # Line 1880
    sw	$a0,1384($s0)
    # Line 1884
    lw	$t9,11848($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1885
    lw	$t9,12056($s0)
    jalr	$t9
    move	$a0,$s0
.L0d95b654:
    # Line 1887
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,26048
    bal __glOdyim_FinishAsyncSGIX
    move	$a0,$s0
    ld	$ra,16($sp)
.L0d95b668:
    # Line 1888
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95b678:
    # Line 1855
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95b668
    ld	$ra,16($sp)
.end __glOdyim_ColorMaterial

# Function: __glOdyim_CullFace
# Declared: Line 1895 (Source lines: 1895-1919)
# Address: 0x0d95b690 - 0x0d95b77c (Size: 236 bytes, Frame: 16)
.globl __glOdyim_CullFace
.ent __glOdyim_CullFace
__glOdyim_CullFace:
    # Line 1915
    lui	$t1,0x1
    # Line 1895
    addiu	$sp,$sp,-16
    # Line 1896
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 1895
    lui	$v1,0x1a
    # Line 1915
    li	$a7,2
    sd	$ra,8($sp)
    # Line 1895
    addiu	$v1,$v1,-12544
    sd	$gp,0($sp)
    # Line 1896
    beq	$at,$v0,.L0d95b768
    # Line 1895
    addu	$gp,$t9,$v1
    # Line 1898
    li	$a1,1029
    beq	$a0,$a1,.L0d95b738
    li	$a3,1028
    beq	$a0,$a3,.L0d95b750
    li	$a4,1032
    beq	$a0,$a4,.L0d95b6ec
    # Line 1912
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d95b72c
    ld	$ra,8($sp)
.L0d95b6ec:
    # Line 1908
    lw	$a5,31740($a2)
    ori	$a5,$a5,0x600
    sw	$a5,31740($a2)
.L0d95b6f8:
    # Line 1915
    addu	$t1,$a2,$t1
    lw	$t0,26976($t1)
    ld	$ra,8($sp)
    ori	$t0,$t0,0x2
    sw	$t0,26976($t1)
    # Line 1917
    sw	$a0,492($a2)
    # Line 1918
    sw	$a7,4120($zero)
    lw	$a6,11812($a2)
    # Line 1919
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 1918
    ori	$a6,$a6,0x4
    # Line 1919
    jr	$ra
    # Line 1918
    sw	$a6,11812($a2)
.L0d95b72c:
    # Line 1919
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95b738:
    # Line 1900
    lw	$t2,31740($a2)
    li	$t3,-1537
    and	$t2,$t2,$t3
    ori	$t2,$t2,0x200
    b	.L0d95b6f8
    sw	$t2,31740($a2)
.L0d95b750:
    # Line 1904
    lw	$t8,31740($a2)
    li	$t9,-1537
    and	$t8,$t8,$t9
    ori	$t8,$t8,0x400
    # Line 1905
    b	.L0d95b6f8
    # Line 1904
    sw	$t8,31740($a2)
.L0d95b768:
    # Line 1896
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95b72c
    ld	$ra,8($sp)
.end __glOdyim_CullFace

# Function: __glOdyim_DepthFunc
# Declared: Line 1922 (Source lines: 1922-1939)
# Address: 0x0d95b780 - 0x0d95b874 (Size: 244 bytes, Frame: 16)
.globl __glOdyim_DepthFunc
.ent __glOdyim_DepthFunc
__glOdyim_DepthFunc:
    # Line 1935
    li	$t1,250
    # Line 1922
    addiu	$sp,$sp,-16
    # Line 1924
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 1922
    lui	$v1,0x1a
    # Line 1933
    li	$a7,-8
    sd	$ra,8($sp)
    # Line 1922
    addiu	$v1,$v1,-12784
    sd	$gp,0($sp)
    # Line 1924
    beq	$at,$v0,.L0d95b860
    # Line 1922
    addu	$gp,$t9,$v1
    # Line 1926
    sltiu	$a1,$a0,512
    # Line 1935
    lui	$at,0x1
    # Line 1926
    bnez	$a1,.L0d95b84c
    # Line 1935
    ori	$at,$at,0x420
    # Line 1926
    sltiu	$a3,$a0,520
    beqz	$a3,.L0d95b850
    # Line 1927
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1933
    lw	$a6,31792($a2)
    lui	$a3,0x1
    # Line 1931
    sw	$a0,1632($a2)
    # Line 1933
    and	$a6,$a6,$a7
    andi	$a7,$a0,0x7
    addu	$a4,$a3,$a2
    or	$a6,$a6,$a7
    sw	$a6,31792($a2)
    lw	$a5,-26576($a4)
    # Line 1938
    li	$t3,2
    ld	$ra,8($sp)
    # Line 1935
    ori	$t0,$a3,0x46
    # Line 1939
    ld	$gp,0($sp)
    # Line 1933
    beqz	$a5,.L0d95b81c
    # Line 1935
    ori	$t2,$a3,0x443
    sw	$zero,-26576($a4)
    sw	$t2,0($a3)
    sw	$t1,0($a3)
    sw	$t0,0($a3)
    sw	$t0,0($a3)
.L0d95b81c:
    sw	$at,0($a3)
    lw	$t9,31792($a2)
    sw	$t9,0($a3)
    # Line 1938
    lw	$t8,26980($a4)
    ori	$t8,$t8,0x800
    sw	$t8,26980($a4)
    # Line 1939
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1938
    sw	$t3,4120($zero)
.L0d95b840:
    # Line 1939
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95b84c:
    # Line 1927
    # lw $t9, -26792($gp) # &__glSetError
.L0d95b850:
    jal	__glSetError
    li	$a0,1280
    b	.L0d95b840
    ld	$ra,8($sp)
.L0d95b860:
    # Line 1924
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95b840
    ld	$ra,8($sp)
.end __glOdyim_DepthFunc

# Function: __glOdyim_DepthMask
# Declared: Line 1942 (Source lines: 1942-1950)
# Address: 0x0d95b880 - 0x0d95b92c (Size: 172 bytes, Frame: 16)
.globl __glOdyim_DepthMask
.ent __glOdyim_DepthMask
__glOdyim_DepthMask:
    # Line 1943
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 1942
    lui	$at,0x1a
    # Line 1943
    lw	$a2,4112($zero)
    # Line 1942
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13040
    sd	$gp,0($sp)
    # Line 1943
    beq	$v0,$v1,.L0d95b914
    # Line 1942
    addu	$gp,$t9,$at
    # Line 1947
    lui	$a6,0x100
    lbu	$v0,3225($a2)
    # Line 1945
    sb	$a0,1636($a2)
    # Line 1949
    li	$v1,2
    # Line 1947
    lw	$a4,31836($a2)
    nor	$a5,$a6,$zero
    # Line 1949
    lui	$a1,0x1
    # Line 1950
    ld	$gp,0($sp)
    # Line 1947
    beqz	$v0,.L0d95b90c
    # Line 1949
    addu	$a1,$a2,$a1
    # Line 1947
    beqz	$a0,.L0d95b90c
    li	$a0,1
.L0d95b8d4:
    sll	$a3,$a0,0x18
    and	$a4,$a4,$a5
    and	$a3,$a3,$a6
    or	$a3,$a3,$a4
    sw	$a3,31836($a2)
    # Line 1949
    lw	$a0,26976($a1)
    ori	$a0,$a0,0x80
    sw	$a0,26976($a1)
    # Line 1950
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1949
    sw	$v1,4120($zero)
.L0d95b900:
    # Line 1950
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95b90c:
    b	.L0d95b8d4
    # Line 1947
    move	$a0,$zero
.L0d95b914:
    # Line 1943
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95b900
    ld	$ra,8($sp)
.end __glOdyim_DepthMask

# Function: __glOdyim_ReadBuffer
# Declared: Line 1953 (Source lines: 1954-2007)
# Address: 0x0d95b930 - 0x0d95bac8 (Size: 408 bytes, Frame: 32)
.globl __glOdyim_ReadBuffer
.ent __glOdyim_ReadBuffer
__glOdyim_ReadBuffer:
    # Line 1954
    addiu	$sp,$sp,-32
    sd	$s1,0($sp)
    # Line 2007
    li	$a7,2
    # Line 1956
    lw	$s1,4112($zero)
    # Line 1970
    li	$a5,1029
    # Line 1962
    li	$t0,1028
    # Line 1956
    lw	$at,4120($zero)
    # Line 1954
    sd	$s0,8($sp)
    # Line 1956
    li	$v0,1
    # Line 1954
    lui	$v1,0x1a
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v1,$v1,-13216
    sd	$gp,16($sp)
    # Line 1956
    beq	$at,$v0,.L0d95ba54
    # Line 1954
    addu	$gp,$t9,$v1
    # Line 1958
    addiu	$a1,$s0,-1024
    la	$a0,sub_0daf0000
    sltiu	$a2,$a1,13
    sll	$a1,$a1,0x2
    addiu	$a0,$a0,-32736
    beqz	$a2,.L0d95ba14
    addu	$a0,$a0,$a1
    lw	$a1,0($a0)
    jr	$a1
    nop
.L0d95b998:
    # Line 1989
    lbu	$a2,3222($s1)
    beqz	$a2,.L0d95bab0
    # Line 1990
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95b9a4:
    # Line 1994
    lbu	$a3,3223($s1)
    beqz	$a3,.L0d95ba88
    # Line 1998
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2004
    ld	$gp,16($sp)
.L0d95b9b4:
    ld	$ra,24($sp)
    # Line 2000
    sw	$s0,1236($s1)
    # Line 2004
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95b9cc:
    # Line 1966
    lbu	$a4,3222($s1)
    beqz	$a4,.L0d95ba98
    # Line 1967
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1970
    sw	$a5,1236($s1)
.L0d95b9dc:
    # Line 2004
    ld	$gp,16($sp)
    # Line 2006
    sw	$s0,1240($s1)
    # Line 2007
    sw	$a7,4120($zero)
    lw	$a6,11812($s1)
    ld	$ra,24($sp)
    # Line 2004
    ld	$s0,8($sp)
    # Line 2007
    ori	$a6,$a6,0x10
    sw	$a6,11812($s1)
    # Line 2004
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95ba08:
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95ba14:
    # Line 2003
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d95ba08
    ld	$ra,24($sp)
.L0d95ba30:
    # Line 1963
    b	.L0d95b9dc
    # Line 1962
    sw	$t0,1236($s1)
.L0d95ba38:
    # Line 1976
    lw	$t2,3296($s1)
    addiu	$t1,$s0,-1033
    slt	$t1,$t1,$t2
    beqz	$t1,.L0d95ba70
    # Line 1983
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1987
    b	.L0d95b9dc
    # Line 1986
    sw	$s0,1236($s1)
.L0d95ba54:
    # Line 1956
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95ba08
    ld	$ra,24($sp)
.L0d95ba70:
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    # Line 1983
    jalr	$t9
    li	$a0,1282
    b	.L0d95ba08
    ld	$ra,24($sp)
.L0d95ba88:
    # Line 1998
    jalr	$t9
    li	$a0,1282
    b	.L0d95b9b4
    # Line 2004
    ld	$gp,16($sp)
.L0d95ba98:
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    # Line 1967
    jalr	$t9
    li	$a0,1282
    b	.L0d95ba08
    ld	$ra,24($sp)
.L0d95bab0:
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    # Line 1990
    jalr	$t9
    li	$a0,1282
    b	.L0d95ba08
    ld	$ra,24($sp)
.end __glOdyim_ReadBuffer

# Function: __glOdyim_DrawBuffer
# Declared: Line 2011 (Source lines: 2011-2219)
# Address: 0x0d95bad0 - 0x0d95c01c (Size: 1356 bytes, Frame: 32)
.globl __glOdyim_DrawBuffer
.ent __glOdyim_DrawBuffer
__glOdyim_DrawBuffer:
    # Line 2011
    addiu	$sp,$sp,-32
    sd	$s1,0($sp)
    # Line 2015
    lw	$s1,4112($zero)
    lw	$at,4120($zero)
    # Line 2011
    sd	$s0,8($sp)
    # Line 2015
    li	$v0,1
    # Line 2011
    lui	$v1,0x1a
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v1,$v1,-13632
    sd	$gp,16($sp)
    # Line 2015
    beq	$at,$v0,.L0d95be8c
    # Line 2011
    addu	$gp,$t9,$v1
    # Line 2015
    lbu	$a0,3223($s1)
    beqz	$a0,.L0d95bc00
    sltiu	$a0,$s0,1030
    # Line 2023
    bnez	$a0,.L0d95bb6c
    sltiu	$a1,$s0,1031
    beqz	$a1,.L0d95bb94
    sltiu	$a6,$s0,1034
    # Line 2056
    lbu	$a3,31604($s1)
    # Line 2059
    li	$a1,1
    move	$a2,$zero
    move	$a4,$zero
    # Line 2056
    sltu	$a3,$zero,$a3
.L0d95bb34:
    # Line 2103
    sw	$s0,1888($s1)
.L0d95bb38:
    # Line 2216
    # lw $t9, -30484($gp) # &__glOdysseySetDrawbuf
    jal	__glOdysseySetDrawbuf
    move	$a0,$s1
    # Line 2205
    ld	$gp,16($sp)
    ld	$ra,24($sp)
    # Line 2219
    sw	$s0,1892($s1)
    # Line 2205
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95bb60:
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95bb6c:
    # Line 2023
    sltiu	$a4,$s0,1026
    bnez	$a4,.L0d95bbdc
    sltiu	$a5,$s0,1027
    beqz	$a5,.L0d95bc94
    sltiu	$a7,$s0,1028
    # Line 2037
    move	$a4,$zero
    move	$a2,$zero
    li	$a3,1
    b	.L0d95bb34
    move	$a1,$zero
.L0d95bb94:
    # Line 2023
    bnez	$a6,.L0d95bc60
    sltiu	$a7,$s0,1035
    bnez	$a7,.L0d95bbb8
    sltiu	$t0,$s0,1036
    bnez	$t0,.L0d95bde0
    li	$t2,1035
    sltiu	$t1,$s0,1037
    beqz	$t1,.L0d95bcdc
    # Line 2099
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bbb8:
    # Line 2085
    lw	$t3,3296($s1)
    addiu	$t2,$s0,-1033
    slt	$t2,$t2,$t3
    beqz	$t2,.L0d95bdc4
    # Line 2094
    move	$a4,$zero
    move	$a2,$zero
    move	$a3,$zero
    b	.L0d95bb34
    move	$a1,$zero
.L0d95bbdc:
    # Line 2023
    sltiu	$t8,$s0,1024
    bnez	$t8,.L0d95bcbc
    sltiu	$t9,$s0,1025
    beqz	$t9,.L0d95bd90
    # Line 2029
    move	$a4,$zero
    move	$a2,$zero
    move	$a3,$zero
    b	.L0d95bb34
    li	$a1,1
.L0d95bc00:
    # Line 2100
    lbu	$ra,3222($s1)
    beqz	$ra,.L0d95be0c
    nop
    # Line 2109
    bnez	$a0,.L0d95bcf4
    sltiu	$t2,$s0,1026
    sltiu	$at,$s0,1031
    bnez	$at,.L0d95bd30
    sltiu	$v0,$s0,1034
    bnez	$v0,.L0d95bd18
    sltiu	$v1,$s0,1035
    bnez	$v1,.L0d95bc40
    sltiu	$a0,$s0,1036
    bnez	$a0,.L0d95bf60
    sltiu	$a1,$s0,1037
    beqz	$a1,.L0d95bec8
    # Line 2160
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bc40:
    # Line 2151
    lw	$a3,3296($s1)
    addiu	$a2,$s0,-1033
    slt	$a2,$a2,$a3
    beqz	$a2,.L0d95bdc4
    # Line 2157
    move	$a3,$zero
    # Line 2156
    sw	$s0,1888($s1)
    # Line 2157
    b	.L0d95bd44
    move	$a1,$zero
.L0d95bc60:
    # Line 2023
    sltiu	$a4,$s0,1032
    bnez	$a4,.L0d95bd50
    sltiu	$a5,$s0,1033
    beqz	$a5,.L0d95bcd4
    li	$t1,1033
    lbu	$a6,31604($s1)
    # Line 2079
    li	$a1,1
    # Line 2023
    li	$a3,1
    # Line 2079
    li	$a2,1
    movz	$a3,$zero,$a6
    # Line 2023
    li	$a4,1
    # Line 2079
    b	.L0d95bb34
    movz	$a4,$zero,$a6
.L0d95bc94:
    # Line 2023
    bnez	$a7,.L0d95bd74
    li	$a5,1027
    sltiu	$t0,$s0,1029
    beqz	$t0,.L0d95bdf0
    li	$t3,1029
    # Line 2045
    move	$a4,$zero
    li	$a1,1
    move	$a3,$zero
    b	.L0d95bb34
    li	$a2,1
.L0d95bcbc:
    # Line 2023
    bnez	$s0,.L0d95bcd8
    move	$a4,$zero
    move	$a2,$zero
    move	$a3,$zero
    b	.L0d95bb34
    move	$a1,$zero
.L0d95bcd4:
    beq	$s0,$t1,.L0d95bbb8
.L0d95bcd8:
    # Line 2099
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bcdc:
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d95bb60
    ld	$ra,24($sp)
.L0d95bcf4:
    # Line 2109
    bnez	$t2,.L0d95bdac
    sltiu	$a7,$s0,1024
    sltiu	$t3,$s0,1027
    beqz	$t3,.L0d95be60
    li	$a0,1029
    # Line 2129
    li	$a3,1
.L0d95bd0c:
    # Line 2127
    sw	$a0,1888($s1)
    # Line 2129
    b	.L0d95bd44
    move	$a1,$zero
.L0d95bd18:
    # Line 2109
    sltiu	$t8,$s0,1032
    bnez	$t8,.L0d95bec0
    li	$a5,1031
    sltiu	$t9,$s0,1033
    beqz	$t9,.L0d95bf50
    li	$at,1033
.L0d95bd30:
    # Line 2138
    lbu	$a3,31604($s1)
    # Line 2141
    li	$a1,1
    # Line 2133
    li	$a4,1032
    sw	$a4,1888($s1)
    # Line 2138
    sltu	$a3,$zero,$a3
.L0d95bd44:
    # Line 2206
    move	$a4,$zero
    b	.L0d95bb38
    move	$a2,$zero
.L0d95bd50:
    # Line 2023
    li	$a5,1031
    bne	$s0,$a5,.L0d95bcdc
    # Line 2099
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2069
    li	$a2,1
    # Line 2066
    lbu	$a4,31604($s1)
    # Line 2069
    move	$a3,$zero
    move	$a1,$zero
    b	.L0d95bb34
    # Line 2066
    sltu	$a4,$zero,$a4
.L0d95bd74:
    # Line 2023
    bne	$s0,$a5,.L0d95bcdc
    # Line 2099
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2041
    li	$a4,1
    move	$a2,$zero
    move	$a3,$zero
    b	.L0d95bb34
    move	$a1,$zero
.L0d95bd90:
    # Line 2023
    li	$a6,1025
    bne	$s0,$a6,.L0d95bcd8
    # Line 2033
    move	$a4,$zero
    li	$a2,1
    move	$a3,$zero
    b	.L0d95bb34
    move	$a1,$zero
.L0d95bdac:
    # Line 2109
    bnez	$a7,.L0d95bea8
    sltiu	$t0,$s0,1025
    bnez	$t0,.L0d95be78
    li	$t1,1025
    bne	$s0,$t1,.L0d95bec8
    # Line 2160
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bdc4:
    # Line 2093
    # lw $t9, -26792($gp) # &__glSetError
.L0d95bdc8:
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95bb60
    ld	$ra,24($sp)
.L0d95bde0:
    # Line 2023
    beq	$s0,$t2,.L0d95bbb8
    nop
    b	.L0d95bcdc
    # Line 2099
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bdf0:
    # Line 2023
    bne	$s0,$t3,.L0d95bcdc
    # Line 2099
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2049
    li	$a3,1
    move	$a2,$zero
    li	$a4,1
    b	.L0d95bb34
    move	$a1,$zero
.L0d95be0c:
    # Line 2167
    bnez	$a0,.L0d95bee0
    sltiu	$t8,$s0,1031
    bnez	$t8,.L0d95bf30
    # Line 2178
    li	$a1,1
    # Line 2167
    sltiu	$t9,$s0,1034
    bnez	$t9,.L0d95bfa4
    sltiu	$ra,$s0,1035
    bnez	$ra,.L0d95be40
    sltiu	$at,$s0,1036
    bnez	$at,.L0d95c008
    sltiu	$v0,$s0,1037
    beqz	$v0,.L0d95bf8c
    # Line 2204
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95be40:
    # Line 2195
    lw	$a0,3296($s1)
    addiu	$v1,$s0,-1033
    slt	$v1,$v1,$a0
    beqz	$v1,.L0d95bdc8
    # Line 2093
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2200
    sw	$s0,1888($s1)
    # Line 2201
    b	.L0d95bf38
    move	$a1,$zero
.L0d95be60:
    # Line 2109
    sltiu	$a1,$s0,1028
    bnez	$a1,.L0d95bf40
    li	$ra,1027
    sltiu	$a2,$s0,1029
    beqz	$a2,.L0d95bf74
    li	$a0,1029
.L0d95be78:
    # Line 2118
    li	$a1,1
    move	$a3,$zero
    # Line 2116
    li	$a4,1028
    # Line 2118
    b	.L0d95bd44
    # Line 2116
    sw	$a4,1888($s1)
.L0d95be8c:
    # Line 2015
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95bb60
    ld	$ra,24($sp)
.L0d95bea8:
    # Line 2109
    bnez	$s0,.L0d95bec8
    # Line 2160
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2111
    move	$a3,$zero
    sw	$zero,1888($s1)
    b	.L0d95bd44
    move	$a1,$zero
.L0d95bec0:
    # Line 2109
    beq	$s0,$a5,.L0d95bdc4
    # Line 2160
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bec8:
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d95bb60
    ld	$ra,24($sp)
.L0d95bee0:
    # Line 2167
    sltiu	$a6,$s0,1026
    bnez	$a6,.L0d95bf20
    sltiu	$t3,$s0,1024
    sltiu	$a7,$s0,1027
    bnez	$a7,.L0d95bdc4
    sltiu	$t0,$s0,1028
    bnez	$t0,.L0d95bf84
    li	$v1,1027
    sltiu	$t1,$s0,1029
    bnez	$t1,.L0d95bf30
    # Line 2178
    li	$a1,1
    # Line 2167
    li	$t2,1029
    beq	$s0,$t2,.L0d95bdc8
    # Line 2093
    nop	# was lw $t9, -26792($gp) # &__glSetError
    b	.L0d95bf8c
    # Line 2204
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bf20:
    # Line 2167
    bnez	$t3,.L0d95bfd0
    sltiu	$t8,$s0,1025
    beqz	$t8,.L0d95bff4
    # Line 2178
    li	$a1,1
.L0d95bf30:
    # Line 2176
    li	$t9,1028
    sw	$t9,1888($s1)
.L0d95bf38:
    b	.L0d95bd44
    # Line 2206
    move	$a3,$zero
.L0d95bf40:
    # Line 2109
    beq	$s0,$ra,.L0d95bdc8
    # Line 2093
    nop	# was lw $t9, -26792($gp) # &__glSetError
    b	.L0d95bec8
    # Line 2160
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bf50:
    # Line 2109
    beq	$s0,$at,.L0d95bc40
    nop
    b	.L0d95bec8
    # Line 2160
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bf60:
    # Line 2109
    li	$v0,1035
    beq	$s0,$v0,.L0d95bc40
    nop
    b	.L0d95bec8
    # Line 2160
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bf74:
    # Line 2109
    beq	$a0,$s0,.L0d95bd0c
    # Line 2129
    li	$a3,1
    b	.L0d95bec8
    # Line 2160
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bf84:
    # Line 2167
    beq	$s0,$v1,.L0d95bdc4
    # Line 2204
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bf8c:
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d95bb60
    ld	$ra,24($sp)
.L0d95bfa4:
    # Line 2167
    sltiu	$a0,$s0,1032
    bnez	$a0,.L0d95bfe4
    li	$a3,1031
    sltiu	$a1,$s0,1033
    bnez	$a1,.L0d95bf30
    # Line 2178
    li	$a1,1
    # Line 2167
    li	$a2,1033
    beq	$s0,$a2,.L0d95be40
    nop
    b	.L0d95bf8c
    # Line 2204
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bfd0:
    # Line 2167
    bnez	$s0,.L0d95bf8c
    # Line 2204
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2169
    sw	$zero,1888($s1)
    b	.L0d95bf38
    move	$a1,$zero
.L0d95bfe4:
    # Line 2167
    beq	$s0,$a3,.L0d95bdc8
    # Line 2093
    nop	# was lw $t9, -26792($gp) # &__glSetError
    b	.L0d95bf8c
    # Line 2204
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95bff4:
    # Line 2167
    li	$a4,1025
    beq	$s0,$a4,.L0d95bdc8
    # Line 2093
    nop	# was lw $t9, -26792($gp) # &__glSetError
    b	.L0d95bf8c
    # Line 2204
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95c008:
    # Line 2167
    li	$a5,1035
    beq	$s0,$a5,.L0d95be40
    nop
    b	.L0d95bf8c
    # Line 2204
    nop	# was lw $t9, -26792($gp) # &__glSetError
.end __glOdyim_DrawBuffer

# Function: __glOdyim_FrontFace
# Declared: Line 2223 (Source lines: 2223-2243)
# Address: 0x0d95c020 - 0x0d95c0f0 (Size: 208 bytes, Frame: 16)
.globl __glOdyim_FrontFace
.ent __glOdyim_FrontFace
__glOdyim_FrontFace:
    # Line 2232
    lui	$a5,0x80
    # Line 2223
    addiu	$sp,$sp,-16
    # Line 2224
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 2223
    lui	$v1,0x1a
    sd	$ra,8($sp)
    # Line 2232
    nor	$a5,$a5,$zero
    # Line 2223
    addiu	$v1,$v1,-14992
    sd	$gp,0($sp)
    # Line 2224
    beq	$at,$v0,.L0d95c0dc
    # Line 2223
    addu	$gp,$t9,$v1
    # Line 2226
    li	$a1,2304
    beq	$a0,$a1,.L0d95c0c8
    li	$a3,2305
    beq	$a0,$a3,.L0d95c074
    # Line 2236
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d95c0bc
    ld	$ra,8($sp)
.L0d95c074:
    # Line 2232
    lw	$a4,31740($a2)
    and	$a4,$a4,$a5
    sw	$a4,31740($a2)
.L0d95c080:
    # Line 2239
    lui	$t1,0x1
    addu	$t1,$a2,$t1
    lw	$t0,26976($t1)
    ld	$ra,8($sp)
    ori	$t0,$t0,0x2
    sw	$t0,26976($t1)
    # Line 2241
    sw	$a0,496($a2)
    # Line 2239
    li	$a7,2
    # Line 2242
    sw	$a7,4120($zero)
    lw	$a6,11812($a2)
    # Line 2243
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 2242
    ori	$a6,$a6,0x4
    # Line 2243
    jr	$ra
    # Line 2242
    sw	$a6,11812($a2)
.L0d95c0bc:
    # Line 2243
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95c0c8:
    # Line 2228
    lw	$t2,31740($a2)
    lui	$t3,0x80
    or	$t2,$t2,$t3
    b	.L0d95c080
    sw	$t2,31740($a2)
.L0d95c0dc:
    # Line 2224
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95c0bc
    ld	$ra,8($sp)
.end __glOdyim_FrontFace

# Function: __glOdyim_IndexMask
# Declared: Line 2246 (Source lines: 2246-2254)
# Address: 0x0d95c0f0 - 0x0d95c184 (Size: 148 bytes, Frame: 16)
.globl __glOdyim_IndexMask
.ent __glOdyim_IndexMask
__glOdyim_IndexMask:
    # Line 2247
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 2246
    lui	$at,0x1a
    # Line 2247
    lw	$a2,4112($zero)
    # Line 2246
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15200
    sd	$gp,0($sp)
    # Line 2247
    beq	$v0,$v1,.L0d95c16c
    # Line 2246
    addu	$gp,$t9,$at
    # Line 2249
    lw	$a1,30792($a2)
    # Line 2253
    lui	$a4,0x1
    # Line 2251
    lw	$a3,31836($a2)
    li	$a5,-4096
    # Line 2249
    and	$a1,$a1,$a0
    # Line 2251
    and	$a3,$a3,$a5
    # Line 2249
    sw	$a1,1880($a2)
    # Line 2251
    andi	$a1,$a1,0xfff
    # Line 2253
    addu	$a0,$a2,$a4
    # Line 2251
    or	$a1,$a1,$a3
    sw	$a1,31836($a2)
    # Line 2253
    lw	$v1,26976($a0)
    # Line 2254
    ld	$gp,0($sp)
    # Line 2253
    li	$v0,2
    ori	$v1,$v1,0x80
    sw	$v1,26976($a0)
    # Line 2254
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2253
    sw	$v0,4120($zero)
.L0d95c160:
    # Line 2254
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95c16c:
    # Line 2247
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95c160
    ld	$ra,8($sp)
.end __glOdyim_IndexMask

# Function: __glOdyim_LineStipple
# Declared: Line 2257 (Source lines: 2257-2278)
# Address: 0x0d95c190 - 0x0d95c29c (Size: 268 bytes, Frame: 16)
.globl __glOdyim_LineStipple
.ent __glOdyim_LineStipple
__glOdyim_LineStipple:
    # Line 2259
    lw	$v0,4120($zero)
    li	$a5,1
    # Line 2257
    lui	$at,0x1a
    # Line 2259
    lw	$a4,4112($zero)
    # Line 2257
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15360
    sd	$gp,0($sp)
    # Line 2259
    beq	$v0,$a5,.L0d95c284
    # Line 2257
    addu	$gp,$t9,$at
    # Line 2274
    lui	$a3,0x1
    # Line 2268
    li	$v1,256
    # Line 2271
    lw	$a6,31812($a4)
    # Line 2268
    slti	$t1,$a0,1
    # Line 2271
    lui	$t0,0xffff
    # Line 2268
    movz	$a5,$a0,$t1
    # Line 2272
    lw	$t1,31816($a4)
    # Line 2268
    li	$a7,256
    # Line 2271
    and	$a6,$t0,$a6
    # Line 2269
    sh	$a1,480($a4)
    # Line 2272
    and	$t0,$t0,$t1
    # Line 2268
    slt	$a7,$a7,$a5
    # Line 2274
    lw	$a2,31820($a4)
    # Line 2268
    movz	$v1,$a5,$a7
    # Line 2271
    andi	$a7,$a1,0xffff
    or	$a6,$a7,$a6
    # Line 2272
    or	$a7,$a7,$t0
    # Line 2268
    sh	$v1,482($a4)
    # Line 2271
    sw	$a6,31812($a4)
    # Line 2274
    li	$a6,-256
    addiu	$v1,$v1,-1
    # Line 2272
    sw	$a7,31816($a4)
    # Line 2274
    andi	$v1,$v1,0xff
    and	$a2,$a2,$a6
    addu	$a6,$a3,$a4
    or	$v1,$v1,$a2
    sw	$v1,31820($a4)
    lw	$v0,-26576($a6)
    # Line 2276
    ori	$t2,$a3,0x46
    ori	$t8,$a3,0x443
    lui	$v1,0x1
    # Line 2278
    ld	$gp,0($sp)
    # Line 2274
    beqz	$v0,.L0d95c254
    # Line 2276
    ori	$v1,$v1,0xc48
    sw	$zero,-26576($a6)
    sw	$t8,0($a3)
    li	$t3,250
    sw	$t3,0($a3)
    sw	$t2,0($a3)
    sw	$t2,0($a3)
.L0d95c254:
    sw	$v1,0($a3)
    lw	$v0,31812($a4)
    sw	$v0,0($a3)
    lw	$at,31816($a4)
    sw	$at,0($a3)
    lw	$t9,31820($a4)
    # Line 2278
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2276
    sw	$t9,0($a3)
.L0d95c278:
    # Line 2278
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95c284:
    # Line 2259
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95c278
    ld	$ra,8($sp)
.end __glOdyim_LineStipple

# Function: __glOdyim_LineWidth
# Declared: Line 2281 (Source lines: 2281-2312)
# Address: 0x0d95c2a0 - 0x0d95c390 (Size: 240 bytes, Frame: 16)
.globl __glOdyim_LineWidth
.ent __glOdyim_LineWidth
__glOdyim_LineWidth:
    # Line 2281
    addiu	$sp,$sp,-16
    # Line 2282
    lw	$at,4120($zero)
    lw	$a1,4112($zero)
    li	$a2,1
    # Line 2281
    lui	$v0,0x1a
    # Line 2282
    mtc1	$zero,$f0
    sd	$ra,8($sp)
    # Line 2281
    addiu	$v0,$v0,-15632
    sd	$gp,0($sp)
    # Line 2282
    beq	$at,$a2,.L0d95c37c
    # Line 2281
    addu	$gp,$t9,$v0
    # Line 2282
    c.le.s	$f12,$f0
    # Line 2289
    ldc1	$f1,_lit8_3ff0000000000000
    # Line 2282
    bc1t	.L0d95c368
    # Line 2297
    ldc1	$f2,_lit8_3fe0000000000000
    # Line 2289
    cvt.d.s	$f4,$f12
    c.lt.d $f4,$f1
    ld	$ra,8($sp)
    # Line 2312
    ld	$gp,0($sp)
    # Line 2311
    li	$v1,2
    # Line 2289
    bc1f .L0d95c300
    swc1	$f12,468($a1)
    # Line 2295
    b	.L0d95c30c
    sw	$a2,476($a1)
.L0d95c300:
    # Line 2297
    add.d	$f2,$f4,$f2
    trunc.w.d	$f2,$f2
    swc1	$f2,476($a1)
.L0d95c30c:
    lwc1	$f4,3756($a1)
    c.lt.s $f12,$f4
    bc1f .L0d95c324
    # Line 2311
    lui	$a2,0x1
    # Line 2304
    b	.L0d95c340
    swc1	$f4,472($a1)
.L0d95c324:
    lwc1	$f4,3760($a1)
    c.lt.s $f4,$f12
    bc1f .L0d95c33c
    nop
    # Line 2306
    b	.L0d95c340
    swc1	$f4,472($a1)
.L0d95c33c:
    # Line 2308
    swc1	$f12,472($a1)
.L0d95c340:
    # Line 2311
    addu	$a1,$a1,$a2
    lw	$a0,26980($a1)
    ori	$a0,$a0,0x800
    sw	$a0,26980($a1)
    # Line 2312
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2311
    sw	$v1,4120($zero)
.L0d95c35c:
    # Line 2312
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95c368:
    # Line 2285
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d95c35c
    ld	$ra,8($sp)
.L0d95c37c:
    # Line 2282
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95c35c
    ld	$ra,8($sp)
.end __glOdyim_LineWidth

# Function: __glOdyim_LogicOp
# Declared: Line 2315 (Source lines: 2315-2330)
# Address: 0x0d95c390 - 0x0d95c470 (Size: 224 bytes, Frame: 16)
.globl __glOdyim_LogicOp
.ent __glOdyim_LogicOp
__glOdyim_LogicOp:
    # Line 2328
    li	$t1,250
    # Line 2315
    addiu	$sp,$sp,-16
    # Line 2317
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 2315
    lui	$v1,0x1a
    # Line 2326
    li	$a7,-16
    sd	$ra,8($sp)
    # Line 2315
    addiu	$v1,$v1,-15872
    sd	$gp,0($sp)
    # Line 2317
    beq	$at,$v0,.L0d95c45c
    # Line 2315
    addu	$gp,$t9,$v1
    # Line 2319
    sltiu	$a1,$a0,5376
    bnez	$a1,.L0d95c448
    sltiu	$a3,$a0,5392
    beqz	$a3,.L0d95c44c
    # Line 2320
    nop	# was lw $t9, -26792($gp) # &__glSetError
    ld	$ra,8($sp)
    # Line 2326
    lw	$a6,31808($a2)
    lui	$a3,0x1
    # Line 2324
    sw	$a0,1856($a2)
    # Line 2326
    and	$a6,$a6,$a7
    andi	$a7,$a0,0xf
    addu	$a4,$a3,$a2
    or	$a6,$a6,$a7
    sw	$a6,31808($a2)
    lw	$a5,-26576($a4)
    # Line 2328
    lui	$t8,0x1
    ori	$t8,$t8,0x422
    ori	$t0,$a3,0x46
    # Line 2330
    ld	$gp,0($sp)
    # Line 2326
    beqz	$a5,.L0d95c428
    # Line 2328
    ori	$t2,$a3,0x443
    sw	$zero,-26576($a4)
    sw	$t2,0($a3)
    sw	$t1,0($a3)
    sw	$t0,0($a3)
    sw	$t0,0($a3)
.L0d95c428:
    sw	$t8,0($a3)
    lw	$t3,31808($a2)
    # Line 2330
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2328
    sw	$t3,0($a3)
.L0d95c43c:
    # Line 2330
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95c448:
    # Line 2320
    # lw $t9, -26792($gp) # &__glSetError
.L0d95c44c:
    jal	__glSetError
    li	$a0,1280
    b	.L0d95c43c
    ld	$ra,8($sp)
.L0d95c45c:
    # Line 2317
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95c43c
    ld	$ra,8($sp)
.end __glOdyim_LogicOp

# Function: ApplyParameterF
# Declared: Line 2333 (Source lines: 2333-2429)
# Address: 0x0d95c470 - 0x0d95c900 (Size: 1168 bytes, Frame: 48)
.ent ApplyParameterF
ApplyParameterF:
    # Line 2333
    addiu	$sp,$sp,-48
    sd	$s2,16($sp)
    sd	$s0,32($sp)
    # Line 2340
    sltiu	$at,$a1,5632
    # Line 2333
    move	$s0,$a0
    sd	$s1,24($sp)
    move	$s1,$a2
    # Line 2340
    bnez	$at,.L0d95c5d4
    # Line 2338
    lw	$s2,4112($zero)
    # Line 2340
    sltiu	$v0,$a1,5633
    beqz	$v0,.L0d95c5f4
    sltiu	$a5,$a1,5634
    # Line 2360
    li	$a1,8
    lbu	$a0,3220($s2)
.L0d95c4a8:
    # Line 2410
    sltiu	$v1,$a0,1
    movn	$a1,$zero,$v1
    beqz	$a1,.L0d95c5c4
    ld	$s2,16($sp)
    lui	$a7,0x1
    li	$a0,1
    move	$a4,$zero
    li	$a5,6
    li	$a6,47
    li	$t1,10
    li	$t0,53
    lui	$t3,0xc080
    b	.L0d95c8f4
    ori	$t3,$t3,0xd000
.L0d95c4e0:
    # Line 2419
    sll	$t8,$a5,0x18
    or	$t8,$a6,$t8
    or	$t8,$t3,$t8
    sw	$t8,0($a7)
.L0d95c4f0:
    # Line 2423
    lwc1	$f3,0($s1)
    swc1	$f3,0($a7)
    # Line 2424
    lwc1	$f2,4($s1)
    swc1	$f2,0($a7)
    # Line 2425
    lwc1	$f1,8($s1)
    swc1	$f1,0($a7)
    # Line 2426
    lwc1	$f0,12($s1)
    swc1	$f0,0($a7)
.L0d95c510:
    # Line 2413
    addiu	$t0,$t0,1
    addiu	$t1,$t1,1
    addiu	$a6,$a6,1
    # Line 2410
    sllv	$t2,$a0,$a4
    # Line 2413
    beqz	$a1,.L0d95c5c0
    addiu	$a5,$a5,1
    addiu	$a4,$a4,1
.L0d95c52c:
    # Line 2419
    sll	$at,$a5,0x18
    # Line 2413
    addiu	$a5,$a5,1
    # Line 2410
    and	$t9,$t2,$a1
    # Line 2419
    or	$at,$a6,$at
    # Line 2413
    addiu	$a6,$a6,1
    # Line 2410
    beqz	$t9,.L0d95c574
    # Line 2419
    or	$at,$t3,$at
    # Line 2415
    beqz	$s0,.L0d95c5ac
    subu	$a1,$a1,$t2
    # Line 2419
    sw	$at,0($a7)
.L0d95c554:
    # Line 2423
    lwc1	$f7,0($s1)
    swc1	$f7,0($a7)
    # Line 2424
    lwc1	$f6,4($s1)
    swc1	$f6,0($a7)
    # Line 2425
    lwc1	$f5,8($s1)
    swc1	$f5,0($a7)
    # Line 2426
    lwc1	$f4,12($s1)
    swc1	$f4,0($a7)
.L0d95c574:
    # Line 2413
    addiu	$t0,$t0,1
    beqz	$a1,.L0d95c5c0
    addiu	$t1,$t1,1
    # Line 2410
    sllv	$t2,$a0,$a4
    and	$v0,$t2,$a1
    beqz	$v0,.L0d95c510
    # Line 2413
    addiu	$a4,$a4,1
    # Line 2415
    bnez	$s0,.L0d95c4e0
    subu	$a1,$a1,$t2
    # Line 2421
    sll	$v1,$t1,0x18
    or	$v1,$t0,$v1
    or	$v1,$t3,$v1
    b	.L0d95c4f0
    sw	$v1,0($a7)
.L0d95c5ac:
    sll	$a2,$t1,0x18
    or	$a2,$t0,$a2
    or	$a2,$t3,$a2
    b	.L0d95c554
    sw	$a2,0($a7)
.L0d95c5c0:
    ld	$s2,16($sp)
.L0d95c5c4:
    ld	$s1,24($sp)
    ld	$s0,32($sp)
    # Line 2429
    jr	$ra
    addiu	$sp,$sp,48
.L0d95c5d4:
    # Line 2340
    sltiu	$a3,$a1,4609
    bnez	$a3,.L0d95c610
    sltiu	$a4,$a1,4610
    beqz	$a4,.L0d95c640
    li	$t1,4610
    # Line 2347
    li	$a1,2
    b	.L0d95c4a8
    lbu	$a0,3220($s2)
.L0d95c5f4:
    # Line 2340
    bnez	$a5,.L0d95c628
    sltiu	$a6,$a1,5635
    beqz	$a6,.L0d95c654
    li	$t2,5635
    # Line 2352
    li	$a1,3
    b	.L0d95c4a8
    lbu	$a0,3220($s2)
.L0d95c610:
    # Line 2340
    li	$a7,4608
    beq	$a1,$a7,.L0d95c664
    li	$a1,1
    lbu	$a0,3220($s2)
    b	.L0d95c4a8
    move	$a1,$zero
.L0d95c628:
    li	$t0,5633
    beq	$a1,$t0,.L0d95c66c
    nop
    lbu	$a0,3220($s2)
    b	.L0d95c4a8
    move	$a1,$zero
.L0d95c640:
    beq	$a1,$t1,.L0d95c6c8
    # Line 2356
    li	$a1,4
    # Line 2340
    lbu	$a0,3220($s2)
    b	.L0d95c4a8
    move	$a1,$zero
.L0d95c654:
    beq	$a1,$t2,.L0d95c6d0
    lbu	$a0,3220($s2)
    b	.L0d95c4a8
    move	$a1,$zero
.L0d95c664:
    b	.L0d95c4a8
    lbu	$a0,3220($s2)
.L0d95c66c:
    # Line 2363
    lwc1	$f4,0($a2)
    # Line 2364
    ldc1	$f8,_lit8_4004000000000000
    cvt.d.s	$f4,$f4
    c.lt.d	$f4,$f8
    bc1f	.L0d95c690
    dmtc1	$zero,$f6
    ldc1	$f5,_lit8_4004000000000000
    c.lt.d $f6,$f4
    movt.d	$f4,$f5,$fcc1
.L0d95c690:
    sqrt.d	$f5,$f4
    sltiu	$a2,$s0,1
    sll	$a2,$a2,0x2
    lui	$a7,0x1
    addu	$a2,$a2,$s2
    addu	$a2,$a7,$a2
    lwc1	$f7,-26604($a2)
    cvt.s.d	$f5,$f5
    c.eq.s $f7,$f5
    bc1f .L0d95c6e0
    # Line 2370
    lui	$a3,0xd080
.L0d95c6bc:
    # Line 2382
    lbu	$a0,3220($s2)
    b	.L0d95c4a8
    move	$a1,$zero
.L0d95c6c8:
    # Line 2356
    b	.L0d95c4a8
    lbu	$a0,3220($s2)
.L0d95c6d0:
    # Line 2340
    beqz	$a0,.L0d95c74c
    nop
.L0d95c6d8:
    # Line 2406
    b	.L0d95c4a8
    move	$a1,$zero
.L0d95c6e0:
    # Line 2367
    swc1	$f5,-26604($a2)
    # Line 2370
    ori	$a4,$a3,0xc439
    ori	$a3,$a3,0xc433
    movz	$a3,$a4,$s0
    sw	$a3,0($a7)
    # Line 2372
    lui	$a2,0x9080
    # Line 2371
    swc1	$f5,0($a7)
    # Line 2373
    addu	$a1,$a7,$s2
    # Line 2372
    ori	$a2,$a2,0x91ea
    sw	$a2,0($a7)
    # Line 2373
    lwc1	$f9,-26604($a1)
    swc1	$f9,0($a7)
    # Line 2374
    lwc1	$f8,-26604($a1)
    neg.s	$f8,$f8
    swc1	$f8,0($a7)
    # Line 2375
    lwc1	$f7,-26600($a1)
    swc1	$f7,0($a7)
    # Line 2376
    lwc1	$f6,-26600($a1)
    # Line 2380
    # lw $t9, -30932($gp) # &__glOdysseySetProgram
    sd	$ra,40($sp)
    # Line 2376
    neg.s	$f6,$f6
    swc1	$f6,0($a7)
    # Line 2380
    move	$a0,$s2
    jal	__glOdysseySetProgram
    lw	$a1,-22872($a1)
    b	.L0d95c6bc
    ld	$ra,40($sp)
.L0d95c74c:
    # Line 2340
    lwc1	$f6,8($a2)
    mtc1	$zero,$f4
    c.eq.s $f6,$f4
    bc1t .L0d95c794
    # Line 2388
    mtc1	$zero,$f11
    lwc1	$f10,4($a2)
    # Line 2387
    lwc1	$f11,0($a2)
    # Line 2388
    sub.s	$f10,$f10,$f11
    ldc1	$f7,_lit8_3fe0000000000000
    cvt.d.s	$f10,$f10
    # Line 2389
    sub.s	$f5,$f6,$f11
    # Line 2388
    add.d	$f10,$f10,$f7
    # Line 2389
    cvt.d.s	$f5,$f5
    # Line 2387
    swc1	$f11,0($sp)
    # Line 2388
    cvt.s.d	$f10,$f10
    # Line 2389
    add.d	$f5,$f5,$f7
    b	.L0d95c7a0
    # Line 2388
    swc1	$f10,4($sp)
.L0d95c794:
    # Line 2387
    swc1	$f4,0($sp)
    # Line 2389
    dmtc1	$zero,$f5
    # Line 2388
    swc1	$f11,4($sp)
.L0d95c7a0:
    # Line 2390
    lui	$a7,0x1
    addiu	$a0,$sp,0
    li	$a5,6
    li	$a6,47
    li	$t1,10
    swc1	$f4,12($sp)
    lui	$t3,0xc080
    # Line 2389
    cvt.s.d	$f12,$f5
    # Line 2390
    li	$t0,53
    ori	$t3,$t3,0xd000
    # Line 2389
    swc1	$f12,8($sp)
    # Line 2390
    beqz	$s0,.L0d95c8a8
    # Line 2397
    sll	$v1,$t1,0x18
    # Line 2395
    sll	$t8,$a5,0x18
    or	$t8,$a6,$t8
    or	$t8,$t3,$t8
    sw	$t8,0($a7)
.L0d95c7e4:
    # Line 2399
    lwc1	$f13,0($a0)
    swc1	$f13,0($a7)
    # Line 2393
    addiu	$t0,$t0,1
    # Line 2400
    swc1	$f4,0($a7)
    # Line 2393
    addiu	$t1,$t1,1
    addiu	$a6,$a6,1
    # Line 2401
    swc1	$f4,0($a7)
    # Line 2393
    addiu	$a5,$a5,1
    # Line 2390
    beqz	$s0,.L0d95c8b8
    # Line 2402
    swc1	$f4,0($a7)
    # Line 2395
    sll	$t9,$a5,0x18
    or	$t9,$a6,$t9
    or	$t9,$t3,$t9
    sw	$t9,0($a7)
.L0d95c81c:
    # Line 2399
    lwc1	$f14,4($a0)
    swc1	$f14,0($a7)
    # Line 2393
    addiu	$t0,$t0,1
    # Line 2400
    swc1	$f4,0($a7)
    # Line 2393
    addiu	$t1,$t1,1
    addiu	$a6,$a6,1
    # Line 2401
    swc1	$f4,0($a7)
    # Line 2393
    addiu	$a5,$a5,1
    # Line 2390
    beqz	$s0,.L0d95c8cc
    # Line 2402
    swc1	$f4,0($a7)
    # Line 2395
    sll	$at,$a5,0x18
    or	$at,$a6,$at
    or	$at,$t3,$at
    sw	$at,0($a7)
.L0d95c854:
    # Line 2399
    lwc1	$f15,8($a0)
    swc1	$f15,0($a7)
    # Line 2393
    addiu	$t0,$t0,1
    # Line 2400
    swc1	$f4,0($a7)
    # Line 2393
    addiu	$t1,$t1,1
    addiu	$a6,$a6,1
    # Line 2401
    swc1	$f4,0($a7)
    # Line 2393
    addiu	$a5,$a5,1
    # Line 2390
    beqz	$s0,.L0d95c8e0
    # Line 2402
    swc1	$f4,0($a7)
    # Line 2395
    sll	$v0,$a5,0x18
    or	$v0,$a6,$v0
    or	$v0,$t3,$v0
    sw	$v0,0($a7)
.L0d95c88c:
    # Line 2399
    lwc1	$f16,12($a0)
    swc1	$f16,0($a7)
    # Line 2400
    swc1	$f4,0($a7)
    # Line 2401
    swc1	$f4,0($a7)
    # Line 2402
    swc1	$f4,0($a7)
    b	.L0d95c6d8
    # Line 2393
    lbu	$a0,3220($s2)
.L0d95c8a8:
    # Line 2397
    or	$v1,$t0,$v1
    or	$v1,$t3,$v1
    b	.L0d95c7e4
    sw	$v1,0($a7)
.L0d95c8b8:
    sll	$a1,$t1,0x18
    or	$a1,$t0,$a1
    or	$a1,$t3,$a1
    b	.L0d95c81c
    sw	$a1,0($a7)
.L0d95c8cc:
    sll	$a2,$t1,0x18
    or	$a2,$t0,$a2
    or	$a2,$t3,$a2
    b	.L0d95c854
    sw	$a2,0($a7)
.L0d95c8e0:
    sll	$a3,$t1,0x18
    or	$a3,$t0,$a3
    or	$a3,$t3,$a3
    b	.L0d95c88c
    sw	$a3,0($a7)
.L0d95c8f4:
    # Line 2410
    sllv	$t2,$a0,$a4
    b	.L0d95c52c
    # Line 2413
    addiu	$a4,$a4,1
.end ApplyParameterF

# Function: __glOdyim_Materialfv
# Declared: Line 2432 (Source lines: 2432-2490)
# Address: 0x0d95c900 - 0x0d95cae8 (Size: 488 bytes, Frame: 224)
.globl __glOdyim_Materialfv
.ent __glOdyim_Materialfv
__glOdyim_Materialfv:
    # Line 2438
    lwc1	$f14,0($a2)
    # Line 2432
    addiu	$sp,$sp,-96
    sd	$a2,24($sp)
    sd	$ra,40($sp)
    sd	$s0,32($sp)
    # Line 2434
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 2436
    lw	$v1,1388($at)
    # Line 2432
    lui	$a3,0x1a
    # Line 2435
    lw	$at,1384($at)
    # Line 2432
    addiu	$a3,$a3,-17264
    sd	$gp,48($sp)
    addu	$gp,$t9,$a3
    # Line 2438
    # lw $t9, -27380($gp) # &__glErrorCheckMaterial
    # Line 2432
    move	$v0,$a1
    # Line 2435
    sw	$v0,76($sp)
    # Line 2436
    sd	$v1,8($sp)
    # Line 2432
    move	$s0,$a0
    # Line 2438
    jal	__glErrorCheckMaterial
    sd	$at,0($sp)
    beqz	$v0,.L0d95c978
    # Line 2445
    nop	# was lw $t9, -27376($gp) # &__glim_Materialfv
    # Line 2440
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
.L0d95c964:
    ld	$ra,40($sp)
.L0d95c968:
    ld	$s0,32($sp)
    # Line 2490
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d95c978:
    # Line 2445
    lw	$a1,76($sp)
    move	$a0,$s0
    jalr	$t9
    ld	$a2,24($sp)
    ld	$a4,16($sp)
    lw	$a4,1792($a4)
    # Line 2466
    li	$a5,1028
    # Line 2465
    li	$t1,5634
    ld	$v0,0($sp)
    # Line 2451
    li	$a2,4608
    # Line 2445
    andi	$a4,$a4,0x80
    # Line 2465
    lw	$t0,76($sp)
    # Line 2476
    li	$t3,1032
    # Line 2465
    li	$a7,1032
    # Line 2457
    li	$at,1029
    # Line 2445
    beqz	$a4,.L0d95c9ec
    ld	$a0,8($sp)
    # Line 2451
    lw	$a5,76($sp)
    beq	$a0,$a5,.L0d95ca44
    li	$a6,5634
    beq	$a0,$a6,.L0d95ca70
    nop
    # Line 2457
    li	$a5,1028
.L0d95c9d4:
    # Line 2465
    beq	$s0,$v0,.L0d95c9e4
    nop
    bne	$v0,$a7,.L0d95c9ec
    nop
.L0d95c9e4:
    beq	$t0,$t1,.L0d95ca88
    li	$t1,4609
.L0d95c9ec:
    # Line 2476
    beq	$a5,$s0,.L0d95cab0
    # Line 2478
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 2476
    li	$t2,1029
    beq	$s0,$t2,.L0d95cacc
    # Line 2482
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 2476
    bne	$s0,$t3,.L0d95c968
    ld	$ra,40($sp)
    # Line 2486
    # lw $t9, -32740($gp) # &sub_0d960000
    ld	$s0,24($sp)
    addiu	$t9,$t9,-15248
    li	$a0,1
    lw	$a1,76($sp)
    bal __glOdyim_LogicOp
    move	$a2,$s0
    # Line 2487
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,-15248
    move	$a0,$zero
    lw	$a1,76($sp)
    bal __glOdyim_LogicOp
    move	$a2,$s0
    b	.L0d95c968
    ld	$ra,40($sp)
.L0d95ca44:
    # Line 2454
    beq	$s0,$v0,.L0d95c964
    li	$a6,1032
    xor	$ra,$a6,$s0
    beq	$a6,$v0,.L0d95c964
    # Line 2455
    li	$a5,1028
    # Line 2457
    xor	$v1,$a5,$v0
    move	$a1,$a5
    sltiu	$v1,$v1,1
    movz	$at,$a1,$v1
    b	.L0d95c9d4
    movz	$s0,$at,$ra
.L0d95ca70:
    # Line 2451
    beq	$a5,$a2,.L0d95ca44
    li	$a4,4609
    beq	$a5,$a4,.L0d95ca44
    nop
    b	.L0d95c9d4
    # Line 2457
    li	$a5,1028
.L0d95ca88:
    # Line 2465
    li	$t0,4608
    # Line 2469
    lw	$a6,76($sp)
    xor	$t2,$t1,$a0
    xor	$a7,$t0,$a0
    sltiu	$t2,$t2,1
    movz	$t0,$a6,$t2
    move	$a6,$t1
    movn	$a6,$t0,$a7
    b	.L0d95c9ec
    sw	$a6,76($sp)
.L0d95cab0:
    # Line 2478
    addiu	$t9,$t9,-15248
    ld	$a2,24($sp)
    lw	$a1,76($sp)
    bal __glOdyim_LogicOp
    li	$a0,1
    b	.L0d95c968
    ld	$ra,40($sp)
.L0d95cacc:
    # Line 2482
    addiu	$t9,$t9,-15248
    lw	$a1,76($sp)
    move	$a0,$zero
    bal __glOdyim_LogicOp
    ld	$a2,24($sp)
    b	.L0d95c968
    ld	$ra,40($sp)
.end __glOdyim_Materialfv

# Function: __glOdyim_Materialf
# Declared: Line 2493 (Source lines: 2493-2506)
# Address: 0x0d95caf0 - 0x0d95cb44 (Size: 84 bytes, Frame: 48)
.globl __glOdyim_Materialf
.ent __glOdyim_Materialf
__glOdyim_Materialf:
    # Line 2493
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    # Line 2497
    li	$at,5633
    # Line 2493
    lui	$v0,0x1a
    sd	$ra,8($sp)
    addiu	$v0,$v0,-17760
    sd	$gp,0($sp)
    # Line 2497
    beq	$a1,$at,.L0d95cb30
    # Line 2493
    addu	$gp,$t9,$v0
    # Line 2503
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d95cb24:
    # Line 2506
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d95cb30:
    # Line 2499
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    bal __glOdyim_Materialfv
    addiu	$a2,$sp,32
    b	.L0d95cb24
    ld	$ra,8($sp)
.end __glOdyim_Materialf

# Function: ApplyParameterI
# Declared: Line 2509 (Source lines: 2509-2607)
# Address: 0x0d95cb50 - 0x0d95d0a8 (Size: 1368 bytes, Frame: 192)
.ent ApplyParameterI
ApplyParameterI:
    # Line 2509
    addiu	$sp,$sp,-64
    sd	$s1,32($sp)
    # Line 2514
    lw	$s1,4112($zero)
    # Line 2509
    sd	$s2,24($sp)
    # Line 2516
    sltiu	$at,$a1,5632
    # Line 2509
    move	$s2,$a0
    sd	$s3,16($sp)
    move	$s3,$a2
    # Line 2516
    bnez	$at,.L0d95cd6c
    sd	$s0,48($sp)
    sltiu	$v0,$a1,5633
    beqz	$v0,.L0d95cd94
    sd	$s4,40($sp)
    # Line 2536
    lui	$s0,0x1
    li	$a4,8
    addu	$s4,$s0,$s1
.L0d95cb90:
    # Line 2581
    lw	$v1,-26576($s4)
    beqz	$v1,.L0d95cbc4
    # Line 2584
    lui	$a5,0x1
    lui	$a0,0x1
    sw	$zero,-26576($s4)
    ori	$a2,$a0,0x443
    sw	$a2,0($s0)
    li	$a1,250
    sw	$a1,0($s0)
    ori	$a0,$a0,0x46
    sw	$a0,0($s0)
    sw	$a0,0($s0)
    lui	$a5,0x1
.L0d95cbc4:
    ori	$a5,$a5,0x3c4d
    sw	$a5,0($s0)
    lw	$a3,31856($s1)
    sw	$a3,0($s0)
    lw	$a2,31860($s1)
    sw	$a2,0($s0)
    lw	$a1,31864($s1)
    sw	$a1,0($s0)
    lw	$a0,31868($s1)
    sw	$a0,0($s0)
    lw	$v1,31872($s1)
    sw	$v1,0($s0)
    lw	$v0,31876($s1)
    sw	$v0,0($s0)
    lw	$at,31880($s1)
    sw	$at,0($s0)
    lw	$t9,31884($s1)
    sw	$t9,0($s0)
    lw	$t8,31888($s1)
    sw	$t8,0($s0)
    lw	$t3,31892($s1)
    sw	$t3,0($s0)
    lw	$t2,31896($s1)
    sw	$t2,0($s0)
    lw	$t1,31900($s1)
    sw	$t1,0($s0)
    lw	$t0,31904($s1)
    sw	$t0,0($s0)
    lw	$a7,31908($s1)
    sw	$a7,0($s0)
    lw	$a6,31912($s1)
    sw	$a6,0($s0)
    lw	$a5,31916($s1)
    sw	$a5,0($s0)
    # Line 2588
    lbu	$a3,3220($s1)
    sltiu	$a3,$a3,1
    movn	$a4,$zero,$a3
    beqz	$a4,.L0d95cd50
    li	$a0,1
    move	$a1,$zero
    li	$a6,6
    li	$a5,47
    li	$t0,10
    lwc1	$f4,_lit_3f800000
    li	$a7,53
    lui	$t2,0xc080
    lwc1	$f5,_lit_40000000
    b	.L0d95d09c
    ori	$t2,$t2,0xd000
    nop
    nop
.L0d95cc90:
    # Line 2597
    sw	$t3,0($s0)
.L0d95cc94:
    # Line 2601
    lw	$v0,0($s3)
    mtc1	$v0,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f4,$f9,$f5
    lwc1	$f8,3568($s1)
    mul.s	$f8,$f8,$f9
    swc1	$f8,0($s0)
    # Line 2602
    lw	$at,4($s3)
    mtc1	$at,$f7
    cvt.s.w	$f7,$f7
    madd.s	$f7,$f4,$f7,$f5
    lwc1	$f6,3568($s1)
    mul.s	$f6,$f6,$f7
    swc1	$f6,0($s0)
    # Line 2603
    lw	$t9,8($s3)
    mtc1	$t9,$f3
    cvt.s.w	$f3,$f3
    madd.s	$f3,$f4,$f3,$f5
    lwc1	$f2,3568($s1)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($s0)
    # Line 2604
    lw	$t8,12($s3)
    mtc1	$t8,$f1
    cvt.s.w	$f1,$f1
    madd.s	$f1,$f4,$f1,$f5
    lwc1	$f0,3568($s1)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($s0)
.L0d95cd04:
    # Line 2597
    sll	$t3,$a6,0x18
    # Line 2591
    addiu	$a7,$a7,1
    beqz	$a4,.L0d95cd50
    addiu	$t0,$t0,1
    # Line 2597
    or	$t3,$a5,$t3
.L0d95cd18:
    # Line 2588
    sllv	$t1,$a0,$a1
    # Line 2591
    addiu	$a6,$a6,1
    # Line 2588
    and	$v1,$t1,$a4
    # Line 2591
    addiu	$a1,$a1,1
    addiu	$a5,$a5,1
    # Line 2588
    beqz	$v1,.L0d95cd04
    # Line 2597
    or	$t3,$t2,$t3
    # Line 2593
    bnez	$s2,.L0d95cc90
    subu	$a4,$a4,$t1
    # Line 2599
    sll	$a2,$t0,0x18
    or	$a2,$a7,$a2
    or	$a2,$t2,$a2
    b	.L0d95cc94
    sw	$a2,0($s0)
.L0d95cd50:
    ld	$s4,40($sp)
    ld	$s3,16($sp)
    ld	$s2,24($sp)
    ld	$s1,32($sp)
    ld	$s0,48($sp)
    # Line 2607
    jr	$ra
    addiu	$sp,$sp,64
.L0d95cd6c:
    # Line 2516
    sltiu	$a3,$a1,4609
    lui	$s0,0x1
    bnez	$a3,.L0d95cdbc
    sd	$s4,40($sp)
    sltiu	$a4,$a1,4610
    beqz	$a4,.L0d95cdec
    # Line 2532
    addu	$s4,$s0,$s1
    # Line 2523
    li	$a4,2
    b	.L0d95cb90
    addu	$s4,$s0,$s1
.L0d95cd94:
    # Line 2516
    sltiu	$a5,$a1,5634
    bnez	$a5,.L0d95cdd8
    li	$t0,5633
    sltiu	$a6,$a1,5635
    beqz	$a6,.L0d95ce04
    li	$t2,5635
    # Line 2528
    li	$a4,3
    lui	$s0,0x1
    b	.L0d95cb90
    addu	$s4,$s0,$s1
.L0d95cdbc:
    # Line 2516
    addu	$s4,$s0,$s1
    li	$t0,1
    move	$a4,$zero
    li	$a7,4608
    xor	$a7,$a1,$a7
    b	.L0d95cb90
    movz	$a4,$t0,$a7
.L0d95cdd8:
    lui	$s0,0x1
    beq	$a1,$t0,.L0d95ce18
    addu	$s4,$s0,$s1
    b	.L0d95cb90
    move	$a4,$zero
.L0d95cdec:
    # Line 2532
    li	$t2,4
    # Line 2516
    move	$a4,$zero
    li	$t1,4610
    xor	$t1,$a1,$t1
    # Line 2532
    b	.L0d95cb90
    movz	$a4,$t2,$t1
.L0d95ce04:
    # Line 2516
    beq	$a1,$t2,.L0d95ced0
    move	$a4,$zero
    lui	$s0,0x1
    b	.L0d95cb90
    addu	$s4,$s0,$s1
.L0d95ce18:
    # Line 2539
    lw	$t3,0($a2)
    mtc1	$t3,$f4
    cvt.s.w	$f4,$f4
    # Line 2540
    ldc1	$f10,_lit8_4004000000000000
    cvt.d.s	$f4,$f4
    c.lt.d	$f4,$f10
    bc1f	.L0d95ce48
    dmtc1	$zero,$f6
    ldc1	$f5,_lit8_4004000000000000
    c.lt.d $f6,$f4
    sd	$ra,56($sp)
    movt.d	$f4,$f5,$fcc1
.L0d95ce48:
    # Line 2542
    sqrt.d	$f11,$f4
    sltiu	$at,$s2,1
    sll	$at,$at,0x2
    addu	$at,$s1,$at
    sd	$ra,56($sp)
    # Line 2545
    lui	$t9,0xd080
    # Line 2542
    addu	$at,$s0,$at
    cvt.s.d	$f11,$f11
    # Line 2545
    ori	$ra,$t9,0xc439
    ori	$t9,$t9,0xc433
    # Line 2542
    swc1	$f11,-26604($at)
    # Line 2545
    movz	$t9,$ra,$s2
    sw	$t9,0($s0)
    # Line 2547
    lui	$t8,0x9080
    # Line 2546
    swc1	$f11,0($s0)
    # Line 2547
    ori	$t8,$t8,0x91ea
    sw	$t8,0($s0)
    # Line 2548
    lwc1	$f10,-26604($s4)
    swc1	$f10,0($s0)
    # Line 2549
    lwc1	$f9,-26604($s4)
    neg.s	$f9,$f9
    swc1	$f9,0($s0)
    # Line 2550
    lwc1	$f8,-26600($s4)
    swc1	$f8,0($s0)
    # Line 2551
    lwc1	$f7,-26600($s4)
    # Line 2555
    # lw $t9, -30932($gp) # &__glOdysseySetProgram
    # Line 2551
    neg.s	$f7,$f7
    swc1	$f7,0($s0)
    # Line 2555
    move	$a0,$s1
    jal	__glOdysseySetProgram
    lw	$a1,-22872($s4)
    ld	$ra,56($sp)
    # Line 2556
    b	.L0d95cb90
    move	$a4,$zero
.L0d95ced0:
    # Line 2516
    lbu	$v0,3220($s1)
    beqz	$v0,.L0d95cee8
    # Line 2567
    lui	$s0,0x1
    # Line 2580
    addu	$s4,$s0,$s1
.L0d95cee0:
    b	.L0d95cb90
    move	$a4,$zero
.L0d95cee8:
    # Line 2516
    lw	$a0,8($a2)
    beqz	$a0,.L0d95d040
    # Line 2561
    mtc1	$zero,$f18
    # Line 2562
    lw	$a1,4($a2)
    # Line 2561
    lw	$v1,0($a2)
    # Line 2562
    subu	$a1,$a1,$v1
    mtc1	$a1,$f12
    # Line 2561
    mtc1	$v1,$f13
    # Line 2563
    subu	$v1,$a0,$v1
    # Line 2562
    ldc1	$f6,_lit8_3fe0000000000000
    # Line 2563
    mtc1	$v1,$f5
    # Line 2562
    cvt.d.w	$f12,$f12
    # Line 2561
    cvt.s.w	$f13,$f13
    # Line 2562
    add.d	$f12,$f12,$f6
    # Line 2563
    cvt.d.w	$f5,$f5
    # Line 2561
    swc1	$f13,0($sp)
    # Line 2562
    cvt.s.d	$f12,$f12
    # Line 2563
    add.d	$f5,$f5,$f6
    # Line 2562
    swc1	$f12,4($sp)
.L0d95cf34:
    # Line 2564
    lui	$s0,0x1
    addiu	$a0,$sp,0
    li	$a6,6
    li	$a5,47
    # Line 2563
    cvt.s.d	$f13,$f5
    # Line 2564
    mtc1	$zero,$f4
    li	$t0,10
    lui	$t2,0xc080
    # Line 2563
    swc1	$f13,8($sp)
    # Line 2564
    li	$a7,53
    ori	$t2,$t2,0xd000
    swc1	$f4,12($sp)
    beqz	$s2,.L0d95d050
    # Line 2571
    sll	$v0,$t0,0x18
    # Line 2569
    sll	$t3,$a6,0x18
    or	$t3,$a5,$t3
    or	$t3,$t2,$t3
    sw	$t3,0($s0)
.L0d95cf7c:
    # Line 2573
    lwc1	$f14,0($a0)
    swc1	$f14,0($s0)
    # Line 2567
    addiu	$a7,$a7,1
    # Line 2574
    swc1	$f4,0($s0)
    # Line 2567
    addiu	$t0,$t0,1
    addiu	$a5,$a5,1
    # Line 2575
    swc1	$f4,0($s0)
    # Line 2567
    addiu	$a6,$a6,1
    # Line 2564
    beqz	$s2,.L0d95d060
    # Line 2576
    swc1	$f4,0($s0)
    # Line 2569
    sll	$t8,$a6,0x18
    or	$t8,$a5,$t8
    or	$t8,$t2,$t8
    sw	$t8,0($s0)
.L0d95cfb4:
    # Line 2573
    lwc1	$f15,4($a0)
    swc1	$f15,0($s0)
    # Line 2567
    addiu	$a7,$a7,1
    # Line 2574
    swc1	$f4,0($s0)
    # Line 2567
    addiu	$t0,$t0,1
    addiu	$a5,$a5,1
    # Line 2575
    swc1	$f4,0($s0)
    # Line 2567
    addiu	$a6,$a6,1
    # Line 2564
    beqz	$s2,.L0d95d074
    # Line 2576
    swc1	$f4,0($s0)
    # Line 2569
    sll	$t9,$a6,0x18
    or	$t9,$a5,$t9
    or	$t9,$t2,$t9
    sw	$t9,0($s0)
.L0d95cfec:
    # Line 2573
    lwc1	$f16,8($a0)
    swc1	$f16,0($s0)
    # Line 2567
    addiu	$a7,$a7,1
    # Line 2574
    swc1	$f4,0($s0)
    # Line 2567
    addiu	$t0,$t0,1
    addiu	$a5,$a5,1
    # Line 2575
    swc1	$f4,0($s0)
    # Line 2567
    addiu	$a6,$a6,1
    # Line 2564
    beqz	$s2,.L0d95d088
    # Line 2576
    swc1	$f4,0($s0)
    # Line 2569
    sll	$at,$a6,0x18
    or	$at,$a5,$at
    or	$at,$t2,$at
    sw	$at,0($s0)
.L0d95d024:
    # Line 2573
    lwc1	$f17,12($a0)
    swc1	$f17,0($s0)
    # Line 2574
    swc1	$f4,0($s0)
    # Line 2575
    swc1	$f4,0($s0)
    # Line 2576
    swc1	$f4,0($s0)
    b	.L0d95cee0
    # Line 2580
    addu	$s4,$s0,$s1
.L0d95d040:
    # Line 2563
    dmtc1	$zero,$f5
    # Line 2562
    swc1	$f18,4($sp)
    b	.L0d95cf34
    # Line 2561
    swc1	$f18,0($sp)
.L0d95d050:
    # Line 2571
    or	$v0,$a7,$v0
    or	$v0,$t2,$v0
    b	.L0d95cf7c
    sw	$v0,0($s0)
.L0d95d060:
    sll	$v1,$t0,0x18
    or	$v1,$a7,$v1
    or	$v1,$t2,$v1
    b	.L0d95cfb4
    sw	$v1,0($s0)
.L0d95d074:
    sll	$a1,$t0,0x18
    or	$a1,$a7,$a1
    or	$a1,$t2,$a1
    b	.L0d95cfec
    sw	$a1,0($s0)
.L0d95d088:
    sll	$a2,$t0,0x18
    or	$a2,$a7,$a2
    or	$a2,$t2,$a2
    b	.L0d95d024
    sw	$a2,0($s0)
.L0d95d09c:
    # Line 2597
    sll	$t3,$a6,0x18
    b	.L0d95cd18
    or	$t3,$a5,$t3
.end ApplyParameterI

# Function: __glOdyim_Materialiv
# Declared: Line 2610 (Source lines: 2610-2668)
# Address: 0x0d95d0b0 - 0x0d95d2a0 (Size: 496 bytes, Frame: 224)
.globl __glOdyim_Materialiv
.ent __glOdyim_Materialiv
__glOdyim_Materialiv:
    # Line 2610
    addiu	$sp,$sp,-96
    sd	$a2,24($sp)
    sd	$ra,40($sp)
    sd	$s0,32($sp)
    # Line 2612
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 2614
    lw	$v1,1388($at)
    # Line 2613
    lw	$at,1384($at)
    # Line 2610
    lui	$a4,0x1a
    # Line 2616
    lw	$a3,0($a2)
    # Line 2610
    addiu	$a4,$a4,-19232
    sd	$gp,48($sp)
    addu	$gp,$t9,$a4
    # Line 2616
    mtc1	$a3,$f14
    # lw $t9, -27380($gp) # &__glErrorCheckMaterial
    # Line 2610
    move	$v0,$a1
    # Line 2613
    sw	$v0,76($sp)
    # Line 2614
    sd	$v1,8($sp)
    # Line 2610
    move	$s0,$a0
    # Line 2613
    sd	$at,0($sp)
    # Line 2616
    jal	__glErrorCheckMaterial
    cvt.s.w	$f14,$f14
    beqz	$v0,.L0d95d12c
    # Line 2618
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
.L0d95d118:
    ld	$ra,40($sp)
.L0d95d11c:
    ld	$s0,32($sp)
    # Line 2668
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d95d12c:
    # Line 2623
    # lw $t9, -27368($gp) # &__glim_Materialiv
    lw	$a1,76($sp)
    move	$a0,$s0
    jal	__glim_Materialiv
    ld	$a2,24($sp)
    ld	$a5,16($sp)
    lw	$a5,1792($a5)
    # Line 2643
    li	$t2,5634
    # Line 2629
    li	$a7,5634
    ld	$v0,0($sp)
    # Line 2623
    andi	$a5,$a5,0x80
    # Line 2629
    li	$a2,4608
    # Line 2643
    lw	$t1,76($sp)
    # Line 2654
    li	$t8,1032
    li	$t3,1029
    # Line 2623
    beqz	$a5,.L0d95d220
    ld	$a0,8($sp)
    # Line 2643
    li	$t0,1032
    # Line 2629
    lw	$a6,76($sp)
    # Line 2635
    li	$at,1029
    # Line 2633
    li	$a5,1028
    # Line 2635
    move	$a1,$a5
    xor	$v1,$a5,$v0
    # Line 2629
    beq	$a0,$a6,.L0d95d204
    # Line 2635
    sltiu	$v1,$v1,1
    # Line 2629
    beq	$a0,$a7,.L0d95d228
    nop
    # Line 2635
    li	$a5,1028
.L0d95d19c:
    # Line 2643
    beq	$s0,$v0,.L0d95d1ac
    nop
    bne	$v0,$t0,.L0d95d1b4
    nop
.L0d95d1ac:
    beq	$t1,$t2,.L0d95d240
    li	$t1,4609
.L0d95d1b4:
    # Line 2654
    beq	$a5,$s0,.L0d95d268
    # Line 2656
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 2654
    beq	$s0,$t3,.L0d95d284
    # Line 2660
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 2654
    bne	$s0,$t8,.L0d95d118
    # Line 2664
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    ld	$s0,24($sp)
    addiu	$t9,$t9,-13488
    li	$a0,1
    lw	$a1,76($sp)
    bal __glOdyim_Materialf
    move	$a2,$s0
    # Line 2665
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,-13488
    move	$a0,$zero
    lw	$a1,76($sp)
    bal __glOdyim_Materialf
    move	$a2,$s0
    b	.L0d95d11c
    ld	$ra,40($sp)
.L0d95d204:
    # Line 2632
    beq	$s0,$v0,.L0d95d118
    li	$a6,1032
    xor	$ra,$a6,$s0
    beq	$a6,$v0,.L0d95d118
    # Line 2635
    movz	$at,$a1,$v1
    b	.L0d95d19c
    movz	$s0,$at,$ra
.L0d95d220:
    b	.L0d95d1b4
    # Line 2644
    li	$a5,1028
.L0d95d228:
    # Line 2629
    beq	$a6,$a2,.L0d95d204
    li	$a4,4609
    beq	$a6,$a4,.L0d95d204
    nop
    b	.L0d95d19c
    # Line 2635
    li	$a5,1028
.L0d95d240:
    # Line 2643
    li	$t0,4608
    # Line 2647
    lw	$a6,76($sp)
    xor	$t2,$t1,$a0
    xor	$a7,$t0,$a0
    sltiu	$t2,$t2,1
    movz	$t0,$a6,$t2
    move	$a6,$t1
    movn	$a6,$t0,$a7
    b	.L0d95d1b4
    sw	$a6,76($sp)
.L0d95d268:
    # Line 2656
    addiu	$t9,$t9,-13488
    ld	$a2,24($sp)
    lw	$a1,76($sp)
    bal __glOdyim_Materialf
    li	$a0,1
    b	.L0d95d11c
    ld	$ra,40($sp)
.L0d95d284:
    # Line 2660
    addiu	$t9,$t9,-13488
    lw	$a1,76($sp)
    move	$a0,$zero
    bal __glOdyim_Materialf
    ld	$a2,24($sp)
    b	.L0d95d11c
    ld	$ra,40($sp)
.end __glOdyim_Materialiv

# Function: __glOdyim_Materiali
# Declared: Line 2671 (Source lines: 2671-2684)
# Address: 0x0d95d2a0 - 0x0d95d2f4 (Size: 84 bytes, Frame: 48)
.globl __glOdyim_Materiali
.ent __glOdyim_Materiali
__glOdyim_Materiali:
    # Line 2671
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    # Line 2675
    li	$at,5633
    # Line 2671
    lui	$v0,0x1a
    sd	$ra,8($sp)
    addiu	$v0,$v0,-19728
    sd	$gp,0($sp)
    # Line 2675
    beq	$a1,$at,.L0d95d2e0
    # Line 2671
    addu	$gp,$t9,$v0
    # Line 2681
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d95d2d4:
    # Line 2684
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d95d2e0:
    # Line 2677
    # lw $t9, -32404($gp) # &__glOdyim_Materialiv
    bal __glOdyim_Materialiv
    addiu	$a2,$sp,36
    b	.L0d95d2d4
    ld	$ra,8($sp)
.end __glOdyim_Materiali

# Function: __glOdyim_PointSize
# Declared: Line 2687 (Source lines: 2687-2718)
# Address: 0x0d95d300 - 0x0d95d3f0 (Size: 240 bytes, Frame: 16)
.globl __glOdyim_PointSize
.ent __glOdyim_PointSize
__glOdyim_PointSize:
    # Line 2687
    addiu	$sp,$sp,-16
    # Line 2688
    lw	$at,4120($zero)
    lw	$a1,4112($zero)
    li	$a2,1
    # Line 2687
    lui	$v0,0x1a
    # Line 2688
    mtc1	$zero,$f0
    sd	$ra,8($sp)
    # Line 2687
    addiu	$v0,$v0,-19824
    sd	$gp,0($sp)
    # Line 2688
    beq	$at,$a2,.L0d95d3dc
    # Line 2687
    addu	$gp,$t9,$v0
    # Line 2688
    c.le.s	$f12,$f0
    # Line 2710
    ldc1	$f3,_lit8_4000000000000000
    # Line 2695
    ldc1	$f1,_lit8_3ff0000000000000
    # Line 2688
    bc1t	.L0d95d3c8
    # Line 2703
    ldc1	$f2,_lit8_3fe0000000000000
    # Line 2695
    cvt.d.s	$f4,$f12
    c.lt.d $f4,$f1
    ld	$ra,8($sp)
    # Line 2717
    li	$v1,2
    # Line 2695
    bc1f .L0d95d360
    swc1	$f12,456($a1)
    # Line 2701
    b	.L0d95d36c
    sw	$a2,464($a1)
.L0d95d360:
    # Line 2703
    add.d	$f2,$f4,$f2
    trunc.w.d	$f2,$f2
    swc1	$f2,464($a1)
.L0d95d36c:
    lwc1	$f5,3744($a1)
    c.lt.s $f12,$f5
    bc1f .L0d95d384
    # Line 2717
    lui	$a2,0x1
    # Line 2710
    b	.L0d95d39c
    swc1	$f5,460($a1)
.L0d95d384:
    c.lt.d $f3,$f4
    bc1f .L0d95d398
    # Line 2712
    lwc1	$f4,_lit_40000000
    b	.L0d95d39c
    swc1	$f4,460($a1)
.L0d95d398:
    # Line 2714
    swc1	$f12,460($a1)
.L0d95d39c:
    # Line 2717
    addu	$a1,$a1,$a2
    lw	$a0,26980($a1)
    # Line 2718
    ld	$gp,0($sp)
    # Line 2717
    ori	$a0,$a0,0x800
    sw	$a0,26980($a1)
    # Line 2718
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2717
    sw	$v1,4120($zero)
.L0d95d3bc:
    # Line 2718
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95d3c8:
    # Line 2691
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d95d3bc
    ld	$ra,8($sp)
.L0d95d3dc:
    # Line 2688
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95d3bc
    ld	$ra,8($sp)
.end __glOdyim_PointSize

# Function: __glOdyim_PolygonMode
# Declared: Line 2721 (Source lines: 2721-2767)
# Address: 0x0d95d3f0 - 0x0d95d578 (Size: 392 bytes, Frame: 16)
.globl __glOdyim_PolygonMode
.ent __glOdyim_PolygonMode
__glOdyim_PolygonMode:
    # Line 2732
    li	$a7,2
    # Line 2721
    addiu	$sp,$sp,-16
    # Line 2723
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 2721
    lui	$v1,0x1a
    # Line 2739
    li	$t2,1032
    sd	$ra,8($sp)
    # Line 2721
    addiu	$v1,$v1,-20064
    sd	$gp,0($sp)
    # Line 2723
    beq	$at,$v0,.L0d95d564
    # Line 2721
    addu	$gp,$t9,$v1
    # Line 2725
    li	$a2,6914
    beq	$a1,$a2,.L0d95d464
    # Line 2757
    li	$v1,2
    # Line 2725
    li	$a4,6912
    beq	$a1,$a4,.L0d95d540
    # Line 2729
    li	$t1,2
    # Line 2725
    li	$a5,6913
    beq	$a1,$a5,.L0d95d454
    # Line 2735
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d95d534
    ld	$ra,8($sp)
.L0d95d454:
    # Line 2732
    sw	$a7,4120($zero)
    lw	$a6,11812($a3)
    ori	$a6,$a6,0x2
    sw	$a6,11812($a3)
.L0d95d464:
    # Line 2739
    li	$t1,1029
    li	$t0,1028
    # Line 2765
    li	$a4,250
    lui	$a7,0x1
    # Line 2739
    beq	$a0,$t0,.L0d95d554
    # Line 2765
    ori	$a7,$a7,0x415
    # Line 2739
    beq	$a0,$t1,.L0d95d55c
    nop
    beq	$a0,$t2,.L0d95d49c
    # Line 2754
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d95d534
    ld	$ra,8($sp)
.L0d95d49c:
    # Line 2750
    sw	$a1,488($a3)
    # Line 2749
    sw	$a1,484($a3)
.L0d95d4a4:
    # Line 2757
    sw	$v1,4120($zero)
    lw	$v0,11812($a3)
    # Line 2759
    lw	$at,484($a3)
    # Line 2761
    lui	$a0,0x1
    # Line 2757
    ori	$v0,$v0,0x4
    # Line 2759
    lw	$t9,31748($a3)
    andi	$at,$at,0x3
    li	$v1,-13
    sll	$at,$at,0x2
    # Line 2761
    lw	$t8,488($a3)
    # Line 2759
    and	$t9,$t9,$v1
    andi	$at,$at,0xc
    or	$t9,$t9,$at
    # Line 2761
    li	$at,-4
    # Line 2757
    sw	$v0,11812($a3)
    # Line 2761
    andi	$t8,$t8,0x3
    and	$t9,$t9,$at
    addu	$a1,$a0,$a3
    or	$t8,$t8,$t9
    sw	$t8,31748($a3)
    lw	$t3,-26576($a1)
    ld	$ra,8($sp)
    # Line 2765
    ori	$a2,$a0,0x46
    # Line 2767
    ld	$gp,0($sp)
    # Line 2761
    beqz	$t3,.L0d95d520
    # Line 2765
    ori	$a5,$a0,0x443
    sw	$zero,-26576($a1)
    sw	$a5,0($a0)
    sw	$a4,0($a0)
    sw	$a2,0($a0)
    sw	$a2,0($a0)
.L0d95d520:
    sw	$a7,0($a0)
    lw	$a6,31748($a3)
    # Line 2767
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2765
    sw	$a6,0($a0)
.L0d95d534:
    # Line 2767
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95d540:
    # Line 2729
    sw	$t1,4120($zero)
    lw	$t0,11812($a3)
    ori	$t0,$t0,0x8
    b	.L0d95d464
    sw	$t0,11812($a3)
.L0d95d554:
    b	.L0d95d4a4
    # Line 2741
    sw	$a1,484($a3)
.L0d95d55c:
    # Line 2746
    b	.L0d95d4a4
    # Line 2745
    sw	$a1,488($a3)
.L0d95d564:
    # Line 2723
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95d534
    ld	$ra,8($sp)
.end __glOdyim_PolygonMode

# Function: __glOdysseyConvertStipple
# Declared: Line 2770 (Source lines: 2771-2792)
# Address: 0x0d95d580 - 0x0d95d748 (Size: 456 bytes, Frame: 32)
.globl __glOdysseyConvertStipple
.ent __glOdysseyConvertStipple
__glOdysseyConvertStipple:
    # Line 2771
    lui	$at,0x1a
    addiu	$sp,$sp,-32
    addiu	$at,$at,-20464
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 2777
    # lw $t9, -26196($gp) # &__glConvertStipple
    # Line 2771
    sd	$s0,16($sp)
    # Line 2777
    nop
    # Line 2771
    sd	$ra,0($sp)
    # Line 2777
    jal	__glConvertStipple
    # Line 2771
    move	$s0,$a0
    # Line 2784
    li	$a4,32
    move	$a1,$zero
    addiu	$a3,$s0,31732
    ld	$ra,0($sp)
    # Line 2790
    lui	$a6,0x1
    # Line 2783
    addiu	$a2,$s0,30064
    # Line 2792
    ld	$gp,8($sp)
    # Line 2790
    ori	$t2,$a6,0x43f
    nop
.L0d95d5d0:
    # Line 2786
    lw	$v1,0($a2)
    # Line 2785
    addiu	$a1,$a1,2
    # Line 2786
    sw	$v1,0($a3)
    addiu	$a3,$a3,-8
    lw	$v0,4($a2)
    addiu	$a2,$a2,8
    # Line 2785
    bne	$a1,$a4,.L0d95d5d0
    # Line 2786
    sw	$v0,4($a3)
    # Line 2785
    lui	$a1,0x1
    addu	$a2,$a1,$s0
    lw	$a0,-26576($a2)
    # Line 2790
    li	$a4,250
    ori	$a3,$a1,0x46
    # Line 2785
    beqz	$a0,.L0d95d620
    # Line 2790
    ori	$a5,$a1,0x443
    sw	$zero,-26576($a2)
    sw	$a5,0($a1)
    sw	$a4,0($a1)
    sw	$a3,0($a1)
    sw	$a3,0($a1)
.L0d95d620:
    sw	$t2,0($a1)
    lw	$t1,31736($s0)
    sw	$t1,0($a1)
    ori	$t0,$a6,0x3c4e
    sw	$t0,0($a1)
    lw	$a7,31608($s0)
    sw	$a7,0($a1)
    lw	$a5,31612($s0)
    sw	$a5,0($a1)
    lw	$a4,31616($s0)
    sw	$a4,0($a1)
    lw	$a3,31620($s0)
    sw	$a3,0($a1)
    lw	$a2,31624($s0)
    sw	$a2,0($a1)
    lw	$a0,31628($s0)
    sw	$a0,0($a1)
    lw	$v1,31632($s0)
    sw	$v1,0($a1)
    lw	$v0,31636($s0)
    sw	$v0,0($a1)
    lw	$at,31640($s0)
    sw	$at,0($a1)
    lw	$t9,31644($s0)
    sw	$t9,0($a1)
    lw	$t8,31648($s0)
    sw	$t8,0($a1)
    lw	$t3,31652($s0)
    sw	$t3,0($a1)
    lw	$t2,31656($s0)
    sw	$t2,0($a1)
    lw	$t1,31660($s0)
    sw	$t1,0($a1)
    lw	$t0,31664($s0)
    sw	$t0,0($a1)
    lw	$a7,31668($s0)
    sw	$a7,0($a1)
    ori	$a6,$a6,0x3c4f
    sw	$a6,0($a1)
    lw	$a5,31672($s0)
    sw	$a5,0($a1)
    lw	$a4,31676($s0)
    sw	$a4,0($a1)
    lw	$a3,31680($s0)
    sw	$a3,0($a1)
    lw	$a2,31684($s0)
    sw	$a2,0($a1)
    lw	$a0,31688($s0)
    sw	$a0,0($a1)
    lw	$v1,31692($s0)
    sw	$v1,0($a1)
    lw	$v0,31696($s0)
    sw	$v0,0($a1)
    lw	$at,31700($s0)
    sw	$at,0($a1)
    lw	$t9,31704($s0)
    sw	$t9,0($a1)
    lw	$t8,31708($s0)
    sw	$t8,0($a1)
    lw	$t3,31712($s0)
    sw	$t3,0($a1)
    lw	$t2,31716($s0)
    sw	$t2,0($a1)
    lw	$t1,31720($s0)
    sw	$t1,0($a1)
    lw	$t0,31724($s0)
    sw	$t0,0($a1)
    lw	$a7,31728($s0)
    sw	$a7,0($a1)
    lw	$a6,31732($s0)
    # Line 2792
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2790
    sw	$a6,0($a1)
.end __glOdysseyConvertStipple

# Function: __glOdyim_ShadeModel
# Declared: Line 2795 (Source lines: 2795-2808)
# Address: 0x0d95d750 - 0x0d95d824 (Size: 212 bytes, Frame: 16)
.globl __glOdyim_ShadeModel
.ent __glOdyim_ShadeModel
__glOdyim_ShadeModel:
    # Line 2804
    li	$a4,2
    # Line 2795
    addiu	$sp,$sp,-16
    # Line 2796
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 2795
    lui	$v1,0x1a
    # Line 2807
    lui	$a6,0x1
    sd	$ra,8($sp)
    # Line 2795
    addiu	$v1,$v1,-20928
    sd	$gp,0($sp)
    # Line 2796
    beq	$at,$v0,.L0d95d810
    # Line 2795
    addu	$gp,$t9,$v1
    # Line 2798
    sltiu	$a1,$a0,7424
    bnez	$a1,.L0d95d7fc
    sltiu	$a3,$a0,7426
    beqz	$a3,.L0d95d800
    # Line 2799
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2803
    sw	$a0,1392($a2)
    # Line 2804
    sw	$a4,4120($zero)
    lw	$t2,11812($a2)
    # Line 2806
    xori	$a7,$a0,0x1d00
    li	$t1,-4097
    lw	$t0,31740($a2)
    sltiu	$a7,$a7,1
    # Line 2804
    ori	$t2,$t2,0x1
    # Line 2806
    sll	$a7,$a7,0xc
    # Line 2804
    sw	$t2,11812($a2)
    # Line 2806
    and	$t0,$t0,$t1
    andi	$a7,$a7,0x1000
    # Line 2807
    addu	$a6,$a2,$a6
    # Line 2806
    or	$a7,$a7,$t0
    sw	$a7,31740($a2)
    # Line 2807
    lw	$a5,26976($a6)
    # Line 2808
    ld	$gp,0($sp)
    move	$ra,$ra
    # Line 2807
    ori	$a5,$a5,0x2
    sw	$a5,26976($a6)
    # Line 2808
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2807
    sw	$a4,4120($zero)
.L0d95d7f0:
    # Line 2808
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95d7fc:
    # Line 2799
    # lw $t9, -26792($gp) # &__glSetError
.L0d95d800:
    jal	__glSetError
    li	$a0,1280
    b	.L0d95d7f0
    ld	$ra,8($sp)
.L0d95d810:
    # Line 2796
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95d7f0
    ld	$ra,8($sp)
.end __glOdyim_ShadeModel

# Function: __glOdyim_StencilFunc
# Declared: Line 2811 (Source lines: 2811-2830)
# Address: 0x0d95d830 - 0x0d95d94c (Size: 284 bytes, Frame: 16)
.globl __glOdyim_StencilFunc
.ent __glOdyim_StencilFunc
__glOdyim_StencilFunc:
    # Line 2828
    li	$t1,0xff00
    # Line 2811
    addiu	$sp,$sp,-16
    # Line 2812
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$t3,1
    # Line 2811
    lui	$v0,0x1a
    # Line 2829
    lui	$a6,0x1
    sd	$ra,8($sp)
    # Line 2811
    addiu	$v0,$v0,-21152
    sd	$gp,0($sp)
    # Line 2812
    beq	$at,$t3,.L0d95d938
    # Line 2811
    addu	$gp,$t9,$v0
    # Line 2814
    sltiu	$v1,$a0,512
    # Line 2819
    slti	$t9,$a1,0
    # Line 2826
    lui	$at,0xe00
    # Line 2819
    movn	$a1,$zero,$t9
    # Line 2814
    bnez	$v1,.L0d95d924
    # Line 2826
    andi	$t9,$a0,0xf
    # Line 2814
    sltiu	$a3,$a0,520
    beqz	$a3,.L0d95d924
    nop
    # Line 2819
    lw	$t8,3248($a4)
    # Line 2828
    nor	$t1,$t1,$zero
    # Line 2826
    sll	$t9,$t9,0x19
    nor	$v0,$at,$zero
    # Line 2819
    sllv	$t8,$t3,$t8
    # Line 2826
    and	$t9,$t9,$at
    lw	$t3,31788($a4)
    # Line 2819
    addiu	$t8,$t8,-1
    slt	$t0,$t8,$a1
    # Line 2824
    and	$t2,$t8,$a2
    # Line 2826
    and	$t3,$t3,$v0
    # Line 2828
    dsll32	$a7,$t2,0x10
    # Line 2826
    or	$t3,$t3,$t9
    # Line 2827
    li	$t9,-256
    movz	$t8,$a1,$t0
    and	$t3,$t3,$t9
    # Line 2822
    sw	$a0,1664($a4)
    # Line 2827
    andi	$t0,$t8,0xff
    # Line 2828
    dsra32	$a7,$a7,0x10
    # Line 2824
    sh	$t2,1672($a4)
    # Line 2828
    sll	$a7,$a7,0x8
    # Line 2827
    or	$t0,$t0,$t3
    # Line 2823
    sh	$t8,1670($a4)
    # Line 2828
    and	$t0,$t0,$t1
    andi	$a7,$a7,0xff00
    # Line 2829
    addu	$a6,$a4,$a6
    # Line 2828
    or	$a7,$a7,$t0
    sw	$a7,31788($a4)
    # Line 2829
    lw	$a5,26976($a6)
    # Line 2830
    ld	$gp,0($sp)
    move	$ra,$ra
    addiu	$sp,$sp,16
    # Line 2829
    ori	$a5,$a5,0x20
    sw	$a5,26976($a6)
    li	$a4,2
    # Line 2830
    jr	$ra
    # Line 2829
    sw	$a4,4120($zero)
.L0d95d918:
    # Line 2830
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95d924:
    # Line 2815
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d95d918
    ld	$ra,8($sp)
.L0d95d938:
    # Line 2812
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95d918
    ld	$ra,8($sp)
.end __glOdyim_StencilFunc

# Function: __glOdyim_StencilMask
# Declared: Line 2833 (Source lines: 2833-2847)
# Address: 0x0d95d950 - 0x0d95da58 (Size: 264 bytes, Frame: 32)
.globl __glOdyim_StencilMask
.ent __glOdyim_StencilMask
__glOdyim_StencilMask:
    # Line 2833
    addiu	$sp,$sp,-32
    # Line 2834
    lw	$v0,4120($zero)
    # Line 2833
    sd	$s0,0($sp)
    # Line 2834
    li	$a4,1
    # Line 2833
    lui	$at,0x1a
    move	$a2,$a0
    # Line 2834
    lw	$s0,4112($zero)
    # Line 2833
    addiu	$at,$at,-21440
    sd	$gp,8($sp)
    # Line 2834
    beq	$v0,$a4,.L0d95da3c
    # Line 2833
    addu	$gp,$t9,$at
    # Line 2836
    lw	$a3,3248($s0)
    # Line 2838
    lw	$v0,31600($s0)
    andi	$v0,$v0,0x1
    # Line 2836
    sllv	$a3,$a4,$a3
    addiu	$a3,$a3,-1
    and	$a2,$a3,$a0
    # Line 2838
    bnez	$v0,.L0d95d9d8
    # Line 2837
    sh	$a2,1674($s0)
    # Line 2838
    beqz	$a2,.L0d95d9d8
    nop
    beq	$a3,$a2,.L0d95d9d8
    nop
    # Line 2840
    lw	$t9,16($s0)
    la	$a1,sub_0daf0000
    move	$a0,$s0
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a1,$a1,-32680
    # Line 2842
    lw	$a3,3248($s0)
    li	$a2,1
    sllv	$a2,$a2,$a3
    ld	$ra,16($sp)
    addiu	$a2,$a2,-1
.L0d95d9d8:
    # Line 2844
    lbu	$t2,3226($s0)
    # Line 2846
    lui	$a6,0x1
    # Line 2844
    lui	$t1,0xf
    lw	$a7,31836($s0)
    ori	$t1,$t1,0xf000
    movz	$a2,$zero,$t2
    nor	$t2,$t1,$zero
    sll	$t0,$a2,0xc
    # Line 2847
    ld	$gp,8($sp)
    # Line 2844
    and	$a7,$a7,$t2
    and	$t0,$t0,$t1
    # Line 2846
    addu	$a6,$s0,$a6
    # Line 2844
    or	$a7,$a7,$t0
    sw	$a7,31836($s0)
    # Line 2846
    lw	$a5,26976($a6)
    # Line 2847
    ld	$s0,0($sp)
    # Line 2846
    li	$a4,2
    ori	$a5,$a5,0x80
    sw	$a5,26976($a6)
    # Line 2847
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2846
    sw	$a4,4120($zero)
.L0d95da30:
    # Line 2847
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95da3c:
    # Line 2834
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,0($sp)
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95da30
    ld	$ra,16($sp)
.end __glOdyim_StencilMask

# Function: __glOdyim_StencilOp
# Declared: Line 2850 (Source lines: 2850-2934)
# Address: 0x0d95da60 - 0x0d95dc6c (Size: 524 bytes, Frame: 16)
.globl __glOdyim_StencilOp
.ent __glOdyim_StencilOp
__glOdyim_StencilOp:
    # Line 2850
    addiu	$sp,$sp,-16
    # Line 2852
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 2850
    lui	$v1,0x1a
    sd	$ra,8($sp)
    addiu	$v1,$v1,-21712
    sd	$gp,0($sp)
    # Line 2852
    beq	$at,$v0,.L0d95dc58
    # Line 2850
    addu	$gp,$t9,$v1
    # Line 2854
    li	$a7,7680
    beq	$a7,$a0,.L0d95dad8
    # Line 2856
    move	$a5,$zero
    # Line 2854
    beqz	$a0,.L0d95dc0c
    li	$a3,7681
    beq	$a0,$a3,.L0d95dad8
    # Line 2863
    li	$a5,2
    # Line 2854
    li	$a5,7682
    beq	$a0,$a5,.L0d95dc2c
    li	$a6,7683
    beq	$a0,$a6,.L0d95dad8
    # Line 2869
    li	$a5,4
    # Line 2854
    li	$t0,5386
    beq	$a0,$t0,.L0d95dad8
    # Line 2872
    li	$a5,5
    # Line 2874
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d95dba8
    ld	$ra,8($sp)
.L0d95dad8:
    # Line 2878
    beq	$a7,$a1,.L0d95dbb4
    # Line 2880
    move	$a6,$zero
    # Line 2878
    beqz	$a1,.L0d95dc1c
    li	$t1,7681
    beq	$a1,$t1,.L0d95dbb4
    # Line 2887
    li	$a6,2
    # Line 2878
    li	$t2,7682
    beq	$a1,$t2,.L0d95dc3c
    li	$t3,7683
    beq	$a1,$t3,.L0d95dbb4
    # Line 2893
    li	$a6,4
    # Line 2878
    li	$t8,5386
    beq	$a1,$t8,.L0d95dbb4
    # Line 2896
    li	$a6,5
    # Line 2898
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d95dba8
    ld	$ra,8($sp)
.L0d95db24:
    # Line 2933
    lui	$v0,0x1
.L0d95db28:
    # Line 2931
    sll	$a6,$a6,0x13
    # Line 2932
    sll	$v1,$a7,0x10
    # Line 2931
    lui	$a7,0x38
    and	$a6,$a6,$a7
    # Line 2930
    lw	$t0,31788($a4)
    lui	$t1,0x1c0
    sll	$a3,$a5,0x16
    nor	$a5,$t1,$zero
    and	$a3,$a3,$t1
    and	$a5,$t0,$a5
    # Line 2928
    sw	$a2,1684($a4)
    # Line 2930
    or	$a3,$a3,$a5
    # Line 2931
    nor	$a5,$a7,$zero
    # Line 2926
    sw	$a0,1676($a4)
    # Line 2931
    and	$a0,$a3,$a5
    # Line 2932
    lui	$a3,0x7
    # Line 2927
    sw	$a1,1680($a4)
    # Line 2932
    nor	$a1,$a3,$zero
    # Line 2931
    or	$a0,$a6,$a0
    ld	$ra,8($sp)
    # Line 2932
    and	$v1,$v1,$a3
    and	$a0,$a0,$a1
    # Line 2933
    addu	$v0,$a4,$v0
    # Line 2932
    or	$v1,$v1,$a0
    sw	$v1,31788($a4)
    # Line 2933
    lw	$at,26976($v0)
    # Line 2934
    ld	$gp,0($sp)
    # Line 2933
    ori	$at,$at,0x20
    sw	$at,26976($v0)
    # Line 2934
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2933
    sw	$t9,4120($zero)
.L0d95dba8:
    # Line 2934
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95dbb4:
    # Line 2902
    beq	$a7,$a2,.L0d95dc14
    # Line 2904
    li	$t9,2
    # Line 2902
    beqz	$a2,.L0d95dc24
    # Line 2908
    li	$a7,1
    # Line 2902
    li	$a7,7681
    beq	$a2,$a7,.L0d95dc34
    # Line 2910
    li	$t9,2
    # Line 2902
    li	$t0,7682
    beq	$a2,$t0,.L0d95dc44
    li	$t1,7683
    # Line 2917
    li	$a7,4
    # Line 2902
    beq	$a2,$t1,.L0d95dc50
    # Line 2917
    li	$t9,2
    # Line 2902
    li	$t2,5386
    # Line 2920
    li	$a7,5
    # Line 2902
    beq	$a2,$t2,.L0d95db24
    # Line 2920
    li	$t9,2
    # Line 2922
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d95dba8
    ld	$ra,8($sp)
.L0d95dc0c:
    # Line 2860
    b	.L0d95dad8
    li	$a5,1
.L0d95dc14:
    b	.L0d95db24
    # Line 2904
    move	$a7,$zero
.L0d95dc1c:
    # Line 2884
    b	.L0d95dbb4
    li	$a6,1
.L0d95dc24:
    # Line 2908
    b	.L0d95db24
    li	$t9,2
.L0d95dc2c:
    # Line 2866
    b	.L0d95dad8
    li	$a5,3
.L0d95dc34:
    # Line 2911
    b	.L0d95db24
    move	$a7,$t9
.L0d95dc3c:
    # Line 2890
    b	.L0d95dbb4
    li	$a6,3
.L0d95dc44:
    # Line 2914
    li	$t9,2
    b	.L0d95db24
    li	$a7,3
.L0d95dc50:
    # Line 2917
    b	.L0d95db28
    # Line 2933
    lui	$v0,0x1
.L0d95dc58:
    # Line 2852
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95dba8
    ld	$ra,8($sp)
.end __glOdyim_StencilOp

# Function: __glOdyim_Disable
# Declared: Line 2937 (Source lines: 2937-3341)
# Address: 0x0d95dc70 - 0x0d95f0f8 (Size: 5256 bytes, Frame: 48)
.globl __glOdyim_Disable
.ent __glOdyim_Disable
__glOdyim_Disable:
    # Line 2941
    lw	$v0,4120($zero)
    li	$a5,1
    # Line 2937
    lui	$at,0x1a
    # Line 2941
    lw	$a2,4112($zero)
    # Line 2937
    addiu	$sp,$sp,-48
    addiu	$at,$at,-22240
    sd	$gp,16($sp)
    # Line 2941
    beq	$v0,$a5,.L0d95e6c4
    # Line 2937
    addu	$gp,$t9,$at
    # Line 2950
    sltiu	$a3,$a0,12291
    bnez	$a3,.L0d95dd18
    sltiu	$a4,$a0,3473
    sltiu	$v0,$a0,12292
    bnez	$v0,.L0d95df04
    li	$a3,0x8079
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0d95de6c
    sltu	$a1,$a3,$a0
    beqz	$a1,.L0d95e2a4
    li	$a3,0x83ee
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d95e084
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d95e2d4
    li	$a3,0x840f
    lui	$a0,0x2
    addu	$a0,$a2,$a0
    lbu	$a7,-25164($a0)
    beqz	$a7,.L0d95df6c
    # Line 3341
    ld	$gp,16($sp)
    # Line 3334
    sb	$a5,-25152($a0)
    # Line 3335
    lui	$a3,0x1
    # Line 3333
    sb	$zero,-25164($a0)
    # Line 3335
    addu	$a3,$a2,$a3
    lw	$a2,26980($a3)
    # Line 3341
    ld	$gp,16($sp)
    # Line 3335
    li	$a1,2
    ori	$a2,$a2,0x400
    sw	$a2,26980($a3)
    # Line 3341
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3335
    sw	$a1,4120($zero)
.L0d95dd18:
    # Line 2950
    bnez	$a4,.L0d95dd74
    sltiu	$t3,$a0,3008
    sltiu	$a4,$a0,3474
    bnez	$a4,.L0d95e0ec
    sltiu	$a4,$a0,3508
    bnez	$a4,.L0d95e048
    sltiu	$a6,$a0,3509
    bnez	$a6,.L0d95e444
    sltiu	$a4,$a0,3553
    bnez	$a4,.L0d95e3cc
    sltiu	$a7,$a0,3554
    bnez	$a7,.L0d95ec18
    sltiu	$t0,$a0,12288
    bnez	$t0,.L0d95e890
    sltiu	$t1,$a0,12289
    bnez	$t1,.L0d95df04
    sltiu	$t2,$a0,12290
    bnez	$t2,.L0d95ef60
    nop
    bnez	$a3,.L0d95df08
    # Line 3142
    addiu	$a0,$a0,-12288
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95dd74:
    # Line 2950
    bnez	$t3,.L0d95df74
    sltiu	$t8,$a0,3009
    bnez	$t8,.L0d95e4c8
    sltiu	$t9,$a0,3168
    bnez	$t9,.L0d95e238
    sltiu	$at,$a0,3169
    beqz	$at,.L0d95e520
    sltiu	$a3,$a0,3171
    # Line 3099
    lui	$a0,0x4
    lw	$v1,1792($a2)
    # Line 3100
    lui	$a4,0x1
    # Line 3099
    nor	$a0,$a0,$zero
    # Line 3100
    addu	$a4,$a2,$a4
    # Line 3099
    and	$v1,$v1,$a0
    sw	$v1,1792($a2)
    # Line 3100
    lw	$v0,26980($a4)
    ori	$v0,$v0,0x120
    sw	$v0,26980($a4)
    li	$t0,2
    sw	$t0,4120($zero)
.L0d95ddc4:
    # Line 3117
    move	$a3,$zero
    lui	$t1,0xffbf
    lui	$a7,0x40
    sd	$ra,8($sp)
    ori	$t1,$t1,0xffff
.L0d95ddd8:
    beqz	$a3,.L0d95de2c
    nop
    # Line 3122
    lw	$a6,4120($zero)
    beqz	$a6,.L0d95de2c
    lw	$a0,4112($zero)
    sd	$a4,24($sp)
    sd	$a3,32($sp)
    bne	$a6,$t0,.L0d95e6dc
    sd	$a2,0($sp)
    lw	$t9,11840($a0)
    jalr	$t9
    nop
    ld	$a2,0($sp)
    li	$a5,1
    ld	$a3,32($sp)
    ld	$a4,24($sp)
    lui	$a7,0x40
    lui	$t1,0xffbf
    li	$t0,2
    sw	$zero,4120($zero)
    ori	$t1,$t1,0xffff
.L0d95de2c:
    lw	$a0,1792($a2)
    and	$t2,$a7,$a0
    # Line 3120
    addiu	$a3,$a3,1
    # Line 3122
    beqz	$t2,.L0d95ef04
    # Line 3125
    and	$t3,$t1,$a0
    sw	$t3,1792($a2)
.L0d95de44:
    # Line 3129
    lw	$t8,26980($a4)
    ori	$t8,$t8,0x104
    sw	$t8,26980($a4)
    # Line 3120
    bne	$a3,$t0,.L0d95ddd8
    # Line 3129
    sw	$t0,4120($zero)
    # Line 3341
    ld	$ra,8($sp)
    # Line 3134
    sb	$a5,26998($a4)
    # Line 3341
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d95de6c:
    # Line 2950
    li	$a3,0x8011
    sltu	$t9,$a0,$a3
    bnez	$t9,.L0d95dfdc
    sltu	$at,$a3,$a0
    beqz	$at,.L0d95e690
    li	$a3,0x806f
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0d95e370
    sltu	$v1,$a3,$a0
    beqz	$v1,.L0d95ebb4
    li	$a3,0x8076
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0d95e854
    sltu	$a4,$a3,$a0
    beqz	$a4,.L0d95f090
    li	$a3,0x8078
    sltu	$a5,$a0,$a3
    bnez	$a5,.L0d95ef30
    li	$at,0x8077
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3233
    lw	$t1,5416($a2)
    li	$t2,-5
    # Line 3232
    lui	$t0,0x7f0
    lw	$a7,5404($a2)
    # Line 3233
    and	$t1,$t1,$t2
    sw	$t1,5416($a2)
    # Line 3232
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    # Line 3233
    b	.L0d95df68
    # Line 3232
    sw	$a7,5404($a2)
.L0d95deec:
    # Line 2950
    sltiu	$t3,$a0,12293
    bnez	$t3,.L0d95e930
    li	$t2,12292
    sltiu	$t8,$a0,12294
    beqz	$t8,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95df04:
    # Line 3142
    addiu	$a0,$a0,-12288
.L0d95df08:
    lw	$v1,1804($a2)
    sllv	$a0,$a5,$a0
    # Line 3143
    lui	$v0,0x1
    # Line 3142
    nor	$a0,$a0,$zero
    # Line 3143
    addu	$v0,$a2,$v0
    # Line 3142
    and	$v1,$v1,$a0
    sw	$v1,1804($a2)
    # Line 3143
    lw	$at,26980($v0)
    # Line 3341
    ld	$gp,16($sp)
    # Line 3143
    li	$t9,2
    ori	$at,$at,0x510
    sw	$at,26980($v0)
    # Line 3341
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3143
    sw	$t9,4120($zero)
.L0d95df44:
    # Line 2950
    li	$a1,2903
    sd	$a2,0($sp)
    beq	$a0,$a1,.L0d95f0cc
    sd	$ra,8($sp)
.L0d95df54:
    # Line 3340
    # lw $t9, -26792($gp) # &__glSetError
.L0d95df58:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d95df68:
    # Line 3341
    ld	$gp,16($sp)
.L0d95df6c:
    jr	$ra
    addiu	$sp,$sp,48
.L0d95df74:
    # Line 2950
    sltiu	$a3,$a0,2896
    bnez	$a3,.L0d95e114
    sltiu	$a4,$a0,2897
    bnez	$a4,.L0d95e7f8
    sltiu	$a5,$a0,2929
    bnez	$a5,.L0d95e640
    sltiu	$t8,$a0,2912
    sltiu	$a6,$a0,2930
    bnez	$a6,.L0d95eeb4
    sltiu	$a7,$a0,2977
    bnez	$a7,.L0d95eb28
    sltiu	$t0,$a0,2978
    beqz	$t0,.L0d95df54
    # Line 3038
    lui	$t9,0x40
    lw	$t8,1792($a2)
    # Line 3039
    lui	$t3,0x1
    # Line 3038
    nor	$t9,$t9,$zero
    # Line 3039
    addu	$t3,$a2,$t3
    # Line 3038
    and	$t8,$t8,$t9
    sw	$t8,1792($a2)
    # Line 3039
    lw	$t2,26980($t3)
    ori	$t2,$t2,0x104
    sw	$t2,26980($t3)
    li	$t1,2
    # Line 3041
    b	.L0d95df68
    # Line 3039
    sw	$t1,4120($zero)
.L0d95dfdc:
    # Line 2950
    sltiu	$a3,$a0,16387
    bnez	$a3,.L0d95e18c
    sltiu	$v1,$a0,16384
    sltiu	$at,$a0,16388
    bnez	$at,.L0d95e1c8
    sltiu	$a3,$a0,16390
    bnez	$a3,.L0d95e1b4
    sltiu	$v0,$a0,16391
    bnez	$v0,.L0d95e1cc
    # Line 3152
    addiu	$t3,$a0,-16384
    # Line 2950
    li	$a3,0x8010
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0d95eda8
    sltu	$a1,$a3,$a0
    bnez	$a1,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3240
    lui	$a6,0x200
    lw	$a5,1792($a2)
    nor	$a6,$a6,$zero
    and	$a5,$a5,$a6
    sw	$a5,1792($a2)
    # Line 3241
    li	$a4,2
    sw	$a4,4120($zero)
    lw	$a3,11812($a2)
    ori	$a3,$a3,0x10
    # Line 3242
    b	.L0d95df68
    # Line 3241
    sw	$a3,11812($a2)
.L0d95e048:
    # Line 2950
    sltiu	$a3,$a0,3479
    bnez	$a3,.L0d95e208
    sltiu	$a7,$a0,3480
    bnez	$a7,.L0d95e0ec
    sltiu	$a3,$a0,3505
    bnez	$a3,.L0d95e780
    sltiu	$t0,$a0,3506
    bnez	$t0,.L0d95e444
    sltiu	$t1,$a0,3507
    bnez	$t1,.L0d95ee14
    li	$a3,3506
    bnez	$a4,.L0d95e448
    # Line 3186
    addiu	$a0,$a0,-3504
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95e084:
    # Line 2950
    li	$a3,0x8198
    sltu	$t2,$a0,$a3
    bnez	$t2,.L0d95e32c
    sltu	$t3,$a3,$a0
    beqz	$t3,.L0d95eb84
    li	$a3,0x835c
    sltu	$t8,$a0,$a3
    bnez	$t8,.L0d95e828
    sltu	$t9,$a3,$a0
    beqz	$t9,.L0d95f07c
    li	$a3,0x835e
    sltu	$at,$a0,$a3
    bnez	$at,.L0d95ef10
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3318
    lw	$v1,1816($a2)
    li	$a0,-5
    and	$v1,$v1,$a0
    # Line 3319
    b	.L0d95df68
    # Line 3318
    sw	$v1,1816($a2)
.L0d95e0d8:
    # Line 2950
    sltiu	$a1,$a0,3475
    bnez	$a1,.L0d95e940
    li	$t3,3474
    beqz	$a4,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95e0ec:
    # Line 3177
    addiu	$a4,$a0,-3472
.L0d95e0f0:
    sllv	$a4,$a5,$a4
    lw	$a3,1808($a2)
    nor	$a4,$a4,$zero
    # Line 3341
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 3177
    andi	$a4,$a4,0xffff
    and	$a3,$a3,$a4
    # Line 3341
    jr	$ra
    # Line 3177
    sw	$a3,1808($a2)
.L0d95e114:
    # Line 2950
    sltiu	$a5,$a0,2881
    bnez	$a5,.L0d95e46c
    sltiu	$a6,$a0,2882
    bnez	$a6,.L0d95ec5c
    sltiu	$a7,$a0,2884
    bnez	$a7,.L0d95e998
    sltiu	$t0,$a0,2885
    beqz	$t0,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2968
    lw	$at,1792($a2)
    # Line 2969
    lw	$t9,31740($a2)
    # Line 2970
    lui	$t8,0x1
    # Line 2968
    li	$v0,-4097
    and	$at,$at,$v0
    sw	$at,1792($a2)
    # Line 2969
    li	$at,-257
    # Line 2970
    addu	$t8,$a2,$t8
    # Line 2969
    and	$t9,$t9,$at
    sw	$t9,31740($a2)
    # Line 2970
    lw	$t3,26976($t8)
    ori	$t3,$t3,0x2
    sw	$t3,26976($t8)
    li	$t2,2
    # Line 2971
    sw	$t2,4120($zero)
    lw	$t1,11812($a2)
    # Line 3341
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 2971
    ori	$t1,$t1,0x4
    # Line 3341
    jr	$ra
    # Line 2971
    sw	$t1,11812($a2)
.L0d95e18c:
    # Line 2950
    bnez	$v1,.L0d95deec
    sltiu	$a1,$a0,16385
    bnez	$a1,.L0d95e1c8
    sltiu	$a4,$a0,16386
    bnez	$a4,.L0d95ea90
    li	$t1,16385
    bnez	$a3,.L0d95e1cc
    # Line 3152
    addiu	$t3,$a0,-16384
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95e1b4:
    # Line 2950
    sltiu	$a6,$a0,16389
    bnez	$a6,.L0d95ea80
    li	$t0,16388
    beqz	$a3,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95e1c8:
    # Line 3152
    addiu	$t3,$a0,-16384
.L0d95e1cc:
    lw	$t2,1800($a2)
    sllv	$t3,$a5,$t3
    # Line 3153
    lui	$t1,0x1
    # Line 3152
    nor	$t3,$t3,$zero
    # Line 3153
    addu	$t1,$a2,$t1
    # Line 3152
    and	$t2,$t2,$t3
    sw	$t2,1800($a2)
    # Line 3153
    lw	$t0,26980($t1)
    # Line 3341
    ld	$gp,16($sp)
    # Line 3153
    li	$a7,2
    ori	$t0,$t0,0x140
    sw	$t0,26980($t1)
    # Line 3341
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3153
    sw	$a7,4120($zero)
.L0d95e208:
    # Line 2950
    sltiu	$a4,$a0,3476
    bnez	$a4,.L0d95e0d8
    sltiu	$t8,$a0,3477
    bnez	$t8,.L0d95e0f0
    # Line 3177
    addiu	$a4,$a0,-3472
    # Line 2950
    sltiu	$t9,$a0,3478
    bnez	$t9,.L0d95eac0
    li	$t8,3477
    bnez	$a3,.L0d95e0f0
    # Line 3177
    addiu	$a4,$a0,-3472
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95e238:
    # Line 2950
    sltiu	$at,$a0,3057
    bnez	$at,.L0d95e5d0
    sltiu	$a1,$a0,3042
    sltiu	$v0,$a0,3058
    bnez	$v0,.L0d95ee60
    sltiu	$v1,$a0,3089
    bnez	$v1,.L0d95ead0
    li	$t9,3058
    sltiu	$a1,$a0,3090
    sd	$a2,0($sp)
    beqz	$a1,.L0d95df54
    sd	$ra,8($sp)
    # Line 3067
    ld	$a3,0($sp)
    lw	$t9,11972($a3)
    # Line 3065
    lw	$a2,1792($a3)
    li	$a4,-16385
    # Line 3067
    move	$a0,$a3
    # Line 3065
    and	$a2,$a2,$a4
    # Line 3067
    jal	__glSetError
    # Line 3065
    sw	$a2,1792($a3)
    # Line 3068
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11964($t9)
    jalr	$t9
    nop
    b	.L0d95df68
    ld	$ra,8($sp)
.L0d95e2a4:
    # Line 3341
    ld	$gp,16($sp)
    # Line 3237
    lw	$v1,5416($a2)
    # Line 3236
    lw	$at,5404($a2)
    # Line 3341
    addiu	$sp,$sp,48
    # Line 3237
    li	$a0,-17
    # Line 3236
    lui	$v0,0x800
    nor	$v0,$v0,$zero
    # Line 3237
    and	$v1,$v1,$a0
    sw	$v1,5416($a2)
    # Line 3236
    and	$at,$at,$v0
    # Line 3341
    jr	$ra
    # Line 3236
    sw	$at,5404($a2)
.L0d95e2d4:
    # Line 2950
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0d95e560
    sltu	$a4,$a3,$a0
    beqz	$a4,.L0d95e590
    li	$a3,0x8412
    sltu	$a6,$a0,$a3
    bnez	$a6,.L0d95ecc8
    sltu	$a7,$a3,$a0
    beqz	$a7,.L0d95e590
    li	$a3,0x8568
    sltu	$t0,$a0,$a3
    bnez	$t0,.L0d95f0bc
    li	$t8,0x8413
    sltu	$t1,$a3,$a0
    bnez	$t1,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3306
    lui	$t3,0x2
    lw	$t2,1796($a2)
    nor	$t3,$t3,$zero
    and	$t2,$t2,$t3
    # Line 3307
    b	.L0d95df68
    # Line 3306
    sw	$t2,1796($a2)
.L0d95e32c:
    # Line 2950
    li	$a3,0x80d0
    sltu	$t8,$a0,$a3
    bnez	$t8,.L0d95e6f0
    sltu	$t9,$a3,$a0
    beqz	$t9,.L0d95efc0
    li	$a3,0x80d2
    sltu	$at,$a0,$a3
    bnez	$at,.L0d95ed0c
    li	$t2,0x80d1
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3293
    lw	$v1,1796($a2)
    li	$a0,-5
    and	$v1,$v1,$a0
    # Line 3294
    b	.L0d95df68
    # Line 3293
    sw	$v1,1796($a2)
.L0d95e370:
    # Line 2950
    li	$a3,0x802e
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0d95e750
    sltu	$a4,$a3,$a0
    beqz	$a4,.L0d95efd4
    li	$a3,0x803a
    sltu	$a5,$a0,$a3
    bnez	$a5,.L0d95ed58
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3043
    lui	$t1,0x1
    lw	$t2,1796($a2)
    nor	$t3,$t1,$zero
    # Line 3044
    addu	$t1,$a2,$t1
    # Line 3043
    and	$t2,$t2,$t3
    sw	$t2,1796($a2)
    # Line 3044
    lw	$t0,26980($t1)
    ori	$t0,$t0,0x4
    sw	$t0,26980($t1)
    li	$a7,2
    # Line 3045
    b	.L0d95df68
    # Line 3044
    sw	$a7,4120($zero)
.L0d95e3cc:
    # Line 2950
    sltiu	$a3,$a0,3511
    bnez	$a3,.L0d95e430
    sltiu	$t2,$a0,3512
    bnez	$t2,.L0d95e444
    sltiu	$t3,$a0,3552
    bnez	$t3,.L0d95ee04
    li	$a1,3512
    beqz	$a4,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3077
    lui	$at,0x1
    lw	$v1,1792($a2)
    nor	$a0,$at,$zero
    # Line 3078
    addu	$at,$a2,$at
    # Line 3077
    and	$v1,$v1,$a0
    sw	$v1,1792($a2)
    # Line 3078
    lw	$v0,26976($at)
    ori	$v0,$v0,0x4
    sw	$v0,26976($at)
    li	$t8,2
    sw	$t8,4120($zero)
    # Line 3079
    lw	$t9,26980($at)
    ori	$t9,$t9,0x790
    sw	$t9,26980($at)
    # Line 3084
    b	.L0d95df68
    # Line 3079
    sw	$t8,4120($zero)
.L0d95e430:
    # Line 2950
    sltiu	$v0,$a0,3510
    bnez	$v0,.L0d95eaa0
    li	$t2,3509
    beqz	$a3,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95e444:
    # Line 3186
    addiu	$a0,$a0,-3504
.L0d95e448:
    sllv	$a0,$a5,$a0
    lw	$v1,1812($a2)
    nor	$a0,$a0,$zero
    # Line 3341
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 3186
    andi	$a0,$a0,0xffff
    and	$v1,$v1,$a0
    # Line 3341
    jr	$ra
    # Line 3186
    sw	$v1,1812($a2)
.L0d95e46c:
    # Line 2950
    sltiu	$a1,$a0,2848
    bnez	$a1,.L0d95e79c
    sltiu	$a3,$a0,2849
    bnez	$a3,.L0d95efec
    li	$a4,2852
    bne	$a0,$a4,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3017
    lw	$t1,1792($a2)
    # Line 3019
    lui	$a7,0x1
    # Line 3017
    li	$t2,-257
    # Line 3018
    lw	$t0,31740($a2)
    # Line 3017
    and	$t1,$t1,$t2
    sw	$t1,1792($a2)
    # Line 3018
    li	$t1,-9
    # Line 3019
    addu	$a7,$a2,$a7
    # Line 3018
    and	$t0,$t0,$t1
    sw	$t0,31740($a2)
    # Line 3019
    lw	$a6,26976($a7)
    ori	$a6,$a6,0x2
    sw	$a6,26976($a7)
    li	$a5,2
    # Line 3020
    b	.L0d95df68
    # Line 3019
    sw	$a5,4120($zero)
.L0d95e4c8:
    # Line 2952
    lw	$at,1792($a2)
    # Line 2953
    lw	$v0,31740($a2)
    # Line 2954
    lui	$t9,0x1
    # Line 2952
    li	$v1,-2
    and	$at,$at,$v1
    sw	$at,1792($a2)
    # Line 2953
    li	$v1,-16385
    # Line 2954
    addu	$t9,$a2,$t9
    # Line 2953
    and	$v0,$v0,$v1
    sw	$v0,31740($a2)
    # Line 2954
    lw	$at,26976($t9)
    ori	$at,$at,0x2
    sw	$at,26976($t9)
    li	$t3,2
    sw	$t3,4120($zero)
    # Line 2955
    lw	$t8,26980($t9)
    # Line 3341
    ld	$gp,16($sp)
    # Line 2955
    ori	$t8,$t8,0x800
    sw	$t8,26980($t9)
    # Line 3341
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2955
    sw	$t3,4120($zero)
.L0d95e520:
    # Line 2950
    bnez	$a3,.L0d95e8e8
    sltiu	$a1,$a0,3172
    beqz	$a1,.L0d95ecac
    # Line 3114
    lui	$a7,0x20
    lw	$a6,1792($a2)
    # Line 3115
    lui	$a4,0x1
    # Line 3114
    nor	$a7,$a7,$zero
    # Line 3115
    addu	$a4,$a2,$a4
    # Line 3114
    and	$a6,$a6,$a7
    sw	$a6,1792($a2)
    # Line 3115
    lw	$a3,26980($a4)
    ori	$a3,$a3,0x120
    sw	$a3,26980($a4)
    li	$t0,2
    b	.L0d95ddc4
    sw	$t0,4120($zero)
.L0d95e560:
    # Line 2950
    li	$a3,0x840c
    sltu	$t0,$a0,$a3
    bnez	$t0,.L0d95e9e4
    sltu	$t1,$a3,$a0
    beqz	$t1,.L0d95e590
    li	$a3,0x840e
    sltu	$t2,$a0,$a3
    bnez	$t2,.L0d95f06c
    li	$a7,0x840d
    sltu	$t3,$a3,$a0
    bnez	$t3,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d95e590:
    # Line 3165
    lui	$v1,0xffff
.L0d95e594:
    ori	$v1,$v1,0x7bf4
    lui	$at,0x1
    addu	$v1,$a0,$v1
    addu	$at,$a2,$at
    sllv	$v1,$a5,$v1
    lw	$v0,25724($at)
    nor	$v1,$v1,$zero
    # Line 3166
    lw	$t9,26980($at)
    # Line 3165
    and	$v0,$v0,$v1
    sw	$v0,25724($at)
    # Line 3166
    ori	$t9,$t9,0x1c0
    sw	$t9,26980($at)
    li	$t8,2
    # Line 3169
    b	.L0d95df68
    # Line 3166
    sw	$t8,4120($zero)
.L0d95e5d0:
    # Line 2950
    bnez	$a1,.L0d95e950
    li	$t8,3024
    sltiu	$a3,$a0,3043
    beqz	$a3,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2959
    lw	$t0,31740($a2)
    lui	$t1,0x2
    # Line 2958
    li	$t3,-3
    lw	$t2,1792($a2)
    # Line 2959
    nor	$t1,$t1,$zero
    # Line 2960
    lui	$a6,0x1
    # Line 2959
    and	$t0,$t0,$t1
    sw	$t0,31740($a2)
    # Line 2960
    addu	$a6,$a2,$a6
    # Line 2958
    and	$t2,$t2,$t3
    sw	$t2,1792($a2)
    # Line 2960
    lw	$a7,26976($a6)
    ori	$a7,$a7,0x2
    sw	$a7,26976($a6)
    li	$a4,2
    sw	$a4,4120($zero)
    # Line 2961
    lw	$a5,26980($a6)
    # Line 3341
    ld	$gp,16($sp)
    # Line 2961
    ori	$a5,$a5,0x800
    sw	$a5,26980($a6)
    # Line 3341
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2961
    sw	$a4,4120($zero)
.L0d95e640:
    # Line 2950
    bnez	$t8,.L0d95df44
    sltiu	$t9,$a0,2913
    beqz	$t9,.L0d95df54
    # Line 2987
    lui	$v1,0x1
    # Line 2985
    lw	$a3,1792($a2)
    li	$a4,-33
    # Line 2986
    lui	$a1,0x40
    lw	$a0,31740($a2)
    # Line 2985
    and	$a3,$a3,$a4
    sw	$a3,1792($a2)
    # Line 2986
    nor	$a1,$a1,$zero
    # Line 2987
    addu	$v1,$a2,$v1
    # Line 2986
    and	$a0,$a0,$a1
    sw	$a0,31740($a2)
    # Line 2987
    lw	$v0,26976($v1)
    ori	$v0,$v0,0x2
    sw	$v0,26976($v1)
    li	$at,2
    # Line 2988
    b	.L0d95df68
    # Line 2987
    sw	$at,4120($zero)
.L0d95e690:
    # Line 3244
    lw	$a7,1792($a2)
    lui	$t0,0x400
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    sw	$a7,1792($a2)
    # Line 3245
    li	$a6,2
    sw	$a6,4120($zero)
    lw	$a5,11812($a2)
    # Line 3341
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 3245
    ori	$a5,$a5,0x10
    # Line 3341
    jr	$ra
    # Line 3245
    sw	$a5,11812($a2)
.L0d95e6c4:
    # Line 2941
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95df68
    ld	$ra,8($sp)
.L0d95e6dc:
    # Line 3122
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95df68
    ld	$ra,8($sp)
.L0d95e6f0:
    # Line 2950
    li	$a3,0x80bc
    sltu	$t1,$a0,$a3
    bnez	$t1,.L0d95ea2c
    li	$v1,0x8094
    sltu	$t2,$a3,$a0
    bnez	$t2,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3282
    lui	$v1,0x7fff
    lw	$v0,1792($a2)
    # Line 3284
    lui	$t9,0x1
    # Line 3282
    ori	$v1,$v1,0xffff
    # Line 3283
    lw	$at,31956($a2)
    # Line 3282
    and	$v0,$v0,$v1
    sw	$v0,1792($a2)
    # Line 3283
    li	$v0,-2
    # Line 3284
    addu	$t9,$a2,$t9
    # Line 3283
    and	$at,$at,$v0
    sw	$at,31956($a2)
    # Line 3284
    lw	$t8,26976($t9)
    ori	$t8,$t8,0x200
    sw	$t8,26976($t9)
    li	$t3,2
    # Line 3285
    b	.L0d95df68
    # Line 3284
    sw	$t3,4120($zero)
.L0d95e750:
    # Line 2950
    li	$a3,0x8024
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0d95ea48
    sltu	$a4,$a3,$a0
    bnez	$a4,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3252
    lui	$a6,0x1000
    lw	$a5,1792($a2)
    nor	$a6,$a6,$zero
    and	$a5,$a5,$a6
    # Line 3253
    b	.L0d95df68
    # Line 3252
    sw	$a5,1792($a2)
.L0d95e780:
    # Line 2950
    sltiu	$a7,$a0,3504
    bnez	$a7,.L0d95eab0
    li	$t3,3480
    bnez	$a3,.L0d95e448
    # Line 3186
    addiu	$a0,$a0,-3504
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95e79c:
    # Line 2950
    li	$t0,2832
    bne	$a0,$t0,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3047
    lw	$t8,1792($a2)
    # Line 3049
    lui	$t3,0x1
    # Line 3047
    li	$at,-1025
    # Line 3048
    lw	$t9,31740($a2)
    # Line 3047
    and	$t8,$t8,$at
    sw	$t8,1792($a2)
    # Line 3048
    li	$at,-2
    # Line 3049
    addu	$t3,$a2,$t3
    # Line 3048
    and	$t9,$t9,$at
    sw	$t9,31740($a2)
    # Line 3049
    lw	$t8,26976($t3)
    ori	$t8,$t8,0x2
    sw	$t8,26976($t3)
    li	$t1,2
    sw	$t1,4120($zero)
    # Line 3050
    lw	$t2,26980($t3)
    ori	$t2,$t2,0x800
    sw	$t2,26980($t3)
    b	.L0d95df68
    sw	$t1,4120($zero)
.L0d95e7f8:
    # Line 2994
    lw	$a1,1792($a2)
    # Line 2995
    lui	$a0,0x1
    # Line 2994
    li	$a3,-65
    # Line 2995
    addu	$a0,$a2,$a0
    # Line 2994
    and	$a1,$a1,$a3
    sw	$a1,1792($a2)
    # Line 2995
    lw	$v1,26980($a0)
    ori	$v1,$v1,0x1c0
    sw	$v1,26980($a0)
    li	$v0,2
    # Line 2998
    b	.L0d95df68
    # Line 2995
    sw	$v0,4120($zero)
.L0d95e828:
    # Line 2950
    li	$a3,0x8353
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0d95ecec
    sltu	$a4,$a3,$a0
    bnez	$a4,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3298
    lw	$a5,1796($a2)
    li	$a6,-16385
    and	$a5,$a5,$a6
    # Line 3299
    b	.L0d95df68
    # Line 3298
    sw	$a5,1796($a2)
.L0d95e854:
    # Line 2950
    li	$a3,0x8075
    sltu	$a7,$a0,$a3
    bnez	$a7,.L0d95ed28
    sltu	$t0,$a3,$a0
    bnez	$t0,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3221
    lw	$t3,5416($a2)
    li	$t8,-2
    # Line 3220
    lw	$t1,5404($a2)
    # Line 3221
    and	$t3,$t3,$t8
    sw	$t3,5416($a2)
    # Line 3220
    li	$t2,-3841
    and	$t1,$t1,$t2
    # Line 3221
    b	.L0d95df68
    # Line 3220
    sw	$t1,5404($a2)
.L0d95e890:
    # Line 2950
    sltiu	$t9,$a0,10754
    bnez	$t9,.L0d95edbc
    li	$t2,10753
    sltiu	$at,$a0,10755
    beqz	$at,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3210
    lw	$a3,1796($a2)
    # Line 3213
    lui	$a0,0x1
    # Line 3210
    li	$a4,-1025
    # Line 3212
    lw	$a1,31740($a2)
    # Line 3210
    and	$a3,$a3,$a4
    sw	$a3,1796($a2)
    # Line 3212
    li	$a3,-65
    # Line 3213
    addu	$a0,$a2,$a0
    # Line 3212
    and	$a1,$a1,$a3
    sw	$a1,31740($a2)
    # Line 3213
    lw	$v1,26976($a0)
    ori	$v1,$v1,0x2
    sw	$v1,26976($a0)
    li	$v0,2
    # Line 3214
    b	.L0d95df68
    # Line 3213
    sw	$v0,4120($zero)
.L0d95e8e8:
    # Line 2950
    sltiu	$a6,$a0,3170
    bnez	$a6,.L0d95ee24
    li	$a4,3169
    beqz	$a3,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3109
    lui	$t1,0x10
    lw	$t0,1792($a2)
    # Line 3110
    lui	$a4,0x1
    # Line 3109
    nor	$t1,$t1,$zero
    # Line 3110
    addu	$a4,$a2,$a4
    # Line 3109
    and	$t0,$t0,$t1
    sw	$t0,1792($a2)
    # Line 3110
    lw	$a7,26980($a4)
    ori	$a7,$a7,0x120
    sw	$a7,26980($a4)
    li	$t0,2
    # Line 3112
    b	.L0d95ddc4
    # Line 3110
    sw	$t0,4120($zero)
.L0d95e930:
    # Line 2950
    beq	$a0,$t2,.L0d95df08
    # Line 3142
    addiu	$a0,$a0,-12288
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95e940:
    # Line 2950
    beq	$a0,$t3,.L0d95e0f0
    # Line 3177
    addiu	$a4,$a0,-3472
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95e950:
    # Line 2950
    bne	$a0,$t8,.L0d95df54
    # Line 2982
    lui	$v0,0x1
    # Line 2980
    lw	$a1,1792($a2)
    li	$a3,-9
    # Line 2981
    lui	$a0,0x4
    lw	$v1,31740($a2)
    # Line 2980
    and	$a1,$a1,$a3
    sw	$a1,1792($a2)
    # Line 2981
    nor	$a0,$a0,$zero
    # Line 2982
    addu	$v0,$a2,$v0
    # Line 2981
    and	$v1,$v1,$a0
    sw	$v1,31740($a2)
    # Line 2982
    lw	$at,26976($v0)
    ori	$at,$at,0x2
    sw	$at,26976($v0)
    li	$t9,2
    # Line 2983
    b	.L0d95df68
    # Line 2982
    sw	$t9,4120($zero)
.L0d95e998:
    # Line 2950
    li	$a4,2882
    bne	$a0,$a4,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3059
    lw	$t1,1792($a2)
    # Line 3061
    lui	$a7,0x1
    # Line 3059
    li	$t2,-8193
    # Line 3060
    lw	$t0,31740($a2)
    # Line 3059
    and	$t1,$t1,$t2
    sw	$t1,1792($a2)
    # Line 3060
    li	$t1,-17
    # Line 3061
    addu	$a7,$a2,$a7
    # Line 3060
    and	$t0,$t0,$t1
    sw	$t0,31740($a2)
    # Line 3061
    lw	$a6,26976($a7)
    ori	$a6,$a6,0x2
    sw	$a6,26976($a7)
    li	$a5,2
    b	.L0d95df68
    sw	$a5,4120($zero)
.L0d95e9e4:
    # Line 2950
    li	$a3,0x8401
    sltu	$t3,$a0,$a3
    bnez	$t3,.L0d95ef74
    sltu	$t8,$a3,$a0
    bnez	$t8,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3007
    lw	$v1,1796($a2)
    # Line 3008
    lui	$v0,0x1
    # Line 3007
    li	$a0,-8193
    # Line 3008
    addu	$v0,$a2,$v0
    # Line 3007
    and	$v1,$v1,$a0
    sw	$v1,1796($a2)
    # Line 3008
    lw	$at,26980($v0)
    ori	$at,$at,0x80
    sw	$at,26980($v0)
    li	$t9,2
    # Line 3009
    b	.L0d95df68
    # Line 3008
    sw	$t9,4120($zero)
.L0d95ea2c:
    # Line 2950
    bne	$a0,$v1,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3302
    lw	$a0,1796($a2)
    li	$a1,-33
    and	$a0,$a0,$a1
    # Line 3303
    b	.L0d95df68
    # Line 3302
    sw	$a0,1796($a2)
.L0d95ea48:
    # Line 2950
    li	$a3,0x8012
    bne	$a0,$a3,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3248
    lui	$a7,0x800
    lw	$a6,1792($a2)
    nor	$a7,$a7,$zero
    and	$a6,$a6,$a7
    sw	$a6,1792($a2)
    # Line 3249
    li	$a5,2
    sw	$a5,4120($zero)
    lw	$a4,11812($a2)
    ori	$a4,$a4,0x10
    # Line 3250
    b	.L0d95df68
    # Line 3249
    sw	$a4,11812($a2)
.L0d95ea80:
    # Line 2950
    beq	$a0,$t0,.L0d95e1cc
    # Line 3152
    addiu	$t3,$a0,-16384
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95ea90:
    # Line 2950
    bne	$a0,$t1,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    b	.L0d95e1cc
    # Line 3152
    addiu	$t3,$a0,-16384
.L0d95eaa0:
    # Line 2950
    beq	$a0,$t2,.L0d95e448
    # Line 3186
    addiu	$a0,$a0,-3504
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95eab0:
    # Line 2950
    beq	$a0,$t3,.L0d95e0f0
    # Line 3177
    addiu	$a4,$a0,-3472
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95eac0:
    # Line 2950
    beq	$a0,$t8,.L0d95e0f0
    # Line 3177
    addiu	$a4,$a0,-3472
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95ead0:
    # Line 2950
    bne	$a0,$t9,.L0d95df54
    # Line 3034
    lui	$v1,0x1
    # Line 3029
    lw	$a4,1796($a2)
    li	$a5,-2049
    # Line 3033
    lui	$a3,0x10
    lw	$a1,31740($a2)
    # Line 3029
    and	$a4,$a4,$a5
    sw	$a4,1796($a2)
    # Line 3033
    nor	$a3,$a3,$zero
    # Line 3034
    addu	$v1,$a2,$v1
    # Line 3033
    and	$a1,$a1,$a3
    sw	$a1,31740($a2)
    # Line 3034
    lw	$a0,26976($v1)
    ori	$a0,$a0,0x2
    sw	$a0,26976($v1)
    li	$at,2
    sw	$at,4120($zero)
    # Line 3035
    lw	$v0,26980($v1)
    ori	$v0,$v0,0x800
    sw	$v0,26980($v1)
    # Line 3036
    b	.L0d95df68
    # Line 3035
    sw	$at,4120($zero)
.L0d95eb28:
    # Line 2950
    li	$a6,2960
    bne	$a0,$a6,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3071
    lw	$t2,1792($a2)
    lui	$t3,0xffff
    ori	$t3,$t3,0x7fff
    # Line 3072
    lw	$t8,31740($a2)
    # Line 3073
    lui	$t1,0x1
    # Line 3071
    and	$t2,$t3,$t2
    sw	$t2,1792($a2)
    # Line 3073
    addu	$t1,$a2,$t1
    # Line 3072
    and	$t3,$t3,$t8
    sw	$t3,31740($a2)
    # Line 3073
    lw	$t2,26976($t1)
    ori	$t2,$t2,0x2
    sw	$t2,26976($t1)
    li	$a7,2
    sw	$a7,4120($zero)
    # Line 3074
    lw	$t0,26980($t1)
    ori	$t0,$t0,0x800
    sw	$t0,26980($t1)
    # Line 3075
    b	.L0d95df68
    # Line 3074
    sw	$a7,4120($zero)
.L0d95eb84:
    # Line 2990
    lw	$v0,1796($a2)
    # Line 2991
    lui	$at,0x1
    # Line 2990
    li	$v1,-17
    # Line 2991
    addu	$at,$a2,$at
    # Line 2990
    and	$v0,$v0,$v1
    sw	$v0,1796($a2)
    # Line 2991
    lw	$t9,26980($at)
    ori	$t9,$t9,0x1000
    sw	$t9,26980($at)
    li	$t8,2
    # Line 2992
    b	.L0d95df68
    # Line 2991
    sw	$t8,4120($zero)
.L0d95ebb4:
    # Line 3258
    lw	$a5,1792($a2)
    lui	$a6,0x4000
    # Line 3262
    lui	$a0,0x1
    # Line 3258
    nor	$a6,$a6,$zero
    # Line 3259
    lw	$a3,31744($a2)
    li	$a4,-33
    # Line 3258
    and	$a5,$a5,$a6
    sw	$a5,1792($a2)
    # Line 3259
    and	$a3,$a3,$a4
    # Line 3260
    li	$a4,-3073
    # Line 3262
    addu	$a0,$a2,$a0
    # Line 3260
    and	$a3,$a3,$a4
    sw	$a3,31744($a2)
    # Line 3262
    lw	$a1,26976($a0)
    ori	$a1,$a1,0x4
    sw	$a1,26976($a0)
    li	$v0,2
    sw	$v0,4120($zero)
    # Line 3263
    lw	$v1,26980($a0)
    # Line 3341
    ld	$gp,16($sp)
    # Line 3263
    ori	$v1,$v1,0x790
    sw	$v1,26980($a0)
    # Line 3341
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3263
    sw	$v0,4120($zero)
.L0d95ec18:
    # Line 3086
    lui	$t8,0x2
    lw	$t3,1792($a2)
    # Line 3087
    lui	$t1,0x1
    # Line 3086
    nor	$t8,$t8,$zero
    # Line 3087
    addu	$t1,$a2,$t1
    # Line 3086
    and	$t3,$t3,$t8
    sw	$t3,1792($a2)
    # Line 3087
    lw	$t2,26976($t1)
    ori	$t2,$t2,0x4
    sw	$t2,26976($t1)
    li	$a7,2
    sw	$a7,4120($zero)
    # Line 3088
    lw	$t0,26980($t1)
    ori	$t0,$t0,0x790
    sw	$t0,26980($t1)
    # Line 3093
    b	.L0d95df68
    # Line 3088
    sw	$a7,4120($zero)
.L0d95ec5c:
    # Line 3053
    lw	$v1,1792($a2)
    # Line 3055
    lui	$v0,0x1
    # Line 3053
    li	$a1,-2049
    # Line 3054
    lw	$a0,31740($a2)
    # Line 3053
    and	$v1,$v1,$a1
    sw	$v1,1792($a2)
    # Line 3054
    li	$a1,-5
    # Line 3055
    addu	$v0,$a2,$v0
    # Line 3054
    and	$a0,$a0,$a1
    sw	$a0,31740($a2)
    # Line 3055
    lw	$v1,26976($v0)
    ori	$v1,$v1,0x2
    sw	$v1,26976($v0)
    li	$t9,2
    sw	$t9,4120($zero)
    # Line 3056
    lw	$at,26980($v0)
    ori	$at,$at,0x800
    sw	$at,26980($v0)
    # Line 3057
    b	.L0d95df68
    # Line 3056
    sw	$t9,4120($zero)
.L0d95ecac:
    # Line 2950
    sltiu	$a3,$a0,3472
    bnez	$a3,.L0d95f03c
    li	$a1,3456
    bnez	$a4,.L0d95e0f0
    # Line 3177
    addiu	$a4,$a0,-3472
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95ecc8:
    # Line 2950
    li	$a3,0x8411
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d95f05c
    li	$a6,0x8410
    sltu	$a6,$a3,$a0
    beqz	$a6,.L0d95e594
    # Line 3165
    lui	$v1,0xffff
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95ecec:
    # Line 2950
    li	$a7,0x832c
    bne	$a0,$a7,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3322
    lw	$t0,1816($a2)
    li	$t1,-9
    and	$t0,$t0,$t1
    # Line 3323
    b	.L0d95df68
    # Line 3322
    sw	$t0,1816($a2)
.L0d95ed0c:
    # Line 2950
    bne	$a0,$t2,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3290
    lw	$t3,1796($a2)
    li	$t8,-3
    and	$t3,$t3,$t8
    # Line 3291
    b	.L0d95df68
    # Line 3290
    sw	$t3,1796($a2)
.L0d95ed28:
    # Line 2950
    li	$t9,0x8074
    bne	$a0,$t9,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3217
    lw	$v1,5416($a2)
    li	$a0,-33
    # Line 3216
    lw	$at,5404($a2)
    # Line 3217
    and	$v1,$v1,$a0
    sw	$v1,5416($a2)
    # Line 3216
    li	$v0,-256
    and	$at,$at,$v0
    # Line 3217
    b	.L0d95df68
    # Line 3216
    sw	$at,5404($a2)
.L0d95ed58:
    # Line 2950
    li	$a1,0x8037
    bne	$a0,$a1,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3192
    lui	$t0,0x100
    lw	$a7,1792($a2)
    # Line 3195
    lui	$a5,0x1
    # Line 3192
    nor	$t0,$t0,$zero
    # Line 3194
    lw	$a6,31740($a2)
    # Line 3192
    and	$a7,$a7,$t0
    sw	$a7,1792($a2)
    # Line 3194
    li	$a7,-129
    # Line 3195
    addu	$a5,$a2,$a5
    # Line 3194
    and	$a6,$a6,$a7
    sw	$a6,31740($a2)
    # Line 3195
    lw	$a4,26976($a5)
    ori	$a4,$a4,0x2
    sw	$a4,26976($a5)
    li	$a3,2
    # Line 3196
    b	.L0d95df68
    # Line 3195
    sw	$a3,4120($zero)
.L0d95eda8:
    # Line 2950
    li	$t1,16391
    beq	$a0,$t1,.L0d95e1cc
    # Line 3152
    addiu	$t3,$a0,-16384
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95edbc:
    # Line 2950
    bne	$a0,$t2,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3201
    lw	$v0,1796($a2)
    # Line 3204
    lui	$t9,0x1
    # Line 3201
    li	$v1,-513
    # Line 3203
    lw	$at,31740($a2)
    # Line 3201
    and	$v0,$v0,$v1
    sw	$v0,1796($a2)
    # Line 3203
    li	$v0,-33
    # Line 3204
    addu	$t9,$a2,$t9
    # Line 3203
    and	$at,$at,$v0
    sw	$at,31740($a2)
    # Line 3204
    lw	$t8,26976($t9)
    ori	$t8,$t8,0x2
    sw	$t8,26976($t9)
    li	$t3,2
    # Line 3205
    b	.L0d95df68
    # Line 3204
    sw	$t3,4120($zero)
.L0d95ee04:
    # Line 2950
    beq	$a0,$a1,.L0d95e448
    # Line 3186
    addiu	$a0,$a0,-3504
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95ee14:
    # Line 2950
    beq	$a0,$a3,.L0d95e448
    # Line 3186
    addiu	$a0,$a0,-3504
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95ee24:
    # Line 2950
    bne	$a0,$a4,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3104
    lui	$t0,0x8
    lw	$a7,1792($a2)
    # Line 3105
    lui	$a4,0x1
    # Line 3104
    nor	$t0,$t0,$zero
    # Line 3105
    addu	$a4,$a2,$a4
    # Line 3104
    and	$a7,$a7,$t0
    sw	$a7,1792($a2)
    # Line 3105
    lw	$a6,26980($a4)
    ori	$a6,$a6,0x120
    sw	$a6,26980($a4)
    li	$t0,2
    b	.L0d95ddc4
    sw	$t0,4120($zero)
.L0d95ee60:
    # Line 3024
    lui	$t3,0x1
    # Line 3022
    lw	$v0,1792($a2)
    li	$v1,-5
    # Line 3023
    lui	$at,0x8
    lw	$t9,31740($a2)
    # Line 3022
    and	$v0,$v0,$v1
    sw	$v0,1792($a2)
    # Line 3023
    nor	$at,$at,$zero
    # Line 3024
    addu	$t3,$a2,$t3
    # Line 3023
    and	$t9,$t9,$at
    sw	$t9,31740($a2)
    # Line 3024
    lw	$t8,26976($t3)
    ori	$t8,$t8,0x2
    sw	$t8,26976($t3)
    li	$t1,2
    sw	$t1,4120($zero)
    # Line 3025
    lw	$t2,26980($t3)
    ori	$t2,$t2,0x800
    sw	$t2,26980($t3)
    # Line 3026
    b	.L0d95df68
    # Line 3025
    sw	$t1,4120($zero)
.L0d95eeb4:
    # Line 2974
    lw	$a4,1792($a2)
    li	$a6,-17
    # Line 2975
    lui	$a3,0x1
    lw	$a5,31740($a2)
    # Line 2974
    and	$a4,$a4,$a6
    sw	$a4,1792($a2)
    # Line 2975
    nor	$a6,$a3,$zero
    # Line 2976
    addu	$a3,$a2,$a3
    # Line 2975
    and	$a5,$a5,$a6
    sw	$a5,31740($a2)
    # Line 2976
    lw	$a4,26976($a3)
    ori	$a4,$a4,0x2
    sw	$a4,26976($a3)
    li	$a0,2
    sw	$a0,4120($zero)
    # Line 2977
    lw	$a1,26980($a3)
    ori	$a1,$a1,0x800
    sw	$a1,26980($a3)
    # Line 2978
    b	.L0d95df68
    # Line 2977
    sw	$a0,4120($zero)
.L0d95ef04:
    # Line 3127
    or	$t2,$a7,$a0
    b	.L0d95de44
    sw	$t2,1792($a2)
.L0d95ef10:
    # Line 2950
    li	$t3,0x835d
    bne	$a0,$t3,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3314
    lw	$t8,1816($a2)
    li	$t9,-3
    and	$t8,$t8,$t9
    # Line 3315
    b	.L0d95df68
    # Line 3314
    sw	$t8,1816($a2)
.L0d95ef30:
    # Line 2950
    bne	$a0,$at,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3229
    lw	$a0,5416($a2)
    li	$a1,-9
    # Line 3228
    lui	$v1,0xfff
    lw	$v0,5404($a2)
    # Line 3229
    and	$a0,$a0,$a1
    sw	$a0,5416($a2)
    # Line 3228
    ori	$v1,$v1,0xffff
    and	$v0,$v0,$v1
    # Line 3229
    b	.L0d95df68
    # Line 3228
    sw	$v0,5404($a2)
.L0d95ef60:
    # Line 2950
    li	$a3,12289
    bne	$a0,$a3,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    b	.L0d95df08
    # Line 3142
    addiu	$a0,$a0,-12288
.L0d95ef74:
    # Line 2950
    li	$a4,0x8400
    bne	$a0,$a4,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3000
    lw	$t1,1796($a2)
    # Line 3001
    lui	$a7,0x1
    # Line 3000
    li	$t2,-4097
    # Line 3001
    addu	$a7,$a2,$a7
    # Line 3000
    and	$t1,$t1,$t2
    sw	$t1,1796($a2)
    # Line 3001
    lw	$t0,26976($a7)
    ori	$t0,$t0,0x4
    sw	$t0,26976($a7)
    li	$a5,2
    sw	$a5,4120($zero)
    # Line 3002
    lw	$a6,26980($a7)
    ori	$a6,$a6,0x1c0
    sw	$a6,26980($a7)
    # Line 3005
    b	.L0d95df68
    # Line 3002
    sw	$a5,4120($zero)
.L0d95efc0:
    # Line 3287
    lw	$t0,1796($a2)
    li	$t1,-2
    and	$t0,$t0,$t1
    # Line 3288
    b	.L0d95df68
    # Line 3287
    sw	$t0,1796($a2)
.L0d95efd4:
    # Line 3255
    lui	$t3,0x2000
    lw	$t2,1792($a2)
    nor	$t3,$t3,$zero
    and	$t2,$t2,$t3
    # Line 3256
    b	.L0d95df68
    # Line 3255
    sw	$t2,1792($a2)
.L0d95efec:
    # Line 3011
    lw	$v0,1792($a2)
    # Line 3013
    lui	$at,0x1
    # Line 3011
    li	$a0,-513
    # Line 3012
    lw	$v1,31740($a2)
    # Line 3011
    and	$v0,$v0,$a0
    sw	$v0,1792($a2)
    # Line 3012
    li	$a0,-3
    # Line 3013
    addu	$at,$a2,$at
    # Line 3012
    and	$v1,$v1,$a0
    sw	$v1,31740($a2)
    # Line 3013
    lw	$v0,26976($at)
    ori	$v0,$v0,0x2
    sw	$v0,26976($at)
    li	$t8,2
    sw	$t8,4120($zero)
    # Line 3014
    lw	$t9,26980($at)
    ori	$t9,$t9,0x800
    sw	$t9,26980($at)
    # Line 3015
    b	.L0d95df68
    # Line 3014
    sw	$t8,4120($zero)
.L0d95f03c:
    # Line 2950
    bne	$a0,$a1,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3095
    lui	$a4,0x80
    lw	$a3,1792($a2)
    nor	$a4,$a4,$zero
    and	$a3,$a3,$a4
    # Line 3096
    b	.L0d95df68
    # Line 3095
    sw	$a3,1792($a2)
.L0d95f05c:
    # Line 2950
    beq	$a0,$a6,.L0d95e594
    # Line 3165
    lui	$v1,0xffff
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95f06c:
    # Line 2950
    bne	$a0,$a7,.L0d95df58
    # Line 3340
    nop	# was lw $t9, -26792($gp) # &__glSetError
    b	.L0d95e594
    # Line 3165
    lui	$v1,0xffff
.L0d95f07c:
    # Line 3310
    lw	$t0,1816($a2)
    li	$t1,-2
    and	$t0,$t0,$t1
    # Line 3311
    b	.L0d95df68
    # Line 3310
    sw	$t0,1816($a2)
.L0d95f090:
    # Line 3225
    lw	$t8,5416($a2)
    # Line 3224
    lui	$t3,0xf
    # Line 3225
    li	$t9,-3
    # Line 3224
    ori	$t3,$t3,0xf000
    lw	$t2,5404($a2)
    # Line 3225
    and	$t8,$t8,$t9
    sw	$t8,5416($a2)
    # Line 3224
    nor	$t3,$t3,$zero
    and	$t2,$t2,$t3
    # Line 3225
    b	.L0d95df68
    # Line 3224
    sw	$t2,5404($a2)
.L0d95f0bc:
    # Line 2950
    beq	$a0,$t8,.L0d95e594
    # Line 3165
    lui	$v1,0xffff
    b	.L0d95df54
    sd	$ra,8($sp)
.L0d95f0cc:
    # Line 2964
    ld	$v0,0($sp)
    # Line 2965
    # lw $t9, -32744($gp) # &.text
    addiu	$t9,$t9,26048
    # Line 2964
    lw	$at,1792($v0)
    li	$v1,-129
    # Line 2965
    move	$a0,$v0
    # Line 2964
    and	$at,$at,$v1
    # Line 2965
    jal	.text
    # Line 2964
    sw	$at,1792($v0)
    b	.L0d95df68
    ld	$ra,8($sp)
.end __glOdyim_Disable

# Function: __glOdyim_BlendColorEXT
# Declared: Line 3346 (Source lines: 3346-3372)
# Address: 0x0d95f100 - 0x0d95f2d8 (Size: 472 bytes, Frame: 16)
.globl __glOdyim_BlendColorEXT
.ent __glOdyim_BlendColorEXT
__glOdyim_BlendColorEXT:
    # Line 3349
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 3346
    lui	$at,0x1a
    # Line 3349
    lw	$a1,4112($zero)
    # Line 3346
    addiu	$sp,$sp,-16
    addiu	$at,$at,-27504
    sd	$gp,0($sp)
    # Line 3349
    beq	$v0,$v1,.L0d95f2c0
    # Line 3346
    addu	$gp,$t9,$at
    # Line 3354
    mtc1	$zero,$f4
    # Line 3358
    mov.s	$f3,$f14
    # Line 3356
    mov.s	$f2,$f13
    c.lt.s $f13,$f4
    # Line 3354
    mov.s	$f6,$f12
    c.lt.s $f12,$f4
    # Line 3352
    lwc1	$f0,3544($a1)
    # Line 3356
    movt.s	$f2,$f4,$fcc7
    # Line 3358
    c.lt.s	$f14,$f4
    # Line 3354
    movt.s	$f6,$f4,$fcc6
    # Line 3356
    mov.s	$f13,$f2
    # Line 3360
    c.lt.s $f15,$f4
    # Line 3358
    movt.s	$f3,$f4,$fcc0
    # Line 3354
    c.lt.s $f0,$f6
    # Line 3360
    movf.s	$f4,$f15,$fcc5
    # Line 3358
    c.lt.s $f0,$f3
    # Line 3354
    movt.s	$f6,$f0,$fcc4
    # Line 3360
    c.lt.s $f0,$f4
    mov.s	$f15,$f4
    # Line 3365
    ldc1	$f4,_lit8_3ff0000000000000
    # Line 3358
    mov.s	$f14,$f3
    # Line 3365
    cvt.d.s	$f1,$f6
    # Line 3367
    lwc1	$f5,_lit_45800000
    # Line 3356
    c.lt.s $f0,$f2
    # Line 3360
    movt.s	$f15,$f0,$fcc3
    # Line 3358
    movt.s	$f14,$f0,$fcc2
    # Line 3365
    swc1	$f15,1852($a1)
    c.le.d	$f4,$f1
    # Line 3371
    lui	$t1,0x1
    # Line 3367
    lui	$a3,0xff
    # Line 3356
    movt.s	$f13,$f0,$fcc1
    # Line 3364
    swc1	$f14,1848($a1)
    # Line 3367
    lui	$a4,0xff00
    ori	$a3,$a3,0xf000
    # Line 3363
    swc1	$f13,1844($a1)
    # Line 3367
    ori	$a4,$a4,0xfff
    # Line 3371
    addu	$t1,$a1,$t1
    # Line 3365
    bc1f	.L0d95f1c8
    # Line 3362
    swc1	$f6,1840($a1)
    # Line 3367
    b	.L0d95f1cc
    lwc1	$f5,_lit_457ff000
.L0d95f1c8:
    mul.s	$f5,$f6,$f5
.L0d95f1cc:
    trunc.l.s	$f7,$f5
    cvt.d.s	$f6,$f13
    dmfc1	$a5,$f7
    lw	$a2,31800($a1)
    c.le.d $f4,$f6
    # Line 3368
    cvt.d.s	$f6,$f14
    # Line 3367
    sll	$a5,$a5,0xc
    # Line 3368
    lwc1	$f5,_lit_45800000
    # Line 3367
    and	$a2,$a4,$a2
    and	$a5,$a3,$a5
    # Line 3368
    c.le.d $f4,$f6
    # Line 3367
    or	$a2,$a2,$a5
    bc1f .L0d95f20c
    sw	$a2,31800($a1)
    # Line 3368
    b	.L0d95f210
    lwc1	$f5,_lit_457ff000
.L0d95f20c:
    mul.s	$f5,$f13,$f5
.L0d95f210:
    trunc.l.s	$f7,$f5
    li	$a5,-4096
    dmfc1	$a7,$f7
    and	$a6,$a5,$a2
    # Line 3369
    lw	$a2,31804($a1)
    # Line 3368
    sll	$a7,$a7,0x0
    # Line 3369
    lwc1	$f5,_lit_457ff000
    and	$a2,$a4,$a2
    # Line 3368
    andi	$a7,$a7,0xfff
    or	$a6,$a6,$a7
    # Line 3371
    li	$a7,2
    # Line 3368
    bc1t .L0d95f24c
    sw	$a6,31800($a1)
    # Line 3369
    lwc1	$f5,_lit_45800000
    mul.s	$f5,$f14,$f5
.L0d95f24c:
    trunc.l.s	$f7,$f5
    cvt.d.s	$f6,$f15
    dmfc1	$a6,$f7
    c.le.d $f4,$f6
    sll	$a6,$a6,0xc
    # Line 3370
    lwc1	$f4,_lit_457ff000
    # Line 3369
    and	$a6,$a3,$a6
    or	$a2,$a2,$a6
    bc1t .L0d95f27c
    sw	$a2,31804($a1)
    # Line 3370
    lwc1	$f4,_lit_45800000
    mul.s	$f4,$f15,$f4
.L0d95f27c:
    trunc.l.s	$f5,$f4
    dmfc1	$t3,$f5
    sll	$t3,$t3,0x0
    and	$t2,$a5,$a2
    andi	$t3,$t3,0xfff
    or	$t2,$t2,$t3
    sw	$t2,31804($a1)
    # Line 3371
    lw	$t0,26976($t1)
    # Line 3372
    ld	$gp,0($sp)
    # Line 3371
    ori	$t0,$t0,0x1
    sw	$t0,26976($t1)
    # Line 3372
    addiu	$sp,$sp,16
    jr	$ra
    # Line 3371
    sw	$a7,4120($zero)
.L0d95f2b4:
    # Line 3372
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95f2c0:
    # Line 3349
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95f2b4
    ld	$ra,8($sp)
.end __glOdyim_BlendColorEXT

# Function: __glOdyim_PolygonOffset
# Declared: Line 3375 (Source lines: 3375-3380)
# Address: 0x0d95f2e0 - 0x0d95f340 (Size: 96 bytes, Frame: 16)
.globl __glOdyim_PolygonOffset
.ent __glOdyim_PolygonOffset
__glOdyim_PolygonOffset:
    # Line 3375
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x1a
    sd	$ra,8($sp)
    addiu	$v1,$v1,-27984
    mov.s	$f4,$f13
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d95f32c
    addu	$gp,$t9,$v1
    # Line 3378
    lw	$a0,4112($zero)
    # lw $t9, -32356($gp) # &__glOdyim_PolygonOffsetEXT
    lwc1	$f13,508($a0)
    bal __glOdyim_PolygonOffsetEXT
    mul.s	$f13,$f13,$f4
    ld	$ra,8($sp)
.L0d95f320:
    # Line 3380
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95f32c:
    # Line 3376
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95f320
    ld	$ra,8($sp)
.end __glOdyim_PolygonOffset

# Function: __glOdyim_PolygonOffsetEXT
# Declared: Line 3383 (Source lines: 3383-3450)
# Address: 0x0d95f340 - 0x0d95f558 (Size: 536 bytes, Frame: 128)
.globl __glOdyim_PolygonOffsetEXT
.ent __glOdyim_PolygonOffsetEXT
__glOdyim_PolygonOffsetEXT:
    # Line 3383
    addiu	$sp,$sp,-128
    sdc1	$f13,96($sp)
    sd	$s0,104($sp)
    # Line 3391
    lw	$s0,4112($zero)
    lw	$at,4120($zero)
    # Line 3383
    sdc1	$f12,88($sp)
    # Line 3391
    li	$v0,1
    # Line 3383
    lui	$v1,0x1a
    sd	$ra,120($sp)
    addiu	$v1,$v1,-28080
    sd	$gp,112($sp)
    # Line 3391
    beq	$at,$v0,.L0d95f540
    # Line 3383
    addu	$gp,$t9,$v1
    # Line 3407
    lw	$a1,29724($s0)
    # Line 3394
    ldc1	$f1,96($sp)
    # Line 3407
    # lw $t9, -25740($gp) # &__glInvertTransposeMatrix
    ldc1	$f0,88($sp)
    # Line 3394
    swc1	$f1,504($s0)
    # Line 3407
    addiu	$a0,$sp,0
    jal	__glInvertTransposeMatrix
    # Line 3393
    swc1	$f0,500($s0)
    # Line 3410
    lui	$a2,0x1
    ld	$ra,120($sp)
    addu	$a1,$a2,$s0
    ldc1	$f6,26064($a1)
    # Line 3432
    lwc1	$f17,8($sp)
    # Line 3413
    lw	$a0,29724($s0)
    # Line 3425
    lw	$a3,3700($s0)
    # Line 3410
    neg.d	$f12,$f6
    # Line 3413
    lwc1	$f8,40($a0)
    lwc1	$f7,56($a0)
    # Line 3410
    cvt.s.d	$f12,$f12
    # Line 3413
    lwc1	$f11,44($a0)
    # Line 3432
    lwc1	$f15,60($sp)
    # Line 3425
    mtc1	$a3,$f10
    # Line 3413
    madd.s	$f7,$f7,$f8,$f12
    lwc1	$f8,60($a0)
    # Line 3432
    lwc1	$f16,0($sp)
    # Line 3425
    dmtc1	$zero,$f9
    # Line 3413
    madd.s	$f8,$f8,$f11,$f12
    # Line 3448
    li	$t2,250
    # Line 3432
    lwc1	$f14,12($sp)
    # Line 3425
    cvt.d.w	$f10,$f10
    # Line 3445
    lui	$a7,0xfe00
    lui	$t0,0x1ff
    # Line 3425
    lwc1	$f5,508($s0)
    # Line 3432
    lwc1	$f19,56($sp)
    # Line 3448
    lui	$t8,0x1
    lui	$t1,0x1
    # Line 3425
    c.lt.d	$f9,$f10
    # Line 3448
    ori	$t3,$t1,0x443
    ori	$t1,$t1,0x46
    # Line 3445
    lw	$a6,31824($s0)
    # Line 3432
    lwc1	$f18,48($sp)
    # Line 3448
    ori	$t8,$t8,0x458
    # Line 3445
    ori	$t0,$t0,0xffff
    # Line 3425
    mov.s	$f4,$f5
    # Line 3445
    and	$a6,$a6,$a7
    # Line 3432
    lwc1	$f11,_lit_40000000
    # Line 3425
    bc1f	.L0d95f440
    # Line 3413
    div.s	$f7,$f7,$f8
    # Line 3427
    mtc1	$a3,$f4
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f5
.L0d95f440:
    # Line 3432
    madd.s	$f13,$f16,$f17,$f7
    # Line 3427
    ldc1	$f8,26056($a1)
    # Line 3432
    lui	$a3,0x2
    # Line 3427
    c.eq.d $f6,$f8
    # Line 3432
    ori	$a3,$a3,0x1ef4
    msub.s	$f16,$f16,$f17,$f7
    addu	$a3,$a3,$s0
    msub.s	$f19,$f18,$f19,$f7
    lwc1	$f12,0($a3)
    # Line 3427
    bc1t .L0d95f47c
    # Line 3432
    add.s	$f13,$f14,$f13
    # Line 3429
    sub.d	$f9,$f6,$f8
    cvt.d.s	$f4,$f4
    mul.d	$f4,$f4,$f9
    cvt.s.d	$f4,$f4
.L0d95f47c:
    # Line 3432
    add.s	$f14,$f14,$f16
    add.s	$f15,$f15,$f19
    div.s	$f14,$f14,$f15
    madd.s	$f18,$f15,$f18,$f11
    div.s	$f13,$f13,$f18
    sub.s	$f13,$f13,$f14
    abs.s	$f13,$f13
    cvt.d.s	$f12,$f12
    cvt.d.s	$f13,$f13
    mul.d	$f12,$f12,$f13
    cvt.d.s	$f13,$f4
    div.d	$f12,$f12,$f13
    # Line 3434
    div.s	$f11,$f11,$f5
    # Line 3432
    ldc1	$f9,88($sp)
    # Line 3434
    ldc1	$f8,96($sp)
    # Line 3432
    cvt.s.d	$f12,$f12
    # Line 3434
    lwc1	$f10,_lit_3d800000
    # Line 3432
    mul.s	$f9,$f9,$f12
    # Line 3434
    mul.s	$f8,$f8,$f11
    madd.s	$f8,$f8,$f9,$f10
    lwc1	$f9,_lit_4b7fffff
    c.lt.s $f9,$f8
    bc1t .L0d95f4e8
    mov.s	$f4,$f9
    # Line 3441
    lwc1	$f4,_lit_cb800000
    c.lt.s $f8,$f4
    movf.s	$f4,$f8,$fcc3
.L0d95f4e8:
    # Line 3445
    trunc.w.s	$f21,$f4
    mfc1	$a5,$f21
    and	$a5,$a5,$t0
    or	$a5,$a5,$a6
    sw	$a5,31824($s0)
    lw	$a4,-26576($a1)
    beqz	$a4,.L0d95f51c
    # Line 3450
    ld	$gp,112($sp)
    # Line 3448
    sw	$zero,-26576($a1)
    sw	$t3,0($a2)
    sw	$t2,0($a2)
    sw	$t1,0($a2)
    sw	$t1,0($a2)
.L0d95f51c:
    sw	$t8,0($a2)
    lw	$s0,31824($s0)
    sw	$s0,0($a2)
    # Line 3450
    ld	$s0,104($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d95f534:
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d95f540:
    # Line 3391
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,104($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95f534
    ld	$ra,120($sp)
.end __glOdyim_PolygonOffsetEXT

.late_rodata
jtbl_0dae8020:
    .word .L0d95ba30
    .word .L0d95b9a4
    .word .L0d95b9cc
    .word .L0d95b998
    .word .L0d95ba30
    .word .L0d95b9cc
    .word .L0d95ba30
    .word .L0d95b9a4
    .word .L0d95ba14
    .word .L0d95ba38
    .word .L0d95ba38
    .word .L0d95ba38
    .word .L0d95ba38

.rdata
_lit8_3eb0c6f7a0b5ed8d:
    .word 0x3eb0c6f7, 0xa0b5ed8d
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_4004000000000000:
    .word 0x40040000, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_3d800000:
    .word 0x3d800000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_457ff000:
    .word 0x457ff000
_lit_45800000:
    .word 0x45800000
_lit_4b7fffff:
    .word 0x4b7fffff
_lit_cb800000:
    .word 0xcb800000

