# Source: ../ODYSSEY/ody_vertarray.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_vertarray.c
# Total Functions: 16

.text

# Function: AnalyzeVertarrays
# Declared: Line 81 (Source lines: 87-198)
# Address: 0x0d9e1e00 - 0x0d9e206c (Size: 620 bytes, Frame: 0)
.ent AnalyzeVertarrays
AnalyzeVertarrays:
    # Line 87
    lui	$a3,0x1
    addu	$a3,$a0,$a3
    # Line 91
    sw	$zero,27164($a3)
    # Line 89
    sw	$zero,27156($a3)
    sw	$zero,27160($a3)
    # Line 88
    sw	$zero,27152($a3)
    # Line 87
    sw	$zero,27148($a3)
    # Line 93
    lw	$a4,5404($a0)
    lw	$a2,5400($a0)
    li	$at,55
    and	$a2,$a2,$a4
    beq	$a2,$at,.L0d9e1eac
    # Line 95
    li	$v1,12
    # Line 93
    lui	$a4,0x3
    ori	$a4,$a4,0x7037
    beq	$a2,$a4,.L0d9e1ec0
    li	$a5,1847
    # Line 176
    li	$t0,8
    # Line 93
    beq	$a2,$a5,.L0d9e1f08
    # Line 125
    li	$a4,24
    # Line 93
    li	$a6,823
    beq	$a2,$a6,.L0d9e1f84
    lui	$a7,0x270
    ori	$a7,$a7,0x37
    bne	$a2,$a7,.L0d9e1eb8
    nop
    # Line 167
    lw	$a2,5204($a0)
    li	$a4,20
    beq	$a2,$a4,.L0d9e1fc4
    nop
.L0d9e1e78:
    # Line 176
    bne	$a2,$t0,.L0d9e1eb8
    li	$t2,12
    lw	$t1,5100($a0)
    bne	$t1,$t2,.L0d9e1eb8
    # Line 179
    la	$at,__glOdysseyArraysSep_T2F_V3F
    # Line 180
    # lw $t9, -18736($gp) # &__glOdysseyElementsSep_T2F_V3F
    sw	$t9,27152($a3)
    # Line 179
    sw	$at,27148($a3)
    # Line 181
    lw	$t8,5192($a0)
    sw	$t8,27156($a3)
    # Line 182
    lw	$t3,5088($a0)
    # Line 198
    jr	$ra
    # Line 182
    sw	$t3,27160($a3)
.L0d9e1eac:
    # Line 95
    lw	$v0,5100($a0)
    beq	$v0,$v1,.L0d9e1ffc
    # Line 97
    la	$a1,__glOdysseyArraysInt_V3F
.L0d9e1eb8:
    # Line 198
    jr	$ra
    nop
.L0d9e1ec0:
    # Line 104
    lw	$a2,5152($a0)
    li	$a4,24
    beq	$a2,$a4,.L0d9e1f4c
    nop
.L0d9e1ed0:
    # Line 113
    li	$a4,12
.L0d9e1ed4:
    bne	$a2,$a4,.L0d9e1eb8
    nop
    lw	$a1,5100($a0)
    bne	$a1,$a4,.L0d9e1eb8
    # Line 116
    la	$a6,__glOdysseyArraysSep_C3F_V3F
    # Line 117
    la	$a5,__glOdysseyElementsSep_C3F_V3F
    sw	$a5,27152($a3)
    # Line 116
    sw	$a6,27148($a3)
    # Line 118
    lw	$a4,5140($a0)
    sw	$a4,27156($a3)
    # Line 119
    lw	$a2,5088($a0)
    # Line 198
    jr	$ra
    # Line 119
    sw	$a2,27160($a3)
.L0d9e1f08:
    # Line 125
    lw	$a2,5124($a0)
    beq	$a2,$a4,.L0d9e2014
    nop
    # Line 143
    li	$a4,12
.L0d9e1f18:
    bne	$a2,$a4,.L0d9e1eb8
    nop
    lw	$a7,5100($a0)
    bne	$a7,$a4,.L0d9e1eb8
    # Line 146
    la	$t3,__glOdysseyArraysSep_N3F_V3F
    # Line 147
    la	$t2,__glOdysseyElementsSep_N3F_V3F
    sw	$t2,27152($a3)
    # Line 146
    sw	$t3,27148($a3)
    # Line 148
    lw	$t1,5116($a0)
    sw	$t1,27156($a3)
    # Line 149
    lw	$t0,5088($a0)
    # Line 198
    jr	$ra
    # Line 149
    sw	$t0,27160($a3)
