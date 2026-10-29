# Source: ../ODYSSEY/ody_image_api.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_image_api.c
# Total Functions: 32

.text

# Function: __glOdyim_DrawPixels
# Declared: Line 48 (Source lines: 50-158)
# Address: 0x0d989b40 - 0x0d989ea0 (Size: 864 bytes, Frame: 208)
.globl __glOdyim_DrawPixels
.ent __glOdyim_DrawPixels
__glOdyim_DrawPixels:
    # Line 58
    lw	$a6,4120($zero)
    # Line 50
    addiu	$sp,$sp,-208
    sd	$a4,96($sp)
    sd	$a3,104($sp)
    sd	$s0,136($sp)
    # Line 58
    lw	$s0,4112($zero)
    # Line 50
    sd	$a1,112($sp)
    # Line 58
    lui	$a7,0x1
    # Line 50
    sd	$a0,120($sp)
    # Line 58
    addu	$a7,$s0,$a7
    lw	$at,26980($a7)
    sd	$ra,144($sp)
    # Line 50
    lui	$v0,0x17
    sd	$gp,128($sp)
    addiu	$v0,$v0,-5552
    addu	$gp,$t9,$v0
    # Line 58
    beqz	$at,.L0d989df0
    sw	$a2,180($sp)
    beqz	$a6,.L0d989bbc
    li	$t1,1
    li	$t0,2
.L0d989b94:
    beq	$a6,$t0,.L0d989bb8
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d989ba4:
    ld	$ra,144($sp)
