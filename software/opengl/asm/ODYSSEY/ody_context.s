# Source: ../ODYSSEY/ody_context.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_context.c
# Total Functions: 40

.text

# Function: GetBoardInfo
# Declared: Line 77 (Source lines: 78-318)
# Address: 0x0d965310 - 0x0d9658b8 (Size: 1448 bytes, Frame: 32)
.ent GetBoardInfo
GetBoardInfo:
    # Line 78
    addiu	$sp,$sp,-32
    # Line 88
    # lw $t9, -30492($gp) # &__glOdysseyGetBoardInfoRaw
    sd	$ra,24($sp)
    # Line 78
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 88
    jal	__glOdysseyGetBoardInfoRaw
    sd	$s2,0($sp)
    # Line 104
    lui	$s2,0x1
    addu	$s2,$s0,$s2
    lw	$v0,27248($s2)
    beqz	$v0,.L0d965814
    sd	$s1,8($sp)
    li	$t8,1
    beq	$v0,$t8,.L0d9658a0
    # Line 110
    li	$a2,66
    # Line 104
    li	$t9,2
    xor	$t9,$v0,$t9
    # Line 113
    li	$ra,78
    # Line 115
    li	$a2,63
    movz	$a2,$ra,$t9
.L0d965360:
    # Line 117
    lw	$ra,27240($s2)
.L0d965364:
    # Line 122
    # lw $t9, -17008($gp) # &sprintf
    # Line 120
    addiu	$at,$gp,-13672
    addiu	$a4,$gp,-13668
    # Line 122
    la	$a1,sub_0daf0000
    addiu	$a0,$s0,31568
    movz	$a4,$at,$ra
    lw	$a3,27220($s2)
    jal	sprintf
    addiu	$a1,$a1,-32360
    # Line 129
    lui	$s1,0x2
    # Line 128
    li	$a5,16
    sw	$a5,31600($s0)
    # Line 129
    addu	$s1,$s0,$s1
    # Line 130
    li	$a3,5
    sw	$a3,-25124($s1)
    # Line 129
    li	$a4,0x9c40
    sw	$a4,-25128($s1)
    # Line 130
    lw	$a2,27248($s2)
    beqz	$a2,.L0d965888
    # Line 134
    li	$a2,1040
.L0d9653b4:
    # Line 141
    lw	$t8,27232($s2)
    slti	$t8,$t8,2
    beqz	$t8,.L0d9653d4
    nop
    lw	$v0,27248($s2)
    sltiu	$t9,$v0,1
    bne	$zero,$t9,.L0d965418
    # Line 161
    sltiu	$a4,$v0,2
.L0d9653d4:
    # Line 144
    lw	$a0,31600($s0)
    ori	$a0,$a0,0x3
    sw	$a0,31600($s0)
    lw	$v0,27248($s2)
    sltiu	$ra,$v0,1
    bne	$zero,$ra,.L0d965414
    # Line 150
    lui	$a3,0x80
    ori	$a3,$a3,0x3a0
    or	$a3,$a0,$a3
    sw	$a3,31600($s0)
    # Line 160
    li	$a2,128
    sw	$a2,7916($s1)
    # Line 161
    lui	$a1,0x2
    ori	$a1,$a1,0x7100
    sw	$a1,-25132($s1)
    lw	$v0,27248($s2)
.L0d965414:
    sltiu	$a4,$v0,2
.L0d965418:
    bnez	$a4,.L0d96543c
    # Line 183
    nop	# was lw $t9, -17004($gp) # &getenv
    # Line 165
    lw	$a6,31600($s0)
    lui	$a7,0x7f
    or	$a6,$a6,$a7
    sw	$a6,31600($s0)
    # Line 173
    li	$a5,128
    sw	$a5,7916($s1)
    # Line 183
    # lw $t9, -17004($gp) # &getenv
.L0d96543c:
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-32344
    # Line 184
    beqz	$v0,.L0d965480
    # Line 195
    nop	# was lw $t9, -17004($gp) # &getenv
    # Line 184
    lbu	$a0,0($v0)
    beqz	$a0,.L0d96547c
    # Line 185
    li	$a1,89
    beq	$a0,$a1,.L0d96581c
    li	$a2,121
    beq	$a0,$a2,.L0d96581c
    nop
    # Line 191
    lw	$a3,31600($s0)
    li	$a4,-17
    and	$a3,$a3,$a4
    sw	$a3,31600($s0)
.L0d96547c:
    # Line 195
    # lw $t9, -17004($gp) # &getenv
.L0d965480:
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-32320
    # Line 196
    beqz	$v0,.L0d9654c0
    # Line 207
    nop	# was lw $t9, -17004($gp) # &getenv
    # Line 196
    lbu	$a0,0($v0)
    beqz	$a0,.L0d9654bc
    # Line 197
    li	$a1,89
    beq	$a0,$a1,.L0d96582c
    li	$a2,121
    beq	$a0,$a2,.L0d96582c
    # Line 203
    li	$a4,-65
    lw	$a3,31600($s0)
    and	$a3,$a3,$a4
    sw	$a3,31600($s0)
.L0d9654bc:
    # Line 207
    # lw $t9, -17004($gp) # &getenv
.L0d9654c0:
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-32288
    # Line 208
    beqz	$v0,.L0d965500
    # Line 219
    nop	# was lw $t9, -17004($gp) # &getenv
    # Line 208
    lbu	$a0,0($v0)
    beqz	$a0,.L0d9654fc
    # Line 209
    li	$a1,89
    beq	$a0,$a1,.L0d96583c
    li	$a2,121
    beq	$a0,$a2,.L0d96583c
    # Line 215
    li	$a4,-3
    lw	$a3,31600($s0)
    and	$a3,$a3,$a4
    sw	$a3,31600($s0)
.L0d9654fc:
    # Line 219
    # lw $t9, -17004($gp) # &getenv
.L0d965500:
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-32264
    # Line 220
    beqz	$v0,.L0d965544
    # Line 231
    nop	# was lw $t9, -17004($gp) # &getenv
    # Line 220
    lbu	$a0,0($v0)
    beqz	$a0,.L0d965540
    # Line 221
    li	$a1,89
    beq	$a0,$a1,.L0d96584c
    li	$a2,121
    beq	$a0,$a2,.L0d96584c
    # Line 227
    lui	$a4,0xffdf
    lw	$a3,31600($s0)
    ori	$a4,$a4,0xffff
    and	$a3,$a3,$a4
    sw	$a3,31600($s0)
.L0d965540:
    # Line 231
    # lw $t9, -17004($gp) # &getenv
.L0d965544:
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-32232
    # Line 232
    beqz	$v0,.L0d965588
    # Line 243
    nop	# was lw $t9, -17004($gp) # &getenv
    # Line 232
    lbu	$a0,0($v0)
    beqz	$a0,.L0d965584
    # Line 233
    li	$a1,89
    beq	$a0,$a1,.L0d965860
    li	$a2,121
    beq	$a0,$a2,.L0d965860
    # Line 239
    lui	$a4,0xffef
    lw	$a3,31600($s0)
    ori	$a4,$a4,0xffff
    and	$a3,$a3,$a4
    sw	$a3,31600($s0)
.L0d965584:
    # Line 243
    # lw $t9, -17004($gp) # &getenv
.L0d965588:
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-32208
    # Line 244
    beqz	$v0,.L0d9655cc
    # Line 256
    nop	# was lw $t9, -17004($gp) # &getenv
    # Line 244
    lbu	$a0,0($v0)
    beqz	$a0,.L0d9655c8
    # Line 245
    li	$a1,89
    beq	$a0,$a1,.L0d965874
    li	$a2,121
    beq	$a0,$a2,.L0d965874
    # Line 251
    lui	$a4,0xffbf
    lw	$a3,31600($s0)
    ori	$a4,$a4,0xffff
    and	$a3,$a3,$a4
    sw	$a3,31600($s0)
.L0d9655c8:
    # Line 256
    # lw $t9, -17004($gp) # &getenv
.L0d9655cc:
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-32176
    # Line 257
    beqz	$v0,.L0d9655fc
    # Line 261
    nop	# was lw $t9, -17004($gp) # &getenv
    # Line 257
    lbu	$a1,0($v0)
    beqz	$a1,.L0d9655f8
    # Line 258
    nop	# was lw $t9, -17000($gp) # &atoi
    jal	atoi
    move	$a0,$v0
    sw	$v0,-25132($s1)
.L0d9655f8:
    # Line 261
    # lw $t9, -17004($gp) # &getenv
.L0d9655fc:
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-32144
    # Line 262
    beqz	$v0,.L0d96562c
    # Line 266
    nop	# was lw $t9, -17004($gp) # &getenv
    # Line 262
    lbu	$a1,0($v0)
    beqz	$a1,.L0d965628
    # Line 263
    nop	# was lw $t9, -17000($gp) # &atoi
    jal	atoi
    move	$a0,$v0
    sw	$v0,-25128($s1)
.L0d965628:
    # Line 266
    # lw $t9, -17004($gp) # &getenv
.L0d96562c:
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-32104
    # Line 267
    beqz	$v0,.L0d965650
    # Line 271
    li	$a3,1
    # Line 267
    lbu	$a1,0($v0)
    li	$a2,110
    beq	$a1,$a2,.L0d9658a8
    # Line 271
    li	$a3,1
.L0d965650:
    sb	$a3,-25137($s1)
.L0d965654:
    # Line 273
    # lw $t9, -17004($gp) # &getenv
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-32072
    # Line 274
    beqz	$v0,.L0d96567c
    # Line 278
    li	$a3,1
    # Line 274
    lbu	$a1,0($v0)
    li	$a2,110
    beq	$a1,$a2,.L0d9658b0
    # Line 278
    li	$a3,1
.L0d96567c:
    sb	$a3,-25136($s1)
.L0d965680:
    # Line 280
    # lw $t9, -17004($gp) # &getenv
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-32040
    # Line 281
    beqz	$v0,.L0d9656bc
    # Line 287
    nop	# was lw $t9, -17004($gp) # &getenv
    # Line 281
    lbu	$a1,0($v0)
    beqz	$a1,.L0d9656b8
    # Line 282
    nop	# was lw $t9, -17000($gp) # &atoi
    jal	atoi
    move	$a0,$v0
    bltz	$v0,.L0d9656bc
    # Line 287
    nop	# was lw $t9, -17004($gp) # &getenv
    # Line 284
    sw	$v0,-25124($s1)
.L0d9656b8:
    # Line 287
    # lw $t9, -17004($gp) # &getenv
.L0d9656bc:
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-32000
    # Line 288
    beqz	$v0,.L0d9656ec
    nop
    lbu	$a0,0($v0)
    li	$a1,121
    beq	$a0,$a1,.L0d9657c4
    # Line 289
    li	$a5,1
    # Line 288
    li	$a2,89
    beq	$a0,$a2,.L0d9657c4
    # Line 289
    li	$a5,1
.L0d9656ec:
    # Line 292
    sb	$zero,-25119($s1)
.L0d9656f0:
    # Line 294
    # lw $t9, -17004($gp) # &getenv
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-31976
    # Line 295
    beqz	$v0,.L0d965720
    # Line 298
    li	$a3,1
    # Line 295
    lbu	$a0,0($v0)
    li	$a1,110
    beq	$a0,$a1,.L0d9657cc
    li	$a2,78
    beq	$a0,$a2,.L0d9657cc
    # Line 298
    li	$a3,1
.L0d965720:
    sb	$a3,-25117($s1)
.L0d965724:
    # Line 301
    # lw $t9, -17004($gp) # &getenv
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-31952
    # Line 302
    beqz	$v0,.L0d965754
    # Line 305
    li	$a3,1
    # Line 302
    lbu	$a0,0($v0)
    li	$a1,121
    beq	$a0,$a1,.L0d9657d4
    li	$a2,89
    beq	$a0,$a2,.L0d9657d4
    # Line 305
    li	$a3,1
.L0d965754:
    sb	$a3,-25116($s1)
.L0d965758:
    # Line 308
    # lw $t9, -17004($gp) # &getenv
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-31920
    # Line 309
    beqz	$v0,.L0d96578c
    nop
    lbu	$a0,0($v0)
    li	$a1,121
    beq	$a0,$a1,.L0d9657e0
    # Line 310
    li	$t0,1
    # Line 309
    li	$a2,89
    beq	$a0,$a2,.L0d9657e0
    # Line 310
    li	$t0,1
.L0d96578c:
    # Line 312
    sb	$zero,-25115($s1)
    # Line 318
    ld	$s1,8($sp)
    # Line 316
    lw	$a4,27220($s2)
    li	$a5,2048
    # Line 318
    ld	$ra,24($sp)
    ld	$s2,0($sp)
    # Line 316
    li	$a3,512
    slti	$a4,$a4,128
    movz	$a3,$a5,$a4
    sw	$a3,3724($s0)
    # Line 318
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
    # Line 289
    li	$a5,1
.L0d9657c4:
    b	.L0d9656f0
    sb	$a5,-25119($s1)
.L0d9657cc:
    # Line 296
    b	.L0d965724
    sb	$zero,-25117($s1)
.L0d9657d4:
    # Line 303
    b	.L0d965758
    sb	$zero,-25116($s1)
    # Line 310
    li	$t0,1
.L0d9657e0:
    sb	$t0,-25115($s1)
    # Line 318
    ld	$s1,8($sp)
    # Line 316
    lw	$a7,27220($s2)
    li	$t0,2048
    # Line 318
    ld	$ra,24($sp)
    ld	$s2,0($sp)
    # Line 316
    li	$a6,512
    slti	$a7,$a7,128
    movz	$a6,$t0,$a7
    sw	$a6,3724($s0)
    # Line 318
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d965814:
    b	.L0d965360
    # Line 106
    li	$a2,65
.L0d96581c:
    # Line 188
    lw	$t1,31600($s0)
    ori	$t1,$t1,0x10
    b	.L0d96547c
    sw	$t1,31600($s0)
.L0d96582c:
    # Line 200
    lw	$t2,31600($s0)
    ori	$t2,$t2,0x40
    b	.L0d9654bc
    sw	$t2,31600($s0)
.L0d96583c:
    # Line 212
    lw	$t3,31600($s0)
    ori	$t3,$t3,0x2
    b	.L0d9654fc
    sw	$t3,31600($s0)
.L0d96584c:
    # Line 224
    lw	$t8,31600($s0)
    lui	$t9,0x20
    or	$t8,$t8,$t9
    b	.L0d965540
    sw	$t8,31600($s0)
.L0d965860:
    # Line 236
    lw	$ra,31600($s0)
    lui	$at,0x10
    or	$ra,$ra,$at
    b	.L0d965584
    sw	$ra,31600($s0)
.L0d965874:
    # Line 248
    lw	$v0,31600($s0)
    lui	$v1,0x40
    or	$v0,$v0,$v1
    b	.L0d9655c8
    sw	$v0,31600($s0)
.L0d965888:
    # Line 134
    sw	$a2,31600($s0)
    # Line 139
    li	$a1,10000
    sw	$a1,-25132($s1)
    # Line 138
    li	$a0,64
    # Line 139
    b	.L0d9653b4
    # Line 138
    sw	$a0,7916($s1)
.L0d9658a0:
    # Line 110
    b	.L0d965364
    # Line 117
    lw	$ra,27240($s2)
.L0d9658a8:
    # Line 268
    b	.L0d965654
    sb	$zero,-25137($s1)
.L0d9658b0:
    # Line 275
    b	.L0d965680
    sb	$zero,-25136($s1)
.end GetBoardInfo

# Function: __glOdysseyFindWindowSize
# Declared: Line 325 (Source lines: 326-432)
# Address: 0x0d9658c0 - 0x0d965ab0 (Size: 496 bytes, Frame: 208)
.globl __glOdysseyFindWindowSize
.ent __glOdysseyFindWindowSize
__glOdysseyFindWindowSize:
    # Line 336
    lui	$at,0x2
    # Line 326
    addiu	$sp,$sp,-80
    # Line 336
    addu	$at,$a0,$at
    sd	$at,48($sp)
    # Line 330
    sw	$zero,12($sp)
    sw	$zero,8($sp)
    sw	$zero,4($sp)
    sw	$zero,0($sp)
    # Line 335
    lw	$v0,3700($a0)
    sw	$v0,16($sp)
    # Line 336
    lw	$v0,3704($a0)
    sw	$v0,20($sp)
    lbu	$at,-25119($at)
    # Line 326
    sd	$s0,56($sp)
    lui	$v0,0x19
    move	$s0,$a0
    sd	$ra,72($sp)
    addiu	$v0,$v0,11472
    sd	$gp,64($sp)
    # Line 336
    beqz	$at,.L0d965a70
    # Line 326
    addu	$gp,$t9,$v0
    # Line 359
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    addiu	$a2,$sp,0
    lui	$a1,0x6f64
    jal	__glOdysseyIoctl
    ori	$a1,$a1,0xf
    beqz	$v0,.L0d965a50
    # Line 366
    lw	$a4,12($sp)
    # Line 361
    lw	$t9,28($s0)
    move	$a0,$s0
    addiu	$a4,$sp,20
    addiu	$a3,$sp,16
    addiu	$a2,$sp,28
    jalr	$t9
    addiu	$a1,$sp,24
.L0d96594c:
    # Line 388
    lw	$a5,24($sp)
.L0d965950:
    mtc1	$a5,$f2
    ld	$a3,48($sp)
    cvt.s.w	$f2,$f2
    lwc1	$f1,-25180($a3)
    add.s	$f2,$f2,$f1
    swc1	$f2,-25188($a3)
    # Line 389
    lw	$a4,28($sp)
    mtc1	$a4,$f0
    cvt.s.w	$f0,$f0
    add.s	$f0,$f0,$f1
    swc1	$f0,-25184($a3)
    # Line 391
    lw	$a1,16($sp)
    lw	$a2,3700($s0)
    lw	$a6,3704($s0)
    bne	$a2,$a1,.L0d965994
    lw	$a2,20($sp)
    beq	$a6,$a2,.L0d9659a0
.L0d965994:
    # Line 392
    nop	# was lw $t9, -26784($gp) # &__glChangeWindowSize
    jal	__glChangeWindowSize
    move	$a0,$s0
.L0d9659a0:
    lbu	$a7,3536($s0)
    beqz	$a7,.L0d965a90
    # Line 400
    lw	$a1,16($sp)
    # Line 401
    lw	$a2,20($sp)
    # Line 400
    sw	$a1,32($sp)
    # Line 401
    sw	$a2,36($sp)
.L0d9659b8:
    # Line 407
    lw	$t0,3708($s0)
    bne	$t0,$a1,.L0d9659c8
    lw	$t1,3712($s0)
    beq	$t1,$a2,.L0d9659d4
.L0d9659c8:
    # Line 409
    nop	# was lw $t9, -26780($gp) # &__glChangeReadWindowSize
    jal	__glChangeReadWindowSize
    move	$a0,$s0
.L0d9659d4:
    lui	$t2,0x1
    addu	$t2,$s0,$t2
    sd	$t2,40($sp)
    lw	$t2,27012($t2)
    beqz	$t2,.L0d9659fc
    # Line 418
    nop	# was lw $t9, -26784($gp) # &__glChangeWindowSize
    lw	$a2,1700($s0)
    move	$a0,$s0
    jal	__glChangeWindowSize
    lw	$a1,1696($s0)
.L0d9659fc:
    lbu	$t3,3224($s0)
    # Line 424
    lw	$t9,16($sp)
    # Line 425
    ld	$a0,40($sp)
    li	$v1,1
    # Line 418
    beqz	$t3,.L0d965a40
    ld	$ra,72($sp)
    # Line 432
    ld	$gp,64($sp)
    # Line 424
    lw	$t8,3700($s0)
    bne	$t8,$t9,.L0d965a30
    lw	$v0,20($sp)
    lw	$at,3704($s0)
    beq	$at,$v0,.L0d965a44
    # Line 432
    ld	$gp,64($sp)
.L0d965a30:
    ld	$s0,56($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 425
    sb	$v1,8436($a0)
.L0d965a40:
    # Line 432
    ld	$gp,64($sp)
.L0d965a44:
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d965a50:
    # Line 366
    sw	$a4,20($sp)
    # Line 363
    lw	$a1,0($sp)
    # Line 364
    lw	$a2,4($sp)
    # Line 365
    lw	$a3,8($sp)
    sw	$a3,16($sp)
    # Line 364
    sw	$a2,28($sp)
    b	.L0d96594c
    # Line 363
    sw	$a1,24($sp)
.L0d965a70:
    # Line 384
    lw	$t9,28($s0)
    addiu	$a4,$sp,20
    addiu	$a3,$sp,16
    addiu	$a2,$sp,28
    jalr	$t9
    addiu	$a1,$sp,24
    b	.L0d965950
    # Line 388
    lw	$a5,24($sp)
.L0d965a90:
    # Line 403
    lw	$t9,72($s0)
    move	$a0,$s0
    addiu	$a2,$sp,36
    jalr	$t9
    addiu	$a1,$sp,32
    lw	$a1,32($sp)
    b	.L0d9659b8
    lw	$a2,36($sp)
.end __glOdysseyFindWindowSize

# Function: ApplyViewport
# Declared: Line 440 (Source lines: 441-527)
# Address: 0x0d965ab0 - 0x0d965d18 (Size: 616 bytes, Frame: 224)
.ent ApplyViewport
ApplyViewport:
    # Line 441
    addiu	$sp,$sp,-96
    sd	$s2,64($sp)
    lui	$at,0x19
    sd	$s1,80($sp)
    addiu	$at,$at,10976
    sd	$gp,72($sp)
    addu	$gp,$t9,$at
    # Line 452
    # lw $t9, -32160($gp) # &__glOdysseyFindWindowSize
    # Line 441
    sd	$ra,8($sp)
    sd	$s0,56($sp)
    # Line 452
    nop
    # Line 441
    move	$s0,$a0
    # Line 452
    bal __glOdysseyFindWindowSize
    # Line 450
    lw	$s1,3704($a0)
    # Line 454
    # lw $t9, -23736($gp) # &__glUpdateViewport
    jal	__glUpdateViewport
    move	$a0,$s0
    # Line 465
    lw	$a2,1700($s0)
    # Line 460
    lw	$a1,3700($s0)
    # Line 463
    lw	$s2,1692($s0)
    # Line 474
    mtc1	$a2,$f2
    # Line 461
    lw	$a4,3704($s0)
    sd	$a4,32($sp)
    # Line 476
    mtc1	$s2,$f4
    # Line 462
    lw	$v1,1688($s0)
    # Line 474
    cvt.s.w	$f2,$f2
    # Line 481
    subu	$a3,$a4,$s1
    # Line 474
    lwc1	$f5,3540($s0)
    # Line 476
    mtc1	$a4,$f1
    # Line 462
    sd	$v1,48($sp)
    # Line 481
    mtc1	$a3,$f3
    # Line 476
    cvt.s.w	$f4,$f4
    # Line 460
    sd	$a1,24($sp)
    # Line 464
    lw	$v0,1696($s0)
    # Line 476
    cvt.s.w	$f1,$f1
    madd.s	$f4,$f4,$f2,$f5
    lwc1	$f7,3676($s0)
    # Line 481
    cvt.s.w	$f3,$f3
    lwc1	$f6,372($s0)
    # Line 465
    addu	$a2,$a2,$s2
    sd	$a2,40($sp)
    # Line 464
    addu	$v0,$v0,$v1
    sd	$v0,16($sp)
    # Line 476
    sub.s	$f1,$f1,$f7
    lwc1	$f0,3672($s0)
    # Line 481
    add.s	$f3,$f3,$f6
    # Line 474
    mul.s	$f2,$f2,$f5
    # Line 489
    # lw $t9, -31552($gp) # &__glOdysseyImageDescribeWindow
    # Line 476
    sub.s	$f1,$f1,$f4
    # Line 489
    lui	$a0,0x1
    # Line 481
    swc1	$f3,372($s0)
    # Line 475
    neg.s	$f2,$f2
    # Line 489
    move	$a1,$zero
    ori	$a0,$a0,0x1d98
    # Line 475
    swc1	$f2,1728($s0)
    # Line 476
    add.s	$f0,$f0,$f1
    # Line 489
    addu	$a0,$s0,$a0
    jal	__glOdysseyImageDescribeWindow
    # Line 476
    swc1	$f0,1732($s0)
    # Line 490
    # lw $t9, -31552($gp) # &__glOdysseyImageDescribeWindow
    lui	$a0,0x1
    li	$a1,1
    ori	$a0,$a0,0x1dd4
    sd	$s2,0($sp)
    jal	__glOdysseyImageDescribeWindow
    addu	$a0,$s0,$a0
    # Line 492
    lbu	$a1,3224($s0)
    lui	$s2,0x1
    beqz	$a1,.L0d965c00
    addu	$s1,$s2,$s0
    lbu	$a2,8437($s1)
    beqz	$a2,.L0d965c00
    # Line 493
    nop	# was lw $t9, -31552($gp) # &__glOdysseyImageDescribeWindow
    move	$a0,$s2
    move	$a1,$zero
    ori	$a0,$a0,0x1e74
    jal	__glOdysseyImageDescribeWindow
    addu	$a0,$s0,$a0
    # Line 494
    # lw $t9, -31552($gp) # &__glOdysseyImageDescribeWindow
    lui	$a0,0x1
    li	$a1,1
    ori	$a0,$a0,0x1e38
    jal	__glOdysseyImageDescribeWindow
    addu	$a0,$s0,$a0
.L0d965c00:
    # Line 500
    lw	$t9,11972($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,8($sp)
    # Line 510
    li	$t2,2
    # Line 505
    li	$t0,1
    # Line 504
    ld	$a1,48($sp)
    ld	$a0,16($sp)
    ld	$a2,24($sp)
    # Line 502
    lbu	$a3,29892($s0)
    # Line 504
    bltz	$a1,.L0d965c64
    slt	$a5,$a2,$a0
    ld	$a4,0($sp)
    bltz	$a4,.L0d965c64
    # Line 505
    li	$a0,1
    # Line 504
    bnez	$a5,.L0d965c64
    ld	$a7,40($sp)
    ld	$a6,32($sp)
    slt	$a6,$a6,$a7
    bnez	$a6,.L0d965c64
    nop
    # Line 507
    beq	$a3,$a0,.L0d965c7c
    # Line 505
    sb	$t0,29892($s0)
    b	.L0d965c70
    # Line 510
    sw	$t2,4120($zero)
.L0d965c64:
    # Line 507
    beqz	$a3,.L0d965c7c
    sb	$zero,29892($s0)
    # Line 510
    sw	$t2,4120($zero)
.L0d965c70:
    lw	$t1,11812($s0)
    ori	$t1,$t1,0x1
    sw	$t1,11812($s0)
.L0d965c7c:
    # Line 527
    ld	$gp,72($sp)
    # Line 516
    lw	$t8,-26576($s1)
    lw	$t9,-26584($s1)
    # Line 521
    lui	$a0,0x1
    # Line 516
    li	$at,-4096
    lw	$t3,3704($s0)
    # Line 521
    ori	$a0,$a0,0x456
    # Line 516
    and	$t9,$t9,$at
    ld	$s0,56($sp)
    # Line 521
    li	$at,250
    # Line 516
    andi	$t3,$t3,0xfff
    or	$t3,$t3,$t9
    beqz	$t8,.L0d965cf8
    sw	$t3,-26584($s1)
    # Line 521
    sw	$zero,-26576($s1)
    lui	$t8,0x1
    ori	$v0,$t8,0x443
    sw	$v0,0($s2)
    sw	$at,0($s2)
    ori	$t9,$t8,0x46
    sw	$t9,0($s2)
    sw	$t9,0($s2)
    ori	$t8,$t8,0x456
    sw	$t8,0($s2)
    lw	$s0,-26584($s1)
    # Line 527
    ld	$s1,80($sp)
    # Line 521
    sw	$s0,0($s2)
    # Line 527
    ld	$s0,56($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d965cf8:
    ld	$gp,72($sp)
    # Line 521
    sw	$a0,0($s2)
    lw	$v1,-26584($s1)
    # Line 527
    ld	$s1,80($sp)
    # Line 521
    sw	$v1,0($s2)
    # Line 527
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end ApplyViewport

# Function: InitialFree
# Declared: Line 535 (Source lines: 540-540)
# Address: 0x0d965d20 - 0x0d965d2c (Size: 12 bytes, Frame: 0)
.ent InitialFree
InitialFree:
    # Line 540
    # lw $t9, -32476($gp) # &__glOdysseyFreeAttributeState
    jr	$t9
    nop
.end InitialFree

# Function: InitialDestroyContext
# Declared: Line 552 (Source lines: 553-570)
# Address: 0x0d965d30 - 0x0d965da8 (Size: 120 bytes, Frame: 32)
.ent InitialDestroyContext
InitialDestroyContext:
    # Line 556
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    # Line 553
    addiu	$sp,$sp,-32
    # Line 556
    lw	$at,27760($a2)
    # Line 553
    sd	$s0,0($sp)
    lui	$v0,0x19
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,10336
    sd	$gp,8($sp)
    # Line 556
    bnez	$at,.L0d965d6c
    # Line 553
    addu	$gp,$t9,$v0
    # Line 556
    lw	$a3,27796($a2)
    beqz	$a3,.L0d965d7c
    # Line 560
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
.L0d965d6c:
    # Line 557
    # lw $t9, -30996($gp) # &__glOdysseyUnSharePM
    jal	__glOdysseyUnSharePM
    move	$a0,$s0
    # Line 560
    # lw $t9, -32740($gp) # &sub_0d960000
.L0d965d7c:
    addiu	$t9,$t9,23840
    bal __glOdysseyFindWindowSize
    move	$a0,$s0
    # Line 565
    # lw $t9, -26804($gp) # &__glDestroyContext
    jal	__glDestroyContext
    move	$a0,$s0
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    # Line 570
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end InitialDestroyContext

# Function: DestroyContext
# Declared: Line 581 (Source lines: 582-679)
# Address: 0x0d965db0 - 0x0d965ed4 (Size: 292 bytes, Frame: 48)
.ent DestroyContext
DestroyContext:
    # Line 582
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    # Line 586
    lw	$at,4112($zero)
    # Line 582
    sd	$s1,8($sp)
    # Line 596
    lui	$s1,0x1
    sw	$a0,4112($zero)
    addu	$s1,$a0,$s1
    # Line 582
    move	$s0,$a0
    # Line 587
    xor	$v0,$a0,$at
    # Line 596
    lw	$a1,26844($s1)
    sd	$ra,32($sp)
    # Line 582
    lui	$v1,0x19
    # Line 587
    sltiu	$v0,$v0,1
    sd	$gp,24($sp)
    # Line 582
    addiu	$v1,$v1,10208
    # Line 587
    movn	$at,$zero,$v0
    # Line 582
    addu	$gp,$t9,$v1
    # Line 596
    beqz	$a1,.L0d965e08
    sd	$at,16($sp)
    # Line 604
    lw	$t9,12($s0)
    jalr	$t9
    nop
.L0d965e08:
    lw	$a1,26848($s1)
    beqz	$a1,.L0d965e24
    # Line 609
    nop	# was lw $t9, -31564($gp) # &__glOdysseyImageClose
    # Line 606
    lw	$t9,12($s0)
    jal	__glOdysseyImageClose
    move	$a0,$s0
    # Line 609
    # lw $t9, -31564($gp) # &__glOdysseyImageClose
.L0d965e24:
    jal	__glOdysseyImageClose
    nop
    # Line 612
    # lw $t9, -32540($gp) # &__glOdysseyAccumClose
    jal	__glOdysseyAccumClose
    nop
    # Line 618
    # lw $t9, -30648($gp) # &__glOdysseyTextureDriverDestroy
    jal	__glOdysseyTextureDriverDestroy
    move	$a0,$s0
    # Line 619
    # lw $t9, -30996($gp) # &__glOdysseyUnSharePM
    jal	__glOdysseyUnSharePM
    move	$a0,$s0
    # Line 626
    # lw $t9, -26764($gp) # &__glFreeBufData
    jal	__glFreeBufData
    move	$a0,$s0
    lw	$a1,26824($s1)
    beqz	$a1,.L0d965e74
    nop
    # Line 629
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0d965e74:
    lw	$a1,26828($s1)
    beqz	$a1,.L0d965e8c
    nop
    # Line 631
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
.L0d965e8c:
    # Line 633
    sw	$zero,26828($s1)
    # Line 632
    sw	$zero,26824($s1)
    # Line 640
    lw	$t9,48($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 667
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,23856
    move	$a0,$s0
    bal __glOdysseyFindWindowSize
    # Line 652
    sw	$zero,31564($s0)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    ld	$ra,32($sp)
    # Line 679
    ld	$gp,24($sp)
    # Line 673
    ld	$at,16($sp)
    # Line 679
    addiu	$sp,$sp,48
    jr	$ra
    # Line 673
    sw	$at,4112($zero)
.end DestroyContext

# Function: ApplyScissor
# Declared: Line 686 (Source lines: 699-759)
# Address: 0x0d965ee0 - 0x0d966074 (Size: 404 bytes, Frame: 0)
.ent ApplyScissor
ApplyScissor:
    # Line 702
    lw	$a3,29768($a0)
    # Line 699
    lw	$t1,3660($a0)
    # Line 706
    li	$t9,-4096
    # Line 704
    lui	$a6,0x1
    # Line 701
    lw	$a5,29764($a0)
    # Line 704
    addu	$a6,$a0,$a6
    # Line 705
    lui	$t0,0xff
    # Line 700
    lw	$a4,3664($a0)
    # Line 705
    ori	$t0,$t0,0xf000
    # Line 701
    subu	$a5,$a5,$t1
    # Line 702
    subu	$a3,$a3,$a4
    # Line 699
    lw	$a7,29756($a0)
    # Line 701
    addiu	$a5,$a5,-1
    # Line 702
    addiu	$a3,$a3,-1
    # Line 706
    andi	$at,$a5,0xfff
    # Line 700
    lw	$a2,29760($a0)
    # Line 708
    andi	$a1,$a3,0xfff
    # Line 699
    subu	$a7,$a7,$t1
    # Line 700
    subu	$a2,$a2,$a4
    # Line 705
    sll	$v1,$a7,0xc
    # Line 707
    sll	$a4,$a2,0xc
    # Line 710
    slt	$v0,$a5,$a7
    # Line 707
    and	$a4,$t0,$a4
    # Line 705
    and	$v1,$v1,$t0
    # Line 706
    and	$v1,$v1,$t9
    # Line 708
    and	$a4,$a4,$t9
    or	$a1,$a1,$a4
    sw	$a1,26048($a6)
    # Line 710
    slt	$a4,$a3,$a2
    # Line 706
    or	$at,$at,$v1
    # Line 710
    bnez	$v0,.L0d965f64
    # Line 706
    sw	$at,26044($a6)
    # Line 710
    beqz	$a4,.L0d96606c
.L0d965f64:
    li	$a4,1
.L0d965f68:
    # Line 714
    mtc1	$a2,$f2
    # Line 713
    mtc1	$a7,$f3
    # Line 716
    mtc1	$a3,$f0
    # Line 715
    mtc1	$a5,$f1
    # Line 714
    cvt.s.w	$f2,$f2
    # Line 713
    cvt.s.w	$f3,$f3
    # Line 710
    sb	$a4,26052($a6)
    # Line 716
    cvt.s.w	$f0,$f0
    # Line 715
    cvt.s.w	$f1,$f1
    # Line 714
    swc1	$f2,7724($a6)
    # Line 713
    swc1	$f3,7720($a6)
    # Line 716
    swc1	$f0,7732($a6)
    # Line 715
    swc1	$f1,7728($a6)
    # Line 720
    lw	$a4,29764($a0)
    # Line 726
    lw	$a2,29780($a0)
    # Line 721
    lw	$a1,29772($a0)
    # Line 718
    lw	$a5,29756($a0)
    # Line 726
    slt	$a3,$a2,$a4
    movz	$a2,$a4,$a3
    # Line 732
    lw	$a3,3660($a0)
    # Line 721
    slt	$a4,$a5,$a1
    movz	$a1,$a5,$a4
    # Line 734
    subu	$a2,$a2,$a3
    # Line 732
    subu	$a1,$a1,$a3
    # Line 734
    addiu	$a2,$a2,-1
    # Line 754
    lw	$a7,26980($a6)
    # Line 735
    move	$at,$zero
    slt	$v1,$a2,$a1
    li	$v0,1
    # Line 728
    lw	$t8,29784($a0)
    movz	$at,$a2,$v1
    movz	$v0,$a1,$v1
    # Line 721
    lw	$v1,29768($a0)
    # Line 754
    ori	$a7,$a7,0x2000
    # Line 735
    li	$t1,1
    # Line 724
    lw	$t2,29776($a0)
    # Line 749
    sll	$v0,$v0,0xc
    # Line 719
    lw	$a1,29760($a0)
    # Line 728
    slt	$t3,$t8,$v1
    # Line 750
    andi	$at,$at,0xfff
    movz	$t8,$v1,$t3
    # Line 733
    lw	$t3,3664($a0)
    # Line 749
    and	$v0,$t0,$v0
    # Line 724
    slt	$v1,$a1,$t2
    movz	$t2,$a1,$v1
    # Line 735
    subu	$t8,$t8,$t3
    # Line 733
    subu	$t2,$t2,$t3
    # Line 735
    addiu	$t8,$t8,-1
    # Line 750
    and	$v0,$v0,$t9
    # Line 735
    slt	$t3,$t8,$t2
    # Line 750
    or	$at,$at,$v0
    movz	$t1,$t2,$t3
    # Line 735
    move	$t2,$zero
    # Line 751
    sll	$t1,$t1,0xc
    # Line 754
    sw	$a7,26980($a6)
    movz	$t2,$t8,$t3
    # Line 751
    and	$t1,$t0,$t1
    # Line 750
    sw	$at,26036($a6)
    # Line 752
    andi	$t0,$t2,0xfff
    and	$t1,$t1,$t9
    or	$t0,$t0,$t1
    sw	$t0,26040($a6)
    # Line 754
    li	$a5,2
    # Line 759
    jr	$ra
    # Line 754
    sw	$a5,4120($zero)
.L0d96606c:
    b	.L0d965f68
    # Line 710
    move	$a4,$zero
.end ApplyScissor

# Function: CopyColorIndexCode
# Declared: Line 765 (Source lines: 767-849)
# Address: 0x0d966080 - 0x0d966488 (Size: 1032 bytes, Frame: 240)
.ent CopyColorIndexCode
CopyColorIndexCode:
    # Line 767
    addiu	$sp,$sp,-112
    sd	$a7,104($sp)
    sd	$a6,96($sp)
    sd	$a5,88($sp)
    sd	$a4,80($sp)
    sd	$a3,72($sp)
    sd	$s5,24($sp)
    sd	$a1,56($sp)
    sd	$s0,16($sp)
    # Line 770
    # lw $t9, -17016($gp) # &memcpy
    # Line 767
    sd	$s1,8($sp)
    # Line 770
    lw	$s1,228($sp)
    # Line 767
    move	$s0,$a0
    # Line 770
    dsra32	$a1,$a1,0x0
    # Line 767
    sd	$a2,64($sp)
    sd	$ra,0($sp)
    # Line 770
    jal	memcpy
    move	$a2,$s1
    # Line 772
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s5,$s0,$s1
    lw	$a1,60($sp)
    jal	memcpy
    move	$a0,$s5
    # Line 774
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s0,$s5,$s1
    lw	$a1,64($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 776
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    lw	$a1,68($sp)
    addu	$s5,$s0,$s1
    sd	$s7,32($sp)
    jal	memcpy
    move	$a0,$s5
    # Line 778
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s7,$s5,$s1
    lw	$a1,72($sp)
    jal	memcpy
    move	$a0,$s7
    # Line 780
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s0,$s7,$s1
    lw	$a1,76($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 782
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s5,$s0,$s1
    lw	$a1,80($sp)
    jal	memcpy
    move	$a0,$s5
    # Line 784
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s0,$s5,$s1
    lw	$a1,84($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 786
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s5,$s0,$s1
    lw	$a1,88($sp)
    jal	memcpy
    move	$a0,$s5
    # Line 788
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s0,$s5,$s1
    lw	$a1,92($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 790
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s5,$s0,$s1
    lw	$a1,96($sp)
    jal	memcpy
    move	$a0,$s5
    # Line 792
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s7,$s5,$s1
    lw	$a1,100($sp)
    jal	memcpy
    move	$a0,$s7
    # Line 794
    # lw $t9, -17016($gp) # &memcpy
    ld	$s5,24($sp)
    move	$a2,$s1
    addu	$s0,$s7,$s1
    lw	$a1,104($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 796
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s7,$s0,$s1
    lw	$a1,108($sp)
    jal	memcpy
    move	$a0,$s7
    # Line 798
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 797
    addu	$s0,$s7,$s1
    # Line 798
    lw	$a1,112($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 800
    # lw $t9, -17016($gp) # &memcpy
    ld	$s7,32($sp)
    move	$a2,$s1
    # Line 799
    addu	$s0,$s0,$s1
    # Line 800
    lw	$a1,116($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 802
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 801
    addu	$s0,$s0,$s1
    # Line 802
    lw	$a1,120($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 804
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 803
    addu	$s0,$s0,$s1
    # Line 804
    lw	$a1,124($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 806
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 805
    addu	$s0,$s0,$s1
    # Line 806
    lw	$a1,128($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 808
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 807
    addu	$s0,$s0,$s1
    # Line 808
    lw	$a1,132($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 810
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 809
    addu	$s0,$s0,$s1
    # Line 810
    lw	$a1,136($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 812
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 811
    addu	$s0,$s0,$s1
    # Line 812
    lw	$a1,140($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 814
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 813
    addu	$s0,$s0,$s1
    # Line 814
    lw	$a1,144($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 816
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 815
    addu	$s0,$s0,$s1
    # Line 816
    lw	$a1,148($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 818
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 817
    addu	$s0,$s0,$s1
    # Line 818
    lw	$a1,152($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 820
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 819
    addu	$s0,$s0,$s1
    # Line 820
    lw	$a1,156($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 822
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 821
    addu	$s0,$s0,$s1
    # Line 822
    lw	$a1,160($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 824
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 823
    addu	$s0,$s0,$s1
    # Line 824
    lw	$a1,164($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 826
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 825
    addu	$s0,$s0,$s1
    # Line 826
    lw	$a1,168($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 828
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 827
    addu	$s0,$s0,$s1
    # Line 828
    lw	$a1,172($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 830
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 829
    addu	$s0,$s0,$s1
    # Line 830
    lw	$a1,176($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 832
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 831
    addu	$s0,$s0,$s1
    # Line 832
    lw	$a1,180($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 834
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 833
    addu	$s0,$s0,$s1
    # Line 834
    lw	$a1,184($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 836
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 835
    addu	$s0,$s0,$s1
    # Line 836
    lw	$a1,188($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 838
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 837
    addu	$s0,$s0,$s1
    # Line 838
    lw	$a1,192($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 840
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 839
    addu	$s0,$s0,$s1
    # Line 840
    lw	$a1,196($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 842
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 841
    addu	$s0,$s0,$s1
    # Line 842
    lw	$a1,200($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 844
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 843
    addu	$s0,$s0,$s1
    # Line 844
    lw	$a1,204($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 846
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 845
    addu	$s0,$s0,$s1
    # Line 846
    lw	$a1,208($sp)
    jal	memcpy
    move	$a0,$s0
    ld	$ra,0($sp)
    # Line 848
    # lw $t9, -17016($gp) # &memcpy
    lw	$a1,212($sp)
    addu	$a0,$s0,$s1
    # Line 849
    ld	$s0,16($sp)
    # Line 848
    move	$a2,$s1
    # Line 849
    ld	$s1,8($sp)
    jr	$t9
    addiu	$sp,$sp,112
.end CopyColorIndexCode

# Function: CopyNormalCode
# Declared: Line 852 (Source lines: 854-876)
# Address: 0x0d966490 - 0x0d9665c8 (Size: 312 bytes, Frame: 128)
.ent CopyNormalCode
CopyNormalCode:
    # Line 854
    addiu	$sp,$sp,-128
    sd	$a5,104($sp)
    sd	$a4,96($sp)
    sd	$a3,88($sp)
    sd	$ra,0($sp)
    sd	$s0,48($sp)
    sd	$s7,8($sp)
    # Line 857
    # lw $t9, -17016($gp) # &memcpy
    # Line 854
    move	$s7,$a0
    sd	$a1,72($sp)
    # Line 857
    dsra32	$a1,$a1,0x0
    # Line 854
    move	$s0,$a6
    sd	$a2,80($sp)
    # Line 857
    move	$a2,$a6
    jal	memcpy
    sd	$s8,56($sp)
    # Line 859
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s0
    addu	$s8,$s7,$s0
    lw	$a1,76($sp)
    jal	memcpy
    move	$a0,$s8
    # Line 861
    # lw $t9, -17016($gp) # &memcpy
    ld	$s7,8($sp)
    addu	$a0,$s8,$s0
    sd	$a0,40($sp)
    move	$a2,$s0
    jal	memcpy
    lw	$a1,80($sp)
    # Line 863
    # lw $t9, -17016($gp) # &memcpy
    ld	$s8,40($sp)
    move	$a2,$s0
    addu	$s8,$s8,$s0
    lw	$a1,84($sp)
    jal	memcpy
    move	$a0,$s8
    # Line 865
    # lw $t9, -17016($gp) # &memcpy
    addu	$a0,$s8,$s0
    sd	$a0,32($sp)
    move	$a2,$s0
    jal	memcpy
    lw	$a1,88($sp)
    # Line 867
    # lw $t9, -17016($gp) # &memcpy
    ld	$s8,32($sp)
    move	$a2,$s0
    addu	$s8,$s8,$s0
    lw	$a1,92($sp)
    jal	memcpy
    move	$a0,$s8
    # Line 869
    # lw $t9, -17016($gp) # &memcpy
    addu	$a0,$s8,$s0
    sd	$a0,24($sp)
    move	$a2,$s0
    jal	memcpy
    lw	$a1,96($sp)
    # Line 871
    # lw $t9, -17016($gp) # &memcpy
    ld	$s8,24($sp)
    move	$a2,$s0
    addu	$s8,$s8,$s0
    lw	$a1,100($sp)
    jal	memcpy
    move	$a0,$s8
    # Line 873
    # lw $t9, -17016($gp) # &memcpy
    addu	$a0,$s8,$s0
    sd	$a0,16($sp)
    move	$a2,$s0
    jal	memcpy
    lw	$a1,104($sp)
    ld	$ra,0($sp)
    # Line 875
    ld	$a0,16($sp)
    # lw $t9, -17016($gp) # &memcpy
    ld	$s8,56($sp)
    lw	$a1,108($sp)
    move	$a2,$s0
    addu	$a0,$a0,$s0
    # Line 876
    ld	$s0,48($sp)
    jr	$t9
    addiu	$sp,$sp,128
.end CopyNormalCode

# Function: CopyTexCoordCode
# Declared: Line 879 (Source lines: 881-947)
# Address: 0x0d9665d0 - 0x0d966918 (Size: 840 bytes, Frame: 240)
.ent CopyTexCoordCode
CopyTexCoordCode:
    # Line 881
    addiu	$sp,$sp,-112
    sd	$a7,104($sp)
    sd	$a6,96($sp)
    sd	$a5,88($sp)
    sd	$a4,80($sp)
    sd	$a3,72($sp)
    sd	$s5,24($sp)
    sd	$a1,56($sp)
    sd	$s0,16($sp)
    # Line 884
    # lw $t9, -17016($gp) # &memcpy
    # Line 881
    sd	$s1,8($sp)
    # Line 884
    lw	$s1,188($sp)
    # Line 881
    move	$s0,$a0
    # Line 884
    dsra32	$a1,$a1,0x0
    # Line 881
    sd	$a2,64($sp)
    sd	$ra,0($sp)
    # Line 884
    jal	memcpy
    move	$a2,$s1
    # Line 886
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s5,$s0,$s1
    lw	$a1,60($sp)
    jal	memcpy
    move	$a0,$s5
    # Line 888
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s0,$s5,$s1
    lw	$a1,64($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 890
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    lw	$a1,68($sp)
    addu	$s5,$s0,$s1
    sd	$s7,32($sp)
    jal	memcpy
    move	$a0,$s5
    # Line 892
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s7,$s5,$s1
    lw	$a1,72($sp)
    jal	memcpy
    move	$a0,$s7
    # Line 894
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s0,$s7,$s1
    lw	$a1,76($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 896
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s5,$s0,$s1
    lw	$a1,80($sp)
    jal	memcpy
    move	$a0,$s5
    # Line 898
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s0,$s5,$s1
    lw	$a1,84($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 900
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s5,$s0,$s1
    lw	$a1,88($sp)
    jal	memcpy
    move	$a0,$s5
    # Line 902
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s0,$s5,$s1
    lw	$a1,92($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 904
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s5,$s0,$s1
    lw	$a1,96($sp)
    jal	memcpy
    move	$a0,$s5
    # Line 906
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s7,$s5,$s1
    lw	$a1,100($sp)
    jal	memcpy
    move	$a0,$s7
    # Line 908
    # lw $t9, -17016($gp) # &memcpy
    ld	$s5,24($sp)
    move	$a2,$s1
    addu	$s0,$s7,$s1
    lw	$a1,104($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 910
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    addu	$s7,$s0,$s1
    lw	$a1,108($sp)
    jal	memcpy
    move	$a0,$s7
    # Line 912
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 911
    addu	$s0,$s7,$s1
    # Line 912
    lw	$a1,112($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 914
    # lw $t9, -17016($gp) # &memcpy
    ld	$s7,32($sp)
    move	$a2,$s1
    # Line 913
    addu	$s0,$s0,$s1
    # Line 914
    lw	$a1,116($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 916
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 915
    addu	$s0,$s0,$s1
    # Line 916
    lw	$a1,120($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 918
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 917
    addu	$s0,$s0,$s1
    # Line 918
    lw	$a1,124($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 920
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 919
    addu	$s0,$s0,$s1
    # Line 920
    lw	$a1,128($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 922
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 921
    addu	$s0,$s0,$s1
    # Line 922
    lw	$a1,132($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 924
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 923
    addu	$s0,$s0,$s1
    # Line 924
    lw	$a1,136($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 926
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 925
    addu	$s0,$s0,$s1
    # Line 926
    lw	$a1,140($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 928
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 927
    addu	$s0,$s0,$s1
    # Line 928
    lw	$a1,144($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 930
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 929
    addu	$s0,$s0,$s1
    # Line 930
    lw	$a1,148($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 932
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 931
    addu	$s0,$s0,$s1
    # Line 932
    lw	$a1,152($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 934
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 933
    addu	$s0,$s0,$s1
    # Line 934
    lw	$a1,156($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 936
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 935
    addu	$s0,$s0,$s1
    # Line 936
    lw	$a1,160($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 938
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 937
    addu	$s0,$s0,$s1
    # Line 938
    lw	$a1,164($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 940
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 939
    addu	$s0,$s0,$s1
    # Line 940
    lw	$a1,168($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 942
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 941
    addu	$s0,$s0,$s1
    # Line 942
    lw	$a1,172($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 944
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 943
    addu	$s0,$s0,$s1
    # Line 944
    lw	$a1,176($sp)
    jal	memcpy
    move	$a0,$s0
    ld	$ra,0($sp)
    # Line 946
    # lw $t9, -17016($gp) # &memcpy
    lw	$a1,180($sp)
    addu	$a0,$s0,$s1
    # Line 947
    ld	$s0,16($sp)
    # Line 946
    move	$a2,$s1
    # Line 947
    ld	$s1,8($sp)
    jr	$t9
    addiu	$sp,$sp,112
.end CopyTexCoordCode

# Function: CopyVertexCode
# Declared: Line 950 (Source lines: 952-1007)
# Address: 0x0d966920 - 0x0d966bc8 (Size: 680 bytes, Frame: 224)
.ent CopyVertexCode
CopyVertexCode:
    # Line 952
    addiu	$sp,$sp,-96
    sd	$a7,88($sp)
    sd	$a6,80($sp)
    sd	$a5,72($sp)
    sd	$a4,64($sp)
    sd	$a3,56($sp)
    sd	$a2,48($sp)
    sd	$a1,40($sp)
    # Line 953
    lw	$t1,148($sp)
    sd	$ra,16($sp)
    # Line 952
    sd	$s2,8($sp)
    # Line 953
    andi	$at,$t1,0x1
    # Line 952
    move	$s2,$a0
    sd	$s0,0($sp)
    # Line 953
    move	$s0,$a0
    beqz	$at,.L0d966ae8
    sd	$s1,24($sp)
    # Line 956
    # lw $t9, -17016($gp) # &memcpy
    lw	$s1,140($sp)
    dsra32	$a1,$a1,0x0
    jal	memcpy
    move	$a2,$s1
    # Line 958
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 957
    addu	$s0,$s2,$s1
    # Line 958
    lw	$a1,44($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 960
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 959
    addu	$s0,$s0,$s1
    # Line 960
    lw	$a1,48($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 962
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 961
    addu	$s0,$s0,$s1
    # Line 962
    lw	$a1,52($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 964
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 963
    addu	$s0,$s0,$s1
    # Line 964
    lw	$a1,56($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 966
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 965
    addu	$s0,$s0,$s1
    # Line 966
    lw	$a1,60($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 968
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 967
    addu	$s0,$s0,$s1
    # Line 968
    lw	$a1,64($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 970
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 969
    addu	$s0,$s0,$s1
    # Line 970
    lw	$a1,68($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 972
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 971
    addu	$s0,$s0,$s1
    # Line 972
    lw	$a1,72($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 974
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 973
    addu	$s0,$s0,$s1
    # Line 974
    lw	$a1,76($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 976
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 975
    addu	$s0,$s0,$s1
    # Line 976
    lw	$a1,80($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 978
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 977
    addu	$s0,$s0,$s1
    # Line 978
    lw	$a1,84($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 980
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 979
    addu	$s0,$s0,$s1
    # Line 980
    lw	$a1,88($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 982
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 981
    addu	$s0,$s0,$s1
    # Line 982
    lw	$a1,92($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 984
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 983
    addu	$s0,$s0,$s1
    # Line 984
    lw	$a1,96($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 986
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 985
    addu	$s0,$s0,$s1
    # Line 986
    lw	$a1,100($sp)
    jal	memcpy
    move	$a0,$s0
    lw	$t1,148($sp)
    # Line 987
    addu	$s0,$s0,$s1
.L0d966ae8:
    andi	$v0,$t1,0x2
    beqz	$v0,.L0d966bb4
    ld	$ra,16($sp)
    # Line 991
    # lw $t9, -17016($gp) # &memcpy
    lw	$s1,140($sp)
    move	$a0,$s0
    lw	$a1,104($sp)
    jal	memcpy
    move	$a2,$s1
    # Line 993
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 992
    addu	$s0,$s0,$s1
    # Line 993
    lw	$a1,108($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 995
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 994
    addu	$s0,$s0,$s1
    # Line 995
    lw	$a1,112($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 997
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 996
    addu	$s0,$s0,$s1
    # Line 997
    lw	$a1,116($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 999
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 998
    addu	$s0,$s0,$s1
    # Line 999
    lw	$a1,120($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 1001
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 1000
    addu	$s0,$s0,$s1
    # Line 1001
    lw	$a1,124($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 1003
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    # Line 1002
    addu	$s0,$s0,$s1
    # Line 1003
    lw	$a1,128($sp)
    jal	memcpy
    move	$a0,$s0
    # Line 1005
    # lw $t9, -17016($gp) # &memcpy
    move	$a2,$s1
    lw	$a1,132($sp)
    jal	memcpy
    addu	$a0,$s0,$s1
    ld	$ra,16($sp)
.L0d966bb4:
    ld	$s0,0($sp)
    ld	$s1,24($sp)
    ld	$s2,8($sp)
    # Line 1007
    jr	$ra
    addiu	$sp,$sp,96
.end CopyVertexCode

# Function: AllocInitFastDispatchCodeBuffers
# Declared: Line 1010 (Source lines: 1011-1165)
# Address: 0x0d966bd0 - 0x0d96741c (Size: 2124 bytes, Frame: 144)
.ent AllocInitFastDispatchCodeBuffers
AllocInitFastDispatchCodeBuffers:
    # Line 1011
    addiu	$sp,$sp,-272
    sd	$s0,256($sp)
    # Line 1013
    lw	$s0,0($a1)
    # Line 1011
    sd	$a0,240($sp)
    sd	$a1,248($sp)
    # Line 1023
    bltz	$s0,.L0d966bfc
    sd	$ra,264($sp)
    lw	$a2,6068($zero)
    lw	$v0,16($a2)
    beqz	$v0,.L0d966f0c
    # Line 1025
    ld	$t9,240($sp)
.L0d966bfc:
    # Line 1045
    bltz	$s0,.L0d966c44
    # Line 1028
    nop
    # Line 1045
    lw	$a2,6068($zero)
    lw	$a4,20($a2)
    beqz	$a4,.L0d967034
    # Line 1047
    ld	$t9,240($sp)
.L0d966c14:
    # Line 1065
    bltz	$s0,.L0d966c44
    nop
    lw	$a2,6068($zero)
    lw	$a5,28($a2)
    beqz	$a5,.L0d967154
    # Line 1067
    ld	$t9,240($sp)
.L0d966c2c:
    # Line 1085
    bltz	$s0,.L0d966c44
    nop
    lw	$a2,6068($zero)
    lw	$a6,36($a2)
    beqz	$a6,.L0d9671bc
    # Line 1087
    ld	$t9,240($sp)
.L0d966c44:
    # Line 1107
    beqz	$s0,.L0d966c84
    li	$a7,1
    beq	$s0,$a7,.L0d966d70
    li	$t0,2
    bne	$s0,$t0,.L0d966c70
    # Line 1164
    ld	$t2,248($sp)
    # Line 1146
    lw	$a2,6068($zero)
    lw	$t1,48($a2)
    beqz	$t1,.L0d9672c8
    # Line 1148
    ld	$t9,240($sp)
.L0d966c6c:
    # Line 1164
    ld	$t2,248($sp)
.L0d966c70:
    ld	$ra,264($sp)
    sw	$s0,0($t2)
    # Line 1165
    ld	$s0,256($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d966c84:
    # Line 1109
    lw	$a2,6068($zero)
    lw	$t3,44($a2)
    bnez	$t3,.L0d966c6c
    # Line 1111
    ld	$t9,240($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    jalr	$t9
    lw	$a1,40($a2)
    lw	$a1,6068($zero)
    sw	$v0,44($a1)
    lw	$a0,6068($zero)
    lw	$a0,44($a0)
    ld	$ra,264($sp)
    beqz	$a0,.L0d9673c0
    # Line 1164
    ld	$t8,248($sp)
    # Line 1117
    la	$t0,__glOdyim_vertexDispatchTable
    # lw $t9, -32740($gp) # &sub_0d960000
    lw	$t1,56($t0)
    ldl	$a1,0($t0)
    ldl	$a2,8($t0)
    ldl	$a3,16($t0)
    ldl	$a4,24($t0)
    ldl	$a5,32($t0)
    ldl	$a7,48($t0)
    ldl	$a6,40($t0)
    ldr	$a7,55($t0)
    ldr	$a6,47($t0)
    ldr	$a5,39($t0)
    ldr	$a4,31($t0)
    ldr	$a3,23($t0)
    ldr	$a2,15($t0)
    ldr	$a1,7($t0)
    sw	$t1,0($sp)
    lw	$v1,60($t0)
    sw	$v1,4($sp)
    lw	$v0,64($t0)
    sw	$v0,8($sp)
    lw	$at,68($t0)
    sw	$at,12($sp)
    lw	$ra,72($t0)
    sw	$ra,16($sp)
    lw	$t8,76($t0)
    sw	$t8,20($sp)
    lw	$t3,80($t0)
    sw	$t3,24($sp)
    lw	$t2,84($t0)
    sw	$t2,28($sp)
    lw	$t1,88($t0)
    sw	$t1,32($sp)
    lw	$t0,92($t0)
    addiu	$t9,$t9,26912
    li	$t2,3
    sw	$t2,52($sp)
    li	$t1,256
    sw	$t1,44($sp)
    bal __glOdysseyFindWindowSize
    sw	$t0,36($sp)
    b	.L0d966c70
    # Line 1164
    ld	$t2,248($sp)
.L0d966d70:
    # Line 1125
    lw	$a2,6068($zero)
    lw	$t2,52($a2)
    bnez	$t2,.L0d966c6c
    # Line 1127
    ld	$t9,240($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    jal	sub_0d960000
    lw	$a1,40($a2)
    lw	$at,6068($zero)
    sw	$v0,52($at)
    lw	$ra,6068($zero)
    lw	$ra,52($ra)
    beqz	$ra,.L0d9673f0
    sd	$ra,128($sp)
    # Line 1133
    la	$v0,__glOdyim_vertexDispatchTable
    # lw $t9, -32740($gp) # &sub_0d960000
    lw	$at,56($v0)
    ldl	$a1,0($v0)
    ldl	$a2,8($v0)
    ldl	$a3,16($v0)
    ldl	$a4,24($v0)
    ldl	$a5,32($v0)
    ldl	$a7,48($v0)
    ldl	$a6,40($v0)
    ldr	$a7,55($v0)
    ldr	$a6,47($v0)
    ldr	$a5,39($v0)
    ldr	$a4,31($v0)
    ldr	$a3,23($v0)
    ldr	$a2,15($v0)
    ldr	$a1,7($v0)
    sw	$at,0($sp)
    lw	$ra,60($v0)
    sw	$ra,4($sp)
    lw	$t8,64($v0)
    sw	$t8,8($sp)
    lw	$t3,68($v0)
    sw	$t3,12($sp)
    lw	$t2,72($v0)
    sw	$t2,16($sp)
    lw	$t1,76($v0)
    sw	$t1,20($sp)
    lw	$t0,80($v0)
    sw	$t0,24($sp)
    lw	$a0,84($v0)
    sw	$a0,28($sp)
    ld	$a0,128($sp)
    lw	$v1,88($v0)
    sw	$v1,32($sp)
    lw	$v0,92($v0)
    addiu	$t9,$t9,26912
    li	$at,1
    sw	$at,52($sp)
    li	$ra,256
    sw	$ra,44($sp)
    bal __glOdysseyFindWindowSize
    sw	$v0,36($sp)
    # Line 1138
    la	$ra,__glOdyim_vertexSmallWDispatchTable
    # lw $t9, -32740($gp) # &sub_0d960000
    lw	$t8,56($ra)
    ldl	$a1,0($ra)
    ldl	$a2,8($ra)
    ldl	$a3,16($ra)
    ldl	$a4,24($ra)
    ldl	$a5,32($ra)
    ldl	$a7,48($ra)
    ldl	$a6,40($ra)
    ldr	$a7,55($ra)
    ldr	$a6,47($ra)
    ldr	$a5,39($ra)
    ldr	$a4,31($ra)
    ldr	$a3,23($ra)
    ldr	$a2,15($ra)
    ldr	$a1,7($ra)
    sw	$t8,0($sp)
    lw	$t3,60($ra)
    sw	$t3,4($sp)
    lw	$t2,64($ra)
    sw	$t2,8($sp)
    lw	$t1,68($ra)
    sw	$t1,12($sp)
    lw	$t0,72($ra)
    sw	$t0,16($sp)
    lw	$a0,76($ra)
    sw	$a0,20($sp)
    ld	$a0,128($sp)
    lw	$v1,80($ra)
    sw	$v1,24($sp)
    lw	$v0,84($ra)
    sw	$v0,28($sp)
    lw	$at,88($ra)
    sw	$at,32($sp)
    lw	$ra,92($ra)
    addiu	$t9,$t9,26912
    li	$t1,2
    sw	$t1,52($sp)
    li	$t0,256
    sw	$ra,36($sp)
    addiu	$a0,$a0,4096
    bal __glOdysseyFindWindowSize
    sw	$t0,44($sp)
    b	.L0d966c70
    # Line 1164
    ld	$t2,248($sp)
.L0d966f0c:
    # Line 1025
    move	$a0,$t9
    lw	$t9,0($t9)
    jal	sub_0d960000
    lw	$a1,12($a2)
    lw	$t0,6068($zero)
    sw	$v0,16($t0)
    lw	$a7,6068($zero)
    lw	$a7,16($a7)
    beqz	$a7,.L0d96740c
    # Line 1035
    la	$a4,__glOdyim_colorDispatchTable
    ldl	$a1,0($a4)
    sd	$a7,184($sp)
    ldr	$a1,7($a4)
    ldl	$v1,48($a4)
    ldl	$v0,40($a4)
    ldl	$at,32($a4)
    ldl	$t3,16($a4)
    ldl	$t0,8($a4)
    ldl	$ra,24($a4)
    ldr	$t0,15($a4)
    ldr	$ra,31($a4)
    ldr	$t3,23($a4)
    ldr	$at,39($a4)
    ldr	$v0,47($a4)
    ldr	$v1,55($a4)
    sd	$v1,232($sp)
    addiu	$t9,$sp,-44
    li	$t8,0x10
    sd	$v0,224($sp)
    addiu	$a2,$sp,-52
    li	$t1,28
    sd	$at,216($sp)
    li	$t2,56
    addiu	$a3,$sp,-56
    sd	$t3,200($sp)
    addiu	$a5,$a4,4
    addiu	$a0,$a4,8
    sd	$ra,208($sp)
    addiu	$ra,$sp,-48
    addiu	$t3,$a4,12
    sd	$t0,192($sp)
.L0d966fb0:
    addu	$v0,$t2,$a4
    addu	$v1,$t2,$a3
    lw	$v0,0($v0)
    addu	$at,$t2,$a5
    sw	$v0,0($v1)
    addu	$v0,$t2,$a2
    lw	$at,0($at)
    addu	$t0,$t2,$a0
    sw	$at,0($v0)
    addu	$at,$t2,$ra
    lw	$t0,0($t0)
    addiu	$t1,$t1,-4
    addu	$a7,$t2,$t3
    sw	$t0,0($at)
    addu	$t0,$t2,$t9
    lw	$a7,0($a7)
    addu	$t2,$t2,$t8
    bgtz	$t1,.L0d966fb0
    sw	$a7,0($t0)
    ld	$a7,232($sp)
    ld	$a6,224($sp)
    ld	$a5,216($sp)
    ld	$a4,208($sp)
    # lw $t9, -32740($gp) # &sub_0d960000
    ld	$a3,200($sp)
    ld	$a2,192($sp)
    addiu	$t9,$t9,24704
    li	$ra,128
    sw	$ra,116($sp)
    bal __glOdysseyFindWindowSize
    ld	$a0,184($sp)
    b	.L0d966bfc
    nop
.L0d967034:
    # Line 1047
    move	$a0,$t9
    lw	$t9,0($t9)
    jal	sub_0d960000
    lw	$a1,12($a2)
    lw	$a7,6068($zero)
    sw	$v0,20($a7)
    lw	$a6,6068($zero)
    lw	$a6,20($a6)
    beqz	$a6,.L0d967414
    # Line 1056
    la	$a4,__glOdyim_indexDispatchTable
    sd	$a6,136($sp)
    ldl	$a7,48($a4)
    ldl	$a1,0($a4)
    ldr	$a7,55($a4)
    ldr	$a1,7($a4)
    ldl	$t9,40($a4)
    ldl	$t2,16($a4)
    ldl	$t8,32($a4)
    ldl	$t0,8($a4)
    ldl	$t3,24($a4)
    ldr	$t0,15($a4)
    ldr	$t3,31($a4)
    ldr	$t8,39($a4)
    ldr	$t2,23($a4)
    ldr	$t9,47($a4)
    addiu	$a0,$sp,-44
    addiu	$a2,$sp,-52
    sd	$t9,144($sp)
    li	$t1,28
    addiu	$ra,$sp,-48
    sd	$t2,160($sp)
    addiu	$a3,$sp,-56
    addiu	$a5,$a4,4
    sd	$t8,176($sp)
    li	$t8,0x10
    li	$t2,56
    sd	$t3,168($sp)
    addiu	$t3,$a4,12
    addiu	$t9,$a4,8
    sd	$t0,152($sp)
.L0d9670d4:
    addu	$a6,$t2,$a4
    addu	$t0,$t2,$a3
    lw	$a6,0($a6)
    addu	$v1,$t2,$a5
    sw	$a6,0($t0)
    addu	$a6,$t2,$a2
    lw	$v1,0($v1)
    addu	$v0,$t2,$t9
    sw	$v1,0($a6)
    addu	$v1,$t2,$ra
    lw	$v0,0($v0)
    addiu	$t1,$t1,-4
    addu	$at,$t2,$t3
    sw	$v0,0($v1)
    addu	$v0,$t2,$a0
    lw	$at,0($at)
    addu	$t2,$t2,$t8
    bgtz	$t1,.L0d9670d4
    sw	$at,0($v0)
    ld	$a6,144($sp)
    ld	$a5,176($sp)
    ld	$a4,168($sp)
    # lw $t9, -32740($gp) # &sub_0d960000
    ld	$a3,160($sp)
    ld	$a2,152($sp)
    addiu	$t9,$t9,24704
    li	$ra,128
    sw	$ra,116($sp)
    bal __glOdysseyFindWindowSize
    ld	$a0,136($sp)
    b	.L0d966c14
    nop
.L0d967154:
    # Line 1067
    move	$a0,$t9
    lw	$t9,0($t9)
    jal	sub_0d960000
    lw	$a1,24($a2)
    lw	$a1,6068($zero)
    sw	$v0,28($a1)
    lw	$a0,6068($zero)
    lw	$a0,28($a0)
    beqz	$a0,.L0d9673a8
    # Line 1076
    la	$a7,__glOdyim_normalDispatchTable
    # lw $t9, -32740($gp) # &sub_0d960000
    ldl	$a1,0($a7)
    ldl	$a2,8($a7)
    ldl	$a3,16($a7)
    ldl	$a5,32($a7)
    ldl	$a4,24($a7)
    ldr	$a5,39($a7)
    ldr	$a4,31($a7)
    addiu	$t9,$t9,25744
    ldr	$a3,23($a7)
    ldr	$a2,15($a7)
    li	$a6,128
    bal __glOdysseyFindWindowSize
    ldr	$a1,7($a7)
    b	.L0d966c2c
    nop
.L0d9671bc:
    # Line 1087
    move	$a0,$t9
    lw	$t9,0($t9)
    jal	sub_0d960000
    lw	$a1,32($a2)
    lw	$a1,6068($zero)
    sw	$v0,36($a1)
    lw	$a0,6068($zero)
    lw	$a0,36($a0)
    beqz	$a0,.L0d9673d4
    # Line 1096
    la	$t0,__glOdyim_texCoordDispatchTable
    # lw $t9, -32740($gp) # &sub_0d960000
    lw	$ra,56($t0)
    ldl	$a1,0($t0)
    ldl	$a2,8($t0)
    ldl	$a3,16($t0)
    ldl	$a4,24($t0)
    ldl	$a5,32($t0)
    ldl	$a7,48($t0)
    ldl	$a6,40($t0)
    ldr	$a7,55($t0)
    ldr	$a6,47($t0)
    ldr	$a5,39($t0)
    ldr	$a4,31($t0)
    ldr	$a3,23($t0)
    ldr	$a2,15($t0)
    ldr	$a1,7($t0)
    sw	$ra,0($sp)
    lw	$t8,60($t0)
    sw	$t8,4($sp)
    lw	$t3,64($t0)
    sw	$t3,8($sp)
    lw	$t2,68($t0)
    sw	$t2,12($sp)
    lw	$t1,72($t0)
    sw	$t1,16($sp)
    lw	$v1,76($t0)
    sw	$v1,20($sp)
    lw	$v0,80($t0)
    sw	$v0,24($sp)
    lw	$at,84($t0)
    sw	$at,28($sp)
    lw	$ra,88($t0)
    sw	$ra,32($sp)
    lw	$t8,92($t0)
    sw	$t8,36($sp)
    lw	$t3,96($t0)
    sw	$t3,40($sp)
    lw	$t2,100($t0)
    sw	$t2,44($sp)
    lw	$t1,104($t0)
    sw	$t1,48($sp)
    lw	$v1,108($t0)
    sw	$v1,52($sp)
    lw	$v0,112($t0)
    sw	$v0,56($sp)
    lw	$at,116($t0)
    sw	$at,60($sp)
    lw	$ra,120($t0)
    sw	$ra,64($sp)
    addiu	$t9,$t9,26064
    lw	$t0,124($t0)
    li	$t1,128
    sw	$t1,76($sp)
    bal __glOdysseyFindWindowSize
    sw	$t0,68($sp)
    b	.L0d966c44
    nop
.L0d9672c8:
    # Line 1148
    move	$a0,$t9
    lw	$t9,0($t9)
    jal	sub_0d960000
    lw	$a1,40($a2)
    lw	$a1,6068($zero)
    sw	$v0,48($a1)
    lw	$a0,6068($zero)
    lw	$a0,48($a0)
    # Line 1164
    ld	$t3,248($sp)
    # Line 1157
    li	$t2,-1
    # Line 1148
    beqz	$a0,.L0d9673b0
    ld	$ra,264($sp)
    # Line 1153
    la	$t0,__glOdyim_vertexSmallWDispatchTable
    # lw $t9, -32740($gp) # &sub_0d960000
    lw	$t1,56($t0)
    ldl	$a1,0($t0)
    ldl	$a2,8($t0)
    ldl	$a3,16($t0)
    ldl	$a4,24($t0)
    ldl	$a5,32($t0)
    ldl	$a7,48($t0)
    ldl	$a6,40($t0)
    ldr	$a7,55($t0)
    ldr	$a6,47($t0)
    ldr	$a5,39($t0)
    ldr	$a4,31($t0)
    ldr	$a3,23($t0)
    ldr	$a2,15($t0)
    ldr	$a1,7($t0)
    sw	$t1,0($sp)
    lw	$v1,60($t0)
    sw	$v1,4($sp)
    lw	$v0,64($t0)
    sw	$v0,8($sp)
    lw	$at,68($t0)
    sw	$at,12($sp)
    lw	$ra,72($t0)
    sw	$ra,16($sp)
    lw	$t8,76($t0)
    sw	$t8,20($sp)
    lw	$t3,80($t0)
    sw	$t3,24($sp)
    lw	$t2,84($t0)
    sw	$t2,28($sp)
    lw	$t1,88($t0)
    sw	$t1,32($sp)
    lw	$t0,92($t0)
    addiu	$t9,$t9,26912
    li	$t2,3
    sw	$t2,52($sp)
    li	$t1,256
    sw	$t1,44($sp)
    bal __glOdysseyFindWindowSize
    sw	$t0,36($sp)
    b	.L0d966c70
    # Line 1164
    ld	$t2,248($sp)
.L0d9673a8:
    # Line 1079
    b	.L0d966c44
    li	$s0,-1
.L0d9673b0:
    # Line 1165
    ld	$s0,256($sp)
    addiu	$sp,$sp,272
    jr	$ra
    # Line 1164
    sw	$t2,0($t3)
.L0d9673c0:
    # Line 1121
    li	$s0,-1
    # Line 1164
    sw	$s0,0($t8)
    # Line 1165
    ld	$s0,256($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d9673d4:
    ld	$ra,264($sp)
    # Line 1164
    ld	$at,248($sp)
    # Line 1165
    ld	$s0,256($sp)
    addiu	$sp,$sp,272
    # Line 1099
    li	$t9,-1
    # Line 1165
    jr	$ra
    # Line 1164
    sw	$t9,0($at)
.L0d9673f0:
    ld	$ra,264($sp)
    ld	$v1,248($sp)
    # Line 1165
    ld	$s0,256($sp)
    addiu	$sp,$sp,272
    # Line 1142
    li	$v0,-1
    # Line 1165
    jr	$ra
    # Line 1164
    sw	$v0,0($v1)
.L0d96740c:
    # Line 1038
    b	.L0d966c14
    li	$s0,-1
.L0d967414:
    # Line 1059
    b	.L0d966c2c
    li	$s0,-1
.end AllocInitFastDispatchCodeBuffers

# Function: InitFastDispatch
# Declared: Line 1172 (Source lines: 1173-1308)
# Address: 0x0d967420 - 0x0d967618 (Size: 504 bytes, Frame: 32)
.ent InitFastDispatch
InitFastDispatch:
    # Line 1180
    sw	$zero,6072($zero)
    # Line 1182
    lw	$t9,0($a0)
    # Line 1173
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    # Line 1182
    li	$a1,56
    jalr	$t9
    # Line 1173
    sd	$a0,8($sp)
    # Line 1182
    bnez	$v0,.L0d96745c
    sw	$v0,6068($zero)
    # Line 1308
    ld	$ra,16($sp)
    # Line 1185
    move	$v0,$zero
    # Line 1308
    jr	$ra
    addiu	$sp,$sp,32
.L0d967454:
    jr	$ra
    addiu	$sp,$sp,32
.L0d96745c:
    # Line 1189
    la	$at,__glOdyssey_FastDispatchEnd
    # Line 1210
    # lw $t9, -18728($gp) # &__glOdysseyAtomicTestAndSet
    # Line 1188
    la	$v1,glColor3b
    sw	$v1,4($v0)
    # Line 1189
    lw	$v0,6068($zero)
    # Line 1210
    addiu	$a0,$gp,-13608
    # Line 1189
    subu	$at,$at,$v1
    # Line 1210
    jal	__glOdysseyAtomicTestAndSet
    # Line 1189
    sw	$at,0($v0)
    # Line 1210
    beqz	$v0,.L0d9674f8
    # Line 1213
    ld	$t9,8($sp)
    # Line 1240
    lw	$a0,-13612($gp)
    beqz	$a0,.L0d967554
    # Line 1248
    lw	$a0,-13604($gp)
.L0d967494:
    beqz	$a0,.L0d96753c
.L0d967498:
    # Line 1255
    nop	# was lw $t9, -16996($gp) # &open
    la	$a0,sub_0daf0000
    li	$a1,2
    jal	open
    addiu	$a0,$a0,-31880
    ld	$ra,16($sp)
    bltz	$v0,.L0d96754c
    sd	$v0,0($sp)
    # Line 1258
    lw	$a0,6068($zero)
    # lw $t9, -16992($gp) # &mmap
    ld	$a4,0($sp)
    move	$a5,$zero
    li	$a3,146
    lw	$a1,0($a0)
    li	$a2,7
    jal	mmap
    lw	$a0,4($a0)
    lw	$a1,6068($zero)
    lw	$a1,4($a1)
    beq	$a1,$v0,.L0d967574
    # Line 1308
    ld	$ra,16($sp)
    # Line 1264
    move	$v0,$zero
    # Line 1308
    jr	$ra
    addiu	$sp,$sp,32
.L0d9674f8:
    # Line 1213
    move	$a0,$t9
    lw	$t9,0($t9)
    lw	$a1,6068($zero)
    jalr	$t9
    lw	$a1,0($a1)
    move	$a0,$v0
    beqz	$v0,.L0d967530
    sw	$v0,-13604($gp)
    # Line 1223
    lw	$a1,6068($zero)
    # lw $t9, -17016($gp) # &memcpy
    lw	$a2,0($a1)
    jal	memcpy
    lw	$a1,4($a1)
    lw	$a0,-13604($gp)
.L0d967530:
    # Line 1240
    li	$a2,1
    # Line 1248
    bnez	$a0,.L0d967498
    # Line 1240
    sw	$a2,-13612($gp)
.L0d96753c:
    # Line 1308
    ld	$ra,16($sp)
    # Line 1252
    move	$v0,$zero
    # Line 1308
    jr	$ra
    addiu	$sp,$sp,32
.L0d96754c:
    # Line 1257
    b	.L0d967454
    move	$v0,$zero
.L0d967554:
    # Line 1248
    # lw $t9, -17020($gp) # &sginap
.L0d967558:
    jal	sginap
    move	$a0,$zero
    lw	$a3,-13612($gp)
    beqz	$a3,.L0d967558
    nop	# was lw $t9, -17020($gp) # &sginap
    b	.L0d967494
    lw	$a0,-13604($gp)
.L0d967574:
    # Line 1265
    # lw $t9, -16988($gp) # &close
    jal	close
    ld	$a0,0($sp)
    # Line 1268
    lw	$a0,6068($zero)
    # lw $t9, -17016($gp) # &memcpy
    lw	$a1,-13604($gp)
    lw	$a2,0($a0)
    jal	memcpy
    lw	$a0,4($a0)
    # Line 1271
    lw	$a0,6068($zero)
    li	$v1,-1
    sw	$v1,8($a0)
    # Line 1274
    lw	$v0,6068($zero)
    li	$at,5120
    sw	$at,12($v0)
    # Line 1276
    lw	$t9,6068($zero)
    sw	$zero,16($t9)
    # Line 1277
    lw	$t8,6068($zero)
    sw	$zero,20($t8)
    # Line 1279
    lw	$t3,6068($zero)
    li	$t2,1280
    sw	$t2,24($t3)
    # Line 1281
    lw	$t1,6068($zero)
    sw	$zero,28($t1)
    # Line 1283
    lw	$t0,6068($zero)
    li	$a7,4096
    sw	$a7,32($t0)
    # Line 1285
    lw	$a6,6068($zero)
    sw	$zero,36($a6)
    # Line 1287
    lw	$a5,6068($zero)
    li	$a4,6144
    sw	$a4,40($a5)
    # Line 1289
    lw	$a3,6068($zero)
    sw	$zero,44($a3)
    # Line 1290
    lw	$a2,6068($zero)
    sw	$zero,48($a2)
    # Line 1291
    lw	$a1,6068($zero)
    ld	$ra,16($sp)
    # Line 1308
    li	$v0,1
    b	.L0d967454
    # Line 1291
    sw	$zero,52($a1)
.end InitFastDispatch

# Function: FastDispatchInstall
# Declared: Line 1316 (Source lines: 1317-1460)
# Address: 0x0d967620 - 0x0d9678f4 (Size: 724 bytes, Frame: 192)
.ent FastDispatchInstall
FastDispatchInstall:
    # Line 1317
    lui	$a2,0x2
    addu	$a2,$a0,$a2
    lbu	$at,-25120($a2)
    addiu	$sp,$sp,-64
    lui	$v0,0x19
    sd	$ra,48($sp)
    addiu	$v0,$v0,3952
    sd	$gp,40($sp)
    beqz	$at,.L0d9676b8
    addu	$gp,$t9,$v0
    # Line 1335
    lw	$a3,4988($a0)
    beqz	$a3,.L0d9676c8
    # Line 1342
    li	$a5,-1
.L0d967654:
    sw	$a5,0($sp)
    lw	$a4,6068($zero)
    lw	$a2,8($a4)
    beq	$a2,$a5,.L0d9676bc
    ld	$ra,48($sp)
.L0d967668:
    # Line 1381
    bltz	$a2,.L0d967684
    # Line 1447
    nop	# was lw $t9, -17016($gp) # &memcpy
    lw	$a2,0($a4)
    lw	$a1,-13604($gp)
    jal	memcpy
    lw	$a0,4($a4)
    lw	$a4,6068($zero)
.L0d967684:
    # Line 1450
    sw	$zero,6072($zero)
.L0d967688:
    # Line 1456
    # lw $t9, -16984($gp) # &cacheflush
.L0d96768c:
    lw	$a1,0($a4)
    li	$a2,3
    jal	cacheflush
    lw	$a0,4($a4)
    # Line 1460
    ld	$gp,40($sp)
    ld	$ra,48($sp)
    # Line 1458
    lw	$a7,6068($zero)
    lw	$a6,0($sp)
    # Line 1460
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1458
    sw	$a6,8($a7)
.L0d9676b8:
    ld	$ra,48($sp)
.L0d9676bc:
    # Line 1460
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9676c8:
    # Line 1335
    lui	$t0,0x1
    ori	$t0,$t0,0x6988
    addu	$t0,$t0,$a0
    lw	$t0,0($t0)
    li	$t1,-17
    and	$t0,$t0,$t1
    bnez	$t0,.L0d967654
    # Line 1342
    li	$a5,-1
    # Line 1335
    lw	$t1,4168($zero)
    bnez	$t1,.L0d967654
    # Line 1342
    li	$a5,-1
    # Line 1335
    lw	$t2,4112($zero)
    beqz	$t2,.L0d967654
    # Line 1342
    li	$a5,-1
    # Line 1335
    lw	$a3,-25156($a2)
    li	$t3,3
    beq	$a3,$t3,.L0d967654
    # Line 1342
    li	$a5,-1
    # Line 1338
    sw	$a3,0($sp)
    lw	$a4,6068($zero)
    lw	$a2,8($a4)
    beq	$a2,$a3,.L0d9676bc
    ld	$ra,48($sp)
    bltz	$a3,.L0d967668
    sd	$a0,32($sp)
    # Line 1359
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,27600
    ld	$a0,32($sp)
    bal __glOdysseyFindWindowSize
    addiu	$a1,$sp,0
    lw	$a3,0($sp)
    lw	$a4,6068($zero)
    # Line 1342
    bltz	$a3,.L0d967668
    # Line 1359
    lw	$a2,8($a4)
    # Line 1342
    li	$a6,-1
    beq	$a2,$a6,.L0d9677e0
    # Line 1378
    ld	$a2,32($sp)
.L0d96775c:
    # Line 1399
    li	$a5,1
    beqz	$a3,.L0d967864
    # Line 1398
    lw	$a2,40($a4)
    # Line 1399
    beq	$a3,$a5,.L0d96788c
    # Line 1411
    nop	# was lw $t9, -17016($gp) # &memcpy
    # Line 1399
    li	$ra,2
    beq	$a3,$ra,.L0d9678b0
    la	$a5,glVertex2d
.L0d96777c:
    # Line 1423
    lw	$at,8($a4)
    bne	$at,$a6,.L0d96768c
    # Line 1456
    nop	# was lw $t9, -16984($gp) # &cacheflush
    # Line 1434
    lw	$a0,40($a4)
    # Line 1436
    # lw $t9, -17016($gp) # &memcpy
    # Line 1432
    la	$a6,__glOdyim_indexDispatchTable
    # Line 1423
    ld	$a3,32($sp)
    la	$a1,__glOdyim_colorDispatchTable
    lbu	$a3,3220($a3)
    # Line 1434
    addu	$a0,$a0,$a5
    sd	$a0,24($sp)
    movz	$a1,$a6,$a3
    sd	$a1,16($sp)
    # Line 1436
    li	$a2,128
    jal	memcpy
    lw	$a1,160($a1)
    # Line 1438
    ld	$a0,24($sp)
    # lw $t9, -17016($gp) # &memcpy
    ld	$a1,16($sp)
    li	$a2,128
    lw	$a1,164($a1)
    jal	memcpy
    addiu	$a0,$a0,128
    b	.L0d967688
    lw	$a4,6068($zero)
.L0d9677e0:
    # Line 1377
    lw	$a3,4($a4)
    # Line 1378
    lbu	$a2,3220($a2)
    lw	$a5,12($a4)
    sd	$a5,8($sp)
    beqz	$a2,.L0d9678d8
    sd	$a3,24($sp)
    # Line 1381
    # lw $t9, -17016($gp) # &memcpy
    ld	$a0,24($sp)
    ld	$a2,8($sp)
    jal	memcpy
    lw	$a1,16($a4)
    # Line 1386
    ld	$a0,24($sp)
.L0d967810:
    ld	$a2,8($sp)
    addu	$a0,$a2,$a0
    sd	$a0,24($sp)
    # Line 1387
    lw	$a1,6068($zero)
    # Line 1388
    # lw $t9, -17016($gp) # &memcpy
    # Line 1387
    lw	$a2,24($a1)
    # Line 1388
    lw	$a1,28($a1)
    jal	memcpy
    # Line 1387
    sd	$a2,8($sp)
    # Line 1393
    lw	$a1,6068($zero)
    # Line 1391
    ld	$a2,24($sp)
    ld	$a0,8($sp)
    # Line 1393
    # lw $t9, -17016($gp) # &memcpy
    # Line 1391
    addu	$a0,$a0,$a2
    # Line 1393
    lw	$a2,32($a1)
    jal	memcpy
    lw	$a1,36($a1)
    lw	$a3,0($sp)
    li	$a6,-1
    b	.L0d96775c
    lw	$a4,6068($zero)
.L0d967864:
    # Line 1404
    # lw $t9, -17016($gp) # &memcpy
    la	$a0,glVertex2d
    jal	memcpy
    lw	$a1,44($a4)
    la	$a5,glVertex2d
    li	$a6,-1
    # Line 1406
    lw	$a4,6068($zero)
    li	$a3,1
    b	.L0d96777c
    # Line 1405
    sw	$a3,6072($zero)
.L0d96788c:
    # Line 1411
    la	$a0,glVertex2d
    jalr	$t9
    lw	$a1,52($a4)
    la	$a5,glVertex2d
    li	$a6,-1
    # Line 1413
    lw	$a4,6068($zero)
    li	$a7,1
    b	.L0d96777c
    # Line 1412
    sw	$a7,6072($zero)
.L0d9678b0:
    # Line 1418
    # lw $t9, -17016($gp) # &memcpy
    la	$a0,glVertex2d
    jal	memcpy
    lw	$a1,48($a4)
    la	$a5,glVertex2d
    li	$a6,-1
    # Line 1419
    lw	$a4,6068($zero)
    li	$t0,1
    b	.L0d96777c
    sw	$t0,6072($zero)
.L0d9678d8:
    # Line 1383
    # lw $t9, -17016($gp) # &memcpy
    ld	$a0,24($sp)
    ld	$a2,8($sp)
    jal	memcpy
    lw	$a1,20($a4)
    b	.L0d967810
    # Line 1386
    ld	$a0,24($sp)
.end FastDispatchInstall

# Function: InitFunctionPtrs
# Declared: Line 1467 (Source lines: 1468-1614)
# Address: 0x0d967900 - 0x0d967bb4 (Size: 692 bytes, Frame: 0)
.ent InitFunctionPtrs
InitFunctionPtrs:
    # Line 1613
    la	$at,__glOdysseySoftClipBeginLLoop
    # Line 1477
    # lw $t9, -32388($gp) # &__glOdysseyConvertStipple
    # Line 1479
    la	$t8,__glCopyMatrix
    # Line 1480
    la	$t3,__glInvertTransposeMatrix
    # Line 1481
    la	$t2,__glMakeIdentity
    # Line 1483
    la	$t1,__glMipsMultMatrix
    # Line 1487
    la	$t0,__glComputeInverseTranspose
    # Line 1489
    la	$a7,__glMipsNormalize
    # Line 1496
    la	$a4,__glOdysseyFinish
    sw	$a4,11828($a0)
    # Line 1521
    la	$a4,__glOddTStripVertex
    # Line 1489
    sw	$a7,11960($a0)
    # Line 1510
    la	$a7,__glBeginQuads
    # Line 1487
    sw	$t0,11956($a0)
    # Line 1509
    la	$t0,__glBeginQStrip
    # Line 1483
    sw	$t1,11940($a0)
    # Line 1508
    la	$t1,__glBeginTriangles
    # Line 1481
    sw	$t2,11936($a0)
    # Line 1507
    la	$t2,__glBeginTFan
    # Line 1480
    sw	$t3,11932($a0)
    # Line 1506
    la	$t3,__glBeginTStrip
    # Line 1479
    sw	$t8,11928($a0)
    # Line 1505
    la	$t8,__glBeginPolygon
    # Line 1477
    sw	$t9,12712($a0)
    # Line 1504
    # lw $t9, -25544($gp) # &__glBeginPoints
    sw	$t9,12084($a0)
    # Line 1531
    # lw $t9, -30920($gp) # &__glOdysseyRasterPos4
    # Line 1505
    sw	$t8,12120($a0)
    # Line 1468
    la	$t8,__glNop
    # Line 1506
    sw	$t3,12104($a0)
    # Line 1543
    la	$t3,__glOdysseyPickAllProcs
    # Line 1507
    sw	$t2,12108($a0)
    # Line 1544
    la	$t2,__glGenericPickBlendProcs
    # Line 1508
    sw	$t1,12100($a0)
    # Line 1545
    la	$t1,__glGenericPickBufferProcs
    # Line 1509
    sw	$t0,12116($a0)
    # Line 1546
    la	$t0,__glGenericPickClipProcs
    # Line 1510
    sw	$a7,12112($a0)
    # Line 1547
    la	$a7,__glGenericPickColorMaterialProcs
    # Line 1521
    sw	$a4,12024($a0)
    # Line 1550
    la	$a4,__glGenericPickLineProcs
    sw	$a4,11868($a0)
    # Line 1576
    la	$a4,__glGenericPickReadImage
    # Line 1547
    sw	$a7,11848($a0)
    # Line 1566
    la	$a7,__glGenericPickVertexProcs
    # Line 1546
    sw	$t0,11884($a0)
    # Line 1561
    la	$t0,__glGenericPickTriangleProcs
    # Line 1545
    sw	$t1,11892($a0)
    # Line 1560
    la	$t1,__glOdysseyPickTextureProcs
    # Line 1544
    sw	$t2,11844($a0)
    # Line 1559
    la	$t2,__glGenericPickStoreProcs
    # Line 1543
    sw	$t3,11924($a0)
    # Line 1558
    la	$t3,__glGenericPickSpanProcs
    # Line 1516
    sw	$t8,12004($a0)
    # Line 1536
    sw	$t8,12076($a0)
    # Line 1557
    la	$t8,__glOdysseyPickRenderBitmapProcs
    # Line 1531
    sw	$t9,12680($a0)
    # Line 1556
    # lw $t9, -25632($gp) # &__glGenericPickPointProcs
    sw	$t9,11864($a0)
    # Line 1589
    # lw $t9, -28292($gp) # &__glSpanReadRGBA2
    # Line 1557
    sw	$t8,11876($a0)
    # Line 1590
    la	$t8,__glSpanReadDepth
    # Line 1558
    sw	$t3,11900($a0)
    # Line 1591
    la	$t3,__glSpanReadDepth2
    # Line 1559
    sw	$t2,11896($a0)
    # Line 1592
    la	$t2,__glSpanReadStencil
    # Line 1560
    sw	$t1,11852($a0)
    # Line 1593
    la	$t1,__glSpanReadStencil2
    # Line 1561
    sw	$t0,11872($a0)
    # Line 1595
    la	$t0,__glSpanRenderCI
    # Line 1566
    sw	$a7,11904($a0)
    # Line 1596
    la	$a7,__glSpanRenderCI2
    # Line 1576
    sw	$a4,12632($a0)
    # Line 1599
    la	$a4,__glSpanRenderDepth
    sw	$a4,12512($a0)
    # Line 1596
    sw	$a7,12500($a0)
    # Line 1595
    sw	$t0,12496($a0)
    # Line 1593
    sw	$t1,12492($a0)
    # Line 1592
    sw	$t2,12488($a0)
    # Line 1591
    sw	$t3,12484($a0)
    # Line 1590
    sw	$t8,12480($a0)
    # Line 1589
    sw	$t9,12476($a0)
    # Line 1493
    la	$a6,sub_0d960000
    # Line 1494
    la	$a5,sub_0d960000
    # Line 1472
    la	$a2,__glDoEvalCoord2
    # Line 1471
    la	$a3,__glDoEvalCoord1
    sw	$a3,12044($a0)
    # Line 1497
    la	$a3,__glOdysseyFlush
    # Line 1472
    sw	$a2,12048($a0)
    # Line 1499
    la	$a2,__glComputeClipBox
    sw	$a2,11972($a0)
    # Line 1525
    la	$a2,__glSecondLinesVertex
    # Line 1497
    sw	$a3,11824($a0)
    # Line 1522
    la	$a3,__glFirstLinesVertex
    # Line 1494
    addiu	$a5,$a5,23216
    sw	$a5,11968($a0)
    # Line 1520
    la	$a5,__glEvenTStripVertex
    # Line 1493
    addiu	$a6,$a6,24288
    sw	$a6,11964($a0)
    # Line 1511
    la	$a6,__glEndPrim
    sw	$a6,12124($a0)
    # Line 1548
    la	$a6,__glGenericPickFogProcs
    # Line 1520
    sw	$a5,12028($a0)
    # Line 1549
    la	$a5,__glGenericPickTransformProcs
    # Line 1522
    sw	$a3,12016($a0)
    # Line 1551
    la	$a3,__glGenericPickMatrixProcs
    # Line 1525
    sw	$a2,12020($a0)
    # Line 1552
    la	$a2,__glGenericPickInvTransposeProcs
    sw	$a2,11912($a0)
    # Line 1583
    la	$a2,__glColorSubTable
    # Line 1551
    sw	$a3,11908($a0)
    # Line 1582
    la	$a3,__glColorTableSGI
    # Line 1549
    sw	$a5,11860($a0)
    # Line 1575
    la	$a5,__glGenericPickCopyImage
    # Line 1548
    sw	$a6,11856($a0)
    # Line 1567
    la	$a6,__glGenericPickDepthProcs
    sw	$a6,11920($a0)
    # Line 1597
    la	$a6,__glSpanRenderRGBA
    # Line 1575
    sw	$a5,12628($a0)
    # Line 1598
    la	$a5,__glSpanRenderRGBA2
    # Line 1582
    sw	$a3,12720($a0)
    # Line 1600
    la	$a3,__glSpanRenderDepth2
    # Line 1583
    sw	$a2,12724($a0)
    # Line 1601
    la	$a2,__glSpanRenderStencil
    sw	$a2,12520($a0)
    # Line 1600
    sw	$a3,12516($a0)
    # Line 1598
    sw	$a5,12508($a0)
    # Line 1597
    sw	$a6,12504($a0)
    # Line 1474
    la	$a1,__glOdysseyRect
    sw	$a1,12156($a0)
    # Line 1501
    la	$a1,__glBeginLLoop
    sw	$a1,12092($a0)
    # Line 1527
    la	$a1,__gl_varray_funcs
    sw	$a1,12716($a0)
    # Line 1553
    la	$a1,__glGenericPickMvpMatrixProcs
    sw	$a1,11916($a0)
    # Line 1586
    la	$a1,__glSpanReadCI
    sw	$a1,12464($a0)
    # Line 1602
    la	$a1,__glSpanRenderStencil2
    sw	$a1,12524($a0)
    # Line 1605
    la	$a1,__glOdysseySwapBuffers
    # Line 1476
    la	$v0,__glOdysseyValidate
    sw	$v0,11840($a0)
    # Line 1503
    la	$v0,__glBeginLines
    sw	$v0,12088($a0)
    # Line 1530
    la	$v0,__glOdysseyRasterPos3
    sw	$v0,12676($a0)
    # Line 1555
    la	$v0,__glOdysseyPickPixelProcs
    sw	$v0,11880($a0)
    # Line 1588
    la	$v0,__glSpanReadRGBA
    # Line 1475
    la	$v1,__glClipPolygon
    sw	$v1,12148($a0)
    # Line 1502
    la	$v1,__glBeginLStrip
    sw	$v1,12096($a0)
    # Line 1529
    la	$v1,__glOdysseyRasterPos2
    sw	$v1,12672($a0)
    # Line 1554
    la	$v1,__glGenericPickParameterClipProcs
    sw	$v1,11888($a0)
    # Line 1587
    la	$v1,__glSpanReadCI2
    sw	$v1,12468($a0)
    # Line 1604
    la	$v1,sub_0d960000
    # Line 1588
    sw	$v0,12472($a0)
    # Line 1604
    addiu	$v1,$v1,23984
    sw	$v1,88($a0)
    # Line 1613
    lui	$v0,0x1
    # Line 1611
    la	$v1,sub_0d960000
    # Line 1605
    sw	$a1,124($a0)
    # Line 1613
    ori	$v0,$v0,0x9ea0
    addu	$v0,$v0,$a0
    # Line 1611
    addiu	$v1,$v1,30240
    sw	$v1,11836($a0)
    # Line 1614
    jr	$ra
    # Line 1613
    sw	$at,0($v0)
.end InitFunctionPtrs

# Function: InitBuffers
# Declared: Line 1620 (Source lines: 1621-1708)
# Address: 0x0d967bc0 - 0x0d967da0 (Size: 480 bytes, Frame: 32)
.ent InitBuffers
InitBuffers:
    # Line 1628
    lbu	$at,3222($a0)
    # Line 1627
    addiu	$a3,$a0,30720
    # Line 1628
    sw	$a3,11820($a0)
    # Line 1627
    sw	$a3,30712($a0)
    # Line 1621
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 1628
    beqz	$at,.L0d967d28
    # Line 1621
    move	$s0,$a0
    # Line 1631
    addiu	$v1,$a0,30940
    # Line 1632
    lbu	$v0,3221($a0)
    sw	$v1,11816($a0)
    # Line 1631
    sw	$v1,30716($a0)
    # Line 1632
    beqz	$v0,.L0d967d50
    sd	$ra,8($sp)
    # Line 1635
    # lw $t9, -32176($gp) # &__glOdysseyInitCI
    move	$a0,$a3
    bal __glOdysseyInitCI
    move	$a1,$s0
    # Line 1636
    # lw $t9, -32176($gp) # &__glOdysseyInitCI
    move	$a1,$s0
    bal __glOdysseyInitCI
    lw	$a0,30716($s0)
    # Line 1656
    lw	$a0,3296($s0)
.L0d967c1c:
    blez	$a0,.L0d967c9c
    nop
    sd	$s2,16($sp)
    sll	$s2,$a0,0x3
    subu	$s2,$s2,$a0
    sd	$s1,24($sp)
    move	$s1,$zero
    sll	$s2,$s2,0x3
    subu	$s2,$s2,$a0
    b	.L0d967c70
    sll	$s2,$s2,0x2
    nop
    nop
.L0d967c50:
    # Line 1662
    # lw $t9, -32176($gp) # &__glOdysseyInitCI
    bal __glOdysseyInitCI
    move	$a1,$s0
    # Line 1660
    addiu	$s1,$s1,220
.L0d967c60:
    beq	$s1,$s2,.L0d967c94
    nop
    nop
    nop
.L0d967c70:
    # Line 1656
    lbu	$a1,3221($s0)
    lw	$a0,31160($s0)
    bnez	$a1,.L0d967c50
    addu	$a0,$a0,$s1
    # Line 1664
    # lw $t9, -30916($gp) # &__glOdysseyInitRGB
    jal	__glOdysseyInitRGB
    move	$a1,$s0
    b	.L0d967c60
    # Line 1660
    addiu	$s1,$s1,220
.L0d967c94:
    ld	$s2,16($sp)
    ld	$s1,24($sp)
.L0d967c9c:
    # Line 1669
    lbu	$a3,3224($s0)
    li	$a4,-1
    sw	$a4,4852($s0)
    # Line 1668
    li	$a2,1
    # Line 1669
    beqz	$a3,.L0d967ccc
    # Line 1668
    sb	$a2,4848($s0)
    # Line 1675
    # lw $t9, -32524($gp) # &__glOdysseyInitAccum
    move	$a1,$s0
    jal	__glOdysseyInitAccum
    addiu	$a0,$s0,31416
    beqz	$v0,.L0d967d78
    ld	$ra,8($sp)
.L0d967ccc:
    lbu	$a5,3225($s0)
    beqz	$a5,.L0d967ce4
    # Line 1679
    nop	# was lw $t9, -26664($gp) # &__glInitDepth
    move	$a1,$s0
    jal	__glInitDepth
    addiu	$a0,$s0,31284
.L0d967ce4:
    # Line 1680
    lbu	$a7,3226($s0)
    lui	$a6,0x1fff
    ori	$a6,$a6,0xf800
    beqz	$a7,.L0d967d08
    sw	$a6,31360($s0)
    # Line 1688
    # lw $t9, -24984($gp) # &__glInitStencil8
    move	$a1,$s0
    jal	__glInitStencil8
    addiu	$a0,$s0,31164
.L0d967d08:
    # Line 1706
    # lw $t9, -23816($gp) # &__glUpdateDepthRange
    jal	__glUpdateDepthRange
    move	$a0,$s0
    ld	$ra,8($sp)
    # Line 1708
    li	$v0,1
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d967d28:
    # Line 1642
    lbu	$a7,3221($a0)
    sw	$a3,11816($a0)
    beqz	$a7,.L0d967d88
    sd	$ra,8($sp)
    # Line 1645
    # lw $t9, -32176($gp) # &__glOdysseyInitCI
    move	$a0,$a3
    bal __glOdysseyInitCI
    move	$a1,$s0
    b	.L0d967c1c
    # Line 1656
    lw	$a0,3296($s0)
.L0d967d50:
    # Line 1638
    # lw $t9, -30916($gp) # &__glOdysseyInitRGB
    move	$a0,$a3
    jal	__glOdysseyInitRGB
    move	$a1,$s0
    # Line 1639
    # lw $t9, -30916($gp) # &__glOdysseyInitRGB
    move	$a1,$s0
    jal	__glOdysseyInitRGB
    lw	$a0,30716($s0)
    b	.L0d967c1c
    # Line 1656
    lw	$a0,3296($s0)
.L0d967d78:
    # Line 1675
    move	$v0,$zero
    # Line 1708
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d967d88:
    # Line 1647
    # lw $t9, -30916($gp) # &__glOdysseyInitRGB
    move	$a0,$a3
    jal	__glOdysseyInitRGB
    move	$a1,$s0
    b	.L0d967c1c
    # Line 1656
    lw	$a0,3296($s0)
.end InitBuffers

# Function: __glOdysseyValidate
# Declared: Line 1716 (Source lines: 1716-1751)
# Address: 0x0d967da0 - 0x0d967e38 (Size: 152 bytes, Frame: 32)
.globl __glOdysseyValidate
.ent __glOdysseyValidate
__glOdysseyValidate:
    # Line 1716
    addiu	$sp,$sp,-32
    lui	$at,0x1
    addu	$at,$a0,$at
    sd	$at,8($sp)
    lw	$at,26980($at)
    sd	$s0,0($sp)
    lui	$v0,0x19
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,2032
    sd	$gp,16($sp)
    beqz	$at,.L0d967de0
    addu	$gp,$t9,$v0
    # Line 1724
    # lw $t9, -32140($gp) # &__glOdysseyValidateContext
    bal __glOdysseyValidateContext
    nop
.L0d967de0:
    lw	$v0,11812($s0)
    beqz	$v0,.L0d967dfc
    # Line 1736
    ld	$v1,8($sp)
    lw	$t9,11924($s0)
    jal	__glOdysseyValidateContext
    move	$a0,$s0
    ld	$v1,8($sp)
.L0d967dfc:
    lw	$v1,26976($v1)
    beqz	$v1,.L0d967e10
    # Line 1742
    nop	# was lw $t9, -32148($gp) # &__glOdysseyValidateHardware
    bal __glOdysseyValidateHardware
    move	$a0,$s0
.L0d967e10:
    ld	$s0,0($sp)
    # Line 1750
    ld	$a0,8($sp)
    # Line 1751
    ld	$gp,16($sp)
    # Line 1750
    sb	$zero,26999($a0)
    ld	$ra,24($sp)
    # Line 1749
    sb	$zero,26998($a0)
    # Line 1748
    sb	$zero,26997($a0)
    # Line 1751
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1747
    sb	$zero,26996($a0)
.end __glOdysseyValidate

# Function: __glOdysseyValidateClipPlanes
# Declared: Line 1754 (Source lines: 1755-1831)
# Address: 0x0d967e40 - 0x0d968180 (Size: 832 bytes, Frame: 32)
.globl __glOdysseyValidateClipPlanes
.ent __glOdysseyValidateClipPlanes
__glOdysseyValidateClipPlanes:
    # Line 1761
    li	$t3,13
    move	$a4,$zero
    li	$a5,288
    move	$a3,$zero
    move	$a2,$zero
    lui	$t0,0x3100
    lui	$t1,0x9080
    # Line 1755
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 1761
    ori	$t1,$t1,0x91bb
    ori	$t0,$t0,0x8000
    # Line 1763
    addiu	$a2,$a2,16
    # Line 1755
    lui	$v0,0x19
    # Line 1761
    lw	$at,1804($a0)
    li	$t2,1
    sd	$ra,24($sp)
    lui	$a7,0x1
    sllv	$v1,$t2,$zero
    # Line 1755
    sd	$s1,8($sp)
    # Line 1761
    addu	$s1,$a7,$a0
    and	$at,$at,$v1
    sd	$gp,0($sp)
    # Line 1755
    addiu	$v0,$v0,1872
    # Line 1761
    move	$a6,$s1
    lw	$t8,-24040($s1)
    beqz	$at,.L0d967f34
    # Line 1755
    addu	$gp,$t9,$v0
    # Line 1767
    lw	$a0,1748($a0)
    lwc1	$f7,0($a0)
    swc1	$f7,-25420($s1)
    # Line 1768
    lw	$v1,1748($s0)
    lwc1	$f6,4($v1)
    swc1	$f6,-25416($s1)
    # Line 1769
    lw	$v0,1748($s0)
    lwc1	$f5,8($v0)
    swc1	$f5,-25412($s1)
    # Line 1770
    lw	$at,1748($s0)
    lwc1	$f4,12($at)
    # Line 1776
    sw	$a5,-24040($s1)
    # Line 1784
    lw	$t9,-24040($s1)
    lw	$ra,-24040($s1)
    srl	$ra,$ra,0xa
    andi	$t9,$t9,0x3ff
    sll	$ra,$ra,0x17
    # Line 1770
    swc1	$f4,-25408($s1)
    # Line 1784
    or	$t9,$t9,$ra
    or	$t9,$t0,$t9
    sw	$t9,0($a7)
    # Line 1786
    sw	$t1,0($a7)
    # Line 1787
    lwc1	$f3,-25420($s1)
    swc1	$f3,0($a7)
    # Line 1788
    lwc1	$f2,-25416($s1)
    swc1	$f2,0($a7)
    # Line 1789
    lwc1	$f1,-25412($s1)
    swc1	$f1,0($a7)
    # Line 1790
    lwc1	$f0,-25408($s1)
    # Line 1792
    addiu	$a6,$s1,16
    move	$a4,$t2
    li	$a5,0x124
    # Line 1790
    swc1	$f0,0($a7)
.L0d967f34:
    # Line 1763
    addiu	$a3,$a3,1
    nop
    nop
.L0d967f40:
    # Line 1761
    lw	$a1,1804($s0)
    sllv	$t9,$t2,$a3
    and	$a1,$a1,$t9
    beqz	$a1,.L0d967fe8
    nop
    # Line 1767
    lw	$a1,1748($s0)
    addu	$a1,$a1,$a2
    lwc1	$f15,0($a1)
    swc1	$f15,-25420($a6)
    # Line 1768
    lw	$a0,1748($s0)
    addu	$a0,$a0,$a2
    lwc1	$f14,4($a0)
    swc1	$f14,-25416($a6)
    # Line 1769
    lw	$v1,1748($s0)
    addu	$v1,$v1,$a2
    lwc1	$f13,8($v1)
    swc1	$f13,-25412($a6)
    # Line 1770
    lw	$v0,1748($s0)
    addu	$v0,$v0,$a2
    lwc1	$f12,12($v0)
    swc1	$f12,-25408($a6)
    # Line 1776
    sw	$a5,-24040($s1)
    # Line 1784
    lw	$ra,-24040($s1)
    lw	$at,-24040($s1)
    srl	$at,$at,0xa
    andi	$ra,$ra,0x3ff
    sll	$at,$at,0x17
    or	$ra,$ra,$at
    or	$ra,$t0,$ra
    sw	$ra,0($a7)
    # Line 1786
    sw	$t1,0($a7)
    # Line 1787
    lwc1	$f11,-25420($a6)
    swc1	$f11,0($a7)
    # Line 1788
    lwc1	$f10,-25416($a6)
    swc1	$f10,0($a7)
    # Line 1789
    lwc1	$f9,-25412($a6)
    swc1	$f9,0($a7)
    # Line 1790
    lwc1	$f8,-25408($a6)
    # Line 1792
    addiu	$a6,$a6,16
    addiu	$a4,$a4,1
    addiu	$a5,$a5,4
    # Line 1790
    swc1	$f8,0($a7)
.L0d967fe8:
    # Line 1763
    addiu	$a3,$a3,1
    # Line 1761
    lw	$t9,1804($s0)
    sllv	$ra,$t2,$a3
    and	$t9,$t9,$ra
    # Line 1763
    addiu	$a3,$a3,1
    # Line 1761
    beqz	$t9,.L0d968098
    # Line 1763
    addiu	$a2,$a2,16
    # Line 1767
    lw	$t9,1748($s0)
    addu	$t9,$t9,$a2
    lwc1	$f27,0($t9)
    swc1	$f27,-25420($a6)
    # Line 1768
    lw	$a1,1748($s0)
    addu	$a1,$a1,$a2
    lwc1	$f25,4($a1)
    swc1	$f25,-25416($a6)
    # Line 1769
    lw	$a0,1748($s0)
    addu	$a0,$a0,$a2
    lwc1	$f23,8($a0)
    swc1	$f23,-25412($a6)
    # Line 1770
    lw	$v1,1748($s0)
    addu	$v1,$v1,$a2
    lwc1	$f21,12($v1)
    swc1	$f21,-25408($a6)
    # Line 1776
    sw	$a5,-24040($s1)
    # Line 1784
    lw	$at,-24040($s1)
    lw	$v0,-24040($s1)
    srl	$v0,$v0,0xa
    andi	$at,$at,0x3ff
    sll	$v0,$v0,0x17
    or	$at,$at,$v0
    or	$at,$t0,$at
    sw	$at,0($a7)
    # Line 1786
    sw	$t1,0($a7)
    # Line 1787
    lwc1	$f19,-25420($a6)
    swc1	$f19,0($a7)
    # Line 1788
    lwc1	$f18,-25416($a6)
    swc1	$f18,0($a7)
    # Line 1789
    lwc1	$f17,-25412($a6)
    swc1	$f17,0($a7)
    # Line 1790
    lwc1	$f16,-25408($a6)
    # Line 1792
    addiu	$a6,$a6,16
    addiu	$a4,$a4,1
    addiu	$a5,$a5,4
    # Line 1790
    swc1	$f16,0($a7)
.L0d968098:
    # Line 1763
    bne	$a3,$t3,.L0d967f40
    addiu	$a2,$a2,16
    beqz	$a4,.L0d9680d0
    # Line 1813
    nop	# was lw $t9, -29716($gp) # &__glOdysseyGetNumSWClipPlanes
    # Line 1795
    sw	$t8,-24040($s1)
    # Line 1804
    lw	$ra,-24040($s1)
    lw	$at,-24040($s1)
    srl	$at,$at,0xa
    andi	$ra,$ra,0x3ff
    sll	$at,$at,0x17
    or	$ra,$ra,$at
    or	$ra,$t0,$ra
    sw	$ra,0($a7)
    # Line 1813
    # lw $t9, -29716($gp) # &__glOdysseyGetNumSWClipPlanes
.L0d9680d0:
    jal	__glOdysseyGetNumSWClipPlanes
    move	$a0,$s0
    beqz	$v0,.L0d968170
    lw	$a0,27016($s1)
    # Line 1816
    ori	$v0,$a0,0x4
    sw	$v0,27016($s1)
.L0d9680e8:
    # Line 1824
    # lw $t9, -29720($gp) # &__glOdysseyGetNumHWClipPlanes
    jal	__glOdysseyGetNumHWClipPlanes
    move	$a0,$s0
    # Line 1827
    li	$a2,1
    # Line 1828
    li	$a1,2
    # Line 1827
    sltu	$a2,$a2,$v0
    sll	$a2,$a2,0x1
    # Line 1826
    lw	$a5,31744($s0)
    sltu	$a3,$zero,$v0
    li	$a4,-5
    sll	$a3,$a3,0x2
    and	$a4,$a4,$a5
    andi	$a3,$a3,0x4
    or	$a3,$a3,$a4
    # Line 1827
    li	$a4,-3
    andi	$a2,$a2,0x2
    and	$a3,$a3,$a4
    # Line 1831
    ld	$gp,0($sp)
    # Line 1827
    or	$a2,$a2,$a3
    # Line 1828
    li	$a3,-2
    ld	$ra,24($sp)
    sltu	$a1,$a1,$v0
    and	$a2,$a2,$a3
    or	$a1,$a1,$a2
    sw	$a1,31744($s0)
    # Line 1830
    lw	$a0,26976($s1)
    # Line 1831
    ld	$s0,16($sp)
    # Line 1830
    ori	$a0,$a0,0x4
    sw	$a0,26976($s1)
    li	$v1,2
    sw	$v1,4120($zero)
    # Line 1831
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d968170:
    # Line 1818
    li	$a3,-5
    and	$a3,$a3,$a0
    b	.L0d9680e8
    sw	$a3,27016($s1)
.end __glOdysseyValidateClipPlanes

# Function: __glOdysseyValidateHardware
# Declared: Line 1838 (Source lines: 1840-2014)
# Address: 0x0d968180 - 0x0d969500 (Size: 4992 bytes, Frame: 0)
.globl __glOdysseyValidateHardware
.ent __glOdysseyValidateHardware
__glOdysseyValidateHardware:
    # Line 1840
    lui	$a2,0x1
    addu	$a7,$a2,$a0
    lw	$at,-26576($a7)
    beqz	$at,.L0d9681b4
    lw	$t1,26976($a7)
    # Line 1847
    sw	$zero,-26576($a7)
    ori	$a1,$a2,0x443
    sw	$a1,0($a2)
    li	$v1,250
    sw	$v1,0($a2)
    ori	$v0,$a2,0x46
    sw	$v0,0($a2)
    sw	$v0,0($a2)
.L0d9681b4:
    andi	$a3,$t1,0x2
    beqz	$a3,.L0d968204
    # Line 1852
    andi	$t8,$t1,0x4
    # Line 1847
    lw	$a4,-26576($a7)
    beqz	$a4,.L0d9681ec
    # Line 1852
    lui	$a5,0x1
    sw	$zero,-26576($a7)
    ori	$t0,$a5,0x443
    sw	$t0,0($a2)
    li	$a6,250
    sw	$a6,0($a2)
    ori	$a5,$a5,0x46
    sw	$a5,0($a2)
    sw	$a5,0($a2)
.L0d9681ec:
    lui	$t3,0x1
    ori	$t3,$t3,0x404
    sw	$t3,0($a2)
    lw	$t2,31740($a0)
    sw	$t2,0($a2)
    andi	$t8,$t1,0x4
.L0d968204:
    beqz	$t8,.L0d968250
    # Line 1855
    lui	$a4,0x20
    # Line 1852
    lw	$t9,-26576($a7)
    beqz	$t9,.L0d968238
    # Line 1855
    lui	$at,0x1
    sw	$zero,-26576($a7)
    ori	$v1,$at,0x443
    sw	$v1,0($a2)
    li	$v0,250
    sw	$v0,0($a2)
    ori	$at,$at,0x46
    sw	$at,0($a2)
    sw	$at,0($a2)
.L0d968238:
    lui	$a3,0x1
    ori	$a3,$a3,0x405
    sw	$a3,0($a2)
    lw	$a1,31744($a0)
    sw	$a1,0($a2)
    lui	$a4,0x20
.L0d968250:
    ori	$a4,$a4,0x6309
    and	$a4,$t1,$a4
    beqz	$a4,.L0d9685d4
    # Line 1883
    lui	$a6,0x1f
    # Line 1855
    dsll32	$a5,$t1,0xa
    bgez	$a5,.L0d968338
    # Line 1865
    andi	$a4,$t1,0x200
    lui	$a3,0x1
    ori	$t3,$a3,0x443
    sw	$t3,0($a2)
    li	$t0,250
    sw	$t0,0($a2)
    ori	$t2,$a3,0x46
    sw	$t2,0($a2)
    sw	$t2,0($a2)
    ori	$t8,$a3,0x19
    sw	$t8,0($a2)
    sw	$t3,0($a2)
    li	$a4,150
    sw	$a4,0($a2)
    sw	$t2,0($a2)
    sw	$t2,0($a2)
    sw	$t2,0($a2)
    sw	$t2,0($a2)
    sw	$zero,-26576($a7)
    sw	$t3,0($a2)
    sw	$t0,0($a2)
    sw	$t2,0($a2)
    sw	$t2,0($a2)
    lw	$a6,-26972($a7)
    sll	$a6,$a6,0x4
    bltz	$a6,.L0d9692cc
    lui	$t9,0x9000
    ori	$t9,$t9,0x8116
    sw	$t9,0($a2)
.L0d9682dc:
    lui	$a3,0x1
    ori	$a3,$a3,0x1017
    sw	$a3,0($a2)
    lw	$a1,-26980($a7)
    sw	$a1,0($a2)
    lw	$v1,-26976($a7)
    sw	$v1,0($a2)
    lw	$v0,-26972($a7)
    sw	$v0,0($a2)
    lw	$at,-26968($a7)
    sw	$at,0($a2)
    sw	$t3,0($a2)
    sw	$a4,0($a2)
    sw	$t2,0($a2)
    sw	$t2,0($a2)
    sw	$t2,0($a2)
    sw	$t2,0($a2)
    sw	$zero,-26576($a7)
    sw	$t3,0($a2)
    sw	$t0,0($a2)
    sw	$t2,0($a2)
    sw	$t2,0($a2)
    andi	$a4,$t1,0x200
.L0d968338:
    beqz	$a4,.L0d9683b8
    # Line 1868
    andi	$a4,$t1,0x1
    # Line 1865
    lw	$a5,-26576($a7)
    beqz	$a5,.L0d968374
    # Line 1868
    lui	$a3,0x1
    lui	$a6,0x1
    sw	$zero,-26576($a7)
    ori	$t2,$a6,0x443
    sw	$t2,0($a2)
    li	$t0,250
    sw	$t0,0($a2)
    ori	$a6,$a6,0x46
    sw	$a6,0($a2)
    sw	$a6,0($a2)
    lui	$a3,0x1
.L0d968374:
    ori	$a3,$a3,0x1c16
    sw	$a3,0($a2)
    lw	$a1,31940($a0)
    sw	$a1,0($a2)
    lw	$v1,31944($a0)
    sw	$v1,0($a2)
    lw	$v0,31948($a0)
    sw	$v0,0($a2)
    lw	$at,31952($a0)
    sw	$at,0($a2)
    lw	$t9,31956($a0)
    sw	$t9,0($a2)
    lw	$t8,31960($a0)
    sw	$t8,0($a2)
    lw	$t3,31964($a0)
    sw	$t3,0($a2)
    andi	$a4,$t1,0x1
.L0d9683b8:
    beqz	$a4,.L0d968414
    # Line 1871
    andi	$v0,$t1,0x8
    # Line 1868
    lw	$a5,-26576($a7)
    beqz	$a5,.L0d9683ec
    # Line 1871
    lui	$a6,0x1
    sw	$zero,-26576($a7)
    ori	$t2,$a6,0x443
    sw	$t2,0($a2)
    li	$t0,250
    sw	$t0,0($a2)
    ori	$a6,$a6,0x46
    sw	$a6,0($a2)
    sw	$a6,0($a2)
.L0d9683ec:
    lui	$at,0x1
    ori	$at,$at,0xc21
    sw	$at,0($a2)
    lw	$t9,31796($a0)
    sw	$t9,0($a2)
    lw	$t8,31800($a0)
    sw	$t8,0($a2)
    lw	$t3,31804($a0)
    sw	$t3,0($a2)
    andi	$v0,$t1,0x8
.L0d968414:
    beqz	$v0,.L0d968488
    # Line 1874
    andi	$at,$t1,0x100
    # Line 1871
    lw	$v1,-26576($a7)
    beqz	$v1,.L0d968448
    # Line 1874
    lui	$a1,0x1
    sw	$zero,-26576($a7)
    ori	$a4,$a1,0x443
    sw	$a4,0($a2)
    li	$a3,250
    sw	$a3,0($a2)
    ori	$a1,$a1,0x46
    sw	$a1,0($a2)
    sw	$a1,0($a2)
.L0d968448:
    lui	$t9,0x1
    ori	$t9,$t9,0x181a
    sw	$t9,0($a2)
    lw	$t8,31752($a0)
    sw	$t8,0($a2)
    lw	$t3,31756($a0)
    sw	$t3,0($a2)
    lw	$t2,31760($a0)
    sw	$t2,0($a2)
    lw	$t0,31764($a0)
    sw	$t0,0($a2)
    lw	$a6,31768($a0)
    sw	$a6,0($a2)
    lw	$a5,31772($a0)
    sw	$a5,0($a2)
    andi	$at,$t1,0x100
.L0d968488:
    beqz	$at,.L0d9684f4
    # Line 1877
    andi	$t8,$t1,0x2000
    # Line 1874
    lw	$v0,-26576($a7)
    beqz	$v0,.L0d9684bc
    # Line 1877
    lui	$v1,0x1
    sw	$zero,-26576($a7)
    ori	$a3,$v1,0x443
    sw	$a3,0($a2)
    li	$a1,250
    sw	$a1,0($a2)
    ori	$v1,$v1,0x46
    sw	$v1,0($a2)
    sw	$v1,0($a2)
.L0d9684bc:
    lui	$t3,0x1
    ori	$t3,$t3,0x141b
    sw	$t3,0($a2)
    lw	$t2,31920($a0)
    sw	$t2,0($a2)
    lw	$t0,31924($a0)
    sw	$t0,0($a2)
    lw	$a6,31928($a0)
    sw	$a6,0($a2)
    lw	$a5,31932($a0)
    sw	$a5,0($a2)
    lw	$a4,31936($a0)
    sw	$a4,0($a2)
    andi	$t8,$t1,0x2000
.L0d9684f4:
    beqz	$t8,.L0d96856c
    # Line 1880
    andi	$t3,$t1,0x4000
    # Line 1877
    lw	$t9,-26576($a7)
    beqz	$t9,.L0d968530
    # Line 1880
    lui	$t2,0x1
    lui	$at,0x1
    sw	$zero,-26576($a7)
    ori	$v1,$at,0x443
    sw	$v1,0($a2)
    li	$v0,250
    sw	$v0,0($a2)
    ori	$at,$at,0x46
    sw	$at,0($a2)
    sw	$at,0($a2)
    lui	$t2,0x1
.L0d968530:
    ori	$t2,$t2,0x1847
    sw	$t2,0($a2)
    lw	$t0,-26868($a7)
    sw	$t0,0($a2)
    lw	$a6,-26864($a7)
    sw	$a6,0($a2)
    lw	$a5,-26860($a7)
    sw	$a5,0($a2)
    lw	$a4,-26856($a7)
    sw	$a4,0($a2)
    lw	$a3,-26852($a7)
    sw	$a3,0($a2)
    lw	$a1,-26848($a7)
    sw	$a1,0($a2)
    andi	$t3,$t1,0x4000
.L0d96856c:
    beqz	$t3,.L0d9685d4
    # Line 1883
    lui	$a6,0x1f
    # Line 1880
    lw	$t8,-26576($a7)
    beqz	$t8,.L0d9685a8
    # Line 1883
    lui	$a5,0x1
    lui	$t9,0x1
    sw	$zero,-26576($a7)
    ori	$v0,$t9,0x443
    sw	$v0,0($a2)
    li	$at,250
    sw	$at,0($a2)
    ori	$t9,$t9,0x46
    sw	$t9,0($a2)
    sw	$t9,0($a2)
    lui	$a5,0x1
.L0d9685a8:
    ori	$a5,$a5,0x1013
    sw	$a5,0($a2)
    lw	$a4,-26844($a7)
    sw	$a4,0($a2)
    lw	$a3,-26840($a7)
    sw	$a3,0($a2)
    lw	$a1,-26836($a7)
    sw	$a1,0($a2)
    lw	$v1,-26832($a7)
    sw	$v1,0($a2)
    lui	$a6,0x1f
.L0d9685d4:
    ori	$a6,$a6,0x8000
    and	$a6,$t1,$a6
    beqz	$a6,.L0d96886c
    dsll32	$t0,$t1,0xd
    bgez	$t0,.L0d968684
    # Line 1898
    dsll32	$at,$t1,0xc
    # Line 1883
    lw	$t2,-26576($a7)
    beqz	$t2,.L0d968618
    # Line 1898
    lui	$t3,0x1
    sw	$zero,-26576($a7)
    ori	$t9,$t3,0x443
    sw	$t9,0($a2)
    li	$t8,250
    sw	$t8,0($a2)
    ori	$t3,$t3,0x46
    sw	$t3,0($a2)
    sw	$t3,0($a2)
.L0d968618:
    move	$a4,$zero
    move	$t0,$zero
    lui	$t2,0x1
    li	$a3,16
    ori	$t2,$t2,0x3e20
    sll	$a6,$a4,0x2
    move	$a5,$zero
    nop
    nop
    nop
.L0d968640:
    or	$t3,$t0,$t2
    sw	$t3,0($a2)
    addu	$a6,$a0,$a6
    nop
.L0d968650:
    lw	$t9,32740($a6)
    addiu	$a6,$a6,8
    addiu	$a5,$a5,2
    sw	$t9,0($a2)
    lw	$t8,32736($a6)
    addiu	$a4,$a4,2
    bne	$a5,$a3,.L0d968650
    sw	$t8,0($a2)
    addiu	$t0,$t0,1
    move	$a5,$zero
    bne	$t0,$a3,.L0d968640
    sll	$a6,$a4,0x2
    dsll32	$at,$t1,0xc
.L0d968684:
    bgez	$at,.L0d968724
    # Line 1901
    dsll32	$t9,$t1,0xb
    # Line 1898
    lw	$v0,-26576($a7)
    beqz	$v0,.L0d9686b8
    # Line 1901
    lui	$v1,0x1
    sw	$zero,-26576($a7)
    ori	$a3,$v1,0x443
    sw	$a3,0($a2)
    li	$a1,250
    sw	$a1,0($a2)
    ori	$v1,$v1,0x46
    sw	$v1,0($a2)
    sw	$v1,0($a2)
.L0d9686b8:
    move	$a4,$zero
    move	$t0,$zero
    lui	$t2,0x1
    li	$a3,16
    ori	$t2,$t2,0x3e30
    sll	$a6,$a4,0x2
    move	$a5,$zero
    addu	$a6,$a0,$a6
    nop
    nop
.L0d9686e0:
    or	$t3,$t0,$t2
    sw	$t3,0($a2)
    addu	$a6,$a2,$a6
    addiu	$t0,$t0,1
.L0d9686f0:
    lw	$t8,-31772($a6)
    addiu	$a6,$a6,8
    addiu	$a5,$a5,2
    sw	$t8,0($a2)
    lw	$t3,-31776($a6)
    addiu	$a4,$a4,2
    bne	$a5,$a3,.L0d9686f0
    sw	$t3,0($a2)
    move	$a5,$zero
    sll	$a6,$a4,0x2
    bne	$t0,$a3,.L0d9686e0
    addu	$a6,$a0,$a6
    dsll32	$t9,$t1,0xb
.L0d968724:
    bgez	$t9,.L0d9687c4
    # Line 1904
    andi	$t9,$t1,0x8000
    # Line 1901
    lw	$at,-26576($a7)
    beqz	$at,.L0d968758
    # Line 1904
    lui	$v0,0x1
    sw	$zero,-26576($a7)
    ori	$a1,$v0,0x443
    sw	$a1,0($a2)
    li	$v1,250
    sw	$v1,0($a2)
    ori	$v0,$v0,0x46
    sw	$v0,0($a2)
    sw	$v0,0($a2)
.L0d968758:
    move	$a4,$zero
    move	$t0,$zero
    lui	$t2,0x1
    li	$a3,16
    ori	$t2,$t2,0x3e40
    sll	$a6,$a4,0x2
    move	$a5,$zero
    addu	$a6,$a0,$a6
    nop
    nop
.L0d968780:
    or	$t3,$t0,$t2
    sw	$t3,0($a2)
    addu	$a6,$a2,$a6
    addiu	$t0,$t0,1
.L0d968790:
    lw	$t8,-30748($a6)
    addiu	$a6,$a6,8
    addiu	$a5,$a5,2
    sw	$t8,0($a2)
    lw	$t3,-30752($a6)
    addiu	$a4,$a4,2
    bne	$a5,$a3,.L0d968790
    sw	$t3,0($a2)
    move	$a5,$zero
    sll	$a6,$a4,0x2
    bne	$t0,$a3,.L0d968780
    addu	$a6,$a0,$a6
    andi	$t9,$t1,0x8000
.L0d9687c4:
    beqz	$t9,.L0d968820
    # Line 1907
    and	$t0,$a2,$t1
    # Line 1904
    lw	$at,-26576($a7)
    beqz	$at,.L0d9687f8
    # Line 1907
    lui	$v0,0x1
    sw	$zero,-26576($a7)
    ori	$a1,$v0,0x443
    sw	$a1,0($a2)
    li	$v1,250
    sw	$v1,0($a2)
    ori	$v0,$v0,0x46
    sw	$v0,0($a2)
    sw	$v0,0($a2)
.L0d9687f8:
    lui	$a6,0x1
    ori	$a6,$a6,0xc3e
    sw	$a6,0($a2)
    lw	$a5,-29332($a7)
    sw	$a5,0($a2)
    lw	$a4,-29328($a7)
    sw	$a4,0($a2)
    lw	$a3,-29324($a7)
    sw	$a3,0($a2)
    and	$t0,$a2,$t1
.L0d968820:
    beqz	$t0,.L0d968848
    # Line 1930
    dsll32	$t9,$t1,0xe
    # Line 1911
    lw	$a3,-29464($a7)
    li	$t2,1
    beq	$a3,$t2,.L0d968e00
    li	$t3,2
    beq	$a3,$t3,.L0d969320
    li	$t8,3
    beq	$a3,$t8,.L0d969458
.L0d968844:
    # Line 1930
    dsll32	$t9,$t1,0xe
.L0d968848:
    bgez	$t9,.L0d968870
    # Line 1953
    andi	$a1,$t1,0x1ce0
    # Line 1934
    lw	$a3,-29724($a7)
    li	$at,1
    beq	$a3,$at,.L0d968fe4
    li	$v0,2
    beq	$a3,$v0,.L0d96939c
    li	$v1,3
    beq	$a3,$v1,.L0d9694a4
.L0d96886c:
    # Line 1953
    andi	$a1,$t1,0x1ce0
.L0d968870:
    beqz	$a1,.L0d968afc
    andi	$a3,$t1,0x400
    beqz	$a3,.L0d968970
    # Line 1964
    andi	$v1,$t1,0x800
    # Line 1953
    lw	$t8,-26576($a7)
    lui	$t3,0x1
    li	$t0,250
    ori	$t2,$t3,0x46
    beqz	$t8,.L0d9688ac
    ori	$t3,$t3,0x443
    # Line 1964
    sw	$zero,-26576($a7)
    sw	$t3,0($a2)
    sw	$t0,0($a2)
    sw	$t2,0($a2)
    sw	$t2,0($a2)
.L0d9688ac:
    move	$a4,$zero
    li	$a6,64
    lui	$a5,0x1
    move	$a3,$a0
    ori	$a5,$a5,0xe80
.L0d9688c0:
    or	$v0,$a4,$a5
    sw	$v0,0($a2)
    lw	$at,31968($a3)
    sw	$at,0($a2)
    lw	$t9,31972($a3)
    sw	$t9,0($a2)
    lw	$t8,31976($a3)
    addiu	$a1,$a4,1
    sw	$t8,0($a2)
    or	$a1,$a1,$a5
    sw	$a1,0($a2)
    lw	$v1,31980($a3)
    sw	$v1,0($a2)
    lw	$v0,31984($a3)
    sw	$v0,0($a2)
    lw	$at,31988($a3)
    addiu	$t9,$a4,2
    sw	$at,0($a2)
    or	$t9,$t9,$a5
    sw	$t9,0($a2)
    lw	$t8,31992($a3)
    sw	$t8,0($a2)
    lw	$a1,31996($a3)
    sw	$a1,0($a2)
    lw	$v1,32000($a3)
    addiu	$v0,$a4,3
    sw	$v1,0($a2)
    or	$v0,$v0,$a5
    sw	$v0,0($a2)
    lw	$at,32004($a3)
    sw	$at,0($a2)
    lw	$t9,32008($a3)
    addiu	$a4,$a4,4
    sw	$t9,0($a2)
    lw	$t8,32012($a3)
    addiu	$a3,$a3,48
    bne	$a4,$a6,.L0d9688c0
    sw	$t8,0($a2)
    sw	$zero,-26576($a7)
    sw	$t3,0($a2)
    sw	$t0,0($a2)
    sw	$t2,0($a2)
    sw	$t2,0($a2)
    andi	$v1,$t1,0x800
.L0d968970:
    beqz	$v1,.L0d9689c0
    # Line 1967
    andi	$t2,$t1,0x1000
    # Line 1964
    lw	$a1,-26576($a7)
    beqz	$a1,.L0d9689ac
    # Line 1967
    lui	$t0,0x1
    lui	$a3,0x1
    sw	$zero,-26576($a7)
    ori	$a5,$a3,0x443
    sw	$a5,0($a2)
    li	$a4,250
    sw	$a4,0($a2)
    ori	$a3,$a3,0x46
    sw	$a3,0($a2)
    sw	$a3,0($a2)
    lui	$t0,0x1
.L0d9689ac:
    ori	$t0,$t0,0x406
    sw	$t0,0($a2)
    lw	$a6,32736($a0)
    sw	$a6,0($a2)
    andi	$t2,$t1,0x1000
.L0d9689c0:
    beqz	$t2,.L0d968a08
    # Line 1970
    andi	$v0,$t1,0x20
    lui	$at,0x1
    ori	$t9,$at,0x443
    sw	$t9,0($a2)
    li	$t8,250
    sw	$t8,0($a2)
    ori	$t3,$at,0x46
    sw	$t3,0($a2)
    sw	$t3,0($a2)
    ori	$at,$at,0x18
    sw	$at,0($a2)
    sw	$zero,-26576($a7)
    sw	$t9,0($a2)
    sw	$t8,0($a2)
    sw	$t3,0($a2)
    sw	$t3,0($a2)
    andi	$v0,$t1,0x20
.L0d968a08:
    beqz	$v0,.L0d968a58
    # Line 1973
    andi	$t0,$t1,0x40
    # Line 1970
    lw	$v1,-26576($a7)
    beqz	$v1,.L0d968a44
    # Line 1973
    lui	$a6,0x1
    lui	$a1,0x1
    sw	$zero,-26576($a7)
    ori	$a4,$a1,0x443
    sw	$a4,0($a2)
    li	$a3,250
    sw	$a3,0($a2)
    ori	$a1,$a1,0x46
    sw	$a1,0($a2)
    sw	$a1,0($a2)
    lui	$a6,0x1
.L0d968a44:
    ori	$a6,$a6,0x41f
    sw	$a6,0($a2)
    lw	$a5,31788($a0)
    sw	$a5,0($a2)
    andi	$t0,$t1,0x40
.L0d968a58:
    beqz	$t0,.L0d968ab0
    # Line 1976
    andi	$a1,$t1,0x80
    # Line 1973
    lw	$t2,-26576($a7)
    beqz	$t2,.L0d968a94
    # Line 1976
    lui	$v1,0x1
    lui	$t3,0x1
    sw	$zero,-26576($a7)
    ori	$t9,$t3,0x443
    sw	$t9,0($a2)
    li	$t8,250
    sw	$t8,0($a2)
    ori	$t3,$t3,0x46
    sw	$t3,0($a2)
    sw	$t3,0($a2)
    lui	$v1,0x1
.L0d968a94:
    ori	$v1,$v1,0x84a
    sw	$v1,0($a2)
    lw	$v0,31828($a0)
    sw	$v0,0($a2)
    lw	$at,31832($a0)
    sw	$at,0($a2)
    andi	$a1,$t1,0x80
.L0d968ab0:
    beqz	$a1,.L0d968b00
    # Line 1979
    lui	$t3,0x3c0
    # Line 1976
    lw	$a3,-26576($a7)
    beqz	$a3,.L0d968aec
    # Line 1979
    lui	$t2,0x1
    lui	$a4,0x1
    sw	$zero,-26576($a7)
    ori	$a6,$a4,0x443
    sw	$a6,0($a2)
    li	$a5,250
    sw	$a5,0($a2)
    ori	$a4,$a4,0x46
    sw	$a4,0($a2)
    sw	$a4,0($a2)
    lui	$t2,0x1
.L0d968aec:
    ori	$t2,$t2,0x452
    sw	$t2,0($a2)
    lw	$t0,31836($a0)
    sw	$t0,0($a2)
.L0d968afc:
    lui	$t3,0x3c0
.L0d968b00:
    ori	$t3,$t3,0x10
    and	$t3,$t1,$t3
    beqz	$t3,.L0d968df8
    andi	$t8,$t1,0x10
    beqz	$t8,.L0d968b68
    # Line 1989
    dsll32	$a5,$t1,0x8
    # Line 1979
    lw	$t9,-26576($a7)
    beqz	$t9,.L0d968b4c
    # Line 1989
    lui	$a4,0x1
    lui	$at,0x1
    sw	$zero,-26576($a7)
    ori	$v1,$at,0x443
    sw	$v1,0($a2)
    li	$v0,250
    sw	$v0,0($a2)
    ori	$at,$at,0x46
    sw	$at,0($a2)
    sw	$at,0($a2)
    lui	$a4,0x1
.L0d968b4c:
    ori	$a4,$a4,0x81d
    sw	$a4,0($a2)
    lw	$a3,31776($a0)
    sw	$a3,0($a2)
    lw	$a1,31780($a0)
    sw	$a1,0($a2)
    dsll32	$a5,$t1,0x8
.L0d968b68:
    bgez	$a5,.L0d968bc8
    # Line 1992
    dsll32	$v1,$t1,0x9
    # Line 1989
    lw	$a6,-26576($a7)
    beqz	$a6,.L0d968ba4
    # Line 1992
    lui	$v0,0x1
    lui	$t0,0x1
    sw	$zero,-26576($a7)
    ori	$t3,$t0,0x443
    sw	$t3,0($a2)
    li	$t2,250
    sw	$t2,0($a2)
    ori	$t0,$t0,0x46
    sw	$t0,0($a2)
    sw	$t0,0($a2)
    lui	$v0,0x1
.L0d968ba4:
    ori	$v0,$v0,0xc1c
    sw	$v0,0($a2)
    lw	$at,-27268($a7)
    sw	$at,0($a2)
    lw	$t9,-27264($a7)
    sw	$t9,0($a2)
    lw	$t8,-27260($a7)
    sw	$t8,0($a2)
    dsll32	$v1,$t1,0x9
.L0d968bc8:
    bgez	$v1,.L0d968d54
    # Line 1999
    dsll32	$v1,$t1,0x7
    # Line 1992
    lw	$t8,-26576($a7)
    lui	$t3,0x1
    ori	$t2,$t3,0x46
    beqz	$t8,.L0d968bfc
    ori	$t3,$t3,0x443
    # Line 1995
    sw	$zero,-26576($a7)
    sw	$t3,0($a2)
    li	$t9,250
    sw	$t9,0($a2)
    sw	$t2,0($a2)
    sw	$t2,0($a2)
.L0d968bfc:
    move	$a5,$a7
    move	$a4,$zero
    li	$a3,16
    lui	$t0,0x1
    ori	$a6,$t0,0x3e10
    ori	$t0,$t0,0x3e00
    nop
    nop
    nop
.L0d968c20:
    or	$v0,$a4,$t0
    sw	$v0,0($a2)
    lw	$at,-29316($a5)
    sw	$at,0($a2)
    lw	$t9,-29312($a5)
    sw	$t9,0($a2)
    lw	$t8,-29308($a5)
    sw	$t8,0($a2)
    lw	$a1,-29304($a5)
    sw	$a1,0($a2)
    lw	$v1,-29300($a5)
    sw	$v1,0($a2)
    lw	$v0,-29296($a5)
    sw	$v0,0($a2)
    lw	$at,-29292($a5)
    sw	$at,0($a2)
    lw	$t9,-29288($a5)
    sw	$t9,0($a2)
    lw	$t8,-29284($a5)
    sw	$t8,0($a2)
    lw	$a1,-29280($a5)
    sw	$a1,0($a2)
    lw	$v1,-29276($a5)
    sw	$v1,0($a2)
    lw	$v0,-29272($a5)
    sw	$v0,0($a2)
    lw	$at,-29268($a5)
    sw	$at,0($a2)
    lw	$t9,-29264($a5)
    sw	$t9,0($a2)
    lw	$t8,-29260($a5)
    sw	$t8,0($a2)
    lw	$a1,-29256($a5)
    sw	$a1,0($a2)
    or	$v1,$a4,$a6
    sw	$v1,0($a2)
    lw	$v0,-28292($a5)
    sw	$v0,0($a2)
    lw	$at,-28288($a5)
    sw	$at,0($a2)
    lw	$t9,-28284($a5)
    sw	$t9,0($a2)
    lw	$t8,-28280($a5)
    sw	$t8,0($a2)
    lw	$a1,-28276($a5)
    sw	$a1,0($a2)
    lw	$v1,-28272($a5)
    sw	$v1,0($a2)
    lw	$v0,-28268($a5)
    sw	$v0,0($a2)
    lw	$at,-28264($a5)
    sw	$at,0($a2)
    lw	$t9,-28260($a5)
    sw	$t9,0($a2)
    lw	$t8,-28256($a5)
    sw	$t8,0($a2)
    lw	$a1,-28252($a5)
    sw	$a1,0($a2)
    lw	$v1,-28248($a5)
    sw	$v1,0($a2)
    lw	$v0,-28244($a5)
    sw	$v0,0($a2)
    lw	$at,-28240($a5)
    sw	$at,0($a2)
    lw	$t9,-28236($a5)
    addiu	$a4,$a4,1
    sw	$t9,0($a2)
    lw	$t8,-28232($a5)
    addiu	$a5,$a5,64
    bne	$a4,$a3,.L0d968c20
    sw	$t8,0($a2)
    # Line 1999
    sw	$zero,-26576($a7)
    sw	$t3,0($a2)
    sw	$zero,0($a2)
    sw	$t2,0($a2)
    sw	$t2,0($a2)
    dsll32	$v1,$t1,0x7
.L0d968d54:
    bgez	$v1,.L0d968da4
    # Line 2002
    dsll32	$t2,$t1,0x6
    # Line 1999
    lw	$a1,-26576($a7)
    beqz	$a1,.L0d968d90
    # Line 2002
    lui	$t0,0x1
    lui	$a3,0x1
    sw	$zero,-26576($a7)
    ori	$a5,$a3,0x443
    sw	$a5,0($a2)
    li	$a4,250
    sw	$a4,0($a2)
    ori	$a3,$a3,0x46
    sw	$a3,0($a2)
    sw	$a3,0($a2)
    lui	$t0,0x1
.L0d968d90:
    ori	$t0,$t0,0x451
    sw	$t0,0($a2)
    lw	$a6,-26984($a7)
    sw	$a6,0($a2)
    dsll32	$t2,$t1,0x6
.L0d968da4:
    bgez	$t2,.L0d968df8
    nop
    lw	$t3,-26576($a7)
    beqz	$t3,.L0d968de0
    # Line 2005
    lui	$v1,0x1
    lui	$t8,0x1
    sw	$zero,-26576($a7)
    ori	$at,$t8,0x443
    sw	$at,0($a2)
    li	$t9,250
    sw	$t9,0($a2)
    ori	$t8,$t8,0x46
    sw	$t8,0($a2)
    sw	$t8,0($a2)
    lui	$v1,0x1
.L0d968de0:
    ori	$v1,$v1,0x415
    sw	$v1,0($a2)
    lw	$v0,31748($a0)
    sw	$v0,0($a2)
    # Line 2014
    jr	$ra
    # Line 2013
    sw	$zero,26976($a7)
.L0d968df8:
    # Line 2014
    jr	$ra
    # Line 2013
    sw	$zero,26976($a7)
.L0d968e00:
    # Line 1914
    lw	$a1,-26576($a7)
    beqz	$a1,.L0d968e2c
    lui	$a3,0x1
    sw	$zero,-26576($a7)
    ori	$a5,$a3,0x443
    sw	$a5,0($a2)
    li	$a4,250
    sw	$a4,0($a2)
    ori	$a3,$a3,0x46
    sw	$a3,0($a2)
    sw	$a3,0($a2)
.L0d968e2c:
    lui	$a3,0x1
    ori	$a1,$a3,0x2030
    sw	$a1,0($a2)
    lw	$v1,-29460($a7)
    sw	$v1,0($a2)
    lw	$v0,-29456($a7)
    sw	$v0,0($a2)
    lw	$at,-29452($a7)
    sw	$at,0($a2)
    lw	$t9,-29448($a7)
    sw	$t9,0($a2)
    lw	$t8,-29444($a7)
    sw	$t8,0($a2)
    lw	$t3,-29440($a7)
    sw	$t3,0($a2)
    lw	$t2,-29436($a7)
    sw	$t2,0($a2)
    lw	$t0,-29432($a7)
    sw	$t0,0($a2)
    lw	$a6,-26576($a7)
    beqz	$a6,.L0d968ea4
    nop
    # Line 1915
    sw	$zero,-26576($a7)
    ori	$a6,$a3,0x443
    sw	$a6,0($a2)
    li	$a5,250
    sw	$a5,0($a2)
    ori	$a4,$a3,0x46
    sw	$a4,0($a2)
    sw	$a4,0($a2)
.L0d968ea4:
    lui	$a3,0x1
    ori	$a4,$a3,0x2031
    sw	$a4,0($a2)
    lw	$a1,-29428($a7)
    sw	$a1,0($a2)
    lw	$v1,-29424($a7)
    sw	$v1,0($a2)
    lw	$v0,-29420($a7)
    sw	$v0,0($a2)
    lw	$at,-29416($a7)
    sw	$at,0($a2)
    lw	$t9,-29412($a7)
    sw	$t9,0($a2)
    lw	$t8,-29408($a7)
    sw	$t8,0($a2)
    lw	$t3,-29404($a7)
    sw	$t3,0($a2)
    lw	$t2,-29400($a7)
    sw	$t2,0($a2)
    lw	$t0,-26576($a7)
    beqz	$t0,.L0d968f1c
    nop
    # Line 1916
    sw	$zero,-26576($a7)
    ori	$t0,$a3,0x443
    sw	$t0,0($a2)
    li	$a6,250
    sw	$a6,0($a2)
    ori	$a5,$a3,0x46
    sw	$a5,0($a2)
    sw	$a5,0($a2)
.L0d968f1c:
    lui	$a3,0x1
    ori	$a5,$a3,0x2032
    sw	$a5,0($a2)
    lw	$a4,-29396($a7)
    sw	$a4,0($a2)
    lw	$a1,-29392($a7)
    sw	$a1,0($a2)
    lw	$v1,-29388($a7)
    sw	$v1,0($a2)
    lw	$v0,-29384($a7)
    sw	$v0,0($a2)
    lw	$at,-29380($a7)
    sw	$at,0($a2)
    lw	$t9,-29376($a7)
    sw	$t9,0($a2)
    lw	$t8,-29372($a7)
    sw	$t8,0($a2)
    lw	$t3,-29368($a7)
    sw	$t3,0($a2)
    lw	$t2,-26576($a7)
    beqz	$t2,.L0d968f98
    # Line 1917
    lui	$a4,0x1
    sw	$zero,-26576($a7)
    ori	$t2,$a3,0x443
    sw	$t2,0($a2)
    li	$t0,250
    sw	$t0,0($a2)
    ori	$a6,$a3,0x46
    sw	$a6,0($a2)
    sw	$a6,0($a2)
    lui	$a4,0x1
.L0d968f98:
    ori	$a4,$a4,0x2033
    sw	$a4,0($a2)
    lw	$a3,-29364($a7)
    sw	$a3,0($a2)
    lw	$a1,-29360($a7)
    sw	$a1,0($a2)
    lw	$v1,-29356($a7)
    sw	$v1,0($a2)
    lw	$v0,-29352($a7)
    sw	$v0,0($a2)
    lw	$at,-29348($a7)
    sw	$at,0($a2)
    lw	$t9,-29344($a7)
    sw	$t9,0($a2)
    lw	$t8,-29340($a7)
    sw	$t8,0($a2)
    lw	$t3,-29336($a7)
    b	.L0d968844
    sw	$t3,0($a2)
.L0d968fe4:
    # Line 1937
    lw	$a5,-26576($a7)
    beqz	$a5,.L0d969018
    lui	$a3,0x1
    lui	$a6,0x1
    sw	$zero,-26576($a7)
    ori	$t2,$a6,0x443
    sw	$t2,0($a2)
    li	$t0,250
    sw	$t0,0($a2)
    ori	$a6,$a6,0x46
    sw	$a6,0($a2)
    sw	$a6,0($a2)
    lui	$a3,0x1
.L0d969018:
    ori	$v1,$a3,0x3c28
    sw	$v1,0($a2)
    lw	$v0,-29720($a7)
    sw	$v0,0($a2)
    lw	$at,-29716($a7)
    sw	$at,0($a2)
    lw	$t9,-29712($a7)
    sw	$t9,0($a2)
    lw	$t8,-29708($a7)
    sw	$t8,0($a2)
    lw	$t3,-29704($a7)
    sw	$t3,0($a2)
    lw	$t2,-29700($a7)
    sw	$t2,0($a2)
    lw	$t0,-29696($a7)
    sw	$t0,0($a2)
    lw	$a6,-29692($a7)
    sw	$a6,0($a2)
    lw	$a5,-29688($a7)
    sw	$a5,0($a2)
    lw	$a4,-29684($a7)
    sw	$a4,0($a2)
    lw	$a1,-29680($a7)
    sw	$a1,0($a2)
    lw	$v1,-29676($a7)
    sw	$v1,0($a2)
    lw	$v0,-29672($a7)
    sw	$v0,0($a2)
    lw	$at,-29668($a7)
    sw	$at,0($a2)
    lw	$t9,-29664($a7)
    sw	$t9,0($a2)
    lw	$t8,-29660($a7)
    sw	$t8,0($a2)
    lw	$t3,-26576($a7)
    beqz	$t3,.L0d9690cc
    nop
    # Line 1938
    sw	$zero,-26576($a7)
    ori	$a5,$a3,0x443
    sw	$a5,0($a2)
    li	$a4,250
    sw	$a4,0($a2)
    ori	$a1,$a3,0x46
    sw	$a1,0($a2)
    sw	$a1,0($a2)
.L0d9690cc:
    lui	$a3,0x1
    ori	$t9,$a3,0x3c29
    sw	$t9,0($a2)
    lw	$t8,-29656($a7)
    sw	$t8,0($a2)
    lw	$t3,-29652($a7)
    sw	$t3,0($a2)
    lw	$t2,-29648($a7)
    sw	$t2,0($a2)
    lw	$t0,-29644($a7)
    sw	$t0,0($a2)
    lw	$a6,-29640($a7)
    sw	$a6,0($a2)
    lw	$a5,-29636($a7)
    sw	$a5,0($a2)
    lw	$a4,-29632($a7)
    sw	$a4,0($a2)
    lw	$a1,-29628($a7)
    sw	$a1,0($a2)
    lw	$v1,-29624($a7)
    sw	$v1,0($a2)
    lw	$v0,-29620($a7)
    sw	$v0,0($a2)
    lw	$at,-29616($a7)
    sw	$at,0($a2)
    lw	$t9,-29612($a7)
    sw	$t9,0($a2)
    lw	$t8,-29608($a7)
    sw	$t8,0($a2)
    lw	$t3,-29604($a7)
    sw	$t3,0($a2)
    lw	$t2,-29600($a7)
    sw	$t2,0($a2)
    lw	$t0,-29596($a7)
    sw	$t0,0($a2)
    lw	$a6,-26576($a7)
    beqz	$a6,.L0d969184
    nop
    # Line 1939
    sw	$zero,-26576($a7)
    ori	$v1,$a3,0x443
    sw	$v1,0($a2)
    li	$v0,250
    sw	$v0,0($a2)
    ori	$at,$a3,0x46
    sw	$at,0($a2)
    sw	$at,0($a2)
.L0d969184:
    lui	$a3,0x1
    ori	$t2,$a3,0x3c2a
    sw	$t2,0($a2)
    lw	$t0,-29592($a7)
    sw	$t0,0($a2)
    lw	$a6,-29588($a7)
    sw	$a6,0($a2)
    lw	$a5,-29584($a7)
    sw	$a5,0($a2)
    lw	$a4,-29580($a7)
    sw	$a4,0($a2)
    lw	$a1,-29576($a7)
    sw	$a1,0($a2)
    lw	$v1,-29572($a7)
    sw	$v1,0($a2)
    lw	$v0,-29568($a7)
    sw	$v0,0($a2)
    lw	$at,-29564($a7)
    sw	$at,0($a2)
    lw	$t9,-29560($a7)
    sw	$t9,0($a2)
    lw	$t8,-29556($a7)
    sw	$t8,0($a2)
    lw	$t3,-29552($a7)
    sw	$t3,0($a2)
    lw	$t2,-29548($a7)
    sw	$t2,0($a2)
    lw	$t0,-29544($a7)
    sw	$t0,0($a2)
    lw	$a6,-29540($a7)
    sw	$a6,0($a2)
    lw	$a5,-29536($a7)
    sw	$a5,0($a2)
    lw	$a4,-29532($a7)
    sw	$a4,0($a2)
    lw	$a1,-26576($a7)
    beqz	$a1,.L0d969240
    # Line 1940
    lui	$a1,0x1
    sw	$zero,-26576($a7)
    ori	$t9,$a3,0x443
    sw	$t9,0($a2)
    li	$t8,250
    sw	$t8,0($a2)
    ori	$t3,$a3,0x46
    sw	$t3,0($a2)
    sw	$t3,0($a2)
    lui	$a1,0x1
.L0d969240:
    ori	$a1,$a1,0x3c2b
    sw	$a1,0($a2)
    lw	$v1,-29528($a7)
    sw	$v1,0($a2)
    lw	$v0,-29524($a7)
    sw	$v0,0($a2)
    lw	$at,-29520($a7)
    sw	$at,0($a2)
    lw	$t9,-29516($a7)
    sw	$t9,0($a2)
    lw	$t8,-29512($a7)
    sw	$t8,0($a2)
    lw	$t3,-29508($a7)
    sw	$t3,0($a2)
    lw	$t2,-29504($a7)
    sw	$t2,0($a2)
    lw	$t0,-29500($a7)
    sw	$t0,0($a2)
    lw	$a6,-29496($a7)
    sw	$a6,0($a2)
    lw	$a5,-29492($a7)
    sw	$a5,0($a2)
    lw	$a4,-29488($a7)
    sw	$a4,0($a2)
    lw	$a3,-29484($a7)
    sw	$a3,0($a2)
    lw	$a1,-29480($a7)
    sw	$a1,0($a2)
    lw	$v1,-29476($a7)
    sw	$v1,0($a2)
    lw	$v0,-29472($a7)
    sw	$v0,0($a2)
    lw	$at,-29468($a7)
    b	.L0d96886c
    sw	$at,0($a2)
.L0d9692cc:
    # Line 1865
    ori	$t9,$a3,0x841
    sw	$t9,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    ori	$t8,$a3,0x204b
    sw	$t8,0($a2)
    lui	$a6,0xff
    sw	$zero,0($a2)
    ori	$a6,$a6,0xffff
    sw	$a6,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    sw	$zero,0($a2)
    ori	$a5,$a3,0x840
    sw	$a5,0($a2)
    sw	$zero,0($a2)
    b	.L0d9682dc
    sw	$zero,0($a2)
.L0d969320:
    # Line 1920
    lw	$at,-26576($a7)
    beqz	$at,.L0d96934c
    lui	$v0,0x1
    sw	$zero,-26576($a7)
    ori	$a1,$v0,0x443
    sw	$a1,0($a2)
    li	$v1,250
    sw	$v1,0($a2)
    ori	$v0,$v0,0x46
    sw	$v0,0($a2)
    sw	$v0,0($a2)
.L0d96934c:
    lui	$t9,0x1
    ori	$t9,$t9,0x203b
    sw	$t9,0($a2)
    lw	$t8,-29460($a7)
    sw	$t8,0($a2)
    lw	$t3,-29456($a7)
    sw	$t3,0($a2)
    lw	$t2,-29452($a7)
    sw	$t2,0($a2)
    lw	$t0,-29448($a7)
    sw	$t0,0($a2)
    lw	$a6,-29444($a7)
    sw	$a6,0($a2)
    lw	$a5,-29440($a7)
    sw	$a5,0($a2)
    lw	$a4,-29436($a7)
    sw	$a4,0($a2)
    lw	$a3,-29432($a7)
    # Line 1921
    b	.L0d968844
    # Line 1920
    sw	$a3,0($a2)
.L0d96939c:
    # Line 1943
    lw	$at,-26576($a7)
    beqz	$at,.L0d9693c8
    lui	$v0,0x1
    sw	$zero,-26576($a7)
    ori	$a1,$v0,0x443
    sw	$a1,0($a2)
    li	$v1,250
    sw	$v1,0($a2)
    ori	$v0,$v0,0x46
    sw	$v0,0($a2)
    sw	$v0,0($a2)
.L0d9693c8:
    lui	$a6,0x1
    ori	$a6,$a6,0x3c38
    sw	$a6,0($a2)
    lw	$a5,-29720($a7)
    sw	$a5,0($a2)
    lw	$a4,-29716($a7)
    sw	$a4,0($a2)
    lw	$a3,-29712($a7)
    sw	$a3,0($a2)
    lw	$a1,-29708($a7)
    sw	$a1,0($a2)
    lw	$v1,-29704($a7)
    sw	$v1,0($a2)
    lw	$v0,-29700($a7)
    sw	$v0,0($a2)
    lw	$at,-29696($a7)
    sw	$at,0($a2)
    lw	$t9,-29692($a7)
    sw	$t9,0($a2)
    lw	$t8,-29688($a7)
    sw	$t8,0($a2)
    lw	$t3,-29684($a7)
    sw	$t3,0($a2)
    lw	$t2,-29680($a7)
    sw	$t2,0($a2)
    lw	$t0,-29676($a7)
    sw	$t0,0($a2)
    lw	$a6,-29672($a7)
    sw	$a6,0($a2)
    lw	$a5,-29668($a7)
    sw	$a5,0($a2)
    lw	$a4,-29664($a7)
    sw	$a4,0($a2)
    lw	$a3,-29660($a7)
    # Line 1944
    b	.L0d96886c
    # Line 1943
    sw	$a3,0($a2)
.L0d969458:
    # Line 1923
    lw	$t0,-26576($a7)
    beqz	$t0,.L0d969484
    lui	$t2,0x1
    sw	$zero,-26576($a7)
    ori	$t8,$t2,0x443
    sw	$t8,0($a2)
    li	$t3,250
    sw	$t3,0($a2)
    ori	$t2,$t2,0x46
    sw	$t2,0($a2)
    sw	$t2,0($a2)
.L0d969484:
    lui	$v0,0x1
    ori	$v0,$v0,0x83d
    sw	$v0,0($a2)
    lw	$at,-29460($a7)
    sw	$at,0($a2)
    lw	$t9,-29456($a7)
    # Line 1924
    b	.L0d968844
    # Line 1923
    sw	$t9,0($a2)
.L0d9694a4:
    # Line 1946
    lw	$v1,-26576($a7)
    beqz	$v1,.L0d9694d0
    lui	$a1,0x1
    sw	$zero,-26576($a7)
    ori	$a4,$a1,0x443
    sw	$a4,0($a2)
    li	$a3,250
    sw	$a3,0($a2)
    ori	$a1,$a1,0x46
    sw	$a1,0($a2)
    sw	$a1,0($a2)
.L0d9694d0:
    lui	$t3,0x1
    ori	$t3,$t3,0x103a
    sw	$t3,0($a2)
    lw	$t2,-29720($a7)
    sw	$t2,0($a2)
    lw	$t0,-29716($a7)
    sw	$t0,0($a2)
    lw	$a6,-29712($a7)
    sw	$a6,0($a2)
    lw	$a5,-29708($a7)
    # Line 1947
    b	.L0d96886c
    # Line 1946
    sw	$a5,0($a2)
.end __glOdysseyValidateHardware

# Function: __glOdysseyValidateContextRasterMisc
# Declared: Line 2022 (Source lines: 2022-2104)
# Address: 0x0d969500 - 0x0d9696e8 (Size: 488 bytes, Frame: 0)
.globl __glOdysseyValidateContextRasterMisc
.ent __glOdysseyValidateContextRasterMisc
__glOdysseyValidateContextRasterMisc:
    # Line 2056
    lw	$v1,1792($a0)
    lw	$a1,1796($a0)
    # Line 2022
    lui	$v0,0x19
    # Line 2056
    andi	$v1,$v1,0x2
    # Line 2022
    addiu	$v0,$v0,-3952
    # Line 2056
    andi	$a1,$a1,0x800
    beqz	$v1,.L0d96952c
    # Line 2022
    addu	$at,$t9,$v0
    # Line 2056
    li	$a3,1
    beqz	$a1,.L0d9696e0
    nop
.L0d96952c:
    move	$a3,$zero
    # Line 2059
    lui	$a4,0x1
.L0d969534:
    # Line 2056
    lw	$a7,31740($a0)
    lui	$t1,0x2
    sll	$a6,$a3,0x11
    nor	$t0,$t1,$zero
    and	$a6,$a6,$t1
    and	$a7,$a7,$t0
    # Line 2059
    addu	$a4,$a0,$a4
    # Line 2056
    or	$a6,$a6,$a7
    sw	$a6,31740($a0)
    # Line 2059
    lw	$a5,26976($a4)
    ori	$a5,$a5,0x2
    sw	$a5,26976($a4)
    li	$t0,2
    sw	$t0,4120($zero)
    # Line 2073
    lw	$a5,1792($a0)
    lw	$t8,1796($a0)
    andi	$a2,$a5,0x8017
    move	$a6,$zero
    lui	$a7,0xff00
    ldc1	$f4,_lit8_4060000000000000
    beqz	$a2,.L0d969620
    andi	$t8,$t8,0x800
.L0d96958c:
    lw	$a3,-26972($a4)
    sll	$t2,$a3,0x2
    bltz	$t2,.L0d969644
    # Line 2082
    lui	$v1,0x20
.L0d96959c:
    # Line 2073
    lui	$a3,0xff
    lw	$a6,31832($a0)
    andi	$t1,$a5,0x400
    ori	$a3,$a3,0xffff
    beqz	$t1,.L0d969678
    and	$a6,$a7,$a6
    # Line 2088
    lwc1	$f0,460($a0)
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    trunc.l.d	$f0,$f0
    dmfc1	$t1,$f0
    sll	$t1,$t1,0x0
    and	$t1,$a3,$t1
    or	$t1,$a6,$t1
    sw	$t1,31832($a0)
.L0d9695d8:
    # Line 2091
    lw	$a6,31828($a0)
    andi	$t1,$a5,0x200
    beqz	$t1,.L0d9696a4
    and	$a6,$a7,$a6
    # Line 2096
    lwc1	$f1,472($a0)
    cvt.d.s	$f1,$f1
    mul.d	$f1,$f1,$f4
    trunc.l.d	$f1,$f1
    dmfc1	$t3,$f1
    sll	$t3,$t3,0x0
    and	$t3,$a3,$t3
    or	$t3,$a6,$t3
    sw	$t3,31828($a0)
    # Line 2103
    lw	$t2,26976($a4)
    ori	$t2,$t2,0x40
    sw	$t2,26976($a4)
    # Line 2104
    jr	$ra
    # Line 2103
    sw	$t0,4120($zero)
.L0d969620:
    # Line 2073
    bnez	$t8,.L0d96958c
    nop
    lw	$a3,-26972($a4)
    srl	$t9,$a3,0x1d
    li	$v0,1
    andi	$t9,$t9,0x1
    beq	$t9,$v0,.L0d96959c
    li	$a6,1
    # Line 2082
    lui	$v1,0x20
.L0d969644:
    lw	$v0,26976($a4)
    # Line 2081
    sll	$a1,$a6,0x1d
    lui	$a5,0x2000
    and	$a1,$a1,$a5
    nor	$a2,$a5,$zero
    # Line 2082
    or	$v0,$v0,$v1
    sw	$v0,26976($a4)
    # Line 2081
    and	$a2,$a3,$a2
    or	$a1,$a1,$a2
    sw	$a1,-26972($a4)
    # Line 2082
    sw	$t0,4120($zero)
    b	.L0d96959c
    lw	$a5,1792($a0)
.L0d969678:
    # Line 2091
    lw	$t2,464($a0)
    mtc1	$t2,$f2
    cvt.d.w	$f2,$f2
    mul.d	$f2,$f2,$f4
    trunc.l.d	$f2,$f2
    dmfc1	$t1,$f2
    sll	$t1,$t1,0x0
    and	$t1,$a3,$t1
    or	$t1,$a6,$t1
    b	.L0d9695d8
    sw	$t1,31832($a0)
.L0d9696a4:
    # Line 2099
    lw	$t9,476($a0)
    mtc1	$t9,$f3
    cvt.d.w	$f3,$f3
    mul.d	$f3,$f3,$f4
    trunc.l.d	$f3,$f3
    dmfc1	$t8,$f3
    sll	$t8,$t8,0x0
    and	$t8,$a3,$t8
    or	$t8,$a6,$t8
    sw	$t8,31828($a0)
    # Line 2103
    lw	$t3,26976($a4)
    ori	$t3,$t3,0x40
    sw	$t3,26976($a4)
    # Line 2104
    jr	$ra
    # Line 2103
    sw	$t0,4120($zero)
.L0d9696e0:
    # Line 2056
    b	.L0d969534
    # Line 2059
    lui	$a4,0x1
.end __glOdysseyValidateContextRasterMisc

# Function: __glOdysseyValidateScissor
# Declared: Line 2107 (Source lines: 2108-2122)
# Address: 0x0d9696f0 - 0x0d9697e8 (Size: 248 bytes, Frame: 32)
.ent __glOdysseyValidateScissor
__glOdysseyValidateScissor:
    # Line 2114
    lui	$a3,0x1
    lw	$at,31776($a0)
    addu	$a2,$a3,$a0
    lw	$a4,26036($a2)
    lw	$v1,31780($a0)
    # Line 2108
    addiu	$sp,$sp,-32
    # Line 2114
    bne	$at,$a4,.L0d969714
    lw	$v0,26040($a2)
    beq	$v0,$v1,.L0d969778
.L0d969714:
    # Line 2120
    lui	$t8,0x1
    # Line 2117
    sw	$a4,31776($a0)
    # Line 2118
    lw	$a5,26040($a2)
    sw	$a5,31780($a0)
    lw	$a1,-26576($a2)
    beqz	$a1,.L0d969754
    # Line 2120
    ori	$t8,$t8,0x81d
    li	$a7,250
    sw	$zero,-26576($a2)
    lui	$a6,0x1
    ori	$t0,$a6,0x443
    sw	$t0,0($a3)
    sw	$a7,0($a3)
    ori	$a6,$a6,0x46
    sw	$a6,0($a3)
    sw	$a6,0($a3)
.L0d969754:
    sw	$t8,0($a3)
    lw	$t3,31776($a0)
    sw	$t3,0($a3)
    lw	$t2,31780($a0)
    sw	$t2,0($a3)
    lw	$t1,31600($a0)
    dsll32	$t1,$t1,0xb
    bgez	$t1,.L0d969780
    nop
.L0d969778:
    # Line 2122
    jr	$ra
    addiu	$sp,$sp,32
.L0d969780:
    # Line 2120
    sw	$zero,12($sp)
    sw	$zero,8($sp)
    sw	$zero,4($sp)
    sw	$zero,0($sp)
    lw	$a4,31776($a0)
    srl	$a4,$a4,0xc
    andi	$a4,$a4,0xfff
    sw	$a4,0($sp)
    lw	$a3,31776($a0)
    andi	$a3,$a3,0xfff
    sw	$a3,8($sp)
    lw	$a2,31780($a0)
    # lw $t9, -30516($gp) # &__glOdysseyIoctl
    srl	$a2,$a2,0xc
    andi	$a2,$a2,0xfff
    sw	$a2,4($sp)
    lui	$a1,0x6f64
    lw	$at,31780($a0)
    sd	$ra,16($sp)
    ori	$a1,$a1,0xd
    addiu	$a2,$sp,0
    andi	$at,$at,0xfff
    jal	__glOdysseyIoctl
    sw	$at,12($sp)
    b	.L0d969778
    ld	$ra,16($sp)
.end __glOdysseyValidateScissor

# Function: __glOdysseyValidateContext
# Declared: Line 2125 (Source lines: 2126-2259)
# Address: 0x0d9697f0 - 0x0d969abc (Size: 716 bytes, Frame: 192)
.globl __glOdysseyValidateContext
.ent __glOdysseyValidateContext
__glOdysseyValidateContext:
    # Line 2126
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    sd	$s4,40($sp)
    sd	$gp,24($sp)
    sd	$s0,16($sp)
    # Line 2127
    lui	$at,0x1
    # Line 2126
    sd	$s2,0($sp)
    # Line 2127
    addu	$s2,$a0,$at
    # Line 2135
    ori	$at,$at,0x9de3
    # Line 2126
    sd	$s3,8($sp)
    # Line 2135
    addu	$at,$at,$a0
    # Line 2126
    move	$s0,$a0
    lui	$v1,0x19
    # Line 2135
    lbu	$at,0($at)
    li	$a4,1
    # Line 2126
    addiu	$v1,$v1,-4704
    # Line 2127
    lw	$a2,26980($s2)
    # Line 2135
    move	$s3,$zero
    # Line 2126
    addu	$gp,$t9,$v1
    # Line 2127
    lbu	$a3,26996($s2)
    sd	$s1,32($sp)
    # Line 2135
    andi	$v0,$a2,0x2000
    beq	$a4,$at,.L0d969a40
    movz	$s3,$v0,$a3
.L0d969850:
    # Line 2167
    nor	$s4,$s3,$zero
.L0d969854:
    and	$s1,$s4,$a2
    beqz	$s1,.L0d969a68
    # Line 2175
    andi	$v0,$s1,0x4000
    beqz	$v0,.L0d969880
    # Line 2182
    andi	$t8,$s1,0x100
    # Line 2180
    # lw $t9, -30008($gp) # &__glOdysseyValidateDepthRange
    jal	__glOdysseyValidateDepthRange
    move	$a0,$s0
    # Line 2182
    lw	$s1,26980($s2)
    and	$s1,$s4,$s1
    andi	$t8,$s1,0x100
.L0d969880:
    beqz	$t8,.L0d969890
    # Line 2185
    nop	# was lw $t9, -30936($gp) # &__glOdysseyValidateProgram
    jal	__glOdysseyValidateProgram
    move	$a0,$s0
.L0d969890:
    andi	$t9,$s1,0x200
    beqz	$t9,.L0d9698ac
    # Line 2188
    andi	$ra,$s1,0x800
    # lw $t9, -30636($gp) # &__glOdysseyValidateTextureState
    jal	__glOdysseyValidateTextureState
    move	$a0,$s0
    andi	$ra,$s1,0x800
.L0d9698ac:
    beqz	$ra,.L0d9698c4
    # Line 2191
    andi	$at,$s1,0x1
    # lw $t9, -32144($gp) # &__glOdysseyValidateContextRasterMisc
    bal __glOdysseyValidateContextRasterMisc
    move	$a0,$s0
    andi	$at,$s1,0x1
.L0d9698c4:
    beqz	$at,.L0d9698dc
    # Line 2194
    andi	$v0,$s1,0x2
    # lw $t9, -30120($gp) # &__glOdysseyValidateMatrixComb
    jal	__glOdysseyValidateMatrixComb
    move	$a0,$s0
    andi	$v0,$s1,0x2
.L0d9698dc:
    beqz	$v0,.L0d9698ec
    # Line 2197
    nop	# was lw $t9, -30116($gp) # &__glOdysseyValidateMatrixMV
    jal	__glOdysseyValidateMatrixMV
    move	$a0,$s0
.L0d9698ec:
    andi	$v1,$s1,0x4
    beqz	$v1,.L0d969908
    # Line 2200
    andi	$a0,$s1,0x8
    # lw $t9, -30112($gp) # &__glOdysseyValidateMatrixNorm
    jal	__glOdysseyValidateMatrixNorm
    move	$a0,$s0
    andi	$a0,$s1,0x8
.L0d969908:
    beqz	$a0,.L0d969920
    # Line 2203
    andi	$a1,$s1,0x10
    # lw $t9, -30108($gp) # &__glOdysseyValidateMatrixTex
    jal	__glOdysseyValidateMatrixTex
    move	$a0,$s0
    andi	$a1,$s1,0x10
.L0d969920:
    beqz	$a1,.L0d969950
    # Line 2206
    nop	# was lw $t9, -32152($gp) # &__glOdysseyValidateClipPlanes
    bal __glOdysseyValidateClipPlanes
    move	$a0,$s0
    # Line 2207
    # lw $t9, -29716($gp) # &__glOdysseyGetNumSWClipPlanes
    jal	__glOdysseyGetNumSWClipPlanes
    move	$a0,$s0
    blez	$v0,.L0d969954
    # Line 2208
    andi	$a2,$s1,0x20
    # lw $t9, -29712($gp) # &__glOdysseyValidateSoftClipPlanes
    jal	__glOdysseyValidateSoftClipPlanes
    move	$a0,$s0
.L0d969950:
    andi	$a2,$s1,0x20
.L0d969954:
    beqz	$a2,.L0d96996c
    # Line 2212
    andi	$a3,$s1,0x40
    # lw $t9, -30656($gp) # &__glOdysseyValidateTexGen
    jal	__glOdysseyValidateTexGen
    move	$a0,$s0
    andi	$a3,$s1,0x40
.L0d96996c:
    beqz	$a3,.L0d969990
    # Line 2216
    andi	$a4,$s1,0x80
    # Line 2215
    # lw $t9, -31100($gp) # &__glOdysseyValidateLighting
    jal	__glOdysseyValidateLighting
    move	$a0,$s0
    # Line 2216
    # lw $t9, -29644($gp) # &__glOdysseyComputeLightState
    jal	__glOdysseyComputeLightState
    move	$a0,$s0
    andi	$a4,$s1,0x80
.L0d969990:
    beqz	$a4,.L0d9699a0
    # Line 2219
    nop	# was lw $t9, -31748($gp) # &__glOdysseyValidateFragment
    jal	__glOdysseyValidateFragment
    move	$a0,$s0
.L0d9699a0:
    andi	$a5,$s1,0x1000
    beqz	$a5,.L0d9699b4
    # Line 2222
    nop	# was lw $t9, -31772($gp) # &__glOdysseyValidateFog
    jal	__glOdysseyValidateFog
    move	$a0,$s0
.L0d9699b4:
    # Line 2229
    lw	$s1,26980($s2)
    and	$s1,$s1,$s4
    andi	$a6,$s1,0x400
    beqz	$a6,.L0d9699d0
    # Line 2231
    nop	# was lw $t9, -32124($gp) # &__glOdysseyValidateDispatchTable
    bal __glOdysseyValidateDispatchTable
    move	$a0,$s0
.L0d9699d0:
    beqz	$s1,.L0d9699e4
    # Line 2238
    nop	# was lw $t9, -30932($gp) # &__glOdysseySetProgram
    move	$a0,$s0
    jal	__glOdysseySetProgram
    lw	$a1,-22872($s2)
.L0d9699e4:
    lw	$t8,26980($s2)
    and	$t8,$t8,$s4
    andi	$t8,$t8,0x2000
    beqz	$t8,.L0d969a08
    ld	$s1,32($sp)
    # Line 2246
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-26896
    bal __glOdysseyValidateContextRasterMisc
    move	$a0,$s0
.L0d969a08:
    # Line 2253
    lw	$ra,26976($s2)
    ld	$s4,40($sp)
    beqz	$ra,.L0d969a24
    sw	$s3,26980($s2)
    # Line 2258
    # lw $t9, -32148($gp) # &__glOdysseyValidateHardware
    bal __glOdysseyValidateHardware
    move	$a0,$s0
.L0d969a24:
    ld	$s2,0($sp)
    ld	$ra,48($sp)
    ld	$s3,8($sp)
    ld	$s0,16($sp)
    # Line 2259
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d969a40:
    # Line 2140
    beqz	$a3,.L0d969a90
    nop
.L0d969a48:
    # Line 2163
    lbu	$at,26999($s2)
    bne	$a4,$at,.L0d969854
    # Line 2167
    nor	$s4,$s3,$zero
    # Line 2163
    lbu	$v0,26997($s2)
    # Line 2164
    li	$v1,-16385
    and	$v1,$s3,$v1
    b	.L0d969850
    movz	$s3,$v1,$v0
.L0d969a68:
    ld	$s4,40($sp)
    ld	$s1,32($sp)
    # Line 2259
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$ra,48($sp)
    # Line 2173
    sw	$s3,26980($s2)
    # Line 2259
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d969a90:
    # Line 2140
    lbu	$a0,26997($s2)
    bnez	$a0,.L0d969a48
    nop
    # Line 2143
    lbu	$a1,26998($s2)
    xor	$a1,$a4,$a1
    andi	$a5,$a2,0x59ff
    or	$s3,$s3,$a5
    # Line 2161
    li	$a3,-257
    and	$a3,$s3,$a3
    b	.L0d969a48
    movz	$s3,$a3,$a1
.end __glOdysseyValidateContext

# Function: __glOdysseyInitDefaultValues
# Declared: Line 2295 (Source lines: 2296-2959)
# Address: 0x0d969ac0 - 0x0d96a89c (Size: 3548 bytes, Frame: 208)
.ent __glOdysseyInitDefaultValues
__glOdysseyInitDefaultValues:
    # Line 2296
    addiu	$sp,$sp,-80
    sd	$s0,16($sp)
    # Line 2304
    lui	$s0,0x1
    # Line 2296
    sd	$s1,8($sp)
    # Line 2304
    addu	$s1,$s0,$a0
    # Line 2312
    li	$a5,896
    sw	$a5,-24052($s1)
    # Line 2321
    lw	$a1,-24052($s1)
    lw	$a4,-24052($s1)
    # Line 2304
    li	$a2,1
    # Line 2307
    ldc1	$f0,_lit8_bff0000000000000
    # Line 2321
    lui	$a3,0x2e00
    srl	$a4,$a4,0xa
    # Line 2307
    sdc1	$f0,26072($s1)
    # Line 2321
    andi	$a1,$a1,0x3ff
    sll	$a4,$a4,0x17
    ori	$a3,$a3,0x8000
    # Line 2304
    sb	$a2,26432($s1)
    # Line 2321
    or	$a1,$a1,$a4
    or	$a1,$a1,$a3
    sw	$a1,0($s0)
    # Line 2329
    lw	$v1,27964($s1)
    lw	$v0,27800($s1)
    sdc1	$f20,40($sp)
    addu	$v1,$v1,$v1
    # Line 2324
    sw	$zero,-26576($s1)
    # Line 2329
    addu	$v0,$v0,$v1
    lhu	$v0,0($v0)
    sh	$v0,-22860($s1)
    lbu	$at,3220($a0)
    li	$t2,10
    # Line 2296
    sd	$s3,32($sp)
    # Line 2329
    li	$t1,3
    # Line 2296
    move	$s3,$a0
    sd	$s7,24($sp)
    # Line 2329
    li	$s7,2
    beqz	$at,.L0d96a818
    sd	$ra,48($sp)
    # Line 2335
    sw	$zero,-24100($s1)
    # Line 2336
    sw	$s7,-24096($s1)
    # Line 2337
    sw	$t2,-24092($s1)
    # Line 2338
    li	$a6,14
    sw	$a6,-24088($s1)
    sd	$s5,72($sp)
    sd	$s6,56($sp)
    sd	$s4,64($sp)
.L0d969b78:
    # Line 2353
    lw	$a0,-24100($s1)
    lw	$a3,-24100($s1)
    andi	$a0,$a0,0x3ff
    srl	$a3,$a3,0xa
    sll	$a3,$a3,0x17
    lui	$a1,0x2200
    or	$a0,$a0,$a3
    ori	$a1,$a1,0x8000
    or	$a0,$a0,$a1
    sw	$a0,0($s0)
    # Line 2355
    lw	$v1,-24096($s1)
    lw	$a1,-24096($s1)
    andi	$v1,$v1,0x3ff
    srl	$a1,$a1,0xa
    sll	$a1,$a1,0x17
    lui	$a0,0x2300
    or	$v1,$v1,$a1
    ori	$a0,$a0,0x8000
    or	$v1,$v1,$a0
    sw	$v1,0($s0)
    # Line 2357
    lw	$v0,-24092($s1)
    lw	$a0,-24092($s1)
    andi	$v0,$v0,0x3ff
    srl	$a0,$a0,0xa
    sll	$a0,$a0,0x17
    lui	$v1,0x2400
    or	$v0,$v0,$a0
    ori	$v1,$v1,0x8000
    or	$v0,$v0,$v1
    sw	$v0,0($s0)
    # Line 2359
    lw	$at,-24088($s1)
    lw	$v1,-24088($s1)
    andi	$at,$at,0x3ff
    srl	$v1,$v1,0xa
    sll	$v1,$v1,0x17
    lui	$v0,0x2500
    or	$at,$at,$v1
    ori	$v0,$v0,0x8000
    or	$at,$at,$v0
    sw	$at,0($s0)
    # Line 2370
    lw	$ra,-24072($s1)
    lw	$v0,-24072($s1)
    andi	$ra,$ra,0x3ff
    srl	$v0,$v0,0xa
    sll	$v0,$v0,0x17
    lui	$at,0x2900
    or	$ra,$ra,$v0
    ori	$at,$at,0x8000
    or	$ra,$ra,$at
    sw	$ra,0($s0)
    # Line 2371
    lw	$t9,-24068($s1)
    lw	$at,-24068($s1)
    andi	$t9,$t9,0x3ff
    srl	$at,$at,0xa
    sll	$at,$at,0x17
    lui	$ra,0x2a00
    or	$t9,$t9,$at
    ori	$ra,$ra,0x8000
    or	$t9,$t9,$ra
    sw	$t9,0($s0)
    # Line 2372
    lw	$t8,-24060($s1)
    lw	$ra,-24060($s1)
    andi	$t8,$t8,0x3ff
    srl	$ra,$ra,0xa
    sll	$ra,$ra,0x17
    lui	$t9,0x2c00
    or	$t8,$t8,$ra
    ori	$t9,$t9,0x8000
    or	$t8,$t8,$t9
    sw	$t8,0($s0)
    # Line 2425
    sw	$zero,-24024($s1)
    # Line 2432
    lw	$s6,-24024($s1)
    lw	$t9,-24024($s1)
    andi	$s6,$s6,0x3ff
    srl	$t9,$t9,0xa
    sll	$t9,$t9,0x17
    lui	$t8,0x3500
    or	$s6,$s6,$t9
    ori	$t8,$t8,0x8000
    # Line 2424
    sw	$zero,27004($s1)
    # Line 2432
    or	$s6,$s6,$t8
    sw	$s6,0($s0)
    # Line 2438
    sw	$zero,-24028($s1)
    # Line 2445
    lw	$s5,-24028($s1)
    lw	$t8,-24028($s1)
    andi	$s5,$s5,0x3ff
    srl	$t8,$t8,0xa
    sll	$t8,$t8,0x17
    lui	$s6,0x3400
    or	$s5,$s5,$t8
    ori	$s6,$s6,0x8000
    or	$s5,$s5,$s6
    sw	$s5,0($s0)
    # Line 2451
    lw	$a7,-26576($s1)
    lui	$s4,0x1
    li	$s6,250
    ori	$s5,$s4,0x443
    ori	$s4,$s4,0x46
    beqz	$a7,.L0d969d1c
    sw	$zero,-26588($s1)
    # Line 2453
    sw	$zero,-26576($s1)
    sw	$s5,0($s0)
    sw	$s6,0($s0)
    sw	$s4,0($s0)
    sw	$s4,0($s0)
.L0d969d1c:
    lui	$a5,0x1
    ori	$a5,$a5,0x44c
    sw	$a5,0($s0)
    lw	$a4,-26588($s1)
    sw	$a4,0($s0)
    # Line 2459
    sw	$zero,-29332($s1)
    # Line 2460
    sw	$zero,-29328($s1)
    # Line 2462
    lw	$a3,26976($s1)
    # Line 2461
    sw	$zero,-29324($s1)
    # Line 2462
    ori	$a3,$a3,0x8000
    sw	$a3,26976($s1)
    sw	$s7,4120($zero)
    # Line 2467
    li	$a1,4096
    sw	$a1,-29460($s1)
    # Line 2468
    sw	$zero,-29456($s1)
    # Line 2470
    lw	$a0,26976($s1)
    # Line 2469
    sw	$t1,-29464($s1)
    # Line 2470
    or	$a0,$s0,$a0
    sw	$a0,26976($s1)
    sw	$s7,4120($zero)
    sd	$zero,-29720($s1)
    sd	$zero,-29712($s1)
    sd	$zero,-29704($s1)
    sd	$zero,-29696($s1)
    sd	$zero,-29688($s1)
    sd	$zero,-29680($s1)
    sd	$zero,-29672($s1)
    sd	$zero,-29664($s1)
    # Line 2477
    lw	$v1,26976($s1)
    # Line 2476
    sw	$t1,-29724($s1)
    # Line 2477
    lui	$t0,0x2
    or	$v1,$t0,$v1
    sw	$v1,26976($s1)
    sw	$s7,4120($zero)
    # Line 2482
    sw	$zero,-26844($s1)
    # Line 2483
    sw	$zero,-26840($s1)
    # Line 2484
    li	$v0,12544
    sw	$v0,-26836($s1)
    # Line 2486
    lw	$ra,26976($s1)
    # Line 2485
    li	$at,3840
    sw	$at,-26832($s1)
    # Line 2486
    ori	$ra,$ra,0x4000
    sw	$ra,26976($s1)
    sw	$s7,4120($zero)
    # Line 2491
    sw	$zero,-27268($s1)
    # Line 2499
    lui	$t9,0x100
    ori	$t9,$t9,0xaaa
    sw	$t9,-27264($s1)
    # Line 2506
    lw	$a7,26976($s1)
    # Line 2505
    li	$t8,682
    sw	$t8,-27260($s1)
    # Line 2506
    lui	$t3,0x80
    or	$a7,$a7,$t3
    sw	$a7,26976($s1)
    sw	$s7,4120($zero)
    # Line 2522
    lw	$at,-26780($s1)
    lui	$a6,0xff
    # Line 2518
    lw	$ra,-26788($s1)
    # Line 2514
    lui	$a5,0xff00
    # Line 2522
    ori	$a6,$a6,0xf000
    # Line 2526
    lw	$a3,-26576($s1)
    # Line 2522
    or	$at,$a6,$at
    # Line 2514
    ori	$a5,$a5,0xfff
    # Line 2518
    and	$ra,$a5,$ra
    # Line 2515
    li	$t3,-4096
    # Line 2520
    lw	$a4,-26784($s1)
    # Line 2523
    ori	$at,$at,0xfff
    # Line 2519
    and	$ra,$t3,$ra
    # Line 2514
    lw	$a7,-26796($s1)
    # Line 2520
    and	$a4,$a5,$a4
    # Line 2516
    lw	$t9,-26792($s1)
    # Line 2517
    li	$a1,-3073
    # Line 2514
    and	$a7,$a5,$a7
    # Line 2521
    and	$a4,$a1,$a4
    # Line 2524
    lw	$t8,-26776($s1)
    # Line 2523
    sw	$at,-26780($s1)
    # Line 2515
    and	$a7,$t3,$a7
    # Line 2521
    ori	$a4,$a4,0x800
    # Line 2519
    sw	$ra,-26788($s1)
    # Line 2516
    and	$a5,$a5,$t9
    # Line 2524
    or	$a6,$a6,$t8
    # Line 2515
    sw	$a7,-26796($s1)
    # Line 2517
    and	$a5,$a1,$a5
    # Line 2525
    and	$a1,$a1,$a6
    # Line 2521
    sw	$a4,-26784($s1)
    # Line 2525
    ori	$a1,$a1,0x800
    # Line 2526
    li	$a4,-769
    # Line 2517
    ori	$a5,$a5,0x800
    sw	$a5,-26792($s1)
    # Line 2526
    and	$a1,$a1,$a4
    ori	$a1,$a1,0x200
    beqz	$a3,.L0d969ea4
    sw	$a1,-26776($s1)
    # Line 2529
    sw	$zero,-26576($s1)
    sw	$s5,0($s0)
    sw	$s6,0($s0)
    sw	$s4,0($s0)
    sw	$s4,0($s0)
.L0d969ea4:
    # Line 2545
    lwc1	$f1,_lit_3f800000
    # Line 2529
    lui	$v0,0x1
    ori	$v1,$v0,0x407
    sw	$v1,0($s0)
    sw	$zero,0($s0)
    ori	$v0,$v0,0x1a50
    sw	$v0,0($s0)
    lw	$at,-26796($s1)
    sw	$at,0($s0)
    lw	$ra,-26792($s1)
    sw	$ra,0($s0)
    lw	$t9,-26788($s1)
    sw	$t9,0($s0)
    lw	$t8,-26784($s1)
    sw	$t8,0($s0)
    lw	$t2,-26780($s1)
    sw	$t2,0($s0)
    lw	$t1,-26776($s1)
    sw	$t1,0($s0)
    # Line 2541
    sw	$zero,-26848($s1)
    # Line 2540
    sw	$zero,-26852($s1)
    # Line 2539
    sw	$zero,-26856($s1)
    # Line 2538
    sw	$zero,-26860($s1)
    # Line 2537
    sw	$zero,-26864($s1)
    # Line 2542
    lw	$a7,26976($s1)
    # Line 2536
    sw	$zero,-26868($s1)
    # Line 2542
    ori	$a7,$a7,0x2000
    sw	$a7,26976($s1)
    # Line 2551
    mtc1	$zero,$f20
    # Line 2542
    sw	$s7,4120($zero)
    # Line 2560
    swc1	$f1,25656($s1)
    # Line 2559
    swc1	$f20,25652($s1)
    # Line 2558
    sw	$a2,25648($s1)
    # Line 2556
    swc1	$f20,25720($s1)
    # Line 2555
    swc1	$f20,25716($s1)
    # Line 2554
    swc1	$f20,25712($s1)
    # Line 2553
    swc1	$f20,25708($s1)
    # Line 2551
    swc1	$f20,25700($s1)
    # Line 2550
    swc1	$f1,25704($s1)
    # Line 2548
    swc1	$f1,25696($s1)
    # Line 2547
    swc1	$f1,25692($s1)
    # Line 2546
    swc1	$f1,25688($s1)
    # Line 2545
    swc1	$f1,25684($s1)
    # Line 2567
    lbu	$a6,3222($s3)
    beqz	$a6,.L0d96a840
    sw	$zero,1888($s3)
    # Line 2569
    # lw $t9, -32436($gp) # &__glOdyim_DrawBuffer
    jal	__glOdyim_DrawBuffer
    li	$a0,1029
    # Line 2599
    sw	$zero,-26948($s1)
.L0d969f6c:
    # Line 2598
    sw	$zero,-26952($s1)
    # Line 2599
    lw	$a0,-26576($s1)
    # Line 2597
    sw	$zero,-26956($s1)
    # Line 2596
    sw	$zero,-26960($s1)
    # Line 2599
    beqz	$a0,.L0d969f98
    # Line 2595
    sw	$zero,-26964($s1)
    # Line 2600
    sw	$zero,-26576($s1)
    sw	$s5,0($s0)
    sw	$s6,0($s0)
    sw	$s4,0($s0)
    sw	$s4,0($s0)
.L0d969f98:
    # Line 2607
    # lw $t9, -31568($gp) # &__glOdysseyImageInit
    # Line 2600
    sw	$s4,0($s0)
    sw	$s4,0($s0)
    lui	$a6,0x1
    sw	$s4,0($s0)
    ori	$a6,$a6,0x1453
    sw	$a6,0($s0)
    lw	$a5,-26964($s1)
    sw	$a5,0($s0)
    lw	$a4,-26960($s1)
    sw	$a4,0($s0)
    lw	$a3,-26956($s1)
    sw	$a3,0($s0)
    lw	$a2,-26952($s1)
    sw	$a2,0($s0)
    lw	$a1,-26948($s1)
    sw	$a1,0($s0)
    sw	$zero,-26576($s1)
    sw	$s5,0($s0)
    sw	$s6,0($s0)
    sw	$s4,0($s0)
    # Line 2607
    jal	__glOdysseyImageInit
    # Line 2600
    sw	$s4,0($s0)
    # Line 2607
    beqz	$v0,.L0d96a7e8
    # Line 2612
    nop	# was lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,2832
    # Line 2613
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,2882
    # Line 2614
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,10753
    # Line 2615
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,10754
    # Line 2616
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,0x8037
    # Line 2617
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,2884
    # Line 2618
    # lw $t9, -32452($gp) # &__glOdyim_CullFace
    jal	__glOdyim_CullFace
    li	$a0,1029
    # Line 2619
    # lw $t9, -32432($gp) # &__glOdyim_FrontFace
    jal	__glOdyim_FrontFace
    li	$a0,2305
    # Line 2620
    # lw $t9, -32384($gp) # &__glOdyim_ShadeModel
    jal	__glOdyim_ShadeModel
    li	$a0,7425
    # Line 2621
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,0x8400
    # Line 2622
    # lw $t9, -31104($gp) # &__glOdyim_LightModeli
    li	$a1,0x81f9
    jal	__glOdyim_LightModeli
    li	$a0,0x81f8
    # Line 2623
    # lw $t9, -31768($gp) # &__glOdyim_Fogfv
    la	$a1,sub_0db00000
    li	$a0,2918
    jal	__glOdyim_Fogfv
    addiu	$a1,$a1,-25992
    # Line 2624
    # lw $t9, -31756($gp) # &__glOdyim_Fogi
    move	$a1,$zero
    jal	__glOdyim_Fogi
    li	$a0,2913
    # Line 2633
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    # Line 2630
    lw	$a2,31740($s3)
    # Line 2633
    li	$a0,3089
    # Line 2630
    ori	$a2,$a2,0x2000
    # Line 2631
    lui	$a3,0x200
    or	$a2,$a2,$a3
    # Line 2633
    jal	__glOdyim_Disable
    # Line 2631
    sw	$a2,31740($s3)
    # Line 2634
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,3008
    # Line 2635
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,2960
    # Line 2636
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,2929
    # Line 2637
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,3042
    # Line 2638
    # lw $t9, -32496($gp) # &__glOdyim_Enable
    jal	__glOdyim_Enable
    li	$a0,3024
    # Line 2639
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,3057
    # Line 2640
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,3058
    lbu	$a3,3220($s3)
    beqz	$a3,.L0d96a854
    # Line 2644
    nop	# was lw $t9, -32460($gp) # &__glOdyim_ColorMask
    # Line 2642
    # lw $t9, -32460($gp) # &__glOdyim_ColorMask
    li	$a3,1
    li	$a2,1
    li	$a1,1
    jal	__glOdyim_ColorMask
    li	$a0,1
    # Line 2647
    # lw $t9, -32444($gp) # &__glOdyim_DepthMask
.L0d96a140:
    jal	__glOdyim_DepthMask
    li	$a0,1
    # Line 2648
    # lw $t9, -32376($gp) # &__glOdyim_StencilMask
    jal	__glOdyim_StencilMask
    li	$a0,-1
    # Line 2649
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,2912
    # Line 2650
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,3552
    # Line 2651
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,3553
    # Line 2652
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,0x806f
    # Line 2653
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,2896
    # Line 2655
    # lw $t9, -32392($gp) # &__glOdyim_PolygonMode
    li	$a1,6914
    jal	__glOdyim_PolygonMode
    li	$a0,1032
    # Line 2656
    # lw $t9, -32472($gp) # &__glOdyim_AlphaFunc
    mov.s	$f13,$f20
    jal	__glOdyim_AlphaFunc
    li	$a0,519
    # Line 2657
    # lw $t9, -32380($gp) # &__glOdyim_StencilFunc
    li	$a2,-1
    move	$a1,$zero
    jal	__glOdyim_StencilFunc
    li	$a0,519
    # Line 2658
    # lw $t9, -32372($gp) # &__glOdyim_StencilOp
    li	$a2,7680
    li	$a1,7680
    jal	__glOdyim_StencilOp
    li	$a0,7680
    # Line 2659
    # lw $t9, -32448($gp) # &__glOdyim_DepthFunc
    jal	__glOdyim_DepthFunc
    li	$a0,513
    # Line 2660
    # lw $t9, -32416($gp) # &__glOdyim_LogicOp
    jal	__glOdyim_LogicOp
    li	$a0,5379
    # Line 2662
    # lw $t9, -32464($gp) # &__glOdyim_BlendEquationEXT
    jal	__glOdyim_BlendEquationEXT
    li	$a0,0x8006
    # Line 2663
    # lw $t9, -32468($gp) # &__glOdyim_BlendFunc
    move	$a1,$zero
    jal	__glOdyim_BlendFunc
    li	$a0,1
    # Line 2664
    mov.s	$f12,$f20
    # lw $t9, -32364($gp) # &__glOdyim_BlendColorEXT
    mov.s	$f13,$f20
    mov.s	$f14,$f20
    jal	__glOdyim_BlendColorEXT
    mov.s	$f15,$f20
    # Line 2668
    # lw $t9, -32424($gp) # &__glOdyim_LineStipple
    li	$a1,0xffff
    # Line 2666
    lw	$a4,-26972($s1)
    lui	$a5,0x80
    # Line 2668
    li	$a0,1
    # Line 2666
    nor	$a5,$a5,$zero
    and	$a4,$a4,$a5
    # Line 2668
    jal	__glOdyim_LineStipple
    # Line 2666
    sw	$a4,-26972($s1)
    # Line 2669
    # lw $t9, -32420($gp) # &__glOdyim_LineWidth
    jal	__glOdyim_LineWidth
    lwc1	$f12,_lit_3f800000
    # Line 2670
    # lw $t9, -32396($gp) # &__glOdyim_PointSize
    jal	__glOdyim_PointSize
    lwc1	$f12,_lit_3f800000
    sd	$s2,0($sp)
    # Line 2672
    # lw $t9, -27352($gp) # &__glim_PolygonStipple
    la	$s2,sub_0daf0000
    addiu	$s2,$s2,-32616
    jal	__glim_PolygonStipple
    addiu	$a0,$s2,128
    # Line 2674
    # lw $t9, -30012($gp) # &__glOdyim_DepthRange
    ldc1	$f13,_lit8_3ff0000000000000
    jal	__glOdyim_DepthRange
    dmtc1	$zero,$f12
    # Line 2676
    # lw $t9, -32360($gp) # &__glOdyim_PolygonOffset
    mov.s	$f12,$f20
    jal	__glOdyim_PolygonOffset
    mov.s	$f13,$f20
    lbu	$t8,3220($s3)
    beqz	$t8,.L0d96a87c
    # Line 2682
    nop	# was lw $t9, -17976($gp) # &__glOdyim_Color4fv
    jal	__glOdyim_Color4fv
    addiu	$a0,$s2,80
    # Line 2683
    # lw $t9, -17852($gp) # &__glOdyim_ScratchIndexi
    jal	__glOdyim_ScratchIndexi
    li	$a0,1
    # Line 2688
    # lw $t9, -30480($gp) # &__glOdyim_EdgeFlag
.L0d96a2bc:
    jal	__glOdyim_EdgeFlag
    li	$a0,1
    # Line 2689
    # lw $t9, -18164($gp) # &__glOdyim_Normal3fv
    jal	__glOdyim_Normal3fv
    move	$a0,$s2
    # Line 2690
    # lw $t9, -18204($gp) # &__glOdyim_TexCoord4fv
    jal	__glOdyim_TexCoord4fv
    addiu	$a0,$s2,48
    # Line 2691
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    addiu	$a2,$s2,96
    li	$a1,4608
    jal	__glOdyim_Materialfv
    li	$a0,1032
    # Line 2692
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    addiu	$a2,$s2,112
    li	$a1,4609
    jal	__glOdyim_Materialfv
    li	$a0,1032
    # Line 2693
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    addiu	$a2,$s2,48
    li	$a1,4610
    jal	__glOdyim_Materialfv
    li	$a0,1032
    # Line 2694
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    addiu	$a2,$s2,48
    li	$a1,5632
    jal	__glOdyim_Materialfv
    li	$a0,1032
    # Line 2695
    # lw $t9, -32408($gp) # &__glOdyim_Materialf
    li	$a1,5633
    mov.s	$f14,$f20
    jal	__glOdyim_Materialf
    li	$a0,1032
    # Line 2696
    # lw $t9, -32412($gp) # &__glOdyim_Materialfv
    addiu	$a2,$s2,32
    li	$a1,5635
    jal	__glOdyim_Materialfv
    li	$a0,1032
    # Line 2698
    # lw $t9, -31708($gp) # &__glOdyim_FragmentMaterialfvSGIX
    addiu	$a2,$s2,96
    li	$a1,4608
    jal	__glOdyim_FragmentMaterialfvSGIX
    li	$a0,1032
    # Line 2699
    # lw $t9, -31708($gp) # &__glOdyim_FragmentMaterialfvSGIX
    addiu	$a2,$s2,112
    li	$a1,4609
    jal	__glOdyim_FragmentMaterialfvSGIX
    li	$a0,1032
    # Line 2700
    # lw $t9, -31708($gp) # &__glOdyim_FragmentMaterialfvSGIX
    addiu	$a2,$s2,48
    li	$a1,4610
    jal	__glOdyim_FragmentMaterialfvSGIX
    li	$a0,1032
    # Line 2701
    # lw $t9, -31708($gp) # &__glOdyim_FragmentMaterialfvSGIX
    addiu	$a2,$s2,48
    li	$a1,5632
    jal	__glOdyim_FragmentMaterialfvSGIX
    li	$a0,1032
    # Line 2702
    # lw $t9, -31704($gp) # &__glOdyim_FragmentMaterialfSGIX
    li	$a1,5633
    mov.s	$f14,$f20
    jal	__glOdyim_FragmentMaterialfSGIX
    li	$a0,1032
    # Line 2703
    # lw $t9, -31676($gp) # &__glOdyim_LightEnviSGIX
    li	$a1,260
    jal	__glOdyim_LightEnviSGIX
    li	$a0,0x8407
    # Line 2704
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,0x8401
    # Line 2706
    # lw $t9, -31744($gp) # &__glOdyim_FragmentLightfvSGIX
    addiu	$a2,$s2,48
    li	$a1,4608
    jal	__glOdyim_FragmentLightfvSGIX
    li	$a0,0x840c
    # Line 2707
    # lw $t9, -31744($gp) # &__glOdyim_FragmentLightfvSGIX
    addiu	$a2,$s2,80
    li	$a1,4609
    jal	__glOdyim_FragmentLightfvSGIX
    li	$a0,0x840c
    # Line 2708
    # lw $t9, -31744($gp) # &__glOdyim_FragmentLightfvSGIX
    addiu	$a2,$s2,80
    li	$a1,4610
    jal	__glOdyim_FragmentLightfvSGIX
    li	$a0,0x840c
    # Line 2709
    # lw $t9, -31744($gp) # &__glOdyim_FragmentLightfvSGIX
    addiu	$a2,$s2,64
    li	$a1,4611
    jal	__glOdyim_FragmentLightfvSGIX
    li	$a0,0x840c
    # Line 2710
    # lw $t9, -31744($gp) # &__glOdyim_FragmentLightfvSGIX
    addiu	$a2,$s2,16
    li	$a1,4612
    jal	__glOdyim_FragmentLightfvSGIX
    li	$a0,0x840c
    # Line 2712
    # lw $t9, -31740($gp) # &__glOdyim_FragmentLightfSGIX
    li	$a1,4613
    mov.s	$f14,$f20
    jal	__glOdyim_FragmentLightfSGIX
    li	$a0,0x840c
    # Line 2713
    # lw $t9, -31740($gp) # &__glOdyim_FragmentLightfSGIX
    li	$a1,4614
    lwc1	$f14,_lit_43340000
    jal	__glOdyim_FragmentLightfSGIX
    li	$a0,0x840c
    # Line 2714
    # lw $t9, -31740($gp) # &__glOdyim_FragmentLightfSGIX
    li	$a1,4615
    lwc1	$f14,_lit_3f800000
    jal	__glOdyim_FragmentLightfSGIX
    li	$a0,0x840c
    # Line 2715
    # lw $t9, -31740($gp) # &__glOdyim_FragmentLightfSGIX
    li	$a1,4616
    mov.s	$f14,$f20
    jal	__glOdyim_FragmentLightfSGIX
    li	$a0,0x840c
    # Line 2716
    # lw $t9, -31740($gp) # &__glOdyim_FragmentLightfSGIX
    li	$a1,4617
    mov.s	$f14,$f20
    jal	__glOdyim_FragmentLightfSGIX
    li	$a0,0x840c
    # Line 2718
    # lw $t9, -31728($gp) # &__glOdyim_FragmentLightModelfvSGIX
    addiu	$a1,$s2,96
    jal	__glOdyim_FragmentLightModelfvSGIX
    li	$a0,0x840a
    # Line 2719
    # lw $t9, -31716($gp) # &__glOdyim_FragmentLightModeliSGIX
    move	$a1,$zero
    jal	__glOdyim_FragmentLightModeliSGIX
    li	$a0,0x8408
    # Line 2720
    # lw $t9, -31716($gp) # &__glOdyim_FragmentLightModeliSGIX
    move	$a1,$zero
    jal	__glOdyim_FragmentLightModeliSGIX
    li	$a0,0x8409
    # Line 2721
    # lw $t9, -31716($gp) # &__glOdyim_FragmentLightModeliSGIX
    li	$a1,7425
    jal	__glOdyim_FragmentLightModeliSGIX
    li	$a0,0x840b
    # Line 2791
    swc1	$f20,-24592($s1)
    # Line 2735
    swc1	$f20,-24640($s1)
    # Line 2732
    lwc1	$f15,_lit_3f800000
    # Line 2733
    lwc1	$f14,_lit_3f000000
    # Line 2734
    lwc1	$f13,_lit_bf800000
    # Line 2737
    lwc1	$f12,_lit_403504f3
    # Line 2738
    lwc1	$f11,_lit_40400000
    # Line 2739
    lwc1	$f10,_lit_3fb504f3
    # Line 2740
    lwc1	$f9,_lit_3eb504f3
    # Line 2742
    lwc1	$f8,_lit_c0000000
    # Line 2743
    lwc1	$f7,_lit_bfb504f3
    # Line 2744
    lwc1	$f6,_lit_bf3504f3
    # Line 2745
    lwc1	$f5,_lit_bf000000
    # Line 2787
    lwc1	$f4,_lit_48000000
    # Line 2789
    lwc1	$f2,_lit_3d000000
    # Line 2788
    lwc1	$f3,_lit_c2000000
    # Line 2789
    swc1	$f2,-24596($s1)
    # Line 2788
    swc1	$f3,-24600($s1)
    # Line 2787
    swc1	$f4,-24604($s1)
    # Line 2745
    swc1	$f5,-24608($s1)
    # Line 2744
    swc1	$f6,-24612($s1)
    # Line 2743
    swc1	$f7,-24616($s1)
    # Line 2742
    swc1	$f8,-24620($s1)
    # Line 2740
    swc1	$f9,-24624($s1)
    # Line 2739
    swc1	$f10,-24628($s1)
    # Line 2738
    swc1	$f11,-24632($s1)
    # Line 2727
    li	$v0,480
    sw	$v0,-24040($s1)
    # Line 2799
    lw	$ra,-24040($s1)
    lw	$at,-24040($s1)
    # Line 2737
    swc1	$f12,-24636($s1)
    # Line 2799
    lui	$a2,0x3100
    # Line 2734
    swc1	$f13,-24644($s1)
    # Line 2799
    srl	$at,$at,0xa
    # Line 2733
    swc1	$f14,-24648($s1)
    # Line 2799
    andi	$ra,$ra,0x3ff
    sll	$at,$at,0x17
    ori	$a2,$a2,0x8000
    # Line 2732
    swc1	$f15,-24652($s1)
    # Line 2799
    or	$ra,$ra,$at
    # Line 2800
    lui	$t9,0x9080
    # Line 2799
    or	$ra,$a2,$ra
    sw	$ra,0($s0)
    li	$s2,1
    # Line 2800
    ori	$t9,$t9,0xbda2
    sw	$t9,0($s0)
    # Line 2803
    lwc1	$f5,-24652($s1)
    swc1	$f5,0($s0)
    lwc1	$f4,-24648($s1)
    swc1	$f4,0($s0)
    lwc1	$f3,-24644($s1)
    swc1	$f3,0($s0)
    lwc1	$f2,-24640($s1)
    swc1	$f2,0($s0)
    lwc1	$f1,-24636($s1)
    swc1	$f1,0($s0)
    lwc1	$f0,-24632($s1)
    swc1	$f0,0($s0)
    lwc1	$f31,-24628($s1)
    swc1	$f31,0($s0)
    lwc1	$f29,-24624($s1)
    swc1	$f29,0($s0)
    lwc1	$f27,-24620($s1)
    swc1	$f27,0($s0)
    lwc1	$f25,-24616($s1)
    swc1	$f25,0($s0)
    lwc1	$f23,-24612($s1)
    swc1	$f23,0($s0)
    lwc1	$f21,-24608($s1)
    swc1	$f21,0($s0)
    lwc1	$f19,-24604($s1)
    swc1	$f19,0($s0)
    lwc1	$f18,-24600($s1)
    swc1	$f18,0($s0)
    lwc1	$f17,-24596($s1)
    swc1	$f17,0($s0)
    lwc1	$f16,-24592($s1)
    ldc1	$f20,40($sp)
    swc1	$f16,0($s0)
    # Line 2808
    sw	$zero,-24040($s1)
    # Line 2816
    lw	$v1,-24040($s1)
    lw	$a1,-24040($s1)
    # Line 2819
    # lw $t9, -31136($gp) # &__glOdysseyInitLighting
    # Line 2816
    srl	$a1,$a1,0xa
    andi	$v1,$v1,0x3ff
    sll	$a1,$a1,0x17
    # Line 2819
    move	$a0,$s3
    # Line 2816
    or	$v1,$v1,$a1
    or	$v1,$a2,$v1
    # Line 2819
    jal	__glOdysseyInitLighting
    # Line 2816
    sw	$v1,0($s0)
    # Line 2820
    # lw $t9, -31684($gp) # &__glOdysseyInitFragmentLighting
    jal	__glOdysseyInitFragmentLighting
    move	$a0,$s3
    # Line 2821
    # lw $t9, -31680($gp) # &__glOdysseyInitFragmentMaterial
    jal	__glOdysseyInitFragmentMaterial
    move	$a0,$s3
    # Line 2824
    # lw $t9, -30652($gp) # &__glOdysseyTextureDriverInit
    jal	__glOdysseyTextureDriverInit
    move	$a0,$s3
    # Line 2897
    lui	$t0,0x100
    lw	$a7,-26972($s1)
    nor	$t0,$t0,$zero
    # Line 2899
    lw	$a5,26976($s1)
    # Line 2897
    and	$a7,$a7,$t0
    sw	$a7,-26972($s1)
    # Line 2899
    lui	$a6,0x20
    or	$a5,$a5,$a6
    sw	$a5,26976($s1)
    # Line 2903
    lui	$a4,0xff
    # Line 2899
    sw	$s7,4120($zero)
    # Line 2903
    ori	$a4,$a4,0xffff
    sw	$a4,31840($s3)
    # Line 2904
    sw	$a4,31844($s3)
    # Line 2905
    sw	$a4,31848($s3)
    # Line 2906
    li	$a3,255
    sw	$a3,31852($s3)
    lw	$a2,-26576($s1)
    beqz	$a2,.L0d96a6d4
    # Line 2907
    lui	$ra,0x1
    sw	$zero,-26576($s1)
    sw	$s5,0($s0)
    sw	$s6,0($s0)
    sw	$s4,0($s0)
    sw	$s4,0($s0)
    lui	$ra,0x1
.L0d96a6d4:
    ori	$ra,$ra,0x1023
    sw	$ra,0($s0)
    lw	$t9,31840($s3)
    sw	$t9,0($s0)
    lw	$t8,31844($s3)
    sw	$t8,0($s0)
    lw	$t3,31848($s3)
    sw	$t3,0($s0)
    lw	$t2,31852($s3)
    sw	$t2,0($s0)
    # Line 2910
    lw	$t2,-26576($s1)
    lw	$t1,3704($s3)
    lw	$t8,-26584($s1)
    li	$t3,-4096
    and	$t3,$t3,$t8
    andi	$t1,$t1,0xfff
    or	$t1,$t1,$t3
    beqz	$t2,.L0d96a734
    sw	$t1,-26584($s1)
    # Line 2913
    sw	$zero,-26576($s1)
    sw	$s5,0($s0)
    sw	$s6,0($s0)
    sw	$s4,0($s0)
    sw	$s4,0($s0)
.L0d96a734:
    lui	$a0,0x1
    ori	$a0,$a0,0x456
    sw	$a0,0($s0)
    lw	$v1,-26584($s1)
    sw	$v1,0($s0)
    # Line 2928
    lw	$v0,-26576($s1)
    li	$at,13
    beqz	$v0,.L0d96a76c
    sw	$at,-26580($s1)
    # Line 2930
    sw	$zero,-26576($s1)
    sw	$s5,0($s0)
    sw	$s6,0($s0)
    sw	$s4,0($s0)
    sw	$s4,0($s0)
.L0d96a76c:
    ld	$s5,72($sp)
    ld	$s6,56($sp)
    ld	$s4,64($sp)
    # Line 2944
    la	$a0,sub_0daf0000
    # Line 2930
    lui	$a1,0x1
    # Line 2944
    # lw $t9, -17004($gp) # &getenv
    # Line 2930
    ori	$a1,$a1,0x457
    sw	$a1,0($s0)
    lw	$a1,-26580($s1)
    # Line 2944
    addiu	$a0,$a0,-31864
    jal	getenv
    # Line 2930
    sw	$a1,0($s0)
    # Line 2944
    lui	$a0,0x2
    ld	$ra,48($sp)
    beqz	$v0,.L0d96a7b4
    addu	$a0,$a0,$s3
    # Line 2945
    b	.L0d96a7b8
    sb	$s2,7928($a0)
.L0d96a7b4:
    # Line 2947
    sb	$zero,7928($a0)
.L0d96a7b8:
    # Line 2959
    ld	$s0,16($sp)
    # Line 2956
    li	$a1,-1
    sw	$a1,26980($s1)
    sw	$s7,4120($zero)
    # Line 2957
    sb	$s2,26996($s1)
    # Line 2959
    ld	$s1,8($sp)
    ld	$s2,0($sp)
    li	$v0,1
    ld	$s3,32($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d96a7e8:
    ld	$s5,72($sp)
    ld	$s4,64($sp)
    ld	$s6,56($sp)
    ldc1	$f20,40($sp)
    ld	$s0,16($sp)
    ld	$ra,48($sp)
    ld	$s1,8($sp)
    # Line 2607
    move	$v0,$zero
    # Line 2959
    ld	$s3,32($sp)
    ld	$s7,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d96a818:
    # Line 2340
    sw	$a2,-24100($s1)
    # Line 2341
    sw	$t1,-24096($s1)
    # Line 2342
    li	$a4,11
    sw	$a4,-24092($s1)
    # Line 2343
    li	$a3,15
    sw	$a3,-24088($s1)
    sd	$s5,72($sp)
    sd	$s6,56($sp)
    b	.L0d969b78
    sd	$s4,64($sp)
.L0d96a840:
    # Line 2571
    # lw $t9, -32436($gp) # &__glOdyim_DrawBuffer
    jal	__glOdyim_DrawBuffer
    li	$a0,1028
    b	.L0d969f6c
    # Line 2599
    sw	$zero,-26948($s1)
.L0d96a854:
    # Line 2644
    li	$a3,1
    li	$a2,1
    li	$a1,1
    jalr	$t9
    li	$a0,1
    # Line 2645
    # lw $t9, -32428($gp) # &__glOdyim_IndexMask
    jal	__glOdyim_IndexMask
    li	$a0,-1
    b	.L0d96a140
    # Line 2647
    nop	# was lw $t9, -32444($gp) # &__glOdyim_DepthMask
.L0d96a87c:
    # Line 2685
    # lw $t9, -17972($gp) # &__glOdyim_ScratchColor4fv
    jal	__glOdyim_ScratchColor4fv
    addiu	$a0,$s2,80
    # Line 2686
    # lw $t9, -17856($gp) # &__glOdyim_Indexi
    jal	__glOdyim_Indexi
    li	$a0,1
    b	.L0d96a2bc
    # Line 2688
    nop	# was lw $t9, -30480($gp) # &__glOdyim_EdgeFlag
.end __glOdysseyInitDefaultValues

# Function: HWInit
# Declared: Line 2967 (Source lines: 2968-3034)
# Address: 0x0d96a8a0 - 0x0d96a950 (Size: 176 bytes, Frame: 16)
.ent HWInit
HWInit:
    # Line 3007
    lui	$a1,0x1
    addu	$at,$a1,$a0
    sw	$a1,27756($at)
    # Line 3014
    lw	$t9,40($a0)
    # Line 2968
    addiu	$sp,$sp,-16
    sd	$s0,8($sp)
    # Line 3014
    nop
    sd	$ra,0($sp)
    jalr	$t9
    # Line 2968
    move	$s0,$a0
    # Line 3015
    lw	$t9,44($s0)
    lui	$a1,0x1
    move	$a0,$s0
    jalr	$t9
    # Line 3014
    sw	$v0,31560($s0)
    # Line 3015
    li	$v1,-1
    beq	$v0,$v1,.L0d96a91c
    sw	$v0,31564($s0)
    # Line 3021
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,21264
    bal __glOdyim_SoftClear
    move	$a0,$s0
    # Line 3027
    # lw $t9, -31004($gp) # &__glOdysseyInitKernel
    jal	__glOdysseyInitKernel
    move	$a0,$s0
    beqz	$v0,.L0d96a930
    # Line 3034
    ld	$ra,0($sp)
    li	$v0,1
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96a91c:
    ld	$ra,0($sp)
    # Line 3017
    move	$v0,$zero
    # Line 3034
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96a930:
    # Line 3029
    lw	$t9,48($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 3034
    ld	$ra,0($sp)
    # Line 3031
    move	$v0,$zero
    # Line 3034
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end HWInit

# Function: SWInit
# Declared: Line 3042 (Source lines: 3043-3367)
# Address: 0x0d96a950 - 0x0d96aefc (Size: 1452 bytes, Frame: 240)
.ent SWInit
SWInit:
    # Line 3051
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 3043
    addiu	$sp,$sp,-112
    # Line 3051
    addiu	$t9,$t9,31680
    # Line 3043
    sd	$s0,80($sp)
    sd	$ra,88($sp)
    # Line 3051
    bal __glOdysseyFindWindowSize
    # Line 3043
    move	$s0,$a0
    # Line 3051
    beqz	$v0,.L0d96ae58
    # Line 3056
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,30976
    bal __glOdysseyFindWindowSize
    move	$a0,$s0
    # Line 3061
    # lw $t9, -26808($gp) # &__glSoftResetContext
    jal	__glSoftResetContext
    move	$a0,$s0
    # Line 3075
    lwc1	$f3,_lit_34000000
    # Line 3079
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 3068
    lwc1	$f0,3540($s0)
    lwc1	$f1,_lit_bb800000
    # Line 3067
    lwc1	$f2,_lit_3b800000
    # Line 3075
    swc1	$f3,508($s0)
    # Line 3079
    addiu	$t9,$t9,-25920
    # Line 3067
    swc1	$f2,3676($s0)
    # Line 3068
    add.s	$f0,$f0,$f1
    # Line 3079
    move	$a0,$s0
    bal __glOdysseyValidateContext
    # Line 3068
    swc1	$f0,3680($s0)
    # Line 3079
    beqz	$v0,.L0d96ae6c
    # Line 3367
    ld	$ra,88($sp)
    # Line 3084
    # lw $t9, -29256($gp) # &__glOdysseyInitHyperpipeState
    lui	$a0,0x2
    ori	$a0,$a0,0x1ef0
    jal	__glOdysseyInitHyperpipeState
    addu	$a0,$s0,$a0
    # Line 3091
    # lw $t9, -17004($gp) # &getenv
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-31840
    lui	$a0,0x1
    beqz	$v0,.L0d96aa04
    addu	$a0,$s0,$a0
    sd	$a0,104($sp)
    # Line 3092
    sw	$zero,26840($a0)
    b	.L0d96aa14
    sd	$s1,96($sp)
.L0d96aa04:
    sd	$a0,104($sp)
    # Line 3094
    li	$a1,1
    sw	$a1,26840($a0)
    sd	$s1,96($sp)
.L0d96aa14:
    # Line 3099
    lwc1	$f4,_lit_428c0000
    # Line 3100
    # lw $t9, -17004($gp) # &getenv
    la	$a0,sub_0daf0000
    # Line 3099
    lui	$s1,0x2
    addu	$s1,$s0,$s1
    # Line 3100
    addiu	$a0,$a0,-31808
    jal	getenv
    # Line 3099
    swc1	$f4,7924($s1)
    # Line 3100
    beqz	$v0,.L0d96aa84
    sd	$v0,24($sp)
    # Line 3103
    # lw $t9, -16980($gp) # &sscanf
    addiu	$a2,$sp,0
    ld	$a0,24($sp)
    jal	sscanf
    addiu	$a1,$gp,-13664
    li	$t9,1
    # Line 3104
    lwc1	$f4,0($sp)
    # Line 3103
    bne	$v0,$t9,.L0d96ae38
    # Line 3104
    mtc1	$zero,$f5
    lwc1	$f6,_lit_42b40000
    c.lt.s	$f4,$f5
    bc1t	.L0d96aed8
    nop
    c.le.s $f6,$f4
    bc1t .L0d96aed8
    nop
    b	.L0d96aa88
    # Line 3107
    swc1	$f4,7924($s1)
.L0d96aa84:
    # Line 3110
    lwc1	$f4,7924($s1)
.L0d96aa88:
    # Line 3113
    ldc1	$f14,_lit8_400921fb54442d18
    cvt.d.s	$f12,$f4
    ldc1	$f13,_lit8_4066800000000000
    mul.d	$f12,$f12,$f14
    div.d	$f12,$f12,$f13
    # lw $t9, -16976($gp) # &tanf
    jal	tanf
    cvt.s.d	$f12,$f12
    # Line 3122
    li	$a1,4352
    sw	$a1,-25160($s1)
    # Line 3123
    # lw $t9, -17004($gp) # &getenv
    la	$a0,sub_0daf0000
    # Line 3121
    sb	$zero,-25164($s1)
    # Line 3113
    swc1	$f0,7924($s1)
    # Line 3123
    jal	getenv
    addiu	$a0,$a0,-31640
    beqz	$v0,.L0d96aaf8
    sd	$v0,72($sp)
    # Line 3125
    # lw $t9, -16972($gp) # &strcmp
    la	$a1,sub_0daf0000
    ld	$a0,72($sp)
    jal	strcmp
    addiu	$a1,$a1,-31616
    bnez	$v0,.L0d96ae0c
    # Line 3127
    nop	# was lw $t9, -16972($gp) # &strcmp
    # Line 3126
    sb	$zero,-25164($s1)
.L0d96aaf0:
    # Line 3139
    b	.L0d96ab1c
    move	$v0,$zero
.L0d96aaf8:
    # Line 3136
    lbu	$v0,-25164($s1)
.L0d96aafc:
    beqz	$v0,.L0d96aaf0
    nop
    # Line 3139
    lw	$a2,-25160($s1)
    li	$a3,2
    xori	$a2,$a2,0x1102
    li	$v0,3
    sltiu	$a2,$a2,1
    movz	$v0,$a3,$a2
.L0d96ab1c:
    # Line 3146
    la	$a0,sub_0daf0000
    # lw $t9, -17004($gp) # &getenv
    # Line 3144
    lwc1	$f15,_lit_3d800000
    # Line 3139
    sw	$v0,-25156($s1)
    # Line 3146
    addiu	$a0,$a0,-31504
    jal	getenv
    # Line 3144
    swc1	$f15,-25200($s1)
    # Line 3146
    beqz	$v0,.L0d96ab80
    sd	$v0,32($sp)
    # Line 3149
    # lw $t9, -16980($gp) # &sscanf
    addiu	$a2,$sp,4
    ld	$a0,32($sp)
    jal	sscanf
    addiu	$a1,$gp,-13664
    li	$a2,1
    bne	$v0,$a2,.L0d96ab68
    # Line 3150
    lwc1	$f16,4($sp)
    b	.L0d96ab80
    swc1	$f16,-25200($s1)
.L0d96ab68:
    # Line 3152
    lw	$t9,16($s0)
    la	$a1,sub_0daf0000
    move	$a0,$s0
    ld	$a2,32($sp)
    jalr	$t9
    addiu	$a1,$a1,-31472
.L0d96ab80:
    # Line 3165
    lwc1	$f17,_lit_46000000
    # Line 3175
    la	$a0,sub_0daf0000
    # Line 3171
    lwc1	$f18,_lit_3b000000
    # Line 3172
    lwc1	$f19,_lit_3c000000
    # Line 3175
    # lw $t9, -17004($gp) # &getenv
    # Line 3172
    swc1	$f19,-25176($s1)
    # Line 3171
    swc1	$f18,-25180($s1)
    # Line 3175
    addiu	$a0,$a0,-31408
    jal	getenv
    # Line 3165
    swc1	$f17,-25196($s1)
    # Line 3175
    beqz	$v0,.L0d96abf0
    sd	$v0,40($sp)
    # Line 3178
    # lw $t9, -16980($gp) # &sscanf
    addiu	$a2,$sp,8
    ld	$a0,40($sp)
    jal	sscanf
    addiu	$a1,$gp,-13664
    li	$a2,1
    bne	$v0,$a2,.L0d96abd8
    # Line 3179
    lwc1	$f21,8($sp)
    b	.L0d96abf0
    swc1	$f21,-25196($s1)
.L0d96abd8:
    # Line 3181
    lw	$t9,16($s0)
    la	$a1,sub_0daf0000
    move	$a0,$s0
    ld	$a2,40($sp)
    jalr	$t9
    addiu	$a1,$a1,-31376
.L0d96abf0:
    # Line 3185
    # lw $t9, -17004($gp) # &getenv
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-31312
    beqz	$v0,.L0d96ac48
    sd	$v0,48($sp)
    # Line 3188
    # lw $t9, -16980($gp) # &sscanf
    addiu	$a2,$sp,12
    ld	$a0,48($sp)
    jal	sscanf
    addiu	$a1,$gp,-13664
    li	$a2,1
    bne	$v0,$a2,.L0d96ac30
    # Line 3189
    lwc1	$f23,12($sp)
    b	.L0d96ac48
    swc1	$f23,-25180($s1)
.L0d96ac30:
    # Line 3191
    lw	$t9,16($s0)
    la	$a1,sub_0daf0000
    move	$a0,$s0
    ld	$a2,48($sp)
    jalr	$t9
    addiu	$a1,$a1,-31272
.L0d96ac48:
    # Line 3195
    # lw $t9, -17004($gp) # &getenv
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-31208
    beqz	$v0,.L0d96acb8
    sd	$v0,56($sp)
    # Line 3198
    # lw $t9, -16980($gp) # &sscanf
    addiu	$a2,$sp,16
    ld	$a0,56($sp)
    jal	sscanf
    addiu	$a1,$gp,-13664
    li	$a2,1
    # Line 3199
    lwc1	$f25,16($sp)
    # Line 3198
    bne	$v0,$a2,.L0d96aca0
    # Line 3199
    ldc1	$f29,_lit8_4000000000000000
    lwc1	$f27,-25180($s1)
    cvt.d.s	$f27,$f27
    cvt.d.s	$f25,$f25
    madd.d	$f25,$f25,$f27,$f29
    cvt.s.d	$f25,$f25
    b	.L0d96acb8
    swc1	$f25,-25176($s1)
.L0d96aca0:
    # Line 3201
    lw	$t9,16($s0)
    la	$a1,sub_0daf0000
    move	$a0,$s0
    ld	$a2,56($sp)
    jalr	$t9
    addiu	$a1,$a1,-31168
.L0d96acb8:
    # Line 3215
    li	$a2,16
    sw	$a2,-25148($s1)
    # Line 3217
    # lw $t9, -17004($gp) # &getenv
    la	$a0,sub_0daf0000
    # Line 3206
    la	$a1,__glOdysseyVertexWARClip
    sw	$a1,-25168($s1)
    # Line 3217
    jal	getenv
    addiu	$a0,$a0,-31104
    beqz	$v0,.L0d96ad20
    sd	$v0,64($sp)
    # Line 3220
    # lw $t9, -16980($gp) # &sscanf
    addiu	$a2,$sp,20
    ld	$a0,64($sp)
    jal	sscanf
    addiu	$a1,$gp,-13640
    li	$a4,1
    bne	$v0,$a4,.L0d96ad08
    # Line 3221
    lw	$a5,20($sp)
    b	.L0d96ad20
    sw	$a5,-25148($s1)
.L0d96ad08:
    # Line 3223
    lw	$t9,16($s0)
    la	$a1,sub_0daf0000
    move	$a0,$s0
    ld	$a2,64($sp)
    jalr	$t9
    addiu	$a1,$a1,-31072
.L0d96ad20:
    # Line 3235
    la	$a0,sub_0daf0000
    # Line 3229
    li	$a1,0x9588
    # Line 3235
    # lw $t9, -17004($gp) # &getenv
    # Line 3229
    addu	$a1,$s0,$a1
    # Line 3230
    lui	$a2,0x1
    # Line 3229
    sw	$a1,4128($zero)
    # Line 3230
    ori	$a2,$a2,0x9d90
    # Line 3235
    addiu	$a0,$a0,-31016
    # Line 3230
    addu	$a2,$s0,$a2
    # Line 3235
    jal	getenv
    # Line 3230
    sw	$a2,4132($zero)
    # Line 3235
    beqz	$v0,.L0d96adc8
    # Line 3238
    la	$a7,glColor3b
    # Line 3236
    sb	$zero,-25120($s1)
.L0d96ad58:
    # Line 3255
    # lw $t9, -17004($gp) # &getenv
.L0d96ad5c:
    la	$a0,sub_0daf0000
    # Line 3254
    sb	$zero,-25140($s1)
    # Line 3255
    jal	getenv
    addiu	$a0,$a0,-30912
    beqz	$v0,.L0d96ad7c
    ld	$a2,104($sp)
    # Line 3256
    li	$a1,1
    sb	$a1,-25140($s1)
.L0d96ad7c:
    # Line 3277
    la	$a5,sub_0daf0000
    # Line 3267
    sb	$zero,-25138($s1)
    # Line 3277
    addiu	$a5,$a5,-30880
    sw	$a5,3584($s0)
    # Line 3358
    la	$a3,sub_0daf0000
    # Line 3357
    addiu	$a4,$s0,31568
    sw	$a4,3576($s0)
    # Line 3358
    addiu	$a3,$a3,-29952
    sw	$a3,3580($s0)
    # Line 3364
    sw	$zero,26972($a2)
    # Line 3365
    lw	$t9,11840($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 3367
    ld	$ra,88($sp)
    li	$v0,1
    ld	$s1,96($sp)
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96adc8:
    # Line 3238
    sra	$t0,$a7,0x1f
    xor	$a7,$a7,$t0
    subu	$a7,$a7,$t0
    andi	$a7,$a7,0x3fff
    xor	$a7,$a7,$t0
    subu	$a7,$a7,$t0
    li	$a6,1
    beqz	$a7,.L0d96ad58
    sb	$a6,-25120($s1)
    # Line 3246
    sb	$zero,-25120($s1)
    # Line 3247
    lw	$t9,16($s0)
    la	$a1,sub_0daf0000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,-30984
    b	.L0d96ad5c
    # Line 3255
    nop	# was lw $t9, -17004($gp) # &getenv
.L0d96ae0c:
    # Line 3127
    ld	$a0,72($sp)
    jal	getenv
    addiu	$a1,$gp,-13656
    bnez	$v0,.L0d96ae7c
    # Line 3130
    nop	# was lw $t9, -16972($gp) # &strcmp
    # Line 3128
    li	$a2,1
    # Line 3129
    li	$a3,4353
    sw	$a3,-25160($s1)
    # Line 3128
    sb	$a2,-25164($s1)
    # Line 3129
    b	.L0d96aafc
    # Line 3128
    li	$v0,1
.L0d96ae38:
    # Line 3110
    lw	$t9,16($s0)
    la	$a1,sub_0daf0000
    move	$a0,$s0
    ld	$a2,24($sp)
    jal	strcmp
    addiu	$a1,$a1,-31704
    b	.L0d96aa88
    lwc1	$f4,7924($s1)
.L0d96ae58:
    # Line 3367
    ld	$ra,88($sp)
    # Line 3051
    move	$v0,$zero
    # Line 3367
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96ae6c:
    # Line 3079
    move	$v0,$zero
    # Line 3367
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d96ae7c:
    # Line 3130
    ld	$a0,72($sp)
    jalr	$t9
    addiu	$a1,$gp,-13648
    bnez	$v0,.L0d96aea4
    # Line 3131
    li	$a2,1
    # Line 3132
    li	$a3,4354
    sw	$a3,-25160($s1)
    # Line 3131
    sb	$a2,-25164($s1)
    # Line 3132
    b	.L0d96aafc
    # Line 3131
    li	$v0,1
.L0d96aea4:
    # Line 3134
    lw	$t9,16($s0)
    la	$a1,sub_0daf0000
    move	$a0,$s0
    ld	$a2,72($sp)
    jalr	$t9
    addiu	$a1,$a1,-31600
    # Line 3136
    lw	$t9,16($s0)
    la	$a1,sub_0daf0000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,-31552
    b	.L0d96aafc
    lbu	$v0,-25164($s1)
.L0d96aed8:
    # Line 3105
    lw	$t9,16($s0)
    la	$a1,sub_0daf0000
    cvt.d.s	$f29,$f4
    move	$a0,$s0
    dmfc1	$a2,$f29
    jalr	$t9
    addiu	$a1,$a1,-31776
    b	.L0d96aa88
    lwc1	$f4,7924($s1)
.end SWInit

# Function: MakeCurrentRead
# Declared: Line 3376 (Source lines: 3378-3813)
# Address: 0x0d96af00 - 0x0d96c094 (Size: 4500 bytes, Frame: 240)
.ent MakeCurrentRead
MakeCurrentRead:
    # Line 3378
    addiu	$sp,$sp,-240
    sd	$ra,208($sp)
    sd	$s0,168($sp)
    sd	$s3,176($sp)
    # Line 3392
    sw	$zero,0($sp)
    # Line 3378
    move	$s3,$a2
    # Line 3405
    xor	$a3,$a1,$a2
    # Line 3378
    sd	$s2,200($sp)
    move	$s2,$a1
    # Line 3405
    sltiu	$a1,$a3,1
    sb	$a1,3536($a0)
    # Line 3378
    move	$s0,$a0
    # Line 3405
    li	$a6,3
    lw	$at,0($a2)
    sd	$gp,184($sp)
    # Line 3378
    lui	$v1,0x19
    # Line 3405
    lui	$a3,0x1
    # Line 3378
    addiu	$v1,$v1,-10608
    sd	$s1,192($sp)
    # Line 3405
    addu	$s1,$a3,$a0
    # Line 3378
    addu	$gp,$t9,$v1
    # Line 3405
    beq	$at,$a6,.L0d96b12c
    lbu	$v0,27000($s1)
    # Line 3421
    beqz	$v0,.L0d96af70
    lw	$t9,4($a2)
    lw	$a4,0($t9)
    lw	$a5,3376($a0)
    beq	$a4,$a5,.L0d96aff0
.L0d96af70:
    addiu	$a7,$t9,24
    addiu	$a3,$s0,3400
    li	$t3,0x20
    addiu	$t8,$t9,8
    addiu	$t1,$s0,3384
    # Line 3425
    li	$a0,20
    move	$v0,$zero
    addiu	$a6,$s0,3376
    addiu	$t2,$s0,3392
    addiu	$t0,$t9,16
    nop
    nop
.L0d96afa0:
    addu	$a1,$v0,$t9
    addu	$a2,$v0,$a6
    ld	$a1,0($a1)
    addu	$v1,$v0,$t8
    sd	$a1,0($a2)
    addu	$a1,$v0,$t1
    ld	$v1,0($v1)
    addu	$at,$v0,$t0
    sd	$v1,0($a1)
    addu	$v1,$v0,$t2
    ld	$at,0($at)
    addiu	$a0,$a0,-4
    addu	$ra,$v0,$a7
    sd	$at,0($v1)
    addu	$at,$v0,$a3
    ld	$ra,0($ra)
    addu	$v0,$v0,$t3
    bgtz	$a0,.L0d96afa0
    sd	$ra,0($at)
    lbu	$v0,27000($s1)
.L0d96aff0:
    # Line 3430
    beqz	$v0,.L0d96b004
    lw	$t9,4($s2)
    lw	$a2,0($t9)
    lw	$a3,3216($s0)
    beq	$a2,$a3,.L0d96b078
.L0d96b004:
    addiu	$a7,$t9,24
    addiu	$t8,$s0,3240
    li	$t3,0x20
    addiu	$a0,$t9,8
    addiu	$a6,$s0,3224
    # Line 3434
    li	$v0,20
    move	$a3,$zero
    addiu	$t2,$s0,3216
    addiu	$t1,$s0,3232
    addiu	$t0,$t9,16
.L0d96b02c:
    addu	$at,$a3,$t9
    addu	$v1,$a3,$t2
    ld	$at,0($at)
    addu	$ra,$a3,$a0
    sd	$at,0($v1)
    addu	$at,$a3,$a6
    ld	$ra,0($ra)
    addu	$a5,$a3,$t0
    sd	$ra,0($at)
    addu	$ra,$a3,$t1
    ld	$a5,0($a5)
    addiu	$v0,$v0,-4
    addu	$a4,$a3,$a7
    sd	$a5,0($ra)
    addu	$a5,$a3,$t8
    ld	$a4,0($a4)
    addu	$a3,$a3,$t3
    bgtz	$v0,.L0d96b02c
    sd	$a4,0($a5)
.L0d96b078:
    # Line 3436
    li	$v1,1
    sb	$v1,27000($s1)
    # Line 3444
    sw	$s0,4112($zero)
    # Line 3447
    lw	$v0,3200($s0)
    sw	$v0,4120($zero)
    # Line 3453
    lw	$t9,56($s0)
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0d96b0d0
    lw	$a0,168($s0)
    andi	$a1,$a0,0x2
    beqz	$a1,.L0d96b100
    nop
    # Line 3813
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$ra,208($sp)
    ld	$s1,192($sp)
    # Line 3461
    move	$v0,$zero
    # Line 3813
    ld	$s2,200($sp)
    ld	$s3,176($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d96b0d0:
    # Line 3481
    andi	$a2,$a0,0x4
    beqz	$a2,.L0d96b230
    # Line 3493
    andi	$a6,$a0,0x1
    # Line 3813
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$ra,208($sp)
    ld	$s1,192($sp)
    # Line 3487
    move	$v0,$zero
    # Line 3813
    ld	$s2,200($sp)
    ld	$s3,176($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d96b100:
    # Line 3461
    beq	$s2,$s3,.L0d96b1c0
    nop
    # Line 3813
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$ra,208($sp)
    ld	$s1,192($sp)
    # Line 3465
    move	$v0,$zero
    # Line 3813
    ld	$s2,200($sp)
    ld	$s3,176($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d96b12c:
    # Line 3410
    beqz	$v0,.L0d96b144
    addiu	$a3,$s0,3240
    lw	$a3,3216($a0)
    lw	$a4,3376($a0)
    beq	$a3,$a4,.L0d96aff0
    addiu	$a3,$s0,3240
.L0d96b144:
    addiu	$a7,$s0,3400
    li	$a6,0x20
    addiu	$t3,$s0,3224
    addiu	$t0,$s0,3384
    # Line 3414
    li	$a0,20
    move	$v0,$zero
    addiu	$t1,$s0,3376
    addiu	$t2,$s0,3216
    addiu	$a2,$s0,3392
    addiu	$a1,$s0,3232
.L0d96b16c:
    addu	$ra,$v0,$t2
    addu	$at,$v0,$t1
    ld	$ra,0($ra)
    addu	$t9,$v0,$t3
    sd	$ra,0($at)
    addu	$ra,$v0,$t0
    ld	$t9,0($t9)
    addu	$t8,$v0,$a1
    sd	$t9,0($ra)
    addu	$t9,$v0,$a2
    ld	$t8,0($t8)
    addiu	$a0,$a0,-4
    addu	$a5,$v0,$a3
    sd	$t8,0($t9)
    addu	$t8,$v0,$a7
    ld	$a5,0($a5)
    addu	$v0,$v0,$a6
    bgtz	$a0,.L0d96b16c
    sd	$a5,0($t8)
    b	.L0d96aff0
    lbu	$v0,27000($s1)
.L0d96b1c0:
    # Line 3475
    sw	$zero,4968($s0)
    sd	$v0,8($sp)
    # Line 3468
    la	$v1,__glGenericDlistOptimizer
    # Line 3469
    la	$a1,__glGenericDlistCompiler
    # Line 3468
    la	$a2,__glNop
    # Line 3473
    la	$a4,__gl_GenericDlOps
    # Line 3468
    la	$a3,__glListExecTable
    # Line 3474
    sw	$a3,4964($s0)
    # Line 3473
    sw	$a4,4960($s0)
    # Line 3472
    sw	$a3,4956($s0)
    # Line 3471
    sw	$a2,4952($s0)
    # Line 3470
    sw	$a2,4948($s0)
    # Line 3475
    andi	$at,$a0,0x4
    # Line 3469
    sw	$a1,4944($s0)
    # Line 3475
    beqz	$at,.L0d96bf04
    # Line 3468
    sw	$v1,4940($s0)
    # Line 3481
    # lw $t9, -23604($gp) # &__glPixmapMakeCurrent
.L0d96b204:
    move	$a0,$s0
    jal	__glPixmapMakeCurrent
    ld	$a1,8($sp)
    # Line 3813
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$ra,208($sp)
    ld	$s1,192($sp)
    ld	$s2,200($sp)
    ld	$s3,176($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d96b230:
    # Line 3493
    addiu	$a5,$s0,8032
    sd	$a5,56($sp)
    beqz	$a6,.L0d96bad0
    sw	$a5,6132($s0)
.L0d96b240:
    # Line 3510
    lw	$t9,40($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,27756($s1)
    # Line 3516
    lw	$t9,52($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 3510
    sw	$v0,31560($s0)
    # Line 3516
    lw	$a7,168($s0)
    andi	$a7,$a7,0x2
    beqz	$a7,.L0d96bf1c
    # Line 3596
    lui	$t0,0x2
    addu	$t0,$s0,$t0
    sd	$t0,88($sp)
.L0d96b278:
    # Line 3599
    li	$t3,0x9588
    addu	$t3,$s0,$t3
    sw	$t3,4128($zero)
    # Line 3605
    lwc1	$f0,_lit_bf800000
    # Line 3600
    lui	$t2,0x1
    # Line 3602
    ld	$t1,88($sp)
    # Line 3600
    ori	$t2,$t2,0x9d90
    addu	$t2,$s0,$t2
    sw	$t2,4132($zero)
    # Line 3614
    # lw $t9, -26772($gp) # &__glMakeCurrentBuffers
    # Line 3602
    sb	$zero,-25202($t1)
    # Line 3614
    addiu	$a1,$sp,0
    # Line 3606
    swc1	$f0,-26600($s1)
    # Line 3614
    move	$a0,$s0
    jal	__glMakeCurrentBuffers
    # Line 3605
    swc1	$f0,-26604($s1)
    # Line 3621
    lw	$t9,168($s0)
    andi	$t9,$t9,0x6
    addiu	$ra,$s0,30940
    sw	$ra,30716($s0)
    # Line 3620
    addiu	$t8,$s0,30720
    # Line 3621
    beqz	$t9,.L0d96bb30
    # Line 3620
    sw	$t8,30712($s0)
    # Line 3671
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,23216
    bal __glOdysseyFindWindowSize
    move	$a0,$s0
    # Line 3672
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,24288
    bal __glOdysseyFindWindowSize
    move	$a0,$s0
    # Line 3673
    # lw $t9, -32436($gp) # &__glOdyim_DrawBuffer
    jal	__glOdyim_DrawBuffer
    lw	$a0,1892($s0)
.L0d96b300:
    # Line 3680
    # lw $t9, -26812($gp) # &__glContextSetColorScales
    jal	__glContextSetColorScales
    move	$a0,$s0
    lw	$ra,26824($s1)
    beqz	$ra,.L0d96baa4
    ld	$v1,56($sp)
    li	$a3,4
    # Line 3693
    li	$v0,236
    # Line 3680
    lw	$at,4988($s0)
    # Line 3692
    li	$a1,4176
    sw	$a1,6132($s0)
    # Line 3689
    addiu	$a2,$s0,9920
    # Line 3693
    move	$a0,$zero
    movz	$a2,$v1,$at
    sd	$a2,24($sp)
.L0d96b33c:
    addiu	$a3,$a3,-1
    addu	$a4,$a0,$a2
    addiu	$v0,$v0,-1
    addu	$a5,$a0,$a1
    ld	$a4,0($a4)
    addiu	$a0,$a0,8
    bnez	$a3,.L0d96b33c
    sd	$a4,0($a5)
    addiu	$a3,$a2,56
    addiu	$a6,$a1,56
    li	$t3,0x40
    addiu	$ra,$a2,8
    addiu	$t9,$a1,8
    addiu	$a7,$a2,24
    addiu	$t8,$a2,40
    addiu	$t1,$a1,40
    addiu	$v1,$a1,24
    sd	$v1,120($sp)
    addiu	$t2,$a1,48
    addiu	$t0,$a2,48
    addiu	$s2,$a1,32
    addiu	$at,$a1,16
    sd	$at,152($sp)
    addiu	$s3,$a2,32
    addiu	$a5,$a2,16
    sd	$a5,144($sp)
    nop
    nop
    nop
.L0d96b3b0:
    ld	$v1,152($sp)
    addu	$a5,$a0,$a2
    addu	$at,$a0,$a1
    ld	$a5,0($a5)
    addu	$a4,$a0,$ra
    sd	$a5,0($at)
    ld	$a4,0($a4)
    addu	$a5,$a0,$t9
    ld	$at,144($sp)
    sd	$a4,0($a5)
    ld	$a5,120($sp)
    addu	$at,$a0,$at
    addu	$v1,$a0,$v1
    ld	$at,0($at)
    addu	$a4,$a0,$a7
    sd	$at,0($v1)
    addu	$a5,$a0,$a5
    ld	$a4,0($a4)
    addu	$v1,$a0,$s3
    sd	$a4,0($a5)
    addu	$a4,$a0,$s2
    ld	$v1,0($v1)
    addu	$at,$a0,$t8
    sd	$v1,0($a4)
    addu	$v1,$a0,$t1
    ld	$at,0($at)
    addu	$a5,$a0,$t0
    sd	$at,0($v1)
    addu	$at,$a0,$t2
    ld	$a5,0($a5)
    addiu	$v0,$v0,-8
    addu	$a4,$a0,$a3
    sd	$a5,0($at)
    ld	$a4,0($a4)
    addu	$a5,$a0,$a6
    addu	$a0,$a0,$t3
    bgtz	$v0,.L0d96b3b0
    sd	$a4,0($a5)
    # Line 3694
    # lw $t9, -32484($gp) # &__glOdyssey_ResolveContext
    jal	__glOdyssey_ResolveContext
    nop
    li	$a3,4
    # Line 3695
    li	$v0,236
    move	$a0,$zero
    ld	$a2,24($sp)
    li	$a1,4176
.L0d96b468:
    addiu	$a3,$a3,-1
    addu	$a6,$a0,$a1
    addiu	$v0,$v0,-1
    addu	$a7,$a0,$a2
    ld	$a6,0($a6)
    addiu	$a0,$a0,8
    bnez	$a3,.L0d96b468
    sd	$a6,0($a7)
    addiu	$s2,$a1,56
    addiu	$t1,$a2,56
    addiu	$ra,$a2,8
    addiu	$t2,$a2,16
    addiu	$t0,$a1,16
    addiu	$s3,$a1,24
    addiu	$t9,$a2,24
    addiu	$a7,$a1,40
    addiu	$t8,$a2,40
    li	$a3,0x40
    sd	$a3,128($sp)
    addiu	$a3,$a2,48
    addiu	$v1,$a1,48
    sd	$v1,160($sp)
    addiu	$a6,$a2,32
    addiu	$t3,$a1,32
    addiu	$at,$a1,8
    sd	$at,136($sp)
.L0d96b4d0:
    addu	$v1,$a0,$a1
    ld	$at,136($sp)
    addu	$a4,$a0,$a2
    ld	$v1,0($v1)
    sd	$v1,0($a4)
    addu	$at,$a0,$at
    addu	$v1,$a0,$ra
    ld	$at,0($at)
    addu	$a5,$a0,$t0
    sd	$at,0($v1)
    addu	$at,$a0,$t2
    ld	$a5,0($a5)
    addu	$a4,$a0,$s3
    sd	$a5,0($at)
    addu	$a5,$a0,$t9
    ld	$a4,0($a4)
    addu	$v1,$a0,$t3
    sd	$a4,0($a5)
    addu	$a4,$a0,$a6
    ld	$v1,0($v1)
    sd	$v1,0($a4)
    addu	$at,$a0,$a7
    ld	$a5,160($sp)
    addu	$v1,$a0,$t8
    ld	$at,0($at)
    sd	$at,0($v1)
    addu	$a5,$a0,$a5
    addu	$at,$a0,$a3
    ld	$a5,0($a5)
    sd	$a5,0($at)
    addiu	$v0,$v0,-8
    addu	$a4,$a0,$s2
    ld	$at,128($sp)
    addu	$a5,$a0,$t1
    ld	$a4,0($a4)
    sd	$a4,0($a5)
    bgtz	$v0,.L0d96b4d0
    addu	$a0,$a0,$at
    lw	$a1,4168($zero)
    beqz	$a1,.L0d96b688
    li	$a3,4
    # Line 3698
    li	$v0,236
    move	$a0,$zero
    li	$a2,4176
.L0d96b580:
    addiu	$a3,$a3,-1
    addu	$a4,$a0,$a1
    addiu	$v0,$v0,-1
    addu	$a5,$a0,$a2
    ld	$a4,0($a4)
    addiu	$a0,$a0,8
    bnez	$a3,.L0d96b580
    sd	$a4,0($a5)
    addiu	$a6,$a1,56
    addiu	$t3,$a2,56
    li	$s2,0x40
    addiu	$ra,$a1,8
    addiu	$t9,$a2,8
    addiu	$t0,$a2,16
    addiu	$a7,$a1,24
    addiu	$t8,$a2,24
    addiu	$t1,$a1,40
    addiu	$a3,$a2,40
    addiu	$v1,$a2,32
    sd	$v1,112($sp)
    addiu	$t2,$a2,48
    addiu	$at,$a1,32
    sd	$at,104($sp)
    addiu	$s3,$a1,48
    addiu	$a5,$a1,16
    sd	$a5,96($sp)
    nop
    nop
.L0d96b5f0:
    ld	$at,96($sp)
    addu	$a4,$a0,$a1
    addu	$a5,$a0,$a2
    ld	$a4,0($a4)
    addu	$v1,$a0,$ra
    sd	$a4,0($a5)
    addu	$a4,$a0,$t9
    ld	$v1,0($v1)
    sd	$v1,0($a4)
    ld	$a4,112($sp)
    addu	$at,$a0,$at
    addu	$v1,$a0,$t0
    ld	$at,0($at)
    sd	$at,0($v1)
    addu	$a5,$a0,$a7
    ld	$v1,104($sp)
    addu	$at,$a0,$t8
    ld	$a5,0($a5)
    sd	$a5,0($at)
    addu	$v1,$a0,$v1
    addu	$a4,$a0,$a4
    ld	$v1,0($v1)
    addu	$at,$a0,$t1
    sd	$v1,0($a4)
    addu	$v1,$a0,$a3
    ld	$at,0($at)
    addu	$a5,$a0,$s3
    sd	$at,0($v1)
    addu	$at,$a0,$t2
    ld	$a5,0($a5)
    addiu	$v0,$v0,-8
    addu	$a4,$a0,$a6
    sd	$a5,0($at)
    ld	$a4,0($a4)
    addu	$a5,$a0,$t3
    addu	$a0,$a0,$s2
    bgtz	$v0,.L0d96b5f0
    sd	$a4,0($a5)
.L0d96b688:
    beqz	$a1,.L0d96bbb8
    lw	$v0,4988($s0)
    beqz	$v0,.L0d96be4c
    sd	$v0,16($sp)
    # Line 3705
    lw	$a6,4984($s0)
    li	$a7,4864
    addiu	$a5,$s0,9920
    beq	$a6,$a7,.L0d96be8c
    sw	$a5,6132($s0)
    # Line 3706
    lw	$a1,8024($s0)
.L0d96b6b0:
    li	$a3,4
    li	$v0,236
    move	$a0,$zero
    addiu	$a2,$s0,8032
.L0d96b6c0:
    addiu	$a3,$a3,-1
    addu	$t0,$a0,$a1
    addiu	$v0,$v0,-1
    addu	$t1,$a0,$a2
    ld	$t0,0($t0)
    addiu	$a0,$a0,8
    bnez	$a3,.L0d96b6c0
    sd	$t0,0($t1)
    addiu	$a6,$a1,56
    addiu	$s3,$a2,56
    li	$s2,0x40
    sd	$s6,216($sp)
    addiu	$s6,$a1,8
    sd	$s5,232($sp)
    addiu	$s5,$a2,8
    addiu	$t9,$a2,16
    addiu	$ra,$a1,16
    addiu	$a7,$a1,24
    sd	$s4,224($sp)
    addiu	$s4,$a2,24
    addiu	$t1,$a1,40
    addiu	$a3,$a2,40
    addiu	$t0,$a2,48
    addiu	$t2,$a1,48
    addiu	$t3,$a2,32
    addiu	$t8,$a1,32
    nop
    nop
.L0d96b730:
    addu	$a5,$a0,$a1
    addu	$at,$a0,$a2
    ld	$a5,0($a5)
    addu	$a4,$a0,$s6
    sd	$a5,0($at)
    addu	$a5,$a0,$s5
    ld	$a4,0($a4)
    addu	$v1,$a0,$ra
    sd	$a4,0($a5)
    addu	$a4,$a0,$t9
    ld	$v1,0($v1)
    addu	$at,$a0,$a7
    sd	$v1,0($a4)
    addu	$v1,$a0,$s4
    ld	$at,0($at)
    addu	$a5,$a0,$t8
    sd	$at,0($v1)
    addu	$at,$a0,$t3
    ld	$a5,0($a5)
    addu	$a4,$a0,$t1
    sd	$a5,0($at)
    addu	$a5,$a0,$a3
    ld	$a4,0($a4)
    addu	$v1,$a0,$t2
    sd	$a4,0($a5)
    addu	$a4,$a0,$t0
    ld	$v1,0($v1)
    addiu	$v0,$v0,-8
    addu	$at,$a0,$a6
    sd	$v1,0($a4)
    addu	$v1,$a0,$s3
    ld	$at,0($at)
    addu	$a0,$a0,$s2
    bgtz	$v0,.L0d96b730
    sd	$at,0($v1)
    # Line 3722
    ld	$a6,16($sp)
    ld	$s6,216($sp)
    ld	$s4,224($sp)
    beqz	$a6,.L0d96b7f0
    ld	$s5,232($sp)
.L0d96b7d0:
    # Line 3728
    lw	$t2,5052($s0)
    sw	$t2,4136($zero)
    # Line 3729
    lw	$t1,5056($s0)
    sw	$t1,4140($zero)
    # Line 3730
    lw	$t0,5060($s0)
    sw	$t0,4144($zero)
    # Line 3731
    lw	$a7,5064($s0)
    sw	$a7,4148($zero)
.L0d96b7f0:
    # Line 3737
    ld	$t3,88($sp)
.L0d96b7f4:
    lbu	$t3,-25120($t3)
    beqz	$t3,.L0d96b80c
    # Line 3744
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 3737
    lw	$t8,6068($zero)
    beqz	$t8,.L0d96be58
.L0d96b808:
    # Line 3744
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
.L0d96b80c:
    addiu	$t9,$t9,30240
    bal __glOdysseyFindWindowSize
    move	$a0,$s0
    # Line 3750
    # lw $t9, -30488($gp) # &__glOdysseyDriverMakeCurrent
    jal	__glOdysseyDriverMakeCurrent
    move	$a0,$s0
    beqz	$v0,.L0d96baac
    # Line 3754
    nop	# was lw $t9, -31552($gp) # &__glOdysseyImageDescribeWindow
    lui	$a0,0x1
    move	$a1,$zero
    ori	$a0,$a0,0x1d98
    jal	__glOdysseyImageDescribeWindow
    addu	$a0,$s0,$a0
    beqz	$v0,.L0d96bb0c
    # Line 3757
    nop	# was lw $t9, -31552($gp) # &__glOdysseyImageDescribeWindow
    lui	$a0,0x1
    li	$a1,1
    ori	$a0,$a0,0x1dd4
    jal	__glOdysseyImageDescribeWindow
    addu	$a0,$s0,$a0
    beqz	$v0,.L0d96be28
    nop
    # Line 3766
    lw	$t3,27972($s1)
    lw	$t0,-26968($s1)
    # Line 3764
    lw	$a6,27980($s1)
    # Line 3762
    lui	$a4,0xe000
    lui	$a5,0x1fff
    # Line 3766
    and	$t0,$a4,$t0
    # Line 3764
    lw	$t2,-26976($s1)
    # Line 3762
    ori	$a5,$a5,0xffff
    # Line 3766
    and	$t3,$a5,$t3
    # Line 3764
    li	$s2,-4096
    # Line 3762
    lw	$a7,27968($s1)
    # Line 3764
    andi	$a6,$a6,0xfff
    and	$t2,$t2,$s2
    # Line 3762
    lw	$t1,-26980($s1)
    # Line 3766
    or	$t0,$t0,$t3
    # Line 3764
    or	$a6,$a6,$t2
    # Line 3771
    lw	$a1,7616($s1)
    # Line 3762
    and	$a4,$a4,$t1
    and	$a5,$a5,$a7
    # Line 3768
    lw	$a2,27984($s1)
    # Line 3773
    lw	$a0,7628($s1)
    # Line 3762
    or	$a4,$a4,$a5
    # Line 3771
    sll	$a1,$a1,0xd
    # Line 3768
    sll	$a2,$a2,0x15
    lui	$s2,0x20
    lw	$a5,-26972($s1)
    # Line 3773
    # lw $t9, -31556($gp) # &__glOdysseyImageCalcFieldFormat
    # Line 3768
    and	$a2,$s2,$a2
    nor	$a7,$s2,$zero
    # Line 3766
    sw	$t0,-26968($s1)
    # Line 3768
    and	$a5,$a5,$a7
    # Line 3771
    li	$a3,0xe000
    # Line 3764
    sw	$a6,-26976($s1)
    # Line 3768
    or	$a2,$a2,$a5
    # Line 3771
    nor	$a3,$a3,$zero
    # Line 3762
    sw	$a4,-26980($s1)
    # Line 3771
    andi	$a1,$a1,0xe000
    and	$a2,$a2,$a3
    or	$a1,$a1,$a2
    # Line 3773
    jal	__glOdysseyImageCalcFieldFormat
    # Line 3771
    sw	$a1,-26972($s1)
    # Line 3780
    li	$t1,16
    # Line 3773
    lw	$a3,-26972($s1)
    # Line 3777
    lw	$a1,7620($s1)
    # Line 3773
    sll	$a5,$v0,0x4
    li	$a4,-113
    andi	$a5,$a5,0x70
    and	$a3,$a3,$a4
    # Line 3775
    lw	$a4,7624($s1)
    # Line 3777
    sll	$a0,$a1,0xa
    # Line 3773
    or	$a3,$a3,$a5
    # Line 3775
    li	$a5,-897
    sll	$a4,$a4,0x7
    # Line 3780
    lw	$a2,7628($s1)
    # Line 3775
    and	$a3,$a3,$a5
    andi	$a4,$a4,0x380
    or	$a3,$a3,$a4
    # Line 3777
    li	$a4,-7169
    ld	$ra,208($sp)
    andi	$a0,$a0,0x1c00
    and	$a3,$a3,$a4
    or	$a0,$a0,$a3
    # Line 3780
    beq	$a2,$t1,.L0d96be7c
    # Line 3777
    sw	$a0,-26972($s1)
    # Line 3780
    li	$a5,17
    beq	$a2,$a5,.L0d96be7c
    # Line 3785
    lui	$a6,0x8
    nor	$a6,$a6,$zero
    and	$a0,$a0,$a6
    sw	$a0,-26972($s1)
.L0d96b97c:
    li	$a7,3
    beq	$a1,$a7,.L0d96be94
    # Line 3793
    lui	$v1,0x40
    # Line 3801
    lui	$t1,0x40
    nor	$t1,$t1,$zero
    and	$t1,$a0,$t1
    sw	$t1,-26972($s1)
    # Line 3802
    li	$t0,1
    sb	$t0,31604($s0)
.L0d96b9a0:
    # Line 3807
    lui	$v0,0x1
    ori	$a1,$v0,0x443
    sw	$a1,0($v0)
    li	$a3,250
    sw	$a3,0($v0)
    ori	$a0,$v0,0x46
    sw	$a0,0($v0)
    sw	$a0,0($v0)
    ori	$t8,$v0,0x19
    sw	$t8,0($v0)
    sw	$a1,0($v0)
    li	$a2,150
    sw	$a2,0($v0)
    sw	$a0,0($v0)
    sw	$a0,0($v0)
    sw	$a0,0($v0)
    sw	$a0,0($v0)
    sw	$zero,-26576($s1)
    sw	$a1,0($v0)
    sw	$a3,0($v0)
    sw	$a0,0($v0)
    sw	$a0,0($v0)
    lw	$t2,-26972($s1)
    sll	$t2,$t2,0x4
    bltz	$t2,.L0d96beb4
    ori	$t0,$v0,0x841
    lui	$t9,0x9000
    ori	$t9,$t9,0x8116
    sw	$t9,0($v0)
.L0d96ba14:
    # Line 3813
    ld	$gp,184($sp)
    ld	$s2,200($sp)
    # Line 3807
    lui	$v0,0x1
    lui	$a7,0x1
    ori	$a7,$a7,0x1017
    sw	$a7,0($v0)
    lw	$a6,-26980($s1)
    sw	$a6,0($v0)
    lw	$a5,-26976($s1)
    sw	$a5,0($v0)
    lw	$a4,-26972($s1)
    sw	$a4,0($v0)
    lw	$v1,-26968($s1)
    sw	$v1,0($v0)
    sw	$a1,0($v0)
    sw	$a2,0($v0)
    sw	$a0,0($v0)
    sw	$a0,0($v0)
    sw	$a0,0($v0)
    sw	$a0,0($v0)
    sw	$zero,-26576($s1)
    sw	$a1,0($v0)
    sw	$a3,0($v0)
    sw	$a0,0($v0)
    sw	$a0,0($v0)
    # Line 3810
    lw	$at,168($s0)
    # Line 3813
    ld	$s3,176($sp)
    ld	$s1,192($sp)
    # Line 3811
    li	$v1,-5
    # Line 3810
    ori	$at,$at,0x3
    # Line 3813
    li	$v0,1
    # Line 3811
    and	$at,$at,$v1
    sw	$at,168($s0)
    # Line 3813
    ld	$s0,168($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d96baa4:
    b	.L0d96b688
    # Line 3698
    lw	$a1,4168($zero)
.L0d96baac:
    # Line 3813
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$ra,208($sp)
    ld	$s1,192($sp)
    # Line 3751
    move	$v0,$zero
    # Line 3813
    ld	$s2,200($sp)
    ld	$s3,176($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d96bad0:
    # Line 3499
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-22368
    bal __glOdysseyValidateContext
    move	$a0,$s0
    bnez	$v0,.L0d96b240
    nop
    # Line 3813
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$ra,208($sp)
    ld	$s1,192($sp)
    # Line 3502
    move	$v0,$zero
    # Line 3813
    ld	$s2,200($sp)
    ld	$s3,176($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d96bb0c:
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$ra,208($sp)
    ld	$s1,192($sp)
    # Line 3756
    move	$v0,$zero
    # Line 3813
    ld	$s2,200($sp)
    ld	$s3,176($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d96bb30:
    # Line 3632
    # lw $t9, -32160($gp) # &__glOdysseyFindWindowSize
    bal __glOdysseyFindWindowSize
    move	$a0,$s0
    # Line 3634
    # lw $t9, -17240($gp) # &__glOdyim_dispatchTable
    # Line 3635
    lw	$s3,3704($s0)
    # Line 3637
    lw	$t9,668($t9)
    move	$a1,$zero
    # Line 3634
    lw	$s2,3700($s0)
    # Line 3637
    move	$a0,$zero
    move	$a3,$s3
    jal	__glOdyim_dispatchTable
    move	$a2,$s2
    # Line 3638
    # lw $t9, -17240($gp) # &__glOdyim_dispatchTable
    lw	$t9,152($t9)
    move	$a0,$zero
    move	$a1,$zero
    move	$a2,$s2
    jal	__glOdyim_dispatchTable
    move	$a3,$s3
    # Line 3648
    lw	$ra,3704($s0)
    mtc1	$ra,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f5,3672($s0)
    # Line 3647
    lwc1	$f4,3668($s0)
    # Line 3648
    lwc1	$f3,3676($s0)
    add.s	$f2,$f2,$f5
    # Line 3647
    swc1	$f4,368($s0)
    # Line 3648
    sub.s	$f2,$f2,$f3
    # Line 3650
    lwc1	$f1,3544($s0)
    # Line 3648
    swc1	$f2,372($s0)
    # Line 3650
    swc1	$f1,268($s0)
    # Line 3651
    swc1	$f1,348($s0)
    # Line 3652
    b	.L0d96b300
    sb	$zero,-22724($s1)
.L0d96bbb8:
    sd	$v0,16($sp)
    # Line 3710
    ld	$at,16($sp)
    beqz	$at,.L0d96bcf8
    li	$a3,4
    # Line 3716
    lw	$v1,4984($s0)
    li	$a0,4864
    addiu	$v0,$s0,9920
    beq	$v1,$a0,.L0d96c03c
    sw	$v0,6132($s0)
    # Line 3717
    lw	$a1,8024($s0)
.L0d96bbe0:
    li	$a3,4
    li	$v0,236
    move	$a0,$zero
    li	$a2,4176
.L0d96bbf0:
    addiu	$a3,$a3,-1
    addu	$a4,$a0,$a1
    addiu	$v0,$v0,-1
    addu	$a5,$a0,$a2
    ld	$a4,0($a4)
    addiu	$a0,$a0,8
    bnez	$a3,.L0d96bbf0
    sd	$a4,0($a5)
    addiu	$a6,$a1,56
    li	$t2,0x40
    addiu	$t9,$a1,8
    addiu	$t8,$a2,8
    addiu	$s3,$a2,16
    addiu	$a7,$a1,24
    addiu	$t3,$a2,24
    addiu	$t0,$a1,40
    addiu	$v1,$a2,56
    sd	$v1,64($sp)
    addiu	$a3,$a2,40
    addiu	$t1,$a2,48
    addiu	$ra,$a1,48
    addiu	$at,$a2,32
    sd	$at,72($sp)
    addiu	$s2,$a1,32
    addiu	$a5,$a1,16
    sd	$a5,80($sp)
.L0d96bc58:
    ld	$v1,80($sp)
    addu	$a5,$a0,$a1
    addu	$at,$a0,$a2
    ld	$a5,0($a5)
    addu	$a4,$a0,$t9
    sd	$a5,0($at)
    addu	$a5,$a0,$t8
    ld	$a4,0($a4)
    sd	$a4,0($a5)
    addu	$v1,$a0,$v1
    ld	$a5,72($sp)
    addu	$a4,$a0,$s3
    ld	$v1,0($v1)
    addu	$at,$a0,$a7
    sd	$v1,0($a4)
    addu	$v1,$a0,$t3
    ld	$at,0($at)
    addu	$a4,$a0,$s2
    sd	$at,0($v1)
    addu	$a5,$a0,$a5
    ld	$a4,0($a4)
    sd	$a4,0($a5)
    addu	$v1,$a0,$t0
    ld	$a5,64($sp)
    addu	$a4,$a0,$a3
    ld	$v1,0($v1)
    addu	$at,$a0,$ra
    sd	$v1,0($a4)
    addu	$v1,$a0,$t1
    ld	$at,0($at)
    addiu	$v0,$v0,-8
    addu	$a4,$a0,$a6
    sd	$at,0($v1)
    ld	$a4,0($a4)
    addu	$a5,$a0,$a5
    addu	$a0,$a0,$t2
    bgtz	$v0,.L0d96bc58
    sd	$a4,0($a5)
    b	.L0d96be10
    # Line 3722
    lw	$a5,4988($s0)
.L0d96bcf8:
    li	$a0,236
    move	$v0,$zero
    addiu	$a1,$s0,8032
    # Line 3721
    li	$a2,4176
    sw	$a2,6132($s0)
.L0d96bd0c:
    addiu	$a3,$a3,-1
    # Line 3722
    addu	$a6,$v0,$a1
    addiu	$a0,$a0,-1
    addu	$a7,$v0,$a2
    ld	$a6,0($a6)
    addiu	$v0,$v0,8
    bnez	$a3,.L0d96bd0c
    sd	$a6,0($a7)
    addiu	$t0,$a1,56
    addiu	$a3,$a2,56
    addiu	$s3,$a1,8
    addiu	$t8,$a2,8
    addiu	$s2,$a2,16
    addiu	$t3,$a1,24
    addiu	$a7,$a2,24
    addiu	$t2,$a2,40
    li	$a4,0x40
    sd	$a4,32($sp)
    addiu	$a6,$a2,48
    addiu	$v1,$a1,40
    sd	$v1,40($sp)
    addiu	$t1,$a1,48
    addiu	$t9,$a2,32
    addiu	$ra,$a1,32
    addiu	$at,$a1,16
    sd	$at,48($sp)
.L0d96bd74:
    ld	$at,48($sp)
    addu	$a4,$v0,$a1
    addu	$a5,$v0,$a2
    ld	$a4,0($a4)
    addu	$v1,$v0,$s3
    sd	$a4,0($a5)
    addu	$a4,$v0,$t8
    ld	$v1,0($v1)
    addu	$at,$v0,$at
    sd	$v1,0($a4)
    addu	$v1,$v0,$s2
    ld	$at,0($at)
    addu	$a5,$v0,$t3
    sd	$at,0($v1)
    addu	$at,$v0,$a7
    ld	$a5,0($a5)
    sd	$a5,0($at)
    addu	$a4,$v0,$ra
    ld	$v1,40($sp)
    addu	$a5,$v0,$t9
    ld	$a4,0($a4)
    sd	$a4,0($a5)
    addu	$v1,$v0,$v1
    addu	$a4,$v0,$t2
    ld	$v1,0($v1)
    addu	$at,$v0,$t1
    sd	$v1,0($a4)
    addu	$v1,$v0,$a6
    ld	$at,0($at)
    sd	$at,0($v1)
    addiu	$a0,$a0,-8
    addu	$a5,$v0,$t0
    ld	$v1,32($sp)
    addu	$at,$v0,$a3
    ld	$a5,0($a5)
    sd	$a5,0($at)
    bgtz	$a0,.L0d96bd74
    addu	$v0,$v0,$v1
    lw	$a5,4988($s0)
.L0d96be10:
    sd	$a5,16($sp)
.L0d96be14:
    ld	$a6,16($sp)
    bnez	$a6,.L0d96b7d0
    nop
    b	.L0d96b7f4
    # Line 3737
    ld	$t3,88($sp)
.L0d96be28:
    # Line 3813
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$ra,208($sp)
    ld	$s1,192($sp)
    # Line 3759
    move	$v0,$zero
    # Line 3813
    ld	$s2,200($sp)
    ld	$s3,176($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d96be4c:
    ld	$a7,56($sp)
    b	.L0d96be14
    # Line 3710
    sw	$a7,6132($s0)
.L0d96be58:
    # Line 3738
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,29728
    bal __glOdysseyFindWindowSize
    move	$a0,$s0
    bnez	$v0,.L0d96b80c
    # Line 3744
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 3739
    ld	$ra,88($sp)
    b	.L0d96b808
    sb	$zero,-25120($ra)
.L0d96be7c:
    # Line 3782
    lui	$at,0x8
    or	$a0,$a0,$at
    b	.L0d96b97c
    sw	$a0,-26972($s1)
.L0d96be8c:
    # Line 3706
    b	.L0d96b6b0
    addiu	$a1,$s0,6136
.L0d96be94:
    # Line 3793
    or	$v1,$a0,$v1
    sw	$v1,-26972($s1)
    lw	$v0,31600($s0)
    and	$v0,$v0,$s2
    beqz	$v0,.L0d96c044
    # Line 3795
    li	$a0,1
    b	.L0d96b9a0
    sb	$a0,31604($s0)
.L0d96beb4:
    # Line 3807
    sw	$t0,0($v0)
    sw	$zero,0($v0)
    sw	$zero,0($v0)
    ori	$a7,$v0,0x204b
    sw	$a7,0($v0)
    sw	$zero,0($v0)
    lui	$a6,0xff
    ori	$a6,$a6,0xffff
    sw	$a6,0($v0)
    sw	$zero,0($v0)
    sw	$zero,0($v0)
    sw	$zero,0($v0)
    sw	$zero,0($v0)
    sw	$zero,0($v0)
    sw	$zero,0($v0)
    ori	$a5,$v0,0x840
    sw	$a5,0($v0)
    sw	$zero,0($v0)
    b	.L0d96ba14
    sw	$zero,0($v0)
.L0d96bf04:
    # Line 3479
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,23840
    bal __glOdysseyFindWindowSize
    move	$a0,$s0
    b	.L0d96b204
    # Line 3481
    nop	# was lw $t9, -23604($gp) # &__glPixmapMakeCurrent
.L0d96bf1c:
    # Line 3525
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,-22192
    bal __glOdysseyValidateContext
    move	$a0,$s0
    beqz	$v0,.L0d96c064
    # Line 3534
    la	$at,__pglce_dispatchState
    lw	$at,0($at)
    sw	$at,8024($s0)
    lw	$ra,27008($s1)
    beqz	$ra,.L0d96c04c
    lbu	$v0,3220($s0)
    la	$s2,sub_0daf0000
    addiu	$s2,$s2,20664
    # Line 3572
    addiu	$v1,$s2,9440
    # Line 3534
    addiu	$a0,$s2,7552
    movz	$a0,$v1,$v0
.L0d96bf5c:
    # Line 3583
    # lw $t9, -18708($gp) # &__glMipsCopyDispatch
    jal	__glMipsCopyDispatch
    lw	$a1,6132($s0)
    # Line 3584
    # lw $t9, -18708($gp) # &__glMipsCopyDispatch
    addiu	$a1,$s0,6136
    jal	__glMipsCopyDispatch
    addiu	$a0,$s2,16992
    # Line 3591
    lui	$t8,0x2
    addu	$t8,$s0,$t8
    sd	$t8,88($sp)
    lbu	$t8,-25164($t8)
    beqz	$t8,.L0d96c01c
    # Line 3595
    ld	$t0,88($sp)
    # Line 3591
    ld	$t9,88($sp)
    lw	$t9,-25148($t9)
    blez	$t9,.L0d96c01c
    # Line 3595
    ld	$t0,88($sp)
    addiu	$a6,$s0,7468
    li	$a2,0x10
    addiu	$a7,$s0,7460
    # Line 3593
    li	$v0,24
    la	$t3,__glOdylc_vertexBboxDispatchTable
    move	$a0,$zero
    addiu	$a3,$s0,7464
    addiu	$t0,$s0,7456
    addiu	$a1,$t3,12
    addiu	$t2,$t3,8
    addiu	$t1,$t3,4
.L0d96bfcc:
    addu	$a4,$a0,$t3
    addu	$a5,$a0,$t0
    lw	$a4,0($a4)
    addu	$v1,$a0,$t1
    sw	$a4,0($a5)
    addu	$a4,$a0,$a7
    lw	$v1,0($v1)
    addu	$at,$a0,$t2
    sw	$v1,0($a4)
    addu	$v1,$a0,$a3
    lw	$at,0($at)
    addiu	$v0,$v0,-4
    addu	$ra,$a0,$a1
    sw	$at,0($v1)
    addu	$at,$a0,$a6
    lw	$ra,0($ra)
    addu	$a0,$a0,$a2
    bgtz	$v0,.L0d96bfcc
    sw	$ra,0($at)
    # Line 3595
    ld	$t0,88($sp)
.L0d96c01c:
    li	$a7,1
    sb	$a7,-25152($t0)
    # Line 3596
    lw	$a6,26980($s1)
    ori	$a6,$a6,0x400
    sw	$a6,26980($s1)
    li	$a5,2
    b	.L0d96b278
    sw	$a5,4120($zero)
.L0d96c03c:
    # Line 3717
    b	.L0d96bbe0
    addiu	$a1,$s0,6136
.L0d96c044:
    b	.L0d96b9a0
    # Line 3797
    sb	$zero,31604($s0)
.L0d96c04c:
    # Line 3572
    la	$s2,sub_0daf0000
    addiu	$s2,$s2,20664
    # Line 3579
    addiu	$t1,$s2,1888
    # Line 3572
    move	$a0,$s2
    b	.L0d96bf5c
    movz	$a0,$t1,$v0
.L0d96c064:
    # Line 3529
    lw	$t9,48($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 3813
    ld	$gp,184($sp)
    ld	$s0,168($sp)
    ld	$ra,208($sp)
    ld	$s1,192($sp)
    # Line 3531
    move	$v0,$zero
    # Line 3813
    ld	$s2,200($sp)
    ld	$s3,176($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end MakeCurrentRead

# Function: CopyContext
# Declared: Line 3817 (Source lines: 3818-3823)
# Address: 0x0d96c0a0 - 0x0d96c0fc (Size: 92 bytes, Frame: 16)
.ent CopyContext
CopyContext:
    # Line 3818
    lw	$at,168($a0)
    addiu	$sp,$sp,-16
    lui	$v0,0x19
    andi	$at,$at,0x1
    sd	$ra,8($sp)
    addiu	$v0,$v0,-15120
    sd	$gp,0($sp)
    beqz	$at,.L0d96c0e0
    addu	$gp,$t9,$v0
    # Line 3823
    # lw $t9, -32488($gp) # &__glOdyssey_CopyContext
    jal	__glOdyssey_CopyContext
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96c0e0:
    # Line 3820
    # lw $t9, -27332($gp) # &__glCopyContext
    jal	__glCopyContext
    nop
    ld	$ra,8($sp)
    # Line 3823
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end CopyContext

# Function: LoseCurrent
# Declared: Line 3828 (Source lines: 3828-3868)
# Address: 0x0d96c100 - 0x0d96c2f4 (Size: 500 bytes, Frame: 208)
.ent LoseCurrent
LoseCurrent:
    # Line 3828
    addiu	$sp,$sp,-80
    # Line 3833
    lw	$v0,3204($a0)
    li	$v1,7168
    # Line 3828
    lui	$at,0x19
    sd	$s6,8($sp)
    move	$s6,$a0
    addiu	$at,$at,-15216
    sd	$gp,0($sp)
    # Line 3833
    bne	$v0,$v1,.L0d96c2e0
    # Line 3828
    addu	$gp,$t9,$at
    # Line 3833
    lw	$v0,4120($zero)
    li	$v1,1
    beq	$v0,$v1,.L0d96c2e4
    # Line 3834
    move	$v0,$zero
    # Line 3839
    # lw $t9, -26768($gp) # &__glLoseCurrentBuffers
    sd	$ra,16($sp)
    jal	__glLoseCurrentBuffers
    move	$a1,$zero
    # Line 3854
    # lw $t9, -32740($gp) # &sub_0d960000
    # Line 3842
    lw	$a0,4120($zero)
    # Line 3854
    addiu	$t9,$t9,30240
    # Line 3842
    sw	$a0,3200($s6)
    # Line 3854
    move	$a0,$s6
    bal __glOdysseyFindWindowSize
    # Line 3851
    sw	$zero,4112($zero)
    li	$a0,4
    # Line 3854
    lw	$a4,6132($s6)
    # Line 3858
    li	$a2,236
    # Line 3854
    addiu	$a5,$s6,8032
    # Line 3858
    move	$a3,$zero
    addiu	$t0,$a4,24
    # Line 3868
    ld	$gp,0($sp)
    # Line 3854
    beq	$a4,$a5,.L0d96c2a4
    addiu	$a7,$a4,56
    addiu	$t2,$a4,40
    sd	$s4,40($sp)
    sd	$s1,56($sp)
    sd	$s2,24($sp)
    addiu	$s2,$a5,56
    li	$s1,0x40
    sd	$s5,64($sp)
    addiu	$s5,$a4,8
    addiu	$s4,$a5,8
    sd	$s0,48($sp)
    addiu	$s0,$a4,16
    sd	$s3,32($sp)
    addiu	$s3,$a5,24
.L0d96c1bc:
    addiu	$a0,$a0,-1
    # Line 3858
    addu	$ra,$a3,$a4
    addiu	$a2,$a2,-1
    addu	$at,$a3,$a5
    ld	$ra,0($ra)
    addiu	$a3,$a3,8
    bnez	$a0,.L0d96c1bc
    sd	$ra,0($at)
    addiu	$t9,$a4,32
    addiu	$t8,$a5,32
    addiu	$t3,$a4,48
    addiu	$t1,$a5,48
    addiu	$a6,$a5,40
    addiu	$ra,$a5,16
    nop
    nop
    nop
.L0d96c200:
    addu	$v1,$a3,$a4
    addu	$a0,$a3,$a5
    ld	$v1,0($v1)
    addu	$v0,$a3,$s5
    sd	$v1,0($a0)
    addu	$v1,$a3,$s4
    ld	$v0,0($v0)
    addu	$at,$a3,$s0
    sd	$v0,0($v1)
    addu	$v0,$a3,$ra
    ld	$at,0($at)
    addu	$a1,$a3,$t0
    sd	$at,0($v0)
    addu	$at,$a3,$s3
    ld	$a1,0($a1)
    addu	$a0,$a3,$t9
    sd	$a1,0($at)
    addu	$a1,$a3,$t8
    ld	$a0,0($a0)
    addu	$v1,$a3,$t2
    sd	$a0,0($a1)
    addu	$a0,$a3,$a6
    ld	$v1,0($v1)
    addu	$v0,$a3,$t3
    sd	$v1,0($a0)
    addu	$v1,$a3,$t1
    ld	$v0,0($v0)
    addiu	$a2,$a2,-8
    addu	$at,$a3,$a7
    sd	$v0,0($v1)
    addu	$v0,$a3,$s2
    ld	$at,0($at)
    addu	$a3,$a3,$s1
    bgtz	$a2,.L0d96c200
    sd	$at,0($v0)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    ld	$s4,40($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    ld	$s5,64($sp)
.L0d96c2a4:
    lw	$a0,4988($s6)
    # Line 3868
    li	$v0,1
    # Line 3858
    beqz	$a0,.L0d96c2d4
    ld	$ra,16($sp)
    # Line 3862
    lw	$a4,4136($zero)
    sw	$a4,5052($s6)
    # Line 3863
    lw	$a3,4140($zero)
    sw	$a3,5056($s6)
    # Line 3864
    lw	$a2,4144($zero)
    sw	$a2,5060($s6)
    # Line 3865
    lw	$a1,4148($zero)
    sw	$a1,5064($s6)
.L0d96c2d4:
    # Line 3868
    ld	$s6,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d96c2e0:
    # Line 3834
    move	$v0,$zero
.L0d96c2e4:
    # Line 3868
    ld	$gp,0($sp)
    ld	$s6,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end LoseCurrent

# Function: MakeCurrent
# Declared: Line 3872 (Source lines: 3873-3884)
# Address: 0x0d96c300 - 0x0d96c36c (Size: 108 bytes, Frame: 32)
.ent MakeCurrent
MakeCurrent:
    # Line 3873
    addiu	$sp,$sp,-32
    lui	$at,0x19
    sd	$gp,16($sp)
    addiu	$at,$at,-15728
    addu	$gp,$t9,$at
    # Line 3880
    lw	$t9,60($a0)
    # Line 3873
    sd	$s8,8($sp)
    sd	$s0,24($sp)
    # Line 3880
    nop
    # Line 3873
    sd	$ra,0($sp)
    # Line 3880
    jalr	$t9
    # Line 3873
    move	$s0,$a0
    # Line 3881
    lw	$t9,64($s0)
    # Line 3880
    move	$s8,$v0
    # Line 3881
    jalr	$t9
    move	$a0,$s0
    # Line 3884
    # lw $t9, -32736($gp) # &sub_0d970000
    ld	$ra,0($sp)
    # Line 3881
    move	$a2,$v0
    # Line 3884
    ld	$gp,16($sp)
    addiu	$t9,$t9,-20736
    move	$a0,$s0
    ld	$s0,24($sp)
    move	$a1,$s8
    ld	$s8,8($sp)
    bgezl	$zero,__glOdysseyValidateContext
    addiu	$sp,$sp,32
.end MakeCurrent

# Function: BindHyperpipe
# Declared: Line 3888 (Source lines: 3889-3908)
# Address: 0x0d96c370 - 0x0d96c3f0 (Size: 128 bytes, Frame: 32)
.ent BindHyperpipe
BindHyperpipe:
    # Line 3889
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    move	$s0,$a1
    li	$at,-1
    lui	$v0,0x19
    sd	$s7,8($sp)
    lui	$s7,0x2
    sd	$ra,24($sp)
    addiu	$v0,$v0,-15840
    addu	$s7,$a0,$s7
    sd	$gp,0($sp)
    beq	$a1,$at,.L0d96c3cc
    addu	$gp,$t9,$v0
    # Line 3902
    # lw $t9, -29220($gp) # &__glOdysseyBindHyperpipe
    jal	__glOdysseyBindHyperpipe
    nop
    # Line 3908
    ld	$gp,0($sp)
    ld	$ra,24($sp)
    # Line 3907
    sw	$s0,7920($s7)
    # Line 3908
    ld	$s0,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96c3cc:
    # Line 3897
    # lw $t9, -29216($gp) # &__glOdysseyUnbindHyperpipe
    jal	__glOdysseyUnbindHyperpipe
    lw	$a1,7920($s7)
    ld	$ra,24($sp)
    # Line 3908
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end BindHyperpipe

# Function: QueryHyperpipeBestAttrib
# Declared: Line 3911 (Source lines: 3917-3934)
# Address: 0x0d96c3f0 - 0x0d96c470 (Size: 128 bytes, Frame: 16)
.ent QueryHyperpipeBestAttrib
QueryHyperpipeBestAttrib:
    # Line 3917
    lui	$v0,0x2
    ori	$v0,$v0,0x1ef0
    addu	$v0,$v0,$a0
    move	$a7,$a4
    lw	$v0,0($v0)
    move	$t0,$a3
    lui	$at,0x19
    addiu	$sp,$sp,-16
    addiu	$at,$at,-15968
    sd	$gp,0($sp)
    bltz	$v0,.L0d96c438
    addu	$gp,$t9,$at
    # Line 3925
    li	$v1,1
    beq	$a2,$v1,.L0d96c448
    # Line 3932
    li	$v0,92
    # Line 3934
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96c438:
    # Line 3923
    li	$v0,92
    # Line 3934
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96c448:
    # Line 3927
    # lw $t9, -29252($gp) # &__glOdysseyQueryHyperpipeBestRect
    move	$a2,$a3
    move	$a3,$a4
    sd	$ra,8($sp)
    jal	__glOdysseyQueryHyperpipeBestRect
    move	$a4,$a5
    ld	$ra,8($sp)
    # Line 3934
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end QueryHyperpipeBestAttrib

# Function: QueryHyperpipeAttrib
# Declared: Line 3938 (Source lines: 3943-3974)
# Address: 0x0d96c470 - 0x0d96c53c (Size: 204 bytes, Frame: 16)
.ent QueryHyperpipeAttrib
QueryHyperpipeAttrib:
    # Line 3943
    addiu	$sp,$sp,-16
    # Line 3953
    li	$at,1
    # Line 3943
    lui	$v0,0x19
    move	$a6,$a3
    sd	$ra,8($sp)
    addiu	$v0,$v0,-16096
    sd	$gp,0($sp)
    # Line 3953
    beq	$a2,$at,.L0d96c4ec
    # Line 3943
    addu	$gp,$t9,$v0
    # Line 3953
    li	$v1,2
    beq	$a2,$v1,.L0d96c508
    # Line 3972
    li	$v0,92
    # Line 3953
    li	$a3,3
    beq	$a2,$a3,.L0d96c524
    # Line 3964
    nop	# was lw $t9, -29228($gp) # &__glOdysseyQueryHyperpipeStereo
    # Line 3953
    li	$a5,4
    beq	$a2,$a5,.L0d96c4c8
    # Line 3968
    nop	# was lw $t9, -29224($gp) # &__glOdysseyQueryHyperpipePixelAverage
    move	$ra,$ra
    # Line 3974
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96c4c8:
    # Line 3968
    move	$a2,$a6
    jal	__glOdysseyQueryHyperpipePixelAverage
    move	$a3,$a4
    ld	$ra,8($sp)
    move	$a0,$v0
.L0d96c4dc:
    # Line 3974
    move	$v0,$a0
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96c4ec:
    # Line 3955
    # lw $t9, -29248($gp) # &__glOdysseyQueryHyperpipeRect
    move	$a2,$a3
    jal	__glOdysseyQueryHyperpipeRect
    move	$a3,$a4
    ld	$ra,8($sp)
    b	.L0d96c4dc
    move	$a0,$v0
.L0d96c508:
    # Line 3960
    # lw $t9, -29244($gp) # &__glOdysseyQueryHyperpipeLimit
    move	$a2,$a3
    jal	__glOdysseyQueryHyperpipeLimit
    move	$a3,$a4
    ld	$ra,8($sp)
    # Line 3962
    b	.L0d96c4dc
    # Line 3960
    move	$a0,$v0
.L0d96c524:
    # Line 3964
    move	$a2,$a6
    jalr	$t9
    move	$a3,$a4
    ld	$ra,8($sp)
    # Line 3966
    b	.L0d96c4dc
    # Line 3964
    move	$a0,$v0
.end QueryHyperpipeAttrib

# Function: HyperpipeAttrib
# Declared: Line 3978 (Source lines: 3983-4008)
# Address: 0x0d96c540 - 0x0d96c610 (Size: 208 bytes, Frame: 16)
.ent HyperpipeAttrib
HyperpipeAttrib:
    # Line 3983
    lui	$at,0x2
    ori	$at,$at,0x1ef0
    addu	$at,$at,$a0
    lw	$at,0($at)
    addiu	$sp,$sp,-16
    lui	$v0,0x19
    move	$a6,$a3
    sd	$ra,8($sp)
    addiu	$v0,$v0,-16304
    sd	$gp,0($sp)
    bltz	$at,.L0d96c5c4
    addu	$gp,$t9,$v0
    # Line 3991
    li	$v0,1
    beq	$a2,$v0,.L0d96c5d8
    move	$ra,$ra
    li	$v1,3
    beq	$a2,$v1,.L0d96c5f4
    # Line 4006
    li	$v0,92
    # Line 3991
    li	$a3,4
    beq	$a2,$a3,.L0d96c5a0
    # Line 4001
    nop	# was lw $t9, -29232($gp) # &__glOdysseyHyperpipePixelAverage
    # Line 4008
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96c5a0:
    # Line 4001
    move	$a2,$a6
    jal	__glOdysseyHyperpipePixelAverage
    move	$a3,$a4
    ld	$ra,8($sp)
    move	$a0,$v0
.L0d96c5b4:
    # Line 4008
    move	$v0,$a0
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96c5c4:
    move	$ra,$ra
    # Line 3988
    li	$v0,92
    # Line 4008
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96c5d8:
    # Line 3993
    # lw $t9, -29240($gp) # &__glOdysseyHyperpipeRect
    move	$a2,$a3
    jal	__glOdysseyHyperpipeRect
    move	$a3,$a4
    ld	$ra,8($sp)
    b	.L0d96c5b4
    move	$a0,$v0
.L0d96c5f4:
    # Line 3997
    # lw $t9, -29236($gp) # &__glOdysseyHyperpipeStereo
    move	$a2,$a3
    jal	__glOdysseyHyperpipeStereo
    move	$a3,$a4
    ld	$ra,8($sp)
    # Line 3999
    b	.L0d96c5b4
    # Line 3997
    move	$a0,$v0
.end HyperpipeAttrib

# Function: __glOdysseyCreateContext
# Declared: Line 4025 (Source lines: 4028-4400)
# Address: 0x0d96c610 - 0x0d96f778 (Size: 12648 bytes, Frame: 176)
.globl __glOdysseyCreateContext
.ent __glOdysseyCreateContext
__glOdysseyCreateContext:
    # Line 4028
    addiu	$sp,$sp,-688
    sd	$s0,328($sp)
    sd	$a1,336($sp)
    lui	$v0,0x19
    sd	$gp,360($sp)
    addiu	$v0,$v0,-16512
    addu	$gp,$t9,$v0
    # Line 4037
    lw	$t9,4($a0)
    lui	$at,0x2
    li	$a1,1
    # Line 4028
    sd	$s2,368($sp)
    move	$s2,$a2
    # Line 4037
    ori	$a2,$at,0x1f00
    # Line 4028
    sd	$a0,344($sp)
    sd	$ra,352($sp)
    # Line 4037
    jalr	$t9
    move	$a0,$zero
    beqz	$v0,.L0d96f69c
    move	$s0,$v0
    # Line 4041
    # lw $t9, -17004($gp) # &getenv
    la	$a0,sub_0daf0000
    jal	getenv
    addiu	$a0,$a0,-29936
    ld	$a1,336($sp)
    # Line 4042
    beqz	$v0,.L0d96c690
    ld	$t2,344($sp)
    lbu	$a0,0($v0)
    li	$a2,78
    beq	$a0,$a2,.L0d96f6b8
    li	$a3,110
    beq	$a0,$a3,.L0d96f6bc
    # Line 4043
    lui	$ra,0x2
.L0d96c690:
    # Line 4045
    lui	$a5,0x2
    addu	$a5,$s0,$a5
    sd	$a5,0($sp)
    li	$a4,1
    sb	$a4,-25118($a5)
.L0d96c6a4:
    # Line 4061
    move	$t9,$t2
    move	$v0,$s0
    move	$a5,$zero
    addiu	$t8,$t2,12
    addiu	$a6,$s0,12
    li	$a7,0x10
    addiu	$t0,$t2,4
    addiu	$t3,$s0,4
    li	$a4,20
    addiu	$t1,$s0,8
    addiu	$a0,$t2,8
.L0d96c6d0:
    addu	$v1,$a5,$t9
    addu	$a2,$a5,$v0
    lw	$v1,0($v1)
    addu	$at,$a5,$t0
    sw	$v1,0($a2)
    addu	$v1,$a5,$t3
    lw	$at,0($at)
    addu	$ra,$a5,$a0
    sw	$at,0($v1)
    addu	$at,$a5,$t1
    lw	$ra,0($ra)
    addiu	$a4,$a4,-4
    addu	$t2,$a5,$t8
    sw	$ra,0($at)
    addu	$ra,$a5,$a6
    lw	$t2,0($t2)
    addu	$a5,$a5,$a7
    bgtz	$a4,.L0d96c6d0
    sw	$t2,0($ra)
    # Line 4062
    move	$t2,$a1
    addiu	$a7,$a1,24
    addiu	$v0,$s0,3400
    li	$a6,0x20
    addiu	$t3,$a1,8
    addiu	$t1,$s0,3384
    li	$a5,20
    move	$a4,$zero
    addiu	$t8,$s0,3376
    addiu	$a0,$s0,3392
    addiu	$t0,$a1,16
    nop
    nop
.L0d96c750:
    addu	$t9,$a4,$t2
    addu	$ra,$a4,$t8
    ld	$t9,0($t9)
    addu	$a3,$a4,$t3
    sd	$t9,0($ra)
    addu	$t9,$a4,$t1
    ld	$a3,0($a3)
    addu	$a2,$a4,$t0
    sd	$a3,0($t9)
    addu	$a3,$a4,$a0
    ld	$a2,0($a2)
    addiu	$a5,$a5,-4
    addu	$a1,$a4,$a7
    sd	$a2,0($a3)
    addu	$a2,$a4,$v0
    ld	$a1,0($a1)
    addu	$a4,$a4,$a6
    bgtz	$a5,.L0d96c750
    sd	$a1,0($a2)
    addiu	$v0,$s0,3400
    addiu	$t8,$s0,3240
    li	$t0,0x20
    addiu	$t1,$s0,3384
    addiu	$t3,$s0,3224
    li	$a5,20
    move	$a4,$zero
    addiu	$a7,$s0,3216
    addiu	$a0,$s0,3376
    addiu	$a6,$s0,3232
    addiu	$t2,$s0,3392
    nop
    nop
.L0d96c7d0:
    addu	$a1,$a4,$a0
    addu	$a2,$a4,$a7
    ld	$a1,0($a1)
    addu	$v1,$a4,$t1
    sd	$a1,0($a2)
    addu	$a1,$a4,$t3
    ld	$v1,0($v1)
    addu	$at,$a4,$t2
    sd	$v1,0($a1)
    addu	$v1,$a4,$a6
    ld	$at,0($at)
    addiu	$a5,$a5,-4
    addu	$ra,$a4,$v0
    sd	$at,0($v1)
    addu	$at,$a4,$t8
    ld	$ra,0($ra)
    addu	$a4,$a4,$t0
    bgtz	$a5,.L0d96c7d0
    sd	$ra,0($at)
    # Line 4067
    lw	$t9,4($s0)
    move	$a0,$s0
    li	$a2,4
    li	$a1,16
    jalr	$t9
    sd	$s1,608($sp)
    lui	$s1,0x1
    addu	$s1,$s0,$s1
    beqz	$v0,.L0d96f6cc
    sw	$v0,26832($s1)
    # Line 4078
    lw	$t8,-13616($gp)
    sw	$zero,26828($s1)
    # Line 4077
    sw	$zero,26824($s1)
    # Line 4078
    bnez	$t8,.L0d96f47c
    # Line 4075
    sw	$v0,26836($s1)
    # Line 4091
    la	$a4,sub_0daf0000
    sd	$s1,616($sp)
    li	$a0,2
    li	$a5,330
    # lw $t9, -17240($gp) # &__glOdyim_dispatchTable
    move	$a6,$zero
    addiu	$a4,$a4,20664
.L0d96c874:
    addiu	$a0,$a0,-1
    addu	$a7,$a6,$t9
    addiu	$a5,$a5,-1
    lw	$a7,0($a7)
    addu	$t0,$a6,$a4
    addiu	$a6,$a6,4
    bnez	$a0,.L0d96c874
    sw	$a7,0($t0)
    sd	$s2,632($sp)
    sd	$s4,656($sp)
    addiu	$s4,$t9,28
    sd	$s3,648($sp)
    addiu	$s3,$a4,28
    li	$s2,0x20
    sd	$s7,672($sp)
    addiu	$v0,$a4,8
    addiu	$a0,$t9,8
    sd	$s8,640($sp)
    addiu	$s8,$t9,12
    addiu	$s7,$a4,12
    sd	$s6,664($sp)
    addiu	$s6,$t9,20
    sd	$s5,680($sp)
    addiu	$s5,$a4,20
    addiu	$s1,$a4,24
    sd	$s0,624($sp)
    addiu	$s0,$t9,24
    addiu	$a1,$a4,16
    addiu	$t1,$a4,4
    sd	$t1,384($sp)
    addiu	$ra,$t9,16
    addiu	$t0,$t9,4
    sd	$t0,376($sp)
    nop
    nop
.L0d96c900:
    addu	$t2,$a6,$s4
    addu	$t8,$a6,$s0
    lw	$t2,0($t2)
    addu	$v1,$a6,$s6
    lw	$t8,0($t8)
    addu	$a3,$a6,$ra
    lw	$v1,0($v1)
    addu	$t0,$a6,$s8
    lw	$a3,0($a3)
    lw	$t0,0($t0)
    addu	$t3,$a6,$a0
    lw	$t3,0($t3)
    ld	$a7,384($sp)
    addu	$t1,$a6,$t9
    ld	$a2,376($sp)
    addu	$at,$a6,$a4
    lw	$t1,0($t1)
    sw	$t1,0($at)
    addu	$a2,$a6,$a2
    addu	$a7,$a6,$a7
    lw	$a2,0($a2)
    addu	$at,$a6,$v0
    sw	$a2,0($a7)
    addu	$t1,$a6,$s7
    sw	$t3,0($at)
    sw	$t0,0($t1)
    addu	$a7,$a6,$a1
    addu	$a2,$a6,$s5
    sw	$a3,0($a7)
    addiu	$a5,$a5,-8
    addu	$at,$a6,$s1
    sw	$v1,0($a2)
    addu	$t3,$a6,$s3
    sw	$t8,0($at)
    addu	$a6,$a6,$s2
    bgtz	$a5,.L0d96c900
    sw	$t2,0($t3)
    addiu	$s6,$a4,1332
    li	$t8,0x10
    addiu	$a0,$a4,1324
    # Line 4092
    li	$a6,24
    move	$a5,$zero
    la	$s1,__glOdyim_vertexDispatchTable
    addiu	$s3,$a4,1320
    addiu	$s4,$a4,1328
    move	$s2,$s1
    addiu	$s7,$s1,12
    addiu	$s8,$s1,4
    addiu	$s1,$s1,8
    nop
    nop
    nop
.L0d96c9d0:
    addu	$t9,$a5,$s7
    lw	$t9,0($t9)
    addu	$at,$a5,$s1
    lw	$at,0($at)
    addu	$v1,$a5,$s8
    lw	$v1,0($v1)
    addu	$a2,$a5,$s2
    lw	$a2,0($a2)
    addu	$a3,$a5,$s3
    addu	$a1,$a5,$a0
    sw	$a2,0($a3)
    addiu	$a6,$a6,-4
    addu	$v0,$a5,$s4
    sw	$v1,0($a1)
    addu	$ra,$a5,$s6
    sw	$at,0($v0)
    addu	$a5,$a5,$t8
    bgtz	$a6,.L0d96c9d0
    sw	$t9,0($ra)
    li	$t0,2
    # Line 4093
    li	$a5,42
    la	$t3,__glOdyim_colorDispatchTable
    move	$a6,$zero
    addiu	$a7,$a4,1416
.L0d96ca30:
    addiu	$t0,$t0,-1
    addu	$ra,$a6,$t3
    addiu	$a5,$a5,-1
    lw	$ra,0($ra)
    addu	$at,$a6,$a7
    addiu	$a6,$a6,4
    bnez	$t0,.L0d96ca30
    sw	$ra,0($at)
    addiu	$v0,$t3,28
    addiu	$t2,$a7,28
    li	$t9,0x20
    addiu	$s6,$t3,4
    addiu	$s7,$a7,4
    la	$t1,__glOdyim_normalDispatchTable
    addiu	$s8,$t3,12
    addiu	$a0,$a7,12
    addiu	$s0,$t3,20
    addiu	$a3,$a7,16
    sd	$a3,80($sp)
    addiu	$s5,$a7,20
    addiu	$a2,$t3,16
    sd	$a2,72($sp)
    addiu	$ra,$a7,24
    addiu	$v1,$a7,8
    sd	$v1,56($sp)
    addiu	$a1,$t3,24
    addiu	$at,$t3,8
    sd	$at,32($sp)
.L0d96caa0:
    addu	$t0,$a6,$v0
    addu	$s2,$a6,$a1
    lw	$t0,0($t0)
    lw	$s2,0($s2)
    addu	$s4,$a6,$s0
    ld	$at,72($sp)
    addu	$a2,$a6,$s8
    lw	$s4,0($s4)
    lw	$a2,0($a2)
    addu	$at,$a6,$at
    lw	$at,0($at)
    ld	$s1,32($sp)
    addu	$t8,$a6,$s6
    lw	$t8,0($t8)
    addu	$a3,$a6,$t3
    addu	$s3,$a6,$a7
    lw	$a3,0($a3)
    addu	$v1,$a6,$s7
    sw	$a3,0($s3)
    sw	$t8,0($v1)
    ld	$s3,56($sp)
    ld	$v1,80($sp)
    addu	$s1,$a6,$s1
    lw	$s1,0($s1)
    addu	$s3,$a6,$s3
    addu	$a3,$a6,$a0
    sw	$s1,0($s3)
    addu	$v1,$a6,$v1
    sw	$a2,0($a3)
    addu	$t8,$a6,$s5
    sw	$at,0($v1)
    addiu	$a5,$a5,-8
    sw	$s4,0($t8)
    addu	$s3,$a6,$ra
    addu	$s1,$a6,$t2
    sw	$s2,0($s3)
    addu	$a6,$a6,$t9
    bgtz	$a5,.L0d96caa0
    sw	$t0,0($s1)
    # Line 4094
    addiu	$a5,$a4,1584
    lw	$t2,32($t1)
    lw	$t3,36($t1)
    lw	$t8,28($t1)
    lw	$t9,24($t1)
    lw	$ra,20($t1)
    lw	$at,16($t1)
    lw	$v0,12($t1)
    lw	$v1,8($t1)
    lw	$a0,4($t1)
    lw	$a1,0($t1)
    sw	$a1,1584($a4)
    sw	$a0,1588($a4)
    sw	$v1,1592($a4)
    sw	$v0,1596($a4)
    sw	$at,1600($a4)
    sw	$ra,1604($a4)
    sw	$t9,1608($a4)
    sw	$t8,1612($a4)
    sw	$t3,1620($a4)
    sw	$t2,1616($a4)
    addiu	$s2,$a4,1636
    li	$t8,0x10
    addiu	$s4,$a4,1628
    # Line 4095
    li	$a5,32
    move	$a6,$zero
    la	$ra,__glOdyim_texCoordDispatchTable
    addiu	$s1,$a4,1624
    addiu	$t3,$a4,1632
    move	$t1,$ra
    addiu	$s3,$ra,12
    la	$s0,__glOdyim_rasterPosDispatchTable
    addiu	$s6,$ra,4
    addiu	$t2,$ra,8
    nop
    nop
    nop
.L0d96cbd0:
    addu	$a2,$a6,$s3
    lw	$a2,0($a2)
    addu	$a7,$a6,$t2
    lw	$a7,0($a7)
    addu	$t9,$a6,$s6
    lw	$t9,0($t9)
    addu	$v0,$a6,$t1
    lw	$v0,0($v0)
    addu	$v1,$a6,$s1
    addu	$at,$a6,$s4
    sw	$v0,0($v1)
    addiu	$a5,$a5,-4
    addu	$t0,$a6,$t3
    sw	$t9,0($at)
    addu	$a3,$a6,$s2
    sw	$a7,0($t0)
    addu	$a6,$a6,$t8
    bgtz	$a5,.L0d96cbd0
    sw	$a2,0($a3)
    # Line 4096
    move	$v0,$s0
    addiu	$t8,$s0,12
    addiu	$s4,$a4,1764
    li	$s1,0x10
    addiu	$s7,$s0,4
    addiu	$s6,$a4,1756
    li	$a6,24
    move	$a5,$zero
    addiu	$s3,$a4,1752
    la	$a7,__glOdyim_rectDispatchTable
    addiu	$s8,$a4,1760
    addiu	$a0,$s0,8
    nop
.L0d96cc50:
    addu	$a3,$a5,$t8
    lw	$a3,0($a3)
    addu	$t1,$a5,$a0
    lw	$t1,0($t1)
    addu	$t3,$a5,$s7
    lw	$t3,0($t3)
    addu	$ra,$a5,$v0
    lw	$ra,0($ra)
    addu	$at,$a5,$s3
    addu	$t9,$a5,$s6
    sw	$ra,0($at)
    addiu	$a6,$a6,-4
    addu	$t2,$a5,$s8
    sw	$t3,0($t9)
    addu	$t0,$a5,$s4
    sw	$t1,0($t2)
    addu	$a5,$a5,$s1
    bgtz	$a6,.L0d96cc50
    sw	$a3,0($t0)
    # Line 4097
    lw	$t0,0($a7)
    lw	$t1,4($a7)
    lw	$t2,8($a7)
    lw	$t3,12($a7)
    lw	$t9,16($a7)
    lw	$ra,20($a7)
    lw	$at,24($a7)
    lw	$v0,28($a7)
    sw	$v0,1876($a4)
    sw	$at,1872($a4)
    sw	$ra,1868($a4)
    sw	$t9,1864($a4)
    sw	$t3,1860($a4)
    sw	$t2,1856($a4)
    sw	$t1,1852($a4)
    sw	$t0,1848($a4)
    li	$a7,2
    # Line 4103
    la	$t0,__glOdyim_dispatchTable
    li	$a6,330
    move	$a5,$zero
    addiu	$ra,$a4,1888
    move	$t9,$t0
.L0d96ccf4:
    addiu	$a7,$a7,-1
    addu	$v1,$a5,$t9
    addiu	$a6,$a6,-1
    lw	$v1,0($v1)
    addu	$a0,$a5,$ra
    addiu	$a5,$a5,4
    bnez	$a7,.L0d96ccf4
    sw	$v1,0($a0)
    addiu	$s6,$t9,28
    addiu	$s7,$ra,28
    li	$s8,0x20
    addiu	$s0,$t9,4
    addiu	$s1,$ra,4
    addiu	$s2,$t9,12
    addiu	$s3,$ra,12
    addiu	$s4,$t9,20
    addiu	$s5,$ra,20
    addiu	$a0,$ra,24
    addiu	$a7,$t9,16
    sd	$a7,600($sp)
    addiu	$v0,$t9,24
    addiu	$a3,$ra,8
    sd	$a3,592($sp)
    addiu	$a1,$ra,16
    addiu	$a2,$t9,8
    sd	$a2,584($sp)
    nop
.L0d96cd60:
    addu	$t0,$a5,$s6
    addu	$t2,$a5,$v0
    lw	$t0,0($t0)
    addu	$t8,$a5,$s4
    lw	$t2,0($t2)
    addu	$a3,$a5,$s2
    lw	$t8,0($t8)
    lw	$a3,0($a3)
    addu	$at,$a5,$s0
    lw	$at,0($at)
    addu	$a7,$a5,$t9
    addu	$t3,$a5,$ra
    lw	$a7,0($a7)
    addu	$a2,$a5,$s1
    sw	$a7,0($t3)
    sw	$at,0($a2)
    ld	$v1,600($sp)
    ld	$t1,584($sp)
    addu	$v1,$a5,$v1
    ld	$t3,592($sp)
    lw	$v1,0($v1)
    addu	$t1,$a5,$t1
    lw	$t1,0($t1)
    addu	$t3,$a5,$t3
    addu	$a7,$a5,$s3
    sw	$t1,0($t3)
    addu	$a2,$a5,$a1
    sw	$a3,0($a7)
    addu	$at,$a5,$s5
    sw	$v1,0($a2)
    addiu	$a6,$a6,-8
    sw	$t8,0($at)
    addu	$t3,$a5,$a0
    addu	$t1,$a5,$s7
    sw	$t2,0($t3)
    addu	$a5,$a5,$s8
    bgtz	$a6,.L0d96cd60
    sw	$t0,0($t1)
    addiu	$s4,$a4,3220
    li	$s1,0x10
    addiu	$s6,$a4,3212
    # Line 4104
    li	$a6,24
    move	$a5,$zero
    la	$a0,__glOdyim_vertexDispatchTable
    addiu	$s3,$a4,3208
    addiu	$s8,$a4,3216
    move	$s2,$a0
    addiu	$t8,$a0,12
    addiu	$s7,$a0,4
    addiu	$a0,$a0,8
    nop
    nop
.L0d96ce30:
    addu	$a1,$a5,$t8
    lw	$a1,0($a1)
    addu	$a3,$a5,$a0
    lw	$a3,0($a3)
    addu	$t0,$a5,$s7
    lw	$t0,0($t0)
    addu	$t2,$a5,$s2
    lw	$t2,0($t2)
    addu	$t3,$a5,$s3
    addu	$t1,$a5,$s6
    sw	$t2,0($t3)
    addiu	$a6,$a6,-4
    addu	$a7,$a5,$s8
    sw	$t0,0($t1)
    addu	$a2,$a5,$s4
    sw	$a3,0($a7)
    addu	$a5,$a5,$s1
    bgtz	$a6,.L0d96ce30
    sw	$a1,0($a2)
    li	$t0,2
    # Line 4105
    li	$a5,42
    la	$t2,__glOdyim_indexDispatchTable
    move	$a6,$zero
    addiu	$a7,$a4,3304
.L0d96ce90:
    addiu	$t0,$t0,-1
    addu	$a2,$a6,$t2
    addiu	$a5,$a5,-1
    lw	$a2,0($a2)
    addu	$a3,$a6,$a7
    addiu	$a6,$a6,4
    bnez	$t0,.L0d96ce90
    sw	$a2,0($a3)
    addiu	$s0,$t2,28
    addiu	$s5,$a7,28
    li	$v0,0x20
    addiu	$s6,$t2,4
    addiu	$s7,$a7,4
    addiu	$s8,$t2,12
    addiu	$a0,$a7,12
    addiu	$t3,$t2,20
    addiu	$t1,$a7,20
    addiu	$t9,$a7,24
    addiu	$t8,$t2,16
    sd	$t8,152($sp)
    addiu	$ra,$t2,24
    addiu	$t0,$a7,8
    sd	$t0,136($sp)
    addiu	$a1,$a7,16
    addiu	$a3,$t2,8
    sd	$a3,112($sp)
    nop
    nop
.L0d96cf00:
    addu	$at,$a6,$s0
    addu	$a2,$a6,$ra
    lw	$at,0($at)
    addu	$t0,$a6,$t3
    lw	$a2,0($a2)
    addu	$s4,$a6,$s8
    lw	$t0,0($t0)
    lw	$s4,0($s4)
    addu	$s1,$a6,$s6
    lw	$s1,0($s1)
    addu	$t8,$a6,$t2
    addu	$a3,$a6,$a7
    lw	$t8,0($t8)
    addu	$s3,$a6,$s7
    sw	$t8,0($a3)
    sw	$s1,0($s3)
    ld	$s2,152($sp)
    ld	$v1,112($sp)
    addu	$s2,$a6,$s2
    ld	$a3,136($sp)
    lw	$s2,0($s2)
    addu	$v1,$a6,$v1
    lw	$v1,0($v1)
    addu	$a3,$a6,$a3
    addu	$t8,$a6,$a0
    sw	$v1,0($a3)
    addu	$s3,$a6,$a1
    sw	$s4,0($t8)
    addu	$s1,$a6,$t1
    sw	$s2,0($s3)
    addiu	$a5,$a5,-8
    sw	$t0,0($s1)
    addu	$a3,$a6,$t9
    addu	$v1,$a6,$s5
    sw	$a2,0($a3)
    addu	$a6,$a6,$v0
    bgtz	$a5,.L0d96cf00
    sw	$at,0($v1)
    # Line 4106
    la	$t0,__glOdyim_normalDispatchTable
    addiu	$a5,$a4,3472
    lw	$v0,32($t0)
    lw	$v1,36($t0)
    lw	$a0,28($t0)
    lw	$a1,24($t0)
    lw	$a2,20($t0)
    lw	$a3,16($t0)
    lw	$t1,12($t0)
    lw	$t2,8($t0)
    lw	$t3,4($t0)
    lw	$t8,0($t0)
    sw	$t8,3472($a4)
    sw	$t3,3476($a4)
    sw	$t2,3480($a4)
    sw	$t1,3484($a4)
    sw	$a3,3488($a4)
    sw	$a2,3492($a4)
    sw	$a1,3496($a4)
    sw	$a0,3500($a4)
    sw	$v1,3508($a4)
    sw	$v0,3504($a4)
    addiu	$t8,$a4,3524
    li	$s0,0x10
    addiu	$t2,$a4,3516
    # Line 4107
    li	$a6,32
    move	$a5,$zero
    la	$s4,__glOdyim_texCoordDispatchTable
    addiu	$s3,$a4,3512
    addiu	$s1,$a4,3520
    move	$s5,$s4
    addiu	$t3,$s4,12
    # lw $t9, -17200($gp) # &__glOdyim_rasterPosDispatchTable
    addiu	$t1,$s4,4
    addiu	$s2,$s4,8
    nop
    nop
    nop
.L0d96d030:
    addu	$ra,$a5,$t3
    lw	$ra,0($ra)
    addu	$v0,$a5,$s2
    lw	$v0,0($v0)
    addu	$a0,$a5,$t1
    lw	$a0,0($a0)
    addu	$a2,$a5,$s5
    lw	$a2,0($a2)
    addu	$a3,$a5,$s3
    addu	$a1,$a5,$t2
    sw	$a2,0($a3)
    addiu	$a6,$a6,-4
    addu	$v1,$a5,$s1
    sw	$a0,0($a1)
    addu	$at,$a5,$t8
    sw	$v0,0($v1)
    addu	$a5,$a5,$s0
    bgtz	$a6,.L0d96d030
    sw	$ra,0($at)
    # Line 4108
    move	$v0,$t9
    addiu	$t8,$t9,12
    addiu	$s3,$a4,3652
    li	$s1,0x10
    addiu	$s6,$t9,4
    addiu	$s4,$a4,3644
    li	$a6,24
    move	$a5,$zero
    addiu	$s2,$a4,3640
    la	$t1,__glOdyim_rectDispatchTable
    addiu	$s7,$a4,3648
    addiu	$s8,$t9,8
    nop
.L0d96d0b0:
    addu	$at,$a5,$t8
    lw	$at,0($at)
    addu	$a0,$a5,$s8
    lw	$a0,0($a0)
    addu	$a2,$a5,$s6
    lw	$a2,0($a2)
    addu	$a7,$a5,$v0
    lw	$a7,0($a7)
    addu	$t0,$a5,$s2
    addu	$a3,$a5,$s4
    sw	$a7,0($t0)
    addiu	$a6,$a6,-4
    addu	$a1,$a5,$s7
    sw	$a2,0($a3)
    addu	$v1,$a5,$s3
    sw	$a0,0($a1)
    addu	$a5,$a5,$s1
    bgtz	$a6,.L0d96d0b0
    sw	$at,0($v1)
    # Line 4109
    lw	$t2,28($t1)
    sw	$t2,3764($a4)
    lw	$t0,24($t1)
    sw	$t0,3760($a4)
    lw	$a3,20($t1)
    sw	$a3,3756($a4)
    lw	$a2,16($t1)
    sw	$a2,3752($a4)
    lw	$a1,12($t1)
    sw	$a1,3748($a4)
    lw	$a0,8($t1)
    sw	$a0,3744($a4)
    lw	$v1,4($t1)
    sw	$v1,3740($a4)
    lw	$v0,0($t1)
    sw	$v0,3736($a4)
    li	$a7,2
    # Line 4115
    la	$t0,__glOdyim_softClipDispatchTable
    li	$a6,330
    move	$a5,$zero
    addiu	$ra,$a4,3776
    move	$t9,$t0
.L0d96d154:
    addiu	$a7,$a7,-1
    addu	$t3,$a5,$t9
    addiu	$a6,$a6,-1
    lw	$t3,0($t3)
    addu	$t8,$a5,$ra
    addiu	$a5,$a5,4
    bnez	$a7,.L0d96d154
    sw	$t3,0($t8)
    addiu	$s8,$t9,28
    addiu	$s7,$ra,28
    li	$s6,0x20
    addiu	$s1,$ra,8
    addiu	$s0,$t9,8
    addiu	$a1,$ra,12
    addiu	$v0,$t9,12
    sd	$v0,576($sp)
    addiu	$v0,$t9,20
    addiu	$a0,$ra,20
    addiu	$s5,$ra,24
    addiu	$s4,$t9,24
    addiu	$s3,$ra,16
    addiu	$at,$ra,4
    sd	$at,568($sp)
    addiu	$s2,$t9,16
    addiu	$t8,$t9,4
    sd	$t8,560($sp)
    nop
.L0d96d1c0:
    addu	$v1,$a5,$s8
    addu	$a3,$a5,$s4
    lw	$v1,0($v1)
    addu	$t0,$a5,$v0
    lw	$a3,0($a3)
    addu	$t2,$a5,$s2
    lw	$t0,0($t0)
    lw	$t2,0($t2)
    addu	$a2,$a5,$s0
    lw	$a2,0($a2)
    ld	$t3,568($sp)
    ld	$t8,576($sp)
    addu	$at,$a5,$t9
    lw	$at,0($at)
    addu	$a7,$a5,$ra
    ld	$t1,560($sp)
    sw	$at,0($a7)
    addu	$t8,$a5,$t8
    lw	$t8,0($t8)
    addu	$t1,$a5,$t1
    addu	$t3,$a5,$t3
    lw	$t1,0($t1)
    addu	$a7,$a5,$s1
    sw	$t1,0($t3)
    addu	$at,$a5,$a1
    sw	$a2,0($a7)
    sw	$t8,0($at)
    addu	$t3,$a5,$s3
    addu	$t1,$a5,$a0
    sw	$t2,0($t3)
    addiu	$a6,$a6,-8
    addu	$a7,$a5,$s5
    sw	$t0,0($t1)
    addu	$a2,$a5,$s7
    sw	$a3,0($a7)
    addu	$a5,$a5,$s6
    bgtz	$a6,.L0d96d1c0
    sw	$v1,0($a2)
    ld	$a0,0($sp)
    lbu	$a0,-25118($a0)
    beqz	$a0,.L0d96f6fc
    addiu	$s3,$a4,5108
    addiu	$s2,$a4,5108
    li	$s1,0x10
    addiu	$s3,$a4,5100
    # Line 4117
    li	$a6,24
    la	$a0,__glOdyim_softClipVertexDispatchTableFast
    move	$a5,$zero
    addiu	$s6,$a4,5104
    addiu	$s8,$a4,5096
    addiu	$t8,$a0,12
    addiu	$s7,$a0,8
    addiu	$s4,$a0,4
    nop
    nop
    nop
.L0d96d2a0:
    addu	$a1,$a5,$t8
    lw	$a1,0($a1)
    addu	$a3,$a5,$s7
    lw	$a3,0($a3)
    addu	$t0,$a5,$s4
    lw	$t0,0($t0)
    addu	$t2,$a5,$a0
    lw	$t2,0($t2)
    addu	$t3,$a5,$s8
    addu	$t1,$a5,$s3
    sw	$t2,0($t3)
    addiu	$a6,$a6,-4
    addu	$a7,$a5,$s6
    sw	$t0,0($t1)
    addu	$a2,$a5,$s2
    sw	$a3,0($a7)
    addu	$a5,$a5,$s1
    bgtz	$a6,.L0d96d2a0
    sw	$a1,0($a2)
    li	$t8,2
.L0d96d2f0:
    # Line 4121
    li	$a5,42
    # Line 4119
    la	$t2,__glOdyim_softClipColorDispatchTable
    # Line 4121
    move	$a6,$zero
    addiu	$a7,$a4,5192
.L0d96d300:
    addiu	$t8,$t8,-1
    addu	$a2,$a6,$t2
    addiu	$a5,$a5,-1
    lw	$a2,0($a2)
    addu	$a3,$a6,$a7
    addiu	$a6,$a6,4
    bnez	$t8,.L0d96d300
    sw	$a2,0($a3)
    addiu	$t9,$t2,28
    addiu	$ra,$a7,28
    li	$s2,0x20
    addiu	$s8,$t2,4
    addiu	$t3,$a7,4
    addiu	$t1,$t2,12
    addiu	$s0,$a7,12
    addiu	$s5,$t2,20
    addiu	$v0,$a7,20
    addiu	$a0,$a7,24
    addiu	$at,$t2,16
    sd	$at,24($sp)
    addiu	$t0,$t2,24
    addiu	$t8,$a7,8
    sd	$t8,16($sp)
    addiu	$a1,$a7,16
    addiu	$a3,$t2,8
    sd	$a3,8($sp)
    nop
    nop
.L0d96d370:
    addu	$v1,$a6,$t9
    addu	$a3,$a6,$t0
    lw	$v1,0($v1)
    addu	$s3,$a6,$s5
    lw	$a3,0($a3)
    addu	$t8,$a6,$t1
    lw	$s3,0($s3)
    lw	$t8,0($t8)
    addu	$s4,$a6,$s8
    lw	$s4,0($s4)
    addu	$at,$a6,$t2
    addu	$s1,$a6,$a7
    lw	$at,0($at)
    addu	$s7,$a6,$t3
    sw	$at,0($s1)
    sw	$s4,0($s7)
    ld	$s6,24($sp)
    ld	$a2,8($sp)
    addu	$s6,$a6,$s6
    ld	$s1,16($sp)
    lw	$s6,0($s6)
    addu	$a2,$a6,$a2
    lw	$a2,0($a2)
    addu	$s1,$a6,$s1
    addu	$at,$a6,$s0
    sw	$a2,0($s1)
    addu	$s7,$a6,$a1
    sw	$t8,0($at)
    addu	$s4,$a6,$v0
    sw	$s6,0($s7)
    addiu	$a5,$a5,-8
    sw	$s3,0($s4)
    addu	$s1,$a6,$a0
    addu	$a2,$a6,$ra
    sw	$a3,0($s1)
    addu	$a6,$a6,$s2
    bgtz	$a5,.L0d96d370
    sw	$v1,0($a2)
    # Line 4122
    la	$s3,__glSoftim_normalDispatchTable
    addiu	$a5,$a4,5360
    lw	$a0,32($s3)
    lw	$a1,36($s3)
    lw	$a2,28($s3)
    lw	$a3,24($s3)
    lw	$t0,20($s3)
    lw	$t1,16($s3)
    lw	$t2,12($s3)
    lw	$t3,8($s3)
    lw	$t8,4($s3)
    lw	$t9,0($s3)
    sw	$t9,5360($a4)
    sw	$t8,5364($a4)
    sw	$t3,5368($a4)
    sw	$t2,5372($a4)
    sw	$t1,5376($a4)
    sw	$t0,5380($a4)
    sw	$a3,5384($a4)
    sw	$a2,5388($a4)
    sw	$a1,5396($a4)
    sw	$a0,5392($a4)
    addiu	$s4,$a4,5412
    li	$s3,0x10
    addiu	$s8,$a4,5404
    # Line 4123
    li	$a6,32
    move	$a5,$zero
    la	$t8,__glSoftim_texCoordDispatchTable
    addiu	$s7,$a4,5400
    addiu	$s1,$a4,5408
    move	$s2,$t8
    addiu	$s6,$t8,12
    addiu	$a0,$t8,4
    addiu	$t8,$t8,8
.L0d96d490:
    addu	$t9,$a5,$s6
    lw	$t9,0($t9)
    addu	$at,$a5,$t8
    lw	$at,0($at)
    addu	$v1,$a5,$a0
    lw	$v1,0($v1)
    addu	$a2,$a5,$s2
    lw	$a2,0($a2)
    addu	$a3,$a5,$s7
    addu	$a1,$a5,$s8
    sw	$a2,0($a3)
    addiu	$a6,$a6,-4
    addu	$v0,$a5,$s1
    sw	$v1,0($a1)
    addu	$ra,$a5,$s4
    sw	$at,0($v0)
    addu	$a5,$a5,$s3
    bgtz	$a6,.L0d96d490
    sw	$t9,0($ra)
    addiu	$s6,$a4,5540
    li	$s4,0x10
    addiu	$s7,$a4,5532
    # Line 4124
    li	$a6,24
    move	$a5,$zero
    la	$t8,__glOdyim_rasterPosDispatchTable
    addiu	$t3,$a4,5528
    addiu	$t1,$a4,5536
    move	$v0,$t8
    addiu	$s3,$t8,12
    addiu	$s8,$t8,4
    addiu	$t8,$t8,8
    nop
.L0d96d510:
    addu	$t9,$a5,$s3
    lw	$t9,0($t9)
    addu	$at,$a5,$t8
    lw	$at,0($at)
    addu	$a0,$a5,$s8
    lw	$a0,0($a0)
    addu	$a2,$a5,$v0
    lw	$a2,0($a2)
    addu	$a3,$a5,$t3
    addu	$a1,$a5,$s7
    sw	$a2,0($a3)
    addiu	$a6,$a6,-4
    addu	$v1,$a5,$t1
    sw	$a0,0($a1)
    addu	$ra,$a5,$s6
    sw	$at,0($v1)
    addu	$a5,$a5,$s4
    bgtz	$a6,.L0d96d510
    sw	$t9,0($ra)
    # Line 4125
    la	$t8,__glOdyim_rectDispatchTable
    lw	$ra,0($t8)
    lw	$at,4($t8)
    lw	$v0,8($t8)
    lw	$v1,12($t8)
    lw	$a0,16($t8)
    lw	$a1,20($t8)
    lw	$a2,24($t8)
    lw	$a3,28($t8)
    sw	$a3,5652($a4)
    sw	$a2,5648($a4)
    sw	$a1,5644($a4)
    sw	$a0,5640($a4)
    sw	$v1,5636($a4)
    sw	$v0,5632($a4)
    sw	$at,5628($a4)
    sw	$ra,5624($a4)
    li	$a7,2
    # Line 4131
    li	$a5,330
    la	$ra,__glOdyim_softClipDispatchTable
    move	$a6,$zero
    addiu	$s0,$a4,5664
.L0d96d5b4:
    addiu	$a7,$a7,-1
    addu	$t0,$a6,$ra
    addiu	$a5,$a5,-1
    lw	$t0,0($t0)
    addu	$t1,$a6,$s0
    addiu	$a6,$a6,4
    bnez	$a7,.L0d96d5b4
    sw	$t0,0($t1)
    addiu	$a0,$ra,28
    addiu	$s8,$s0,28
    li	$s7,0x20
    addiu	$s2,$s0,8
    addiu	$s1,$ra,8
    addiu	$a1,$s0,12
    addiu	$t9,$ra,20
    addiu	$v0,$s0,20
    addiu	$t3,$ra,12
    sd	$t3,408($sp)
    addiu	$s6,$s0,24
    addiu	$s5,$ra,24
    addiu	$s4,$s0,16
    addiu	$t2,$s0,4
    sd	$t2,400($sp)
    addiu	$s3,$ra,16
    addiu	$t1,$ra,4
    sd	$t1,392($sp)
    nop
.L0d96d620:
    addu	$t8,$a6,$a0
    addu	$v1,$a6,$s5
    lw	$t8,0($t8)
    addu	$a3,$a6,$t9
    lw	$v1,0($v1)
    addu	$t0,$a6,$s3
    lw	$a3,0($a3)
    lw	$t0,0($t0)
    addu	$at,$a6,$s1
    lw	$at,0($at)
    ld	$t1,400($sp)
    ld	$t2,408($sp)
    addu	$t3,$a6,$ra
    lw	$t3,0($t3)
    addu	$a2,$a6,$s0
    ld	$a7,392($sp)
    sw	$t3,0($a2)
    addu	$t2,$a6,$t2
    lw	$t2,0($t2)
    addu	$a7,$a6,$a7
    addu	$t1,$a6,$t1
    lw	$a7,0($a7)
    addu	$a2,$a6,$s2
    sw	$a7,0($t1)
    addu	$t3,$a6,$a1
    sw	$at,0($a2)
    sw	$t2,0($t3)
    addu	$t1,$a6,$s4
    addu	$a7,$a6,$v0
    sw	$t0,0($t1)
    addiu	$a5,$a5,-8
    addu	$a2,$a6,$s6
    sw	$a3,0($a7)
    addu	$at,$a6,$s8
    sw	$v1,0($a2)
    addu	$a6,$a6,$s7
    bgtz	$a5,.L0d96d620
    sw	$t8,0($at)
    addiu	$s1,$a4,6996
    li	$s4,0x10
    addiu	$s7,$a4,6988
    # Line 4132
    li	$a6,24
    move	$a5,$zero
    la	$t8,__glOdyim_softClipVertexDispatchTable
    addiu	$s8,$a4,6984
    addiu	$s3,$a4,6992
    move	$a0,$t8
    addiu	$s6,$t8,12
    addiu	$t3,$t8,4
    addiu	$t8,$t8,8
    nop
    nop
.L0d96d6f0:
    addu	$t9,$a5,$s6
    lw	$t9,0($t9)
    addu	$at,$a5,$t8
    lw	$at,0($at)
    addu	$v1,$a5,$t3
    lw	$v1,0($v1)
    addu	$a2,$a5,$a0
    lw	$a2,0($a2)
    addu	$a3,$a5,$s8
    addu	$a1,$a5,$s7
    sw	$a2,0($a3)
    addiu	$a6,$a6,-4
    addu	$v0,$a5,$s3
    sw	$v1,0($a1)
    addu	$ra,$a5,$s1
    sw	$at,0($v0)
    addu	$a5,$a5,$s4
    bgtz	$a6,.L0d96d6f0
    sw	$t9,0($ra)
    li	$t8,2
    # Line 4133
    li	$a5,42
    la	$t0,__glOdyim_softClipIndexDispatchTable
    move	$a6,$zero
    addiu	$a7,$a4,7080
.L0d96d750:
    addiu	$t8,$t8,-1
    addu	$ra,$a6,$t0
    addiu	$a5,$a5,-1
    lw	$ra,0($ra)
    addu	$at,$a6,$a7
    addiu	$a6,$a6,4
    bnez	$t8,.L0d96d750
    sw	$ra,0($at)
    addiu	$ra,$t0,28
    addiu	$s2,$a7,28
    li	$a0,0x20
    addiu	$s8,$t0,4
    addiu	$t3,$a7,4
    la	$t1,__glSoftim_normalDispatchTable
    addiu	$s0,$t0,12
    addiu	$s5,$a7,12
    addiu	$v0,$t0,20
    addiu	$a3,$a7,16
    sd	$a3,320($sp)
    addiu	$t9,$a7,20
    addiu	$a2,$t0,16
    sd	$a2,312($sp)
    addiu	$t2,$a7,24
    addiu	$v1,$a7,8
    sd	$v1,304($sp)
    addiu	$a1,$t0,24
    addiu	$at,$t0,8
    sd	$at,296($sp)
.L0d96d7c0:
    addu	$s1,$a6,$ra
    addu	$s4,$a6,$a1
    lw	$s1,0($s1)
    lw	$s4,0($s4)
    addu	$s7,$a6,$v0
    ld	$at,312($sp)
    addu	$a2,$a6,$s0
    lw	$s7,0($s7)
    lw	$a2,0($a2)
    addu	$at,$a6,$at
    lw	$at,0($at)
    ld	$s3,296($sp)
    addu	$t8,$a6,$s8
    lw	$t8,0($t8)
    addu	$a3,$a6,$t0
    addu	$s6,$a6,$a7
    lw	$a3,0($a3)
    addu	$v1,$a6,$t3
    sw	$a3,0($s6)
    sw	$t8,0($v1)
    ld	$s6,304($sp)
    ld	$v1,320($sp)
    addu	$s3,$a6,$s3
    lw	$s3,0($s3)
    addu	$s6,$a6,$s6
    addu	$a3,$a6,$s5
    sw	$s3,0($s6)
    addu	$v1,$a6,$v1
    sw	$a2,0($a3)
    addu	$t8,$a6,$t9
    sw	$at,0($v1)
    addiu	$a5,$a5,-8
    sw	$s7,0($t8)
    addu	$s6,$a6,$t2
    addu	$s3,$a6,$s2
    sw	$s4,0($s6)
    addu	$a6,$a6,$a0
    bgtz	$a5,.L0d96d7c0
    sw	$s1,0($s3)
    # Line 4134
    addiu	$a5,$a4,7248
    lw	$t8,32($t1)
    lw	$t9,36($t1)
    lw	$ra,28($t1)
    lw	$at,24($t1)
    lw	$v0,20($t1)
    lw	$v1,16($t1)
    lw	$a0,12($t1)
    lw	$a1,8($t1)
    lw	$a2,4($t1)
    lw	$a3,0($t1)
    sw	$a3,7248($a4)
    sw	$a2,7252($a4)
    sw	$a1,7256($a4)
    sw	$a0,7260($a4)
    sw	$v1,7264($a4)
    sw	$v0,7268($a4)
    sw	$at,7272($a4)
    sw	$ra,7276($a4)
    sw	$t9,7284($a4)
    sw	$t8,7280($a4)
    addiu	$t8,$a4,7300
    li	$s6,0x10
    addiu	$s3,$a4,7292
    # Line 4135
    li	$a6,32
    move	$a5,$zero
    la	$t2,__glOdyim_texCoordDispatchTable
    addiu	$t3,$a4,7288
    addiu	$s7,$a4,7296
    move	$s5,$t2
    addiu	$s1,$t2,12
    addiu	$s4,$t2,4
    addiu	$t2,$t2,8
.L0d96d8e0:
    addu	$t9,$a5,$s1
    lw	$t9,0($t9)
    addu	$at,$a5,$t2
    lw	$at,0($at)
    addu	$v1,$a5,$s4
    lw	$v1,0($v1)
    addu	$a1,$a5,$s5
    lw	$a1,0($a1)
    addu	$a2,$a5,$t3
    addu	$a0,$a5,$s3
    sw	$a1,0($a2)
    addiu	$a6,$a6,-4
    addu	$v0,$a5,$s7
    sw	$v1,0($a0)
    addu	$ra,$a5,$t8
    sw	$at,0($v0)
    addu	$a5,$a5,$s6
    bgtz	$a6,.L0d96d8e0
    sw	$t9,0($ra)
    addiu	$s4,$a4,7428
    li	$s3,0x10
    addiu	$s6,$a4,7420
    # Line 4136
    li	$a6,24
    move	$a5,$zero
    la	$s8,__glOdyim_rasterPosDispatchTable
    addiu	$a0,$a4,7416
    addiu	$t8,$a4,7424
    move	$v0,$s8
    addiu	$s1,$s8,12
    la	$t1,__glOdyim_rectDispatchTable
    addiu	$s7,$s8,4
    addiu	$s8,$s8,8
.L0d96d960:
    addu	$ra,$a5,$s1
    lw	$ra,0($ra)
    addu	$v1,$a5,$s8
    lw	$v1,0($v1)
    addu	$a2,$a5,$s7
    lw	$a2,0($a2)
    addu	$a7,$a5,$v0
    lw	$a7,0($a7)
    addu	$t0,$a5,$a0
    addu	$a3,$a5,$s6
    sw	$a7,0($t0)
    addiu	$a6,$a6,-4
    addu	$a1,$a5,$t8
    sw	$a2,0($a3)
    addu	$at,$a5,$s4
    sw	$v1,0($a1)
    addu	$a5,$a5,$s3
    bgtz	$a6,.L0d96d960
    sw	$ra,0($at)
    # Line 4137
    lw	$at,0($t1)
    lw	$v0,4($t1)
    lw	$v1,8($t1)
    lw	$a0,12($t1)
    lw	$a1,16($t1)
    lw	$a2,20($t1)
    lw	$a3,24($t1)
    lw	$t0,28($t1)
    sw	$t0,7540($a4)
    sw	$a3,7536($a4)
    sw	$a2,7532($a4)
    sw	$a1,7528($a4)
    sw	$a0,7524($a4)
    sw	$v1,7520($a4)
    sw	$v0,7516($a4)
    sw	$at,7512($a4)
    li	$a7,2
    # Line 4194
    la	$t0,__glOdyim_dispatchTable
    li	$a5,330
    move	$a6,$zero
    addiu	$ra,$a4,7552
    move	$t9,$t0
.L0d96da04:
    addiu	$a7,$a7,-1
    addu	$t1,$a6,$t9
    addiu	$a5,$a5,-1
    lw	$t1,0($t1)
    addu	$t2,$a6,$ra
    addiu	$a6,$a6,4
    bnez	$a7,.L0d96da04
    sw	$t1,0($t2)
    addiu	$s5,$t9,28
    addiu	$s4,$ra,28
    li	$s3,0x20
    addiu	$a1,$t9,4
    addiu	$v0,$ra,4
    addiu	$a0,$t9,12
    addiu	$s8,$ra,12
    addiu	$s7,$t9,20
    addiu	$s6,$ra,20
    addiu	$s2,$ra,24
    addiu	$t8,$t9,16
    sd	$t8,480($sp)
    addiu	$s1,$t9,24
    addiu	$t3,$ra,8
    sd	$t3,488($sp)
    addiu	$s0,$ra,16
    addiu	$t2,$t9,8
    sd	$t2,496($sp)
    nop
.L0d96da70:
    addu	$at,$a6,$s5
    addu	$a2,$a6,$s1
    lw	$at,0($at)
    addu	$a7,$a6,$s7
    lw	$a2,0($a2)
    addu	$t3,$a6,$a0
    lw	$a7,0($a7)
    lw	$t3,0($t3)
    addu	$t0,$a6,$a1
    lw	$t0,0($t0)
    addu	$t8,$a6,$t9
    addu	$a3,$a6,$ra
    lw	$t8,0($t8)
    addu	$t2,$a6,$v0
    sw	$t8,0($a3)
    sw	$t0,0($t2)
    ld	$t1,480($sp)
    ld	$v1,496($sp)
    addu	$t1,$a6,$t1
    ld	$a3,488($sp)
    lw	$t1,0($t1)
    addu	$v1,$a6,$v1
    lw	$v1,0($v1)
    addu	$a3,$a6,$a3
    addu	$t8,$a6,$s8
    sw	$v1,0($a3)
    addu	$t2,$a6,$s0
    sw	$t3,0($t8)
    addu	$t0,$a6,$s6
    sw	$t1,0($t2)
    addiu	$a5,$a5,-8
    sw	$a7,0($t0)
    addu	$a3,$a6,$s2
    addu	$v1,$a6,$s4
    sw	$a2,0($a3)
    addu	$a6,$a6,$s3
    bgtz	$a5,.L0d96da70
    sw	$at,0($v1)
    addiu	$s4,$a4,8884
    li	$s8,0x10
    addiu	$s6,$a4,8876
    # Line 4195
    li	$a5,24
    move	$a6,$zero
    la	$t1,__glOdyim_iglooVertexDispatchTable
    addiu	$s3,$a4,8872
    addiu	$t3,$a4,8880
    move	$s1,$t1
    addiu	$t8,$t1,12
    addiu	$s7,$t1,4
    addiu	$t1,$t1,8
    nop
    nop
.L0d96db40:
    addu	$t2,$a6,$t8
    lw	$t2,0($t2)
    addu	$ra,$a6,$t1
    lw	$ra,0($ra)
    addu	$v0,$a6,$s7
    lw	$v0,0($v0)
    addu	$a0,$a6,$s1
    lw	$a0,0($a0)
    addu	$a1,$a6,$s3
    addu	$v1,$a6,$s6
    sw	$a0,0($a1)
    addiu	$a5,$a5,-4
    addu	$at,$a6,$t3
    sw	$v0,0($v1)
    addu	$t9,$a6,$s4
    sw	$ra,0($at)
    addu	$a6,$a6,$s8
    bgtz	$a5,.L0d96db40
    sw	$t2,0($t9)
    li	$t8,2
    # Line 4196
    li	$a6,42
    la	$t3,__glOdyim_colorDispatchTable
    move	$a5,$zero
    addiu	$a7,$a4,8968
.L0d96dba0:
    addiu	$t8,$t8,-1
    addu	$t9,$a5,$t3
    addiu	$a6,$a6,-1
    lw	$t9,0($t9)
    addu	$ra,$a5,$a7
    addiu	$a5,$a5,4
    bnez	$t8,.L0d96dba0
    sw	$t9,0($ra)
    addiu	$ra,$t3,28
    addiu	$s2,$a7,28
    li	$a0,0x20
    addiu	$s8,$t3,4
    addiu	$t1,$a7,4
    addiu	$s0,$t3,12
    addiu	$s5,$a7,12
    addiu	$v0,$t3,20
    addiu	$t9,$a7,20
    addiu	$t0,$a7,24
    addiu	$a2,$t3,16
    sd	$a2,64($sp)
    addiu	$t2,$t3,24
    addiu	$v1,$a7,8
    sd	$v1,48($sp)
    addiu	$a1,$a7,16
    addiu	$at,$t3,8
    sd	$at,40($sp)
    nop
    nop
.L0d96dc10:
    addu	$a3,$a5,$ra
    addu	$s3,$a5,$t2
    lw	$a3,0($a3)
    addu	$s6,$a5,$v0
    lw	$s3,0($s3)
    addu	$v1,$a5,$s0
    lw	$s6,0($s6)
    lw	$v1,0($v1)
    addu	$s7,$a5,$s8
    lw	$s7,0($s7)
    addu	$a2,$a5,$t3
    addu	$s4,$a5,$a7
    lw	$a2,0($a2)
    addu	$at,$a5,$t1
    sw	$a2,0($s4)
    sw	$s7,0($at)
    ld	$t8,64($sp)
    ld	$s1,40($sp)
    addu	$t8,$a5,$t8
    ld	$s4,48($sp)
    lw	$t8,0($t8)
    addu	$s1,$a5,$s1
    lw	$s1,0($s1)
    addu	$s4,$a5,$s4
    addu	$a2,$a5,$s5
    sw	$s1,0($s4)
    addu	$at,$a5,$a1
    sw	$v1,0($a2)
    addu	$s7,$a5,$t9
    sw	$t8,0($at)
    addiu	$a6,$a6,-8
    sw	$s6,0($s7)
    addu	$s4,$a5,$t0
    addu	$s1,$a5,$s2
    sw	$s3,0($s4)
    addu	$a5,$a5,$a0
    bgtz	$a6,.L0d96dc10
    sw	$a3,0($s1)
    # Line 4197
    la	$t0,__glOdyim_normalDispatchTable
    addiu	$a5,$a4,9136
    lw	$t1,32($t0)
    lw	$t2,36($t0)
    lw	$t3,28($t0)
    lw	$t8,24($t0)
    lw	$t9,20($t0)
    lw	$ra,16($t0)
    lw	$at,12($t0)
    lw	$v0,8($t0)
    lw	$v1,4($t0)
    lw	$a1,0($t0)
    sw	$a1,9136($a4)
    sw	$v1,9140($a4)
    sw	$v0,9144($a4)
    sw	$at,9148($a4)
    sw	$ra,9152($a4)
    sw	$t9,9156($a4)
    sw	$t8,9160($a4)
    sw	$t3,9164($a4)
    sw	$t2,9172($a4)
    sw	$t1,9168($a4)
    addiu	$t1,$a4,9188
    li	$s6,0x10
    addiu	$t3,$a4,9180
    # Line 4198
    li	$a6,32
    move	$a5,$zero
    la	$s3,__glOdyim_texCoordDispatchTable
    addiu	$s1,$a4,9176
    addiu	$s4,$a4,9184
    move	$s0,$s3
    addiu	$t2,$s3,12
    addiu	$t8,$s3,4
    addiu	$s3,$s3,8
.L0d96dd30:
    addu	$t9,$a5,$t2
    lw	$t9,0($t9)
    addu	$at,$a5,$s3
    lw	$at,0($at)
    addu	$v1,$a5,$t8
    lw	$v1,0($v1)
    addu	$a1,$a5,$s0
    lw	$a1,0($a1)
    addu	$a2,$a5,$s1
    addu	$a0,$a5,$t3
    sw	$a1,0($a2)
    addiu	$a6,$a6,-4
    addu	$v0,$a5,$s4
    sw	$v1,0($a0)
    addu	$ra,$a5,$t1
    sw	$at,0($v0)
    addu	$a5,$a5,$s6
    bgtz	$a6,.L0d96dd30
    sw	$t9,0($ra)
    addiu	$s3,$a4,9316
    li	$s7,0x10
    addiu	$s4,$a4,9308
    # Line 4199
    li	$a5,24
    move	$a6,$zero
    la	$t1,__glOdyim_rasterPosDispatchTable
    addiu	$t8,$a4,9304
    addiu	$s8,$a4,9312
    move	$v0,$t1
    addiu	$t3,$t1,12
    addiu	$s6,$t1,4
    addiu	$t1,$t1,8
    nop
.L0d96ddb0:
    addu	$t2,$a6,$t3
    lw	$t2,0($t2)
    addu	$ra,$a6,$t1
    lw	$ra,0($ra)
    addu	$v1,$a6,$s6
    lw	$v1,0($v1)
    addu	$a1,$a6,$v0
    lw	$a1,0($a1)
    addu	$a2,$a6,$t8
    addu	$a0,$a6,$s4
    sw	$a1,0($a2)
    addiu	$a5,$a5,-4
    addu	$at,$a6,$s8
    sw	$v1,0($a0)
    addu	$t9,$a6,$s3
    sw	$ra,0($at)
    addu	$a6,$a6,$s7
    bgtz	$a5,.L0d96ddb0
    sw	$t2,0($t9)
    # Line 4200
    la	$t8,__glOdyim_rectDispatchTable
    la	$t3,__glOdyim_dispatchTable
    lw	$t9,0($t8)
    lw	$ra,4($t8)
    lw	$at,8($t8)
    lw	$v0,12($t8)
    lw	$v1,16($t8)
    lw	$a0,20($t8)
    lw	$a1,24($t8)
    lw	$a2,28($t8)
    sw	$a2,9428($a4)
    sw	$a1,9424($a4)
    sw	$a0,9420($a4)
    sw	$v1,9416($a4)
    sw	$v0,9412($a4)
    sw	$at,9408($a4)
    sw	$ra,9404($a4)
    sw	$t9,9400($a4)
    # Line 4202
    move	$t9,$t3
    li	$a7,2
    li	$a6,330
    move	$a5,$zero
    addiu	$ra,$a4,9440
.L0d96de58:
    addiu	$a7,$a7,-1
    addu	$a3,$a5,$t9
    addiu	$a6,$a6,-1
    lw	$a3,0($a3)
    addu	$t0,$a5,$ra
    addiu	$a5,$a5,4
    bnez	$a7,.L0d96de58
    sw	$a3,0($t0)
    addiu	$s8,$t9,28
    addiu	$s7,$ra,28
    li	$s6,0x20
    addiu	$s1,$ra,8
    addiu	$s0,$t9,8
    addiu	$a1,$ra,12
    addiu	$v0,$t9,20
    addiu	$a0,$ra,20
    addiu	$t1,$t9,12
    sd	$t1,544($sp)
    addiu	$s5,$ra,24
    addiu	$s4,$t9,24
    addiu	$s3,$ra,16
    addiu	$t0,$ra,4
    sd	$t0,528($sp)
    addiu	$s2,$t9,16
    addiu	$a7,$t9,4
    sd	$a7,512($sp)
.L0d96dec0:
    addu	$t2,$a5,$s8
    addu	$t8,$a5,$s4
    lw	$t2,0($t2)
    addu	$v1,$a5,$v0
    lw	$t8,0($t8)
    addu	$a3,$a5,$s2
    lw	$v1,0($v1)
    lw	$a3,0($a3)
    addu	$t3,$a5,$s0
    lw	$t3,0($t3)
    ld	$a7,528($sp)
    ld	$t0,544($sp)
    addu	$t1,$a5,$t9
    lw	$t1,0($t1)
    addu	$at,$a5,$ra
    ld	$a2,512($sp)
    sw	$t1,0($at)
    addu	$t0,$a5,$t0
    lw	$t0,0($t0)
    addu	$a2,$a5,$a2
    addu	$a7,$a5,$a7
    lw	$a2,0($a2)
    addu	$at,$a5,$s1
    sw	$a2,0($a7)
    addu	$t1,$a5,$a1
    sw	$t3,0($at)
    sw	$t0,0($t1)
    addu	$a7,$a5,$s3
    addu	$a2,$a5,$a0
    sw	$a3,0($a7)
    addiu	$a6,$a6,-8
    addu	$at,$a5,$s5
    sw	$v1,0($a2)
    addu	$t3,$a5,$s7
    sw	$t8,0($at)
    addu	$a5,$a5,$s6
    bgtz	$a6,.L0d96dec0
    sw	$t2,0($t3)
    addiu	$s3,$a4,10772
    li	$s7,0x10
    addiu	$s4,$a4,10764
    # Line 4203
    li	$a5,24
    move	$a6,$zero
    la	$t1,__glOdyim_iglooVertexDispatchTable
    addiu	$t8,$a4,10760
    addiu	$s8,$a4,10768
    move	$s1,$t1
    addiu	$t3,$t1,12
    addiu	$s6,$t1,4
    addiu	$t1,$t1,8
    nop
    nop
.L0d96df90:
    addu	$t2,$a6,$t3
    lw	$t2,0($t2)
    addu	$ra,$a6,$t1
    lw	$ra,0($ra)
    addu	$v0,$a6,$s6
    lw	$v0,0($v0)
    addu	$a0,$a6,$s1
    lw	$a0,0($a0)
    addu	$a1,$a6,$t8
    addu	$v1,$a6,$s4
    sw	$a0,0($a1)
    addiu	$a5,$a5,-4
    addu	$at,$a6,$s8
    sw	$v0,0($v1)
    addu	$t9,$a6,$s3
    sw	$ra,0($at)
    addu	$a6,$a6,$s7
    bgtz	$a5,.L0d96df90
    sw	$t2,0($t9)
    li	$t3,2
    # Line 4204
    li	$a6,42
    la	$t2,__glOdyim_indexDispatchTable
    move	$a5,$zero
    addiu	$a7,$a4,10856
.L0d96dff0:
    addiu	$t3,$t3,-1
    addu	$t8,$a5,$t2
    addiu	$a6,$a6,-1
    lw	$t8,0($t8)
    addu	$t9,$a5,$a7
    addiu	$a5,$a5,4
    bnez	$t3,.L0d96dff0
    sw	$t8,0($t9)
    addiu	$t9,$t2,28
    addiu	$ra,$a7,28
    li	$s2,0x20
    addiu	$s7,$t2,4
    addiu	$s8,$a7,4
    addiu	$t1,$t2,12
    addiu	$s0,$a7,12
    addiu	$s5,$t2,20
    addiu	$v0,$a7,20
    addiu	$a0,$a7,24
    addiu	$a2,$t2,16
    sd	$a2,104($sp)
    addiu	$t0,$t2,24
    addiu	$v1,$a7,8
    sd	$v1,96($sp)
    addiu	$a1,$a7,16
    addiu	$at,$t2,8
    sd	$at,88($sp)
    nop
    nop
.L0d96e060:
    addu	$a3,$a5,$t9
    addu	$s1,$a5,$t0
    lw	$a3,0($a3)
    addu	$s4,$a5,$s5
    lw	$s1,0($s1)
    addu	$v1,$a5,$t1
    lw	$s4,0($s4)
    lw	$v1,0($v1)
    addu	$s6,$a5,$s7
    lw	$s6,0($s6)
    addu	$a2,$a5,$t2
    addu	$s3,$a5,$a7
    lw	$a2,0($a2)
    addu	$at,$a5,$s8
    sw	$a2,0($s3)
    sw	$s6,0($at)
    ld	$t8,104($sp)
    ld	$t3,88($sp)
    addu	$t8,$a5,$t8
    ld	$s3,96($sp)
    lw	$t8,0($t8)
    addu	$t3,$a5,$t3
    lw	$t3,0($t3)
    addu	$s3,$a5,$s3
    addu	$a2,$a5,$s0
    sw	$t3,0($s3)
    addu	$at,$a5,$a1
    sw	$v1,0($a2)
    addu	$s6,$a5,$v0
    sw	$t8,0($at)
    addiu	$a6,$a6,-8
    sw	$s4,0($s6)
    addu	$s3,$a5,$a0
    addu	$t3,$a5,$ra
    sw	$s1,0($s3)
    addu	$a5,$a5,$s2
    bgtz	$a6,.L0d96e060
    sw	$a3,0($t3)
    # Line 4205
    la	$a5,__glOdyim_normalDispatchTable
    addiu	$a6,$a4,11024
    lw	$t2,36($a5)
    lw	$a1,0($a5)
    sw	$a1,11024($a4)
    lw	$a0,4($a5)
    sw	$a0,11028($a4)
    lw	$v1,8($a5)
    sw	$v1,11032($a4)
    lw	$v0,12($a5)
    sw	$v0,11036($a4)
    lw	$at,16($a5)
    sw	$at,11040($a4)
    lw	$ra,20($a5)
    sw	$ra,11044($a4)
    lw	$t9,24($a5)
    sw	$t9,11048($a4)
    lw	$t8,28($a5)
    sw	$t8,11052($a4)
    sw	$t2,11060($a4)
    lw	$t1,32($a5)
    sw	$t1,11056($a4)
    addiu	$t8,$a4,11076
    li	$t3,0x10
    addiu	$s1,$a4,11068
    # Line 4206
    li	$a6,32
    move	$a5,$zero
    la	$ra,__glOdyim_texCoordDispatchTable
    addiu	$s4,$a4,11064
    addiu	$t2,$a4,11072
    move	$s5,$ra
    addiu	$s0,$ra,12
    # lw $t9, -17200($gp) # &__glOdyim_rasterPosDispatchTable
    addiu	$s3,$ra,4
    addiu	$t1,$ra,8
    nop
    nop
    nop
.L0d96e190:
    addu	$a2,$a5,$s0
    lw	$a2,0($a2)
    addu	$a7,$a5,$t1
    lw	$a7,0($a7)
    addu	$at,$a5,$s3
    lw	$at,0($at)
    addu	$v1,$a5,$s5
    lw	$v1,0($v1)
    addu	$a0,$a5,$s4
    addu	$v0,$a5,$s1
    sw	$v1,0($a0)
    addiu	$a6,$a6,-4
    addu	$t0,$a5,$t2
    sw	$at,0($v0)
    addu	$a3,$a5,$t8
    sw	$a7,0($t0)
    addu	$a5,$a5,$t3
    bgtz	$a6,.L0d96e190
    sw	$a2,0($a3)
    # Line 4207
    move	$v0,$t9
    addiu	$t3,$t9,12
    addiu	$s1,$a4,11204
    li	$s6,0x10
    addiu	$s4,$t9,4
    addiu	$s3,$a4,11196
    li	$a5,24
    move	$a6,$zero
    addiu	$t8,$a4,11192
    addiu	$s7,$a4,11200
    addiu	$s8,$t9,8
    nop
    nop
.L0d96e210:
    addu	$a3,$a6,$t3
    lw	$a3,0($a3)
    addu	$t0,$a6,$s8
    lw	$t0,0($t0)
    addu	$t2,$a6,$s4
    lw	$t2,0($t2)
    addu	$at,$a6,$v0
    lw	$at,0($at)
    addu	$v1,$a6,$t8
    addu	$ra,$a6,$s3
    sw	$at,0($v1)
    addiu	$a5,$a5,-4
    addu	$t1,$a6,$s7
    sw	$t2,0($ra)
    addu	$a7,$a6,$s1
    sw	$t0,0($t1)
    addu	$a6,$a6,$s6
    bgtz	$a5,.L0d96e210
    sw	$a3,0($a7)
    # Line 4208
    la	$a5,__glOdyim_rectDispatchTable
    lw	$v1,28($a5)
    sw	$v1,11316($a4)
    lw	$v0,24($a5)
    sw	$v0,11312($a4)
    lw	$at,20($a5)
    sw	$at,11308($a4)
    lw	$ra,16($a5)
    sw	$ra,11304($a4)
    lw	$t9,12($a5)
    sw	$t9,11300($a4)
    lw	$t2,8($a5)
    sw	$t2,11296($a4)
    lw	$t1,4($a5)
    sw	$t1,11292($a4)
    lw	$t0,0($a5)
    sw	$t0,11288($a4)
    li	$t3,2
    # Line 4210
    la	$t0,__glOdyim_softClipDispatchTable
    li	$a6,330
    move	$a7,$zero
    addiu	$ra,$a4,11328
    move	$t9,$t0
.L0d96e2b8:
    addiu	$t3,$t3,-1
    addu	$a0,$a7,$t9
    addiu	$a6,$a6,-1
    lw	$a0,0($a0)
    addu	$a1,$a7,$ra
    addiu	$a7,$a7,4
    bnez	$t3,.L0d96e2b8
    sw	$a0,0($a1)
    addiu	$s7,$t9,28
    addiu	$s6,$ra,28
    li	$s5,0x20
    addiu	$s0,$ra,8
    addiu	$a1,$t9,12
    addiu	$v0,$ra,12
    addiu	$a0,$t9,20
    addiu	$s8,$ra,20
    addiu	$s4,$ra,24
    addiu	$s3,$t9,24
    addiu	$s2,$ra,16
    addiu	$a3,$ra,4
    sd	$a3,552($sp)
    addiu	$s1,$t9,16
    addiu	$a2,$t9,4
    sd	$a2,536($sp)
    addiu	$a5,$t9,8
    sd	$a5,472($sp)
    move	$a5,$a7
    nop
    nop
    nop
.L0d96e330:
    addu	$a7,$a5,$s7
    addu	$t1,$a5,$s3
    lw	$a7,0($a7)
    addu	$t3,$a5,$a0
    lw	$t1,0($t1)
    addu	$at,$a5,$s1
    lw	$t3,0($t3)
    addu	$a2,$a5,$a1
    lw	$at,0($at)
    lw	$a2,0($a2)
    ld	$v1,552($sp)
    addu	$a3,$a5,$t9
    lw	$a3,0($a3)
    ld	$t0,472($sp)
    addu	$t2,$a5,$ra
    ld	$t8,536($sp)
    sw	$a3,0($t2)
    addu	$t0,$a5,$t0
    addu	$t8,$a5,$t8
    lw	$t0,0($t0)
    addu	$v1,$a5,$v1
    lw	$t8,0($t8)
    addu	$t2,$a5,$s0
    sw	$t8,0($v1)
    addu	$a3,$a5,$v0
    sw	$t0,0($t2)
    sw	$a2,0($a3)
    addu	$v1,$a5,$s2
    addu	$t8,$a5,$s8
    sw	$at,0($v1)
    addiu	$a6,$a6,-8
    addu	$t2,$a5,$s4
    sw	$t3,0($t8)
    addu	$t0,$a5,$s6
    sw	$t1,0($t2)
    addu	$a5,$a5,$s5
    bgtz	$a6,.L0d96e330
    sw	$a7,0($t0)
    addiu	$s6,$a4,12660
    li	$s7,0x10
    addiu	$s3,$a4,12652
    # Line 4211
    li	$a5,24
    move	$a6,$zero
    la	$s8,__glOdyim_softClipVertexDispatchTable
    addiu	$t8,$a4,12648
    addiu	$s1,$a4,12656
    move	$a0,$s8
    addiu	$t3,$s8,12
    addiu	$s4,$s8,4
    addiu	$s8,$s8,8
    nop
    nop
.L0d96e400:
    addu	$ra,$a6,$t3
    lw	$ra,0($ra)
    addu	$v0,$a6,$s8
    lw	$v0,0($v0)
    addu	$a1,$a6,$s4
    lw	$a1,0($a1)
    addu	$a3,$a6,$a0
    lw	$a3,0($a3)
    addu	$a7,$a6,$t8
    addu	$a2,$a6,$s3
    sw	$a3,0($a7)
    addiu	$a5,$a5,-4
    addu	$v1,$a6,$s1
    sw	$a1,0($a2)
    addu	$at,$a6,$s6
    sw	$v0,0($v1)
    addu	$a6,$a6,$s7
    bgtz	$a5,.L0d96e400
    sw	$ra,0($at)
    li	$t3,2
    # Line 4212
    li	$a6,42
    la	$t2,__glOdyim_softClipColorDispatchTable
    move	$a5,$zero
    addiu	$a7,$a4,12744
.L0d96e460:
    addiu	$t3,$t3,-1
    addu	$at,$a5,$t2
    addiu	$a6,$a6,-1
    lw	$at,0($at)
    addu	$v0,$a5,$a7
    addiu	$a5,$a5,4
    bnez	$t3,.L0d96e460
    sw	$at,0($v0)
    addiu	$t9,$t2,28
    addiu	$ra,$a7,28
    li	$s2,0x20
    addiu	$s7,$t2,4
    addiu	$s8,$a7,4
    addiu	$t1,$t2,12
    addiu	$s0,$a7,12
    addiu	$s5,$t2,20
    addiu	$v0,$a7,20
    addiu	$a0,$a7,24
    addiu	$a3,$t2,16
    sd	$a3,144($sp)
    addiu	$t0,$t2,24
    addiu	$a2,$a7,8
    sd	$a2,128($sp)
    addiu	$a1,$a7,16
    addiu	$v1,$t2,8
    sd	$v1,120($sp)
    nop
    nop
.L0d96e4d0:
    addu	$t3,$a5,$t9
    addu	$s3,$a5,$t0
    lw	$t3,0($t3)
    addu	$s6,$a5,$s5
    lw	$s3,0($s3)
    addu	$a2,$a5,$t1
    lw	$s6,0($s6)
    lw	$a2,0($a2)
    addu	$t8,$a5,$s7
    lw	$t8,0($t8)
    addu	$a3,$a5,$t2
    addu	$s4,$a5,$a7
    lw	$a3,0($a3)
    addu	$v1,$a5,$s8
    sw	$a3,0($s4)
    sw	$t8,0($v1)
    ld	$at,144($sp)
    ld	$s1,120($sp)
    addu	$at,$a5,$at
    ld	$s4,128($sp)
    lw	$at,0($at)
    addu	$s1,$a5,$s1
    lw	$s1,0($s1)
    addu	$s4,$a5,$s4
    addu	$a3,$a5,$s0
    sw	$s1,0($s4)
    addu	$v1,$a5,$a1
    sw	$a2,0($a3)
    addu	$t8,$a5,$v0
    sw	$at,0($v1)
    addiu	$a6,$a6,-8
    sw	$s6,0($t8)
    addu	$s4,$a5,$a0
    addu	$s1,$a5,$ra
    sw	$s3,0($s4)
    addu	$a5,$a5,$s2
    bgtz	$a6,.L0d96e4d0
    sw	$t3,0($s1)
    # Line 4213
    la	$a5,__glSoftim_normalDispatchTable
    addiu	$a6,$a4,12912
    lw	$t9,36($a5)
    lw	$a3,0($a5)
    sw	$a3,12912($a4)
    lw	$a2,4($a5)
    sw	$a2,12916($a4)
    lw	$a1,8($a5)
    sw	$a1,12920($a4)
    lw	$a0,12($a5)
    sw	$a0,12924($a4)
    lw	$v1,16($a5)
    sw	$v1,12928($a4)
    lw	$v0,20($a5)
    sw	$v0,12932($a4)
    lw	$at,24($a5)
    sw	$at,12936($a4)
    lw	$ra,28($a5)
    sw	$ra,12940($a4)
    sw	$t9,12948($a4)
    lw	$t8,32($a5)
    sw	$t8,12944($a4)
    addiu	$t3,$a4,12964
    li	$t2,0x10
    addiu	$s0,$a4,12956
    # Line 4214
    li	$a5,32
    move	$a6,$zero
    la	$s6,__glSoftim_texCoordDispatchTable
    addiu	$s3,$a4,12952
    addiu	$t1,$a4,12960
    move	$s2,$s6
    addiu	$t8,$s6,12
    # lw $t9, -17200($gp) # &__glOdyim_rasterPosDispatchTable
    addiu	$s1,$s6,4
    addiu	$s4,$s6,8
    nop
    nop
    nop
.L0d96e600:
    addu	$a7,$a6,$t8
    lw	$a7,0($a7)
    addu	$ra,$a6,$s4
    lw	$ra,0($ra)
    addu	$v0,$a6,$s1
    lw	$v0,0($v0)
    addu	$a0,$a6,$s2
    lw	$a0,0($a0)
    addu	$a1,$a6,$s3
    addu	$v1,$a6,$s0
    sw	$a0,0($a1)
    addiu	$a5,$a5,-4
    addu	$at,$a6,$t1
    sw	$v0,0($v1)
    addu	$t0,$a6,$t3
    sw	$ra,0($at)
    addu	$a6,$a6,$t2
    bgtz	$a5,.L0d96e600
    sw	$a7,0($t0)
    # Line 4215
    move	$v0,$t9
    addiu	$t2,$t9,12
    addiu	$t8,$a4,13092
    li	$s4,0x10
    addiu	$s3,$t9,4
    addiu	$s1,$a4,13084
    li	$a5,24
    move	$a6,$zero
    addiu	$t3,$a4,13080
    addiu	$s6,$a4,13088
    addiu	$s7,$t9,8
    nop
    nop
.L0d96e680:
    addu	$t0,$a6,$t2
    lw	$t0,0($t0)
    addu	$ra,$a6,$s7
    lw	$ra,0($ra)
    addu	$v1,$a6,$s3
    lw	$v1,0($v1)
    addu	$a1,$a6,$v0
    lw	$a1,0($a1)
    addu	$a2,$a6,$t3
    addu	$a0,$a6,$s1
    sw	$a1,0($a2)
    addiu	$a5,$a5,-4
    addu	$at,$a6,$s6
    sw	$v1,0($a0)
    addu	$t1,$a6,$t8
    sw	$ra,0($at)
    addu	$a6,$a6,$s4
    bgtz	$a5,.L0d96e680
    sw	$t0,0($t1)
    # Line 4216
    la	$a7,__glOdyim_rectDispatchTable
    la	$t3,__glOdyim_softClipDispatchTable
    lw	$t1,0($a7)
    lw	$t9,4($a7)
    lw	$ra,8($a7)
    lw	$at,12($a7)
    lw	$v0,16($a7)
    lw	$v1,20($a7)
    lw	$a0,24($a7)
    lw	$a1,28($a7)
    sw	$a1,13204($a4)
    sw	$a0,13200($a4)
    sw	$v1,13196($a4)
    sw	$v0,13192($a4)
    sw	$at,13188($a4)
    sw	$ra,13184($a4)
    sw	$t9,13180($a4)
    sw	$t1,13176($a4)
    # Line 4218
    move	$ra,$t3
    li	$t2,2
    li	$a6,330
    move	$a5,$zero
    addiu	$t9,$a4,13216
.L0d96e728:
    addiu	$t2,$t2,-1
    addu	$a2,$a5,$ra
    addiu	$a6,$a6,-1
    lw	$a2,0($a2)
    addu	$a3,$a5,$t9
    addiu	$a5,$a5,4
    bnez	$t2,.L0d96e728
    sw	$a2,0($a3)
    addiu	$s2,$ra,28
    addiu	$a1,$t9,28
    li	$v0,0x20
    addiu	$s1,$t9,8
    addiu	$s0,$ra,8
    addiu	$s6,$ra,12
    addiu	$s8,$ra,20
    addiu	$s5,$t9,20
    addiu	$t0,$t9,12
    sd	$t0,520($sp)
    addiu	$a0,$t9,24
    addiu	$s7,$ra,24
    addiu	$s4,$t9,16
    addiu	$a7,$t9,4
    sd	$a7,504($sp)
    addiu	$s3,$ra,16
    addiu	$a3,$ra,4
    sd	$a3,464($sp)
.L0d96e790:
    addu	$t1,$a5,$s2
    addu	$t3,$a5,$s7
    lw	$t1,0($t1)
    addu	$at,$a5,$s8
    lw	$t3,0($t3)
    addu	$a2,$a5,$s3
    lw	$at,0($at)
    addu	$a7,$a5,$s6
    lw	$a2,0($a2)
    lw	$a7,0($a7)
    addu	$t2,$a5,$s0
    lw	$t2,0($t2)
    ld	$a3,504($sp)
    ld	$v1,464($sp)
    addu	$t0,$a5,$ra
    addu	$t8,$a5,$t9
    lw	$t0,0($t0)
    sw	$t0,0($t8)
    ld	$t0,520($sp)
    addu	$v1,$a5,$v1
    addu	$a3,$a5,$a3
    lw	$v1,0($v1)
    addu	$t8,$a5,$s1
    sw	$v1,0($a3)
    sw	$t2,0($t8)
    addu	$t0,$a5,$t0
    addu	$a3,$a5,$s4
    sw	$a7,0($t0)
    addu	$v1,$a5,$s5
    sw	$a2,0($a3)
    addiu	$a6,$a6,-8
    addu	$t8,$a5,$a0
    sw	$at,0($v1)
    addu	$t2,$a5,$a1
    sw	$t3,0($t8)
    addu	$a5,$a5,$v0
    bgtz	$a6,.L0d96e790
    sw	$t1,0($t2)
    addiu	$s1,$a4,14548
    li	$t8,0x10
    addiu	$t9,$a4,14540
    # Line 4219
    li	$a5,24
    move	$a6,$zero
    la	$s4,__glOdyim_softClipVertexDispatchTable
    addiu	$t3,$a4,14536
    addiu	$s3,$a4,14544
    move	$a0,$s4
    addiu	$t2,$s4,12
    addiu	$ra,$s4,4
    addiu	$s4,$s4,8
    nop
    nop
.L0d96e860:
    addu	$at,$a6,$t2
    lw	$at,0($at)
    addu	$v1,$a6,$s4
    lw	$v1,0($v1)
    addu	$a2,$a6,$ra
    lw	$a2,0($a2)
    addu	$a7,$a6,$a0
    lw	$a7,0($a7)
    addu	$t0,$a6,$t3
    addu	$a3,$a6,$t9
    sw	$a7,0($t0)
    addiu	$a5,$a5,-4
    addu	$a1,$a6,$s3
    sw	$a2,0($a3)
    addu	$v0,$a6,$s1
    sw	$v1,0($a1)
    addu	$a6,$a6,$t8
    bgtz	$a5,.L0d96e860
    sw	$at,0($v0)
    li	$t2,2
    # Line 4220
    li	$a5,42
    la	$t0,__glOdyim_softClipIndexDispatchTable
    move	$a6,$zero
    addiu	$a7,$a4,14632
.L0d96e8c0:
    addiu	$t2,$t2,-1
    addu	$v0,$a6,$t0
    addiu	$a5,$a5,-1
    lw	$v0,0($v0)
    addu	$v1,$a6,$a7
    addiu	$a6,$a6,4
    bnez	$t2,.L0d96e8c0
    sw	$v0,0($v1)
    addiu	$t1,$t0,28
    addiu	$s0,$a7,28
    li	$s5,0x20
    addiu	$s3,$t0,4
    addiu	$s4,$a7,4
    addiu	$s6,$t0,12
    addiu	$s7,$a7,12
    addiu	$s8,$t0,20
    addiu	$a0,$a7,20
    addiu	$v0,$a7,24
    addiu	$a3,$t0,16
    sd	$a3,192($sp)
    addiu	$s2,$t0,24
    addiu	$a2,$a7,8
    sd	$a2,184($sp)
    addiu	$a1,$a7,16
    addiu	$v1,$t0,8
    sd	$v1,176($sp)
    nop
    nop
.L0d96e930:
    addu	$t2,$a6,$t1
    addu	$s1,$a6,$s2
    lw	$t2,0($t2)
    addu	$t9,$a6,$s8
    lw	$s1,0($s1)
    addu	$a2,$a6,$s6
    lw	$t9,0($t9)
    lw	$a2,0($a2)
    addu	$ra,$a6,$s3
    lw	$ra,0($ra)
    addu	$a3,$a6,$t0
    addu	$t8,$a6,$a7
    lw	$a3,0($a3)
    addu	$v1,$a6,$s4
    sw	$a3,0($t8)
    sw	$ra,0($v1)
    ld	$at,192($sp)
    ld	$t3,176($sp)
    addu	$at,$a6,$at
    ld	$t8,184($sp)
    lw	$at,0($at)
    addu	$t3,$a6,$t3
    lw	$t3,0($t3)
    addu	$t8,$a6,$t8
    addu	$a3,$a6,$s7
    sw	$t3,0($t8)
    addu	$v1,$a6,$a1
    sw	$a2,0($a3)
    addu	$ra,$a6,$a0
    sw	$at,0($v1)
    addiu	$a5,$a5,-8
    sw	$t9,0($ra)
    addu	$t8,$a6,$v0
    addu	$t3,$a6,$s0
    sw	$s1,0($t8)
    addu	$a6,$a6,$s5
    bgtz	$a5,.L0d96e930
    sw	$t2,0($t3)
    # Line 4221
    la	$s2,__glSoftim_normalDispatchTable
    addiu	$a5,$a4,14800
    la	$a7,__glOdyim_texCoordDispatchTable
    lw	$t3,32($s2)
    lw	$t8,36($s2)
    lw	$t9,28($s2)
    lw	$ra,24($s2)
    lw	$at,20($s2)
    lw	$v0,16($s2)
    lw	$v1,12($s2)
    lw	$a0,8($s2)
    lw	$a1,4($s2)
    lw	$a2,0($s2)
    sw	$a2,14800($a4)
    sw	$a1,14804($a4)
    sw	$a0,14808($a4)
    sw	$v1,14812($a4)
    sw	$v0,14816($a4)
    sw	$at,14820($a4)
    sw	$ra,14824($a4)
    sw	$t9,14828($a4)
    sw	$t8,14836($a4)
    sw	$t3,14832($a4)
    # Line 4222
    move	$s0,$a7
    addiu	$t8,$a7,12
    addiu	$s3,$a4,14852
    li	$t3,0x10
    addiu	$ra,$a7,4
    addiu	$t9,$a4,14844
    li	$a6,32
    move	$a5,$zero
    addiu	$s1,$a4,14840
    la	$s4,__glOdyim_rasterPosDispatchTable
    addiu	$t2,$a4,14848
    addiu	$t1,$a7,8
    nop
    nop
    nop
.L0d96ea60:
    addu	$a3,$a5,$t8
    lw	$a3,0($a3)
    addu	$t0,$a5,$t1
    lw	$t0,0($t0)
    addu	$v0,$a5,$ra
    lw	$v0,0($v0)
    addu	$a0,$a5,$s0
    lw	$a0,0($a0)
    addu	$a1,$a5,$s1
    addu	$v1,$a5,$t9
    sw	$a0,0($a1)
    addiu	$a6,$a6,-4
    addu	$at,$a5,$t2
    sw	$v0,0($v1)
    addu	$a7,$a5,$s3
    sw	$t0,0($at)
    addu	$a5,$a5,$t3
    bgtz	$a6,.L0d96ea60
    sw	$a3,0($a7)
    # Line 4223
    move	$v0,$s4
    addiu	$t1,$s4,12
    addiu	$t3,$a4,14980
    li	$ra,0x10
    addiu	$t9,$s4,4
    addiu	$t8,$a4,14972
    li	$a5,24
    move	$a6,$zero
    addiu	$t2,$a4,14968
    addiu	$s0,$a4,14976
    addiu	$s1,$s4,8
    nop
    nop
.L0d96eae0:
    addu	$a7,$a6,$t1
    lw	$a7,0($a7)
    addu	$at,$a6,$s1
    lw	$at,0($at)
    addu	$a0,$a6,$t9
    lw	$a0,0($a0)
    addu	$a2,$a6,$v0
    lw	$a2,0($a2)
    addu	$a3,$a6,$t2
    addu	$a1,$a6,$t8
    sw	$a2,0($a3)
    addiu	$a5,$a5,-4
    addu	$v1,$a6,$s0
    sw	$a0,0($a1)
    addu	$t0,$a6,$t3
    sw	$at,0($v1)
    addu	$a6,$a6,$ra
    bgtz	$a5,.L0d96eae0
    sw	$a7,0($t0)
    # Line 4224
    la	$a5,__glOdyim_rectDispatchTable
    lw	$v1,28($a5)
    sw	$v1,15092($a4)
    lw	$v0,24($a5)
    sw	$v0,15088($a4)
    lw	$at,20($a5)
    sw	$at,15084($a4)
    lw	$ra,16($a5)
    sw	$ra,15080($a4)
    lw	$t9,12($a5)
    sw	$t9,15076($a4)
    lw	$t3,8($a5)
    sw	$t3,15072($a4)
    lw	$t2,4($a5)
    sw	$t2,15068($a4)
    lw	$t1,0($a5)
    sw	$t1,15064($a4)
    li	$a7,2
    # Line 4228
    li	$a5,330
    move	$a6,$zero
    addiu	$ra,$a4,15104
    # lw $t9, -17192($gp) # &__glSoftim_dispatchTable
.L0d96eb84:
    addiu	$a7,$a7,-1
    addu	$a0,$a6,$t9
    addiu	$a5,$a5,-1
    lw	$a0,0($a0)
    addu	$a1,$a6,$ra
    addiu	$a6,$a6,4
    bnez	$a7,.L0d96eb84
    sw	$a0,0($a1)
    addiu	$s7,$t9,28
    addiu	$s6,$ra,28
    li	$s1,0x20
    addiu	$s5,$ra,8
    addiu	$a1,$t9,12
    addiu	$v0,$ra,12
    addiu	$a0,$t9,20
    addiu	$s8,$ra,20
    addiu	$s0,$ra,24
    addiu	$s2,$t9,24
    addiu	$a7,$t9,8
    sd	$a7,440($sp)
    addiu	$s3,$ra,16
    addiu	$a3,$ra,4
    sd	$a3,456($sp)
    addiu	$s4,$t9,16
    addiu	$a2,$t9,4
    sd	$a2,448($sp)
    nop
.L0d96ebf0:
    addu	$t0,$a6,$s7
    addu	$t2,$a6,$s2
    lw	$t0,0($t0)
    addu	$t8,$a6,$a0
    lw	$t2,0($t2)
    addu	$v1,$a6,$s4
    lw	$t8,0($t8)
    addu	$a3,$a6,$a1
    lw	$v1,0($v1)
    lw	$a3,0($a3)
    ld	$a2,456($sp)
    addu	$a7,$a6,$t9
    lw	$a7,0($a7)
    ld	$t1,440($sp)
    addu	$t3,$a6,$ra
    ld	$at,448($sp)
    sw	$a7,0($t3)
    addu	$t1,$a6,$t1
    addu	$at,$a6,$at
    lw	$t1,0($t1)
    addu	$a2,$a6,$a2
    lw	$at,0($at)
    addu	$t3,$a6,$s5
    sw	$at,0($a2)
    addu	$a7,$a6,$v0
    sw	$t1,0($t3)
    sw	$a3,0($a7)
    addu	$a2,$a6,$s3
    addu	$at,$a6,$s8
    sw	$v1,0($a2)
    addiu	$a5,$a5,-8
    addu	$t3,$a6,$s0
    sw	$t8,0($at)
    addu	$t1,$a6,$s6
    sw	$t2,0($t3)
    addu	$a6,$a6,$s1
    bgtz	$a5,.L0d96ebf0
    sw	$t0,0($t1)
    addiu	$t9,$a4,16436
    li	$t2,0x10
    addiu	$ra,$a4,16428
    # Line 4229
    li	$a6,24
    la	$t3,__glSoftim_vertexDispatchTable
    move	$a5,$zero
    addiu	$s1,$a4,16432
    addiu	$t8,$a4,16424
    addiu	$t1,$t3,12
    addiu	$s3,$t3,8
    addiu	$s0,$t3,4
    nop
    nop
    nop
.L0d96ecc0:
    addu	$at,$a5,$t1
    lw	$at,0($at)
    addu	$v1,$a5,$s3
    lw	$v1,0($v1)
    addu	$a1,$a5,$s0
    lw	$a1,0($a1)
    addu	$a3,$a5,$t3
    lw	$a3,0($a3)
    addu	$a7,$a5,$t8
    addu	$a2,$a5,$ra
    sw	$a3,0($a7)
    addiu	$a6,$a6,-4
    addu	$a0,$a5,$s1
    sw	$a1,0($a2)
    addu	$v0,$a5,$t9
    sw	$v1,0($a0)
    addu	$a5,$a5,$t2
    bgtz	$a6,.L0d96ecc0
    sw	$at,0($v0)
    li	$t1,2
    # Line 4230
    li	$a5,42
    move	$a6,$zero
    addiu	$t0,$a4,16520
    la	$a7,__glSoftim_colorDispatchTable
.L0d96ed20:
    addiu	$t1,$t1,-1
    addu	$v0,$a6,$a7
    addiu	$a5,$a5,-1
    lw	$v0,0($v0)
    addu	$v1,$a6,$t0
    addiu	$a6,$a6,4
    bnez	$t1,.L0d96ed20
    sw	$v0,0($v1)
    addiu	$s7,$a7,28
    addiu	$s8,$t0,28
    li	$a0,0x20
    addiu	$s0,$a7,4
    addiu	$s1,$t0,4
    addiu	$s3,$a7,12
    addiu	$s4,$t0,12
    addiu	$s5,$a7,20
    addiu	$s6,$t0,20
    addiu	$v0,$t0,24
    addiu	$a3,$a7,16
    sd	$a3,216($sp)
    addiu	$s2,$a7,24
    addiu	$a2,$t0,8
    sd	$a2,208($sp)
    addiu	$a1,$t0,16
    addiu	$v1,$a7,8
    sd	$v1,200($sp)
    nop
    nop
.L0d96ed90:
    addu	$t1,$a6,$s7
    addu	$t3,$a6,$s2
    lw	$t1,0($t1)
    addu	$t9,$a6,$s5
    lw	$t3,0($t3)
    addu	$a2,$a6,$s3
    lw	$t9,0($t9)
    lw	$a2,0($a2)
    addu	$ra,$a6,$s0
    lw	$ra,0($ra)
    addu	$a3,$a6,$a7
    addu	$t8,$a6,$t0
    lw	$a3,0($a3)
    addu	$v1,$a6,$s1
    sw	$a3,0($t8)
    sw	$ra,0($v1)
    ld	$at,216($sp)
    ld	$t2,200($sp)
    addu	$at,$a6,$at
    ld	$t8,208($sp)
    lw	$at,0($at)
    addu	$t2,$a6,$t2
    lw	$t2,0($t2)
    addu	$t8,$a6,$t8
    addu	$a3,$a6,$s4
    sw	$t2,0($t8)
    addu	$v1,$a6,$a1
    sw	$a2,0($a3)
    addu	$ra,$a6,$s6
    sw	$at,0($v1)
    addiu	$a5,$a5,-8
    sw	$t9,0($ra)
    addu	$t8,$a6,$v0
    addu	$t2,$a6,$s8
    sw	$t3,0($t8)
    addu	$a6,$a6,$a0
    bgtz	$a5,.L0d96ed90
    sw	$t1,0($t2)
    # Line 4231
    la	$a5,__glSoftim_normalDispatchTable
    addiu	$a6,$a4,16688
    la	$a7,__glSoftim_texCoordDispatchTable
    lw	$t2,32($a5)
    lw	$t3,36($a5)
    lw	$t8,28($a5)
    lw	$t9,24($a5)
    lw	$ra,20($a5)
    lw	$at,16($a5)
    lw	$v0,12($a5)
    lw	$v1,8($a5)
    lw	$a0,4($a5)
    lw	$a1,0($a5)
    sw	$a1,16688($a4)
    sw	$a0,16692($a4)
    sw	$v1,16696($a4)
    sw	$v0,16700($a4)
    sw	$at,16704($a4)
    sw	$ra,16708($a4)
    sw	$t9,16712($a4)
    sw	$t8,16716($a4)
    sw	$t3,16724($a4)
    sw	$t2,16720($a4)
    # Line 4232
    move	$s2,$a7
    addiu	$t1,$a7,12
    addiu	$t2,$a4,16740
    li	$t3,0x10
    addiu	$ra,$a7,4
    addiu	$t9,$a4,16732
    li	$a6,32
    move	$a5,$zero
    addiu	$s0,$a4,16728
    addiu	$t8,$a4,16736
    addiu	$s1,$a7,8
.L0d96eeb0:
    addu	$a2,$a5,$t1
    lw	$a2,0($a2)
    addu	$a7,$a5,$s1
    lw	$a7,0($a7)
    addu	$at,$a5,$ra
    lw	$at,0($at)
    addu	$v1,$a5,$s2
    lw	$v1,0($v1)
    addu	$a0,$a5,$s0
    addu	$v0,$a5,$t9
    sw	$v1,0($a0)
    addiu	$a6,$a6,-4
    addu	$t0,$a5,$t8
    sw	$at,0($v0)
    addu	$a3,$a5,$t2
    sw	$a7,0($t0)
    addu	$a5,$a5,$t3
    bgtz	$a6,.L0d96eeb0
    sw	$a2,0($a3)
    addiu	$t2,$a4,16868
    li	$ra,0x10
    addiu	$s1,$a4,16860
    # Line 4233
    li	$a6,24
    # lw $t9, -17172($gp) # &__glSoftim_rasterPosDispatchTable
    move	$a5,$zero
    addiu	$t3,$a4,16864
    addiu	$t8,$a4,16856
    addiu	$s0,$t9,12
    addiu	$t1,$t9,8
    addiu	$s2,$t9,4
    nop
    nop
.L0d96ef30:
    addu	$a3,$a5,$s0
    lw	$a3,0($a3)
    addu	$t0,$a5,$t1
    lw	$t0,0($t0)
    addu	$v0,$a5,$s2
    lw	$v0,0($v0)
    addu	$a0,$a5,$t9
    lw	$a0,0($a0)
    addu	$a1,$a5,$t8
    addu	$v1,$a5,$s1
    sw	$a0,0($a1)
    addiu	$a6,$a6,-4
    addu	$at,$a5,$t3
    sw	$v0,0($v1)
    addu	$a7,$a5,$t2
    sw	$t0,0($at)
    addu	$a5,$a5,$ra
    bgtz	$a6,.L0d96ef30
    sw	$a3,0($a7)
    # Line 4234
    la	$a5,__glSoftim_rectDispatchTable
    lw	$v0,28($a5)
    sw	$v0,16980($a4)
    lw	$at,24($a5)
    sw	$at,16976($a4)
    lw	$ra,20($a5)
    sw	$ra,16972($a4)
    lw	$t9,16($a5)
    sw	$t9,16968($a4)
    lw	$t8,12($a5)
    sw	$t8,16964($a4)
    lw	$t3,8($a5)
    sw	$t3,16960($a4)
    lw	$t2,4($a5)
    sw	$t2,16956($a4)
    lw	$t1,0($a5)
    sw	$t1,16952($a4)
    li	$a7,2
    # Line 4236
    li	$a6,330
    move	$a5,$zero
    addiu	$ra,$a4,16992
    # lw $t9, -17164($gp) # &__glOdylc_dispatchTable
.L0d96efd4:
    addiu	$a7,$a7,-1
    addu	$v1,$a5,$t9
    addiu	$a6,$a6,-1
    lw	$v1,0($v1)
    addu	$a0,$a5,$ra
    addiu	$a5,$a5,4
    bnez	$a7,.L0d96efd4
    sw	$v1,0($a0)
    addiu	$s2,$t9,28
    addiu	$a1,$ra,28
    li	$v0,0x20
    addiu	$s1,$ra,8
    addiu	$s0,$t9,8
    addiu	$s6,$t9,12
    addiu	$a0,$t9,20
    addiu	$s5,$ra,20
    addiu	$a7,$ra,12
    sd	$a7,432($sp)
    addiu	$s8,$ra,24
    addiu	$s7,$t9,24
    addiu	$s4,$ra,16
    addiu	$a3,$ra,4
    sd	$a3,424($sp)
    addiu	$s3,$t9,16
    addiu	$a2,$t9,4
    sd	$a2,416($sp)
    nop
.L0d96f040:
    addu	$t0,$a5,$s2
    addu	$t2,$a5,$s7
    lw	$t0,0($t0)
    addu	$t8,$a5,$a0
    lw	$t2,0($t2)
    addu	$v1,$a5,$s3
    lw	$t8,0($t8)
    addu	$a3,$a5,$s6
    lw	$v1,0($v1)
    lw	$a3,0($a3)
    addu	$t1,$a5,$s0
    lw	$t1,0($t1)
    ld	$a2,424($sp)
    ld	$at,416($sp)
    addu	$a7,$a5,$t9
    addu	$t3,$a5,$ra
    lw	$a7,0($a7)
    sw	$a7,0($t3)
    ld	$a7,432($sp)
    addu	$at,$a5,$at
    addu	$a2,$a5,$a2
    lw	$at,0($at)
    addu	$t3,$a5,$s1
    sw	$at,0($a2)
    sw	$t1,0($t3)
    addu	$a7,$a5,$a7
    addu	$a2,$a5,$s4
    sw	$a3,0($a7)
    addu	$at,$a5,$s5
    sw	$v1,0($a2)
    addiu	$a6,$a6,-8
    addu	$t3,$a5,$s8
    sw	$t8,0($at)
    addu	$t1,$a5,$a1
    sw	$t2,0($t3)
    addu	$a5,$a5,$v0
    bgtz	$a6,.L0d96f040
    sw	$t0,0($t1)
    ld	$s0,624($sp)
    ld	$s2,632($sp)
    ld	$s8,640($sp)
    ld	$s3,648($sp)
    addiu	$t0,$a4,18324
    li	$t8,0x10
    ld	$s4,656($sp)
    addiu	$t9,$a4,18316
    # Line 4237
    li	$a6,24
    la	$t3,__glOdylc_vertexDispatchTable
    move	$a5,$zero
    addiu	$t1,$a4,18320
    ld	$s6,664($sp)
    addiu	$t2,$a4,18312
    ld	$s7,672($sp)
    addiu	$s1,$t3,12
    ld	$s5,680($sp)
    addiu	$a7,$t3,8
    addiu	$ra,$t3,4
    nop
    nop
    nop
.L0d96f130:
    addu	$at,$a5,$s1
    lw	$at,0($at)
    addu	$v1,$a5,$a7
    lw	$v1,0($v1)
    addu	$a1,$a5,$ra
    lw	$a1,0($a1)
    addu	$a3,$a5,$t3
    lw	$a3,0($a3)
    addu	$v0,$a5,$t2
    addu	$a2,$a5,$t9
    sw	$a3,0($v0)
    addiu	$a6,$a6,-4
    addu	$a0,$a5,$t1
    sw	$a1,0($a2)
    addu	$v0,$a5,$t0
    sw	$v1,0($a0)
    addu	$a5,$a5,$t8
    bgtz	$a6,.L0d96f130
    sw	$at,0($v0)
    li	$a6,2
    # Line 4238
    li	$v0,42
    move	$a0,$zero
    addiu	$a5,$a4,18408
    la	$a1,__glOdylc_colorDispatchTable
.L0d96f190:
    addiu	$a6,$a6,-1
    addu	$v1,$a0,$a1
    addiu	$v0,$v0,-1
    lw	$v1,0($v1)
    addu	$a2,$a0,$a5
    addiu	$a0,$a0,4
    bnez	$a6,.L0d96f190
    sw	$v1,0($a2)
    addiu	$t3,$a5,12
    sd	$t3,160($sp)
    addiu	$t2,$a5,20
    sd	$t2,288($sp)
    addiu	$t1,$a5,24
    sd	$t1,264($sp)
    addiu	$t0,$a1,24
    sd	$t0,256($sp)
    addiu	$a7,$a5,16
    sd	$a7,248($sp)
    addiu	$a6,$a1,16
    sd	$a6,240($sp)
    addiu	$t9,$a1,28
    sd	$t9,280($sp)
    addiu	$t9,$a1,4
    addiu	$t8,$a5,28
    sd	$t8,168($sp)
    addiu	$t8,$a5,4
    addiu	$a3,$a5,8
    sd	$a3,232($sp)
    addiu	$ra,$a1,12
    li	$s1,0x20
    sd	$s1,272($sp)
    addiu	$s1,$a1,20
    addiu	$a2,$a1,8
    sd	$a2,224($sp)
    nop
    nop
.L0d96f220:
    ld	$a3,256($sp)
    ld	$at,280($sp)
    addu	$a2,$a0,$s1
    addu	$t2,$a0,$ra
    lw	$a2,0($a2)
    lw	$t2,0($t2)
    addu	$at,$a0,$at
    ld	$t0,240($sp)
    addu	$a3,$a0,$a3
    lw	$at,0($at)
    lw	$a3,0($a3)
    addu	$t0,$a0,$t0
    lw	$t0,0($t0)
    ld	$v1,224($sp)
    addu	$a7,$a0,$t9
    lw	$a7,0($a7)
    addu	$t3,$a0,$a1
    addu	$a6,$a0,$a5
    lw	$t3,0($t3)
    addu	$t1,$a0,$t8
    sw	$t3,0($a6)
    sw	$a7,0($t1)
    ld	$a7,288($sp)
    ld	$t1,248($sp)
    ld	$a6,232($sp)
    ld	$t3,160($sp)
    addu	$v1,$a0,$v1
    lw	$v1,0($v1)
    addu	$a6,$a0,$a6
    addu	$t3,$a0,$t3
    sw	$v1,0($a6)
    addu	$t1,$a0,$t1
    sw	$t2,0($t3)
    addu	$a7,$a0,$a7
    sw	$t0,0($t1)
    sw	$a2,0($a7)
    ld	$a6,264($sp)
    ld	$v1,168($sp)
    addiu	$v0,$v0,-8
    ld	$a2,272($sp)
    addu	$a6,$a0,$a6
    addu	$v1,$a0,$v1
    sw	$a3,0($a6)
    addu	$a0,$a0,$a2
    bgtz	$v0,.L0d96f220
    sw	$at,0($v1)
    # Line 4239
    addiu	$v0,$a4,18576
    la	$a0,__glOdylc_normalDispatchTable
    lw	$a2,36($a0)
    lw	$t8,0($a0)
    sw	$t8,18576($a4)
    lw	$t3,4($a0)
    sw	$t3,18580($a4)
    lw	$t2,8($a0)
    sw	$t2,18584($a4)
    lw	$t1,12($a0)
    sw	$t1,18588($a4)
    lw	$t0,16($a0)
    sw	$t0,18592($a4)
    lw	$a7,20($a0)
    sw	$a7,18596($a4)
    lw	$a6,24($a0)
    sw	$a6,18600($a4)
    lw	$a3,28($a0)
    sw	$a3,18604($a4)
    sw	$a2,18612($a4)
    lw	$v1,32($a0)
    sw	$v1,18608($a4)
    addiu	$t8,$a4,18628
    li	$t2,0x10
    addiu	$t9,$a4,18620
    # Line 4240
    li	$v0,32
    la	$t1,__glOdylc_texCoordDispatchTable
    move	$a0,$zero
    addiu	$a7,$a4,18624
    addiu	$t3,$a4,18616
    addiu	$t0,$t1,12
    addiu	$a1,$t1,8
    addiu	$ra,$t1,4
    nop
.L0d96f360:
    addu	$at,$a0,$t0
    lw	$at,0($at)
    addu	$a2,$a0,$a1
    lw	$a2,0($a2)
    addu	$a5,$a0,$ra
    lw	$a5,0($a5)
    addu	$v1,$a0,$t1
    lw	$v1,0($v1)
    addu	$a3,$a0,$t3
    addu	$a6,$a0,$t9
    sw	$v1,0($a3)
    addiu	$v0,$v0,-4
    addu	$a3,$a0,$a7
    sw	$a5,0($a6)
    addu	$v1,$a0,$t8
    sw	$a2,0($a3)
    addu	$a0,$a0,$t2
    bgtz	$v0,.L0d96f360
    sw	$at,0($v1)
    addiu	$a7,$a4,18756
    li	$t3,0x10
    addiu	$ra,$a4,18748
    # Line 4241
    li	$a0,24
    la	$t2,__glOdylc_rasterPosDispatchTable
    move	$v0,$zero
    addiu	$t0,$a4,18752
    addiu	$t1,$a4,18744
    addiu	$t8,$t2,12
    addiu	$a1,$t2,8
    addiu	$t9,$t2,4
    nop
    nop
.L0d96f3e0:
    addu	$v1,$v0,$t8
    lw	$v1,0($v1)
    addu	$a3,$v0,$a1
    lw	$a3,0($a3)
    addu	$a6,$v0,$t9
    lw	$a6,0($a6)
    addu	$a2,$v0,$t2
    lw	$a2,0($a2)
    addu	$a5,$v0,$t1
    addu	$at,$v0,$ra
    sw	$a2,0($a5)
    addiu	$a0,$a0,-4
    addu	$a5,$v0,$t0
    sw	$a6,0($at)
    addu	$a2,$v0,$a7
    sw	$a3,0($a5)
    addu	$v0,$v0,$t3
    bgtz	$a0,.L0d96f3e0
    sw	$v1,0($a2)
    # Line 4242
    la	$v0,__glOdylc_rectDispatchTable
    lw	$t3,28($v0)
    sw	$t3,18868($a4)
    lw	$t2,24($v0)
    sw	$t2,18864($a4)
    lw	$t1,20($v0)
    sw	$t1,18860($a4)
    lw	$t0,16($v0)
    sw	$t0,18856($a4)
    lw	$a7,12($v0)
    sw	$a7,18852($a4)
    lw	$a6,8($v0)
    sw	$a6,18848($a4)
    lw	$a3,4($v0)
    sw	$a3,18844($a4)
    lw	$a2,0($v0)
    sw	$a2,18840($a4)
    ld	$s1,616($sp)
    # Line 4248
    li	$t8,1
    sw	$t8,-13616($gp)
.L0d96f47c:
    # Line 4325
    sw	$zero,4964($s0)
    # Line 4324
    sw	$zero,4960($s0)
    # Line 4323
    sw	$zero,4956($s0)
    # Line 4320
    sw	$zero,4948($s0)
    # Line 4316
    sw	$zero,4976($s0)
    # Line 4315
    sw	$zero,4972($s0)
    # Line 4314
    sw	$zero,4936($s0)
    # Line 4313
    sw	$zero,4932($s0)
    # Line 4273
    li	$t8,64
    sw	$t8,3740($s0)
    # Line 4268
    li	$t0,16
    # Line 4272
    sw	$t0,3780($s0)
    # Line 4271
    li	$t3,4096
    sw	$t3,3772($s0)
    # Line 4270
    li	$t2,128
    sw	$t2,3784($s0)
    # Line 4269
    li	$t1,15
    sw	$t1,3732($s0)
    # Line 4268
    sw	$t0,3776($s0)
    # Line 4267
    li	$a7,30
    sw	$a7,3768($s0)
    # Line 4265
    li	$a6,2
    sw	$a6,3800($s0)
    # Line 4263
    li	$a5,10
    # Line 4264
    sw	$a5,3796($s0)
    # Line 4263
    sw	$a5,3792($s0)
    # Line 4262
    li	$a4,32
    sw	$a4,3788($s0)
    # Line 4258
    li	$a3,3840
    # Line 4259
    sw	$a3,3620($s0)
    # Line 4258
    sw	$a3,3616($s0)
    # Line 4292
    li	$a0,6144
    # Line 4293
    sw	$a0,3664($s0)
    # Line 4292
    sw	$a0,3660($s0)
    # Line 4329
    la	$a0,__glOdysseySPBfree
    # Line 4276
    li	$ra,11
    # Line 4280
    sw	$ra,3640($s0)
    # Line 4279
    sw	$ra,3636($s0)
    # Line 4278
    sw	$ra,3632($s0)
    # Line 4277
    sw	$ra,3628($s0)
    # Line 4276
    sw	$ra,3624($s0)
    # Line 4318
    la	$ra,__glSPDlistCompiler
    # Line 4282
    li	$at,1
    sw	$at,3608($s0)
    # Line 4321
    la	$at,__glOdysseyDlistInitState
    # Line 4283
    li	$v0,8
    sw	$v0,3588($s0)
    # Line 4326
    la	$v0,__glSPFreeDlist
    # Line 4284
    li	$v1,13
    sw	$v1,3600($s0)
    # Line 4328
    la	$v1,__glOdysseySPBalloc
    # Line 4303
    li	$a1,512
    sw	$a1,3724($s0)
    # Line 4330
    la	$a1,__glOdysseySPCompMachdep
    # Line 4305
    li	$a2,256
    # Line 4308
    sw	$a2,3656($s0)
    # Line 4307
    sw	$a2,3652($s0)
    # Line 4306
    sw	$a2,3648($s0)
    # Line 4305
    sw	$a2,3644($s0)
    # Line 4334
    la	$a2,__glOdylc_Error
    sw	$a2,5040($s0)
    # Line 4330
    sw	$a1,5036($s0)
    # Line 4328
    sw	$v1,5028($s0)
    # Line 4326
    sw	$v0,4968($s0)
    # Line 4321
    sw	$at,4952($s0)
    # Line 4318
    sw	$ra,4944($s0)
    # Line 4329
    sw	$a0,5032($s0)
    # Line 4296
    lwc1	$f0,_lit_3f000000
    # Line 4298
    lwc1	$f2,_lit_3e000000
    # Line 4297
    lwc1	$f1,_lit_41200000
    # Line 4301
    swc1	$f2,3764($s0)
    # Line 4300
    swc1	$f1,3760($s0)
    # Line 4299
    swc1	$f0,3756($s0)
    # Line 4274
    li	$t9,3
    sw	$t9,3736($s0)
    # Line 4317
    # lw $t9, -32044($gp) # &__glOdysseyDlistOptimizer
    sw	$t9,4940($s0)
    # Line 4337
    # lw $t9, -26816($gp) # &__glEarlyInitContext
    # Line 4298
    swc1	$f2,3752($s0)
    # Line 4297
    swc1	$f1,3748($s0)
    # Line 4337
    move	$a0,$s0
    jal	__glEarlyInitContext
    # Line 4296
    swc1	$f0,3744($s0)
    # Line 4360
    la	$a5,__glOdysseyVisualsMatch
    sw	$a5,104($s0)
    # Line 4339
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 4340
    la	$t8,sub_0d970000
    # Line 4344
    la	$t3,sub_0d970000
    # Line 4347
    la	$t2,sub_0d970000
    # Line 4348
    la	$t1,sub_0d970000
    # Line 4349
    la	$t0,sub_0d970000
    # Line 4350
    la	$a7,sub_0d970000
    # Line 4367
    la	$a4,sub_0d960000
    # Line 4351
    la	$a6,sub_0d970000
    # Line 4367
    addiu	$a4,$a4,23856
    sw	$a4,88($s0)
    # Line 4351
    addiu	$a6,$a6,-15040
    sw	$a6,164($s0)
    # Line 4350
    addiu	$a7,$a7,-15248
    sw	$a7,160($s0)
    # Line 4349
    addiu	$t0,$t0,-15376
    sw	$t0,156($s0)
    # Line 4348
    addiu	$t1,$t1,-15504
    sw	$t1,152($s0)
    # Line 4347
    addiu	$t2,$t2,-16224
    sw	$t2,120($s0)
    # Line 4344
    addiu	$t3,$t3,-20736
    sw	$t3,100($s0)
    # Line 4340
    addiu	$t8,$t8,-15616
    sw	$t8,96($s0)
    # Line 4339
    addiu	$t9,$t9,-16128
    sw	$t9,92($s0)
    # Line 4378
    li	$a3,1
    sw	$a3,27164($s1)
    # Line 4377
    sw	$zero,27016($s1)
    # Line 4374
    sw	$zero,27012($s1)
    # Line 4378
    bnez	$s2,.L0d96f674
    # Line 4373
    sw	$zero,27008($s1)
    ld	$s1,608($sp)
.L0d96f658:
    # Line 4400
    ld	$ra,352($sp)
    ld	$gp,360($sp)
    move	$v0,$s0
    ld	$s0,328($sp)
    ld	$s2,368($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0d96f674:
    # Line 4385
    # lw $t9, -29196($gp) # &__glShareDlist
    move	$a0,$s0
    jal	__glShareDlist
    move	$a1,$s2
    # Line 4386
    # lw $t9, -31000($gp) # &__glOdysseySharePM
    move	$a0,$s0
    jal	__glOdysseySharePM
    move	$a1,$s2
    b	.L0d96f658
    ld	$s1,608($sp)
.L0d96f69c:
    # Line 4400
    ld	$ra,352($sp)
    ld	$gp,360($sp)
    # Line 4039
    move	$v0,$zero
    # Line 4400
    ld	$s0,328($sp)
    ld	$s2,368($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0d96f6b8:
    # Line 4043
    lui	$ra,0x2
.L0d96f6bc:
    addu	$ra,$s0,$ra
    sd	$ra,0($sp)
    b	.L0d96c6a4
    sb	$zero,-25118($ra)
.L0d96f6cc:
    # Line 4072
    lw	$t9,12($s0)
    move	$a0,$s0
    ld	$s1,608($sp)
    jalr	$t9
    move	$a1,$s0
    # Line 4400
    ld	$ra,352($sp)
    ld	$gp,360($sp)
    # Line 4073
    move	$v0,$zero
    # Line 4400
    ld	$s0,328($sp)
    ld	$s2,368($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0d96f6fc:
    li	$s4,0x10
    addiu	$s1,$a4,5100
    # Line 4119
    li	$a6,24
    # Line 4117
    la	$a0,__glOdyim_softClipVertexDispatchTable
    # Line 4119
    move	$a5,$zero
    addiu	$s8,$a4,5096
    addiu	$s6,$a4,5104
    addiu	$s2,$a0,12
    addiu	$t8,$a0,4
    addiu	$s7,$a0,8
.L0d96f724:
    addu	$at,$a5,$s2
    lw	$at,0($at)
    addu	$v1,$a5,$s7
    lw	$v1,0($v1)
    addu	$a2,$a5,$t8
    lw	$a2,0($a2)
    addu	$a7,$a5,$a0
    lw	$a7,0($a7)
    addu	$t0,$a5,$s8
    addu	$a3,$a5,$s1
    sw	$a7,0($t0)
    addiu	$a6,$a6,-4
    addu	$a1,$a5,$s6
    sw	$a2,0($a3)
    addu	$v0,$a5,$s3
    sw	$v1,0($a1)
    addu	$a5,$a5,$s4
    bgtz	$a6,.L0d96f724
    sw	$at,0($v0)
    b	.L0d96d2f0
    li	$t8,2
.end __glOdysseyCreateContext

# Function: __glOdyim_RenderMode
# Declared: Line 4405 (Source lines: 4406-4537)
# Address: 0x0d96f780 - 0x0d96fc68 (Size: 1256 bytes, Frame: 192)
.globl __glOdyim_RenderMode
.ent __glOdyim_RenderMode
__glOdyim_RenderMode:
    # Line 4406
    addiu	$sp,$sp,-64
    sd	$s1,24($sp)
    # Line 4410
    lw	$s1,4112($zero)
    lw	$at,4120($zero)
    # Line 4406
    sd	$s0,16($sp)
    # Line 4410
    li	$v0,1
    # Line 4406
    lui	$v1,0x19
    move	$s0,$a0
    sd	$ra,56($sp)
    addiu	$v1,$v1,-29168
    sd	$gp,8($sp)
    # Line 4410
    beq	$at,$v0,.L0d96fc0c
    # Line 4406
    addu	$gp,$t9,$v1
    # Line 4416
    li	$a3,7168
    sd	$s2,32($sp)
    beq	$a3,$a0,.L0d96fa3c
    # Line 4412
    lw	$s2,3204($s1)
    # Line 4416
    li	$a0,7169
    beq	$s0,$a0,.L0d96fa18
    li	$a1,7170
    beq	$s0,$a1,.L0d96f800
    # Line 4458
    nop	# was lw $t9, -26792($gp) # &__glSetError
    ld	$s2,32($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,56($sp)
    # Line 4537
    ld	$gp,8($sp)
    # Line 4459
    move	$v0,$zero
    # Line 4537
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d96f800:
    # Line 4430
    lw	$a2,4904($s1)
    beqz	$a2,.L0d96fbe0
    # Line 4432
    lui	$a0,0x1
    addu	$a0,$s1,$a0
    lw	$a4,26840($a0)
    beqz	$a4,.L0d96f834
    nop
    lw	$a1,26844($a0)
    beqz	$a1,.L0d96fba0
    nop
.L0d96f828:
    # Line 4442
    lw	$a2,26848($a0)
    beqz	$a2,.L0d96fb60
    nop
.L0d96f834:
    # Line 4454
    lw	$a4,27016($a0)
    ori	$a4,$a4,0x2
    sw	$a4,27016($a0)
.L0d96f840:
    # Line 4463
    beq	$a3,$s2,.L0d96fa7c
    li	$a5,7169
    beq	$s2,$a5,.L0d96fa84
    li	$v0,7170
    beq	$v0,$s2,.L0d96faa8
    lw	$a4,0($sp)
.L0d96f858:
    # Line 4488
    bne	$s0,$s2,.L0d96fa58
    # Line 4496
    nop	# was lw $t9, -32124($gp) # &__glOdysseyValidateDispatchTable
.L0d96f860:
    # Line 4499
    beq	$a3,$s0,.L0d96f878
    li	$a6,7169
    beq	$s0,$a6,.L0d96fa98
    li	$v0,7170
    beq	$v0,$s0,.L0d96f8ac
    nop
.L0d96f878:
    ld	$s2,32($sp)
    ld	$ra,56($sp)
    # Line 4537
    ld	$gp,8($sp)
    move	$v0,$a4
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d96f898:
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d96f8ac:
    # Line 4507
    lw	$t1,4904($s1)
    sw	$t1,4908($s1)
    # Line 4508
    sb	$zero,4900($s1)
    # Line 4509
    lw	$t0,4892($s1)
    sw	$t0,4896($s1)
    # Line 4510
    sb	$zero,4888($s1)
    # Line 4511
    sw	$zero,4916($s1)
    # Line 4512
    sw	$zero,4920($s1)
    lw	$a7,26840($a0)
    beqz	$a7,.L0d96f878
    nop
    beq	$v0,$s2,.L0d96fa08
    nop
    # Line 4522
    lw	$v1,6132($s1)
    lw	$v1,44($v1)
    sw	$v1,26872($a0)
    # Line 4523
    lw	$v0,6132($s1)
    la	$at,__glTRim_End
    sw	$at,44($v0)
    # Line 4524
    lw	$ra,6132($s1)
    lw	$ra,28($ra)
    sw	$ra,26868($a0)
    # Line 4525
    lw	$t9,6132($s1)
    addiu	$a6,$a0,26888
    la	$t8,__glTRim_Begin
    li	$t0,0x10
    addiu	$a5,$a0,26880
    sw	$t8,28($t9)
    # Line 4526
    li	$a3,24
    addiu	$t1,$a0,26876
    lw	$t3,6132($s1)
    move	$v0,$zero
    addiu	$t9,$a0,26884
    addiu	$t8,$t3,1332
    addiu	$t2,$t3,1324
    addiu	$a7,$t3,1328
    addiu	$t3,$t3,1320
.L0d96f940:
    addu	$at,$v0,$t3
    addu	$v1,$v0,$t1
    lw	$at,0($at)
    addu	$ra,$v0,$t2
    sw	$at,0($v1)
    addu	$at,$v0,$a5
    lw	$ra,0($ra)
    addu	$a2,$v0,$a7
    sw	$ra,0($at)
    addu	$ra,$v0,$t9
    lw	$a2,0($a2)
    addiu	$a3,$a3,-4
    addu	$a1,$v0,$t8
    sw	$a2,0($ra)
    addu	$a2,$v0,$a6
    lw	$a1,0($a1)
    addu	$v0,$v0,$t0
    bgtz	$a3,.L0d96f940
    sw	$a1,0($a2)
    # Line 4527
    la	$a7,__glTRim_vertexDispatchTable
    li	$t9,0x10
    li	$a3,24
    lw	$t1,6132($s1)
    move	$v0,$zero
    addiu	$t2,$a7,12
    addiu	$t3,$a7,4
    addiu	$t0,$t1,1332
    addiu	$a5,$t1,1324
    addiu	$a6,$t1,1320
    addiu	$t1,$t1,1328
    addiu	$t8,$a7,8
.L0d96f9bc:
    addu	$a1,$v0,$a7
    addu	$a2,$v0,$a6
    lw	$a1,0($a1)
    addu	$v1,$v0,$t3
    sw	$a1,0($a2)
    addu	$a1,$v0,$a5
    lw	$v1,0($v1)
    addu	$at,$v0,$t8
    sw	$v1,0($a1)
    addu	$v1,$v0,$t1
    lw	$at,0($at)
    addiu	$a3,$a3,-4
    addu	$ra,$v0,$t2
    sw	$at,0($v1)
    addu	$at,$v0,$t0
    lw	$ra,0($ra)
    addu	$v0,$v0,$t9
    bgtz	$a3,.L0d96f9bc
    sw	$ra,0($at)
.L0d96fa08:
    # Line 4532
    sw	$zero,26860($a0)
    # Line 4531
    sw	$zero,26856($a0)
    b	.L0d96f878
    # Line 4530
    sw	$zero,26852($a0)
.L0d96fa18:
    # Line 4422
    lw	$a2,4872($s1)
    beqz	$a2,.L0d96fc50
    # Line 4423
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4426
    lui	$a0,0x1
    addu	$a0,$s1,$a0
    lw	$a4,27016($a0)
    ori	$a4,$a4,0x2
    # Line 4427
    b	.L0d96f840
    # Line 4426
    sw	$a4,27016($a0)
.L0d96fa3c:
    # Line 4418
    lui	$a0,0x1
    addu	$a0,$s1,$a0
    lw	$a1,27016($a0)
    li	$a2,-3
    and	$a1,$a1,$a2
    b	.L0d96f840
    sw	$a1,27016($a0)
.L0d96fa58:
    sd	$a4,40($sp)
    sd	$a0,48($sp)
    # Line 4496
    move	$a0,$s1
    bal __glOdysseyValidateDispatchTable
    # Line 4491
    sw	$s0,3204($s1)
    ld	$a0,48($sp)
    ld	$a4,40($sp)
    b	.L0d96f860
    li	$a3,7168
.L0d96fa7c:
    b	.L0d96f858
    # Line 4465
    move	$a4,$zero
.L0d96fa84:
    # Line 4468
    lbu	$a1,4868($s1)
    beqz	$a1,.L0d96fc34
    li	$v0,-1
.L0d96fa90:
    # Line 4470
    b	.L0d96f858
    # Line 4468
    move	$a4,$v0
.L0d96fa98:
    # Line 4504
    sb	$zero,4868($s1)
    # Line 4503
    lw	$a2,4872($s1)
    b	.L0d96f878
    sw	$a2,4876($s1)
.L0d96faa8:
    # Line 4477
    lw	$a4,26840($a0)
    li	$t2,0x10
    addiu	$a5,$a0,26880
    beqz	$a4,.L0d96fb4c
    addiu	$t0,$a0,26888
    beq	$v0,$s0,.L0d96fb4c
    nop
    # Line 4480
    lw	$t9,6132($s1)
    lw	$t8,26872($a0)
    sw	$t8,44($t9)
    # Line 4481
    lw	$t3,6132($s1)
    lw	$t1,26868($a0)
    sw	$t1,28($t3)
    # Line 4482
    move	$a4,$zero
    li	$v0,24
    lw	$a7,6132($s1)
    addiu	$t9,$a0,26876
    addiu	$t8,$a0,26884
    addiu	$t1,$a7,1332
    addiu	$a6,$a7,1324
    addiu	$t3,$a7,1328
    addiu	$a7,$a7,1320
.L0d96fb00:
    addu	$a1,$a4,$t9
    addu	$a2,$a4,$a7
    lw	$a1,0($a1)
    addu	$v1,$a4,$a5
    sw	$a1,0($a2)
    addu	$a1,$a4,$a6
    lw	$v1,0($v1)
    addu	$at,$a4,$t8
    sw	$v1,0($a1)
    addu	$v1,$a4,$t3
    lw	$at,0($at)
    addiu	$v0,$v0,-4
    addu	$ra,$a4,$t0
    sw	$at,0($v1)
    addu	$at,$a4,$t1
    lw	$ra,0($ra)
    addu	$a4,$a4,$t2
    bgtz	$v0,.L0d96fb00
    sw	$ra,0($at)
.L0d96fb4c:
    lbu	$a2,4900($s1)
    beqz	$a2,.L0d96fc48
    # Line 4486
    li	$v0,-1
.L0d96fb58:
    # Line 4487
    b	.L0d96f858
    # Line 4486
    move	$a4,$v0
.L0d96fb60:
    # Line 4446
    lw	$t9,0($s1)
    sd	$a0,48($sp)
    move	$a0,$s1
    jal	__glSetError
    li	$a1,1920
    ld	$a0,48($sp)
    li	$a3,7168
    bnez	$v0,.L0d96f834
    sw	$v0,26848($a0)
    # Line 4449
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s2,32($sp)
    jal	__glSetError
    li	$a0,1285
    ld	$ra,56($sp)
    # Line 4450
    b	.L0d96f898
    move	$v0,$zero
.L0d96fba0:
    # Line 4438
    lw	$t9,0($s1)
    sd	$a0,48($sp)
    move	$a0,$s1
    jalr	$t9
    li	$a1,1920
    ld	$a0,48($sp)
    li	$a3,7168
    bnez	$v0,.L0d96f828
    sw	$v0,26844($a0)
    # Line 4441
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s2,32($sp)
    jal	__glSetError
    li	$a0,1285
    ld	$ra,56($sp)
    # Line 4442
    b	.L0d96f898
    move	$v0,$zero
.L0d96fbe0:
    # Line 4431
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s2,32($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,56($sp)
    # Line 4537
    ld	$gp,8($sp)
    # Line 4432
    move	$v0,$zero
    # Line 4537
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d96fc0c:
    # Line 4410
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,56($sp)
    # Line 4537
    ld	$gp,8($sp)
    # Line 4410
    move	$v0,$zero
    # Line 4537
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d96fc34:
    # Line 4468
    lw	$v0,4876($s1)
    lw	$v1,4872($s1)
    subu	$v0,$v0,$v1
    b	.L0d96fa90
    sra	$v0,$v0,0x2
.L0d96fc48:
    b	.L0d96fb58
    # Line 4486
    lw	$v0,4916($s1)
.L0d96fc50:
    ld	$s2,32($sp)
    # Line 4423
    jalr	$t9
    li	$a0,1282
    ld	$ra,56($sp)
    # Line 4424
    b	.L0d96f898
    move	$v0,$zero
.end __glOdyim_RenderMode

# Function: __glOdysseyInitIgloo
# Declared: Line 4542 (Source lines: 4543-4551)
# Address: 0x0d96fc70 - 0x0d96fcdc (Size: 108 bytes, Frame: 16)
.globl __glOdysseyInitIgloo
.ent __glOdysseyInitIgloo
__glOdysseyInitIgloo:
    # Line 4543
    addiu	$sp,$sp,-16
    sd	$ra,8($sp)
    # Line 4546
    lui	$v1,0x1
    sd	$gp,0($sp)
    addu	$v1,$a0,$v1
    # Line 4549
    lw	$v0,26980($v1)
    # Line 4546
    li	$a2,1
    sw	$a2,27008($v1)
    # Line 4549
    li	$at,2
    # Line 4547
    lw	$a2,27016($v1)
    # Line 4543
    lui	$a1,0x19
    # Line 4549
    ori	$v0,$v0,0x400
    sw	$v0,26980($v1)
    # Line 4543
    addiu	$a1,$a1,-30432
    # Line 4547
    ori	$a2,$a2,0x1
    sw	$a2,27016($v1)
    # Line 4543
    addu	$gp,$t9,$a1
    # Line 4549
    b	.L0d96fcc4
    sw	$at,4120($zero)
.L0d96fcbc:
    # Line 4551
    jr	$ra
    addiu	$sp,$sp,16
.L0d96fcc4:
    # Line 4550
    lw	$t9,11840($a0)
    jalr	$t9
    nop
    # Line 4551
    ld	$gp,0($sp)
    b	.L0d96fcbc
    ld	$ra,8($sp)
.end __glOdysseyInitIgloo

# Function: ConvertFromShadow
# Declared: Line 4577 (Source lines: 4579-4764)
# Address: 0x0d96fce0 - 0x0d9704b8 (Size: 2008 bytes, Frame: 0)
.ent ConvertFromShadow
ConvertFromShadow:
    # Line 4579
    la	$a5,sub_0daf0000
    addiu	$a6,$a2,-6
    sltiu	$a7,$a6,53
    sll	$a6,$a6,0x2
    addiu	$a5,$a5,-29904
    beqz	$a7,.L0d96fd50
    addu	$a5,$a5,$a6
    lw	$a6,0($a5)
    jr	$a6
    # Line 4600
    lwc1	$f1,_lit_3f800000
.L0d96fd08:
    # Line 4721
    lw	$t1,0($a3)
    sll	$t1,$t1,0x2
    addu	$t1,$a0,$t1
    lwc1	$f2,3824($t1)
    swc1	$f2,0($a1)
    # Line 4722
    lw	$t0,4($a3)
    sll	$t0,$t0,0x2
    addu	$t0,$a0,$t0
    lwc1	$f1,3824($t0)
    swc1	$f1,4($a1)
    # Line 4723
    lw	$a7,8($a3)
    sll	$a7,$a7,0x2
    addu	$a7,$a0,$a7
    lwc1	$f0,3824($a7)
    lwc1	$f4,_lit_3f800000
    swc1	$f0,8($a1)
.L0d96fd48:
    # Line 4764
    jr	$ra
    # Line 4761
    swc1	$f4,12($a1)
.L0d96fd50:
    # Line 4764
    jr	$ra
    nop
.L0d96fd58:
    # Line 4582
    lw	$t2,0($a3)
    mtc1	$t2,$f3
    cvt.s.w	$f3,$f3
    # Line 4764
    jr	$ra
    # Line 4582
    swc1	$f3,0($a1)
.L0d96fd6c:
    # Line 4653
    lwc1	$f7,0($a3)
    swc1	$f7,0($a1)
    # Line 4654
    lwc1	$f6,4($a3)
    swc1	$f6,4($a1)
    # Line 4655
    lwc1	$f5,8($a3)
    swc1	$f5,8($a1)
    # Line 4656
    lwc1	$f4,12($a3)
    # Line 4764
    jr	$ra
    # Line 4656
    swc1	$f4,12($a1)
.L0d96fd90:
    # Line 4646
    lw	$at,0($a3)
    mtc1	$at,$f11
    cvt.s.w	$f11,$f11
    swc1	$f11,0($a1)
    # Line 4647
    lw	$t9,4($a3)
    mtc1	$t9,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,4($a1)
    # Line 4648
    lw	$t8,8($a3)
    mtc1	$t8,$f9
    cvt.s.w	$f9,$f9
    swc1	$f9,8($a1)
    # Line 4649
    lw	$t3,12($a3)
    mtc1	$t3,$f8
    cvt.s.w	$f8,$f8
    # Line 4764
    jr	$ra
    # Line 4649
    swc1	$f8,12($a1)
.L0d96fdd4:
    # Line 4639
    lwc1	$f15,0($a3)
    swc1	$f15,0($a1)
    # Line 4640
    lwc1	$f14,4($a3)
    # Line 4642
    lwc1	$f13,_lit_3f800000
    # Line 4640
    swc1	$f14,4($a1)
    # Line 4641
    lwc1	$f12,8($a3)
    # Line 4642
    swc1	$f13,12($a1)
    # Line 4764
    jr	$ra
    # Line 4641
    swc1	$f12,8($a1)
.L0d96fdf8:
    # Line 4624
    lw	$a0,0($a3)
    mtc1	$a0,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,0($a1)
    # Line 4625
    lw	$v1,4($a3)
    mtc1	$v1,$f17
    cvt.s.w	$f17,$f17
    swc1	$f17,4($a1)
    # Line 4626
    lw	$v0,8($a3)
    mtc1	$v0,$f16
    # Line 4627
    lwc1	$f17,_lit_3f800000
    # Line 4626
    cvt.s.w	$f16,$f16
    # Line 4627
    swc1	$f17,12($a1)
    # Line 4764
    jr	$ra
    # Line 4626
    swc1	$f16,8($a1)
.L0d96fe34:
    # Line 4611
    lwc1	$f25,0($a3)
    # Line 4614
    lwc1	$f23,_lit_3f800000
    # Line 4611
    swc1	$f25,0($a1)
    # Line 4613
    mtc1	$zero,$f21
    # Line 4612
    lwc1	$f19,4($a3)
    # Line 4614
    swc1	$f23,12($a1)
    # Line 4613
    swc1	$f21,8($a1)
    # Line 4764
    jr	$ra
    # Line 4612
    swc1	$f19,4($a1)
.L0d96fe58:
    # Line 4604
    lw	$a4,0($a3)
    mtc1	$a4,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,0($a1)
    # Line 4605
    lw	$a2,4($a3)
    mtc1	$a2,$f27
    # Line 4607
    lwc1	$f31,_lit_3f800000
    # Line 4606
    mtc1	$zero,$f29
    # Line 4605
    cvt.s.w	$f27,$f27
    # Line 4607
    swc1	$f31,12($a1)
    # Line 4606
    swc1	$f29,8($a1)
    # Line 4764
    jr	$ra
    # Line 4605
    swc1	$f27,4($a1)
.L0d96fe8c:
    # Line 4598
    mtc1	$zero,$f0
    # Line 4597
    lwc1	$f31,0($a3)
    # Line 4600
    swc1	$f1,12($a1)
    # Line 4599
    swc1	$f0,8($a1)
    # Line 4598
    swc1	$f0,4($a1)
    # Line 4764
    jr	$ra
    # Line 4597
    swc1	$f31,0($a1)
.L0d96fea8:
    # Line 4586
    lw	$a5,0($a3)
    mtc1	$a5,$f2
    # Line 4589
    lwc1	$f4,_lit_3f800000
    # Line 4587
    mtc1	$zero,$f3
    # Line 4589
    swc1	$f4,12($a1)
    # Line 4586
    cvt.s.w	$f2,$f2
    # Line 4588
    swc1	$f3,8($a1)
    # Line 4587
    swc1	$f3,4($a1)
    # Line 4764
    jr	$ra
    # Line 4586
    swc1	$f2,0($a1)
.L0d96fed0:
    # Line 4633
    lwc1	$f7,0($a3)
    swc1	$f7,0($a1)
    # Line 4634
    lwc1	$f6,4($a3)
    swc1	$f6,4($a1)
    # Line 4635
    lwc1	$f5,8($a3)
    # Line 4764
    jr	$ra
    # Line 4635
    swc1	$f5,8($a1)
.L0d96feec:
    # Line 4618
    lw	$t0,0($a3)
    mtc1	$t0,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,0($a1)
    # Line 4619
    lw	$a7,4($a3)
    mtc1	$a7,$f9
    cvt.s.w	$f9,$f9
    swc1	$f9,4($a1)
    # Line 4620
    lw	$a6,8($a3)
    mtc1	$a6,$f8
    cvt.s.w	$f8,$f8
    # Line 4764
    jr	$ra
    # Line 4620
    swc1	$f8,8($a1)
.L0d96ff20:
    # Line 4666
    lh	$t3,2($a3)
    mtc1	$t3,$f13
    cvt.s.w	$f13,$f13
    swc1	$f13,0($a1)
    # Line 4667
    lh	$t2,6($a3)
    mtc1	$t2,$f12
    cvt.s.w	$f12,$f12
    swc1	$f12,4($a1)
    # Line 4668
    lh	$t1,10($a3)
    mtc1	$t1,$f11
    cvt.s.w	$f11,$f11
    # Line 4764
    jr	$ra
    # Line 4668
    swc1	$f11,8($a1)
.L0d96ff54:
    # Line 4660
    lb	$at,3($a3)
    mtc1	$at,$f16
    cvt.s.w	$f16,$f16
    swc1	$f16,0($a1)
    # Line 4661
    lb	$t9,7($a3)
    mtc1	$t9,$f15
    cvt.s.w	$f15,$f15
    swc1	$f15,4($a1)
    # Line 4662
    lb	$t8,11($a3)
    mtc1	$t8,$f14
    cvt.s.w	$f14,$f14
    # Line 4764
    jr	$ra
    # Line 4662
    swc1	$f14,8($a1)
.L0d96ff88:
    # Line 4714
    lwc1	$f21,0($a3)
    swc1	$f21,0($a1)
    # Line 4715
    lwc1	$f19,4($a3)
    swc1	$f19,4($a1)
    # Line 4716
    lwc1	$f18,8($a3)
    swc1	$f18,8($a1)
    # Line 4717
    lwc1	$f17,12($a3)
    # Line 4764
    jr	$ra
    # Line 4717
    swc1	$f17,12($a1)
.L0d96ffac:
    # Line 4707
    lw	$a4,0($a3)
    mtc1	$a4,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f29,_lit_40000000
    lwc1	$f25,_lit_3f800000
    madd.s	$f4,$f25,$f4,$f29
    lwc1	$f3,3568($a0)
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($a1)
    # Line 4708
    lw	$a2,4($a3)
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    madd.s	$f2,$f25,$f2,$f29
    lwc1	$f1,3568($a0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,4($a1)
    # Line 4709
    lw	$v1,8($a3)
    mtc1	$v1,$f0
    cvt.s.w	$f0,$f0
    madd.s	$f0,$f25,$f0,$f29
    lwc1	$f31,3568($a0)
    mul.s	$f31,$f31,$f0
    swc1	$f31,8($a1)
    # Line 4710
    lw	$v0,12($a3)
    mtc1	$v0,$f27
    cvt.s.w	$f27,$f27
    madd.s	$f25,$f25,$f27,$f29
    lwc1	$f23,3568($a0)
    mul.s	$f23,$f23,$f25
    # Line 4764
    jr	$ra
    # Line 4710
    swc1	$f23,12($a1)
.L0d970028:
    # Line 4700
    lw	$t0,0($a3)
    sll	$t0,$t0,0x1
    addiu	$t0,$t0,1
    mtc1	$t0,$f8
    cvt.s.w	$f8,$f8
    lwc1	$f9,3560($a0)
    mul.s	$f8,$f8,$f9
    swc1	$f8,0($a1)
    # Line 4701
    lw	$a7,4($a3)
    sll	$a7,$a7,0x1
    addiu	$a7,$a7,1
    mtc1	$a7,$f7
    cvt.s.w	$f7,$f7
    lwc1	$f8,3560($a0)
    mul.s	$f7,$f7,$f8
    swc1	$f7,4($a1)
    # Line 4702
    lw	$a6,8($a3)
    sll	$a6,$a6,0x1
    addiu	$a6,$a6,1
    mtc1	$a6,$f6
    cvt.s.w	$f6,$f6
    lwc1	$f7,3560($a0)
    mul.s	$f6,$f6,$f7
    swc1	$f6,8($a1)
    # Line 4703
    lw	$a5,12($a3)
    sll	$a5,$a5,0x1
    addiu	$a5,$a5,1
    mtc1	$a5,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f6,3560($a0)
    mul.s	$f5,$f5,$f6
    # Line 4764
    jr	$ra
    # Line 4703
    swc1	$f5,12($a1)
.L0d9700ac:
    # Line 4693
    lw	$t8,0($a3)
    sll	$t8,$t8,0x1
    addiu	$t8,$t8,1
    mtc1	$t8,$f12
    cvt.s.w	$f12,$f12
    lwc1	$f13,3552($a0)
    mul.s	$f12,$f12,$f13
    swc1	$f12,0($a1)
    # Line 4694
    lw	$t3,4($a3)
    sll	$t3,$t3,0x1
    addiu	$t3,$t3,1
    mtc1	$t3,$f11
    cvt.s.w	$f11,$f11
    lwc1	$f12,3552($a0)
    mul.s	$f11,$f11,$f12
    swc1	$f11,4($a1)
    # Line 4695
    lw	$t2,8($a3)
    sll	$t2,$t2,0x1
    addiu	$t2,$t2,1
    mtc1	$t2,$f10
    cvt.s.w	$f10,$f10
    lwc1	$f11,3552($a0)
    mul.s	$f10,$f10,$f11
    swc1	$f10,8($a1)
    # Line 4696
    lw	$t1,12($a3)
    sll	$t1,$t1,0x1
    addiu	$t1,$t1,1
    mtc1	$t1,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f10,3552($a0)
    mul.s	$f9,$f9,$f10
    # Line 4764
    jr	$ra
    # Line 4696
    swc1	$f9,12($a1)
.L0d970130:
    # Line 4686
    lw	$v1,0($a3)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f16
    cvt.s.l	$f16,$f16
    lwc1	$f17,3568($a0)
    mul.s	$f16,$f16,$f17
    swc1	$f16,0($a1)
    # Line 4687
    lw	$v0,4($a3)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f15
    cvt.s.l	$f15,$f15
    lwc1	$f16,3568($a0)
    mul.s	$f15,$f15,$f16
    swc1	$f15,4($a1)
    # Line 4688
    lw	$at,8($a3)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f14
    cvt.s.l	$f14,$f14
    lwc1	$f15,3568($a0)
    mul.s	$f14,$f14,$f15
    swc1	$f14,8($a1)
    # Line 4689
    lw	$t9,12($a3)
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f13
    cvt.s.l	$f13,$f13
    lwc1	$f14,3568($a0)
    mul.s	$f13,$f13,$f14
    # Line 4764
    jr	$ra
    # Line 4689
    swc1	$f13,12($a1)
.L0d9701b4:
    # Line 4679
    lw	$a6,0($a3)
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f21
    cvt.s.l	$f21,$f21
    lwc1	$f23,3560($a0)
    mul.s	$f21,$f21,$f23
    swc1	$f21,0($a1)
    # Line 4680
    lw	$a5,4($a3)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f19
    cvt.s.l	$f19,$f19
    lwc1	$f21,3560($a0)
    mul.s	$f19,$f19,$f21
    swc1	$f19,4($a1)
    # Line 4681
    lw	$a4,8($a3)
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f18
    cvt.s.l	$f18,$f18
    lwc1	$f19,3560($a0)
    mul.s	$f18,$f18,$f19
    swc1	$f18,8($a1)
    # Line 4682
    lw	$a2,12($a3)
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f17
    cvt.s.l	$f17,$f17
    lwc1	$f18,3560($a0)
    mul.s	$f17,$f17,$f18
    # Line 4764
    jr	$ra
    # Line 4682
    swc1	$f17,12($a1)
.L0d970238:
    # Line 4672
    lw	$t2,0($a3)
    sll	$t2,$t2,0x2
    addu	$t2,$a0,$t2
    lwc1	$f29,3824($t2)
    swc1	$f29,0($a1)
    # Line 4673
    lw	$t1,4($a3)
    sll	$t1,$t1,0x2
    addu	$t1,$a0,$t1
    lwc1	$f27,3824($t1)
    swc1	$f27,4($a1)
    # Line 4674
    lw	$t0,8($a3)
    sll	$t0,$t0,0x2
    addu	$t0,$a0,$t0
    lwc1	$f25,3824($t0)
    swc1	$f25,8($a1)
    # Line 4675
    lw	$a7,12($a3)
    sll	$a7,$a7,0x2
    addu	$a7,$a0,$a7
    lwc1	$f23,3824($a7)
    # Line 4764
    jr	$ra
    # Line 4675
    swc1	$f23,12($a1)
.L0d97028c:
    # Line 4757
    lwc1	$f1,0($a3)
    swc1	$f1,0($a1)
    # Line 4758
    lwc1	$f0,4($a3)
    swc1	$f0,4($a1)
    # Line 4759
    lwc1	$f31,8($a3)
    lwc1	$f4,_lit_3f800000
    b	.L0d96fd48
    swc1	$f31,8($a1)
.L0d9702ac:
    # Line 4751
    lw	$t9,0($a3)
    mtc1	$t9,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f5,_lit_40000000
    lwc1	$f4,_lit_3f800000
    madd.s	$f9,$f4,$f9,$f5
    lwc1	$f8,3568($a0)
    mul.s	$f8,$f8,$f9
    swc1	$f8,0($a1)
    # Line 4752
    lw	$t8,4($a3)
    mtc1	$t8,$f7
    cvt.s.w	$f7,$f7
    madd.s	$f7,$f4,$f7,$f5
    lwc1	$f6,3568($a0)
    mul.s	$f6,$f6,$f7
    swc1	$f6,4($a1)
    # Line 4753
    lw	$t3,8($a3)
    mtc1	$t3,$f3
    cvt.s.w	$f3,$f3
    madd.s	$f3,$f4,$f3,$f5
    lwc1	$f2,3568($a0)
    mul.s	$f2,$f2,$f3
    # Line 4754
    b	.L0d96fd48
    # Line 4753
    swc1	$f2,8($a1)
.L0d97030c:
    # Line 4745
    lw	$v1,0($a3)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f12
    cvt.s.w	$f12,$f12
    lwc1	$f13,3560($a0)
    mul.s	$f12,$f12,$f13
    swc1	$f12,0($a1)
    # Line 4746
    lw	$v0,4($a3)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f11
    cvt.s.w	$f11,$f11
    lwc1	$f12,3560($a0)
    mul.s	$f11,$f11,$f12
    swc1	$f11,4($a1)
    # Line 4747
    lw	$at,8($a3)
    sll	$at,$at,0x1
    addiu	$at,$at,1
    mtc1	$at,$f10
    cvt.s.w	$f10,$f10
    lwc1	$f11,3560($a0)
    # Line 4748
    lwc1	$f4,_lit_3f800000
    # Line 4747
    mul.s	$f10,$f10,$f11
    # Line 4748
    b	.L0d96fd48
    # Line 4747
    swc1	$f10,8($a1)
.L0d970374:
    # Line 4739
    lw	$a5,0($a3)
    sll	$a5,$a5,0x1
    addiu	$a5,$a5,1
    mtc1	$a5,$f15
    cvt.s.w	$f15,$f15
    lwc1	$f16,3552($a0)
    mul.s	$f15,$f15,$f16
    swc1	$f15,0($a1)
    # Line 4740
    lw	$a4,4($a3)
    sll	$a4,$a4,0x1
    addiu	$a4,$a4,1
    mtc1	$a4,$f14
    cvt.s.w	$f14,$f14
    lwc1	$f15,3552($a0)
    mul.s	$f14,$f14,$f15
    swc1	$f14,4($a1)
    # Line 4741
    lw	$a2,8($a3)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f14,3552($a0)
    # Line 4742
    lwc1	$f4,_lit_3f800000
    # Line 4741
    mul.s	$f13,$f13,$f14
    # Line 4742
    b	.L0d96fd48
    # Line 4741
    swc1	$f13,8($a1)
.L0d9703dc:
    # Line 4733
    lw	$t0,0($a3)
    dsll32	$t0,$t0,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f18
    cvt.s.l	$f18,$f18
    lwc1	$f19,3568($a0)
    mul.s	$f18,$f18,$f19
    swc1	$f18,0($a1)
    # Line 4734
    lw	$a7,4($a3)
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f17
    cvt.s.l	$f17,$f17
    lwc1	$f18,3568($a0)
    mul.s	$f17,$f17,$f18
    swc1	$f17,4($a1)
    # Line 4735
    lw	$a6,8($a3)
    dsll32	$a6,$a6,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f16
    cvt.s.l	$f16,$f16
    lwc1	$f17,3568($a0)
    # Line 4736
    lwc1	$f4,_lit_3f800000
    # Line 4735
    mul.s	$f16,$f16,$f17
    # Line 4736
    b	.L0d96fd48
    # Line 4735
    swc1	$f16,8($a1)
.L0d970444:
    # Line 4727
    lw	$t3,0($a3)
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f23
    cvt.s.l	$f23,$f23
    lwc1	$f25,3560($a0)
    mul.s	$f23,$f23,$f25
    swc1	$f23,0($a1)
    # Line 4728
    lw	$t2,4($a3)
    dsll32	$t2,$t2,0x0
    dsrl32	$t2,$t2,0x0
    dmtc1	$t2,$f21
    cvt.s.l	$f21,$f21
    lwc1	$f23,3560($a0)
    mul.s	$f21,$f21,$f23
    swc1	$f21,4($a1)
    # Line 4729
    lw	$t1,8($a3)
    dsll32	$t1,$t1,0x0
    dsrl32	$t1,$t1,0x0
    dmtc1	$t1,$f19
    cvt.s.l	$f19,$f19
    lwc1	$f21,3560($a0)
    # Line 4730
    lwc1	$f4,_lit_3f800000
    # Line 4729
    mul.s	$f19,$f19,$f21
    # Line 4730
    b	.L0d96fd48
    # Line 4729
    swc1	$f19,8($a1)
.L0d9704ac:
    # Line 4593
    lwc1	$f25,0($a3)
    # Line 4764
    jr	$ra
    # Line 4593
    swc1	$f25,0($a1)
.end ConvertFromShadow

# Function: getCurrent
# Declared: Line 4780 (Source lines: 4781-4921)
# Address: 0x0d9704c0 - 0x0d970bc8 (Size: 1800 bytes, Frame: 192)
.ent getCurrent
getCurrent:
    # Line 4781
    addiu	$sp,$sp,-2368
    sd	$s1,2344($sp)
    # Line 4783
    lw	$s1,6132($a0)
    la	$at,__glOdyim_SoftGetFloatv
    addiu	$a4,$a1,32
    addiu	$a3,$a1,20
    lw	$t9,496($s1)
    addiu	$a5,$a1,16
    lui	$a7,0x1
    # Line 4781
    sd	$s2,2352($sp)
    move	$s2,$a0
    sd	$s0,2336($sp)
    move	$s0,$a1
    # Line 4783
    bne	$t9,$at,.L0d970688
    addu	$a6,$a0,$a7
    lw	$v0,1792($a0)
    sd	$a5,2328($sp)
    sd	$a4,2320($sp)
    andi	$v0,$v0,0x80
    sd	$a3,2312($sp)
    beqz	$v0,.L0d9709c8
    sd	$ra,2360($sp)
    sd	$a6,2304($sp)
    # Line 4794
    # lw $t9, -32496($gp) # &__glOdyim_Enable
    ld	$v1,2304($sp)
    li	$a0,2903
    jal	__glOdyim_Enable
    # Line 4793
    sw	$zero,27004($v1)
    # Line 4794
    lw	$t9,496($s1)
.L0d970534:
    # Line 4800
    li	$a0,2816
.L0d970538:
    jalr	$t9
    move	$a1,$s0
    # Line 4801
    lw	$t9,496($s1)
    ld	$a1,2328($sp)
    jalr	$t9
    li	$a0,2817
    # Line 4802
    lw	$t9,496($s1)
    ld	$a1,2312($sp)
    jalr	$t9
    li	$a0,2818
    # Line 4803
    lw	$t9,496($s1)
    ld	$a1,2320($sp)
    jalr	$t9
    li	$a0,2819
    # Line 4804
    lw	$t9,480($s1)
    addiu	$a1,$s0,48
    jalr	$t9
    li	$a0,2883
    # Line 4805
    lw	$t9,524($s1)
    addiu	$a2,$s0,52
    li	$a1,4608
    jalr	$t9
    li	$a0,1028
    # Line 4806
    lw	$t9,524($s1)
    addiu	$a2,$s0,68
    li	$a1,4609
    jalr	$t9
    li	$a0,1028
    # Line 4807
    lw	$t9,524($s1)
    addiu	$a2,$s0,84
    li	$a1,4610
    jalr	$t9
    li	$a0,1028
    # Line 4808
    lw	$t9,524($s1)
    addiu	$a2,$s0,100
    li	$a1,5632
    jalr	$t9
    li	$a0,1028
    # Line 4809
    lw	$t9,524($s1)
    addiu	$a2,$s0,116
    li	$a1,5633
    jalr	$t9
    li	$a0,1028
    # Line 4810
    lw	$t9,524($s1)
    addiu	$a2,$s0,120
    li	$a1,5635
    jalr	$t9
    li	$a0,1028
    # Line 4811
    lw	$t9,524($s1)
    addiu	$a2,$s0,132
    li	$a1,4608
    jalr	$t9
    li	$a0,1029
    # Line 4812
    lw	$t9,524($s1)
    addiu	$a2,$s0,148
    li	$a1,4609
    jalr	$t9
    li	$a0,1029
    # Line 4813
    lw	$t9,524($s1)
    addiu	$a2,$s0,164
    li	$a1,4610
    jalr	$t9
    li	$a0,1029
    # Line 4814
    lw	$t9,524($s1)
    addiu	$a2,$s0,180
    li	$a1,5632
    jalr	$t9
    li	$a0,1029
    # Line 4815
    lw	$t9,524($s1)
    addiu	$a2,$s0,196
    li	$a1,5633
    jalr	$t9
    li	$a0,1029
    # Line 4816
    lw	$t9,524($s1)
    addiu	$a2,$s0,200
    li	$a1,5635
    jalr	$t9
    li	$a0,1029
.L0d970670:
    ld	$ra,2360($sp)
.L0d970674:
    ld	$s0,2336($sp)
    ld	$s1,2344($sp)
    ld	$s2,2352($sp)
    # Line 4921
    jr	$ra
    addiu	$sp,$sp,2368
.L0d970688:
    sd	$a6,2304($sp)
    # Line 4816
    ori	$a0,$a7,0x9d8e
    sd	$a5,2328($sp)
    addu	$a0,$a0,$s2
    lbu	$a0,0($a0)
    sd	$a4,2320($sp)
    sd	$a3,2312($sp)
    beqz	$a0,.L0d970a4c
    sd	$ra,2360($sp)
    # Line 4822
    # lw $t9, -16968($gp) # &bcopy
.L0d9706b0:
    ld	$a0,2304($sp)
    li	$a2,2304
    addiu	$a1,$sp,0
    jal	bcopy
    lw	$a0,27944($a0)
    # Line 4828
    lw	$a3,132($sp)
    la	$s1,sub_0d970000
    srl	$a3,$a3,0x1c
    move	$a1,$s0
    andi	$a3,$a3,0x3
    addiu	$s1,$s1,-800
    sll	$a2,$a3,0x2
    sll	$a3,$a3,0x4
    addu	$a2,$sp,$a2
    move	$t9,$s1
    addu	$a3,$sp,$a3
    lw	$a2,288($a2)
    move	$a0,$s2
    addiu	$a3,$a3,896
    bal __glOdysseyInitIgloo
    andi	$a2,$a2,0x3ff
    # Line 4833
    lw	$a4,132($sp)
    srl	$a4,$a4,0x1e
    sll	$a2,$a4,0x2
    sll	$a4,$a4,0x4
    addu	$a2,$sp,$a2
    move	$t9,$s1
    addu	$a3,$sp,$a4
    lw	$a2,272($a2)
    move	$a0,$s2
    addiu	$a3,$a3,832
    ld	$a1,2328($sp)
    bal __glOdysseyInitIgloo
    andi	$a2,$a2,0x3ff
    # Line 4838
    lw	$a4,132($sp)
    srl	$a4,$a4,0x1a
    andi	$a4,$a4,0x3
    sll	$a2,$a4,0x2
    sll	$a4,$a4,0x4
    addu	$a2,$sp,$a2
    move	$t9,$s1
    addu	$a3,$sp,$a4
    lw	$a2,304($a2)
    move	$a0,$s2
    addiu	$a3,$a3,960
    ld	$a1,2312($sp)
    bal __glOdysseyInitIgloo
    andi	$a2,$a2,0x3ff
    # Line 4843
    lw	$a4,132($sp)
    srl	$a4,$a4,0x16
    andi	$a4,$a4,0x3
    sll	$a2,$a4,0x2
    sll	$a4,$a4,0x4
    addu	$a2,$sp,$a2
    move	$t9,$s1
    addu	$a3,$sp,$a4
    lw	$a2,336($a2)
    move	$a0,$s2
    addiu	$a3,$a3,1088
    ld	$a1,2320($sp)
    bal __glOdysseyInitIgloo
    andi	$a2,$a2,0x3ff
    # Line 4848
    lw	$a7,132($sp)
    srl	$a7,$a7,0x12
    andi	$a7,$a7,0x3
    sll	$a7,$a7,0x2
    addu	$a6,$sp,$a7
    lw	$a6,368($a6)
    srl	$a6,$a6,0x18
    andi	$a6,$a6,0x1f
    xori	$a6,$a6,0xf
    sltiu	$a6,$a6,1
    sb	$a6,48($s0)
    # Line 4853
    lwc1	$f13,1424($s2)
    swc1	$f13,52($s0)
    lwc1	$f12,1428($s2)
    swc1	$f12,56($s0)
    lwc1	$f11,1432($s2)
    swc1	$f11,60($s0)
    lwc1	$f10,1436($s2)
    swc1	$f10,64($s0)
    # Line 4854
    lwc1	$f9,1440($s2)
    swc1	$f9,68($s0)
    lwc1	$f8,1444($s2)
    swc1	$f8,72($s0)
    lwc1	$f7,1448($s2)
    swc1	$f7,76($s0)
    lwc1	$f6,1452($s2)
    swc1	$f6,80($s0)
    # Line 4855
    lwc1	$f5,1456($s2)
    swc1	$f5,84($s0)
    lwc1	$f4,1460($s2)
    swc1	$f4,88($s0)
    lwc1	$f3,1464($s2)
    swc1	$f3,92($s0)
    lwc1	$f2,1468($s2)
    swc1	$f2,96($s0)
    # Line 4856
    lwc1	$f1,1472($s2)
    swc1	$f1,100($s0)
    lwc1	$f0,1476($s2)
    swc1	$f0,104($s0)
    lwc1	$f31,1480($s2)
    swc1	$f31,108($s0)
    lwc1	$f29,1484($s2)
    swc1	$f29,112($s0)
    # Line 4857
    lwc1	$f27,1488($s2)
    swc1	$f27,116($s0)
    # Line 4859
    lwc1	$f25,1492($s2)
    swc1	$f25,120($s0)
    # Line 4860
    lwc1	$f23,1500($s2)
    swc1	$f23,124($s0)
    # Line 4861
    lwc1	$f21,1496($s2)
    swc1	$f21,128($s0)
    # Line 4863
    lwc1	$f19,1504($s2)
    swc1	$f19,132($s0)
    lwc1	$f18,1508($s2)
    swc1	$f18,136($s0)
    lwc1	$f17,1512($s2)
    swc1	$f17,140($s0)
    lwc1	$f16,1516($s2)
    swc1	$f16,144($s0)
    # Line 4864
    lwc1	$f15,1520($s2)
    swc1	$f15,148($s0)
    lwc1	$f14,1524($s2)
    swc1	$f14,152($s0)
    lwc1	$f13,1528($s2)
    swc1	$f13,156($s0)
    lwc1	$f12,1532($s2)
    swc1	$f12,160($s0)
    # Line 4865
    lwc1	$f11,1536($s2)
    swc1	$f11,164($s0)
    lwc1	$f10,1540($s2)
    swc1	$f10,168($s0)
    lwc1	$f9,1544($s2)
    swc1	$f9,172($s0)
    lwc1	$f8,1548($s2)
    swc1	$f8,176($s0)
    # Line 4866
    lwc1	$f7,1552($s2)
    swc1	$f7,180($s0)
    lwc1	$f6,1556($s2)
    swc1	$f6,184($s0)
    lwc1	$f5,1560($s2)
    swc1	$f5,188($s0)
    lwc1	$f4,1564($s2)
    swc1	$f4,192($s0)
    # Line 4867
    lwc1	$f3,1568($s2)
    swc1	$f3,196($s0)
    # Line 4869
    lwc1	$f2,1572($s2)
    swc1	$f2,200($s0)
    # Line 4870
    lwc1	$f1,1580($s2)
    swc1	$f1,204($s0)
    # Line 4871
    lwc1	$f0,1576($s2)
    swc1	$f0,208($s0)
    lbu	$a5,3220($s2)
    beqz	$a5,.L0d970674
    ld	$ra,2360($sp)
    lw	$t0,1792($s2)
    andi	$t0,$t0,0x80
    beqz	$t0,.L0d970674
    ld	$ra,2360($sp)
    # Line 4875
    lw	$a0,1384($s2)
    li	$t1,1028
    beq	$a0,$t1,.L0d9709e8
    # Line 4900
    li	$at,4609
    # Line 4875
    li	$t2,1032
    beq	$a0,$t2,.L0d9709e8
.L0d970948:
    # Line 4897
    li	$t3,1029
.L0d97094c:
    beq	$a0,$t3,.L0d97095c
    li	$t8,1032
    bne	$a0,$t8,.L0d970674
    ld	$ra,2360($sp)
.L0d97095c:
    # Line 4900
    lw	$a1,1388($s2)
    li	$t9,4608
    li	$v0,4610
    beq	$a1,$t9,.L0d970b5c
    li	$v1,5632
    li	$ra,5634
    beq	$a1,$ra,.L0d970a9c
    nop
    beq	$a1,$at,.L0d970a64
    nop
    beq	$a1,$v0,.L0d970b94
    # Line 4921
    ld	$s1,2344($sp)
    # Line 4900
    bne	$a1,$v1,.L0d970670
    # Line 4921
    ld	$s1,2344($sp)
    ld	$s2,2352($sp)
    # Line 4914
    lwc1	$f14,0($s0)
    lwc1	$f15,4($s0)
    lwc1	$f17,12($s0)
    lwc1	$f16,8($s0)
    swc1	$f17,192($s0)
    swc1	$f16,188($s0)
    ld	$ra,2360($sp)
    swc1	$f15,184($s0)
    swc1	$f14,180($s0)
    # Line 4921
    ld	$s0,2336($sp)
    jr	$ra
    addiu	$sp,$sp,2368
.L0d9709c8:
    # Line 4794
    lw	$a0,27004($a6)
    beqz	$a0,.L0d970538
    # Line 4800
    li	$a0,2816
    # Line 4797
    # lw $t9, -32368($gp) # &__glOdyim_Disable
    jal	__glOdyim_Disable
    li	$a0,2903
    b	.L0d970534
    lw	$t9,496($s1)
.L0d9709e8:
    # Line 4878
    lw	$a1,1388($s2)
    li	$a5,4610
    li	$a2,4608
    li	$a4,4609
    li	$a3,5634
    beq	$a1,$a2,.L0d970ac0
    li	$a6,5632
    beq	$a1,$a3,.L0d970b10
    nop
    beq	$a1,$a4,.L0d970ae8
    nop
    beq	$a1,$a5,.L0d970b34
    nop
    bne	$a1,$a6,.L0d97094c
    # Line 4897
    li	$t3,1029
    # Line 4892
    lwc1	$f23,0($s0)
    lwc1	$f21,4($s0)
    swc1	$f23,100($s0)
    swc1	$f21,104($s0)
    lwc1	$f19,8($s0)
    lwc1	$f18,12($s0)
    swc1	$f19,108($s0)
    swc1	$f18,112($s0)
    # Line 4893
    b	.L0d970948
    lw	$a0,1384($s2)
.L0d970a4c:
    # Line 4820
    # lw $t9, -30512($gp) # &__glOdysseyGetHardwareShadow
    move	$a0,$s2
    jal	__glOdysseyGetHardwareShadow
    move	$a1,$zero
    b	.L0d9706b0
    # Line 4822
    nop	# was lw $t9, -16968($gp) # &bcopy
.L0d970a64:
    # Line 4905
    lwc1	$f7,12($s0)
    lwc1	$f6,8($s0)
    lwc1	$f4,4($s0)
    lwc1	$f5,0($s0)
.L0d970a74:
    # Line 4908
    swc1	$f7,160($s0)
    swc1	$f6,156($s0)
    swc1	$f4,152($s0)
    swc1	$f5,148($s0)
    ld	$ra,2360($sp)
    # Line 4921
    ld	$s0,2336($sp)
    ld	$s1,2344($sp)
    ld	$s2,2352($sp)
    jr	$ra
    addiu	$sp,$sp,2368
.L0d970a9c:
    # Line 4905
    lwc1	$f5,0($s0)
    lwc1	$f4,4($s0)
    lwc1	$f7,12($s0)
    lwc1	$f6,8($s0)
    swc1	$f7,144($s0)
    swc1	$f6,140($s0)
    swc1	$f4,136($s0)
    b	.L0d970a74
    swc1	$f5,132($s0)
.L0d970ac0:
    # Line 4880
    lwc1	$f31,0($s0)
    lwc1	$f29,4($s0)
    lwc1	$f25,12($s0)
    lwc1	$f27,8($s0)
    swc1	$f25,64($s0)
    swc1	$f27,60($s0)
    swc1	$f29,56($s0)
    swc1	$f31,52($s0)
    b	.L0d970948
    lw	$a0,1384($s2)
.L0d970ae8:
    # Line 4883
    lwc1	$f6,12($s0)
    lwc1	$f4,8($s0)
    lwc1	$f7,4($s0)
    lwc1	$f5,0($s0)
.L0d970af8:
    # Line 4886
    swc1	$f6,80($s0)
    swc1	$f4,76($s0)
    swc1	$f7,72($s0)
    swc1	$f5,68($s0)
    # Line 4887
    b	.L0d970948
    lw	$a0,1384($s2)
.L0d970b10:
    # Line 4883
    lwc1	$f5,0($s0)
    lwc1	$f7,4($s0)
    lwc1	$f6,12($s0)
    lwc1	$f4,8($s0)
    swc1	$f6,64($s0)
    swc1	$f4,60($s0)
    swc1	$f7,56($s0)
    b	.L0d970af8
    swc1	$f5,52($s0)
.L0d970b34:
    # Line 4889
    lwc1	$f3,0($s0)
    lwc1	$f2,4($s0)
    swc1	$f3,84($s0)
    swc1	$f2,88($s0)
    lwc1	$f1,8($s0)
    lwc1	$f0,12($s0)
    swc1	$f1,92($s0)
    swc1	$f0,96($s0)
    # Line 4890
    b	.L0d970948
    lw	$a0,1384($s2)
.L0d970b5c:
    # Line 4921
    ld	$s1,2344($sp)
    ld	$s2,2352($sp)
    # Line 4902
    lwc1	$f4,0($s0)
    lwc1	$f5,4($s0)
    lwc1	$f7,12($s0)
    lwc1	$f6,8($s0)
    swc1	$f7,144($s0)
    swc1	$f6,140($s0)
    ld	$ra,2360($sp)
    swc1	$f5,136($s0)
    swc1	$f4,132($s0)
    # Line 4921
    ld	$s0,2336($sp)
    jr	$ra
    addiu	$sp,$sp,2368
.L0d970b94:
    ld	$s2,2352($sp)
    # Line 4911
    lwc1	$f8,0($s0)
    lwc1	$f9,4($s0)
    lwc1	$f11,12($s0)
    lwc1	$f10,8($s0)
    swc1	$f11,176($s0)
    swc1	$f10,172($s0)
    ld	$ra,2360($sp)
    swc1	$f9,168($s0)
    swc1	$f8,164($s0)
    # Line 4921
    ld	$s0,2336($sp)
    jr	$ra
    addiu	$sp,$sp,2368
.end getCurrent

# Function: setCurrent
# Declared: Line 4924 (Source lines: 4925-4965)
# Address: 0x0d970bd0 - 0x0d970d24 (Size: 340 bytes, Frame: 32)
.ent setCurrent
setCurrent:
    # Line 4925
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    # Line 4926
    lw	$s1,6132($a0)
    # Line 4947
    lw	$t9,128($s1)
    addiu	$a2,$a1,52
    # Line 4925
    sd	$s0,16($sp)
    move	$s0,$a1
    # Line 4947
    li	$a1,4608
    sd	$ra,0($sp)
    jalr	$t9
    li	$a0,1028
    # Line 4948
    lw	$t9,128($s1)
    addiu	$a2,$s0,68
    li	$a1,4609
    jalr	$t9
    li	$a0,1028
    # Line 4949
    lw	$t9,128($s1)
    addiu	$a2,$s0,84
    li	$a1,4610
    jalr	$t9
    li	$a0,1028
    # Line 4950
    lw	$t9,128($s1)
    addiu	$a2,$s0,100
    li	$a1,5632
    jalr	$t9
    li	$a0,1028
    # Line 4951
    lw	$t9,128($s1)
    addiu	$a2,$s0,116
    li	$a1,5633
    jalr	$t9
    li	$a0,1028
    # Line 4952
    lw	$t9,128($s1)
    addiu	$a2,$s0,120
    li	$a1,5635
    jalr	$t9
    li	$a0,1028
    # Line 4953
    lw	$t9,128($s1)
    addiu	$a2,$s0,132
    li	$a1,4608
    jalr	$t9
    li	$a0,1029
    # Line 4954
    lw	$t9,128($s1)
    addiu	$a2,$s0,148
    li	$a1,4609
    jalr	$t9
    li	$a0,1029
    # Line 4955
    lw	$t9,128($s1)
    addiu	$a2,$s0,164
    li	$a1,4610
    jalr	$t9
    li	$a0,1029
    # Line 4956
    lw	$t9,128($s1)
    addiu	$a2,$s0,180
    li	$a1,5632
    jalr	$t9
    li	$a0,1029
    # Line 4957
    lw	$t9,128($s1)
    addiu	$a2,$s0,196
    li	$a1,5633
    jalr	$t9
    li	$a0,1029
    # Line 4958
    lw	$t9,128($s1)
    addiu	$a2,$s0,200
    li	$a1,5635
    jalr	$t9
    li	$a0,1029
    # Line 4959
    lw	$t9,1500($s1)
    jalr	$t9
    move	$a0,$s0
    # Line 4960
    lw	$t9,1556($s1)
    jalr	$t9
    addiu	$a0,$s0,16
    # Line 4961
    lw	$t9,1604($s1)
    jalr	$t9
    addiu	$a0,$s0,20
    # Line 4962
    lw	$t9,1732($s1)
    jalr	$t9
    addiu	$a0,$s0,32
    # Line 4963
    lw	$t9,40($s1)
    ld	$ra,0($sp)
    addiu	$a0,$s0,48
    # Line 4965
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$t9
    addiu	$sp,$sp,32
.end setCurrent

# Function: __glOdysseyValidateDispatchTable
# Declared: Line 4968 (Source lines: 4969-5267)
# Address: 0x0d970d30 - 0x0d971464 (Size: 1844 bytes, Frame: 160)
.globl __glOdysseyValidateDispatchTable
.ent __glOdysseyValidateDispatchTable
__glOdysseyValidateDispatchTable:
    # Line 4969
    addiu	$sp,$sp,-288
    lw	$at,6132($a0)
    sd	$s2,272($sp)
    lw	$at,0($at)
    sd	$s0,248($sp)
    lui	$v0,0x18
    move	$s0,$a0
    sd	$s1,264($sp)
    addiu	$v0,$v0,30816
    sd	$gp,240($sp)
    beqz	$at,.L0d970e80
    addu	$gp,$t9,$v0
    # Line 4984
    lw	$v0,3204($a0)
    li	$v1,7168
    lui	$a0,0x1
    beq	$v0,$v1,.L0d97113c
    addu	$s2,$s0,$a0
    # Line 5031
    lw	$a1,26972($s2)
    # Line 5028
    li	$a2,1
    # Line 5031
    beq	$a1,$a2,.L0d971074
    ori	$at,$a0,0x9dc0
    li	$s1,1
.L0d970d88:
    lw	$a3,27008($s2)
    # Line 5049
    la	$a4,sub_0daf0000
.L0d970d90:
    sd	$ra,256($sp)
    addiu	$a4,$a4,20664
    addiu	$a4,$a4,15104
    # Line 5053
    sw	$a4,12($sp)
    # Line 5052
    sw	$a4,8($sp)
    # Line 5050
    sw	$a4,4($sp)
    # Line 5049
    sw	$a4,0($sp)
.L0d970dac:
    # Line 5076
    lw	$t1,12($sp)
.L0d970db0:
    lw	$a6,8($sp)
    # Line 5084
    lw	$t0,4($sp)
    lw	$a5,0($sp)
    # Line 5072
    lbu	$a7,3220($s0)
    # Line 5091
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 5084
    movz	$a5,$t0,$a7
    # Line 5076
    movz	$a6,$t1,$a7
    # Line 5091
    addiu	$t9,$t9,1216
    addiu	$a1,$sp,16
    sd	$ra,256($sp)
    movn	$a5,$a6,$a3
    move	$a0,$s0
    bal __glOdysseyInitIgloo
    sd	$a5,232($sp)
    # Line 5097
    # lw $t9, -18708($gp) # &__glMipsCopyDispatch
    ld	$a0,232($sp)
    jal	__glMipsCopyDispatch
    lw	$a1,6132($s0)
    # Line 5102
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,3024
    move	$a0,$s0
    bal __glOdysseyInitIgloo
    addiu	$a1,$sp,16
    # Line 5112
    li	$ra,-1
    sw	$ra,27140($s2)
    # Line 5118
    beqz	$s1,.L0d970e98
    # Line 5107
    sw	$s1,26972($s2)
    # Line 5118
    li	$at,3
    beq	$s1,$at,.L0d970f14
    # Line 5197
    la	$t1,__glGenericPickVertexProcs
    # Line 5118
    li	$v0,1
    beq	$s1,$v0,.L0d97108c
    li	$v1,2
    beq	$s1,$v1,.L0d970fb4
    li	$a0,4
    beq	$s1,$a0,.L0d970fb4
.L0d970e40:
    # Line 5260
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,30240
    ld	$s2,272($sp)
    ld	$s1,264($sp)
    jal	sub_0d960000
    move	$a0,$s0
    # Line 5265
    li	$v0,2
    sw	$v0,4120($zero)
    lw	$at,11812($s0)
    ld	$ra,256($sp)
    # Line 5267
    ld	$gp,240($sp)
    # Line 5265
    ori	$at,$at,0x1
    sw	$at,11812($s0)
    # Line 5267
    ld	$s0,248($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d970e80:
    ld	$s1,264($sp)
.L0d970e84:
    ld	$s2,272($sp)
    ld	$gp,240($sp)
    ld	$s0,248($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d970e98:
    # Line 5121
    lui	$a0,0x2
    addu	$a0,$s0,$a0
    lbu	$t1,-25152($a0)
    lw	$t0,6132($s0)
    # Line 5138
    lw	$a2,-25156($a0)
    # Line 5121
    beqz	$t1,.L0d970ee8
    addiu	$t0,$t0,1320
    lbu	$a1,-25164($a0)
    beqz	$a1,.L0d97127c
    nop
    # Line 5127
    lw	$a3,-25160($a0)
    li	$a4,2
    xori	$a3,$a3,0x1102
    li	$a2,3
    sltiu	$a3,$a3,1
    movz	$a2,$a4,$a3
.L0d970ed8:
    # Line 5131
    li	$a4,2
    beq	$a2,$a4,.L0d971284
    # Line 5127
    sw	$a2,-25156($a0)
.L0d970ee4:
    # Line 5138
    sb	$zero,-25152($a0)
.L0d970ee8:
    # Line 5141
    beqz	$a2,.L0d970f14
    # Line 5197
    la	$t1,__glGenericPickVertexProcs
    # Line 5141
    li	$a5,2
    beq	$a2,$a5,.L0d971204
    addiu	$a3,$t0,12
    li	$a6,1
    beq	$a2,$a6,.L0d9713a8
    # Line 5155
    la	$a5,__glOdyim_Vertex4sv_smallw
    # Line 5141
    li	$a7,3
    beq	$a2,$a7,.L0d9712f8
.L0d970f10:
    # Line 5197
    la	$t1,__glGenericPickVertexProcs
.L0d970f14:
    sw	$t1,11904($s0)
    # Line 5193
    la	$t0,__glGenericPickTriangleProcs
    sw	$t0,11872($s0)
    # Line 5192
    la	$a7,__glOdysseyPickTextureProcs
    sw	$a7,11852($s0)
    # Line 5191
    la	$a6,__glGenericPickPointProcs
    sw	$a6,11864($s0)
    # Line 5190
    la	$a5,__glGenericPickParameterClipProcs
    sw	$a5,11888($s0)
    # Line 5189
    la	$a4,__glGenericPickLineProcs
    sw	$a4,11868($s0)
    # Line 5188
    la	$a3,__glGenericPickColorMaterialProcs
    sw	$a3,11848($s0)
    # Line 5187
    la	$a2,__glGenericPickClipProcs
    sw	$a2,11884($s0)
    # Line 5186
    la	$a1,__glOdysseyPickAllProcs
    sw	$a1,11924($s0)
    # Line 5184
    la	$a0,__glEndPrim
    sw	$a0,12124($s0)
    # Line 5183
    la	$v1,__glBeginPolygon
    sw	$v1,12120($s0)
    # Line 5182
    la	$v0,__glBeginQStrip
    sw	$v0,12116($s0)
    # Line 5181
    la	$at,__glBeginQuads
    sw	$at,12112($s0)
    # Line 5180
    la	$ra,__glBeginTFan
    sw	$ra,12108($s0)
    # Line 5179
    # lw $t9, -25468($gp) # &__glBeginTStrip
    sw	$t9,12104($s0)
    # Line 5178
    la	$t8,__glBeginTriangles
    sw	$t8,12100($s0)
    # Line 5177
    la	$t3,__glBeginLLoop
    sw	$t3,12092($s0)
    # Line 5176
    la	$t2,__glBeginLStrip
    sw	$t2,12096($s0)
    # Line 5175
    la	$t1,__glBeginLines
    sw	$t1,12088($s0)
    # Line 5174
    la	$t0,__glBeginPoints
    b	.L0d970e40
    sw	$t0,12084($s0)
.L0d970fb4:
    # Line 5228
    la	$t8,__glOdysseySoftClipBeginPoints
    sw	$t8,12084($s0)
    # Line 5229
    la	$t3,__glOdysseySoftClipBeginLines
    sw	$t3,12088($s0)
    # Line 5231
    lui	$t2,0x2
    # Line 5230
    la	$t1,__glOdysseySoftClipBeginLStrip
    # Line 5231
    addu	$t2,$s0,$t2
    # Line 5230
    sw	$t1,12096($s0)
    # Line 5231
    lw	$t0,-24928($t2)
    sw	$t0,12092($s0)
    # Line 5232
    la	$a7,__glOdysseySoftClipBeginTriangles
    sw	$a7,12100($s0)
    # Line 5233
    la	$a6,__glOdysseySoftClipBeginTStrip
    sw	$a6,12104($s0)
    # Line 5234
    la	$a5,__glOdysseySoftClipBeginTFan
    sw	$a5,12108($s0)
    # Line 5235
    la	$a4,__glOdysseySoftClipBeginQuads
    sw	$a4,12112($s0)
    # Line 5236
    la	$a3,__glOdysseySoftClipBeginQStrip
    sw	$a3,12116($s0)
    # Line 5237
    la	$a2,__glOdysseySoftClipBeginPolygon
    sw	$a2,12120($s0)
    # Line 5238
    la	$a1,__glEndPrim
    sw	$a1,12124($s0)
    # Line 5239
    la	$a0,__glOdysseySoftClipPickAllProcs
    sw	$a0,11924($s0)
    # Line 5240
    la	$v1,__glOdysseyPickColorMaterialProcs
    sw	$v1,11848($s0)
    # Line 5241
    la	$v0,__glOdysseySoftClipPickLineProcs
    sw	$v0,11868($s0)
    # Line 5242
    la	$at,__glOdysseySoftClipPickParameterClipProcs
    sw	$at,11888($s0)
    # Line 5243
    la	$ra,__glOdysseySoftClipPickPointProcs
    sw	$ra,11864($s0)
    # Line 5244
    # lw $t9, -31008($gp) # &__glOdysseySoftClipPickTextureProcs
    sw	$t9,11852($s0)
    # Line 5245
    la	$t8,__glOdysseySoftClipPickVertexProcs
    sw	$t8,11904($s0)
    # Line 5246
    la	$t3,__glOdysseySoftClipPickClipProcs
    sw	$t3,11884($s0)
    # Line 5247
    lbu	$t2,-25118($t2)
    beqz	$t2,.L0d971134
    # Line 5251
    la	$a0,__glOdysseySoftClipPickTriangleProcs
    # Line 5247
    lbu	$t9,3220($s0)
    beqz	$t9,.L0d971130
    # Line 5248
    la	$ra,__glOdysseySoftClipPickTriangleProcsFast
    b	.L0d970e40
    sw	$ra,11872($s0)
.L0d971074:
    # Line 5031
    addu	$at,$at,$s0
    lbu	$at,0($at)
    bnez	$at,.L0d970d88
    li	$s1,1
    b	.L0d970e84
    ld	$s1,264($sp)
.L0d97108c:
    # Line 5221
    la	$v1,__glGenericPickVertexProcs
    sw	$v1,11904($s0)
    # Line 5220
    la	$v0,__glGenericPickTriangleProcs
    sw	$v0,11872($s0)
    # Line 5219
    la	$at,__glOdysseyPickTextureProcs
    sw	$at,11852($s0)
    # Line 5218
    la	$ra,__glGenericPickPointProcs
    sw	$ra,11864($s0)
    # Line 5217
    # lw $t9, -26884($gp) # &__glGenericPickParameterClipProcs
    sw	$t9,11888($s0)
    # Line 5216
    la	$t8,__glGenericPickLineProcs
    sw	$t8,11868($s0)
    # Line 5215
    la	$t3,__glGenericPickColorMaterialProcs
    sw	$t3,11848($s0)
    # Line 5214
    la	$t2,__glGenericPickClipProcs
    sw	$t2,11884($s0)
    # Line 5213
    la	$t1,__glOdysseyPickAllProcs
    sw	$t1,11924($s0)
    # Line 5212
    la	$t0,__glEndPrim
    sw	$t0,12124($s0)
    # Line 5211
    la	$a7,__glBeginPolygon
    sw	$a7,12120($s0)
    # Line 5210
    la	$a6,__glBeginQStrip
    sw	$a6,12116($s0)
    # Line 5209
    la	$a5,__glBeginQuads
    sw	$a5,12112($s0)
    # Line 5208
    la	$a4,__glBeginTFan
    sw	$a4,12108($s0)
    # Line 5207
    la	$a3,__glBeginTStrip
    sw	$a3,12104($s0)
    # Line 5206
    la	$a2,__glBeginTriangles
    sw	$a2,12100($s0)
    # Line 5205
    la	$a1,__glBeginLLoop
    sw	$a1,12092($s0)
    # Line 5204
    la	$a0,__glBeginLStrip
    sw	$a0,12096($s0)
    # Line 5203
    la	$v1,__glBeginLines
    sw	$v1,12088($s0)
    # Line 5202
    la	$v0,__glBeginPoints
    # Line 5222
    b	.L0d970e40
    # Line 5202
    sw	$v0,12084($s0)
.L0d971130:
    # Line 5251
    la	$a0,__glOdysseySoftClipPickTriangleProcs
.L0d971134:
    b	.L0d970e40
    sw	$a0,11872($s0)
.L0d97113c:
    # Line 5003
    # lw $t9, -29716($gp) # &__glOdysseyGetNumSWClipPlanes
    sd	$ra,256($sp)
    jal	__glOdysseyGetNumSWClipPlanes
    move	$a0,$s0
    blez	$v0,.L0d971178
    ld	$ra,256($sp)
    # Line 5004
    # lw $t9, -29712($gp) # &__glOdysseyValidateSoftClipPlanes
    jal	__glOdysseyValidateSoftClipPlanes
    move	$a0,$s0
    # Line 5007
    li	$a1,2
    lw	$a3,27008($s2)
    ld	$ra,256($sp)
    li	$s1,4
    b	.L0d971184
    movz	$s1,$a1,$a3
.L0d971178:
    # Line 5016
    lw	$a3,27008($s2)
    li	$s1,3
    movz	$s1,$zero,$a3
.L0d971184:
    # Line 5034
    li	$t0,4
    # Line 5031
    lw	$a2,26972($s2)
    # Line 5034
    li	$a7,2
    # Line 5031
    lui	$a4,0x1
    # Line 5034
    li	$a6,1
    # Line 5031
    ori	$a4,$a4,0x9dc0
    bne	$a2,$s1,.L0d9711b0
    addu	$a4,$a4,$s0
    lbu	$a4,0($a4)
    beqz	$a4,.L0d970e80
    nop
.L0d9711b0:
    # Line 5034
    beqz	$s1,.L0d971380
    li	$a5,3
    beq	$s1,$a5,.L0d971384
    # Line 5040
    la	$at,sub_0daf0000
    # Line 5034
    beq	$s1,$a6,.L0d970d90
    # Line 5049
    la	$a4,sub_0daf0000
    # Line 5034
    beq	$s1,$a7,.L0d9711dc
    # Line 5061
    la	$t1,sub_0daf0000
    # Line 5034
    bne	$s1,$t0,.L0d970db0
    # Line 5076
    lw	$t1,12($sp)
    # Line 5061
    la	$t1,sub_0daf0000
.L0d9711dc:
    addiu	$t1,$t1,20664
    # Line 5065
    addiu	$t8,$t1,13216
    sw	$t8,12($sp)
    # Line 5064
    addiu	$t3,$t1,11328
    sw	$t3,8($sp)
    # Line 5062
    addiu	$t2,$t1,5664
    sw	$t2,4($sp)
    # Line 5061
    addiu	$t1,$t1,3776
    b	.L0d970dac
    sw	$t1,0($sp)
.L0d971204:
    li	$a7,0x10
    addiu	$t1,$t0,4
    # Line 5145
    la	$t3,__glOdyim_vertexSmallWDispatchTable
    li	$a0,24
    move	$a2,$zero
    addiu	$t2,$t0,8
    addiu	$a6,$t3,12
    addiu	$a5,$t3,8
    addiu	$a4,$t3,4
.L0d971228:
    addu	$at,$a2,$t3
    addu	$v0,$a2,$t0
    lw	$at,0($at)
    addu	$ra,$a2,$a4
    sw	$at,0($v0)
    addu	$at,$a2,$t1
    lw	$ra,0($ra)
    addu	$t9,$a2,$a5
    sw	$ra,0($at)
    addu	$ra,$a2,$t2
    lw	$t9,0($t9)
    addiu	$a0,$a0,-4
    addu	$t8,$a2,$a6
    sw	$t9,0($ra)
    addu	$t9,$a2,$a3
    lw	$t8,0($t8)
    addu	$a2,$a2,$a7
    bgtz	$a0,.L0d971228
    sw	$t8,0($t9)
    b	.L0d970f14
    # Line 5197
    la	$t1,__glGenericPickVertexProcs
.L0d97127c:
    # Line 5127
    b	.L0d970ed8
    move	$a2,$zero
.L0d971284:
    # Line 5131
    lw	$a3,29716($s0)
    lwc1	$f0,188($a3)
    dmtc1	$zero,$f4
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    bc1f	.L0d970ee4
    nop
    lwc1	$f1,204($a3)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f4
    bc1f .L0d970ee4
    nop
    lwc1	$f2,220($a3)
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f4
    bc1f .L0d970ee4
    nop
    lwc1	$f3,-25200($a0)
    lwc1	$f4,236($a3)
    abs.s	$f3,$f3
    abs.s	$f4,$f4
    cvt.d.s	$f3,$f3
    cvt.d.s	$f4,$f4
    c.lt.d $f3,$f4
    bc1f .L0d970ee4
    # Line 5136
    li	$v0,1
    sw	$v0,-25156($a0)
    b	.L0d970ee4
    li	$a2,1
.L0d9712f8:
    # Line 5158
    lw	$v1,31600($s0)
    dsll32	$v1,$v1,0x9
    bgez	$v1,.L0d9713e8
    addiu	$t2,$t0,12
    li	$a6,0x10
    addiu	$a4,$t0,4
    # Line 5159
    la	$t3,__glOdyim_vertexMagDispatchTable
    li	$a0,24
    move	$a2,$zero
    addiu	$a7,$t0,8
    addiu	$a5,$t3,12
    addiu	$t1,$t3,8
    addiu	$a3,$t3,4
.L0d97132c:
    addu	$ra,$a2,$t3
    addu	$at,$a2,$t0
    lw	$ra,0($ra)
    addu	$t9,$a2,$a3
    sw	$ra,0($at)
    addu	$ra,$a2,$a4
    lw	$t9,0($t9)
    addu	$t8,$a2,$t1
    sw	$t9,0($ra)
    addu	$t9,$a2,$a7
    lw	$t8,0($t8)
    addiu	$a0,$a0,-4
    addu	$a1,$a2,$a5
    sw	$t8,0($t9)
    addu	$t8,$a2,$t2
    lw	$a1,0($a1)
    addu	$a2,$a2,$a6
    bgtz	$a0,.L0d97132c
    sw	$a1,0($t8)
    b	.L0d970f14
    # Line 5197
    la	$t1,__glGenericPickVertexProcs
.L0d971380:
    # Line 5040
    la	$at,sub_0daf0000
.L0d971384:
    addiu	$at,$at,20664
    sw	$at,0($sp)
    # Line 5044
    addiu	$v1,$at,9440
    sw	$v1,12($sp)
    # Line 5043
    addiu	$v0,$at,7552
    sw	$v0,8($sp)
    # Line 5041
    addiu	$at,$at,1888
    # Line 5046
    b	.L0d970dac
    # Line 5041
    sw	$at,4($sp)
.L0d9713a8:
    # Line 5155
    sw	$a5,92($t0)
    # Line 5154
    la	$a4,__glOdyim_Vertex4s_smallw
    sw	$a4,88($t0)
    # Line 5153
    la	$a3,__glOdyim_Vertex4iv_smallw
    sw	$a3,84($t0)
    # Line 5152
    la	$a2,__glOdyim_Vertex4i_smallw
    sw	$a2,80($t0)
    # Line 5151
    la	$a1,__glOdyim_Vertex4fv_smallw
    sw	$a1,76($t0)
    # Line 5150
    la	$a0,__glOdyim_Vertex4f_smallw
    sw	$a0,72($t0)
    # Line 5149
    la	$v1,__glOdyim_Vertex4dv_smallw
    sw	$v1,68($t0)
    # Line 5148
    la	$v0,__glOdyim_Vertex4d_smallw
    # Line 5156
    b	.L0d970f10
    # Line 5148
    sw	$v0,64($t0)
.L0d9713e8:
    addiu	$t1,$t0,12
    li	$t2,0x10
    addiu	$a6,$t0,4
    # Line 5161
    la	$a4,__glOdyim_vertexMagLine0DispatchTable
    li	$a0,24
    move	$a2,$zero
    addiu	$t3,$t0,8
    addiu	$a7,$a4,12
    addiu	$a3,$a4,8
    addiu	$a5,$a4,4
.L0d971410:
    addu	$at,$a2,$a4
    addu	$v0,$a2,$t0
    lw	$at,0($at)
    addu	$ra,$a2,$a5
    sw	$at,0($v0)
    addu	$at,$a2,$a6
    lw	$ra,0($ra)
    addu	$t9,$a2,$a3
    sw	$ra,0($at)
    addu	$ra,$a2,$t3
    lw	$t9,0($t9)
    addiu	$a0,$a0,-4
    addu	$t8,$a2,$a7
    sw	$t9,0($ra)
    addu	$t9,$a2,$t1
    lw	$t8,0($t8)
    addu	$a2,$a2,$t2
    bgtz	$a0,.L0d971410
    sw	$t8,0($t9)
    b	.L0d970f14
    # Line 5197
    la	$t1,__glGenericPickVertexProcs
.end __glOdysseyValidateDispatchTable

.late_rodata
jtbl_0dae8b30:
    .word .L0d96fd58
    .word .L0d9704ac
    .word .L0d96fd08
    .word .L0d970444
    .word .L0d9703dc
    .word .L0d970374
    .word .L0d97030c
    .word .L0d9702ac
    .word .L0d97028c
    .word .L0d970238
    .word .L0d9701b4
    .word .L0d970130
    .word .L0d9700ac
    .word .L0d970028
    .word .L0d96ffac
    .word .L0d96ff88
    .word .L0d96ff54
    .word .L0d96ff20
    .word .L0d96feec
    .word .L0d96fed0
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fea8
    .word .L0d96fe8c
    .word .L0d96fe58
    .word .L0d96fe34
    .word .L0d96fdf8
    .word .L0d96fdd4
    .word .L0d96fd90
    .word .L0d96fd6c
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fed0
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fd50
    .word .L0d96fed0

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_400921fb54442d18:
    .word 0x400921fb, 0x54442d18
_lit8_4060000000000000:
    .word 0x40600000, 0x00000000
_lit8_4066800000000000:
    .word 0x40668000, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_34000000:
    .word 0x34000000
_lit_3b000000:
    .word 0x3b000000
_lit_3b800000:
    .word 0x3b800000
_lit_3c000000:
    .word 0x3c000000
_lit_3d000000:
    .word 0x3d000000
_lit_3d800000:
    .word 0x3d800000
_lit_3e000000:
    .word 0x3e000000
_lit_3eb504f3:
    .word 0x3eb504f3
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_3fb504f3:
    .word 0x3fb504f3
_lit_40000000:
    .word 0x40000000
_lit_403504f3:
    .word 0x403504f3
_lit_40400000:
    .word 0x40400000
_lit_41200000:
    .word 0x41200000
_lit_428c0000:
    .word 0x428c0000
_lit_42b40000:
    .word 0x42b40000
_lit_43340000:
    .word 0x43340000
_lit_46000000:
    .word 0x46000000
_lit_48000000:
    .word 0x48000000
_lit_bb800000:
    .word 0xbb800000
_lit_bf000000:
    .word 0xbf000000
_lit_bf3504f3:
    .word 0xbf3504f3
_lit_bf800000:
    .word 0xbf800000
_lit_bfb504f3:
    .word 0xbfb504f3
_lit_c0000000:
    .word 0xc0000000
_lit_c2000000:
    .word 0xc2000000