.L0d9e1f4c:
    # Line 104
    lw	$t8,5100($a0)
    bne	$t8,$a4,.L0d9e1ed4
    # Line 113
    li	$a4,12
    # Line 104
    lw	$a4,5140($a0)
    lw	$t9,5088($a0)
    addiu	$at,$a4,12
    bne	$t9,$at,.L0d9e1ed0
    nop
    # Line 111
    sw	$a4,27156($a3)
    # Line 109
    la	$v0,__glOdysseyArraysInt_C3F_V3F
    # Line 110
    la	$v1,__glOdysseyElementsInt_C3F_V3F
    sw	$v1,27152($a3)
    # Line 198
    jr	$ra
    # Line 109
    sw	$v0,27148($a3)
.L0d9e1f84:
    # Line 155
    lw	$a1,5124($a0)
    li	$a2,6
    bne	$a1,$a2,.L0d9e1eb8
    nop
    lw	$a4,5100($a0)
    li	$a5,12
    bne	$a4,$a5,.L0d9e1eb8
    # Line 158
    la	$t1,__glOdysseyArraysSep_N3S_V3F
    # Line 159
    la	$t0,__glOdysseyElementsSep_N3S_V3F
    sw	$t0,27152($a3)
    # Line 158
    sw	$t1,27148($a3)
    # Line 160
    lw	$a7,5116($a0)
    sw	$a7,27156($a3)
    # Line 161
    lw	$a6,5088($a0)
    # Line 198
    jr	$ra
    # Line 161
    sw	$a6,27160($a3)
.L0d9e1fc4:
    # Line 167
    lw	$t2,5100($a0)
    bne	$t2,$a4,.L0d9e1e78
    nop
    lw	$a4,5192($a0)
    lw	$t3,5088($a0)
    addiu	$t8,$a4,8
    bne	$t3,$t8,.L0d9e1e78
    nop
    # Line 174
    sw	$a4,27156($a3)
    # Line 172
    # lw $t9, -18776($gp) # &__glOdysseyArraysInt_T2F_V3F
    # Line 173
    la	$at,__glOdysseyElementsInt_T2F_V3F
    sw	$at,27152($a3)
    # Line 198
    jr	$ra
    # Line 172
    sw	$t9,27148($a3)
.L0d9e1ffc:
    # Line 98
    la	$v1,__glOdysseyElementsInt_V3F
    sw	$v1,27152($a3)
    # Line 97
    sw	$a1,27148($a3)
    # Line 99
    lw	$v0,5088($a0)
    # Line 198
    jr	$ra
    # Line 99
    sw	$v0,27156($a3)
.L0d9e2014:
    # Line 125
    lw	$a5,5100($a0)
    bne	$a5,$a4,.L0d9e1f18
    # Line 143
    li	$a4,12
    # Line 125
    lw	$a4,5116($a0)
    lw	$a2,5088($a0)
    addiu	$a6,$a4,12
    beq	$a2,$a6,.L0d9e2054
    # Line 133
    addiu	$a7,$a4,-12
    bne	$a2,$a7,.L0d9e1eb8
    nop
    # Line 140
    sw	$a2,27156($a3)
    # Line 138
    la	$t0,__glOdysseyArraysInt_V3F_N3F
    # Line 139
    la	$t1,__glOdysseyElementsInt_V3F_N3F
    sw	$t1,27152($a3)
    # Line 198
    jr	$ra
    # Line 138
    sw	$t0,27148($a3)
.L0d9e2054:
    # Line 133
    sw	$a4,27156($a3)
    # Line 131
    la	$t2,__glOdysseyArraysInt_N3F_V3F
    # Line 132
    la	$t3,__glOdysseyElementsInt_N3F_V3F
    sw	$t3,27152($a3)
    # Line 198
    jr	$ra
    # Line 131
    sw	$t2,27148($a3)
.end AnalyzeVertarrays