.L0d989ba8:
    # Line 84
    ld	$gp,128($sp)
    ld	$s0,136($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d989bb8:
    # Line 58
    li	$t1,1
.L0d989bbc:
    sb	$t1,26997($a7)
    lw	$t9,11840($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,4120($zero)
    # Line 61
    lbu	$t2,452($s0)
.L0d989bd4:
    beqz	$t2,.L0d989ba8
    ld	$ra,144($sp)
    ld	$t3,120($sp)
    beqz	$t3,.L0d989ba4
    ld	$t8,112($sp)
    beqz	$t8,.L0d989ba4
    ld	$t9,96($sp)
    beqz	$t9,.L0d989ba4
    # Line 74
    ld	$a4,104($sp)
    lw	$a3,180($sp)
    ld	$a2,112($sp)
    # Line 66
    li	$v1,1
    li	$ra,0x81a6
    # Line 72
    move	$v0,$zero
    # Line 74
    # lw $t9, -28784($gp) # &__glCheckDrawPixelArgs
    xor	$ra,$a3,$ra
    ld	$a1,120($sp)
    # Line 66
    li	$at,6402
    movz	$v0,$v1,$ra
    sd	$v0,80($sp)
    movz	$a3,$at,$ra
    # Line 74
    move	$a0,$s0
    jal	__glCheckDrawPixelArgs
    sw	$a3,180($sp)
    beqz	$v0,.L0d989ba8
    ld	$ra,144($sp)
    # Line 80
    sw	$zero,56($sp)
    sd	$zero,48($sp)
    sd	$zero,40($sp)
    sd	$zero,32($sp)
    sd	$zero,24($sp)
    sd	$zero,16($sp)
    sd	$zero,8($sp)
    sd	$zero,0($sp)
    lw	$a6,1224($s0)
    li	$at,0x85a4
    beq	$a6,$at,.L0d989e8c
    # Line 86
    lw	$t0,180($sp)
    # Line 80
    li	$v0,0x85a3
    # Line 98
    ld	$at,104($sp)
    li	$ra,5121
    # Line 80
    beq	$a6,$v0,.L0d989e00
    # Line 98
    ld	$t9,104($sp)
    # Line 111
    # lw $t9, -28148($gp) # &__glSpecElementsPerGroup
    lw	$a0,180($sp)
    jal	__glSpecElementsPerGroup
    ld	$a1,104($sp)
    sd	$v0,88($sp)
    # Line 112
    sw	$zero,40($sp)
.L0d989c98:
    # Line 114
    lw	$a0,1816($s0)
    andi	$a0,$a0,0x2
    beqz	$a0,.L0d989cc0
    # Line 119
    nop	# was lw $t9, -28144($gp) # &__glSpecBytesPerElement
    # Line 114
    # lw $t9, -32516($gp) # &__glOdysseyAsyncCheck
    move	$a0,$s0
    jal	__glOdysseyAsyncCheck
    li	$a1,2
    beqz	$v0,.L0d989ba4
    # Line 119
    nop	# was lw $t9, -28144($gp) # &__glSpecBytesPerElement
.L0d989cc0:
    jal	__glSpecBytesPerElement
    ld	$a0,104($sp)
    ld	$t0,120($sp)
    # Line 122
    lw	$a2,180($sp)
    # Line 124
    sb	$zero,0($sp)
    # Line 123
    sw	$zero,56($sp)
    # Line 122
    sw	$zero,4($sp)
    # Line 126
    ld	$t3,104($sp)
    # Line 127
    ld	$t2,96($sp)
    sw	$t2,44($sp)
    # Line 126
    sw	$t3,12($sp)
    # Line 125
    sw	$a2,8($sp)
    # Line 127
    lw	$a7,1192($s0)
    # Line 131
    ld	$t1,88($sp)
    # Line 128
    move	$a6,$a7
    # Line 131
    mult	$v0,$t1
    movz	$a6,$t0,$a7
    # Line 128
    sw	$a6,16($sp)
    lw	$a4,1212($s0)
    ld	$a5,112($sp)
    # Line 131
    move	$a3,$a4
    movz	$a3,$a5,$a4
    sw	$a3,20($sp)
    lw	$a5,1204($s0)
    mflo	$a1
    # Line 134
    li	$a3,6402
    # Line 131
    sltu	$a4,$a5,$a1
    # Line 143
    lw	$t8,36($sp)
    movz	$a1,$a5,$a4
    # Line 134
    beq	$a2,$a3,.L0d989e80
    sw	$a1,24($sp)
    # Line 143
    lw	$t9,180($sp)
    xori	$t9,$t9,0x1901
    sltiu	$t9,$t9,1
    movn	$t8,$zero,$t9
    sw	$t8,36($sp)
.L0d989d50:
    # Line 149
    lw	$a4,1200($s0)
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f3
    cvt.s.l	$f3,$f3
    # Line 151
    ld	$a3,120($sp)
    # Line 152
    ld	$a2,112($sp)
    # Line 149
    swc1	$f3,64($sp)
    # Line 152
    mtc1	$a2,$f0
    # Line 150
    lw	$a1,1196($s0)
    # Line 151
    mtc1	$a3,$f2
    # Line 150
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f1
    # Line 151
    cvt.s.w	$f2,$f2
    # Line 152
    cvt.s.w	$f0,$f0
    # Line 150
    cvt.s.l	$f1,$f1
    # Line 155
    lui	$a0,0x1
    ori	$a0,$a0,0x1d98
    # lw $t9, -31560($gp) # &__glOdysseyImageXfer
    # Line 151
    add.s	$f2,$f2,$f3
    # Line 155
    move	$a3,$zero
    addiu	$a2,$sp,64
    # Line 151
    swc1	$f2,72($sp)
    # Line 155
    addu	$a0,$s0,$a0
    move	$a4,$zero
    # Line 150
    swc1	$f1,68($sp)
    # Line 152
    add.s	$f0,$f0,$f1
    # Line 155
    addiu	$a1,$sp,0
    bal __glOdysseyImageXfer
    # Line 152
    swc1	$f0,76($sp)
    # Line 155
    lw	$a5,1816($s0)
    andi	$a5,$a5,0x2
    beqz	$a5,.L0d989ba4
    # Line 158
    nop	# was lw $t9, -32512($gp) # &__glOdysseyAsyncDropMarker
    move	$a0,$s0
    jal	__glOdysseyAsyncDropMarker
    li	$a1,2
    b	.L0d989ba8
    ld	$ra,144($sp)
.L0d989df0:
    # Line 58
    bnez	$a6,.L0d989b94
    li	$t0,2
    b	.L0d989bd4
    # Line 61
    lbu	$t2,452($s0)
.L0d989e00:
    # Line 86
    li	$t8,0x80e1
    # Line 107
    li	$v1,6408
    # Line 86
    lw	$a6,180($sp)
    # Line 107
    li	$a0,1
    # Line 86
    li	$a7,6407
    # Line 107
    li	$a1,2
    # Line 98
    li	$v0,5123
    # Line 86
    beq	$a6,$a7,.L0d989e50
    li	$a6,6408
    beq	$a6,$t0,.L0d989e50
    li	$t2,0x80e0
    beq	$t0,$t2,.L0d989e50
    nop
    beq	$t0,$t8,.L0d989e50
    nop
    # Line 95
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d989ba8
    ld	$ra,144($sp)
.L0d989e50:
    # Line 98
    beq	$t9,$ra,.L0d989e70
    nop
    beq	$at,$v0,.L0d989e70
    # Line 103
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d989ba8
    ld	$ra,144($sp)
.L0d989e70:
    # Line 107
    sd	$a1,88($sp)
    sw	$a0,40($sp)
    b	.L0d989c98
    sw	$v1,180($sp)
.L0d989e80:
    # Line 141
    ld	$a2,80($sp)
    b	.L0d989d50
    sw	$a2,32($sp)
.L0d989e8c:
    # Line 83
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d989ba8
    ld	$ra,144($sp)
.end __glOdyim_DrawPixels

# Function: __glOdyim_ReadPixels
# Declared: Line 165 (Source lines: 167-298)
# Address: 0x0d989ea0 - 0x0d98a2b8 (Size: 1048 bytes, Frame: 128)
.globl __glOdyim_ReadPixels
.ent __glOdyim_ReadPixels
__glOdyim_ReadPixels:
    # Line 176
    lw	$v0,4120($zero)
    # Line 167
    addiu	$sp,$sp,-256
    sd	$a6,128($sp)
    sd	$a5,136($sp)
    sd	$a3,144($sp)
    sd	$a2,152($sp)
    sd	$s0,168($sp)
    # Line 176
    lw	$s0,4112($zero)
    # Line 167
    sd	$a1,120($sp)
    # Line 176
    lui	$t1,0x1
    # Line 167
    sd	$a0,112($sp)
    # Line 176
    addu	$t1,$s0,$t1
    lw	$at,26980($t1)
    sd	$ra,176($sp)
    # Line 167
    lui	$v1,0x17
    sd	$gp,160($sp)
    addiu	$v1,$v1,-6416
    addu	$gp,$t9,$v1
    # Line 176
    beqz	$at,.L0d98a1b0
    sw	$a4,228($sp)
    beqz	$v0,.L0d989f20
    li	$t2,2
.L0d989ef8:
    beq	$v0,$t2,.L0d989f24
    li	$t3,1
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,176($sp)
.L0d989f10:
    # Line 200
    ld	$gp,160($sp)
    ld	$s0,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0d989f20:
    # Line 176
    li	$t3,1
.L0d989f24:
    sb	$t3,26997($t1)
    lw	$t9,11840($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,4120($zero)
    # Line 180
    ld	$t8,152($sp)
.L0d989f3c:
    beqz	$t8,.L0d989f10
    ld	$ra,176($sp)
    ld	$t9,144($sp)
    beqz	$t9,.L0d989f10
    ld	$ra,176($sp)
    ld	$ra,128($sp)
    beqz	$ra,.L0d989f10
    ld	$ra,176($sp)
    # Line 190
    ld	$a4,136($sp)
    lw	$a3,228($sp)
    ld	$a2,144($sp)
    # Line 182
    li	$a0,1
    li	$at,0x81a6
    # Line 188
    move	$v1,$zero
    # Line 190
    # lw $t9, -28780($gp) # &__glCheckReadPixelArgs
    xor	$at,$a3,$at
    ld	$a1,152($sp)
    # Line 182
    li	$v0,6402
    movz	$v1,$a0,$at
    sd	$v1,88($sp)
    movz	$a3,$v0,$at
    # Line 190
    move	$a0,$s0
    jal	__glCheckReadPixelArgs
    sw	$a3,228($sp)
    beqz	$v0,.L0d989f10
    ld	$ra,176($sp)
    # Line 196
    sw	$zero,56($sp)
    sd	$zero,48($sp)
    sd	$zero,40($sp)
    sd	$zero,32($sp)
    sd	$zero,24($sp)
    sd	$zero,16($sp)
    sd	$zero,8($sp)
    sd	$zero,0($sp)
    lw	$v0,1180($s0)
    li	$v1,0x85a4
    beq	$v0,$v1,.L0d98a270
    li	$a0,0x85a3
    # Line 214
    li	$a2,5121
    # Line 196
    beq	$v0,$a0,.L0d98a1c0
    # Line 214
    ld	$a1,136($sp)
    # Line 227
    # lw $t9, -28148($gp) # &__glSpecElementsPerGroup
    lw	$a0,228($sp)
    jal	__glSpecElementsPerGroup
    ld	$a1,136($sp)
    sd	$v0,104($sp)
    # Line 228
    sw	$zero,40($sp)
.L0d989ff8:
    # Line 230
    lw	$a2,1816($s0)
    andi	$a2,$a2,0x4
    beqz	$a2,.L0d98a01c
    nop	# was lw $t9, -32516($gp) # &__glOdysseyAsyncCheck
    move	$a0,$s0
    jal	__glOdysseyAsyncCheck
    li	$a1,4
    beqz	$v0,.L0d989f10
    ld	$ra,176($sp)
.L0d98a01c:
    # Line 235
    # lw $t9, -28144($gp) # &__glSpecBytesPerElement
    jal	__glSpecBytesPerElement
    ld	$a0,136($sp)
    ld	$t3,152($sp)
    # Line 238
    lw	$a4,228($sp)
    # Line 240
    sb	$zero,0($sp)
    # Line 239
    sw	$zero,56($sp)
    # Line 238
    sw	$zero,4($sp)
    # Line 242
    ld	$ra,136($sp)
    # Line 243
    ld	$t9,128($sp)
    sw	$t9,44($sp)
    # Line 242
    sw	$ra,12($sp)
    # Line 241
    sw	$a4,8($sp)
    # Line 243
    lw	$t2,1148($s0)
    # Line 247
    ld	$t8,104($sp)
    # Line 244
    move	$t1,$t2
    # Line 247
    mult	$v0,$t8
    movz	$t1,$t3,$t2
    # Line 244
    sw	$t1,16($sp)
    lw	$a7,1168($s0)
    ld	$t0,144($sp)
    # Line 247
    move	$a6,$a7
    movz	$a6,$t0,$a7
    sw	$a6,20($sp)
    lw	$a7,1160($s0)
    mflo	$a5
    sltu	$a6,$a7,$a5
    movz	$a5,$a7,$a6
    # Line 250
    sw	$a5,24($sp)
    # Line 255
    lw	$a3,1148($s0)
    beqz	$a3,.L0d98a0dc
    sd	$a3,96($sp)
    # Line 257
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    move	$a0,$s0
    jal	__glOdysseySetCurrentFilter
    li	$a1,2
    # Line 259
    lw	$a4,0($v0)
    li	$at,0x8011
    # Line 262
    ld	$a0,96($sp)
    # Line 259
    li	$v1,0x8012
    beq	$a4,$at,.L0d98a240
    # Line 262
    ld	$a1,152($sp)
    # Line 259
    beq	$a4,$v1,.L0d98a240
    # Line 262
    sltu	$a0,$a0,$a1
    bnez	$a0,.L0d98a0dc
    lw	$a4,8($sp)
    # Line 266
    sw	$zero,1148($s0)
.L0d98a0d8:
    # Line 262
    lw	$a4,8($sp)
.L0d98a0dc:
    li	$a2,6402
    beq	$a4,$a2,.L0d98a268
    # Line 272
    ld	$t8,88($sp)
    # Line 274
    lw	$a3,36($sp)
    xori	$a5,$a4,0x1901
    sltiu	$a5,$a5,1
    movn	$a3,$zero,$a5
    sw	$a3,36($sp)
.L0d98a0fc:
    # Line 283
    ld	$a6,144($sp)
    # Line 281
    ld	$a7,120($sp)
    # Line 280
    ld	$t1,112($sp)
    # Line 281
    mtc1	$a7,$f2
    # Line 282
    ld	$t0,152($sp)
    # Line 280
    mtc1	$t1,$f3
    # Line 283
    daddu	$a6,$a6,$a7
    # Line 282
    daddu	$t0,$t0,$t1
    # Line 283
    dmtc1	$a6,$f0
    # Line 281
    cvt.s.w	$f2,$f2
    # Line 282
    dmtc1	$t0,$f1
    # Line 280
    cvt.s.w	$f3,$f3
    # Line 290
    # lw $t9, -31560($gp) # &__glOdysseyImageXfer
    # Line 283
    cvt.s.l	$f0,$f0
    # Line 281
    swc1	$f2,68($sp)
    # Line 282
    cvt.s.l	$f1,$f1
    # Line 280
    swc1	$f3,64($sp)
    # Line 283
    swc1	$f0,76($sp)
    # Line 282
    swc1	$f1,72($sp)
    # Line 290
    addiu	$a4,$sp,80
    move	$a3,$zero
    # Line 286
    lw	$a5,1156($s0)
    # Line 290
    addiu	$a2,$sp,64
    lui	$a1,0x1
    # Line 286
    sw	$a5,80($sp)
    # Line 290
    addiu	$a0,$sp,0
    ori	$a1,$a1,0x1dd4
    # Line 287
    lw	$a6,1152($s0)
    # Line 290
    addu	$a1,$s0,$a1
    bal __glOdysseyImageXfer
    # Line 287
    sw	$a6,84($sp)
    # Line 290
    lw	$t2,1816($s0)
    andi	$t2,$t2,0x4
    beqz	$t2,.L0d98a194
    # Line 293
    nop	# was lw $t9, -32512($gp) # &__glOdysseyAsyncDropMarker
    move	$a0,$s0
    jal	__glOdysseyAsyncDropMarker
    li	$a1,4
.L0d98a194:
    # Line 200
    ld	$gp,160($sp)
    ld	$ra,176($sp)
    # Line 298
    ld	$t3,96($sp)
    sw	$t3,1148($s0)
    # Line 200
    ld	$s0,168($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0d98a1b0:
    # Line 176
    bnez	$v0,.L0d989ef8
    li	$t2,2
    b	.L0d989f3c
    # Line 180
    ld	$t8,152($sp)
.L0d98a1c0:
    # Line 223
    li	$a7,2
    li	$a6,1
    # Line 202
    lw	$t8,228($sp)
    # Line 223
    li	$a5,6408
    # Line 202
    li	$t9,6407
    li	$a0,0x80e1
    # Line 214
    li	$a4,5123
    ld	$a3,136($sp)
    # Line 202
    beq	$t8,$t9,.L0d98a210
    li	$v0,6408
    beq	$v0,$t8,.L0d98a210
    li	$v0,0x80e0
    beq	$t8,$v0,.L0d98a210
    nop
    beq	$t8,$a0,.L0d98a210
    # Line 211
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d989f10
    ld	$ra,176($sp)
.L0d98a210:
    # Line 214
    beq	$a1,$a2,.L0d98a230
    nop
    beq	$a3,$a4,.L0d98a230
    # Line 219
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d989f10
    ld	$ra,176($sp)
.L0d98a230:
    # Line 223
    sd	$a7,104($sp)
    sw	$a6,40($sp)
    b	.L0d989ff8
    sw	$a5,228($sp)
.L0d98a240:
    # Line 259
    lw	$t0,4($v0)
    li	$t1,0x8016
    # Line 262
    ld	$t2,96($sp)
    # Line 259
    beq	$t0,$t1,.L0d98a284
    # Line 262
    ld	$t3,152($sp)
    sltu	$t2,$t2,$t3
    bnez	$t2,.L0d98a0dc
    lw	$a4,8($sp)
    b	.L0d98a0d8
    # Line 266
    sw	$zero,1148($s0)
.L0d98a268:
    # Line 272
    b	.L0d98a0fc
    sw	$t8,32($sp)
.L0d98a270:
    # Line 199
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d989f10
    ld	$ra,176($sp)
.L0d98a284:
    # Line 259
    lw	$a0,64($v0)
    # Line 262
    move	$at,$zero
    ld	$ra,152($sp)
    slti	$v1,$a0,1
    addiu	$a0,$a0,-1
    ld	$t9,96($sp)
    movz	$at,$a0,$v1
    subu	$ra,$ra,$at
    sltu	$t9,$t9,$ra
    bnez	$t9,.L0d98a0dc
    lw	$a4,8($sp)
    b	.L0d98a0d8
    # Line 266
    sw	$zero,1148($s0)
.end __glOdyim_ReadPixels

# Function: __glOdyim_CopyPixels
# Declared: Line 304 (Source lines: 305-491)
# Address: 0x0d98a2c0 - 0x0d98abd4 (Size: 2324 bytes, Frame: 224)
.globl __glOdyim_CopyPixels
.ent __glOdyim_CopyPixels
__glOdyim_CopyPixels:
    # Line 310
    lw	$v0,4120($zero)
    # Line 305
    addiu	$sp,$sp,-224
    sd	$a4,176($sp)
    sd	$a2,184($sp)
    sd	$a1,152($sp)
    sd	$s0,192($sp)
    # Line 310
    lw	$s0,4112($zero)
    # Line 305
    sd	$a0,160($sp)
    # Line 310
    lui	$at,0x1
    addu	$at,$s0,$at
    sd	$at,168($sp)
    lw	$at,26980($at)
    # Line 305
    sd	$s1,200($sp)
    lui	$v1,0x17
    move	$s1,$a3
    sd	$ra,216($sp)
    addiu	$v1,$v1,-7472
    sd	$gp,208($sp)
    # Line 310
    beqz	$at,.L0d98a3e0
    # Line 305
    addu	$gp,$t9,$v1
    # Line 310
    beqz	$v0,.L0d98a344
    li	$v1,2
.L0d98a318:
    beq	$v0,$v1,.L0d98a348
    ld	$a1,168($sp)
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d98a32c:
    ld	$ra,216($sp)
.L0d98a330:
    # Line 475
    ld	$gp,208($sp)
    ld	$s0,192($sp)
    ld	$s1,200($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d98a344:
    # Line 310
    ld	$a1,168($sp)
.L0d98a348:
    li	$a0,1
    sb	$a0,26997($a1)
    lw	$t9,11840($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,4120($zero)
    # Line 314
    lbu	$a2,452($s0)
.L0d98a364:
    beqz	$a2,.L0d98a330
    ld	$ra,216($sp)
    ld	$a3,184($sp)
    beqz	$a3,.L0d98a330
    ld	$ra,216($sp)
    beqz	$s1,.L0d98a32c
    # Line 318
    ld	$a4,184($sp)
    bltz	$a4,.L0d98a974
    # Line 319
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 318
    bltz	$s1,.L0d98a974
    # Line 319
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 323
    lw	$v0,1796($s0)
    # Line 324
    lui	$t0,0x2
    # Line 327
    ld	$v1,176($sp)
    li	$t3,6146
    # Line 324
    and	$t0,$v0,$t0
    # Line 323
    andi	$v0,$v0,0x20
    # Line 324
    sltu	$t0,$zero,$t0
    # Line 327
    beq	$t3,$v1,.L0d98a8e8
    # Line 323
    sltu	$v0,$zero,$v0
    # Line 327
    ld	$t1,176($sp)
    li	$t2,6144
    beq	$t1,$t2,.L0d98a868
    ld	$t8,176($sp)
    li	$t9,6145
    beq	$t8,$t9,.L0d98a3f0
    # Line 367
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98a330
    ld	$ra,216($sp)
.L0d98a3e0:
    # Line 310
    bnez	$v0,.L0d98a318
    li	$v1,2
    b	.L0d98a364
    # Line 314
    lbu	$a2,452($s0)
.L0d98a3f0:
    # Line 356
    lbu	$ra,3225($s0)
    beqz	$ra,.L0d98aadc
    # Line 357
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 363
    beqz	$v0,.L0d98a91c
    li	$a6,1
.L0d98a404:
    andi	$t1,$a6,0xff
.L0d98a408:
    # Line 369
    lw	$a6,3204($s0)
    li	$at,7169
    beq	$a6,$at,.L0d98aac4
    lbu	$t2,3536($s0)
    # Line 373
    li	$v1,7168
    bne	$a6,$v1,.L0d98a330
    ld	$ra,216($sp)
    # Line 383
    beqz	$t1,.L0d98a8d4
    nop
    lwc1	$f5,744($s0)
    lwc1	$f4,748($s0)
.L0d98a434:
    beqz	$v0,.L0d98a99c
    nop
.L0d98a43c:
    # Line 403
    lw	$a1,3660($s0)
    ld	$a0,168($sp)
    mtc1	$a1,$f9
    lw	$a1,3664($s0)
    lw	$a0,7612($a0)
    mtc1	$a1,$f2
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f0
    cvt.s.w	$f2,$f2
    lwc1	$f1,372($s0)
    cvt.s.w	$f9,$f9
    lwc1	$f7,368($s0)
    cvt.s.l	$f0,$f0
    cvt.d.s	$f6,$f4
    sub.s	$f1,$f1,$f2
    ldc1	$f8,_lit8_4000000000000000
    sub.s	$f7,$f7,$f9
    sub.s	$f0,$f0,$f1
    trunc.w.s	$f7,$f7
    mul.d	$f6,$f6,$f8
    trunc.w.s	$f0,$f0
    mfc1	$a6,$f7
    cvt.s.d	$f6,$f6
    mfc1	$v0,$f0
.L0d98a4a0:
    # Line 383
    ld	$a3,184($sp)
    mtc1	$a3,$f10
    mtc1	$a6,$f7
    # Line 406
    mtc1	$s1,$f9
    # Line 383
    cvt.s.w	$f10,$f10
    # Line 406
    mtc1	$v0,$f13
    # Line 383
    cvt.s.w	$f7,$f7
    # Line 406
    cvt.s.w	$f9,$f9
    # Line 383
    madd.s	$f3,$f7,$f5,$f10
    # Line 406
    cvt.s.w	$f13,$f13
    madd.s	$f11,$f13,$f6,$f9
    mov.s	$f12,$f7
    # Line 405
    c.lt.s $f3,$f7
    movf.s	$f12,$f3,$fcc3
    # Line 408
    mov.s	$f4,$f13
    # Line 407
    c.lt.s $f11,$f13
    mov.s	$f8,$f13
    # Line 408
    trunc.w.s	$f12,$f12
    ld	$a2,160($sp)
    # Line 406
    c.lt.s $f13,$f11
    movf.s	$f4,$f11,$fcc2
    # Line 383
    c.lt.s	$f7,$f3
    # Line 408
    mfc1	$t2,$f12
    addu	$a2,$a2,$a3
    movf.s	$f8,$f11,$fcc1
    movf.s	$f7,$f3,$fcc0
    slt	$a1,$t2,$a2
    # Line 413
    beqz	$t1,.L0d98a9f8
    movz	$t2,$a2,$a1
.L0d98a514:
    trunc.w.s	$f11,$f4
    beqz	$t0,.L0d98aa74
    mfc1	$v0,$f11
    ld	$a5,152($sp)
    addu	$a6,$s1,$s1
    addu	$a5,$a5,$a6
    addiu	$a5,$a5,-1
    # Line 416
    move	$a6,$v0
    # Line 413
    slt	$a4,$v0,$a5
    movz	$a6,$a5,$a4
.L0d98a53c:
    # Line 420
    beqz	$t1,.L0d98aa9c
    nop
    # Line 426
    ld	$a7,1144($s0)
.L0d98a548:
    ld	$t0,1152($s0)
    ld	$t1,1160($s0)
    ld	$t8,1168($s0)
    # Line 425
    ld	$t2,184($sp)
    # Line 426
    ld	$t9,1176($s0)
    lw	$ra,1184($s0)
    # Line 425
    mult	$t2,$s1
    # Line 426
    sw	$ra,40($sp)
    sd	$t9,32($sp)
    sd	$t8,24($sp)
    sd	$t1,16($sp)
    # Line 427
    addiu	$a6,$sp,48
    # Line 426
    sd	$t0,8($sp)
    # Line 427
    addiu	$t0,$s0,1188
    # Line 426
    sd	$a7,0($sp)
    # Line 425
    mflo	$v0
    nop
    nop
    sd	$v0,136($sp)
    # Line 427
    lw	$at,1188($s0)
    lw	$t9,1228($s0)
    lw	$t8,1224($s0)
    lw	$a7,1220($s0)
    lw	$a5,1216($s0)
    lw	$a4,1212($s0)
    lw	$a3,1208($s0)
    lw	$a2,1204($s0)
    lw	$a1,1200($s0)
    lw	$a0,1196($s0)
    lw	$v1,1192($s0)
    sw	$v1,4($a6)
    sw	$a0,8($a6)
    sw	$a1,12($a6)
    sw	$a2,16($a6)
    sw	$a3,20($a6)
    sw	$a4,24($a6)
    sw	$a5,28($a6)
    sw	$a7,32($a6)
    sw	$t8,36($a6)
    sw	$t9,40($a6)
    sw	$at,48($sp)
    ld	$ra,176($sp)
    li	$at,6145
    beq	$ra,$at,.L0d98a954
    # Line 432
    li	$at,5125
    # Line 491
    ld	$v0,176($sp)
    bne	$t3,$v0,.L0d98a61c
    # Line 439
    nop	# was lw $t9, -31288($gp) # &__glOdysseyImageCalcSuitableHostFormatForDownload
    # Line 436
    li	$a3,5125
    sw	$a3,100($sp)
    # Line 435
    li	$v0,6401
    # Line 436
    b	.L0d98a640
    # Line 435
    sw	$v0,96($sp)
.L0d98a61c:
    # Line 439
    move	$a0,$zero
    ld	$a2,168($sp)
    move	$a1,$zero
    addiu	$a4,$sp,100
    addiu	$a3,$sp,96
    jal	__glOdysseyImageCalcSuitableHostFormatForDownload
    lw	$a2,7628($a2)
    lw	$a3,100($sp)
    lw	$v0,96($sp)
.L0d98a640:
    li	$a4,5123
    beq	$a3,$a4,.L0d98a92c
    # Line 451
    li	$a5,5125
    beq	$a3,$a5,.L0d98a960
.L0d98a650:
    # Line 455
    li	$a6,6408
    beq	$v0,$a6,.L0d98a948
    ld	$ra,136($sp)
.L0d98a65c:
    # Line 459
    lw	$t9,0($s0)
    move	$a0,$s0
    jalr	$t9
    ld	$a1,136($sp)
    beqz	$v0,.L0d98ab2c
    # Line 464
    la	$a3,__glOdyssey_InternalUnpack
    sd	$zero,120($sp)
    addiu	$a0,$s0,1144
    sd	$v0,144($sp)
    lw	$v1,0($a3)
    sw	$v1,1144($s0)
    lw	$v0,4($a3)
    sw	$v0,1148($s0)
    lw	$at,8($a3)
    sw	$at,1152($s0)
    lw	$ra,12($a3)
    sw	$ra,1156($s0)
    lw	$t9,16($a3)
    sw	$t9,1160($s0)
    lw	$t8,20($a3)
    sw	$t8,1164($s0)
    lw	$t3,24($a3)
    sw	$t3,1168($s0)
    lw	$t2,28($a3)
    sw	$t2,1172($s0)
    lw	$t1,32($a3)
    addiu	$a6,$a3,40
    addiu	$ra,$a3,36
    sw	$t1,1176($s0)
    addiu	$t1,$a3,32
    addiu	$t8,$a3,28
    lw	$t0,36($a3)
    addiu	$t3,$a3,24
    addiu	$a4,$a3,20
    sw	$t0,1180($s0)
    addiu	$t2,$a3,16
    addiu	$t9,$a3,12
    lw	$a7,40($a3)
    addiu	$t0,$a3,8
    addiu	$a2,$a3,4
    sw	$a7,1184($s0)
    # Line 466
    addiu	$a0,$s0,1188
    lw	$at,0($a3)
    sw	$at,1188($s0)
    lw	$a7,4($a3)
    sw	$a7,1192($s0)
    lw	$a5,8($a3)
    sw	$a5,1196($s0)
    lw	$v1,12($a3)
    sw	$v1,1200($s0)
    lw	$at,16($a3)
    sw	$at,1204($s0)
    lw	$a7,20($a3)
    sw	$a7,1208($s0)
    lw	$a5,24($a3)
    sw	$a5,1212($s0)
    lw	$v1,28($a3)
    sw	$v1,1216($s0)
    lw	$at,32($a3)
    sw	$at,1220($s0)
    lw	$a7,36($a3)
    sw	$a7,1224($s0)
    lw	$a5,40($a3)
    sw	$a5,1228($s0)
    # Line 467
    # lw $t9, -27688($gp) # &__glGetCurrentSetDefaultPixelXferState
    jal	__glGetCurrentSetDefaultPixelXferState
    move	$a0,$s0
    sd	$v0,128($sp)
    # Line 468
    ld	$a0,160($sp)
    ld	$a1,152($sp)
    ld	$a2,184($sp)
    # lw $t9, -31544($gp) # &__glOdyim_ReadPixels
    lw	$a5,100($sp)
    ld	$a6,144($sp)
    move	$a3,$s1
    bal __glOdyim_ReadPixels
    lw	$a4,96($sp)
    # Line 469
    # lw $t9, -27684($gp) # &__glRestoreCurrentPixelXferState
    move	$a0,$s0
    jal	__glRestoreCurrentPixelXferState
    ld	$a1,128($sp)
    # Line 470
    ld	$a0,184($sp)
    # lw $t9, -31548($gp) # &__glOdyim_DrawPixels
    lw	$a3,100($sp)
    ld	$a4,144($sp)
    move	$a1,$s1
    bal __glOdyim_DrawPixels
    lw	$a2,96($sp)
    # Line 471
    lw	$a3,40($sp)
    sw	$a3,1184($s0)
    ld	$a2,32($sp)
    sd	$a2,1176($s0)
    ld	$a1,24($sp)
    sd	$a1,1168($s0)
    ld	$a0,16($sp)
    sd	$a0,1160($s0)
    ld	$v1,8($sp)
    sd	$v1,1152($s0)
    ld	$v0,0($sp)
    # Line 472
    addiu	$a0,$s0,1188
    addiu	$a2,$sp,48
    # Line 471
    sd	$v0,1144($s0)
    ld	$v0,144($sp)
    # Line 472
    lw	$a4,32($a2)
    lw	$a5,36($a2)
    lw	$a6,40($a2)
    lw	$a7,28($a2)
    lw	$t1,24($a2)
    lw	$t2,20($a2)
    lw	$t3,16($a2)
    lw	$t8,12($a2)
    lw	$t9,8($a2)
    lw	$ra,4($a2)
    lw	$at,48($sp)
    sw	$at,1188($s0)
    sw	$ra,1192($s0)
    sw	$t9,1196($s0)
    sw	$t8,1200($s0)
    sw	$t3,1204($s0)
    sw	$t2,1208($s0)
    sw	$t1,1212($s0)
    sw	$a7,1216($s0)
    sw	$a6,1228($s0)
    sw	$a5,1224($s0)
    sw	$a4,1220($s0)
    # Line 474
    lw	$t9,12($s0)
    move	$a0,$s0
    jal	__glOdyim_DrawPixels
    move	$a1,$v0
    b	.L0d98a330
    ld	$ra,216($sp)
.L0d98a868:
    # Line 341
    lbu	$v1,3536($s0)
    beqz	$v1,.L0d98a8bc
    move	$t2,$zero
    lw	$t1,1236($s0)
    lw	$a6,1888($s0)
    beq	$t1,$a6,.L0d98a914
    nop
    lbu	$a0,3222($s0)
    beqz	$a0,.L0d98a898
    li	$a1,1032
    beq	$a6,$a1,.L0d98a914
    nop
.L0d98a898:
    lbu	$a2,3223($s0)
    beqz	$a2,.L0d98a8b8
    li	$a3,1028
    beq	$a6,$a3,.L0d98a904
    li	$t2,1024
    li	$a4,1029
.L0d98a8b0:
    beq	$a6,$a4,.L0d98aaec
    li	$t2,1026
.L0d98a8b8:
    move	$t2,$zero
.L0d98a8bc:
    lw	$a6,3204($s0)
    li	$a5,7169
    beq	$a6,$a5,.L0d98aac4
    li	$a7,7168
    bne	$a6,$a7,.L0d98a32c
    move	$t1,$zero
.L0d98a8d4:
    # Line 383
    beqz	$v0,.L0d98a984
    nop
.L0d98a8dc:
    lwc1	$f5,744($s0)
    b	.L0d98a43c
    lwc1	$f4,748($s0)
.L0d98a8e8:
    # Line 329
    lbu	$t1,3226($s0)
    beqz	$t1,.L0d98ab1c
    # Line 330
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 336
    beqz	$v0,.L0d98aa8c
    li	$a6,1
.L0d98a8fc:
    b	.L0d98a408
    andi	$t1,$a6,0xff
.L0d98a904:
    # Line 341
    beq	$t1,$t2,.L0d98a914
    li	$t8,1025
    bne	$t1,$t8,.L0d98a8b0
    li	$a4,1029
.L0d98a914:
    b	.L0d98a8bc
    li	$t2,1
.L0d98a91c:
    # Line 363
    bnez	$t0,.L0d98a404
    li	$a6,1
    b	.L0d98a404
    move	$a6,$zero
.L0d98a92c:
    # Line 444
    li	$a3,6408
    beq	$a3,$v0,.L0d98ab04
.L0d98a934:
    # Line 451
    ld	$t9,136($sp)
    addu	$t9,$t9,$t9
    sd	$t9,136($sp)
.L0d98a940:
    bne	$a3,$v0,.L0d98a65c
    ld	$ra,136($sp)
.L0d98a948:
    # Line 457
    sll	$ra,$ra,0x2
    b	.L0d98a65c
    sd	$ra,136($sp)
.L0d98a954:
    # Line 432
    sw	$at,100($sp)
    # Line 431
    li	$v0,6402
    sw	$v0,96($sp)
.L0d98a960:
    ld	$v1,136($sp)
    # Line 455
    sll	$v1,$v1,0x2
    b	.L0d98a650
    sd	$v1,136($sp)
    # Line 319
    # lw $t9, -26792($gp) # &__glSetError
.L0d98a974:
    jal	__glSetError
    li	$a0,1281
    b	.L0d98a330
    ld	$ra,216($sp)
.L0d98a984:
    # Line 383
    beqz	$t0,.L0d98ab40
    nop
    bnez	$v0,.L0d98a8dc
    nop
    lwc1	$f5,744($s0)
    lwc1	$f4,748($s0)
.L0d98a99c:
    lw	$a1,3660($s0)
    ld	$a0,168($sp)
    mtc1	$a1,$f15
    lw	$a1,3664($s0)
    lw	$a0,7612($a0)
    mtc1	$a1,$f16
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f12
    cvt.s.w	$f16,$f16
    lwc1	$f14,372($s0)
    cvt.s.w	$f15,$f15
    lwc1	$f13,368($s0)
    cvt.s.l	$f12,$f12
    sub.s	$f14,$f14,$f16
    sub.s	$f13,$f13,$f15
    sub.s	$f12,$f12,$f14
    trunc.w.s	$f13,$f13
    mov.s	$f6,$f4
    trunc.w.s	$f12,$f12
    mfc1	$a6,$f13
    b	.L0d98a4a0
    mfc1	$v0,$f12
.L0d98a9f8:
    # Line 413
    trunc.w.s	$f17,$f7
    ld	$a3,160($sp)
    mfc1	$a1,$f17
    slt	$a2,$a3,$a1
    movz	$a1,$a3,$a2
    slt	$a1,$a1,$t2
    bnez	$a1,.L0d98a514
.L0d98aa14:
    # Line 483
    ld	$a3,152($sp)
.L0d98aa18:
    # Line 482
    ld	$a2,160($sp)
    # Line 483
    mtc1	$a3,$f19
    # Line 482
    mtc1	$a2,$f18
    # Line 483
    cvt.s.w	$f19,$f19
    # Line 482
    cvt.s.w	$f18,$f18
    # Line 488
    ld	$a3,176($sp)
    # lw $t9, -31560($gp) # &__glOdysseyImageXfer
    move	$a4,$zero
    lui	$a0,0x1
    # Line 482
    swc1	$f18,104($sp)
    # Line 488
    ori	$a1,$a0,0x1dd4
    ori	$a0,$a0,0x1d98
    # Line 483
    swc1	$f19,108($sp)
    # Line 485
    add.s	$f19,$f19,$f9
    # Line 488
    addiu	$a2,$sp,104
    addu	$a1,$s0,$a1
    # Line 484
    add.s	$f18,$f18,$f10
    # Line 485
    swc1	$f19,116($sp)
    # Line 488
    addu	$a0,$s0,$a0
    bal __glOdysseyImageXfer
    # Line 484
    swc1	$f18,112($sp)
    b	.L0d98a330
    ld	$ra,216($sp)
.L0d98aa74:
    # Line 416
    ld	$a5,152($sp)
    # Line 418
    move	$a6,$v0
    # Line 416
    addu	$a5,$a5,$s1
    slt	$a4,$v0,$a5
    b	.L0d98a53c
    movz	$a6,$a5,$a4
.L0d98aa8c:
    # Line 336
    bnez	$t0,.L0d98a8fc
    li	$a6,1
    b	.L0d98a8fc
    move	$a6,$zero
.L0d98aa9c:
    # Line 420
    trunc.w.s	$f21,$f8
    ld	$t1,152($sp)
    mfc1	$a7,$f21
    slt	$t0,$t1,$a7
    movz	$a7,$t1,$t0
    slt	$a7,$a7,$a6
    bnezl	$a7,.L0d98a548
    # Line 426
    ld	$a7,1144($s0)
    b	.L0d98aa18
    # Line 483
    ld	$a3,152($sp)
.L0d98aac4:
    # Line 372
    # lw $t9, -26464($gp) # &__glFeedbackCopyPixels
    move	$a0,$s0
    jal	__glFeedbackCopyPixels
    addiu	$a1,$s0,240
    b	.L0d98a330
    ld	$ra,216($sp)
.L0d98aadc:
    # Line 357
    jalr	$t9
    li	$a0,1282
    b	.L0d98a330
    ld	$ra,216($sp)
.L0d98aaec:
    # Line 341
    beq	$t1,$t2,.L0d98a914
    li	$t8,1027
    bne	$t1,$t8,.L0d98a8bc
    move	$t2,$zero
    b	.L0d98a914
    nop
.L0d98ab04:
    # Line 444
    ld	$t9,184($sp)
    slti	$t9,$t9,2049
    bnez	$t9,.L0d98a934
    # Line 449
    li	$ra,5121
    b	.L0d98a940
    sw	$ra,100($sp)
.L0d98ab1c:
    # Line 330
    jalr	$t9
    li	$a0,1282
    b	.L0d98a330
    ld	$ra,216($sp)
.L0d98ab2c:
    # Line 461
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d98a330
    ld	$ra,216($sp)
.L0d98ab40:
    # Line 383
    beqz	$t2,.L0d98abbc
    ld	$at,168($sp)
    ld	$v1,184($sp)
    lw	$at,7708($at)
    sltu	$at,$at,$v1
    bnez	$at,.L0d98ab6c
    ld	$v1,168($sp)
    lw	$v1,7704($v1)
    sltu	$v1,$v1,$s1
    beqz	$v1,.L0d98aba8
    # Line 420
    ld	$a1,184($sp)
.L0d98ab6c:
    # Line 383
    lwc1	$f5,744($s0)
    ldc1	$f6,_lit8_3ff0000000000000
    cvt.d.s	$f23,$f5
    c.eq.d $f23,$f6
    bc1f .L0d98a434
    lwc1	$f4,748($s0)
    cvt.d.s	$f25,$f4
    c.eq.d $f25,$f6
    bc1f .L0d98a434
    # Line 420
    ld	$a0,184($sp)
    mtc1	$s1,$f9
    mtc1	$a0,$f10
    cvt.s.w	$f9,$f9
    b	.L0d98aa14
    cvt.s.w	$f10,$f10
.L0d98aba8:
    mtc1	$s1,$f9
    mtc1	$a1,$f10
    cvt.s.w	$f9,$f9
    b	.L0d98aa14
    cvt.s.w	$f10,$f10
.L0d98abbc:
    ld	$a2,184($sp)
    mtc1	$s1,$f9
    mtc1	$a2,$f10
    cvt.s.w	$f9,$f9
    b	.L0d98aa14
    cvt.s.w	$f10,$f10
.end __glOdyim_CopyPixels

# Function: __glOdyim_PixelZoom
# Declared: Line 494 (Source lines: 495-500)
# Address: 0x0d98abe0 - 0x0d98ac50 (Size: 112 bytes, Frame: 16)
.globl __glOdyim_PixelZoom
.ent __glOdyim_PixelZoom
__glOdyim_PixelZoom:
    # Line 496
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 495
    lui	$at,0x17
    # Line 496
    lw	$a1,4112($zero)
    # Line 495
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9808
    sd	$gp,0($sp)
    # Line 496
    beq	$v0,$v1,.L0d98ac38
    # Line 495
    addu	$gp,$t9,$at
    # Line 498
    swc1	$f13,748($a1)
    # Line 497
    swc1	$f12,744($a1)
    # Line 499
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11812($a1)
    # Line 500
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 499
    ori	$v0,$v0,0x10
    # Line 500
    jr	$ra
    # Line 499
    sw	$v0,11812($a1)
.L0d98ac2c:
    # Line 500
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d98ac38:
    # Line 496
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d98ac2c
    ld	$ra,8($sp)
.end __glOdyim_PixelZoom

# Function: __glOdyim_PixelTransferf
# Declared: Line 503 (Source lines: 504-507)
# Address: 0x0d98ac50 - 0x0d98ac84 (Size: 52 bytes, Frame: 16)
.globl __glOdyim_PixelTransferf
.ent __glOdyim_PixelTransferf
__glOdyim_PixelTransferf:
    # Line 504
    lui	$at,0x17
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9920
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 506
    # lw $t9, -28808($gp) # &__glim_PixelTransferf
    # Line 504
    sd	$ra,0($sp)
    # Line 506
    jal	__glim_PixelTransferf
    nop
    ld	$ra,0($sp)
    # Line 507
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_PixelTransferf

# Function: __glOdyim_PixelTransferi
# Declared: Line 510 (Source lines: 511-514)
# Address: 0x0d98ac90 - 0x0d98acc8 (Size: 56 bytes, Frame: 16)
.globl __glOdyim_PixelTransferi
.ent __glOdyim_PixelTransferi
__glOdyim_PixelTransferi:
    # Line 511
    lui	$at,0x17
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9984
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 513
    mtc1	$a1,$f13
    # lw $t9, -31532($gp) # &__glOdyim_PixelTransferf
    # Line 511
    sd	$ra,0($sp)
    # Line 513
    bal __glOdyim_PixelTransferf
    cvt.s.w	$f13,$f13
    ld	$ra,0($sp)
    # Line 514
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_PixelTransferi

# Function: __glOdyim_PixelMapfv
# Declared: Line 517 (Source lines: 518-553)
# Address: 0x0d98acd0 - 0x0d98ad80 (Size: 176 bytes, Frame: 32)
.globl __glOdyim_PixelMapfv
.ent __glOdyim_PixelMapfv
__glOdyim_PixelMapfv:
    # Line 518
    lui	$at,0x17
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10048
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 522
    # lw $t9, -28800($gp) # &__glim_PixelMapfv
    # Line 518
    sd	$s8,8($sp)
    # Line 522
    nop
    # Line 518
    sd	$ra,0($sp)
    # Line 522
    jal	__glim_PixelMapfv
    # Line 518
    move	$s8,$a0
    # Line 522
    la	$a0,sub_0daf0000
    addiu	$a1,$s8,-3184
    sltiu	$a2,$a1,10
    sll	$a1,$a1,0x2
    addiu	$a0,$a0,-28696
    beqz	$a2,.L0d98ad48
    addu	$a0,$a0,$a1
    lw	$a1,0($a0)
    jr	$a1
    # Line 527
    nop	# was lw $t9, -31092($gp) # &__glOdysseyStoreLUT
.L0d98ad24:
    # Line 537
    # lw $t9, -31092($gp) # &__glOdysseyStoreLUT
    jal	__glOdysseyStoreLUT
    li	$a0,6
    move	$a0,$v0
.L0d98ad34:
    # Line 547
    beqz	$a0,.L0d98ad4c
    ld	$ra,0($sp)
    # Line 550
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    nop
.L0d98ad48:
    ld	$ra,0($sp)
.L0d98ad4c:
    ld	$s8,8($sp)
    # Line 553
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98ad5c:
    # Line 527
    jalr	$t9
    li	$a0,4
    # Line 528
    b	.L0d98ad34
    # Line 527
    move	$a0,$v0
.L0d98ad6c:
    # Line 543
    # lw $t9, -31092($gp) # &__glOdysseyStoreLUT
    jal	__glOdysseyStoreLUT
    li	$a0,7
    # Line 544
    b	.L0d98ad34
    # Line 543
    move	$a0,$v0
.end __glOdyim_PixelMapfv

# Function: __glOdyim_PixelMapuiv
# Declared: Line 556 (Source lines: 557-592)
# Address: 0x0d98ad80 - 0x0d98ae2c (Size: 172 bytes, Frame: 32)
.globl __glOdyim_PixelMapuiv
.ent __glOdyim_PixelMapuiv
__glOdyim_PixelMapuiv:
    # Line 557
    lui	$at,0x17
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10224
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 561
    # lw $t9, -28796($gp) # &__glim_PixelMapuiv
    # Line 557
    sd	$s8,8($sp)
    # Line 561
    nop
    # Line 557
    sd	$ra,0($sp)
    # Line 561
    jal	__glim_PixelMapuiv
    # Line 557
    move	$s8,$a0
    # Line 561
    la	$a0,sub_0daf0000
    addiu	$a1,$s8,-3184
    sltiu	$a2,$a1,10
    sll	$a1,$a1,0x2
    addiu	$a0,$a0,-28656
    beqz	$a2,.L0d98adf4
    addu	$a0,$a0,$a1
    lw	$a1,0($a0)
    jr	$a1
    # Line 582
    nop	# was lw $t9, -31092($gp) # &__glOdysseyStoreLUT
.L0d98add4:
    # Line 576
    # lw $t9, -31092($gp) # &__glOdysseyStoreLUT
    jal	__glOdysseyStoreLUT
    li	$a0,6
    move	$a0,$v0
.L0d98ade4:
    # Line 586
    beqz	$a0,.L0d98adf4
    # Line 589
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    nop
.L0d98adf4:
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 592
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98ae08:
    # Line 566
    # lw $t9, -31092($gp) # &__glOdysseyStoreLUT
    jal	__glOdysseyStoreLUT
    li	$a0,4
    # Line 567
    b	.L0d98ade4
    # Line 566
    move	$a0,$v0
.L0d98ae1c:
    # Line 582
    jalr	$t9
    li	$a0,7
    # Line 583
    b	.L0d98ade4
    # Line 582
    move	$a0,$v0
.end __glOdyim_PixelMapuiv

# Function: __glOdyim_PixelMapusv
# Declared: Line 595 (Source lines: 596-631)
# Address: 0x0d98ae30 - 0x0d98aedc (Size: 172 bytes, Frame: 32)
.globl __glOdyim_PixelMapusv
.ent __glOdyim_PixelMapusv
__glOdyim_PixelMapusv:
    # Line 596
    lui	$at,0x17
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10400
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 600
    # lw $t9, -28792($gp) # &__glim_PixelMapusv
    # Line 596
    sd	$s8,8($sp)
    # Line 600
    nop
    # Line 596
    sd	$ra,0($sp)
    # Line 600
    jal	__glim_PixelMapusv
    # Line 596
    move	$s8,$a0
    # Line 600
    la	$a0,sub_0daf0000
    addiu	$a1,$s8,-3184
    sltiu	$a2,$a1,10
    sll	$a1,$a1,0x2
    addiu	$a0,$a0,-28616
    beqz	$a2,.L0d98aea4
    addu	$a0,$a0,$a1
    lw	$a1,0($a0)
    jr	$a1
    # Line 605
    nop	# was lw $t9, -31092($gp) # &__glOdysseyStoreLUT
.L0d98ae84:
    # Line 615
    # lw $t9, -31092($gp) # &__glOdysseyStoreLUT
    jal	__glOdysseyStoreLUT
    li	$a0,6
    move	$a0,$v0
.L0d98ae94:
    # Line 625
    beqz	$a0,.L0d98aea4
    # Line 628
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    nop
.L0d98aea4:
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 631
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98aeb8:
    # Line 605
    jalr	$t9
    li	$a0,4
    # Line 606
    b	.L0d98ae94
    # Line 605
    move	$a0,$v0
.L0d98aec8:
    # Line 621
    # lw $t9, -31092($gp) # &__glOdysseyStoreLUT
    jal	__glOdysseyStoreLUT
    li	$a0,7
    # Line 622
    b	.L0d98ae94
    # Line 621
    move	$a0,$v0
.end __glOdyim_PixelMapusv

# Function: __glOdysseyConvolutionFilter
# Declared: Line 634 (Source lines: 638-812)
# Address: 0x0d98aee0 - 0x0d98b754 (Size: 2164 bytes, Frame: 176)
.globl __glOdysseyConvolutionFilter
.ent __glOdysseyConvolutionFilter
__glOdysseyConvolutionFilter:
    # Line 638
    addiu	$sp,$sp,-176
    sd	$s4,104($sp)
    sd	$s7,80($sp)
    move	$v0,$a5
    sd	$s8,112($sp)
    move	$s8,$a7
    move	$s7,$a6
    sd	$s6,128($sp)
    move	$s6,$a4
    move	$s4,$a3
    sd	$s0,96($sp)
    move	$s0,$a2
    sd	$s2,136($sp)
    move	$s2,$a1
    sd	$s5,88($sp)
    # Line 647
    li	$at,0x8010
    # Line 638
    lui	$v1,0x17
    move	$s5,$a0
    sd	$s1,152($sp)
    addiu	$v1,$v1,-10576
    sd	$gp,120($sp)
    # Line 647
    beq	$a6,$at,.L0d98b57c
    # Line 638
    addu	$gp,$t9,$v1
    # Line 647
    lw	$s1,0($sp)
    li	$a0,0x8011
    sd	$a5,64($sp)
    # Line 652
    addiu	$a1,$s5,852
    xor	$a0,$a6,$a0
    sd	$ra,144($sp)
    movz	$s1,$a1,$a0
.L0d98af58:
    # Line 657
    sw	$s7,0($s1)
    # Line 663
    lw	$t9,0($s5)
    li	$a1,1936
    move	$a0,$s5
    jalr	$t9
    sd	$s3,160($sp)
    beqz	$v0,.L0d98b72c
    move	$s3,$v0
    # Line 669
    sltiu	$v0,$s4,6408
    bnez	$v0,.L0d98afd0
    sltiu	$a1,$s4,6409
    bnez	$a1,.L0d98afb8
    li	$v0,0x8000
    sltu	$a2,$s4,$v0
    bnez	$a2,.L0d98b5a4
    sltiu	$t8,$s4,6410
    sltu	$a3,$v0,$s4
    beqz	$a3,.L0d98afb8
    li	$v0,0x80e1
    sltu	$a4,$s4,$v0
    bnez	$a4,.L0d98b6c4
    sltu	$a5,$v0,$s4
    bnez	$a5,.L0d98b594
    # Line 694
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98afb8:
    # Line 687
    mult	$s2,$s0
    mflo	$a6
    sd	$a6,56($sp)
    sll	$a6,$a6,0x2
    # Line 688
    b	.L0d98b034
    sd	$a6,72($sp)
.L0d98afd0:
    # Line 669
    sltiu	$a0,$s4,6405
    bnez	$a0,.L0d98b010
    sltiu	$a7,$s4,6406
    bnez	$a7,.L0d98b024
    sltiu	$t0,$s4,6407
    bnez	$t0,.L0d98b694
    li	$a6,6406
    beqz	$v0,.L0d98b594
    # Line 694
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98aff4:
    # Line 681
    mult	$s2,$s0
    mflo	$t2
    sd	$t2,56($sp)
    sll	$t1,$t2,0x2
    subu	$t1,$t1,$t2
    # Line 682
    b	.L0d98b034
    sd	$t1,72($sp)
.L0d98b010:
    # Line 669
    sltiu	$t3,$s4,6404
    bnez	$t3,.L0d98b58c
    li	$t3,6403
    beqz	$a0,.L0d98b594
    # Line 694
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b024:
    # Line 676
    mult	$s2,$s0
    mflo	$t8
    sd	$t8,56($sp)
    sd	$t8,72($sp)
.L0d98b034:
    # Line 696
    beqz	$s8,.L0d98b108
    # Line 706
    nop	# was lw $t9, -26180($gp) # &__glFillImage
    # Line 701
    addiu	$a0,$sp,8
    addiu	$v0,$s5,1188
    lw	$t0,1228($s5)
    sw	$t0,40($a0)
    lw	$a6,1224($s5)
    sw	$a6,36($a0)
    lw	$a5,1220($s5)
    sw	$a5,32($a0)
    lw	$a4,1216($s5)
    sw	$a4,28($a0)
    lw	$a3,1212($s5)
    sw	$a3,24($a0)
    lw	$a2,1208($s5)
    sw	$a2,20($a0)
    lw	$a1,1204($s5)
    sw	$a1,16($a0)
    lw	$v1,1200($s5)
    sw	$v1,12($a0)
    lw	$at,1196($s5)
    sw	$at,8($a0)
    lw	$ra,1192($s5)
    sw	$ra,4($a0)
    addiu	$a6,$s5,1228
    lw	$t9,1188($s5)
    addiu	$a3,$s5,1224
    addiu	$a4,$s5,1220
    sw	$t9,8($sp)
    # Line 702
    la	$a0,__glOdyssey_InternalUnpack
    lw	$t0,0($a0)
    sw	$t0,1188($s5)
    lw	$a5,4($a0)
    sw	$a5,1192($s5)
    lw	$a2,8($a0)
    sw	$a2,1196($s5)
    lw	$a1,12($a0)
    sw	$a1,1200($s5)
    lw	$v1,16($a0)
    sw	$v1,1204($s5)
    lw	$at,20($a0)
    sw	$at,1208($s5)
    lw	$ra,24($a0)
    sw	$ra,1212($s5)
    lw	$t9,28($a0)
    sw	$t9,1216($s5)
    lw	$t8,32($a0)
    sw	$t8,1220($s5)
    lw	$t3,36($a0)
    sw	$t3,1224($s5)
    lw	$t1,40($a0)
    sw	$t1,1228($s5)
    # Line 706
    # lw $t9, -26180($gp) # &__glFillImage
.L0d98b108:
    move	$a0,$s5
    move	$a1,$s2
    move	$a2,$s0
    move	$a3,$s4
    ld	$a5,64($sp)
    move	$a4,$s6
    jal	__glFillImage
    lw	$a6,80($s1)
    beqz	$s8,.L0d98b18c
    # Line 710
    addiu	$a0,$s5,1188
    addiu	$v0,$sp,8
    lw	$t3,40($v0)
    lw	$a5,8($sp)
    sw	$a5,1188($s5)
    lw	$a2,4($v0)
    sw	$a2,1192($s5)
    lw	$a1,8($v0)
    sw	$a1,1196($s5)
    lw	$v1,12($v0)
    sw	$v1,1200($s5)
    lw	$at,16($v0)
    sw	$at,1204($s5)
    lw	$ra,20($v0)
    sw	$ra,1208($s5)
    lw	$t9,24($v0)
    sw	$t9,1212($s5)
    lw	$t8,28($v0)
    sw	$t8,1216($s5)
    sw	$t3,1228($s5)
    lw	$t2,36($v0)
    sw	$t2,1224($s5)
    lw	$t1,32($v0)
    sw	$t1,1220($s5)
.L0d98b18c:
    # Line 715
    li	$v0,0x8034
    sltu	$a6,$s6,$v0
    bnez	$a6,.L0d98b1e0
    sltu	$a7,$v0,$s6
    beqz	$a7,.L0d98b24c
    li	$v0,0x8364
    sltu	$t0,$s6,$v0
    bnez	$t0,.L0d98b5d0
    sltu	$t1,$v0,$s6
    beqz	$t1,.L0d98b210
    # Line 725
    li	$a0,6407
    # Line 715
    li	$v0,0x8367
    sltu	$t2,$s6,$v0
    bnez	$t2,.L0d98b6f8
    sltu	$t3,$v0,$s6
    beqz	$t3,.L0d98b24c
    li	$t8,0x8368
    beq	$s6,$t8,.L0d98b250
    # Line 742
    li	$s8,6408
    b	.L0d98b61c
    # Line 756
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b1e0:
    # Line 715
    sltiu	$t9,$s6,5124
    bnez	$t9,.L0d98b538
    sltiu	$ra,$s6,5125
    bnez	$ra,.L0d98b55c
    # Line 719
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    # Line 715
    li	$v0,0x8032
    sltu	$at,$s6,$v0
    bnez	$at,.L0d98b62c
    sltu	$v1,$v0,$s6
    bnez	$v1,.L0d98b6a4
    li	$a7,0x8033
.L0d98b20c:
    # Line 725
    li	$a0,6407
.L0d98b210:
    beq	$s4,$a0,.L0d98b6d8
    li	$a1,0x80e0
    beq	$s4,$a1,.L0d98b6d8
    # Line 731
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 733
    li	$s8,6408
.L0d98b22c:
    b	.L0d98b27c
    ld	$s6,56($sp)
.L0d98b234:
    # Line 715
    li	$v0,0x8036
    sltu	$a2,$s6,$v0
    bnez	$a2,.L0d98b718
    sltu	$a3,$v0,$s6
    bnez	$a3,.L0d98b61c
    # Line 756
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b24c:
    # Line 742
    li	$s8,6408
.L0d98b250:
    beq	$s8,$s4,.L0d98b668
    # Line 746
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    # Line 742
    li	$a4,0x8000
    beq	$s4,$a4,.L0d98b668
    # Line 746
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    # Line 742
    li	$a5,0x80e1
    beq	$s4,$a5,.L0d98b664
    # Line 749
    nop	# was lw $t9, -26792($gp) # &__glSetError
    ld	$s6,56($sp)
    jal	__glSetError
    li	$a0,1280
.L0d98b27c:
    # Line 758
    blez	$s2,.L0d98b440
    ld	$v0,72($sp)
    move	$t8,$zero
    b	.L0d98b418
    move	$a4,$zero
.L0d98b290:
    # Line 763
    lw	$t9,80($s1)
    lwc1	$f3,0($a5)
    addu	$t9,$t9,$a7
    swc1	$f3,0($t9)
    # Line 764
    lw	$t1,80($s1)
    lwc1	$f2,4($a5)
    addu	$t1,$t1,$a7
    swc1	$f2,4($t1)
    # Line 765
    lw	$t0,80($s1)
    lwc1	$f1,8($a5)
    addu	$t0,$t0,$a7
    swc1	$f1,8($t0)
    # Line 767
    addiu	$a5,$a5,16
    # Line 766
    lw	$a6,80($s1)
    # Line 762
    addiu	$t2,$t2,1
    addiu	$t3,$t3,-1
    # Line 766
    lwc1	$f0,-4($a5)
    # Line 767
    addiu	$a4,$a4,4
    # Line 766
    addu	$a6,$a6,$a7
    # Line 767
    addiu	$a7,$a7,16
    bnez	$t3,.L0d98b290
    # Line 766
    swc1	$f0,12($a6)
.L0d98b2e8:
    beqz	$ra,.L0d98b410
    nop
.L0d98b2f0:
    # Line 763
    lw	$a6,80($s1)
    lwc1	$f19,0($a5)
    addu	$a6,$a6,$a7
    swc1	$f19,0($a6)
    # Line 764
    lw	$a3,80($s1)
    lwc1	$f18,4($a5)
    addu	$a3,$a3,$a7
    swc1	$f18,4($a3)
    # Line 765
    lw	$a2,80($s1)
    lwc1	$f17,8($a5)
    addu	$a2,$a2,$a7
    swc1	$f17,8($a2)
    # Line 766
    lw	$a1,80($s1)
    lwc1	$f16,12($a5)
    addu	$a1,$a1,$a7
    swc1	$f16,12($a1)
    # Line 763
    lw	$a0,80($s1)
    # Line 767
    addiu	$ra,$a7,16
    # Line 763
    lwc1	$f15,16($a5)
    addu	$a0,$a0,$ra
    swc1	$f15,0($a0)
    # Line 764
    lw	$v1,80($s1)
    lwc1	$f14,20($a5)
    addu	$v1,$v1,$ra
    swc1	$f14,4($v1)
    # Line 765
    lw	$at,80($s1)
    lwc1	$f13,24($a5)
    addu	$at,$at,$ra
    swc1	$f13,8($at)
    # Line 766
    lw	$t9,80($s1)
    lwc1	$f12,28($a5)
    addu	$t9,$t9,$ra
    swc1	$f12,12($t9)
    # Line 763
    lw	$t3,80($s1)
    # Line 767
    addiu	$a6,$a7,32
    # Line 763
    lwc1	$f11,32($a5)
    addu	$t3,$t3,$a6
    swc1	$f11,0($t3)
    # Line 764
    lw	$t1,80($s1)
    lwc1	$f10,36($a5)
    addu	$t1,$t1,$a6
    swc1	$f10,4($t1)
    # Line 765
    lw	$t0,80($s1)
    lwc1	$f9,40($a5)
    addu	$t0,$t0,$a6
    swc1	$f9,8($t0)
    # Line 766
    lw	$a3,80($s1)
    lwc1	$f8,44($a5)
    addu	$a3,$a3,$a6
    swc1	$f8,12($a3)
    # Line 763
    lw	$a2,80($s1)
    # Line 767
    addiu	$v1,$a7,48
    # Line 763
    lwc1	$f7,48($a5)
    addu	$a2,$a2,$v1
    swc1	$f7,0($a2)
    # Line 764
    lw	$a1,80($s1)
    lwc1	$f6,52($a5)
    addu	$a1,$a1,$v1
    swc1	$f6,4($a1)
    # Line 765
    lw	$a0,80($s1)
    lwc1	$f5,56($a5)
    addu	$a0,$a0,$v1
    swc1	$f5,8($a0)
    # Line 767
    addiu	$a5,$a5,64
    # Line 766
    lw	$at,80($s1)
    # Line 762
    addiu	$t2,$t2,4
    # Line 766
    lwc1	$f4,-4($a5)
    # Line 767
    addiu	$a4,$a4,16
    # Line 766
    addu	$at,$at,$v1
    # Line 767
    addiu	$a7,$a7,64
    # Line 762
    bne	$s0,$t2,.L0d98b2f0
    # Line 766
    swc1	$f4,12($at)
.L0d98b410:
    # Line 761
    beq	$s2,$t8,.L0d98b440
    nop
.L0d98b418:
    # Line 758
    blez	$s0,.L0d98b410
    # Line 761
    addiu	$t8,$t8,1
    sra	$ra,$s0,0x2
    andi	$t3,$s0,0x3
    # Line 758
    move	$t2,$zero
    sll	$a7,$a4,0x2
    bnez	$t3,.L0d98b290
    addu	$a5,$a7,$s3
    b	.L0d98b2e8
    nop
.L0d98b440:
    # Line 773
    lw	$a0,80($s1)
    # Line 777
    move	$a3,$s4
    # lw $t9, -31256($gp) # &__glOdysseyCvtToRGBA
    move	$a2,$s6
    sll	$a1,$s6,0x4
    addu	$a1,$a0,$a1
    sll	$a4,$v0,0x2
    jal	__glOdysseyCvtToRGBA
    addu	$a0,$a0,$a4
    # Line 784
    # lw $t9, -31264($gp) # &__glOdysseyScaleBiasFilter
    move	$a0,$s1
    move	$a1,$s6
    jal	__glOdysseyScaleBiasFilter
    lw	$a2,80($s1)
    # Line 793
    lw	$a2,8($s1)
    li	$a3,6406
    beq	$a2,$a3,.L0d98b4f4
    li	$a4,6407
    beq	$a2,$a4,.L0d98b4f8
    # Line 800
    nop	# was lw $t9, -31244($gp) # &__glOdysseyCvtToInternalFmt
    # Line 793
    beq	$s8,$a2,.L0d98b4f4
    li	$a5,6409
    beq	$a2,$a5,.L0d98b4f4
    li	$a6,6410
    beq	$a2,$a6,.L0d98b4f8
    # Line 800
    nop	# was lw $t9, -31244($gp) # &__glOdysseyCvtToInternalFmt
    # Line 793
    li	$a7,0x8049
    beq	$a2,$a7,.L0d98b4f8
    # Line 800
    nop	# was lw $t9, -31244($gp) # &__glOdysseyCvtToInternalFmt
    # Line 805
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$s3,160($sp)
.L0d98b4c4:
    ld	$s1,152($sp)
    # Line 695
    ld	$gp,120($sp)
    ld	$s0,96($sp)
    ld	$s2,136($sp)
    ld	$s4,104($sp)
    ld	$s5,88($sp)
    ld	$ra,144($sp)
    ld	$s6,128($sp)
    ld	$s7,80($sp)
    ld	$s8,112($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d98b4f4:
    # Line 800
    # lw $t9, -31244($gp) # &__glOdysseyCvtToInternalFmt
.L0d98b4f8:
    move	$a1,$s6
    jal	__glOdysseyCvtToInternalFmt
    lw	$a0,80($s1)
    # Line 802
    li	$t0,4
    sw	$t0,12($s1)
    beqz	$s3,.L0d98b524
    # Line 801
    sw	$s8,8($s1)
    # Line 809
    lw	$t9,12($s5)
    move	$a0,$s5
    jalr	$t9
    move	$a1,$s3
.L0d98b524:
    # Line 812
    # lw $t9, -31260($gp) # &__glOdysseyInitConvolutionState
    jal	__glOdysseyInitConvolutionState
    move	$a0,$s7
    b	.L0d98b4c4
    ld	$s3,160($sp)
.L0d98b538:
    # Line 715
    sltiu	$v0,$s6,5122
    bnez	$v0,.L0d98b5f8
    sltiu	$a1,$s6,5121
    sltiu	$t1,$s6,5123
    bnez	$t1,.L0d98b55c
    # Line 719
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    # Line 715
    li	$t2,5123
    bne	$s6,$t2,.L0d98b618
    # Line 719
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
.L0d98b55c:
    move	$a3,$s6
    ld	$a2,72($sp)
    move	$a1,$s3
    jal	__glOdysseyCvtToFloat
    lw	$a0,80($s1)
    li	$s8,6408
    b	.L0d98b27c
    ld	$s6,56($sp)
.L0d98b57c:
    sd	$a5,64($sp)
    # Line 649
    addiu	$s1,$a0,768
    b	.L0d98af58
    sd	$ra,144($sp)
.L0d98b58c:
    # Line 669
    beq	$s4,$t3,.L0d98b024
    # Line 694
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b594:
    jal	__glSetError
    li	$a0,1280
    b	.L0d98b4c4
    ld	$s3,160($sp)
.L0d98b5a4:
    # Line 669
    bnez	$t8,.L0d98b684
    li	$a5,6409
    sltiu	$t9,$s4,6411
    beqz	$t9,.L0d98b594
    # Line 694
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 691
    mult	$s2,$s0
    mflo	$ra
    sd	$ra,56($sp)
    addu	$ra,$ra,$ra
    # Line 692
    b	.L0d98b034
    sd	$ra,72($sp)
.L0d98b5d0:
    # Line 715
    li	$v0,0x8362
    sltu	$at,$s6,$v0
    bnez	$at,.L0d98b234
    sltu	$v1,$v0,$s6
    beqz	$v1,.L0d98b20c
    li	$a0,0x8363
    beq	$s6,$a0,.L0d98b210
    # Line 725
    li	$a0,6407
    b	.L0d98b61c
    # Line 756
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b5f8:
    # Line 715
    bnez	$a1,.L0d98b610
    li	$a2,5120
    bnez	$v0,.L0d98b55c
    # Line 719
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    b	.L0d98b61c
    # Line 756
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b610:
    # Line 715
    beq	$s6,$a2,.L0d98b55c
    # Line 719
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
.L0d98b618:
    # Line 756
    # lw $t9, -26792($gp) # &__glSetError
.L0d98b61c:
    jal	__glSetError
    li	$a0,1280
    b	.L0d98b4c4
    ld	$s3,160($sp)
.L0d98b62c:
    # Line 715
    sltiu	$a3,$s6,5126
    bnez	$a3,.L0d98b6b4
    li	$t0,5125
    sltiu	$a4,$s6,5127
    beqz	$a4,.L0d98b618
    # Line 753
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    move	$a3,$s6
    ld	$a2,72($sp)
    move	$a1,$s3
    jal	__glOdysseyCvtToFloat
    lw	$a0,80($s1)
    # Line 754
    li	$s8,6408
    b	.L0d98b27c
    ld	$s6,56($sp)
.L0d98b664:
    # Line 746
    # lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
.L0d98b668:
    move	$a3,$s6
    ld	$a2,72($sp)
    move	$a1,$s3
    jal	__glOdysseyCvtToFloat
    lw	$a0,80($s1)
    b	.L0d98b27c
    ld	$s6,56($sp)
.L0d98b684:
    # Line 669
    beq	$s4,$a5,.L0d98b024
    nop
    b	.L0d98b594
    # Line 694
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b694:
    # Line 669
    beq	$s4,$a6,.L0d98b024
    nop
    b	.L0d98b594
    # Line 694
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b6a4:
    # Line 715
    beq	$s6,$a7,.L0d98b250
    # Line 742
    li	$s8,6408
    b	.L0d98b61c
    # Line 756
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b6b4:
    # Line 715
    beq	$s6,$t0,.L0d98b55c
    # Line 719
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    b	.L0d98b61c
    # Line 756
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b6c4:
    # Line 669
    li	$t1,0x80e0
    beq	$s4,$t1,.L0d98aff4
    nop
    b	.L0d98b594
    # Line 694
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b6d8:
    # Line 728
    # lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    move	$a3,$s6
    ld	$a2,72($sp)
    move	$a1,$s3
    jal	__glOdysseyCvtToFloat
    lw	$a0,80($s1)
    b	.L0d98b22c
    # Line 733
    li	$s8,6408
.L0d98b6f8:
    # Line 715
    li	$v0,0x8366
    sltu	$t2,$s6,$v0
    bnez	$t2,.L0d98b740
    sltu	$t3,$v0,$s6
    beqz	$t3,.L0d98b250
    # Line 742
    li	$s8,6408
    b	.L0d98b61c
    # Line 756
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b718:
    # Line 715
    li	$t8,0x8035
    beq	$s6,$t8,.L0d98b250
    # Line 742
    li	$s8,6408
    b	.L0d98b61c
    # Line 756
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b72c:
    # Line 665
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d98b4c4
    ld	$s3,160($sp)
.L0d98b740:
    # Line 715
    li	$t9,0x8365
    beq	$s6,$t9,.L0d98b250
    # Line 742
    li	$s8,6408
    b	.L0d98b61c
    # Line 756
    nop	# was lw $t9, -26792($gp) # &__glSetError
.end __glOdysseyConvolutionFilter

# Function: __glOdysseySeparableFilter
# Declared: Line 817 (Source lines: 822-1083)
# Address: 0x0d98b760 - 0x0d98c550 (Size: 3568 bytes, Frame: 128)
.globl __glOdysseySeparableFilter
.ent __glOdysseySeparableFilter
__glOdysseySeparableFilter:
    # Line 822
    addiu	$sp,$sp,-256
    sd	$a7,48($sp)
    sd	$a6,64($sp)
    sd	$a5,88($sp)
    sd	$ra,128($sp)
    sd	$s2,104($sp)
    sd	$s3,112($sp)
    sd	$s1,152($sp)
    move	$s1,$a4
    sd	$s4,136($sp)
    move	$s4,$a3
    sd	$gp,160($sp)
    lui	$v0,0x17
    move	$s3,$a2
    sd	$s6,120($sp)
    addiu	$v0,$v0,-12752
    # Line 849
    addu	$s6,$a2,$a1
    # Line 822
    addu	$gp,$t9,$v0
    # Line 849
    lw	$t9,8($a0)
    # Line 822
    sd	$s0,144($sp)
    move	$s0,$a0
    # Line 849
    sll	$at,$s6,0x4
    # Line 822
    move	$s2,$a1
    # Line 849
    lw	$a1,1016($s0)
    addiu	$at,$at,1936
    sd	$at,96($sp)
    jalr	$t9
    move	$a2,$at
    beqz	$v0,.L0d98bbd8
    sw	$v0,1016($s0)
    # Line 861
    ld	$a1,96($sp)
    # Line 859
    sd	$s3,168($sp)
    # Line 861
    lw	$t9,0($s0)
    sd	$s5,176($sp)
    ld	$v1,48($sp)
    move	$a0,$s0
    jalr	$t9
    # Line 855
    sw	$v1,936($s0)
    ld	$a1,168($sp)
    # Line 861
    beqz	$v0,.L0d98c3e4
    move	$s5,$v0
    # Line 867
    sltiu	$v0,$s4,6408
    bnez	$v0,.L0d98b854
    sltiu	$a3,$s4,6409
    bnez	$a3,.L0d98b844
    li	$v0,0x8000
    sltu	$a4,$s4,$v0
    bnez	$a4,.L0d98c298
    sltu	$a5,$v0,$s4
    beqz	$a5,.L0d98b848
    # Line 887
    sll	$a1,$s3,0x2
    # Line 867
    li	$v0,0x80e1
    sltu	$a6,$s4,$v0
    bnez	$a6,.L0d98c48c
    sltu	$a7,$v0,$s4
    bnez	$a7,.L0d98c250
    # Line 895
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b844:
    # Line 887
    sll	$a1,$s3,0x2
.L0d98b848:
    # Line 885
    sll	$t0,$s6,0x2
    # Line 888
    b	.L0d98b8a8
    sd	$t0,80($sp)
.L0d98b854:
    # Line 867
    sltiu	$a2,$s4,6405
    bnez	$a2,.L0d98b894
    sltiu	$a3,$s4,6404
    sltiu	$t1,$s4,6406
    bnez	$t1,.L0d98b8a4
    sltiu	$t2,$s4,6407
    bnez	$t2,.L0d98c430
    li	$a3,6406
    beqz	$v0,.L0d98c250
    # Line 895
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 880
    sll	$a1,$s3,0x2
.L0d98b880:
    # Line 878
    sll	$t3,$s6,0x2
    # Line 880
    subu	$a1,$a1,$s3
    # Line 878
    subu	$t3,$t3,$s6
    # Line 881
    b	.L0d98b8a8
    sd	$t3,80($sp)
.L0d98b894:
    # Line 867
    bnez	$a3,.L0d98c248
    li	$at,6403
    beqz	$a2,.L0d98c250
    # Line 895
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b8a4:
    sd	$s6,80($sp)
.L0d98b8a8:
    # Line 900
    li	$t8,0x8034
    sltu	$v0,$s1,$t8
    bnez	$v0,.L0d98b900
    sltiu	$t3,$s1,5124
    sltu	$a5,$t8,$s1
    beqz	$a5,.L0d98b988
    sd	$v0,56($sp)
    li	$v0,0x8364
    sltu	$a6,$s1,$v0
    bnez	$a6,.L0d98b968
    sltu	$a7,$v0,$s1
    beqz	$a7,.L0d98b988
    li	$v0,0x8367
    sltu	$t0,$s1,$v0
    bnez	$t0,.L0d98c4a0
    sltu	$t1,$v0,$s1
    beqz	$t1,.L0d98c394
    li	$t2,0x8368
    beq	$s1,$t2,.L0d98c398
    # Line 930
    srl	$v0,$a1,0x1f
    b	.L0d98c310
    # Line 942
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b900:
    # Line 900
    bnez	$t3,.L0d98c214
    sd	$v0,56($sp)
    sltiu	$t9,$s1,5125
    bnez	$t9,.L0d98c2c4
    li	$v0,0x8032
    sltu	$ra,$s1,$v0
    bnez	$ra,.L0d98c440
    sltiu	$a4,$s1,5126
    sltu	$at,$v0,$s1
    bnez	$at,.L0d98c308
    li	$t0,0x8033
.L0d98b92c:
    # Line 909
    srl	$v1,$a1,0x1f
    li	$a3,0xaaaa
    negu	$a2,$a1
    dsll	$a3,$a3,0x10
    movz	$a2,$a1,$v1
    ori	$a3,$a3,0xaaab
    multu	$a2,$a3
    mfhi	$a0
    sra	$a0,$a0,0x1
    lw	$a6,1016($s0)
    negu	$v0,$a0
    movz	$v0,$a0,$v1
    addu	$v0,$a6,$v0
    # Line 910
    b	.L0d98b9a0
    sd	$v0,72($sp)
.L0d98b968:
    # Line 900
    li	$v0,0x8362
    sltu	$a4,$s1,$v0
    bnez	$a4,.L0d98c380
    sltu	$a5,$v0,$s1
    beqz	$a5,.L0d98b92c
    li	$a6,0x8363
    bne	$s1,$a6,.L0d98c310
    # Line 942
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98b988:
    # Line 918
    srl	$a7,$a1,0x1f
.L0d98b98c:
    lw	$a6,1016($s0)
    addu	$a7,$a7,$a1
    sra	$a7,$a7,0x1
    addu	$a7,$a6,$a7
    sd	$a7,72($sp)
.L0d98b9a0:
    # Line 944
    lbu	$t0,263($sp)
    beqz	$t0,.L0d98ba74
    ld	$t2,64($sp)
    # Line 948
    addiu	$t3,$sp,0
    addiu	$v0,$s0,1188
    lw	$t0,1228($s0)
    sw	$t0,40($sp)
    lw	$a7,1224($s0)
    sw	$a7,36($sp)
    lw	$a5,1220($s0)
    sw	$a5,32($sp)
    lw	$a4,1216($s0)
    sw	$a4,28($sp)
    lw	$a3,1212($s0)
    sw	$a3,24($sp)
    lw	$a2,1208($s0)
    sw	$a2,20($sp)
    lw	$a1,1204($s0)
    sw	$a1,16($sp)
    lw	$a0,1200($s0)
    sw	$a0,12($sp)
    lw	$v1,1196($s0)
    sw	$v1,8($sp)
    lw	$at,1192($s0)
    sw	$at,4($sp)
    addiu	$a4,$s0,1228
    lw	$t1,1188($s0)
    addiu	$a3,$s0,1224
    addiu	$a1,$s0,1220
    sw	$t1,0($sp)
    # Line 949
    la	$t3,__glOdyssey_InternalUnpack
    lw	$v1,0($t3)
    sw	$v1,1188($s0)
    lw	$at,4($t3)
    sw	$at,1192($s0)
    lw	$t1,8($t3)
    sw	$t1,1196($s0)
    lw	$t0,12($t3)
    sw	$t0,1200($s0)
    lw	$a7,16($t3)
    sw	$a7,1204($s0)
    lw	$a5,20($t3)
    sw	$a5,1208($s0)
    lw	$a2,24($t3)
    sw	$a2,1212($s0)
    lw	$a0,28($t3)
    sw	$a0,1216($s0)
    lw	$v1,32($t3)
    sw	$v1,1220($s0)
    lw	$at,36($t3)
    sw	$at,1224($s0)
    lw	$t1,40($t3)
    sw	$t1,1228($s0)
.L0d98ba74:
    # Line 953
    move	$a0,$s0
    # lw $t9, -26180($gp) # &__glFillImage
    move	$a1,$s3
    move	$a5,$t2
    move	$a4,$s1
    move	$a3,$s4
    jal	__glFillImage
    li	$a2,1
    # Line 955
    # lw $t9, -26180($gp) # &__glFillImage
    move	$a0,$s0
    move	$a1,$s2
    ld	$a6,72($sp)
    move	$a4,$s1
    move	$a3,$s4
    ld	$a5,88($sp)
    jal	__glFillImage
    li	$a2,1
    lbu	$a0,263($sp)
    beqz	$a0,.L0d98bb20
    # Line 960
    addiu	$a1,$s0,1188
    addiu	$v0,$sp,0
    lw	$a6,40($sp)
    lw	$ra,0($sp)
    sw	$ra,1188($s0)
    lw	$t9,4($sp)
    sw	$t9,1192($s0)
    lw	$t8,8($sp)
    sw	$t8,1196($s0)
    lw	$t3,12($sp)
    sw	$t3,1200($s0)
    lw	$t2,16($sp)
    sw	$t2,1204($s0)
    lw	$t1,20($sp)
    sw	$t1,1208($s0)
    lw	$t0,24($sp)
    sw	$t0,1212($s0)
    lw	$a7,28($sp)
    sw	$a7,1216($s0)
    sw	$a6,1228($s0)
    lw	$a5,36($sp)
    sw	$a5,1224($s0)
    lw	$a2,32($sp)
    sw	$a2,1220($s0)
.L0d98bb20:
    # Line 966
    ld	$at,56($sp)
    bnez	$at,.L0d98bb7c
    li	$v0,0x8034
    sltu	$v0,$v0,$s1
    beqz	$v0,.L0d98bc94
    # Line 993
    li	$v0,6408
    # Line 966
    li	$v0,0x8364
    sltu	$v1,$s1,$v0
    bnez	$v1,.L0d98c324
    sltu	$a0,$v0,$s1
    beqz	$a0,.L0d98bbb4
    # Line 976
    li	$t0,6407
    # Line 966
    li	$v0,0x8367
    sltu	$a1,$s1,$v0
    bnez	$a1,.L0d98c4f4
    sltu	$a2,$v0,$s1
    beqz	$a2,.L0d98bc94
    # Line 993
    li	$v0,6408
    # Line 966
    li	$a3,0x8368
    beq	$s1,$a3,.L0d98bc94
    # Line 993
    li	$v0,6408
    b	.L0d98c36c
    # Line 1007
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98bb7c:
    # Line 966
    sltiu	$a4,$s1,5124
    bnez	$a4,.L0d98c1d4
    sltiu	$v0,$s1,5122
    sltiu	$a5,$s1,5125
    bnez	$a5,.L0d98c1f8
    # Line 970
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    # Line 966
    li	$v0,0x8032
    sltu	$a6,$s1,$v0
    bnez	$a6,.L0d98c3b4
    sltiu	$v1,$s1,5126
    sltu	$a7,$v0,$s1
    bnez	$a7,.L0d98c468
    li	$t0,0x8033
.L0d98bbb0:
    # Line 976
    li	$t0,6407
.L0d98bbb4:
    beq	$s4,$t0,.L0d98c4d4
    li	$t1,0x80e0
    beq	$s4,$t1,.L0d98c4d8
    # Line 979
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    # Line 982
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d98bbd0:
    # Line 984
    b	.L0d98bcc4
    # Line 1017
    nop	# was lw $t9, -31256($gp) # &__glOdysseyCvtToRGBA
.L0d98bbd8:
    # Line 851
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d98bc54
    ld	$s2,104($sp)
.L0d98bbec:
    # Line 1057
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s5
    # Line 1066
    lw	$a2,944($s0)
    li	$t2,6406
    ld	$s5,176($sp)
    beq	$a2,$t2,.L0d98c264
    li	$s2,6408
    li	$t3,6407
    beq	$a2,$t3,.L0d98c268
    # Line 1073
    nop	# was lw $t9, -31244($gp) # &__glOdysseyCvtToInternalFmt
    # Line 1066
    beq	$s2,$a2,.L0d98c268
    # Line 1073
    nop	# was lw $t9, -31244($gp) # &__glOdysseyCvtToInternalFmt
    # Line 1066
    li	$t8,6409
    beq	$a2,$t8,.L0d98c268
    # Line 1073
    nop	# was lw $t9, -31244($gp) # &__glOdysseyCvtToInternalFmt
    # Line 1066
    li	$t9,6410
    beq	$a2,$t9,.L0d98c268
    # Line 1073
    nop	# was lw $t9, -31244($gp) # &__glOdysseyCvtToInternalFmt
    # Line 1066
    li	$ra,0x8049
    beq	$a2,$ra,.L0d98c264
    # Line 1078
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$s2,104($sp)
.L0d98bc54:
    ld	$s3,112($sp)
    ld	$s6,120($sp)
    ld	$s4,136($sp)
    ld	$ra,128($sp)
    ld	$s0,144($sp)
    ld	$s1,152($sp)
    # Line 896
    ld	$gp,160($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0d98bc78:
    # Line 966
    li	$v0,0x8036
    sltu	$at,$s1,$v0
    bnez	$at,.L0d98c514
    sltu	$v1,$v0,$s1
    bnez	$v1,.L0d98c36c
    # Line 1007
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 993
    li	$v0,6408
.L0d98bc94:
    beq	$v0,$s4,.L0d98c400
    # Line 997
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    # Line 993
    li	$a0,0x8000
    beq	$s4,$a0,.L0d98c400
    # Line 997
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    # Line 993
    li	$a1,0x80e1
    beq	$s4,$a1,.L0d98c400
    # Line 997
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    # Line 1000
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1017
    # lw $t9, -31256($gp) # &__glOdysseyCvtToRGBA
.L0d98bcc4:
    move	$a3,$s4
    sll	$s1,$s6,0x4
    ld	$a0,80($sp)
    move	$a2,$s6
    addu	$s1,$s5,$s1
    move	$a1,$s1
    sll	$a0,$a0,0x2
    jal	__glOdysseyCvtToRGBA
    addu	$a0,$s5,$a0
    # Line 1024
    # lw $t9, -31264($gp) # &__glOdysseyScaleBiasFilter
    move	$a2,$s5
    move	$a1,$s6
    jal	__glOdysseyScaleBiasFilter
    addiu	$a0,$s0,936
    # Line 1032
    mult	$s3,$s2
    slt	$a1,$s3,$s6
    mflo	$s4
    beqz	$a1,.L0d98beac
    sll	$a3,$s4,0x2
    sll	$a5,$s4,0x4
    andi	$v0,$s2,0x3
    sll	$a4,$s3,0x4
    beqz	$v0,.L0d98bd78
    addu	$a4,$s5,$a4
.L0d98bd24:
    # Line 1034
    lw	$t1,1016($s0)
    lwc1	$f3,0($a4)
    addu	$t1,$t1,$a5
    swc1	$f3,0($t1)
    # Line 1035
    lw	$t0,1016($s0)
    lwc1	$f2,4($a4)
    addu	$t0,$t0,$a5
    swc1	$f2,4($t0)
    # Line 1036
    lw	$a7,1016($s0)
    lwc1	$f1,8($a4)
    addu	$a7,$a7,$a5
    swc1	$f1,8($a7)
    # Line 1037
    lw	$a6,1016($s0)
    addiu	$v0,$v0,-1
    addiu	$a5,$a5,16
    lwc1	$f0,12($a4)
    # Line 1033
    addiu	$a4,$a4,16
    # Line 1037
    addu	$a6,$a6,$a5
    addiu	$a3,$a3,4
    bnez	$v0,.L0d98bd24
    swc1	$f0,-4($a6)
.L0d98bd78:
    sra	$t2,$s2,0x2
    beqz	$t2,.L0d98beac
    nop
    nop
    nop
    nop
.L0d98bd90:
    # Line 1034
    lw	$ra,1016($s0)
    lwc1	$f19,0($a4)
    addu	$ra,$ra,$a5
    swc1	$f19,0($ra)
    # Line 1035
    lw	$t9,1016($s0)
    lwc1	$f18,4($a4)
    addu	$t9,$t9,$a5
    swc1	$f18,4($t9)
    # Line 1036
    lw	$t8,1016($s0)
    lwc1	$f17,8($a4)
    addu	$t8,$t8,$a5
    swc1	$f17,8($t8)
    # Line 1037
    lw	$t3,1016($s0)
    addiu	$t0,$a5,16
    lwc1	$f16,12($a4)
    addu	$t3,$t3,$t0
    swc1	$f16,-4($t3)
    # Line 1034
    lw	$t2,1016($s0)
    lwc1	$f15,16($a4)
    addu	$t2,$t2,$t0
    swc1	$f15,0($t2)
    # Line 1035
    lw	$t1,1016($s0)
    lwc1	$f14,20($a4)
    addu	$t1,$t1,$t0
    swc1	$f14,4($t1)
    # Line 1036
    lw	$a7,1016($s0)
    lwc1	$f13,24($a4)
    addu	$a7,$a7,$t0
    swc1	$f13,8($a7)
    # Line 1037
    lw	$a6,1016($s0)
    addiu	$a0,$a5,32
    lwc1	$f12,28($a4)
    addu	$a6,$a6,$a0
    swc1	$f12,-4($a6)
    # Line 1034
    lw	$a2,1016($s0)
    lwc1	$f11,32($a4)
    addu	$a2,$a2,$a0
    swc1	$f11,0($a2)
    # Line 1035
    lw	$a1,1016($s0)
    lwc1	$f10,36($a4)
    addu	$a1,$a1,$a0
    swc1	$f10,4($a1)
    # Line 1036
    lw	$v1,1016($s0)
    lwc1	$f9,40($a4)
    addu	$v1,$v1,$a0
    swc1	$f9,8($v1)
    # Line 1037
    lw	$v0,1016($s0)
    addiu	$t9,$a5,48
    lwc1	$f8,44($a4)
    addu	$v0,$v0,$t9
    swc1	$f8,-4($v0)
    # Line 1034
    lw	$at,1016($s0)
    lwc1	$f7,48($a4)
    addu	$at,$at,$t9
    swc1	$f7,0($at)
    # Line 1035
    lw	$ra,1016($s0)
    lwc1	$f6,52($a4)
    addu	$ra,$ra,$t9
    swc1	$f6,4($ra)
    # Line 1036
    lw	$t8,1016($s0)
    lwc1	$f5,56($a4)
    addu	$t8,$t8,$t9
    swc1	$f5,8($t8)
    # Line 1033
    addiu	$a4,$a4,64
    # Line 1037
    lw	$t3,1016($s0)
    addiu	$a5,$a5,64
    lwc1	$f4,-4($a4)
    addu	$t3,$t3,$a5
    addiu	$a3,$a3,16
    # Line 1033
    bne	$a4,$s1,.L0d98bd90
    # Line 1037
    swc1	$f4,-4($t3)
.L0d98beac:
    # Line 1033
    blez	$s3,.L0d98bbec
    sll	$a5,$a3,0x2
    andi	$v0,$s3,0x3
    move	$a4,$s5
    sll	$t3,$s3,0x4
    beqz	$v0,.L0d98bf18
    addu	$t3,$s5,$t3
.L0d98bec8:
    # Line 1040
    lw	$at,1016($s0)
    lwc1	$f27,0($a4)
    addu	$at,$at,$a5
    swc1	$f27,0($at)
    # Line 1041
    lw	$ra,1016($s0)
    lwc1	$f25,4($a4)
    addu	$ra,$ra,$a5
    swc1	$f25,4($ra)
    # Line 1042
    lw	$t9,1016($s0)
    lwc1	$f23,8($a4)
    addu	$t9,$t9,$a5
    swc1	$f23,8($t9)
    # Line 1043
    lw	$t8,1016($s0)
    addiu	$v0,$v0,-1
    addiu	$a5,$a5,16
    lwc1	$f21,12($a4)
    addu	$t8,$t8,$a5
    # Line 1039
    addiu	$a4,$a4,16
    bnez	$v0,.L0d98bec8
    # Line 1043
    swc1	$f21,-4($t8)
.L0d98bf18:
    sra	$v0,$s3,0x2
    beqz	$v0,.L0d98c048
    move	$a3,$a4
    nop
    nop
    nop
.L0d98bf30:
    # Line 1040
    lw	$a2,1016($s0)
    lwc1	$f13,0($a3)
    addu	$a2,$a2,$a5
    swc1	$f13,0($a2)
    # Line 1041
    lw	$a1,1016($s0)
    lwc1	$f12,4($a3)
    addu	$a1,$a1,$a5
    swc1	$f12,4($a1)
    # Line 1042
    lw	$a0,1016($s0)
    lwc1	$f11,8($a3)
    addu	$a0,$a0,$a5
    swc1	$f11,8($a0)
    # Line 1043
    lw	$v1,1016($s0)
    addiu	$ra,$a5,16
    lwc1	$f10,12($a3)
    addu	$v1,$v1,$ra
    swc1	$f10,-4($v1)
    # Line 1040
    lw	$v0,1016($s0)
    lwc1	$f9,16($a3)
    addu	$v0,$v0,$ra
    swc1	$f9,0($v0)
    # Line 1041
    lw	$at,1016($s0)
    lwc1	$f8,20($a3)
    addu	$at,$at,$ra
    swc1	$f8,4($at)
    # Line 1042
    lw	$t9,1016($s0)
    lwc1	$f7,24($a3)
    addu	$t9,$t9,$ra
    swc1	$f7,8($t9)
    # Line 1043
    lw	$t8,1016($s0)
    addiu	$t0,$a5,32
    lwc1	$f6,28($a3)
    addu	$t8,$t8,$t0
    swc1	$f6,-4($t8)
    # Line 1040
    lw	$t2,1016($s0)
    lwc1	$f5,32($a3)
    addu	$t2,$t2,$t0
    swc1	$f5,0($t2)
    # Line 1041
    lw	$t1,1016($s0)
    lwc1	$f4,36($a3)
    addu	$t1,$t1,$t0
    swc1	$f4,4($t1)
    # Line 1042
    lw	$a7,1016($s0)
    lwc1	$f3,40($a3)
    addu	$a7,$a7,$t0
    swc1	$f3,8($a7)
    # Line 1043
    lw	$a6,1016($s0)
    addiu	$a1,$a5,48
    lwc1	$f2,44($a3)
    addu	$a6,$a6,$a1
    swc1	$f2,-4($a6)
    # Line 1040
    lw	$a4,1016($s0)
    lwc1	$f1,48($a3)
    addu	$a4,$a4,$a1
    swc1	$f1,0($a4)
    # Line 1041
    lw	$a2,1016($s0)
    lwc1	$f0,52($a3)
    addu	$a2,$a2,$a1
    swc1	$f0,4($a2)
    # Line 1042
    lw	$a0,1016($s0)
    lwc1	$f31,56($a3)
    addu	$a0,$a0,$a1
    swc1	$f31,8($a0)
    # Line 1039
    addiu	$a3,$a3,64
    # Line 1043
    lw	$v1,1016($s0)
    addiu	$a5,$a5,64
    lwc1	$f29,-4($a3)
    addu	$v1,$v1,$a5
    # Line 1039
    bne	$a3,$t3,.L0d98bf30
    # Line 1043
    swc1	$f29,-4($v1)
.L0d98c048:
    # Line 1047
    move	$a6,$s5
    move	$t2,$zero
    b	.L0d98c14c
    move	$a3,$zero
    nop
    nop
.L0d98c060:
    sra	$a7,$s2,0x1
    beqz	$a7,.L0d98c144
    nop
    nop
.L0d98c070:
    # Line 1050
    lwc1	$f2,0($a6)
    lwc1	$f3,0($a4)
    lw	$a0,1016($s0)
    mul.s	$f2,$f2,$f3
    addu	$a0,$a0,$a5
    swc1	$f2,0($a0)
    # Line 1051
    lwc1	$f0,4($a6)
    lwc1	$f1,4($a4)
    lw	$v1,1016($s0)
    mul.s	$f0,$f0,$f1
    addu	$v1,$v1,$a5
    swc1	$f0,4($v1)
    # Line 1052
    lwc1	$f29,8($a6)
    lwc1	$f31,8($a4)
    lw	$v0,1016($s0)
    mul.s	$f29,$f29,$f31
    addu	$v0,$v0,$a5
    swc1	$f29,8($v0)
    # Line 1053
    lwc1	$f25,12($a6)
    lwc1	$f27,12($a4)
    lw	$at,1016($s0)
    addiu	$t8,$a5,16
    mul.s	$f25,$f25,$f27
    addu	$at,$at,$t8
    swc1	$f25,-4($at)
    # Line 1050
    lwc1	$f21,0($a6)
    lwc1	$f23,16($a4)
    lw	$ra,1016($s0)
    mul.s	$f21,$f21,$f23
    addu	$ra,$ra,$t8
    swc1	$f21,0($ra)
    # Line 1051
    lwc1	$f18,4($a6)
    lwc1	$f19,20($a4)
    lw	$t9,1016($s0)
    mul.s	$f18,$f18,$f19
    addu	$t9,$t9,$t8
    swc1	$f18,4($t9)
    # Line 1052
    lwc1	$f16,8($a6)
    lwc1	$f17,24($a4)
    lw	$t1,1016($s0)
    mul.s	$f16,$f16,$f17
    addu	$t1,$t1,$t8
    swc1	$f16,8($t1)
    # Line 1053
    lwc1	$f14,12($a6)
    lwc1	$f15,28($a4)
    lw	$t0,1016($s0)
    # Line 1049
    addiu	$a4,$a4,32
    # Line 1053
    addiu	$a5,$a5,32
    mul.s	$f14,$f14,$f15
    addu	$t0,$t0,$a5
    addiu	$a3,$a3,8
    # Line 1049
    bne	$a4,$s1,.L0d98c070
    # Line 1053
    swc1	$f14,-4($t0)
.L0d98c144:
    # Line 1048
    beq	$s3,$t2,.L0d98bbec
    addiu	$a6,$a6,16
.L0d98c14c:
    # Line 1047
    blez	$s2,.L0d98c144
    # Line 1048
    addiu	$t2,$t2,1
    # Line 1047
    sll	$a5,$a3,0x2
    andi	$a1,$s2,0x1
    beqz	$a1,.L0d98c060
    move	$a4,$t3
    # Line 1050
    lwc1	$f11,0($t3)
    lwc1	$f10,0($a6)
    lw	$t0,1016($s0)
    addu	$t0,$t0,$a5
    mul.s	$f10,$f10,$f11
    swc1	$f10,0($t0)
    # Line 1051
    lwc1	$f9,4($t3)
    lwc1	$f8,4($a6)
    lw	$a7,1016($s0)
    addu	$a7,$a7,$a5
    mul.s	$f8,$f8,$f9
    swc1	$f8,4($a7)
    # Line 1052
    lwc1	$f7,8($t3)
    lwc1	$f6,8($a6)
    lw	$a4,1016($s0)
    addu	$a4,$a4,$a5
    mul.s	$f6,$f6,$f7
    swc1	$f6,8($a4)
    # Line 1053
    lwc1	$f5,12($t3)
    lwc1	$f4,12($a6)
    lw	$a2,1016($s0)
    addiu	$a5,$a5,16
    addiu	$a3,$a3,4
    addu	$a2,$a2,$a5
    mul.s	$f4,$f4,$f5
    # Line 1049
    addiu	$a4,$t3,16
    b	.L0d98c060
    # Line 1053
    swc1	$f4,-4($a2)
.L0d98c1d4:
    # Line 966
    bnez	$v0,.L0d98c34c
    sltiu	$t8,$s1,5121
    sltiu	$t1,$s1,5123
    bnez	$t1,.L0d98c1f8
    # Line 970
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    # Line 966
    li	$t2,5123
    bne	$s1,$t2,.L0d98c36c
    # Line 1007
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c1f4:
    # Line 970
    # lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
.L0d98c1f8:
    move	$a3,$s1
    ld	$a2,80($sp)
    move	$a1,$s5
    jal	__glOdysseyCvtToFloat
    lw	$a0,1016($s0)
    b	.L0d98bcc4
    # Line 1017
    nop	# was lw $t9, -31256($gp) # &__glOdysseyCvtToRGBA
.L0d98c214:
    # Line 900
    sltiu	$v0,$s1,5122
    bnez	$v0,.L0d98c2d8
    sltiu	$a5,$s1,5121
    sltiu	$t3,$s1,5123
    bnez	$t3,.L0d98c234
    li	$t9,5123
    bne	$s1,$t9,.L0d98c310
    # Line 942
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c234:
    # Line 923
    lw	$a6,1016($s0)
    addu	$ra,$a1,$a1
    addu	$ra,$a6,$ra
    # Line 924
    b	.L0d98b9a0
    sd	$ra,72($sp)
.L0d98c248:
    # Line 867
    beq	$s4,$at,.L0d98b8a4
    # Line 895
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c250:
    ld	$s5,176($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d98bc54
    ld	$s2,104($sp)
.L0d98c264:
    # Line 1073
    # lw $t9, -31244($gp) # &__glOdysseyCvtToInternalFmt
.L0d98c268:
    ld	$s1,48($sp)
    addu	$a1,$s4,$s6
    jal	__glOdysseyCvtToInternalFmt
    lw	$a0,1016($s0)
    # Line 1083
    # lw $t9, -31260($gp) # &__glOdysseyInitConvolutionState
    # Line 1075
    li	$v0,4
    sw	$v0,948($s0)
    # Line 1083
    move	$a0,$s1
    jal	__glOdysseyInitConvolutionState
    # Line 1074
    sw	$s2,944($s0)
    b	.L0d98bc54
    ld	$s2,104($sp)
.L0d98c298:
    # Line 867
    sltiu	$v1,$s4,6410
    bnez	$v1,.L0d98c41c
    sltiu	$a0,$s4,6411
    beqz	$a0,.L0d98c250
    # Line 895
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 892
    sll	$a1,$s3,0x1
    # Line 890
    sll	$a2,$s6,0x1
    # Line 893
    b	.L0d98b8a8
    sd	$a2,80($sp)
.L0d98c2bc:
    # Line 900
    bne	$s1,$a3,.L0d98c310
    # Line 942
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c2c4:
    # Line 935
    lw	$a6,1016($s0)
    sll	$a4,$a1,0x2
    addu	$a4,$a6,$a4
    # Line 936
    b	.L0d98b9a0
    sd	$a4,72($sp)
.L0d98c2d8:
    # Line 900
    bnez	$a5,.L0d98c2f0
    li	$a6,5120
    bnez	$v0,.L0d98c2f8
    nop
    b	.L0d98c310
    # Line 942
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c2f0:
    # Line 900
    bne	$s1,$a6,.L0d98c310
    # Line 942
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c2f8:
    # Line 904
    lw	$a6,1016($s0)
    addu	$a7,$a1,$a6
    b	.L0d98b9a0
    sd	$a7,72($sp)
.L0d98c308:
    # Line 900
    beq	$s1,$t0,.L0d98b988
.L0d98c30c:
    # Line 942
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c310:
    ld	$s5,176($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d98bc54
    ld	$s2,104($sp)
.L0d98c324:
    # Line 966
    li	$v0,0x8362
    sltu	$t1,$s1,$v0
    bnez	$t1,.L0d98bc78
    sltu	$t2,$v0,$s1
    beqz	$t2,.L0d98bbb0
    li	$t3,0x8363
    beq	$s1,$t3,.L0d98bbb4
    # Line 976
    li	$t0,6407
    b	.L0d98c36c
    # Line 1007
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c34c:
    # Line 966
    bnez	$t8,.L0d98c364
    li	$t9,5120
    bnez	$v0,.L0d98c1f8
    # Line 970
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    b	.L0d98c36c
    # Line 1007
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c364:
    # Line 966
    beq	$s1,$t9,.L0d98c1f4
    # Line 1007
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c36c:
    ld	$s5,176($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d98bc54
    ld	$s2,104($sp)
.L0d98c380:
    # Line 900
    li	$v0,0x8036
    sltu	$ra,$s1,$v0
    bnez	$ra,.L0d98c4c0
    sltu	$at,$v0,$s1
    bnez	$at,.L0d98c30c
.L0d98c394:
    # Line 930
    srl	$v0,$a1,0x1f
.L0d98c398:
    addu	$v0,$v0,$a1
    lw	$a6,1016($s0)
    sra	$v0,$v0,0x1
    addu	$v0,$v0,$v0
    addu	$v0,$a6,$v0
    # Line 931
    b	.L0d98b9a0
    sd	$v0,72($sp)
.L0d98c3b4:
    # Line 966
    bnez	$v1,.L0d98c478
    sltiu	$a0,$s1,5127
    beqz	$a0,.L0d98c36c
    # Line 1007
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1004
    # lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    move	$a3,$s1
    ld	$a2,80($sp)
    move	$a1,$s5
    jal	__glOdysseyCvtToFloat
    lw	$a0,1016($s0)
    # Line 1005
    b	.L0d98bcc4
    # Line 1017
    nop	# was lw $t9, -31256($gp) # &__glOdysseyCvtToRGBA
.L0d98c3e4:
    # Line 863
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s5,176($sp)
    jal	__glSetError
    li	$a0,1285
    b	.L0d98bc54
    ld	$s2,104($sp)
    # Line 997
    # lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
.L0d98c400:
    move	$a3,$s1
    ld	$a2,80($sp)
    move	$a1,$s5
    jal	__glOdysseyCvtToFloat
    lw	$a0,1016($s0)
    b	.L0d98bcc4
    # Line 1017
    nop	# was lw $t9, -31256($gp) # &__glOdysseyCvtToRGBA
.L0d98c41c:
    # Line 867
    li	$a2,6409
    beq	$s4,$a2,.L0d98b8a4
    nop
    b	.L0d98c250
    # Line 895
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c430:
    # Line 867
    beq	$s4,$a3,.L0d98b8a4
    nop
    b	.L0d98c250
    # Line 895
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c440:
    # Line 900
    bnez	$a4,.L0d98c2bc
    li	$a3,5125
    sltiu	$a5,$s1,5127
    beqz	$a5,.L0d98c310
    # Line 942
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 939
    lw	$a6,1016($s0)
    sll	$a7,$a1,0x2
    addu	$a7,$a6,$a7
    # Line 940
    b	.L0d98b9a0
    sd	$a7,72($sp)
.L0d98c468:
    # Line 966
    beq	$s1,$t0,.L0d98bc94
    # Line 993
    li	$v0,6408
    b	.L0d98c36c
    # Line 1007
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c478:
    # Line 966
    li	$t1,5125
    beq	$s1,$t1,.L0d98c1f8
    # Line 970
    nop	# was lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
    b	.L0d98c36c
    # Line 1007
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c48c:
    # Line 867
    li	$t2,0x80e0
    beq	$s4,$t2,.L0d98b880
    # Line 880
    sll	$a1,$s3,0x2
    b	.L0d98c250
    # Line 895
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c4a0:
    # Line 900
    li	$v0,0x8366
    sltu	$t3,$s1,$v0
    bnez	$t3,.L0d98c528
    sltu	$t9,$v0,$s1
    beqz	$t9,.L0d98b98c
    # Line 918
    srl	$a7,$a1,0x1f
    b	.L0d98c310
    # Line 942
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c4c0:
    # Line 900
    li	$ra,0x8035
    beq	$s1,$ra,.L0d98c398
    # Line 930
    srl	$v0,$a1,0x1f
    b	.L0d98c310
    # Line 942
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c4d4:
    # Line 979
    # lw $t9, -31268($gp) # &__glOdysseyCvtToFloat
.L0d98c4d8:
    move	$a3,$s1
    ld	$a2,80($sp)
    move	$a1,$s5
    jal	__glOdysseyCvtToFloat
    lw	$a0,1016($s0)
    b	.L0d98bbd0
    nop
.L0d98c4f4:
    # Line 966
    li	$v0,0x8366
    sltu	$at,$s1,$v0
    bnez	$at,.L0d98c53c
    sltu	$v1,$v0,$s1
    beqz	$v1,.L0d98bc94
    # Line 993
    li	$v0,6408
    b	.L0d98c36c
    # Line 1007
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c514:
    # Line 966
    li	$a0,0x8035
    beq	$s1,$a0,.L0d98bc94
    # Line 993
    li	$v0,6408
    b	.L0d98c36c
    # Line 1007
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c528:
    # Line 900
    li	$a2,0x8365
    beq	$s1,$a2,.L0d98b98c
    # Line 918
    srl	$a7,$a1,0x1f
    b	.L0d98c310
    # Line 942
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98c53c:
    # Line 966
    li	$a3,0x8365
    beq	$s1,$a3,.L0d98bc94
    # Line 993
    li	$v0,6408
    b	.L0d98c36c
    # Line 1007
    nop	# was lw $t9, -26792($gp) # &__glSetError
.end __glOdysseySeparableFilter

# Function: __glOdysseyGetSeparableFilter
# Declared: Line 1086 (Source lines: 1091-1101)
# Address: 0x0d98c550 - 0x0d98c5d0 (Size: 128 bytes, Frame: 32)
.globl __glOdysseyGetSeparableFilter
.ent __glOdysseyGetSeparableFilter
__glOdysseyGetSeparableFilter:
    # Line 1097
    lw	$t2,1004($a0)
    lw	$t1,1000($a0)
    mult	$t1,$t2
    lw	$a7,948($a0)
    mflo	$t0
    nop
    nop
    mult	$a7,$t0
    # Line 1091
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    lui	$v1,0x17
    sd	$s8,8($sp)
    addiu	$v1,$v1,-16320
    sd	$gp,16($sp)
    addu	$gp,$t9,$v1
    # Line 1098
    # lw $t9, -27720($gp) # &__glSlowPickGetSeparableFilter
    # Line 1096
    lw	$at,1016($a0)
    # Line 1097
    mflo	$v0
    # Line 1091
    move	$s8,$a0
    # Line 1096
    sd	$at,24($sp)
    # Line 1097
    sll	$v0,$v0,0x2
    # Line 1098
    nop
    # Line 1097
    addu	$at,$at,$v0
    # Line 1098
    jal	__glSlowPickGetSeparableFilter
    # Line 1097
    sw	$at,1016($a0)
    # Line 1101
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    # Line 1100
    ld	$t3,24($sp)
    sw	$t3,1016($s8)
    # Line 1101
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseyGetSeparableFilter

# Function: __glOdyim_CopyConvolutionFilter1DEXT
# Declared: Line 1104 (Source lines: 1108-1152)
# Address: 0x0d98c5d0 - 0x0d98c844 (Size: 628 bytes, Frame: 176)
.globl __glOdyim_CopyConvolutionFilter1DEXT
.ent __glOdyim_CopyConvolutionFilter1DEXT
__glOdyim_CopyConvolutionFilter1DEXT:
    # Line 1108
    addiu	$sp,$sp,-176
    sd	$a4,88($sp)
    sd	$a3,80($sp)
    sd	$a2,72($sp)
    sd	$a0,96($sp)
    sd	$s0,104($sp)
    sw	$a1,140($sp)
    # Line 1112
    lw	$v0,4120($zero)
    lw	$s0,4112($zero)
    # Line 1108
    lui	$at,0x17
    sd	$ra,120($sp)
    addiu	$at,$at,-16448
    sd	$gp,112($sp)
    # Line 1112
    beqz	$v0,.L0d98c644
    # Line 1108
    addu	$gp,$t9,$at
    # Line 1112
    li	$v1,2
    beq	$v0,$v1,.L0d98c634
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d98c620:
    ld	$ra,120($sp)
.L0d98c624:
    ld	$s0,104($sp)
    # Line 1152
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d98c634:
    # Line 1112
    lw	$t9,11840($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,4120($zero)
.L0d98c644:
    # Line 1114
    # lw $t9, -26760($gp) # &__glCheckConvolutionFilterArgs
    move	$a0,$s0
    li	$a6,5126
    ld	$a1,96($sp)
    addiu	$a5,$sp,140
    li	$a4,6408
    ld	$a2,88($sp)
    jal	__glCheckConvolutionFilterArgs
    li	$a3,1
    beqz	$v0,.L0d98c620
    # Line 1116
    li	$a1,0x8010
    ld	$a0,96($sp)
    beq	$a0,$a1,.L0d98c690
    # Line 1124
    lw	$a3,140($sp)
    # Line 1119
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98c624
    ld	$ra,120($sp)
.L0d98c690:
    # Line 1125
    ld	$a2,88($sp)
    # Line 1126
    # lw $t9, -28152($gp) # &__glElementsPerGroup
    # Line 1125
    sw	$a2,832($s0)
    # Line 1124
    sw	$a3,776($s0)
    # Line 1126
    jal	__glElementsPerGroup
    lw	$a0,140($sp)
    ld	$a4,88($sp)
    blez	$a4,.L0d98c7e0
    sw	$v0,780($s0)
    # Line 1130
    lw	$t9,0($s0)
    ld	$a1,88($sp)
    move	$a0,$s0
    jalr	$t9
    sll	$a1,$a1,0x4
    beqz	$v0,.L0d98c830
    sd	$v0,64($sp)
    # Line 1135
    addiu	$t2,$s0,1144
    # Line 1136
    la	$t1,__glOdyssey_InternalUnpack
    sd	$v0,56($sp)
    # Line 1135
    ld	$a3,1144($s0)
    ld	$a4,1152($s0)
    ld	$a5,1160($s0)
    ld	$a6,1168($s0)
    ld	$a7,1176($s0)
    lw	$t0,1184($s0)
    sw	$t0,40($sp)
    sd	$a7,32($sp)
    sd	$a6,24($sp)
    sd	$a5,16($sp)
    sd	$a4,8($sp)
    sd	$a3,0($sp)
    # Line 1136
    lw	$a5,0($t1)
    sw	$a5,1144($s0)
    lw	$a4,4($t1)
    sw	$a4,1148($s0)
    lw	$a3,8($t1)
    sw	$a3,1152($s0)
    lw	$a2,12($t1)
    sw	$a2,1156($s0)
    lw	$a1,16($t1)
    sw	$a1,1160($s0)
    lw	$a0,20($t1)
    sw	$a0,1164($s0)
    lw	$v1,24($t1)
    sw	$v1,1168($s0)
    lw	$v0,28($t1)
    sw	$v0,1172($s0)
    lw	$at,32($t1)
    sw	$at,1176($s0)
    lw	$ra,36($t1)
    sw	$ra,1180($s0)
    lw	$t9,40($t1)
    sw	$t9,1184($s0)
    # Line 1138
    # lw $t9, -27688($gp) # &__glGetCurrentSetDefaultPixelXferState
    jal	__glGetCurrentSetDefaultPixelXferState
    move	$a0,$s0
    sd	$v0,48($sp)
    # Line 1140
    ld	$a0,72($sp)
    # lw $t9, -31544($gp) # &__glOdyim_ReadPixels
    ld	$a1,80($sp)
    ld	$a2,88($sp)
    li	$a5,5123
    li	$a4,6408
    ld	$a6,56($sp)
    bal __glOdyim_ReadPixels
    li	$a3,1
    # Line 1144
    ld	$a1,48($sp)
    # Line 1143
    ld	$a6,0($sp)
    ld	$a7,8($sp)
    ld	$t0,16($sp)
    ld	$t1,24($sp)
    ld	$t2,32($sp)
    lw	$t3,40($sp)
    sw	$t3,1184($s0)
    sd	$t2,1176($s0)
    sd	$t1,1168($s0)
    # Line 1144
    # lw $t9, -27684($gp) # &__glRestoreCurrentPixelXferState
    # Line 1143
    sd	$t0,1160($s0)
    sd	$a7,1152($s0)
    # Line 1144
    move	$a0,$s0
    jal	__glRestoreCurrentPixelXferState
    # Line 1143
    sd	$a6,1144($s0)
    b	.L0d98c7e8
    # Line 1147
    lw	$t9,12640($s0)
.L0d98c7e0:
    sd	$zero,64($sp)
    lw	$t9,12640($s0)
.L0d98c7e8:
    move	$a0,$s0
    ld	$a1,88($sp)
    li	$a7,1
    ld	$a6,96($sp)
    li	$a4,5123
    li	$a3,6408
    ld	$a5,64($sp)
    jalr	$t9
    li	$a2,1
    ld	$v0,64($sp)
    beqz	$v0,.L0d98c624
    ld	$ra,120($sp)
    # Line 1151
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$v0
    b	.L0d98c624
    ld	$ra,120($sp)
.L0d98c830:
    # Line 1132
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d98c624
    ld	$ra,120($sp)
.end __glOdyim_CopyConvolutionFilter1DEXT

# Function: __glOdyim_CopyConvolutionFilter2DEXT
# Declared: Line 1156 (Source lines: 1160-1205)
# Address: 0x0d98c850 - 0x0d98caec (Size: 668 bytes, Frame: 192)
.globl __glOdyim_CopyConvolutionFilter2DEXT
.ent __glOdyim_CopyConvolutionFilter2DEXT
__glOdyim_CopyConvolutionFilter2DEXT:
    # Line 1160
    addiu	$sp,$sp,-192
    sd	$a5,88($sp)
    sd	$a4,96($sp)
    sd	$a3,80($sp)
    sd	$a2,72($sp)
    sd	$a0,104($sp)
    sd	$s0,112($sp)
    sw	$a1,156($sp)
    # Line 1164
    lw	$v0,4120($zero)
    lw	$s0,4112($zero)
    # Line 1160
    lui	$at,0x17
    sd	$ra,128($sp)
    addiu	$at,$at,-17088
    sd	$gp,120($sp)
    # Line 1164
    beqz	$v0,.L0d98c8c8
    # Line 1160
    addu	$gp,$t9,$at
    # Line 1164
    li	$v1,2
    beq	$v0,$v1,.L0d98c8b8
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d98c8a4:
    ld	$ra,128($sp)
.L0d98c8a8:
    ld	$s0,112($sp)
    # Line 1205
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d98c8b8:
    # Line 1164
    lw	$t9,11840($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,4120($zero)
.L0d98c8c8:
    # Line 1166
    # lw $t9, -26760($gp) # &__glCheckConvolutionFilterArgs
    move	$a0,$s0
    ld	$a1,104($sp)
    ld	$a2,96($sp)
    li	$a6,5126
    addiu	$a5,$sp,156
    ld	$a3,88($sp)
    jal	__glCheckConvolutionFilterArgs
    li	$a4,6408
    beqz	$v0,.L0d98c8a4
    # Line 1168
    li	$a1,0x8011
    ld	$a0,104($sp)
    beq	$a0,$a1,.L0d98c910
    # Line 1171
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98c8a8
    ld	$ra,128($sp)
.L0d98c910:
    # Line 1177
    ld	$a3,96($sp)
    # Line 1176
    lw	$a4,156($sp)
    # Line 1178
    ld	$a2,88($sp)
    sw	$a2,920($s0)
    # Line 1179
    # lw $t9, -28152($gp) # &__glElementsPerGroup
    # Line 1177
    sw	$a3,916($s0)
    # Line 1176
    sw	$a4,860($s0)
    # Line 1179
    jal	__glElementsPerGroup
    lw	$a0,156($sp)
    # Line 1181
    ld	$a5,96($sp)
    ld	$a6,88($sp)
    blez	$a5,.L0d98cad0
    # Line 1179
    sw	$v0,864($s0)
    # Line 1181
    blez	$a6,.L0d98cac8
    # Line 1183
    ld	$a3,88($sp)
    ld	$a2,96($sp)
    mult	$a2,$a3
    lw	$t9,0($s0)
    move	$a0,$s0
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x4
    beqz	$v0,.L0d98cad8
    move	$t1,$v0
    # Line 1189
    la	$t2,__glOdyssey_InternalUnpack
    sd	$v0,56($sp)
    sd	$v0,64($sp)
    # Line 1188
    ld	$a4,1144($s0)
    lw	$t3,1184($s0)
    ld	$a5,1152($s0)
    ld	$a6,1160($s0)
    ld	$a7,1168($s0)
    ld	$t0,1176($s0)
    sd	$t0,32($sp)
    sd	$a7,24($sp)
    sd	$a6,16($sp)
    sd	$a5,8($sp)
    sw	$t3,40($sp)
    addiu	$t3,$s0,1144
    sd	$a4,0($sp)
    # Line 1189
    lw	$a6,0($t2)
    sw	$a6,1144($s0)
    lw	$a5,4($t2)
    sw	$a5,1148($s0)
    lw	$a4,8($t2)
    sw	$a4,1152($s0)
    lw	$a3,12($t2)
    sw	$a3,1156($s0)
    lw	$a2,16($t2)
    sw	$a2,1160($s0)
    lw	$a1,20($t2)
    sw	$a1,1164($s0)
    lw	$a0,24($t2)
    sw	$a0,1168($s0)
    lw	$v1,28($t2)
    sw	$v1,1172($s0)
    lw	$v0,32($t2)
    sw	$v0,1176($s0)
    lw	$at,36($t2)
    sw	$at,1180($s0)
    lw	$ra,40($t2)
    sw	$ra,1184($s0)
    # Line 1191
    # lw $t9, -27688($gp) # &__glGetCurrentSetDefaultPixelXferState
    jal	__glGetCurrentSetDefaultPixelXferState
    move	$a0,$s0
    sd	$v0,48($sp)
    # Line 1193
    ld	$a0,72($sp)
    ld	$a1,80($sp)
    # lw $t9, -31544($gp) # &__glOdyim_ReadPixels
    ld	$a2,96($sp)
    ld	$a3,88($sp)
    li	$a5,5123
    ld	$a6,56($sp)
    bal __glOdyim_ReadPixels
    li	$a4,6408
    # Line 1197
    ld	$a1,48($sp)
    # Line 1196
    ld	$a7,0($sp)
    ld	$t0,8($sp)
    ld	$t1,16($sp)
    ld	$t2,24($sp)
    ld	$t3,32($sp)
    lw	$t8,40($sp)
    sw	$t8,1184($s0)
    sd	$t3,1176($s0)
    sd	$t2,1168($s0)
    # Line 1197
    # lw $t9, -27684($gp) # &__glRestoreCurrentPixelXferState
    # Line 1196
    sd	$t1,1160($s0)
    sd	$t0,1152($s0)
    # Line 1197
    move	$a0,$s0
    jal	__glRestoreCurrentPixelXferState
    # Line 1196
    sd	$a7,1144($s0)
.L0d98ca7c:
    # Line 1200
    ld	$a1,96($sp)
    lw	$t9,12640($s0)
    move	$a0,$s0
    ld	$a2,88($sp)
    li	$a7,1
    ld	$a6,104($sp)
    li	$a4,5123
    ld	$a5,64($sp)
    jalr	$t9
    li	$a3,6408
    ld	$v0,64($sp)
    beqz	$v0,.L0d98c8a8
    ld	$ra,128($sp)
    # Line 1204
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$v0
    b	.L0d98c8a8
    ld	$ra,128($sp)
.L0d98cac8:
    b	.L0d98ca7c
    # Line 1188
    sd	$zero,64($sp)
.L0d98cad0:
    b	.L0d98ca7c
    sd	$zero,64($sp)
.L0d98cad8:
    # Line 1185
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d98c8a8
    ld	$ra,128($sp)
.end __glOdyim_CopyConvolutionFilter2DEXT

# Function: __glOdyim_ConvolutionParameterfvEXT
# Declared: Line 1347 (Source lines: 1350-1407)
# Address: 0x0d98caf0 - 0x0d98ccc4 (Size: 468 bytes, Frame: 32)
.globl __glOdyim_ConvolutionParameterfvEXT
.ent __glOdyim_ConvolutionParameterfvEXT
__glOdyim_ConvolutionParameterfvEXT:
    # Line 1350
    addiu	$sp,$sp,-32
    sd	$a2,0($sp)
    lw	$at,4120($zero)
    sd	$s0,8($sp)
    li	$v0,1
    lui	$v1,0x17
    move	$s0,$a1
    sd	$ra,24($sp)
    addiu	$v1,$v1,-17760
    sd	$gp,16($sp)
    beq	$at,$v0,.L0d98cc08
    addu	$gp,$t9,$v1
    # Line 1354
    # lw $t9, -31276($gp) # &__glOdysseyGetFilter
    jal	__glOdysseyGetFilter
    nop
    beqz	$v0,.L0d98cc90
    # Line 1360
    li	$a2,0x8013
    li	$a0,0x8014
    beq	$s0,$a0,.L0d98cc1c
    li	$a1,0x8015
    beq	$s0,$a1,.L0d98cc54
    # Line 1368
    ld	$a7,0($sp)
    # Line 1360
    beq	$s0,$a2,.L0d98cbac
    li	$a3,0x8154
    # Line 1397
    ld	$a4,0($sp)
    ld	$ra,24($sp)
    # Line 1360
    beq	$s0,$a3,.L0d98cb7c
    # Line 1404
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d98cb68:
    ld	$ra,24($sp)
.L0d98cb6c:
    ld	$s0,8($sp)
    # Line 1407
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98cb7c:
    # Line 1397
    lwc1	$f3,0($a4)
    swc1	$f3,48($v0)
    # Line 1398
    lwc1	$f2,4($a4)
    swc1	$f2,52($v0)
    # Line 1399
    lwc1	$f1,8($a4)
    # Line 1407
    ld	$gp,16($sp)
    # Line 1399
    swc1	$f1,56($v0)
    # Line 1400
    lwc1	$f0,12($a4)
    # Line 1407
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1400
    swc1	$f0,60($v0)
.L0d98cbac:
    # Line 1374
    ld	$a5,0($sp)
    lwc1	$f4,0($a5)
    trunc.w.s	$f4,$f4
    mfc1	$a0,$f4
    li	$a1,0x8016
    beq	$a0,$a1,.L0d98cca4
    nop
    li	$a1,0x8151
    beq	$a0,$a1,.L0d98ccac
    nop
    li	$a1,0x8153
    beq	$a0,$a1,.L0d98ccb4
    nop
    li	$a1,0x8150
    beq	$a0,$a1,.L0d98ccbc
    nop
    li	$a1,0x8152
    beq	$a0,$a1,.L0d98cc88
    # Line 1391
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98cb6c
    ld	$ra,24($sp)
.L0d98cc08:
    # Line 1352
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98cb6c
    ld	$ra,24($sp)
.L0d98cc1c:
    # Line 1362
    ld	$a6,0($sp)
    lwc1	$f8,0($a6)
    swc1	$f8,16($v0)
    # Line 1363
    lwc1	$f7,4($a6)
    # Line 1407
    ld	$gp,16($sp)
    # Line 1363
    swc1	$f7,20($v0)
    # Line 1364
    lwc1	$f6,8($a6)
    ld	$ra,24($sp)
    swc1	$f6,24($v0)
    # Line 1365
    lwc1	$f5,12($a6)
    # Line 1407
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1365
    swc1	$f5,28($v0)
.L0d98cc54:
    # Line 1368
    lwc1	$f12,0($a7)
    swc1	$f12,32($v0)
    # Line 1369
    lwc1	$f11,4($a7)
    # Line 1407
    ld	$gp,16($sp)
    # Line 1369
    swc1	$f11,36($v0)
    # Line 1370
    lwc1	$f10,8($a7)
    ld	$ra,24($sp)
    swc1	$f10,40($v0)
    # Line 1371
    lwc1	$f9,12($a7)
    # Line 1407
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1371
    swc1	$f9,44($v0)
.L0d98cc88:
    # Line 1389
    b	.L0d98cb68
    # Line 1388
    sw	$a1,4($v0)
.L0d98cc90:
    # Line 1356
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98cb6c
    ld	$ra,24($sp)
.L0d98cca4:
    b	.L0d98cb68
    # Line 1376
    sw	$a1,4($v0)
.L0d98ccac:
    # Line 1380
    b	.L0d98cb68
    # Line 1379
    sw	$a1,4($v0)
.L0d98ccb4:
    # Line 1383
    b	.L0d98cb68
    # Line 1382
    sw	$a1,4($v0)
.L0d98ccbc:
    # Line 1386
    b	.L0d98cb68
    # Line 1385
    sw	$a1,4($v0)
.end __glOdyim_ConvolutionParameterfvEXT

# Function: __glOdyim_ConvolutionParameterfEXT
# Declared: Line 1410 (Source lines: 1413-1422)
# Address: 0x0d98ccd0 - 0x0d98cd24 (Size: 84 bytes, Frame: 32)
.globl __glOdyim_ConvolutionParameterfEXT
.ent __glOdyim_ConvolutionParameterfEXT
__glOdyim_ConvolutionParameterfEXT:
    # Line 1413
    addiu	$sp,$sp,-32
    # Line 1414
    swc1	$f14,0($sp)
    li	$at,0x8013
    # Line 1413
    lui	$v0,0x17
    sd	$ra,16($sp)
    addiu	$v0,$v0,-18240
    sd	$gp,8($sp)
    # Line 1414
    beq	$a1,$at,.L0d98cd10
    # Line 1413
    addu	$gp,$t9,$v0
    # Line 1418
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
.L0d98cd04:
    # Line 1422
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98cd10:
    # Line 1421
    # lw $t9, -31492($gp) # &__glOdyim_ConvolutionParameterfvEXT
    bal __glOdyim_ConvolutionParameterfvEXT
    addiu	$a2,$sp,0
    b	.L0d98cd04
    ld	$ra,16($sp)
.end __glOdyim_ConvolutionParameterfEXT

# Function: __glOdyim_ConvolutionParameterivEXT
# Declared: Line 1425 (Source lines: 1428-1484)
# Address: 0x0d98cd30 - 0x0d98cf34 (Size: 516 bytes, Frame: 48)
.globl __glOdyim_ConvolutionParameterivEXT
.ent __glOdyim_ConvolutionParameterivEXT
__glOdyim_ConvolutionParameterivEXT:
    # Line 1428
    addiu	$sp,$sp,-48
    sd	$a2,8($sp)
    sd	$ra,32($sp)
    sd	$gp,24($sp)
    # Line 1430
    lw	$at,4120($zero)
    li	$v0,1
    # Line 1428
    lui	$v1,0x17
    sd	$s0,16($sp)
    addiu	$v1,$v1,-18336
    move	$s0,$a1
    # Line 1430
    lw	$a1,4112($zero)
    sd	$a1,0($sp)
    beq	$at,$v0,.L0d98ce30
    # Line 1428
    addu	$gp,$t9,$v1
    # Line 1432
    # lw $t9, -31276($gp) # &__glOdysseyGetFilter
    jal	__glOdysseyGetFilter
    nop
    beqz	$v0,.L0d98cf00
    # Line 1438
    li	$a2,0x8013
    li	$a0,0x8014
    beq	$s0,$a0,.L0d98ce44
    li	$a1,0x8015
    beq	$s0,$a1,.L0d98ce9c
    # Line 1446
    ld	$a5,8($sp)
    # Line 1438
    beq	$s0,$a2,.L0d98cdc0
    li	$a3,0x8154
    beq	$s0,$a3,.L0d98ce18
    # Line 1478
    nop	# was lw $t9, -26164($gp) # &__glScaleColori
    # Line 1481
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d98cdac:
    ld	$ra,32($sp)
.L0d98cdb0:
    ld	$s0,16($sp)
    # Line 1484
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d98cdc0:
    # Line 1452
    ld	$a0,8($sp)
    lw	$a0,0($a0)
    li	$a1,0x8016
    ld	$ra,32($sp)
    beq	$a0,$a1,.L0d98cf14
    # Line 1484
    ld	$s0,16($sp)
    # Line 1452
    li	$a1,0x8151
    beq	$a0,$a1,.L0d98cf1c
    nop
    li	$a1,0x8153
    beq	$a0,$a1,.L0d98cf24
    nop
    li	$a1,0x8150
    beq	$a0,$a1,.L0d98cf2c
    nop
    li	$a1,0x8152
    beq	$a0,$a1,.L0d98cef0
    # Line 1469
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98cdb0
    ld	$ra,32($sp)
.L0d98ce18:
    # Line 1478
    ld	$a0,0($sp)
    ld	$a2,8($sp)
    jalr	$t9
    addiu	$a1,$v0,48
    b	.L0d98cdb0
    ld	$ra,32($sp)
.L0d98ce30:
    # Line 1430
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98cdb0
    ld	$ra,32($sp)
.L0d98ce44:
    # Line 1440
    ld	$a1,8($sp)
    lw	$a4,0($a1)
    mtc1	$a4,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,16($v0)
    # Line 1441
    lw	$a3,4($a1)
    mtc1	$a3,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,20($v0)
    # Line 1442
    lw	$a2,8($a1)
    mtc1	$a2,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,24($v0)
    # Line 1443
    lw	$a1,12($a1)
    mtc1	$a1,$f0
    ld	$ra,32($sp)
    cvt.s.w	$f0,$f0
    # Line 1484
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1443
    swc1	$f0,28($v0)
.L0d98ce9c:
    # Line 1446
    lw	$t0,0($a5)
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    swc1	$f7,32($v0)
    # Line 1447
    lw	$a7,4($a5)
    mtc1	$a7,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,36($v0)
    # Line 1448
    lw	$a6,8($a5)
    mtc1	$a6,$f5
    cvt.s.w	$f5,$f5
    swc1	$f5,40($v0)
    # Line 1449
    lw	$a5,12($a5)
    mtc1	$a5,$f4
    ld	$ra,32($sp)
    cvt.s.w	$f4,$f4
    # Line 1484
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1449
    swc1	$f4,44($v0)
.L0d98cef0:
    # Line 1466
    sw	$a1,4($v0)
    # Line 1484
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d98cf00:
    # Line 1434
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98cdb0
    ld	$ra,32($sp)
.L0d98cf14:
    b	.L0d98cdac
    # Line 1454
    sw	$a1,4($v0)
.L0d98cf1c:
    # Line 1458
    b	.L0d98cdac
    # Line 1457
    sw	$a1,4($v0)
.L0d98cf24:
    # Line 1461
    b	.L0d98cdac
    # Line 1460
    sw	$a1,4($v0)
.L0d98cf2c:
    # Line 1464
    b	.L0d98cdac
    # Line 1463
    sw	$a1,4($v0)
.end __glOdyim_ConvolutionParameterivEXT

# Function: __glOdyim_ConvolutionParameteriEXT
# Declared: Line 1487 (Source lines: 1490-1499)
# Address: 0x0d98cf40 - 0x0d98cf94 (Size: 84 bytes, Frame: 32)
.globl __glOdyim_ConvolutionParameteriEXT
.ent __glOdyim_ConvolutionParameteriEXT
__glOdyim_ConvolutionParameteriEXT:
    # Line 1490
    addiu	$sp,$sp,-32
    # Line 1491
    sw	$a2,0($sp)
    li	$at,0x8013
    # Line 1490
    lui	$v0,0x17
    sd	$ra,16($sp)
    addiu	$v0,$v0,-18864
    sd	$gp,8($sp)
    # Line 1491
    beq	$a1,$at,.L0d98cf80
    # Line 1490
    addu	$gp,$t9,$v0
    # Line 1495
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
.L0d98cf74:
    # Line 1499
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98cf80:
    # Line 1498
    # lw $t9, -31484($gp) # &__glOdyim_ConvolutionParameterivEXT
    bal __glOdyim_ConvolutionParameterivEXT
    addiu	$a2,$sp,0
    b	.L0d98cf74
    ld	$ra,16($sp)
.end __glOdyim_ConvolutionParameteriEXT

# Function: __glOdyim_GetConvolutionParameterfvEXT
# Declared: Line 1503 (Source lines: 1506-1562)
# Address: 0x0d98cfa0 - 0x0d98d240 (Size: 672 bytes, Frame: 48)
.globl __glOdyim_GetConvolutionParameterfvEXT
.ent __glOdyim_GetConvolutionParameterfvEXT
__glOdyim_GetConvolutionParameterfvEXT:
    # Line 1506
    addiu	$sp,$sp,-48
    sd	$a2,0($sp)
    sd	$s0,8($sp)
    move	$s0,$a1
    lw	$at,4120($zero)
    sd	$s1,16($sp)
    li	$v0,1
    lui	$v1,0x17
    move	$s1,$a0
    sd	$ra,32($sp)
    addiu	$v1,$v1,-18960
    sd	$gp,24($sp)
    beq	$at,$v0,.L0d98d1e4
    addu	$gp,$t9,$v1
    # Line 1510
    # lw $t9, -31276($gp) # &__glOdysseyGetFilter
    jal	__glOdysseyGetFilter
    nop
    beqz	$v0,.L0d98d1f8
    # Line 1516
    li	$a0,0x8010
    li	$a4,0x801b
    beq	$s1,$a0,.L0d98d158
    li	$a3,0x8019
.L0d98cff8:
    # Line 1523
    li	$a0,0x8018
    sltu	$a1,$s0,$a0
    bnez	$a1,.L0d98d068
    sltu	$a2,$a0,$s0
    # Line 1547
    ld	$t3,0($sp)
    # Line 1523
    li	$t2,0x8019
    beqz	$a2,.L0d98d19c
    # Line 1549
    lwc1	$f9,_lit_41300000
    # Line 1523
    li	$a0,0x801b
    sltu	$a3,$s0,$a0
    # Line 1555
    ld	$a6,0($sp)
    # Line 1523
    li	$a5,0x8154
    # Line 1550
    ld	$a2,0($sp)
    # Line 1523
    bnez	$a3,.L0d98d138
    sltu	$a4,$a0,$s0
    beqz	$a4,.L0d98d234
    # Line 1553
    ld	$ra,0($sp)
    # Line 1523
    bne	$s0,$a5,.L0d98d0c0
    # Line 1561
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1555
    lwc1	$f3,48($v0)
    swc1	$f3,0($a6)
    # Line 1556
    lwc1	$f2,52($v0)
    swc1	$f2,4($a6)
    # Line 1557
    lwc1	$f1,56($v0)
    swc1	$f1,8($a6)
    # Line 1558
    lwc1	$f0,60($v0)
    # Line 1559
    b	.L0d98d0c8
    # Line 1558
    swc1	$f0,12($a6)
.L0d98d068:
    # Line 1523
    li	$a0,0x8015
    sltu	$a7,$s0,$a0
    li	$t1,0x8017
    bnez	$a7,.L0d98d0e0
    # Line 1540
    ld	$t2,0($sp)
    # Line 1523
    sltu	$t0,$a0,$s0
    ld	$ra,32($sp)
    beqz	$t0,.L0d98d20c
    # Line 1562
    ld	$s1,16($sp)
    # Line 1523
    bne	$s0,$t1,.L0d98d0c0
    # Line 1561
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1540
    lw	$t3,8($v0)
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f4
    cvt.s.l	$f4,$f4
    # Line 1562
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1540
    swc1	$f4,0($t2)
.L0d98d0bc:
    # Line 1561
    # lw $t9, -26792($gp) # &__glSetError
.L0d98d0c0:
    jal	__glSetError
    li	$a0,1280
.L0d98d0c8:
    ld	$ra,32($sp)
.L0d98d0cc:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 1562
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d98d0e0:
    ld	$ra,32($sp)
    # Line 1523
    li	$a0,0x8014
    # Line 1562
    ld	$s1,16($sp)
    # Line 1523
    sltu	$t8,$s0,$a0
    ld	$a6,0($sp)
    li	$a5,0x8013
    # Line 1525
    ld	$at,0($sp)
    # Line 1523
    bnez	$t8,.L0d98d178
    sltu	$t9,$a0,$s0
    bnez	$t9,.L0d98d0bc
    # Line 1562
    ld	$s0,8($sp)
    # Line 1525
    lwc1	$f8,16($v0)
    swc1	$f8,0($at)
    # Line 1526
    lwc1	$f7,20($v0)
    swc1	$f7,4($at)
    # Line 1527
    lwc1	$f6,24($v0)
    swc1	$f6,8($at)
    # Line 1528
    lwc1	$f5,28($v0)
    # Line 1562
    ld	$gp,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1528
    swc1	$f5,12($at)
.L0d98d138:
    # Line 1523
    li	$a0,0x801a
    sltu	$v1,$s0,$a0
    bnez	$v1,.L0d98d1c8
    sltu	$a1,$a0,$s0
    bnez	$a1,.L0d98d0c0
    # Line 1561
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1550
    b	.L0d98d0c8
    # Line 1549
    swc1	$f9,0($a2)
.L0d98d158:
    # Line 1516
    beq	$s0,$a3,.L0d98d168
    # Line 1519
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1516
    bne	$s0,$a4,.L0d98cff8
    # Line 1519
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98d168:
    jal	__glSetError
    li	$a0,1280
    b	.L0d98d0cc
    ld	$ra,32($sp)
.L0d98d178:
    # Line 1523
    bne	$s0,$a5,.L0d98d0c0
    # Line 1561
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1537
    lw	$a7,4($v0)
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f10
    cvt.s.l	$f10,$f10
    b	.L0d98d0c8
    swc1	$f10,0($a6)
.L0d98d19c:
    # Line 1543
    lw	$t1,64($v0)
    mtc1	$t1,$f11
    # Line 1562
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    ld	$ra,32($sp)
    # Line 1543
    cvt.s.w	$f11,$f11
    ld	$t0,0($sp)
    # Line 1562
    ld	$s1,16($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1543
    swc1	$f11,0($t0)
.L0d98d1c8:
    # Line 1523
    bne	$s0,$t2,.L0d98d0c0
    # Line 1561
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1546
    lw	$t8,68($v0)
    mtc1	$t8,$f12
    cvt.s.w	$f12,$f12
    # Line 1547
    b	.L0d98d0c8
    # Line 1546
    swc1	$f12,0($t3)
.L0d98d1e4:
    # Line 1508
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98d0cc
    ld	$ra,32($sp)
.L0d98d1f8:
    # Line 1512
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98d0cc
    ld	$ra,32($sp)
.L0d98d20c:
    # Line 1531
    ld	$t9,0($sp)
    lwc1	$f16,32($v0)
    swc1	$f16,0($t9)
    # Line 1532
    lwc1	$f15,36($v0)
    swc1	$f15,4($t9)
    # Line 1533
    lwc1	$f14,40($v0)
    swc1	$f14,8($t9)
    # Line 1534
    lwc1	$f13,44($v0)
    # Line 1535
    b	.L0d98d0c8
    # Line 1534
    swc1	$f13,12($t9)
.L0d98d234:
    # Line 1552
    lwc1	$f17,_lit_41300000
    # Line 1553
    b	.L0d98d0c8
    # Line 1552
    swc1	$f17,0($ra)
.end __glOdyim_GetConvolutionParameterfvEXT

# Function: __glOdyim_GetConvolutionParameterivEXT
# Declared: Line 1567 (Source lines: 1570-1627)
# Address: 0x0d98d240 - 0x0d98d55c (Size: 796 bytes, Frame: 192)
.globl __glOdyim_GetConvolutionParameterivEXT
.ent __glOdyim_GetConvolutionParameterivEXT
__glOdyim_GetConvolutionParameterivEXT:
    # Line 1570
    addiu	$sp,$sp,-64
    sd	$a2,8($sp)
    sd	$ra,40($sp)
    sd	$gp,32($sp)
    sd	$s0,16($sp)
    move	$s0,$a1
    # Line 1573
    lw	$at,4120($zero)
    li	$v0,1
    # Line 1570
    lui	$v1,0x17
    sd	$s1,24($sp)
    addiu	$v1,$v1,-19632
    move	$s1,$a0
    # Line 1573
    lw	$a0,4112($zero)
    sd	$a0,0($sp)
    beq	$at,$v0,.L0d98d424
    # Line 1570
    addu	$gp,$t9,$v1
    # Line 1575
    # lw $t9, -31276($gp) # &__glOdysseyGetFilter
    jal	__glOdysseyGetFilter
    move	$a0,$s1
    beqz	$v0,.L0d98d438
    # Line 1581
    li	$a0,0x8010
    beq	$s1,$a0,.L0d98d3b8
    li	$a0,0x8019
.L0d98d29c:
    # Line 1588
    li	$a0,0x8018
    sltu	$a1,$s0,$a0
    bnez	$a1,.L0d98d2f8
    sltu	$a2,$a0,$s0
    beqz	$a2,.L0d98d3ec
    li	$a0,0x801b
    sltu	$a3,$s0,$a0
    bnez	$a3,.L0d98d38c
    li	$a5,0x8154
    sltu	$a4,$a0,$s0
    beqz	$a4,.L0d98d498
    # Line 1618
    ld	$t8,8($sp)
    # Line 1588
    beq	$s0,$a5,.L0d98d4a4
    sd	$v0,48($sp)
.L0d98d2d4:
    # Line 1626
    # lw $t9, -26792($gp) # &__glSetError
.L0d98d2d8:
    jal	__glSetError
    li	$a0,1280
.L0d98d2e0:
    ld	$ra,40($sp)
.L0d98d2e4:
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    # Line 1627
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d98d2f8:
    # Line 1588
    li	$a0,0x8015
    sltu	$a6,$s0,$a0
    bnez	$a6,.L0d98d324
    sltu	$a7,$a0,$s0
    beqz	$a7,.L0d98d44c
    li	$t0,0x8017
    bne	$s0,$t0,.L0d98d2d4
    # Line 1606
    ld	$t2,8($sp)
    # Line 1605
    lw	$t1,8($v0)
    # Line 1606
    b	.L0d98d2e0
    # Line 1605
    sw	$t1,0($t2)
.L0d98d324:
    ld	$ra,40($sp)
    # Line 1588
    li	$a0,0x8014
    # Line 1627
    ld	$s1,24($sp)
    # Line 1588
    sltu	$t3,$s0,$a0
    li	$a2,0x8013
    # Line 1590
    ld	$t9,8($sp)
    ld	$a4,8($sp)
    # Line 1588
    bnez	$t3,.L0d98d3d8
    sltu	$t8,$a0,$s0
    bnez	$t8,.L0d98d2d4
    # Line 1627
    ld	$s0,16($sp)
    # Line 1590
    lwc1	$f3,16($v0)
    trunc.w.s	$f3,$f3
    swc1	$f3,0($t9)
    # Line 1591
    lwc1	$f2,20($v0)
    trunc.w.s	$f2,$f2
    swc1	$f2,4($t9)
    # Line 1592
    lwc1	$f1,24($v0)
    trunc.w.s	$f1,$f1
    swc1	$f1,8($t9)
    # Line 1593
    lwc1	$f0,28($v0)
    # Line 1627
    ld	$gp,32($sp)
    # Line 1593
    trunc.w.s	$f0,$f0
    # Line 1627
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1593
    swc1	$f0,12($t9)
.L0d98d38c:
    # Line 1588
    li	$a0,0x801a
    sltu	$ra,$s0,$a0
    # Line 1612
    ld	$t1,8($sp)
    # Line 1588
    li	$a7,0x8019
    # Line 1615
    ld	$v1,8($sp)
    # Line 1588
    bnez	$ra,.L0d98d410
    sltu	$at,$a0,$s0
    bnez	$at,.L0d98d2d4
    # Line 1614
    li	$v0,11
    # Line 1615
    b	.L0d98d2e0
    # Line 1614
    sw	$v0,0($v1)
.L0d98d3b8:
    # Line 1581
    beq	$s0,$a0,.L0d98d3c4
    li	$a1,0x801b
    bne	$s0,$a1,.L0d98d29c
.L0d98d3c4:
    # Line 1584
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98d2e4
    ld	$ra,40($sp)
.L0d98d3d8:
    # Line 1588
    bne	$s0,$a2,.L0d98d2d8
    # Line 1626
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1602
    lw	$a3,4($v0)
    b	.L0d98d2e0
    sw	$a3,0($a4)
.L0d98d3ec:
    # Line 1627
    ld	$gp,32($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$ra,40($sp)
    # Line 1608
    ld	$a6,8($sp)
    lw	$a5,64($v0)
    # Line 1627
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1608
    sw	$a5,0($a6)
.L0d98d410:
    # Line 1588
    bne	$s0,$a7,.L0d98d2d8
    # Line 1626
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1611
    lw	$t0,68($v0)
    # Line 1612
    b	.L0d98d2e0
    # Line 1611
    sw	$t0,0($t1)
.L0d98d424:
    # Line 1573
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98d2e4
    ld	$ra,40($sp)
.L0d98d438:
    # Line 1577
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98d2e4
    ld	$ra,40($sp)
.L0d98d44c:
    # Line 1596
    lwc1	$f7,32($v0)
    ld	$t2,8($sp)
    trunc.w.s	$f7,$f7
    swc1	$f7,0($t2)
    # Line 1597
    lwc1	$f6,36($v0)
    trunc.w.s	$f6,$f6
    swc1	$f6,4($t2)
    # Line 1598
    lwc1	$f5,40($v0)
    # Line 1627
    ld	$gp,32($sp)
    # Line 1598
    trunc.w.s	$f5,$f5
    swc1	$f5,8($t2)
    # Line 1599
    lwc1	$f4,44($v0)
    ld	$ra,40($sp)
    # Line 1627
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    # Line 1599
    trunc.w.s	$f4,$f4
    # Line 1627
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1599
    swc1	$f4,12($t2)
.L0d98d498:
    # Line 1617
    li	$t3,11
    # Line 1618
    b	.L0d98d2e0
    # Line 1617
    sw	$t3,0($t8)
.L0d98d4a4:
    # Line 1620
    ld	$s0,48($sp)
    ld	$ra,0($sp)
    lwc1	$f14,48($s0)
    lwc1	$f13,3564($ra)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($ra)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$v0,8($sp)
    trunc.w.s	$f15,$f0
    # Line 1621
    ld	$at,0($sp)
    # Line 1620
    swc1	$f15,0($v0)
    # Line 1621
    lwc1	$f14,52($s0)
    lwc1	$f13,3564($at)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($at)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a0,8($sp)
    trunc.w.s	$f15,$f0
    # Line 1622
    ld	$v1,0($sp)
    # Line 1621
    swc1	$f15,4($a0)
    # Line 1622
    lwc1	$f14,56($s0)
    lwc1	$f13,3564($v1)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($v1)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    ld	$a2,8($sp)
    trunc.w.s	$f15,$f0
    # Line 1623
    ld	$a1,0($sp)
    # Line 1622
    swc1	$f15,8($a2)
    # Line 1623
    lwc1	$f14,60($s0)
    lwc1	$f13,3564($a1)
    # lw $t9, -16948($gp) # &floorf
    lwc1	$f12,3540($a1)
    mul.s	$f13,$f13,$f14
    jal	floorf
    mul.s	$f12,$f12,$f13
    # Line 1624
    ld	$a3,8($sp)
    # Line 1623
    trunc.w.s	$f16,$f0
    # Line 1624
    b	.L0d98d2e0
    # Line 1623
    swc1	$f16,12($a3)
.end __glOdyim_GetConvolutionParameterivEXT

# Function: __glOdyim_ColorTableSGI
# Declared: Line 1632 (Source lines: 1634-1765)
# Address: 0x0d98d560 - 0x0d98da70 (Size: 1296 bytes, Frame: 224)
.globl __glOdyim_ColorTableSGI
.ent __glOdyim_ColorTableSGI
__glOdyim_ColorTableSGI:
    # Line 1638
    lw	$v1,4112($zero)
    # Line 1634
    addiu	$sp,$sp,-224
    sd	$a5,104($sp)
    sd	$a4,120($sp)
    sd	$a3,112($sp)
    sd	$a2,128($sp)
    # Line 1638
    sd	$v1,136($sp)
    lw	$v0,4120($zero)
    sw	$a1,188($sp)
    # Line 1634
    sd	$s0,144($sp)
    lui	$at,0x17
    move	$s0,$a0
    sd	$ra,160($sp)
    addiu	$at,$at,-20432
    sd	$gp,152($sp)
    # Line 1638
    beqz	$v0,.L0d98d5e4
    # Line 1634
    addu	$gp,$t9,$at
    # Line 1638
    li	$v1,2
    beq	$v0,$v1,.L0d98d5cc
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d98d5b8:
    ld	$ra,160($sp)
.L0d98d5bc:
    ld	$s0,144($sp)
    # Line 1765
    ld	$gp,152($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d98d5cc:
    # Line 1638
    ld	$t9,136($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    sw	$zero,4120($zero)
.L0d98d5e4:
    # Line 1641
    ld	$a0,136($sp)
    # lw $t9, -26880($gp) # &__glCheckColorTableArgs
    lw	$a2,188($sp)
    move	$a1,$s0
    ld	$a4,112($sp)
    move	$a3,$zero
    jal	__glCheckColorTableArgs
    ld	$a5,120($sp)
    beqz	$v0,.L0d98d620
    move	$t1,$v0
    # Line 1644
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d98d5bc
    ld	$ra,160($sp)
.L0d98d620:
    # Line 1648
    li	$t3,0x80bd
    beq	$t3,$s0,.L0d98d650
    li	$ra,0x80d3
    beq	$s0,$ra,.L0d98d650
    li	$at,0x80d4
    beq	$s0,$at,.L0d98d654
    # Line 1653
    li	$t2,1
    # Line 1648
    li	$v1,0x80d5
    beq	$s0,$v1,.L0d98d654
    # Line 1653
    li	$t2,1
    # Line 1656
    b	.L0d98d654
    move	$t2,$zero
.L0d98d650:
    # Line 1653
    li	$t2,1
.L0d98d654:
    # Line 1658
    li	$t8,0x80bc
    beq	$t8,$s0,.L0d98d6a8
    # Line 1672
    ld	$a5,128($sp)
    # Line 1658
    beq	$t3,$s0,.L0d98d6a4
    # Line 1672
    ld	$a0,128($sp)
    bltz	$a0,.L0d98d688
    ld	$a1,128($sp)
    blez	$a1,.L0d98d6e0
    ld	$a2,128($sp)
    addiu	$a3,$a2,-1
    and	$a2,$a2,$a3
    beqz	$a2,.L0d98d6e4
    # Line 1673
    ld	$t8,128($sp)
.L0d98d688:
    # Line 1672
    li	$a4,1281
    sd	$a4,24($sp)
.L0d98d690:
    # Line 1684
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    ld	$a0,24($sp)
    b	.L0d98d5bc
    ld	$ra,160($sp)
.L0d98d6a4:
    # Line 1672
    ld	$a5,128($sp)
.L0d98d6a8:
    bltz	$a5,.L0d98d688
    ld	$a6,128($sp)
    blez	$a6,.L0d98d6cc
    # Line 1673
    ld	$t3,128($sp)
    # Line 1672
    ld	$a7,128($sp)
    addiu	$t0,$a7,-1
    and	$a7,$a7,$t0
    bnez	$a7,.L0d98d688
    # Line 1673
    ld	$t3,128($sp)
.L0d98d6cc:
    slti	$t3,$t3,257
    bnez	$t3,.L0d98d6fc
    nop
    b	.L0d98d6f0
    nop
.L0d98d6e0:
    ld	$t8,128($sp)
.L0d98d6e4:
    slti	$t8,$t8,4097
    bnez	$t8,.L0d98d6fc
    nop
.L0d98d6f0:
    beqz	$t2,.L0d98d804
    # Line 1680
    li	$a3,0x8031
    sw	$zero,188($sp)
.L0d98d6fc:
    # Line 1678
    bnez	$v0,.L0d98d690
    sd	$t1,24($sp)
    # Line 1690
    bnez	$t2,.L0d98d71c
    ld	$t9,128($sp)
    slti	$t9,$t9,2049
    sd	$t2,32($sp)
    beqz	$t9,.L0d98d778
    sd	$t1,24($sp)
.L0d98d71c:
    sd	$t2,32($sp)
    sd	$t1,24($sp)
    # Line 1691
    lw	$a2,188($sp)
    ld	$t9,136($sp)
    ld	$a3,128($sp)
    move	$a0,$t9
    lw	$t9,12720($t9)
    ld	$a4,112($sp)
    move	$a1,$s0
    ld	$a5,120($sp)
    ld	$a6,104($sp)
    jalr	$t9
    move	$a7,$zero
    # Line 1715
    li	$a1,2
    sw	$a1,4120($zero)
    ld	$at,136($sp)
    ld	$v0,32($sp)
    lw	$ra,11812($at)
    ori	$ra,$ra,0x11
    bnez	$v0,.L0d98d5b8
    sw	$ra,11812($at)
    b	.L0d98d7c8
    # Line 1723
    li	$v0,0x80d0
.L0d98d778:
    # Line 1698
    ld	$t9,136($sp)
    lw	$a2,188($sp)
    move	$a0,$t9
    lw	$t9,12720($t9)
    ld	$a3,128($sp)
    move	$a1,$s0
    ld	$a4,112($sp)
    move	$a6,$zero
    ld	$a5,120($sp)
    jalr	$t9
    li	$a7,1
    ld	$ra,104($sp)
    bnez	$ra,.L0d98d80c
.L0d98d7ac:
    # Line 1715
    ld	$v0,136($sp)
.L0d98d7b0:
    li	$a1,2
    sw	$a1,4120($zero)
    lw	$at,11812($v0)
    ori	$at,$at,0x11
    sw	$at,11812($v0)
    # Line 1723
    li	$v0,0x80d0
.L0d98d7c8:
    beq	$s0,$v0,.L0d98d8cc
    li	$v1,0x80bc
    beq	$v1,$s0,.L0d98d8e0
    li	$a0,0x80d1
    beq	$s0,$a0,.L0d98da4c
    li	$a1,0x80d2
    beq	$s0,$a1,.L0d98da60
    # Line 1755
    nop	# was lw $t9, -31092($gp) # &__glOdysseyStoreLUT
.L0d98d7e8:
    # Line 1759
    ld	$a2,24($sp)
    beqz	$a2,.L0d98d5b8
    # Line 1762
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    ld	$a0,24($sp)
    b	.L0d98d5bc
    ld	$ra,160($sp)
.L0d98d804:
    # Line 1680
    b	.L0d98d690
    sd	$a3,24($sp)
.L0d98d80c:
    # Line 1703
    ld	$a0,112($sp)
    # lw $t9, -28148($gp) # &__glSpecElementsPerGroup
    ld	$a1,120($sp)
    # Line 1702
    ld	$a4,104($sp)
    # Line 1703
    jal	__glSpecElementsPerGroup
    # Line 1702
    sd	$a4,96($sp)
    # Line 1703
    # lw $t9, -28144($gp) # &__glSpecBytesPerElement
    sd	$v0,8($sp)
    jal	__glSpecBytesPerElement
    ld	$a0,120($sp)
    ld	$a5,128($sp)
    blez	$a5,.L0d98d7ac
    ld	$a7,8($sp)
    mult	$a7,$v0
    sd	$zero,88($sp)
    mflo	$a6
    nop
    sd	$a6,16($sp)
.L0d98d854:
    # Line 1707
    ld	$a6,96($sp)
    ld	$a5,120($sp)
    ld	$a0,136($sp)
    # Line 1706
    ld	$t1,128($sp)
    # Line 1707
    lw	$t9,12724($a0)
    ld	$a4,112($sp)
    # Line 1706
    li	$a3,2048
    slti	$t0,$t1,2048
    # Line 1707
    move	$a7,$zero
    ld	$a2,88($sp)
    # Line 1706
    movn	$a3,$t1,$t0
    # Line 1707
    move	$a1,$s0
    jalr	$t9
    # Line 1706
    sd	$a3,40($sp)
    # Line 1709
    ld	$t0,40($sp)
    ld	$t1,16($sp)
    mult	$t1,$t0
    # Line 1711
    ld	$a5,96($sp)
    # Line 1710
    ld	$a4,128($sp)
    # Line 1711
    ld	$a7,88($sp)
    # Line 1710
    subu	$a4,$a4,$t0
    sd	$a4,128($sp)
    # Line 1711
    addu	$a7,$t0,$a7
    sd	$a7,88($sp)
    # Line 1709
    mflo	$a6
    addu	$a5,$a5,$a6
    # Line 1711
    bgtz	$a4,.L0d98d854
    sd	$a5,96($sp)
    b	.L0d98d7b0
    # Line 1715
    ld	$v0,136($sp)
.L0d98d8cc:
    # Line 1725
    # lw $t9, -31092($gp) # &__glOdysseyStoreLUT
    jal	__glOdysseyStoreLUT
    move	$a0,$zero
    b	.L0d98d7e8
    sd	$v0,24($sp)
.L0d98d8e0:
    # Line 1728
    # lw $t9, -31092($gp) # &__glOdysseyStoreLUT
    jal	__glOdysseyStoreLUT
    li	$a0,1
    # Line 1743
    li	$a2,512
    ld	$s0,136($sp)
    move	$a1,$zero
    lui	$t8,0x1
    li	$t9,0x20
    addu	$s0,$s0,$t8
    addiu	$a6,$s0,-20624
    addiu	$ra,$s0,-29316
    sd	$t9,56($sp)
    addiu	$t2,$s0,-29288
    addiu	$t9,$s0,-29312
    # Line 1728
    sd	$v0,24($sp)
    addiu	$a3,$s0,-20640
    addiu	$t8,$s0,-29304
    # Line 1743
    sd	$s0,0($sp)
    addiu	$a4,$s0,-20632
    addiu	$v1,$s0,-29300
    sd	$v1,80($sp)
    addiu	$a5,$s0,-29296
    addiu	$v0,$s0,-20636
    sd	$v0,72($sp)
    addiu	$t1,$s0,-29292
    addiu	$at,$s0,-29308
    sd	$at,64($sp)
    addiu	$t3,$s0,-20628
    addiu	$s0,$s0,-20652
    addiu	$at,$s0,8
    sd	$at,48($sp)
    addiu	$a0,$s0,4
.L0d98d960:
    ld	$v1,64($sp)
    ld	$v0,48($sp)
    addu	$t0,$a1,$s0
    addu	$at,$a1,$ra
    lw	$t0,0($t0)
    addu	$a7,$a1,$a0
    sw	$t0,0($at)
    addu	$t0,$a1,$t9
    lw	$a7,0($a7)
    sw	$a7,0($t0)
    addu	$v0,$a1,$v0
    ld	$t0,80($sp)
    addu	$v1,$a1,$v1
    lw	$v0,0($v0)
    sw	$v0,0($v1)
    addu	$at,$a1,$a3
    ld	$a7,72($sp)
    addu	$v0,$a1,$t8
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$a7,$a1,$a7
    addu	$t0,$a1,$t0
    lw	$a7,0($a7)
    addu	$v1,$a1,$a4
    sw	$a7,0($t0)
    addu	$a7,$a1,$a5
    lw	$v1,0($v1)
    addu	$v0,$a1,$t3
    sw	$v1,0($a7)
    addu	$v1,$a1,$t1
    lw	$v0,0($v0)
    sw	$v0,0($v1)
    addiu	$a2,$a2,-8
    addu	$at,$a1,$a6
    ld	$v1,56($sp)
    addu	$v0,$a1,$t2
    lw	$at,0($at)
    sw	$at,0($v0)
    bgtz	$a2,.L0d98d960
    addu	$a1,$a1,$v1
    # Line 1745
    ld	$t3,0($sp)
    ld	$ra,136($sp)
    lw	$at,-18600($t3)
    lui	$v0,0x70
    lw	$t9,31956($ra)
    nor	$v1,$v0,$zero
    sll	$at,$at,0x14
    and	$t9,$t9,$v1
    and	$at,$at,$v0
    or	$t9,$t9,$at
    sw	$t9,31956($ra)
    # Line 1748
    lui	$t8,0x40
    lw	$t2,26976($t3)
    ori	$t8,$t8,0x200
    or	$t2,$t2,$t8
    sw	$t2,26976($t3)
    # Line 1750
    li	$t1,2
    b	.L0d98d7e8
    # Line 1748
    sw	$t1,4120($zero)
.L0d98da4c:
    # Line 1752
    # lw $t9, -31092($gp) # &__glOdysseyStoreLUT
    jal	__glOdysseyStoreLUT
    li	$a0,2
    # Line 1753
    b	.L0d98d7e8
    # Line 1752
    sd	$v0,24($sp)
.L0d98da60:
    # Line 1755
    jalr	$t9
    li	$a0,3
    # Line 1756
    b	.L0d98d7e8
    # Line 1755
    sd	$v0,24($sp)
.end __glOdyim_ColorTableSGI

# Function: __glOdyim_CopyColorTableSGI
# Declared: Line 1768 (Source lines: 1770-1821)
# Address: 0x0d98da70 - 0x0d98de10 (Size: 928 bytes, Frame: 192)
.globl __glOdyim_CopyColorTableSGI
.ent __glOdyim_CopyColorTableSGI
__glOdyim_CopyColorTableSGI:
    # Line 1770
    addiu	$sp,$sp,-192
    sd	$s1,160($sp)
    # Line 1775
    lw	$s1,4112($zero)
    sd	$ra,176($sp)
    # Line 1770
    move	$v0,$a3
    sd	$s2,152($sp)
    move	$s2,$a4
    # Line 1775
    li	$v1,1
    lw	$at,4120($zero)
    # Line 1770
    sd	$s3,136($sp)
    move	$s3,$a1
    lui	$a1,0x17
    sd	$s0,144($sp)
    move	$s0,$a0
    addiu	$a0,$a1,-21728
    sd	$gp,168($sp)
    # Line 1775
    beq	$at,$v1,.L0d98dde8
    # Line 1770
    addu	$gp,$t9,$a0
    # Line 1777
    li	$a3,0x80bd
    beq	$s0,$a3,.L0d98ddd4
    li	$a4,0x80d3
    beq	$s0,$a4,.L0d98ddd8
    # Line 1782
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1777
    li	$a5,0x80d4
    beq	$s0,$a5,.L0d98ddd8
    # Line 1782
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1777
    li	$a6,0x80d5
    sd	$a2,120($sp)
    beq	$s0,$a6,.L0d98ddd4
    sd	$v0,112($sp)
    # Line 1787
    move	$a0,$s1
    # lw $t9, -26880($gp) # &__glCheckColorTableArgs
    move	$a1,$s0
    move	$a2,$s3
    move	$a3,$zero
    li	$a5,5126
    jal	__glCheckColorTableArgs
    li	$a4,6408
    beqz	$v0,.L0d98db20
    # Line 1789
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d98ddb8
    ld	$s3,136($sp)
.L0d98db20:
    # Line 1790
    blez	$s2,.L0d98dc50
    # Line 1809
    la	$a2,__glOdyssey_InternalUnpack
    # Line 1795
    lw	$t9,0($s1)
    move	$a0,$s1
    jalr	$t9
    sll	$a1,$s2,0x4
    beqz	$v0,.L0d98ddfc
    sd	$v0,128($sp)
    # Line 1800
    la	$a4,__glOdyssey_InternalUnpack
    sd	$v0,96($sp)
    ld	$t0,1144($s1)
    ld	$t1,1152($s1)
    ld	$t2,1160($s1)
    ld	$t3,1168($s1)
    ld	$t8,1176($s1)
    lw	$t9,1184($s1)
    sw	$t9,40($sp)
    sd	$t8,32($sp)
    sd	$t3,24($sp)
    sd	$t2,16($sp)
    sd	$t1,8($sp)
    addiu	$t1,$s1,1144
    sd	$t0,0($sp)
    # Line 1801
    lw	$a7,0($a4)
    sw	$a7,1144($s1)
    lw	$a6,4($a4)
    sw	$a6,1148($s1)
    lw	$a5,8($a4)
    sw	$a5,1152($s1)
    lw	$a3,12($a4)
    sw	$a3,1156($s1)
    lw	$a2,16($a4)
    sw	$a2,1160($s1)
    lw	$a1,20($a4)
    sw	$a1,1164($s1)
    lw	$a0,24($a4)
    sw	$a0,1168($s1)
    lw	$v1,28($a4)
    sw	$v1,1172($s1)
    lw	$v0,32($a4)
    sw	$v0,1176($s1)
    lw	$at,36($a4)
    sw	$at,1180($s1)
    lw	$ra,40($a4)
    sw	$ra,1184($s1)
    # Line 1803
    # lw $t9, -27688($gp) # &__glGetCurrentSetDefaultPixelXferState
    jal	__glGetCurrentSetDefaultPixelXferState
    move	$a0,$s1
    sd	$v0,104($sp)
    # Line 1805
    # lw $t9, -31544($gp) # &__glOdyim_ReadPixels
    ld	$a0,120($sp)
    move	$a2,$s2
    ld	$a1,112($sp)
    li	$a5,5123
    li	$a4,6408
    ld	$a6,96($sp)
    bal __glOdyim_ReadPixels
    li	$a3,1
    # Line 1809
    ld	$a1,104($sp)
    # Line 1808
    ld	$t0,0($sp)
    ld	$t1,8($sp)
    ld	$t2,16($sp)
    ld	$t3,24($sp)
    ld	$t8,32($sp)
    sd	$t8,1176($s1)
    sd	$t3,1168($s1)
    lw	$t9,40($sp)
    sw	$t9,1184($s1)
    # Line 1809
    # lw $t9, -27684($gp) # &__glRestoreCurrentPixelXferState
    # Line 1808
    sd	$t2,1160($s1)
    sd	$t1,1152($s1)
    # Line 1809
    move	$a0,$s1
    jal	__glRestoreCurrentPixelXferState
    # Line 1808
    sd	$t0,1144($s1)
    b	.L0d98dc54
    la	$a2,__glOdyssey_InternalUnpack
.L0d98dc50:
    # Line 1809
    sd	$zero,128($sp)
.L0d98dc54:
    # Line 1812
    addiu	$a3,$sp,48
    addiu	$a0,$s1,1188
    lw	$ra,1188($s1)
    lw	$a4,1208($s1)
    lw	$t1,1228($s1)
    lw	$t0,1224($s1)
    lw	$a7,1220($s1)
    lw	$a6,1216($s1)
    lw	$a5,1212($s1)
    lw	$a1,1204($s1)
    lw	$v1,1200($s1)
    lw	$v0,1196($s1)
    lw	$at,1192($s1)
    sw	$at,4($a3)
    sw	$v0,8($a3)
    sw	$v1,12($a3)
    sw	$a1,16($a3)
    sw	$a5,24($a3)
    sw	$a6,28($a3)
    sw	$a7,32($a3)
    sw	$t0,36($a3)
    sw	$t1,40($a3)
    addiu	$t2,$s1,1220
    sw	$a4,20($a3)
    addiu	$a4,$s1,1228
    addiu	$t1,$s1,1224
    sw	$ra,48($sp)
    # Line 1813
    lw	$t9,0($a2)
    sw	$t9,1188($s1)
    lw	$t0,4($a2)
    sw	$t0,1192($s1)
    lw	$a7,8($a2)
    sw	$a7,1196($s1)
    lw	$a6,12($a2)
    sw	$a6,1200($s1)
    lw	$a5,16($a2)
    sw	$a5,1204($s1)
    lw	$a1,20($a2)
    sw	$a1,1208($s1)
    lw	$v1,24($a2)
    sw	$v1,1212($s1)
    lw	$v0,28($a2)
    sw	$v0,1216($s1)
    lw	$at,32($a2)
    sw	$at,1220($s1)
    lw	$ra,36($a2)
    sw	$ra,1224($s1)
    lw	$t9,40($a2)
    sw	$t9,1228($s1)
    # Line 1815
    # lw $t9, -31468($gp) # &__glOdyim_ColorTableSGI
    move	$a0,$s0
    move	$a1,$s3
    move	$a2,$s2
    li	$a4,5123
    ld	$a5,128($sp)
    bal __glOdyim_ColorTableSGI
    li	$a3,6408
    ld	$v0,128($sp)
    # Line 1818
    addiu	$a1,$s1,1188
    addiu	$a0,$sp,48
    lw	$ra,32($a0)
    lw	$at,36($a0)
    lw	$v1,40($a0)
    lw	$a4,28($a0)
    lw	$a5,24($a0)
    lw	$a6,20($a0)
    lw	$a7,16($a0)
    lw	$t0,12($a0)
    lw	$t1,8($a0)
    lw	$t2,4($a0)
    lw	$t3,48($sp)
    sw	$t3,1188($s1)
    sw	$t2,1192($s1)
    sw	$t1,1196($s1)
    sw	$t0,1200($s1)
    sw	$a7,1204($s1)
    sw	$a6,1208($s1)
    sw	$a5,1212($s1)
    sw	$a4,1216($s1)
    sw	$v1,1228($s1)
    sw	$at,1224($s1)
    sw	$ra,1220($s1)
    beqz	$v0,.L0d98ddb8
    ld	$s3,136($sp)
    # Line 1821
    lw	$t9,12($s1)
    move	$a0,$s1
    jal	__glOdyim_ColorTableSGI
    move	$a1,$v0
    ld	$s3,136($sp)
.L0d98ddb8:
    ld	$s0,144($sp)
    ld	$ra,176($sp)
    ld	$s2,152($sp)
    ld	$s1,160($sp)
    # Line 1783
    ld	$gp,168($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d98ddd4:
    # Line 1782
    # lw $t9, -26792($gp) # &__glSetError
.L0d98ddd8:
    jal	__glSetError
    li	$a0,1280
    b	.L0d98ddb8
    ld	$s3,136($sp)
.L0d98dde8:
    # Line 1775
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98ddb8
    ld	$s3,136($sp)
.L0d98ddfc:
    # Line 1797
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d98ddb8
    ld	$s3,136($sp)
.end __glOdyim_CopyColorTableSGI

# Function: __glOdyim_ColorSubTable
# Declared: Line 1826 (Source lines: 1828-1890)
# Address: 0x0d98de10 - 0x0d98e12c (Size: 796 bytes, Frame: 144)
.globl __glOdyim_ColorSubTable
.ent __glOdyim_ColorSubTable
__glOdyim_ColorSubTable:
    # Line 1830
    lw	$v1,4112($zero)
    # Line 1828
    addiu	$sp,$sp,-144
    sd	$a5,64($sp)
    sd	$a4,80($sp)
    sd	$a3,88($sp)
    sd	$a2,96($sp)
    sd	$a1,72($sp)
    sd	$a0,104($sp)
    # Line 1830
    lw	$v0,4120($zero)
    sd	$v1,112($sp)
    # Line 1828
    lui	$at,0x17
    sd	$ra,136($sp)
    addiu	$at,$at,-22656
    sd	$gp,120($sp)
    # Line 1830
    beqz	$v0,.L0d98de8c
    # Line 1828
    addu	$gp,$t9,$at
    # Line 1830
    li	$v1,2
    beq	$v0,$v1,.L0d98de74
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d98de64:
    ld	$ra,136($sp)
.L0d98de68:
    # Line 1890
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d98de74:
    # Line 1830
    ld	$t9,112($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    sw	$zero,4120($zero)
.L0d98de8c:
    # Line 1834
    ld	$a0,112($sp)
    ld	$a1,104($sp)
    ld	$a2,72($sp)
    # lw $t9, -26876($gp) # &__glCheckColorSubTableArgs
    ld	$a3,96($sp)
    ld	$a4,88($sp)
    jal	__glCheckColorSubTableArgs
    ld	$a5,80($sp)
    # Line 1839
    ld	$at,64($sp)
    # Line 1834
    beqz	$v0,.L0d98decc
    move	$t1,$v0
    # Line 1836
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d98de68
    ld	$ra,136($sp)
.L0d98decc:
    # Line 1839
    ld	$ra,96($sp)
    beqz	$ra,.L0d98de68
    ld	$ra,136($sp)
    beqz	$at,.L0d98de64
    sd	$v0,128($sp)
    # Line 1843
    ld	$a1,104($sp)
    ld	$a2,72($sp)
    ld	$t9,112($sp)
    ld	$a3,96($sp)
    move	$a0,$t9
    lw	$t9,12724($t9)
    ld	$a4,88($sp)
    ld	$a5,80($sp)
    ld	$a6,64($sp)
    jalr	$t9
    move	$a7,$zero
    # Line 1845
    li	$v0,2
    sw	$v0,4120($zero)
    ld	$at,112($sp)
    # Line 1848
    ld	$v1,104($sp)
    li	$a0,0x80d0
    # Line 1845
    lw	$ra,11812($at)
    ld	$a3,128($sp)
    # Line 1848
    li	$a4,0x80d2
    li	$a1,0x80d1
    # Line 1845
    ori	$ra,$ra,0x11
    # Line 1848
    beq	$v1,$a0,.L0d98df7c
    # Line 1845
    sw	$ra,11812($at)
    # Line 1848
    ld	$at,104($sp)
    li	$v1,0x80bc
    beq	$at,$v1,.L0d98df90
    ld	$a0,104($sp)
    beq	$a0,$a1,.L0d98e10c
    # Line 1877
    nop	# was lw $t9, -31092($gp) # &__glOdysseyStoreLUT
    # Line 1848
    ld	$a2,104($sp)
    beq	$a2,$a4,.L0d98e11c
    # Line 1880
    nop	# was lw $t9, -31092($gp) # &__glOdysseyStoreLUT
.L0d98df60:
    # Line 1884
    beqz	$a3,.L0d98de68
    ld	$ra,136($sp)
    # Line 1887
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$a3
    b	.L0d98de68
    ld	$ra,136($sp)
.L0d98df7c:
    # Line 1850
    # lw $t9, -31092($gp) # &__glOdysseyStoreLUT
    jal	__glOdysseyStoreLUT
    move	$a0,$zero
    b	.L0d98df60
    move	$a3,$v0
.L0d98df90:
    # Line 1853
    # lw $t9, -31092($gp) # &__glOdysseyStoreLUT
    jal	__glOdysseyStoreLUT
    li	$a0,1
    # Line 1868
    li	$a2,512
    move	$a1,$zero
    ld	$a7,112($sp)
    # Line 1853
    move	$a3,$v0
    # Line 1868
    lui	$t0,0x1
    li	$t1,0x20
    addu	$a7,$a7,$t0
    sd	$t1,16($sp)
    addiu	$a0,$a7,-29316
    addiu	$t2,$a7,-29308
    sd	$a7,0($sp)
    addiu	$ra,$a7,-20640
    addiu	$v1,$a7,-20624
    sd	$v1,32($sp)
    addiu	$a4,$a7,-29304
    addiu	$v0,$a7,-29288
    sd	$v0,24($sp)
    addiu	$t9,$a7,-20632
    addiu	$at,$a7,-29312
    sd	$at,8($sp)
    addiu	$a5,$a7,-29292
    addiu	$t0,$a7,-29296
    sd	$t0,40($sp)
    addiu	$a6,$a7,-20628
    addiu	$t1,$a7,-29300
    addiu	$t3,$a7,-20636
    addiu	$a7,$a7,-20652
    sd	$a7,56($sp)
    addiu	$t8,$a7,8
    addiu	$a7,$a7,4
    sd	$a7,48($sp)
.L0d98e018:
    ld	$at,56($sp)
    ld	$t0,8($sp)
    ld	$a7,48($sp)
    addu	$at,$a1,$at
    addu	$v0,$a1,$a0
    lw	$at,0($at)
    addu	$a7,$a1,$a7
    sw	$at,0($v0)
    addu	$t0,$a1,$t0
    lw	$a7,0($a7)
    sw	$a7,0($t0)
    addu	$v1,$a1,$t8
    ld	$t0,40($sp)
    addu	$a7,$a1,$t2
    lw	$v1,0($v1)
    addu	$v0,$a1,$ra
    sw	$v1,0($a7)
    addu	$v1,$a1,$a4
    lw	$v0,0($v0)
    addu	$at,$a1,$t3
    sw	$v0,0($v1)
    addu	$v0,$a1,$t1
    lw	$at,0($at)
    sw	$at,0($v0)
    ld	$v0,24($sp)
    addu	$a7,$a1,$t9
    ld	$at,32($sp)
    addu	$t0,$a1,$t0
    lw	$a7,0($a7)
    addu	$v1,$a1,$a6
    sw	$a7,0($t0)
    addu	$a7,$a1,$a5
    lw	$v1,0($v1)
    sw	$v1,0($a7)
    addiu	$a2,$a2,-8
    ld	$v1,16($sp)
    addu	$at,$a1,$at
    addu	$v0,$a1,$v0
    lw	$at,0($at)
    addu	$a1,$a1,$v1
    bgtz	$a2,.L0d98e018
    sw	$at,0($v0)
    # Line 1870
    ld	$a0,0($sp)
    ld	$a4,112($sp)
    lw	$a5,-18600($a0)
    lui	$a6,0x70
    lw	$a2,31956($a4)
    nor	$a7,$a6,$zero
    sll	$a5,$a5,0x14
    and	$a2,$a2,$a7
    and	$a5,$a5,$a6
    or	$a2,$a2,$a5
    sw	$a2,31956($a4)
    # Line 1872
    lui	$a1,0x40
    lw	$v1,26976($a0)
    ori	$a1,$a1,0x200
    or	$v1,$v1,$a1
    sw	$v1,26976($a0)
    # Line 1875
    li	$v0,2
    b	.L0d98df60
    # Line 1872
    sw	$v0,4120($zero)
.L0d98e10c:
    # Line 1877
    jalr	$t9
    move	$a0,$v0
    # Line 1878
    b	.L0d98df60
    # Line 1877
    move	$a3,$v0
.L0d98e11c:
    # Line 1880
    jalr	$t9
    li	$a0,3
    # Line 1881
    b	.L0d98df60
    # Line 1880
    move	$a3,$v0
.end __glOdyim_ColorSubTable

# Function: __glOdyim_CopyColorSubTable
# Declared: Line 1893 (Source lines: 1895-1945)
# Address: 0x0d98e130 - 0x0d98e4c8 (Size: 920 bytes, Frame: 176)
.globl __glOdyim_CopyColorSubTable
.ent __glOdyim_CopyColorSubTable
__glOdyim_CopyColorSubTable:
    # Line 1895
    addiu	$sp,$sp,-176
    sd	$s0,128($sp)
    # Line 1900
    lw	$s0,4112($zero)
    sd	$ra,168($sp)
    sd	$s4,160($sp)
    # Line 1895
    move	$v0,$a2
    sd	$s2,152($sp)
    move	$s2,$a4
    # Line 1900
    li	$v1,1
    lw	$at,4120($zero)
    # Line 1895
    sd	$s3,144($sp)
    move	$s3,$a1
    lui	$a1,0x17
    sd	$s1,120($sp)
    move	$s1,$a0
    addiu	$a0,$a1,-23456
    sd	$gp,136($sp)
    # Line 1900
    beq	$at,$v1,.L0d98e4a4
    # Line 1895
    addu	$gp,$t9,$a0
    # Line 1902
    li	$a2,0x80bd
    beq	$s1,$a2,.L0d98e490
    li	$a4,0x80d3
    beq	$s1,$a4,.L0d98e494
    # Line 1907
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1902
    li	$a5,0x80d4
    beq	$s1,$a5,.L0d98e494
    # Line 1907
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1902
    li	$a6,0x80d5
    sd	$a3,104($sp)
    beq	$s1,$a6,.L0d98e490
    sd	$v0,96($sp)
    # Line 1911
    move	$a0,$s0
    # lw $t9, -26876($gp) # &__glCheckColorSubTableArgs
    move	$a1,$s1
    move	$a2,$s3
    move	$a3,$s2
    li	$a5,5126
    jal	__glCheckColorSubTableArgs
    li	$a4,6408
    beqz	$v0,.L0d98e1e8
    move	$s4,$v0
    # Line 1913
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d98e470
    ld	$s4,160($sp)
.L0d98e1e8:
    # Line 1914
    beqz	$s2,.L0d98e470
    ld	$s4,160($sp)
    # Line 1921
    lw	$t9,0($s0)
    move	$a0,$s0
    jalr	$t9
    sll	$a1,$s2,0x4
    beqz	$v0,.L0d98e4b8
    # Line 1923
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 1926
    la	$a4,__glOdyssey_InternalUnpack
    sd	$v0,112($sp)
    ld	$a7,1144($s0)
    ld	$t1,1160($s0)
    ld	$t0,1152($s0)
    ld	$t2,1168($s0)
    ld	$t3,1176($s0)
    lw	$t8,1184($s0)
    sw	$t8,40($sp)
    sd	$t3,32($sp)
    sd	$t2,24($sp)
    sd	$t0,8($sp)
    sd	$t1,16($sp)
    addiu	$t1,$s0,1144
    sd	$a7,0($sp)
    # Line 1927
    lw	$a7,0($a4)
    sw	$a7,1144($s0)
    lw	$a6,4($a4)
    sw	$a6,1148($s0)
    lw	$a3,8($a4)
    sw	$a3,1152($s0)
    lw	$a2,12($a4)
    sw	$a2,1156($s0)
    lw	$a1,16($a4)
    sw	$a1,1160($s0)
    lw	$a0,20($a4)
    sw	$a0,1164($s0)
    lw	$v1,24($a4)
    sw	$v1,1168($s0)
    lw	$v0,28($a4)
    sw	$v0,1172($s0)
    lw	$at,32($a4)
    sw	$at,1176($s0)
    lw	$ra,36($a4)
    sw	$ra,1180($s0)
    lw	$t9,40($a4)
    sw	$t9,1184($s0)
    # Line 1929
    # lw $t9, -27688($gp) # &__glGetCurrentSetDefaultPixelXferState
    jal	__glGetCurrentSetDefaultPixelXferState
    move	$a0,$s0
    # Line 1931
    # lw $t9, -31544($gp) # &__glOdyim_ReadPixels
    # Line 1929
    move	$s4,$v0
    # Line 1931
    ld	$a0,96($sp)
    move	$a2,$s2
    ld	$a1,104($sp)
    li	$a5,5123
    li	$a4,6408
    ld	$a6,112($sp)
    bal __glOdyim_ReadPixels
    li	$a3,1
    # Line 1934
    ld	$t0,0($sp)
    ld	$t1,8($sp)
    ld	$t2,16($sp)
    ld	$t3,24($sp)
    ld	$t8,32($sp)
    sd	$t8,1176($s0)
    sd	$t3,1168($s0)
    lw	$t9,40($sp)
    sw	$t9,1184($s0)
    # Line 1935
    # lw $t9, -27684($gp) # &__glRestoreCurrentPixelXferState
    # Line 1934
    sd	$t2,1160($s0)
    # Line 1935
    move	$a1,$s4
    # Line 1934
    sd	$t1,1152($s0)
    # Line 1935
    move	$a0,$s0
    jal	__glRestoreCurrentPixelXferState
    # Line 1934
    sd	$t0,1144($s0)
    # Line 1937
    addiu	$a2,$sp,48
    addiu	$a0,$s0,1188
    ld	$s4,112($sp)
    lw	$ra,1188($s0)
    lw	$a4,1212($s0)
    lw	$a3,1208($s0)
    lw	$t0,1228($s0)
    lw	$a7,1224($s0)
    lw	$a6,1220($s0)
    lw	$a5,1216($s0)
    lw	$a1,1204($s0)
    lw	$v1,1200($s0)
    lw	$v0,1196($s0)
    lw	$at,1192($s0)
    sw	$at,4($a2)
    sw	$v0,8($a2)
    sw	$v1,12($a2)
    sw	$a1,16($a2)
    sw	$a5,28($a2)
    sw	$a6,32($a2)
    sw	$a7,36($a2)
    sw	$t0,40($a2)
    sw	$a3,20($a2)
    addiu	$t1,$s0,1220
    sw	$a4,24($a2)
    sw	$ra,48($sp)
    addiu	$a4,$s0,1228
    addiu	$a3,$s0,1224
    # Line 1938
    la	$v0,__glOdyssey_InternalUnpack
    lw	$t2,0($v0)
    sw	$t2,1188($s0)
    lw	$t0,4($v0)
    sw	$t0,1192($s0)
    lw	$a7,8($v0)
    sw	$a7,1196($s0)
    lw	$a6,12($v0)
    sw	$a6,1200($s0)
    lw	$v1,16($v0)
    sw	$v1,1204($s0)
    lw	$at,20($v0)
    sw	$at,1208($s0)
    lw	$ra,24($v0)
    sw	$ra,1212($s0)
    lw	$t9,28($v0)
    sw	$t9,1216($s0)
    lw	$t8,32($v0)
    sw	$t8,1220($s0)
    lw	$t3,36($v0)
    sw	$t3,1224($s0)
    lw	$t2,40($v0)
    sw	$t2,1228($s0)
    # Line 1940
    move	$a0,$s1
    # lw $t9, -31460($gp) # &__glOdyim_ColorSubTable
    move	$a1,$s3
    move	$a2,$s2
    move	$a5,$s4
    li	$a4,5123
    bal __glOdyim_ColorSubTable
    li	$a3,6408
    # Line 1943
    addiu	$v0,$s0,1188
    addiu	$a0,$sp,48
    lw	$t3,32($a0)
    lw	$t8,36($a0)
    lw	$t9,40($a0)
    lw	$ra,28($a0)
    lw	$at,24($a0)
    lw	$v1,20($a0)
    lw	$a3,16($a0)
    lw	$a4,12($a0)
    lw	$a5,8($a0)
    lw	$a6,4($a0)
    lw	$a7,48($sp)
    sw	$a7,1188($s0)
    sw	$a6,1192($s0)
    sw	$a5,1196($s0)
    sw	$a4,1200($s0)
    sw	$a3,1204($s0)
    sw	$v1,1208($s0)
    sw	$at,1212($s0)
    sw	$ra,1216($s0)
    sw	$t9,1228($s0)
    sw	$t8,1224($s0)
    sw	$t3,1220($s0)
    # Line 1945
    lw	$t9,12($s0)
    move	$a0,$s0
    jal	__glOdyim_ColorSubTable
    move	$a1,$s4
    ld	$s4,160($sp)
.L0d98e470:
    # Line 1908
    ld	$gp,136($sp)
    ld	$s0,128($sp)
    ld	$ra,168($sp)
    ld	$s1,120($sp)
    ld	$s2,152($sp)
    ld	$s3,144($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d98e490:
    # Line 1907
    # lw $t9, -26792($gp) # &__glSetError
.L0d98e494:
    jal	__glSetError
    li	$a0,1280
    b	.L0d98e470
    ld	$s4,160($sp)
.L0d98e4a4:
    # Line 1900
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98e470
    ld	$s4,160($sp)
.L0d98e4b8:
    # Line 1923
    jalr	$t9
    li	$a0,1285
    b	.L0d98e470
    ld	$s4,160($sp)
.end __glOdyim_CopyColorSubTable

# Function: __glOdysseyDrawPixels
# Declared: Line 1951 (Source lines: 1954-1969)
# Address: 0x0d98e4d0 - 0x0d98e66c (Size: 412 bytes, Frame: 208)
.globl __glOdysseyDrawPixels
.ent __glOdysseyDrawPixels
__glOdysseyDrawPixels:
    # Line 1954
    move	$t3,$a1
    move	$t2,$a2
    move	$t8,$a4
    addiu	$sp,$sp,-80
    # Line 1959
    addiu	$t0,$a0,1188
    # Line 1954
    move	$t1,$a3
    sd	$s0,48($sp)
    move	$s0,$a0
    sd	$s4,56($sp)
    lui	$at,0x17
    move	$s4,$a6
    sd	$ra,72($sp)
    addiu	$at,$at,-24384
    sd	$gp,64($sp)
    beqz	$a6,.L0d98e5d4
    addu	$gp,$t9,$at
    # Line 1959
    addiu	$a3,$sp,0
    # Line 1960
    la	$a3,__glOdyssey_InternalUnpack
    # Line 1959
    lw	$at,1220($a0)
    lw	$ra,1216($a0)
    lw	$t9,1212($a0)
    lw	$a7,1208($a0)
    lw	$a2,1204($a0)
    lw	$a1,1200($a0)
    lw	$v1,1228($a0)
    lw	$v0,1224($a0)
    lw	$a0,1196($a0)
    sw	$at,32($sp)
    sw	$ra,28($sp)
    sw	$t9,24($sp)
    sw	$a7,20($sp)
    sw	$a0,8($sp)
    sw	$a1,12($sp)
    sw	$a2,16($sp)
    sw	$v0,36($sp)
    lw	$v0,1188($s0)
    sw	$v1,40($sp)
    lw	$v1,1192($s0)
    addiu	$a2,$t0,40
    sw	$v1,4($sp)
    addiu	$a1,$t0,36
    addiu	$a0,$t0,32
    sw	$v0,0($sp)
    # Line 1960
    lw	$v0,0($a3)
    sw	$v0,0($t0)
    lw	$at,4($a3)
    sw	$at,4($t0)
    lw	$ra,8($a3)
    sw	$ra,8($t0)
    lw	$t9,12($a3)
    sw	$t9,12($t0)
    lw	$a7,16($a3)
    sw	$a7,16($t0)
    lw	$v1,20($a3)
    sw	$v1,20($t0)
    lw	$v0,24($a3)
    sw	$v0,24($t0)
    lw	$at,28($a3)
    sw	$at,28($t0)
    lw	$ra,32($a3)
    sw	$ra,32($t0)
    lw	$t9,36($a3)
    sw	$t9,36($t0)
    lw	$a7,40($a3)
    sw	$a7,40($t0)
.L0d98e5d4:
    # Line 1963
    # lw $t9, -31548($gp) # &__glOdyim_DrawPixels
    move	$a0,$t3
    move	$a1,$t2
    move	$a2,$t1
    move	$a3,$t8
    bal __glOdyim_DrawPixels
    move	$a4,$a5
    # Line 1969
    ld	$gp,64($sp)
    # Line 1967
    addiu	$a0,$s0,1188
    # Line 1963
    beqz	$s4,.L0d98e65c
    ld	$ra,72($sp)
    # Line 1967
    addiu	$a1,$sp,0
    lw	$v1,32($sp)
    lw	$a4,36($sp)
    lw	$a5,40($sp)
    lw	$a6,28($sp)
    lw	$a7,24($sp)
    lw	$t0,20($sp)
    lw	$t1,16($sp)
    lw	$t2,12($sp)
    lw	$t3,8($sp)
    lw	$t8,4($sp)
    lw	$t9,0($sp)
    sw	$t9,1188($s0)
    sw	$t8,1192($s0)
    sw	$t3,1196($s0)
    sw	$t2,1200($s0)
    sw	$t1,1204($s0)
    sw	$t0,1208($s0)
    sw	$a7,1212($s0)
    sw	$a6,1216($s0)
    sw	$a5,1228($s0)
    sw	$a4,1224($s0)
    sw	$v1,1220($s0)
.L0d98e65c:
    ld	$s0,48($sp)
    ld	$s4,56($sp)
    # Line 1969
    jr	$ra
    addiu	$sp,$sp,80
.end __glOdysseyDrawPixels

# Function: __glOdyim_PixelTexGenParameteriSGIS
# Declared: Line 1973 (Source lines: 1974-1987)
# Address: 0x0d98e670 - 0x0d98e6d0 (Size: 96 bytes, Frame: 32)
.globl __glOdyim_PixelTexGenParameteriSGIS
.ent __glOdyim_PixelTexGenParameteriSGIS
__glOdyim_PixelTexGenParameteriSGIS:
    # Line 1974
    addiu	$sp,$sp,-32
    sw	$a1,28($sp)
    # Line 1976
    li	$at,0x8354
    # Line 1974
    lui	$v0,0x17
    sd	$ra,8($sp)
    addiu	$v0,$v0,-24800
    sd	$gp,0($sp)
    # Line 1976
    beq	$a0,$at,.L0d98e6bc
    # Line 1974
    addu	$gp,$t9,$v0
    # Line 1976
    li	$v1,0x8355
    beq	$a0,$v1,.L0d98e6c0
    # Line 1980
    nop	# was lw $t9, -31444($gp) # &__glOdyim_PixelTexGenParameterivSGIS
    # Line 1984
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d98e6b0:
    # Line 1987
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98e6bc:
    # Line 1980
    # lw $t9, -31444($gp) # &__glOdyim_PixelTexGenParameterivSGIS
.L0d98e6c0:
    bal __glOdyim_PixelTexGenParameterivSGIS
    addiu	$a1,$sp,28
    b	.L0d98e6b0
    ld	$ra,8($sp)
.end __glOdyim_PixelTexGenParameteriSGIS

# Function: __glOdyim_PixelTexGenParameterivSGIS
# Declared: Line 1990 (Source lines: 1991-2017)
# Address: 0x0d98e6d0 - 0x0d98e7c8 (Size: 248 bytes, Frame: 16)
.globl __glOdyim_PixelTexGenParameterivSGIS
.ent __glOdyim_PixelTexGenParameterivSGIS
__glOdyim_PixelTexGenParameterivSGIS:
    # Line 2006
    li	$a6,2820
    # Line 1991
    addiu	$sp,$sp,-16
    # Line 1992
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 1991
    lui	$v1,0x17
    # Line 2006
    li	$a5,0x8356
    sd	$ra,8($sp)
    # Line 1991
    addiu	$v1,$v1,-24896
    sd	$gp,0($sp)
    # Line 1992
    beq	$at,$v0,.L0d98e7b4
    # Line 1991
    addu	$gp,$t9,$v1
    # Line 1994
    li	$a2,0x8354
    beq	$a0,$a2,.L0d98e76c
    li	$a4,0x8355
    beq	$a0,$a4,.L0d98e728
    ld	$ra,8($sp)
    # Line 2015
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98e760
    ld	$ra,8($sp)
.L0d98e728:
    # Line 2006
    lw	$a0,0($a1)
    # Line 2008
    lui	$a7,0x1
    ori	$a7,$a7,0x1e14
    # Line 2006
    beq	$a0,$a5,.L0d98e744
    # Line 2008
    addu	$a7,$a7,$a3
    # Line 2006
    bne	$a0,$a6,.L0d98e754
    # Line 2010
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98e744:
    # Line 2017
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2008
    sw	$a0,0($a7)
.L0d98e754:
    # Line 2010
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d98e760:
    # Line 2017
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d98e76c:
    # Line 1997
    lw	$a0,0($a1)
    li	$t0,0x8356
    # Line 1999
    lui	$t2,0x1
    # Line 1997
    li	$t1,2820
    # Line 1999
    ori	$t2,$t2,0x1e10
    ld	$ra,8($sp)
    # Line 1997
    beq	$a0,$t0,.L0d98e794
    # Line 1999
    addu	$t2,$t2,$a3
    # Line 1997
    bne	$a0,$t1,.L0d98e7a4
    # Line 2001
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98e794:
    # Line 2017
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1999
    sw	$a0,0($t2)
.L0d98e7a4:
    # Line 2001
    jal	__glSetError
    li	$a0,1280
    b	.L0d98e760
    ld	$ra,8($sp)
.L0d98e7b4:
    # Line 1992
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98e760
    ld	$ra,8($sp)
.end __glOdyim_PixelTexGenParameterivSGIS

# Function: __glOdyim_GetPixelTexGenParameterivSGIS
# Declared: Line 2020 (Source lines: 2021-2036)
# Address: 0x0d98e7d0 - 0x0d98e880 (Size: 176 bytes, Frame: 16)
.globl __glOdyim_GetPixelTexGenParameterivSGIS
.ent __glOdyim_GetPixelTexGenParameterivSGIS
__glOdyim_GetPixelTexGenParameterivSGIS:
    # Line 2024
    li	$a4,0x8355
    # Line 2021
    addiu	$sp,$sp,-16
    # Line 2022
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 2021
    lui	$v1,0x17
    # Line 2030
    lui	$a5,0x1
    sd	$ra,8($sp)
    # Line 2021
    addiu	$v1,$v1,-25152
    sd	$gp,0($sp)
    # Line 2022
    beq	$at,$v0,.L0d98e86c
    # Line 2021
    addu	$gp,$t9,$v1
    # Line 2024
    li	$a2,0x8354
    beq	$a0,$a2,.L0d98e848
    # Line 2030
    ori	$a5,$a5,0x1e14
    # Line 2024
    beq	$a0,$a4,.L0d98e830
    move	$ra,$ra
    # Line 2033
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d98e824:
    # Line 2036
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d98e830:
    ld	$gp,0($sp)
    # Line 2030
    addu	$a5,$a5,$a3
    lw	$a5,0($a5)
    # Line 2036
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2030
    sw	$a5,0($a1)
.L0d98e848:
    # Line 2027
    lui	$a6,0x1
    ori	$a6,$a6,0x1e10
    # Line 2036
    ld	$gp,0($sp)
    move	$ra,$ra
    # Line 2027
    addu	$a6,$a6,$a3
    lw	$a6,0($a6)
    # Line 2036
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2027
    sw	$a6,0($a1)
.L0d98e86c:
    # Line 2022
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98e824
    ld	$ra,8($sp)
.end __glOdyim_GetPixelTexGenParameterivSGIS

# Function: __glOdyim_PixelTexGenParameterfSGIS
# Declared: Line 2039 (Source lines: 2040-2053)
# Address: 0x0d98e880 - 0x0d98e8dc (Size: 92 bytes, Frame: 32)
.globl __glOdyim_PixelTexGenParameterfSGIS
.ent __glOdyim_PixelTexGenParameterfSGIS
__glOdyim_PixelTexGenParameterfSGIS:
    # Line 2040
    addiu	$sp,$sp,-32
    swc1	$f13,24($sp)
    # Line 2042
    li	$at,0x8354
    # Line 2040
    lui	$v0,0x17
    sd	$ra,8($sp)
    addiu	$v0,$v0,-25328
    sd	$gp,0($sp)
    # Line 2042
    beq	$a0,$at,.L0d98e8c8
    # Line 2040
    addu	$gp,$t9,$v0
    # Line 2042
    li	$v1,0x8355
    beq	$a0,$v1,.L0d98e8c8
    # Line 2050
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d98e8bc:
    # Line 2053
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d98e8c8:
    # Line 2046
    # lw $t9, -31432($gp) # &__glOdyim_PixelTexGenParameterfvSGIS
    bal __glOdyim_PixelTexGenParameterfvSGIS
    addiu	$a1,$sp,24
    b	.L0d98e8bc
    ld	$ra,8($sp)
.end __glOdyim_PixelTexGenParameterfSGIS

# Function: __glOdyim_PixelTexGenParameterfvSGIS
# Declared: Line 2056 (Source lines: 2057-2083)
# Address: 0x0d98e8e0 - 0x0d98ea00 (Size: 288 bytes, Frame: 16)
.globl __glOdyim_PixelTexGenParameterfvSGIS
.ent __glOdyim_PixelTexGenParameterfvSGIS
__glOdyim_PixelTexGenParameterfvSGIS:
    # Line 2057
    addiu	$sp,$sp,-16
    # Line 2074
    lui	$a6,0x1
    # Line 2058
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 2057
    lui	$v1,0x17
    # Line 2074
    ori	$a6,$a6,0x1e14
    sd	$ra,8($sp)
    # Line 2057
    addiu	$v1,$v1,-25424
    sd	$gp,0($sp)
    # Line 2058
    beq	$at,$v0,.L0d98e9ec
    # Line 2057
    addu	$gp,$t9,$v1
    # Line 2060
    li	$a2,0x8354
    # Line 2072
    lwc1	$f0,_lit_47035600
    # Line 2060
    beq	$a0,$a2,.L0d98e984
    # Line 2072
    lwc1	$f1,_lit_45304000
    # Line 2060
    li	$a4,0x8355
    beq	$a0,$a4,.L0d98e940
    ld	$ra,8($sp)
    # Line 2081
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98e978
    ld	$ra,8($sp)
.L0d98e940:
    # Line 2072
    lwc1	$f4,0($a1)
    c.eq.s	$f4,$f0
    bc1t	.L0d98e95c
    nop
    c.eq.s $f4,$f1
    bc1f .L0d98e9cc
    # Line 2076
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98e95c:
    # Line 2074
    trunc.l.s	$f2,$f4
    # Line 2083
    ld	$gp,0($sp)
    # Line 2074
    addu	$a6,$a6,$a3
    dmfc1	$a5,$f2
    # Line 2083
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2074
    sw	$a5,0($a6)
.L0d98e978:
    # Line 2083
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d98e984:
    # Line 2063
    lwc1	$f3,_lit_47035600
    lwc1	$f4,0($a1)
    c.eq.s $f4,$f3
    # Line 2065
    lui	$t0,0x1
    ld	$ra,8($sp)
    ori	$t0,$t0,0x1e10
    # Line 2063
    lwc1	$f5,_lit_45304000
    bc1t .L0d98e9b4
    # Line 2065
    addu	$t0,$t0,$a3
    # Line 2063
    c.eq.s $f4,$f5
    bc1f .L0d98e9dc
    # Line 2067
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d98e9b4:
    # Line 2065
    trunc.l.s	$f6,$f4
    # Line 2083
    ld	$gp,0($sp)
    # Line 2065
    dmfc1	$a7,$f6
    # Line 2083
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2065
    sw	$a7,0($t0)
.L0d98e9cc:
    # Line 2076
    jal	__glSetError
    li	$a0,1280
    b	.L0d98e978
    ld	$ra,8($sp)
.L0d98e9dc:
    # Line 2067
    jalr	$t9
    li	$a0,1280
    b	.L0d98e978
    ld	$ra,8($sp)
.L0d98e9ec:
    # Line 2058
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98e978
    ld	$ra,8($sp)
.end __glOdyim_PixelTexGenParameterfvSGIS

# Function: __glOdyim_GetPixelTexGenParameterfvSGIS
# Declared: Line 2086 (Source lines: 2087-2102)
# Address: 0x0d98ea00 - 0x0d98ead0 (Size: 208 bytes, Frame: 16)
.globl __glOdyim_GetPixelTexGenParameterfvSGIS
.ent __glOdyim_GetPixelTexGenParameterfvSGIS
__glOdyim_GetPixelTexGenParameterfvSGIS:
    # Line 2090
    li	$a4,0x8355
    # Line 2087
    addiu	$sp,$sp,-16
    # Line 2088
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 2087
    lui	$v1,0x17
    # Line 2096
    lui	$a5,0x1
    sd	$ra,8($sp)
    # Line 2087
    addiu	$v1,$v1,-25712
    sd	$gp,0($sp)
    # Line 2088
    beq	$at,$v0,.L0d98eabc
    # Line 2087
    addu	$gp,$t9,$v1
    # Line 2090
    li	$a2,0x8354
    beq	$a0,$a2,.L0d98ea8c
    # Line 2093
    lui	$a6,0x1
    move	$ra,$ra
    # Line 2096
    ori	$a5,$a5,0x1e14
    # Line 2090
    beq	$a0,$a4,.L0d98ea68
    # Line 2096
    addu	$a5,$a5,$a3
    # Line 2099
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d98ea5c:
    # Line 2102
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d98ea68:
    # Line 2096
    lw	$a5,0($a5)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f0
    cvt.s.l	$f0,$f0
    # Line 2102
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2096
    swc1	$f0,0($a1)
.L0d98ea8c:
    # Line 2093
    ori	$a6,$a6,0x1e10
    addu	$a6,$a6,$a3
    lw	$a6,0($a6)
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f1
    cvt.s.l	$f1,$f1
    move	$ra,$ra
    # Line 2102
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2093
    swc1	$f1,0($a1)
.L0d98eabc:
    # Line 2088
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98ea5c
    ld	$ra,8($sp)
.end __glOdyim_GetPixelTexGenParameterfvSGIS

# Function: __glOdyim_SoftDrawPixels
# Declared: Line 2105 (Source lines: 2107-2111)
# Address: 0x0d98ead0 - 0x0d98eb88 (Size: 184 bytes, Frame: 192)
.globl __glOdyim_SoftDrawPixels
.ent __glOdyim_SoftDrawPixels
__glOdyim_SoftDrawPixels:
    # Line 2108
    lw	$a6,4120($zero)
    # Line 2107
    addiu	$sp,$sp,-64
    sd	$a4,16($sp)
    sd	$a3,32($sp)
    # Line 2108
    lw	$t0,4112($zero)
    # Line 2107
    sd	$a2,24($sp)
    # Line 2108
    lui	$a7,0x1
    # Line 2107
    sd	$a1,8($sp)
    # Line 2108
    addu	$a7,$t0,$a7
    lw	$at,26980($a7)
    # Line 2107
    sd	$a0,0($sp)
    lui	$v0,0x17
    sd	$ra,48($sp)
    addiu	$v0,$v0,-25920
    sd	$gp,40($sp)
    # Line 2108
    beqz	$at,.L0d98eb78
    # Line 2107
    addu	$gp,$t9,$v0
    # Line 2108
    beqz	$a6,.L0d98eb34
    li	$t1,2
.L0d98eb1c:
    beq	$a6,$t1,.L0d98eb34
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98eb68
    nop
.L0d98eb34:
    li	$t2,1
    sb	$t2,26997($a7)
    lw	$t9,11840($t0)
    jalr	$t9
    move	$a0,$t0
    sw	$zero,4120($zero)
    # Line 2110
    ld	$a0,0($sp)
.L0d98eb50:
    ld	$a1,8($sp)
    # lw $t9, -28776($gp) # &__glim_DrawPixels
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    jal	__glim_DrawPixels
    ld	$a4,16($sp)
.L0d98eb68:
    ld	$ra,48($sp)
    # Line 2111
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d98eb78:
    # Line 2108
    bnez	$a6,.L0d98eb1c
    li	$t1,2
    b	.L0d98eb50
    # Line 2110
    ld	$a0,0($sp)
.end __glOdyim_SoftDrawPixels

.late_rodata
jtbl_0dae8fe8:
    .word .L0d98ad5c
    .word .L0d98ad48
    .word .L0d98ad24
    .word .L0d98ad24
    .word .L0d98ad24
    .word .L0d98ad24
    .word .L0d98ad6c
    .word .L0d98ad6c
    .word .L0d98ad6c
    .word .L0d98ad6c
jtbl_0dae9010:
    .word .L0d98ae08
    .word .L0d98adf4
    .word .L0d98add4
    .word .L0d98add4
    .word .L0d98add4
    .word .L0d98add4
    .word .L0d98ae1c
    .word .L0d98ae1c
    .word .L0d98ae1c
    .word .L0d98ae1c
jtbl_0dae9038:
    .word .L0d98aeb8
    .word .L0d98aea4
    .word .L0d98ae84
    .word .L0d98ae84
    .word .L0d98ae84
    .word .L0d98ae84
    .word .L0d98aec8
    .word .L0d98aec8
    .word .L0d98aec8
    .word .L0d98aec8

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit_41300000:
    .word 0x41300000
_lit_45304000:
    .word 0x45304000
_lit_47035600:
    .word 0x47035600