# Function: __glOdyim_DrawArraysEXT
# Declared: Line 207 (Source lines: 208-264)
# Address: 0x0d9e2070 - 0x0d9e2250 (Size: 480 bytes, Frame: 192)
.globl __glOdyim_DrawArraysEXT
.ent __glOdyim_DrawArraysEXT
__glOdyim_DrawArraysEXT:
    # Line 208
    addiu	$sp,$sp,-64
    sd	$s3,8($sp)
    # Line 211
    lw	$s3,4112($zero)
    sd	$ra,40($sp)
    # Line 208
    sd	$s0,24($sp)
    sd	$s4,16($sp)
    move	$s4,$a2
    move	$s0,$a1
    # Line 211
    lw	$at,4120($zero)
    # Line 208
    sd	$s2,0($sp)
    # Line 211
    li	$a4,1
    # Line 208
    lui	$v0,0x11
    move	$s2,$a0
    sd	$s1,48($sp)
    addiu	$v0,$v0,25888
    sd	$gp,32($sp)
    # Line 211
    beq	$at,$a4,.L0d9e223c
    # Line 208
    addu	$gp,$t9,$v0
    # Line 214
    bltz	$a1,.L0d9e2200
    # Line 215
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 214
    bltz	$a2,.L0d9e2200
    # Line 215
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 216
    sltiu	$v1,$a0,10
    beqz	$v1,.L0d9e21e8
    # Line 221
    lui	$s1,0x1
    addu	$s1,$s3,$s1
    lw	$a0,27016($s1)
    beqz	$a0,.L0d9e2178
    nop
.L0d9e20e4:
    # Line 248
    lw	$t8,3612($s3)
    bne	$t8,$a4,.L0d9e20fc
    nop
    lw	$t9,5412($s3)
    beqz	$t9,.L0d9e2210
    nop
.L0d9e20fc:
    # Line 254
    lw	$s1,6132($s3)
    # Line 259
    lw	$t9,28($s1)
    move	$a0,$s2
    jal	__glSetError
    # Line 254
    lw	$s1,792($s1)
    # Line 260
    addu	$s2,$s0,$s4
    slt	$t8,$s0,$s2
    beqz	$t8,.L0d9e2144
    nop
    nop
    nop
    nop
    # Line 261
    move	$t9,$s1
.L0d9e2130:
    jalr	$t9
    move	$a0,$s0
    # Line 260
    addiu	$s0,$s0,1
    bne	$s2,$s0,.L0d9e2130
    # Line 261
    move	$t9,$s1
.L0d9e2144:
    # Line 262
    lw	$t9,6132($s3)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    ld	$s2,0($sp)
.L0d9e2158:
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$ra,40($sp)
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    # Line 264
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9e2178:
    # Line 221
    lw	$ra,27164($s1)
    beqz	$ra,.L0d9e2194
    # Line 236
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,7680
    bal __glOdylc_Vertex4svBbox
    move	$a0,$s3
    li	$a4,1
.L0d9e2194:
    lw	$ra,27148($s1)
    beqz	$ra,.L0d9e20e4
    nop
    # Line 239
    lw	$t9,6132($s3)
    lw	$t9,28($t9)
    jal	sub_0d9e0000
    move	$a0,$s2
    blez	$s4,.L0d9e21d0
    nop
    # Line 241
    lw	$t9,27148($s1)
    move	$a0,$s0
    lw	$a3,27160($s1)
    move	$a1,$s4
    jalr	$t9
    lw	$a2,27156($s1)
.L0d9e21d0:
    # Line 242
    lw	$t9,6132($s3)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    b	.L0d9e2158
    ld	$s2,0($sp)
.L0d9e21e8:
    # Line 220
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9e2158
    ld	$s2,0($sp)
    # Line 215
    # lw $t9, -26792($gp) # &__glSetError
.L0d9e2200:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9e2158
    ld	$s2,0($sp)
.L0d9e2210:
    # Line 250
    lw	$ra,5416($s3)
    lw	$t9,12716($s3)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    move	$a0,$s2
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s4
    b	.L0d9e2158
    ld	$s2,0($sp)
.L0d9e223c:
    # Line 211
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e2158
    ld	$s2,0($sp)
.end __glOdyim_DrawArraysEXT

# Function: __glOdyim_DrawElements
# Declared: Line 272 (Source lines: 274-339)
# Address: 0x0d9e2250 - 0x0d9e2498 (Size: 584 bytes, Frame: 208)
.globl __glOdyim_DrawElements
.ent __glOdyim_DrawElements
__glOdyim_DrawElements:
    # Line 274
    addiu	$sp,$sp,-80
    sd	$s5,16($sp)
    # Line 277
    lw	$s5,4112($zero)
    # Line 274
    sd	$s3,32($sp)
    sd	$s2,40($sp)
    move	$s2,$a2
    move	$s3,$a1
    # Line 277
    lw	$at,4120($zero)
    # Line 274
    sd	$s4,24($sp)
    # Line 277
    li	$v0,1
    # Line 274
    lui	$v1,0x11
    move	$s4,$a0
    sd	$ra,56($sp)
    addiu	$v1,$v1,25408
    sd	$gp,48($sp)
    # Line 277
    beq	$at,$v0,.L0d9e2474
    # Line 274
    addu	$gp,$t9,$v1
    # Line 277
    bltz	$a1,.L0d9e2488
    # Line 281
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 285
    sltiu	$a0,$a0,10
    beqz	$a0,.L0d9e22c8
    # Line 288
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 285
    li	$a0,5121
    beq	$a0,$a2,.L0d9e22d8
    li	$a1,5123
    beq	$a2,$a1,.L0d9e22d8
    li	$a2,5125
    beq	$s2,$a2,.L0d9e22dc
    # Line 289
    lui	$a0,0x1
    # Line 288
    # lw $t9, -26792($gp) # &__glSetError
.L0d9e22c8:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9e2398
    # Line 339
    ld	$gp,48($sp)
.L0d9e22d8:
    # Line 289
    lui	$a0,0x1
.L0d9e22dc:
    addu	$a0,$s5,$a0
    lw	$a4,27016($a0)
    bnez	$a4,.L0d9e2320
    sd	$a3,0($sp)
    lw	$a1,27164($a0)
    beqz	$a1,.L0d9e2308
    sd	$a0,8($sp)
    # Line 304
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,7680
    bal __glOdylc_Vertex4svBbox
    move	$a0,$s5
.L0d9e2308:
    # Line 306
    ld	$ra,8($sp)
    lw	$ra,27152($ra)
    beqz	$ra,.L0d9e2320
    li	$at,5125
    beq	$s2,$at,.L0d9e242c
    nop
.L0d9e2320:
    sd	$s1,64($sp)
    # Line 323
    lw	$t9,4204($zero)
    # Line 318
    lw	$s1,6132($s5)
    # Line 323
    move	$a0,$s4
    jal	sub_0d9e0000
    # Line 318
    lw	$s1,792($s1)
    # Line 324
    li	$t8,5121
    beq	$t8,$s2,.L0d9e23b4
    li	$t9,5123
    beq	$s2,$t9,.L0d9e23ec
    li	$ra,5125
    bne	$s2,$ra,.L0d9e2388
    nop
    # Line 334
    blez	$s3,.L0d9e2388
    ld	$t8,0($sp)
    sll	$s2,$s3,0x2
    sd	$s0,72($sp)
    move	$s0,$t8
    addu	$s2,$s2,$t8
    # Line 335
    move	$t9,$s1
.L0d9e2370:
    jalr	$t9
    lw	$a0,0($s0)
    # Line 334
    addiu	$s0,$s0,4
    bne	$s0,$s2,.L0d9e2370
    # Line 335
    move	$t9,$s1
    ld	$s0,72($sp)
.L0d9e2388:
    # Line 338
    lw	$t9,4220($zero)
    jalr	$t9
    ld	$s1,64($sp)
    # Line 339
    ld	$gp,48($sp)
.L0d9e2398:
    ld	$s2,40($sp)
    ld	$ra,56($sp)
    ld	$s3,32($sp)
    ld	$s4,24($sp)
    ld	$s5,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9e23b4:
    # Line 326
    blez	$s3,.L0d9e2388
    ld	$s2,0($sp)
    sd	$s0,72($sp)
    move	$s0,$s2
    addu	$s2,$s3,$s2
    nop
    # Line 327
    move	$t9,$s1
.L0d9e23d0:
    jalr	$t9
    lbu	$a0,0($s0)
    # Line 326
    addiu	$s0,$s0,1
    bne	$s0,$s2,.L0d9e23d0
    # Line 327
    move	$t9,$s1
    b	.L0d9e2388
    ld	$s0,72($sp)
.L0d9e23ec:
    # Line 330
    blez	$s3,.L0d9e2388
    ld	$t8,0($sp)
    addu	$s2,$s3,$s3
    sd	$s0,72($sp)
    move	$s0,$t8
    addu	$s2,$s2,$t8
    nop
    nop
    # Line 331
    move	$t9,$s1
.L0d9e2410:
    jalr	$t9
    lhu	$a0,0($s0)
    # Line 330
    addiu	$s0,$s0,2
    bne	$s0,$s2,.L0d9e2410
    # Line 331
    move	$t9,$s1
    b	.L0d9e2388
    ld	$s0,72($sp)
.L0d9e242c:
    # Line 307
    lw	$t9,6132($s5)
    lw	$t9,28($t9)
    jalr	$t9
    move	$a0,$s4
    blez	$s3,.L0d9e245c
    # Line 309
    ld	$a2,8($sp)
    lw	$t9,27152($a2)
    ld	$a1,0($sp)
    lw	$a3,27160($a2)
    move	$a0,$s3
    jalr	$t9
    lw	$a2,27156($a2)
.L0d9e245c:
    # Line 311
    lw	$t9,6132($s5)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    b	.L0d9e2398
    # Line 339
    ld	$gp,48($sp)
.L0d9e2474:
    # Line 277
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e2398
    # Line 339
    ld	$gp,48($sp)
.L0d9e2488:
    # Line 281
    jalr	$t9
    li	$a0,1281
    b	.L0d9e2398
    # Line 339
    ld	$gp,48($sp)
.end __glOdyim_DrawElements

# Function: __glOdyim_DrawRangeElements
# Declared: Line 343 (Source lines: 345-352)
# Address: 0x0d9e24a0 - 0x0d9e24fc (Size: 92 bytes, Frame: 16)
.globl __glOdyim_DrawRangeElements
.ent __glOdyim_DrawRangeElements
__glOdyim_DrawRangeElements:
    # Line 345
    addiu	$sp,$sp,-16
    sltu	$at,$a2,$a1
    lui	$v0,0x11
    move	$a7,$a3
    sd	$ra,8($sp)
    addiu	$v0,$v0,24816
    sd	$gp,0($sp)
    beqz	$at,.L0d9e24d8
    addu	$gp,$t9,$v0
    # Line 347
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9e24ec
    nop
.L0d9e24d8:
    # Line 351
    # lw $t9, -30180($gp) # &__glOdyim_DrawElements
    move	$a2,$a4
    move	$a1,$a3
    bal __glOdyim_DrawElements
    move	$a3,$a5
.L0d9e24ec:
    ld	$ra,8($sp)
    # Line 352
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_DrawRangeElements

# Function: __glOdyim_ColorPointerEXT
# Declared: Line 362 (Source lines: 367-372)
# Address: 0x0d9e2500 - 0x0d9e2548 (Size: 72 bytes, Frame: 16)
.globl __glOdyim_ColorPointerEXT
.ent __glOdyim_ColorPointerEXT
__glOdyim_ColorPointerEXT:
    # Line 367
    lui	$a5,0x11
    # Line 370
    lw	$v1,4112($zero)
    # Line 367
    addiu	$sp,$sp,-16
    addiu	$a5,$a5,24720
    sd	$gp,8($sp)
    addu	$gp,$t9,$a5
    # Line 370
    lui	$v0,0x1
    # Line 371
    # lw $t9, -23892($gp) # &__glim_ColorPointerEXT
    # Line 370
    ori	$v0,$v0,0x6a1c
    # Line 367
    sd	$ra,0($sp)
    # Line 370
    addu	$v0,$v0,$v1
    li	$at,1
    # Line 371
    jal	__glim_ColorPointerEXT
    # Line 370
    sw	$at,0($v0)
    ld	$ra,0($sp)
    # Line 372
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_ColorPointerEXT

# Function: __glOdyim_ColorPointer
# Declared: Line 376 (Source lines: 380-385)
# Address: 0x0d9e2550 - 0x0d9e25bc (Size: 108 bytes, Frame: 16)
.globl __glOdyim_ColorPointer
.ent __glOdyim_ColorPointer
__glOdyim_ColorPointer:
    # Line 380
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$a6,1
    lui	$v0,0x11
    move	$a4,$a3
    sd	$ra,8($sp)
    addiu	$v0,$v0,24640
    sd	$gp,0($sp)
    beq	$at,$a6,.L0d9e25a8
    addu	$gp,$t9,$v0
    # Line 384
    # lw $t9, -23892($gp) # &__glim_ColorPointerEXT
    # Line 383
    lw	$a5,4112($zero)
    lui	$v1,0x1
    ori	$v1,$v1,0x6a1c
    addu	$v1,$v1,$a5
    # Line 384
    move	$a3,$zero
    jal	__glim_ColorPointerEXT
    # Line 383
    sw	$a6,0($v1)
    ld	$ra,8($sp)
.L0d9e259c:
    # Line 385
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e25a8:
    # Line 381
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e259c
    ld	$ra,8($sp)
.end __glOdyim_ColorPointer

# Function: __glOdyim_EdgeFlagPointerEXT
# Declared: Line 389 (Source lines: 392-397)
# Address: 0x0d9e25c0 - 0x0d9e2608 (Size: 72 bytes, Frame: 16)
.globl __glOdyim_EdgeFlagPointerEXT
.ent __glOdyim_EdgeFlagPointerEXT
__glOdyim_EdgeFlagPointerEXT:
    # Line 392
    lui	$a3,0x11
    # Line 395
    lw	$v1,4112($zero)
    # Line 392
    addiu	$sp,$sp,-16
    addiu	$a3,$a3,24528
    sd	$gp,8($sp)
    addu	$gp,$t9,$a3
    # Line 395
    lui	$v0,0x1
    # Line 396
    # lw $t9, -23884($gp) # &__glim_EdgeFlagPointerEXT
    # Line 395
    ori	$v0,$v0,0x6a1c
    # Line 392
    sd	$ra,0($sp)
    # Line 395
    addu	$v0,$v0,$v1
    li	$at,1
    # Line 396
    jal	__glim_EdgeFlagPointerEXT
    # Line 395
    sw	$at,0($v0)
    ld	$ra,0($sp)
    # Line 397
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_EdgeFlagPointerEXT

# Function: __glOdyim_EdgeFlagPointer
# Declared: Line 401 (Source lines: 403-408)
# Address: 0x0d9e2610 - 0x0d9e267c (Size: 108 bytes, Frame: 16)
.globl __glOdyim_EdgeFlagPointer
.ent __glOdyim_EdgeFlagPointer
__glOdyim_EdgeFlagPointer:
    # Line 403
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$a4,1
    lui	$v0,0x11
    move	$a2,$a1
    sd	$ra,8($sp)
    addiu	$v0,$v0,24448
    sd	$gp,0($sp)
    beq	$at,$a4,.L0d9e2668
    addu	$gp,$t9,$v0
    # Line 407
    # lw $t9, -23884($gp) # &__glim_EdgeFlagPointerEXT
    # Line 406
    lw	$a3,4112($zero)
    lui	$v1,0x1
    ori	$v1,$v1,0x6a1c
    addu	$v1,$v1,$a3
    # Line 407
    move	$a1,$zero
    jal	__glim_EdgeFlagPointerEXT
    # Line 406
    sw	$a4,0($v1)
    ld	$ra,8($sp)
.L0d9e265c:
    # Line 408
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e2668:
    # Line 404
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e265c
    ld	$ra,8($sp)
.end __glOdyim_EdgeFlagPointer

# Function: __glOdyim_IndexPointerEXT
# Declared: Line 412 (Source lines: 416-421)
# Address: 0x0d9e2680 - 0x0d9e26c8 (Size: 72 bytes, Frame: 16)
.globl __glOdyim_IndexPointerEXT
.ent __glOdyim_IndexPointerEXT
__glOdyim_IndexPointerEXT:
    # Line 416
    lui	$a4,0x11
    # Line 419
    lw	$v1,4112($zero)
    # Line 416
    addiu	$sp,$sp,-16
    addiu	$a4,$a4,24336
    sd	$gp,8($sp)
    addu	$gp,$t9,$a4
    # Line 419
    lui	$v0,0x1
    # Line 420
    # lw $t9, -23880($gp) # &__glim_IndexPointerEXT
    # Line 419
    ori	$v0,$v0,0x6a1c
    # Line 416
    sd	$ra,0($sp)
    # Line 419
    addu	$v0,$v0,$v1
    li	$at,1
    # Line 420
    jal	__glim_IndexPointerEXT
    # Line 419
    sw	$at,0($v0)
    ld	$ra,0($sp)
    # Line 421
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_IndexPointerEXT

# Function: __glOdyim_IndexPointer
# Declared: Line 425 (Source lines: 428-433)
# Address: 0x0d9e26d0 - 0x0d9e273c (Size: 108 bytes, Frame: 16)
.globl __glOdyim_IndexPointer
.ent __glOdyim_IndexPointer
__glOdyim_IndexPointer:
    # Line 428
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$a5,1
    lui	$v0,0x11
    move	$a3,$a2
    sd	$ra,8($sp)
    addiu	$v0,$v0,24256
    sd	$gp,0($sp)
    beq	$at,$a5,.L0d9e2728
    addu	$gp,$t9,$v0
    # Line 432
    # lw $t9, -23880($gp) # &__glim_IndexPointerEXT
    # Line 431
    lw	$a4,4112($zero)
    lui	$v1,0x1
    ori	$v1,$v1,0x6a1c
    addu	$v1,$v1,$a4
    # Line 432
    move	$a2,$zero
    jal	__glim_IndexPointerEXT
    # Line 431
    sw	$a5,0($v1)
    ld	$ra,8($sp)
.L0d9e271c:
    # Line 433
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e2728:
    # Line 429
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e271c
    ld	$ra,8($sp)
.end __glOdyim_IndexPointer

# Function: __glOdyim_NormalPointerEXT
# Declared: Line 437 (Source lines: 441-446)
# Address: 0x0d9e2740 - 0x0d9e2788 (Size: 72 bytes, Frame: 16)
.globl __glOdyim_NormalPointerEXT
.ent __glOdyim_NormalPointerEXT
__glOdyim_NormalPointerEXT:
    # Line 441
    lui	$a4,0x11
    # Line 444
    lw	$v1,4112($zero)
    # Line 441
    addiu	$sp,$sp,-16
    addiu	$a4,$a4,24144
    sd	$gp,8($sp)
    addu	$gp,$t9,$a4
    # Line 444
    lui	$v0,0x1
    # Line 445
    # lw $t9, -23896($gp) # &__glim_NormalPointerEXT
    # Line 444
    ori	$v0,$v0,0x6a1c
    # Line 441
    sd	$ra,0($sp)
    # Line 444
    addu	$v0,$v0,$v1
    li	$at,1
    # Line 445
    jal	__glim_NormalPointerEXT
    # Line 444
    sw	$at,0($v0)
    ld	$ra,0($sp)
    # Line 446
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_NormalPointerEXT

# Function: __glOdyim_NormalPointer
# Declared: Line 450 (Source lines: 453-458)
# Address: 0x0d9e2790 - 0x0d9e27fc (Size: 108 bytes, Frame: 16)
.globl __glOdyim_NormalPointer
.ent __glOdyim_NormalPointer
__glOdyim_NormalPointer:
    # Line 453
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$a5,1
    lui	$v0,0x11
    move	$a3,$a2
    sd	$ra,8($sp)
    addiu	$v0,$v0,24064
    sd	$gp,0($sp)
    beq	$at,$a5,.L0d9e27e8
    addu	$gp,$t9,$v0
    # Line 457
    # lw $t9, -23896($gp) # &__glim_NormalPointerEXT
    # Line 456
    lw	$a4,4112($zero)
    lui	$v1,0x1
    ori	$v1,$v1,0x6a1c
    addu	$v1,$v1,$a4
    # Line 457
    move	$a2,$zero
    jal	__glim_NormalPointerEXT
    # Line 456
    sw	$a5,0($v1)
    ld	$ra,8($sp)
.L0d9e27dc:
    # Line 458
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e27e8:
    # Line 454
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e27dc
    ld	$ra,8($sp)
.end __glOdyim_NormalPointer

# Function: __glOdyim_TexCoordPointerEXT
# Declared: Line 462 (Source lines: 467-472)
# Address: 0x0d9e2800 - 0x0d9e2848 (Size: 72 bytes, Frame: 16)
.globl __glOdyim_TexCoordPointerEXT
.ent __glOdyim_TexCoordPointerEXT
__glOdyim_TexCoordPointerEXT:
    # Line 467
    lui	$a5,0x11
    # Line 470
    lw	$v1,4112($zero)
    # Line 467
    addiu	$sp,$sp,-16
    addiu	$a5,$a5,23952
    sd	$gp,8($sp)
    addu	$gp,$t9,$a5
    # Line 470
    lui	$v0,0x1
    # Line 471
    # lw $t9, -23888($gp) # &__glim_TexCoordPointerEXT
    # Line 470
    ori	$v0,$v0,0x6a1c
    # Line 467
    sd	$ra,0($sp)
    # Line 470
    addu	$v0,$v0,$v1
    li	$at,1
    # Line 471
    jal	__glim_TexCoordPointerEXT
    # Line 470
    sw	$at,0($v0)
    ld	$ra,0($sp)
    # Line 472
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_TexCoordPointerEXT

# Function: __glOdyim_TexCoordPointer
# Declared: Line 476 (Source lines: 480-485)
# Address: 0x0d9e2850 - 0x0d9e28bc (Size: 108 bytes, Frame: 16)
.globl __glOdyim_TexCoordPointer
.ent __glOdyim_TexCoordPointer
__glOdyim_TexCoordPointer:
    # Line 480
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$a6,1
    lui	$v0,0x11
    move	$a4,$a3
    sd	$ra,8($sp)
    addiu	$v0,$v0,23872
    sd	$gp,0($sp)
    beq	$at,$a6,.L0d9e28a8
    addu	$gp,$t9,$v0
    # Line 484
    # lw $t9, -23888($gp) # &__glim_TexCoordPointerEXT
    # Line 483
    lw	$a5,4112($zero)
    lui	$v1,0x1
    ori	$v1,$v1,0x6a1c
    addu	$v1,$v1,$a5
    # Line 484
    move	$a3,$zero
    jal	__glim_TexCoordPointerEXT
    # Line 483
    sw	$a6,0($v1)
    ld	$ra,8($sp)
.L0d9e289c:
    # Line 485
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e28a8:
    # Line 481
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e289c
    ld	$ra,8($sp)
.end __glOdyim_TexCoordPointer

# Function: __glOdyim_VertexPointerEXT
# Declared: Line 489 (Source lines: 494-499)
# Address: 0x0d9e28c0 - 0x0d9e2908 (Size: 72 bytes, Frame: 16)
.globl __glOdyim_VertexPointerEXT
.ent __glOdyim_VertexPointerEXT
__glOdyim_VertexPointerEXT:
    # Line 494
    lui	$a5,0x11
    # Line 497
    lw	$v1,4112($zero)
    # Line 494
    addiu	$sp,$sp,-16
    addiu	$a5,$a5,23760
    sd	$gp,8($sp)
    addu	$gp,$t9,$a5
    # Line 497
    lui	$v0,0x1
    # Line 498
    # lw $t9, -23900($gp) # &__glim_VertexPointerEXT
    # Line 497
    ori	$v0,$v0,0x6a1c
    # Line 494
    sd	$ra,0($sp)
    # Line 497
    addu	$v0,$v0,$v1
    li	$at,1
    # Line 498
    jal	__glim_VertexPointerEXT
    # Line 497
    sw	$at,0($v0)
    ld	$ra,0($sp)
    # Line 499
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdyim_VertexPointerEXT

# Function: __glOdyim_VertexPointer
# Declared: Line 503 (Source lines: 507-512)
# Address: 0x0d9e2910 - 0x0d9e297c (Size: 108 bytes, Frame: 16)
.globl __glOdyim_VertexPointer
.ent __glOdyim_VertexPointer
__glOdyim_VertexPointer:
    # Line 507
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$a6,1
    lui	$v0,0x11
    move	$a4,$a3
    sd	$ra,8($sp)
    addiu	$v0,$v0,23680
    sd	$gp,0($sp)
    beq	$at,$a6,.L0d9e2968
    addu	$gp,$t9,$v0
    # Line 511
    # lw $t9, -23900($gp) # &__glim_VertexPointerEXT
    # Line 510
    lw	$a5,4112($zero)
    lui	$v1,0x1
    ori	$v1,$v1,0x6a1c
    addu	$v1,$v1,$a5
    # Line 511
    move	$a3,$zero
    jal	__glim_VertexPointerEXT
    # Line 510
    sw	$a6,0($v1)
    ld	$ra,8($sp)
.L0d9e295c:
    # Line 512
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e2968:
    # Line 508
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e295c
    ld	$ra,8($sp)
.end __glOdyim_VertexPointer

