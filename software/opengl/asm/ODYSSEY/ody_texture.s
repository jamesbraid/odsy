# Source: ../ODYSSEY/ody_texture.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_texture.c
# Total Functions: 75

.text

# Function: FreeTextureObject
# Declared: Line 58 (Source lines: 62-81)
# Address: 0x0d9cf530 - 0x0d9cf594 (Size: 100 bytes, Frame: 32)
.ent FreeTextureObject
FreeTextureObject:
    # Line 62
    addiu	$sp,$sp,-32
    lw	$at,1276($a1)
    sd	$s8,8($sp)
    li	$v0,-1
    lui	$v1,0x13
    move	$s8,$a0
    sd	$ra,24($sp)
    addiu	$v1,$v1,-28576
    sd	$gp,16($sp)
    beq	$at,$v0,.L0d9cf574
    addu	$gp,$t9,$v1
    sd	$a1,0($sp)
    # Line 71
    # lw $t9, -30988($gp) # &__glOdysseyDestroyPMObjGroup
    ld	$a1,0($sp)
    jal	__glOdysseyDestroyPMObjGroup
    addiu	$a1,$a1,1276
    ld	$a1,0($sp)
.L0d9cf574:
    # Line 80
    lw	$t9,12($s8)
    jalr	$t9
    move	$a0,$s8
    ld	$ra,24($sp)
    ld	$s8,8($sp)
    # Line 81
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end FreeTextureObject

# Function: InitTextureObject
# Declared: Line 84 (Source lines: 89-234)
# Address: 0x0d9cf5a0 - 0x0d9cf79c (Size: 508 bytes, Frame: 16)
.ent InitTextureObject
InitTextureObject:
    # Line 105
    sw	$zero,40($a0)
    # Line 102
    li	$a3,10497
    # Line 104
    sw	$a3,36($a0)
    # Line 103
    sw	$a3,32($a0)
    # Line 102
    sw	$a3,28($a0)
    # Line 101
    li	$v1,9729
    sw	$v1,24($a0)
    # Line 100
    li	$v0,9986
    sw	$v0,20($a0)
    # Line 99
    sw	$zero,16($a0)
    # Line 98
    sw	$a2,12($a0)
    # Line 97
    sw	$a1,8($a0)
    # Line 92
    li	$a7,1
    sw	$a7,0($a0)
    # Line 112
    li	$a5,260
    sw	$a5,68($a0)
    # Line 111
    li	$a4,-4
    sw	$a4,64($a0)
    # Line 89
    addiu	$sp,$sp,-16
    sd	$ra,8($sp)
    sd	$s0,0($sp)
    # Line 110
    lwc1	$f1,_lit_3f800000
    # Line 95
    la	$at,sub_0d9d0000
    # Line 106
    mtc1	$zero,$f0
    # Line 110
    swc1	$f1,60($a0)
    # Line 109
    swc1	$f0,56($a0)
    # Line 108
    swc1	$f0,52($a0)
    # Line 112
    addiu	$a6,$a0,1088
    # Line 107
    swc1	$f0,48($a0)
    # Line 112
    move	$a4,$a0
    move	$a5,$a0
    # Line 106
    swc1	$f0,44($a0)
    # Line 89
    move	$s0,$a0
    # Line 95
    addiu	$at,$at,-2768
    sw	$at,4($a0)
    nop
.L0d9cf630:
    # Line 115
    sw	$zero,1392($a4)
    # Line 116
    sw	$zero,1396($a4)
    # Line 117
    sw	$zero,1400($a4)
    # Line 118
    sw	$zero,1404($a4)
    # Line 119
    sw	$zero,1408($a4)
    # Line 120
    sw	$zero,1412($a4)
    # Line 121
    sw	$zero,1416($a4)
    # Line 122
    sw	$zero,1420($a4)
    # Line 123
    sw	$zero,1424($a4)
    # Line 124
    sw	$zero,1428($a4)
    # Line 125
    sw	$a7,1388($a4)
    # Line 114
    addiu	$a4,$a4,68
    addiu	$a5,$a5,4
    # Line 126
    sw	$zero,1316($a4)
    # Line 114
    bne	$a4,$a6,.L0d9cf630
    # Line 127
    sw	$zero,1296($a5)
    # Line 147
    li	$t0,2
    # Line 149
    sw	$t0,1292($s0)
    # Line 147
    sw	$t0,1284($s0)
    # Line 142
    sw	$zero,1280($s0)
    # Line 140
    sw	$zero,160($s0)
    # Line 131
    la	$a6,sub_0daf0000
    # Line 158
    # lw $t9, -16936($gp) # &bzero
    # Line 131
    li	$a7,-1
    sw	$a7,1276($s0)
    # Line 158
    li	$a1,1024
    # Line 131
    addiu	$a6,$a6,-14032
    # Line 150
    sw	$a6,1296($s0)
    # Line 158
    addiu	$a0,$s0,252
    jal	bzero
    # Line 148
    sw	$a6,1288($s0)
    # Line 159
    # lw $t9, -30552($gp) # &__glOdysseyTextureSetDetailTable
    la	$a2,sub_0daf0000
    move	$a0,$s0
    li	$a1,2
    jal	__glOdysseyTextureSetDetailTable
    addiu	$a2,$a2,-14032
    # Line 233
    sw	$zero,248($s0)
    # Line 232
    sw	$zero,240($s0)
    # Line 231
    sw	$zero,232($s0)
    # Line 230
    sw	$zero,224($s0)
    # Line 221
    li	$t0,4096
    # Line 224
    sw	$t0,244($s0)
    # Line 223
    sw	$t0,236($s0)
    # Line 222
    sw	$t0,228($s0)
    # Line 221
    sw	$t0,220($s0)
    # Line 210
    li	$a7,130
    sw	$a7,180($s0)
    # Line 204
    sw	$zero,188($s0)
    # Line 203
    sw	$zero,184($s0)
    # Line 201
    sw	$zero,176($s0)
    # Line 200
    sw	$zero,172($s0)
    # Line 199
    sw	$zero,168($s0)
    # Line 198
    lui	$a6,0x800
    sw	$a6,164($s0)
    # Line 185
    li	$a5,1000
    sw	$a5,96($s0)
    # Line 184
    sw	$zero,92($s0)
    # Line 183
    li	$a4,3840
    sw	$a4,204($s0)
    # Line 181
    li	$a3,12544
    sw	$a3,200($s0)
    # Line 179
    sw	$zero,196($s0)
    # Line 178
    sw	$zero,192($s0)
    # Line 166
    sw	$zero,216($s0)
    # Line 165
    sw	$zero,212($s0)
    # Line 164
    sw	$zero,208($s0)
    # Line 180
    lwc1	$f2,_lit_c47a0000
    # Line 182
    lwc1	$f3,_lit_447a0000
    # Line 229
    mtc1	$zero,$f5
    # Line 220
    lwc1	$f4,_lit_3f800000
    # Line 229
    swc1	$f5,124($s0)
    # Line 228
    swc1	$f5,120($s0)
    # Line 227
    swc1	$f5,116($s0)
    # Line 226
    swc1	$f5,112($s0)
    # Line 220
    swc1	$f4,140($s0)
    # Line 219
    swc1	$f4,136($s0)
    # Line 218
    swc1	$f4,132($s0)
    # Line 217
    swc1	$f4,128($s0)
    # Line 189
    swc1	$f5,108($s0)
    # Line 188
    swc1	$f5,104($s0)
    # Line 187
    swc1	$f5,100($s0)
    # Line 173
    swc1	$f4,80($s0)
    # Line 172
    swc1	$f4,76($s0)
    # Line 171
    swc1	$f4,72($s0)
    ld	$ra,8($sp)
    # Line 182
    swc1	$f3,88($s0)
    # Line 180
    swc1	$f2,84($s0)
    # Line 234
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end InitTextureObject

# Function: __glOdysseyTextureDriverInit
# Declared: Line 238 (Source lines: 243-289)
# Address: 0x0d9cf7a0 - 0x0d9cf96c (Size: 460 bytes, Frame: 192)
.globl __glOdysseyTextureDriverInit
.ent __glOdysseyTextureDriverInit
__glOdysseyTextureDriverInit:
    # Line 243
    addiu	$sp,$sp,-64
    sd	$ra,8($sp)
    lui	$ra,0x13
    sd	$s0,0($sp)
    addiu	$ra,$ra,-29200
    sd	$gp,24($sp)
    addu	$gp,$t9,$ra
    la	$s0,sub_0d9d0000
    # Line 248
    li	$a2,3552
    move	$a1,$zero
    # Line 243
    sd	$s8,16($sp)
    # Line 248
    lui	$s8,0x1
    # Line 243
    addiu	$s0,$s0,-2656
    # Line 248
    ori	$s8,$s8,0x20f8
    move	$t9,$s0
    # Line 243
    sd	$s1,56($sp)
    move	$s1,$a0
    # Line 248
    addu	$s8,$a0,$s8
    bal __glOdysseyValidateTexGen
    move	$a0,$s8
    # Line 249
    li	$a2,3553
    move	$t9,$s0
    lui	$a0,0x1
    move	$a1,$zero
    ori	$a0,$a0,0x2a8c
    addu	$a0,$s1,$a0
    bal __glOdysseyValidateTexGen
    sd	$a0,48($sp)
    # Line 250
    li	$a2,0x806f
    move	$t9,$s0
    lui	$a0,0x1
    move	$a1,$zero
    ori	$a0,$a0,0x3420
    addu	$a0,$s1,$a0
    bal __glOdysseyValidateTexGen
    sd	$a0,40($sp)
    # Line 252
    li	$a2,0x8095
    move	$t9,$s0
    lui	$a0,0x1
    move	$a1,$zero
    ori	$a0,$a0,0x3db4
    addu	$a0,$s1,$a0
    bal __glOdysseyValidateTexGen
    sd	$a0,32($sp)
    # Line 254
    li	$a2,0x8063
    move	$t9,$s0
    lui	$a0,0x1
    move	$a1,$zero
    ori	$a0,$a0,0x4748
    bal __glOdysseyValidateTexGen
    addu	$a0,$s1,$a0
    # Line 255
    li	$a2,0x8064
    move	$t9,$s0
    lui	$a0,0x1
    move	$a1,$zero
    ori	$a0,$a0,0x50dc
    bal __glOdysseyValidateTexGen
    addu	$a0,$s1,$a0
    # Line 256
    li	$a2,0x8070
    move	$t9,$s0
    lui	$a0,0x1
    move	$a1,$zero
    ori	$a0,$a0,0x5a70
    bal __glOdysseyValidateTexGen
    addu	$a0,$s1,$a0
    ld	$s0,0($sp)
    # Line 289
    ld	$gp,24($sp)
    ld	$ra,8($sp)
    # Line 263
    ld	$v0,48($sp)
    # Line 262
    lui	$a3,0x1
    # Line 264
    ld	$at,40($sp)
    # Line 262
    addu	$a3,$s1,$a3
    # Line 269
    sw	$zero,25628($a3)
    # Line 268
    sw	$zero,25624($a3)
    # Line 264
    sw	$at,25612($a3)
    # Line 263
    sw	$v0,25608($a3)
    # Line 262
    sw	$s8,25604($a3)
    # Line 265
    ld	$s8,32($sp)
    sw	$s8,25616($a3)
    # Line 278
    sw	$zero,31936($s1)
    # Line 277
    sw	$zero,31932($s1)
    # Line 279
    lw	$t8,31920($s1)
    li	$t9,-8
    # Line 276
    sw	$zero,31928($s1)
    # Line 275
    sw	$zero,31924($s1)
    # Line 279
    and	$t8,$t8,$t9
    ori	$t8,$t8,0x2
    sw	$t8,31920($s1)
    # Line 280
    lw	$t3,26976($a3)
    # Line 289
    ld	$s8,16($sp)
    # Line 280
    ori	$t3,$t3,0x100
    sw	$t3,26976($a3)
    li	$a1,2
    sw	$a1,4120($zero)
    # Line 287
    lw	$t2,8604($a3)
    sw	$t2,31940($s1)
    lw	$t1,8608($a3)
    sw	$t1,31944($s1)
    lw	$t0,8612($a3)
    sw	$t0,31948($s1)
    lw	$a7,8616($a3)
    sw	$a7,31952($s1)
    lw	$a6,8620($a3)
    sw	$a6,31956($s1)
    lw	$a5,8624($a3)
    sw	$a5,31960($s1)
    lw	$a4,8628($a3)
    sw	$a4,31964($s1)
    # Line 288
    lw	$a2,26976($a3)
    # Line 289
    ld	$s1,56($sp)
    # Line 288
    ori	$a2,$a2,0x200
    sw	$a2,26976($a3)
    # Line 289
    addiu	$sp,$sp,64
    jr	$ra
    # Line 288
    sw	$a1,4120($zero)
.end __glOdysseyTextureDriverInit

# Function: __glOdysseyTextureDriverDestroy
# Declared: Line 293 (Source lines: 297-317)
# Address: 0x0d9cf970 - 0x0d9cfa18 (Size: 168 bytes, Frame: 32)
.globl __glOdysseyTextureDriverDestroy
.ent __glOdysseyTextureDriverDestroy
__glOdysseyTextureDriverDestroy:
    # Line 297
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    lui	$s1,0x1
    addu	$s1,$a0,$s1
    lw	$a1,25604($s1)
    lw	$at,8($a1)
    sd	$s0,0($sp)
    lui	$v0,0x13
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,-29664
    sd	$gp,16($sp)
    beqz	$at,.L0d9cf9b4
    addu	$gp,$t9,$v0
    # Line 305
    # lw $t9, -25692($gp) # &__glNamesUnlockData
    jal	__glNamesUnlockData
    nop
.L0d9cf9b4:
    lw	$a1,25608($s1)
    lw	$t8,8($a1)
    beqz	$t8,.L0d9cf9cc
    # Line 308
    nop	# was lw $t9, -25692($gp) # &__glNamesUnlockData
    jal	__glNamesUnlockData
    move	$a0,$s0
.L0d9cf9cc:
    lw	$a1,25612($s1)
    lw	$t9,8($a1)
    beqz	$t9,.L0d9cf9e4
    # Line 311
    nop	# was lw $t9, -25692($gp) # &__glNamesUnlockData
    jal	__glNamesUnlockData
    move	$a0,$s0
.L0d9cf9e4:
    lw	$a1,25616($s1)
    lw	$ra,8($a1)
    beqz	$ra,.L0d9cfa04
    ld	$ra,24($sp)
    # Line 314
    # lw $t9, -25692($gp) # &__glNamesUnlockData
    jal	__glNamesUnlockData
    move	$a0,$s0
    ld	$ra,24($sp)
.L0d9cfa04:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 317
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseyTextureDriverDestroy

# Function: floatTo12
# Declared: Line 324 (Source lines: 326-332)
# Address: 0x0d9cfa20 - 0x0d9cfa60 (Size: 64 bytes, Frame: 0)
.ent floatTo12
floatTo12:
    # Line 326
    dmtc1	$zero,$f1
    cvt.d.s	$f0,$f12
    c.le.d	$f0,$f1
    # Line 332
    lwc1	$f2,_lit_45800000
    li	$at,4095
    # Line 326
    bc1f	.L0d9cfa44
    # Line 330
    move	$v0,$zero
    # Line 332
    jr	$ra
    nop
.L0d9cfa44:
    mul.s	$f2,$f12,$f2
    trunc.w.s	$f2,$f2
    mfc1	$v1,$f2
    li	$v0,4095
    slt	$at,$at,$v1
    jr	$ra
    movz	$v0,$v1,$at
.end floatTo12

# Function: floatToS58_Clamp
# Declared: Line 336 (Source lines: 344-344)
# Address: 0x0d9cfa60 - 0x0d9cfaa0 (Size: 64 bytes, Frame: 0)
.ent floatToS58_Clamp
floatToS58_Clamp:
    # Line 344
    ldc1	$f6,_lit8_c040000000000000
    cvt.d.s	$f5,$f12
    lwc1	$f2,_lit_c2000000
    c.lt.d $f5,$f6
    movf.s	$f2,$f12,$fcc1
    ldc1	$f3,_lit8_403fff0000000000
    cvt.d.s	$f4,$f2
    lwc1	$f0,_lit_41fff800
    c.lt.d	$f3,$f4
    lwc1	$f1,_lit_43800000
    movf.s	$f0,$f2,$fcc0
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    jr	$ra
    andi	$v0,$v0,0x3fff
.end floatToS58_Clamp

# Function: floatToS312_Clamp
# Declared: Line 348 (Source lines: 356-356)
# Address: 0x0d9cfaa0 - 0x0d9cfae0 (Size: 64 bytes, Frame: 0)
.ent floatToS312_Clamp
floatToS312_Clamp:
    # Line 356
    ldc1	$f6,_lit8_c020000000000000
    cvt.d.s	$f5,$f12
    lwc1	$f2,_lit_c1000000
    c.lt.d $f5,$f6
    movf.s	$f2,$f12,$fcc1
    ldc1	$f3,_lit8_401fffc000000000
    cvt.d.s	$f4,$f2
    lwc1	$f0,_lit_40fffe00
    c.lt.d	$f3,$f4
    lwc1	$f1,_lit_45800000
    movf.s	$f0,$f2,$fcc0
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    jr	$ra
    andi	$v0,$v0,0xffff
.end floatToS312_Clamp

# Function: __glOdysseyGetCurrentTexture
# Declared: Line 363 (Source lines: 364-381)
# Address: 0x0d9cfae0 - 0x0d9cfbc4 (Size: 228 bytes, Frame: 0)
.globl __glOdysseyGetCurrentTexture
.ent __glOdysseyGetCurrentTexture
__glOdysseyGetCurrentTexture:
    # Line 364
    li	$a3,0x8064
    sltu	$at,$a1,$a3
    bnez	$at,.L0d9cfb2c
    sltu	$v0,$a3,$a1
    li	$a2,0x806f
    li	$a3,0x8070
    beqz	$v0,.L0d9cfb84
    sltu	$v1,$a1,$a3
    bnez	$v1,.L0d9cfb6c
    nop
    sltu	$a2,$a3,$a1
    beqz	$a2,.L0d9cfba4
    li	$a3,0x8095
    bne	$a1,$a3,.L0d9cfb64
    # Line 373
    lui	$v0,0x1
    ori	$v0,$v0,0x6410
    addu	$v0,$v0,$a0
    # Line 381
    jr	$ra
    # Line 373
    lw	$v0,0($v0)
.L0d9cfb2c:
    # Line 364
    sltiu	$v1,$a1,3553
    sltiu	$a2,$a1,3554
    bnez	$v1,.L0d9cfb58
    li	$a3,0x8063
    bnez	$a2,.L0d9cfb94
    # Line 369
    lui	$v0,0x1
    # Line 364
    bne	$a1,$a3,.L0d9cfb64
    # Line 375
    lui	$v0,0x1
    ori	$v0,$v0,0x4748
    # Line 381
    jr	$ra
    # Line 375
    addu	$v0,$a0,$v0
.L0d9cfb58:
    # Line 364
    li	$v1,3552
    beq	$a1,$v1,.L0d9cfbb4
    # Line 367
    lui	$v0,0x1
.L0d9cfb64:
    # Line 381
    jr	$ra
    move	$v0,$zero
.L0d9cfb6c:
    # Line 364
    bne	$a1,$a2,.L0d9cfb64
    # Line 371
    lui	$v0,0x1
    ori	$v0,$v0,0x640c
    addu	$v0,$v0,$a0
    # Line 381
    jr	$ra
    # Line 371
    lw	$v0,0($v0)
.L0d9cfb84:
    # Line 377
    lui	$v0,0x1
    ori	$v0,$v0,0x50dc
    # Line 381
    jr	$ra
    # Line 377
    addu	$v0,$a0,$v0
.L0d9cfb94:
    # Line 369
    ori	$v0,$v0,0x6408
    addu	$v0,$v0,$a0
    # Line 381
    jr	$ra
    # Line 369
    lw	$v0,0($v0)
.L0d9cfba4:
    # Line 379
    lui	$v0,0x1
    ori	$v0,$v0,0x5a70
    # Line 381
    jr	$ra
    # Line 379
    addu	$v0,$a0,$v0
.L0d9cfbb4:
    # Line 367
    ori	$v0,$v0,0x6404
    addu	$v0,$v0,$a0
    # Line 381
    jr	$ra
    # Line 367
    lw	$v0,0($v0)
.end __glOdysseyGetCurrentTexture

# Function: GetImageFmtEnumFromBuzzTexFormat
# Declared: Line 392 (Source lines: 393-432)
# Address: 0x0d9cfbd0 - 0x0d9cfc7c (Size: 172 bytes, Frame: 0)
.ent GetImageFmtEnumFromBuzzTexFormat
GetImageFmtEnumFromBuzzTexFormat:
    # Line 393
    la	$v0,sub_0daf0000
    sltiu	$a1,$a0,50
    sll	$v1,$a0,0x2
    addiu	$v0,$v0,-27772
    beqz	$a1,.L0d9cfbf4
    addu	$v0,$v0,$v1
    lw	$v1,0($v0)
    jr	$v1
    # Line 417
    li	$v0,10
.L0d9cfbf4:
    # Line 432
    jr	$ra
    li	$v0,-1
.L0d9cfbfc:
    jr	$ra
    nop
.L0d9cfc04:
    jr	$ra
    # Line 397
    move	$v0,$zero
.L0d9cfc0c:
    # Line 432
    jr	$ra
    # Line 427
    li	$v0,15
.L0d9cfc14:
    # Line 432
    jr	$ra
    # Line 425
    li	$v0,14
.L0d9cfc1c:
    # Line 432
    jr	$ra
    # Line 421
    li	$v0,12
.L0d9cfc24:
    # Line 432
    jr	$ra
    # Line 423
    li	$v0,13
.L0d9cfc2c:
    # Line 432
    jr	$ra
    # Line 419
    li	$v0,11
.L0d9cfc34:
    # Line 432
    jr	$ra
    # Line 411
    li	$v0,9
.L0d9cfc3c:
    # Line 432
    jr	$ra
    # Line 415
    li	$v0,8
.L0d9cfc44:
    # Line 432
    jr	$ra
    # Line 413
    li	$v0,7
.L0d9cfc4c:
    # Line 432
    jr	$ra
    # Line 409
    li	$v0,6
.L0d9cfc54:
    # Line 432
    jr	$ra
    # Line 407
    li	$v0,5
.L0d9cfc5c:
    # Line 432
    jr	$ra
    # Line 403
    li	$v0,4
.L0d9cfc64:
    # Line 432
    jr	$ra
    # Line 399
    li	$v0,3
.L0d9cfc6c:
    # Line 432
    jr	$ra
    # Line 405
    li	$v0,2
.L0d9cfc74:
    # Line 432
    jr	$ra
    # Line 401
    li	$v0,1
.end GetImageFmtEnumFromBuzzTexFormat

# Function: ChooseSuitableBuzzTexModeBaseFmt
# Declared: Line 436 (Source lines: 437-502)
# Address: 0x0d9cfc80 - 0x0d9cfdc0 (Size: 320 bytes, Frame: 0)
.ent ChooseSuitableBuzzTexModeBaseFmt
ChooseSuitableBuzzTexModeBaseFmt:
    # Line 437
    la	$a3,sub_0daf0000
    sltiu	$a5,$a0,50
    sll	$a4,$a0,0x2
    addiu	$a3,$a3,-27572
    beqz	$a5,.L0d9cfca4
    addu	$a3,$a3,$a4
    lw	$a4,0($a3)
    jr	$a4
    # Line 447
    li	$v0,1
.L0d9cfca4:
    # Line 502
    jr	$ra
    move	$v0,$zero
.L0d9cfcac:
    jr	$ra
    nop
.L0d9cfcb4:
    # Line 481
    sltiu	$t3,$a1,10769
    li	$a2,0x8050
    sltiu	$at,$a1,6407
    sltu	$a5,$a1,$a2
    sltiu	$t2,$a1,10768
    sltu	$a6,$a2,$a1
    bnez	$a5,.L0d9cfd20
    li	$a2,0x8053
    sltu	$a7,$a1,$a2
    beqz	$a6,.L0d9cfd64
    nop
    bnez	$a7,.L0d9cfd7c
    sltu	$t0,$a2,$a1
    beqz	$t0,.L0d9cfd64
    li	$t1,0x8054
    bne	$a1,$t1,.L0d9cfd74
    nop
    b	.L0d9cfd64
    nop
.L0d9cfd00:
    # Line 502
    jr	$ra
    # Line 461
    li	$v0,3
.L0d9cfd08:
    # Line 502
    jr	$ra
    # Line 466
    li	$v0,5
.L0d9cfd10:
    # Line 502
    jr	$ra
    # Line 452
    li	$v0,2
.L0d9cfd18:
    # Line 502
    jr	$ra
    # Line 457
    li	$v0,4
.L0d9cfd20:
    # Line 481
    bnez	$t2,.L0d9cfd50
    nop
    bnez	$t3,.L0d9cfd64
    li	$a2,0x804f
    sltu	$t8,$a1,$a2
    bnez	$t8,.L0d9cfdb0
    li	$a5,0x804e
    sltu	$t9,$a2,$a1
    beqz	$t9,.L0d9cfd64
    nop
    b	.L0d9cfd74
    nop
.L0d9cfd50:
    bnez	$at,.L0d9cfd6c
    li	$v1,3
    sltiu	$v0,$a1,6408
    beqz	$v0,.L0d9cfd74
    nop
.L0d9cfd64:
    # Line 502
    jr	$ra
    # Line 492
    li	$v0,5
.L0d9cfd6c:
    # Line 481
    beq	$a1,$v1,.L0d9cfd64
    nop
.L0d9cfd74:
    # Line 502
    jr	$ra
    # Line 494
    li	$v0,6
.L0d9cfd7c:
    # Line 481
    li	$a2,0x8052
    sltu	$a0,$a1,$a2
    bnez	$a0,.L0d9cfda0
    li	$a4,0x8051
    sltu	$a3,$a2,$a1
    beqz	$a3,.L0d9cfd64
    nop
    b	.L0d9cfd74
    nop
.L0d9cfda0:
    bne	$a1,$a4,.L0d9cfd74
    nop
    b	.L0d9cfd64
    nop
.L0d9cfdb0:
    bne	$a1,$a5,.L0d9cfd74
    nop
    b	.L0d9cfd64
    nop
.end ChooseSuitableBuzzTexModeBaseFmt

# Function: ChooseSuitableBuzzTexObjFormat
# Declared: Line 508 (Source lines: 513-610)
# Address: 0x0d9cfdc0 - 0x0d9d01d0 (Size: 1040 bytes, Frame: 0)
.ent ChooseSuitableBuzzTexObjFormat
ChooseSuitableBuzzTexObjFormat:
    # Line 513
    li	$v0,0x8047
    sltu	$at,$a0,$v0
    bnez	$at,.L0d9cfe24
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0d9cff24
    li	$v0,0x8053
    sltu	$a1,$a0,$v0
    bnez	$a1,.L0d9cfec0
    sltu	$a2,$v0,$a0
    beqz	$a2,.L0d9d0030
    li	$v0,0x8059
    sltu	$a3,$a0,$v0
    bnez	$a3,.L0d9cff58
    sltu	$a4,$v0,$a0
    beqz	$a4,.L0d9cff04
    li	$v0,0x8466
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0d9d0014
    sltu	$a6,$v0,$a0
    beqz	$a6,.L0d9d01c8
    li	$a7,0x8467
    bne	$a0,$a7,.L0d9cff14
    nop
    # Line 610
    jr	$ra
    # Line 603
    li	$v0,49
.L0d9cfe24:
    # Line 513
    li	$v0,0x803c
    sltu	$t0,$a0,$v0
    bnez	$t0,.L0d9cfe74
    sltu	$t1,$v0,$a0
    beqz	$t1,.L0d9cfeb8
    li	$v0,0x8042
    sltu	$t2,$a0,$v0
    bnez	$t2,.L0d9cffc4
    sltu	$t3,$v0,$a0
    beqz	$t3,.L0d9cfff4
    li	$v0,0x8045
    sltu	$t8,$a0,$v0
    bnez	$t8,.L0d9d00e0
    sltu	$t9,$v0,$a0
    beqz	$t9,.L0d9d000c
    li	$at,0x8046
    bne	$a0,$at,.L0d9cff14
    nop
    b	.L0d9cff24
    nop
.L0d9cfe74:
    sltiu	$v0,$a0,6407
    bnez	$v0,.L0d9cff2c
    sltiu	$a3,$a0,3
    sltiu	$v0,$a0,6408
    bnez	$v0,.L0d9cff88
    sltiu	$v0,$a0,6410
    bnez	$v0,.L0d9d0038
    sltiu	$t9,$a0,6409
    sltiu	$v1,$a0,6411
    bnez	$v1,.L0d9d000c
    li	$v0,0x803b
    sltu	$a1,$a0,$v0
    bnez	$a1,.L0d9d0198
    li	$a2,10768
    sltu	$a2,$v0,$a0
    bnez	$a2,.L0d9cff14
    nop
.L0d9cfeb8:
    # Line 610
    jr	$ra
    # Line 579
    move	$v0,$zero
.L0d9cfec0:
    # Line 513
    li	$v0,0x804d
    sltu	$a3,$a0,$v0
    bnez	$a3,.L0d9cff90
    sltu	$a4,$v0,$a0
    beqz	$a4,.L0d9cffbc
    li	$v0,0x8050
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0d9d0098
    sltu	$a6,$v0,$a0
    beqz	$a6,.L0d9d013c
    li	$v0,0x8052
    sltu	$a7,$a0,$v0
    bnez	$a7,.L0d9d01b8
    li	$a4,0x8051
    sltu	$t0,$v0,$a0
    bnez	$t0,.L0d9cff14
    nop
.L0d9cff04:
    # Line 610
    jr	$ra
    # Line 566
    li	$v0,18
.L0d9cff0c:
    # Line 513
    beq	$a0,$t1,.L0d9d0048
    nop
.L0d9cff14:
    # Line 610
    jr	$ra
    # Line 607
    move	$v0,$zero
.L0d9cff1c:
    # Line 513
    bne	$a0,$t2,.L0d9cff14
    nop
.L0d9cff24:
    # Line 610
    jr	$ra
    # Line 539
    li	$v0,16
.L0d9cff2c:
    # Line 513
    bnez	$a3,.L0d9cfffc
    sltiu	$t2,$a0,2
    sltiu	$t3,$a0,4
    bnez	$t3,.L0d9cff88
    sltiu	$t8,$a0,6406
    bnez	$t8,.L0d9d0124
    li	$t3,4
    beqz	$v0,.L0d9cff14
    nop
    b	.L0d9cfeb8
    nop
.L0d9cff58:
    li	$v0,0x8056
    sltu	$t9,$a0,$v0
    bnez	$t9,.L0d9d00bc
    sltu	$at,$v0,$a0
    beqz	$at,.L0d9d00b4
    li	$v0,0x8058
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0d9d0134
    li	$t8,0x8057
    sltu	$a1,$v0,$a0
    bnez	$a1,.L0d9cff14
    nop
.L0d9cff88:
    # Line 610
    jr	$ra
    # Line 548
    li	$v0,17
.L0d9cff90:
    # Line 513
    li	$v0,0x804a
    sltu	$a2,$a0,$v0
    bnez	$a2,.L0d9d0050
    sltu	$a3,$v0,$a0
    beqz	$a3,.L0d9d006c
    li	$v0,0x804c
    sltu	$a4,$a0,$v0
    bnez	$a4,.L0d9d0164
    sltu	$a5,$v0,$a0
    bnez	$a5,.L0d9cff14
    nop
.L0d9cffbc:
    # Line 610
    jr	$ra
    # Line 595
    li	$v0,9
.L0d9cffc4:
    # Line 513
    li	$v0,0x803f
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0d9d0074
    sltu	$a7,$v0,$a0
    beqz	$a7,.L0d9d0048
    li	$v0,0x8041
    sltu	$t0,$a0,$v0
    bnez	$t0,.L0d9d0188
    li	$a1,0x8040
    sltu	$t1,$v0,$a0
    bnez	$t1,.L0d9cff14
    nop
.L0d9cfff4:
    # Line 610
    jr	$ra
    # Line 525
    li	$v0,10
.L0d9cfffc:
    # Line 513
    bnez	$t2,.L0d9cff0c
    li	$t1,1
    beqz	$a3,.L0d9cff14
    nop
.L0d9d000c:
    # Line 610
    jr	$ra
    # Line 533
    li	$v0,11
.L0d9d0014:
    # Line 513
    li	$v0,0x805b
    sltu	$t3,$a0,$v0
    bnez	$t3,.L0d9d01a8
    li	$a3,0x805a
    sltu	$t8,$v0,$a0
    bnez	$t8,.L0d9cff14
    nop
.L0d9d0030:
    # Line 610
    jr	$ra
    # Line 573
    li	$v0,33
.L0d9d0038:
    # Line 513
    bnez	$t9,.L0d9d0114
    li	$t2,6408
    beqz	$v0,.L0d9cff14
    nop
.L0d9d0048:
    # Line 610
    jr	$ra
    # Line 520
    li	$v0,4
.L0d9d0050:
    # Line 513
    li	$v0,0x8049
    sltu	$at,$a0,$v0
    bnez	$at,.L0d9cff1c
    li	$t2,0x8048
    sltu	$v1,$v0,$a0
    bnez	$v1,.L0d9cff14
    nop
.L0d9d006c:
    # Line 610
    jr	$ra
    # Line 590
    li	$v0,2
.L0d9d0074:
    # Line 513
    li	$v0,0x803e
    sltu	$a1,$a0,$v0
    bnez	$a1,.L0d9d0104
    li	$t1,0x803d
    sltu	$a2,$v0,$a0
    bnez	$a2,.L0d9cff14
    nop
.L0d9d0090:
    # Line 610
    jr	$ra
    # Line 584
    li	$v0,8
.L0d9d0098:
    # Line 513
    li	$v0,0x804f
    sltu	$a3,$a0,$v0
    bnez	$a3,.L0d9d0154
    li	$at,0x804e
    sltu	$a4,$v0,$a0
    bnez	$a4,.L0d9cff14
    nop
.L0d9d00b4:
    # Line 610
    jr	$ra
    # Line 556
    li	$v0,12
.L0d9d00bc:
    # Line 513
    li	$v0,0x8055
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0d9d0144
    li	$t9,0x8054
    sltu	$a6,$v0,$a0
    beqz	$a6,.L0d9d00b4
    nop
    b	.L0d9cff14
    nop
.L0d9d00e0:
    li	$v0,0x8044
    sltu	$a7,$a0,$v0
    bnez	$a7,.L0d9d0178
    li	$v1,0x8043
    sltu	$t0,$v0,$a0
    beqz	$t0,.L0d9d000c
    nop
    b	.L0d9cff14
    nop
.L0d9d0104:
    bne	$a0,$t1,.L0d9cff14
    nop
    b	.L0d9d0090
    nop
.L0d9d0114:
    bne	$a0,$t2,.L0d9cff14
    nop
    b	.L0d9cff88
    nop
.L0d9d0124:
    bne	$a0,$t3,.L0d9cff14
    nop
    b	.L0d9cff88
    nop
.L0d9d0134:
    bne	$a0,$t8,.L0d9cff14
    nop
.L0d9d013c:
    # Line 610
    jr	$ra
    # Line 561
    li	$v0,13
.L0d9d0144:
    # Line 513
    bne	$a0,$t9,.L0d9cff14
    nop
    b	.L0d9d0030
    nop
.L0d9d0154:
    bne	$a0,$at,.L0d9cff14
    nop
    b	.L0d9d00b4
    nop
.L0d9d0164:
    li	$v0,0x804b
    bne	$a0,$v0,.L0d9cff14
    nop
    b	.L0d9d006c
    nop
.L0d9d0178:
    bne	$a0,$v1,.L0d9cff14
    nop
    b	.L0d9d000c
    nop
.L0d9d0188:
    bne	$a0,$a1,.L0d9cff14
    nop
    b	.L0d9d0048
    nop
.L0d9d0198:
    bne	$a0,$a2,.L0d9cff14
    nop
    b	.L0d9d00b4
    nop
.L0d9d01a8:
    bne	$a0,$a3,.L0d9cff14
    nop
    b	.L0d9d0030
    nop
.L0d9d01b8:
    bne	$a0,$a4,.L0d9cff14
    nop
    b	.L0d9cff88
    nop
.L0d9d01c8:
    # Line 610
    jr	$ra
    # Line 599
    li	$v0,48
.end ChooseSuitableBuzzTexObjFormat

# Function: CalcTexelSizes
# Declared: Line 619 (Source lines: 625-751)
# Address: 0x0d9d01d0 - 0x0d9d038c (Size: 444 bytes, Frame: 0)
.ent CalcTexelSizes
CalcTexelSizes:
    # Line 625
    sw	$zero,0($a4)
    # Line 626
    sw	$zero,0($a5)
    # Line 627
    sw	$zero,0($a6)
    # Line 630
    la	$t1,sub_0daf0000
    # Line 628
    sw	$zero,0($a1)
    # Line 630
    sltiu	$t3,$a0,50
    # Line 629
    sw	$zero,0($a2)
    # Line 630
    sll	$t2,$a0,0x2
    addiu	$t1,$t1,-27372
    sw	$zero,0($a3)
    beqz	$t3,.L0d9d0218
    addu	$t1,$t1,$t2
    lw	$t2,0($t1)
    jr	$t2
    # Line 715
    li	$t0,1
.L0d9d020c:
    # Line 670
    sw	$zero,0($a7)
    # Line 671
    li	$t3,12
    sw	$t3,0($a5)
.L0d9d0218:
    # Line 751
    jr	$ra
    nop
.L0d9d0220:
    # Line 640
    sw	$zero,0($a7)
    # Line 641
    li	$t8,8
    # Line 751
    jr	$ra
    # Line 641
    sw	$t8,0($a4)
.L0d9d0230:
    # Line 731
    li	$at,1
    sw	$at,0($a7)
    # Line 732
    li	$t9,8
    sw	$t9,0($a1)
    # Line 733
    sw	$t9,0($a2)
    # Line 734
    sw	$t9,0($a3)
    # Line 751
    jr	$ra
    # Line 735
    sw	$t9,0($a4)
.L0d9d0250:
    # Line 702
    sw	$zero,0($a7)
    # Line 703
    li	$v0,8
    sw	$v0,0($a1)
    # Line 704
    sw	$v0,0($a2)
    # Line 751
    jr	$ra
    # Line 705
    sw	$v0,0($a3)
.L0d9d0268:
    # Line 740
    li	$a0,2
    sw	$a0,0($a7)
    # Line 741
    li	$v1,12
    sw	$v1,0($a1)
    # Line 742
    sw	$v1,0($a2)
    # Line 743
    sw	$v1,0($a3)
    # Line 751
    jr	$ra
    # Line 744
    sw	$v1,0($a4)
.L0d9d0288:
    # Line 723
    li	$a6,1
    sw	$a6,0($a7)
    # Line 724
    li	$a5,10
    sw	$a5,0($a1)
    # Line 725
    sw	$a5,0($a2)
    # Line 726
    sw	$a5,0($a3)
    # Line 727
    li	$a1,2
    # Line 751
    jr	$ra
    # Line 727
    sw	$a1,0($a4)
.L0d9d02ac:
    # Line 715
    sw	$t0,0($a7)
    # Line 716
    li	$a7,8
    sw	$a7,0($a1)
    # Line 717
    sw	$a7,0($a2)
    # Line 718
    sw	$a7,0($a3)
    # Line 751
    jr	$ra
    # Line 719
    sw	$a7,0($a4)
.L0d9d02c8:
    # Line 709
    li	$t2,1
    sw	$t2,0($a7)
    # Line 710
    li	$t1,12
    sw	$t1,0($a5)
    # Line 751
    jr	$ra
    # Line 711
    sw	$t1,0($a4)
.L0d9d02e0:
    # Line 694
    sw	$zero,0($a7)
    # Line 695
    li	$t8,5
    sw	$t8,0($a1)
    # Line 696
    sw	$t8,0($a2)
    # Line 697
    sw	$t8,0($a3)
    # Line 698
    li	$t3,1
    # Line 751
    jr	$ra
    # Line 698
    sw	$t3,0($a4)
.L0d9d0300:
    # Line 686
    sw	$zero,0($a7)
    # Line 687
    li	$t9,4
    sw	$t9,0($a1)
    # Line 688
    sw	$t9,0($a2)
    # Line 689
    sw	$t9,0($a3)
    # Line 751
    jr	$ra
    # Line 690
    sw	$t9,0($a4)
.L0d9d031c:
    # Line 680
    sw	$zero,0($a7)
    # Line 681
    li	$at,8
    sw	$at,0($a5)
    # Line 751
    jr	$ra
    # Line 682
    sw	$at,0($a4)
.L0d9d0330:
    # Line 675
    sw	$zero,0($a7)
    # Line 676
    li	$v0,12
    # Line 751
    jr	$ra
    # Line 676
    sw	$v0,0($a6)
.L0d9d0340:
    # Line 665
    sw	$zero,0($a7)
    # Line 666
    li	$v1,12
    # Line 751
    jr	$ra
    # Line 666
    sw	$v1,0($a4)
.L0d9d0350:
    # Line 658
    sw	$zero,0($a7)
    # Line 659
    li	$a4,3
    sw	$a4,0($a1)
    # Line 660
    sw	$a4,0($a2)
    # Line 661
    li	$a0,2
    # Line 751
    jr	$ra
    # Line 661
    sw	$a0,0($a3)
.L0d9d036c:
    # Line 646
    sw	$zero,0($a7)
    # Line 647
    li	$a6,8
    # Line 751
    jr	$ra
    # Line 647
    sw	$a6,0($a5)
.L0d9d037c:
    # Line 652
    sw	$zero,0($a7)
    # Line 653
    li	$a7,8
    # Line 751
    jr	$ra
    # Line 653
    sw	$a7,0($a6)
.end CalcTexelSizes

# Function: CalcPixelModePixelFormat
# Declared: Line 754 (Source lines: 770-774)
# Address: 0x0d9d0390 - 0x0d9d03a8 (Size: 24 bytes, Frame: 0)
.ent CalcPixelModePixelFormat
CalcPixelModePixelFormat:
    # Line 772
    li	$v1,1
    # Line 774
    move	$v0,$zero
    # Line 770
    li	$at,1
    xor	$at,$a0,$at
    # Line 772
    jr	$ra
    movz	$v0,$v1,$at
.end CalcPixelModePixelFormat

# Function: AllocateGfxMemForTexture
# Declared: Line 780 (Source lines: 784-980)
# Address: 0x0d9d03b0 - 0x0d9d08a0 (Size: 1264 bytes, Frame: 160)
.ent AllocateGfxMemForTexture
AllocateGfxMemForTexture:
    # Line 784
    addiu	$sp,$sp,-288
    sd	$a7,200($sp)
    sd	$s7,208($sp)
    sd	$s5,216($sp)
    sd	$ra,152($sp)
    sd	$s4,144($sp)
    sd	$s6,160($sp)
    sd	$s3,168($sp)
    sd	$s0,128($sp)
    sd	$s1,120($sp)
    move	$s1,$a2
    sd	$s2,192($sp)
    move	$s2,$a3
    move	$s0,$a4
    # Line 806
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    # Line 784
    move	$s3,$a5
    move	$s6,$a6
    sd	$s8,176($sp)
    move	$s4,$a1
    move	$s8,$a0
    # Line 804
    lw	$a0,4112($zero)
    sd	$a0,96($sp)
    # Line 806
    bal __glOdysseyGetCurrentTexture
    move	$a1,$s8
    # Line 812
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 808
    sll	$s7,$s4,0x4
    addu	$s7,$s7,$s4
    # Line 812
    addiu	$t9,$t9,-576
    # Line 808
    sll	$s7,$s7,0x2
    # Line 806
    move	$s5,$v0
    # Line 812
    lw	$a0,292($sp)
    # Line 808
    addu	$s7,$v0,$s7
    addiu	$at,$s7,1364
    # Line 812
    bal __glOdysseyGetCurrentTexture
    sd	$at,104($sp)
    move	$a0,$v0
    # Line 813
    addiu	$a7,$sp,24
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$a6,$sp,20
    addiu	$a5,$sp,16
    addiu	$a4,$sp,12
    addiu	$t9,$t9,464
    # Line 812
    sd	$v0,112($sp)
    # Line 813
    addiu	$a3,$sp,8
    addiu	$a2,$sp,4
    addiu	$a1,$sp,0
    bal __glOdysseyGetCurrentTexture
    sd	$s5,88($sp)
    # Line 823
    addu	$ra,$s3,$s3
    sd	$ra,184($sp)
    subu	$ra,$s1,$ra
    mtc1	$ra,$f12
    lwc1	$f13,_lit_3d800000
    cvt.s.w	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    sd	$ra,72($sp)
    jal	ceilf
    mul.s	$f12,$f12,$f13
    # Line 832
    addu	$at,$s6,$s6
    # Line 825
    trunc.l.s	$f13,$f0
    # Line 832
    sd	$at,136($sp)
    subu	$at,$s2,$at
    mtc1	$at,$f12
    # Line 825
    dmfc1	$ra,$f13
    # Line 832
    # lw $t9, -17032($gp) # &ceilf
    # Line 825
    sll	$ra,$ra,0x0
    # Line 832
    cvt.s.w	$f12,$f12
    lwc1	$f13,_lit_3d800000
    # Line 825
    andi	$t8,$ra,0x1
    ld	$s5,184($sp)
    sltu	$t8,$zero,$t8
    addu	$t8,$t8,$ra
    # Line 832
    sd	$at,80($sp)
    # Line 825
    addu	$s5,$s5,$t8
    # Line 832
    jal	ceilf
    mul.s	$f12,$f12,$f13
    trunc.l.s	$f14,$f0
    dmfc1	$a0,$f14
    ld	$v1,136($sp)
    sll	$a0,$a0,0x0
    addu	$v1,$v1,$a0
    multu	$s5,$v1
    slti	$v0,$s0,2
    mflo	$a0
    beqz	$v0,.L0d9d0784
    # Line 843
    nop	# was lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
.L0d9d0508:
    # Line 849
    sd	$zero,32($sp)
    addiu	$a6,$sp,32
    sd	$zero,32($a6)
    sd	$zero,24($a6)
    sd	$zero,16($a6)
    sd	$zero,8($a6)
    # Line 863
    sw	$a0,64($sp)
    # Line 862
    sw	$s5,60($sp)
    # Line 861
    sw	$s0,56($sp)
    # Line 854
    li	$a3,4
    li	$a1,20
    # Line 858
    lw	$a5,24($sp)
    li	$a4,2
    # Line 860
    sw	$s2,52($sp)
    # Line 854
    xori	$a2,$s8,0x8095
    # Line 859
    sw	$s1,48($sp)
    # Line 854
    sltiu	$a2,$a2,1
    # Line 858
    sllv	$a4,$a4,$a5
    sb	$a4,33($sp)
    # Line 854
    movz	$a1,$a3,$a2
    # Line 863
    beqz	$s3,.L0d9d07d4
    # Line 854
    sb	$a1,32($sp)
    # Line 867
    li	$a7,16
    # Line 869
    ld	$t1,200($sp)
    ld	$s5,216($sp)
    # Line 868
    subu	$t0,$a7,$s6
    andi	$t0,$t0,0xf
    sw	$t0,40($sp)
    # Line 869
    subu	$t1,$a7,$t1
    # Line 867
    subu	$a7,$a7,$s3
    # Line 869
    andi	$t1,$t1,0xf
    sw	$t1,44($sp)
    # Line 867
    andi	$a7,$a7,0xf
    sw	$a7,36($sp)
.L0d9d0590:
    # Line 884
    beqz	$s1,.L0d9d05ac
    # Line 885
    ld	$t2,88($sp)
    # Line 884
    beqz	$s2,.L0d9d05ac
    # Line 885
    ld	$t2,88($sp)
    # Line 884
    bnez	$s0,.L0d9d072c
    # Line 915
    nop	# was lw $t9, -30992($gp) # &__glOdysseyCreatePMObj
    # Line 885
    ld	$t2,88($sp)
.L0d9d05ac:
    lw	$t2,1276($t2)
    li	$t3,-1
    beq	$t2,$t3,.L0d9d05c8
    ld	$t3,104($sp)
    lw	$t3,20($t3)
    li	$a6,1
    beq	$t3,$a6,.L0d9d07e8
.L0d9d05c8:
    # Line 950
    ld	$ra,112($sp)
.L0d9d05cc:
    # Line 952
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 942
    sw	$s3,1404($s7)
    # Line 941
    sw	$s0,1400($s7)
    # Line 940
    sw	$s2,1396($s7)
    # Line 939
    sw	$s1,1392($s7)
    # Line 943
    lw	$a3,292($sp)
    sw	$a3,1388($s7)
    # Line 944
    lw	$a2,0($sp)
    sw	$a2,1408($s7)
    # Line 945
    lw	$a1,4($sp)
    sw	$a1,1412($s7)
    # Line 946
    lw	$a0,8($sp)
    sw	$a0,1416($s7)
    # Line 947
    lw	$v1,12($sp)
    sw	$v1,1420($s7)
    # Line 948
    lw	$v0,16($sp)
    sw	$v0,1424($s7)
    # Line 949
    lw	$at,20($sp)
    # Line 950
    sw	$ra,1364($s7)
    # Line 949
    sw	$at,1428($s7)
    # Line 952
    addiu	$t9,$t9,912
    # Line 951
    lw	$t8,24($sp)
    sw	$t8,1368($s7)
    # Line 952
    bal __glOdysseyGetCurrentTexture
    lw	$a0,24($sp)
    sw	$v0,1372($s7)
    # Line 953
    lw	$a5,60($sp)
    sw	$a5,1376($s7)
    # Line 954
    lw	$a4,64($sp)
    bnez	$s4,.L0d9d06fc
    sw	$a4,1380($s7)
    # Line 965
    ld	$s1,72($sp)
    # Line 963
    ld	$a6,200($sp)
    # Line 965
    move	$a0,$zero
    sra	$s1,$s1,0x1
    # Line 963
    addu	$a6,$a6,$a6
    move	$a2,$s1
    # Line 965
    beqz	$s1,.L0d9d086c
    # Line 963
    subu	$s0,$s0,$a6
.L0d9d0668:
    # Line 965
    sra	$a2,$a2,0x1
    # Line 966
    addiu	$a0,$a0,1
    # Line 965
    beqz	$a2,.L0d9d0680
    sra	$a2,$a2,0x1
    bnez	$a2,.L0d9d0668
    # Line 966
    addiu	$a0,$a0,1
.L0d9d0680:
    # Line 967
    ld	$s2,80($sp)
    sra	$s2,$s2,0x1
    move	$a4,$zero
    # Line 969
    move	$a2,$zero
    # Line 967
    beqz	$s2,.L0d9d0874
    move	$a3,$s2
.L0d9d0698:
    sra	$a3,$a3,0x1
    # Line 968
    addiu	$a4,$a4,1
    # Line 967
    beqz	$a3,.L0d9d06b0
    sra	$a3,$a3,0x1
    bnez	$a3,.L0d9d0698
    # Line 968
    addiu	$a4,$a4,1
.L0d9d06b0:
    # Line 969
    sra	$a3,$s0,0x1
    beqz	$a3,.L0d9d087c
    nop
.L0d9d06bc:
    sra	$a3,$a3,0x1
    # Line 970
    addiu	$a2,$a2,1
    # Line 969
    beqz	$a3,.L0d9d06d4
    sra	$a3,$a3,0x1
    bnez	$a3,.L0d9d06bc
    # Line 970
    addiu	$a2,$a2,1
.L0d9d06d4:
    # Line 974
    ld	$t9,88($sp)
    sw	$a2,152($t9)
    slt	$at,$a4,$a0
    # Line 972
    sw	$a0,144($t9)
    # Line 974
    movz	$a0,$a4,$at
    # Line 973
    sw	$a4,148($t9)
    # Line 976
    move	$t8,$a0
    # Line 974
    slt	$ra,$a2,$a0
    movz	$t8,$a2,$ra
    # Line 976
    sw	$t8,156($t9)
.L0d9d06fc:
    ld	$s7,208($sp)
    # Line 980
    ld	$s0,128($sp)
    ld	$s1,120($sp)
    ld	$s2,192($sp)
    ld	$s3,168($sp)
    ld	$ra,152($sp)
    ld	$s4,144($sp)
    li	$v0,1
    ld	$s6,160($sp)
    ld	$s8,176($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d9d072c:
    # Line 915
    ld	$a2,88($sp)
    move	$a3,$s4
    addiu	$a1,$sp,32
    ld	$a0,96($sp)
    jal	sub_0d9d0000
    addiu	$a2,$a2,1276
    bnez	$v0,.L0d9d05c8
    # Line 920
    li	$a4,0x8064
    li	$a3,0x8063
    beq	$s8,$a3,.L0d9d076c
    # Line 925
    nop	# was lw $t9, -16944($gp) # &memset
    # Line 920
    beq	$s8,$a4,.L0d9d076c
    # Line 925
    nop	# was lw $t9, -16944($gp) # &memset
    # Line 920
    li	$a5,0x8070
    bne	$s8,$a5,.L0d9d0798
    # Line 925
    nop	# was lw $t9, -16944($gp) # &memset
.L0d9d076c:
    move	$a1,$zero
    ld	$a0,104($sp)
    jal	memset
    li	$a2,68
    b	.L0d9d07a4
    nop
.L0d9d0784:
    # Line 843
    jalr	$t9
    nop
    li	$a0,1
    b	.L0d9d0508
    sllv	$a0,$a0,$v0
.L0d9d0798:
    # Line 929
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
.L0d9d07a4:
    ld	$s7,208($sp)
    # Line 980
    ld	$s0,128($sp)
    ld	$s1,120($sp)
    ld	$s2,192($sp)
    ld	$s3,168($sp)
    ld	$ra,152($sp)
    ld	$s4,144($sp)
    # Line 933
    move	$v0,$zero
    # Line 980
    ld	$s6,160($sp)
    ld	$s8,176($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d9d07d4:
    ld	$s5,216($sp)
    # Line 873
    sw	$zero,44($sp)
    # Line 872
    sw	$zero,40($sp)
    b	.L0d9d0590
    # Line 871
    sw	$zero,36($sp)
.L0d9d07e8:
    # Line 885
    ld	$a5,88($sp)
    lw	$a5,156($a5)
    move	$a2,$zero
    move	$a4,$a6
    blez	$a5,.L0d9d0850
    ld	$a3,88($sp)
.L0d9d0800:
    # Line 893
    beq	$s4,$a2,.L0d9d0814
    nop
    lw	$a7,1384($a3)
    xor	$a7,$a7,$a6
    movz	$a4,$zero,$a7
.L0d9d0814:
    # Line 892
    addiu	$a2,$a2,1
    slt	$t0,$a2,$a5
    beqz	$t0,.L0d9d0848
    nop
    # Line 893
    beq	$s4,$a2,.L0d9d0838
    nop
    lw	$t1,1452($a3)
    xor	$t1,$t1,$a6
    movz	$a4,$zero,$t1
.L0d9d0838:
    # Line 892
    addiu	$a2,$a2,1
    slt	$t2,$a2,$a5
    bnez	$t2,.L0d9d0800
    addiu	$a3,$a3,136
.L0d9d0848:
    beqz	$a4,.L0d9d0884
    # Line 901
    nop	# was lw $t9, -30984($gp) # &__glOdysseyDestroyPMObj
.L0d9d0850:
    # Line 899
    # lw $t9, -30988($gp) # &__glOdysseyDestroyPMObjGroup
    ld	$a1,88($sp)
    ld	$a0,96($sp)
    jal	__glOdysseyDestroyPMObjGroup
    addiu	$a1,$a1,1276
    b	.L0d9d05cc
    # Line 950
    ld	$ra,112($sp)
.L0d9d086c:
    b	.L0d9d0680
    # Line 965
    move	$a0,$zero
.L0d9d0874:
    b	.L0d9d06b0
    # Line 967
    move	$a4,$zero
.L0d9d087c:
    b	.L0d9d06d4
    # Line 969
    move	$a2,$zero
.L0d9d0884:
    # Line 901
    ld	$a1,88($sp)
    move	$a2,$s4
    ld	$a0,96($sp)
    jalr	$t9
    addiu	$a1,$a1,1276
    b	.L0d9d05cc
    # Line 950
    ld	$ra,112($sp)
.end AllocateGfxMemForTexture

# Function: LoadTextureFromHost
# Declared: Line 984 (Source lines: 988-1203)
# Address: 0x0d9d08a0 - 0x0d9d0e04 (Size: 1380 bytes, Frame: 128)
.ent LoadTextureFromHost
LoadTextureFromHost:
    # Line 988
    addiu	$sp,$sp,-384
    sd	$s6,256($sp)
    # Line 1007
    lw	$t2,388($sp)
    # Line 988
    sd	$s0,264($sp)
    move	$v0,$a1
    move	$s0,$a0
    sd	$s1,272($sp)
    move	$s1,$a5
    # Line 1007
    beqz	$t2,.L0d9d0c90
    # Line 1001
    lw	$s6,4112($zero)
    # Line 1007
    lw	$a0,396($sp)
    beqz	$a0,.L0d9d0c90
    lw	$a5,404($sp)
    beqz	$a5,.L0d9d0c90
    nop
    sd	$a7,216($sp)
    sd	$a2,200($sp)
    sd	$a4,192($sp)
    sd	$a6,184($sp)
    # Line 1008
    lui	$a1,0x1
    addu	$a1,$s6,$a1
    sd	$a1,240($sp)
    lw	$a1,25624($a1)
    sd	$a3,176($sp)
    sd	$v0,168($sp)
    beqz	$a1,.L0d9d091c
    sd	$ra,280($sp)
    # Line 1013
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,9536
    bal __glOdysseyGetCurrentTexture
    move	$a0,$s6
.L0d9d091c:
    # Line 1016
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    move	$a0,$s6
    bal __glOdysseyGetCurrentTexture
    move	$a1,$s0
    # Line 1018
    ld	$at,168($sp)
    sll	$ra,$at,0x4
    addu	$ra,$ra,$at
    sll	$ra,$ra,0x2
    addu	$ra,$v0,$ra
    lw	$a5,1404($ra)
    # Line 1016
    sd	$v0,232($sp)
    # Line 1018
    li	$a0,0x806f
    # Line 1029
    li	$a1,3552
    # Line 1018
    addiu	$ra,$ra,1364
    beqz	$a5,.L0d9d09ac
    sd	$ra,248($sp)
    # Line 1029
    beq	$a0,$s0,.L0d9d0984
    li	$a0,3553
    beq	$s0,$a0,.L0d9d0998
    # Line 1034
    ld	$a4,184($sp)
    # Line 1029
    beq	$s0,$a1,.L0d9d09a4
    # Line 1040
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d0c90
    ld	$ra,280($sp)
.L0d9d0984:
    # Line 1031
    ld	$a2,216($sp)
    subu	$a3,$a2,$a5
    addiu	$a2,$a3,16
    sd	$a2,216($sp)
    # Line 1034
    ld	$a4,184($sp)
.L0d9d0998:
    subu	$a6,$a4,$a5
    addiu	$a4,$a6,16
    sd	$a4,184($sp)
.L0d9d09a4:
    # Line 1037
    subu	$s1,$s1,$a5
    addiu	$s1,$s1,16
.L0d9d09ac:
    sw	$zero,56($sp)
    sd	$zero,48($sp)
    sd	$zero,40($sp)
    sd	$zero,32($sp)
    sd	$zero,24($sp)
    sd	$zero,16($sp)
    sd	$zero,8($sp)
    sd	$zero,0($sp)
    # Line 1048
    sw	$zero,56($sp)
    # Line 1047
    sw	$zero,4($sp)
    # Line 1049
    ld	$t8,192($sp)
    # Line 1050
    ld	$a0,200($sp)
    # Line 1051
    ld	$a1,176($sp)
    # Line 1054
    # lw $t9, -28148($gp) # &__glSpecElementsPerGroup
    # Line 1051
    sw	$a1,12($sp)
    # Line 1050
    sw	$a0,8($sp)
    # Line 1054
    jal	__glSpecElementsPerGroup
    # Line 1049
    sw	$t8,44($sp)
    # Line 1054
    # lw $t9, -28144($gp) # &__glSpecBytesPerElement
    sd	$v0,224($sp)
    jal	__glSpecBytesPerElement
    ld	$a0,176($sp)
    ld	$at,224($sp)
    mult	$at,$v0
    lw	$t9,1224($s6)
    li	$ra,0x85a3
    mflo	$a0
    beq	$t9,$ra,.L0d9d0ccc
    li	$a2,1
    # Line 1062
    sw	$zero,40($sp)
    sd	$a0,208($sp)
.L0d9d0a28:
    lw	$ra,1192($s6)
    lw	$t0,388($sp)
    # Line 1064
    move	$t9,$ra
    movz	$t9,$t0,$ra
    sw	$t9,16($sp)
    lw	$t8,1212($s6)
    lw	$a7,396($sp)
    # Line 1068
    ld	$t2,208($sp)
    move	$t3,$t8
    movz	$t3,$a7,$t8
    sw	$t3,20($sp)
    lw	$t8,1204($s6)
    sltu	$t3,$t8,$t2
    movz	$t2,$t8,$t3
    # Line 1072
    sw	$t2,24($sp)
    # Line 1077
    lw	$t1,1200($s6)
    dsll32	$t1,$t1,0x0
    dsrl32	$t1,$t1,0x0
    dmtc1	$t1,$f3
    # Line 1089
    ld	$a2,168($sp)
    # Line 1097
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 1077
    cvt.s.l	$f3,$f3
    # Line 1091
    ld	$a0,248($sp)
    # Line 1088
    ld	$a3,232($sp)
    # Line 1077
    swc1	$f3,64($sp)
    # Line 1078
    lw	$a6,1196($s6)
    # Line 1080
    addiu	$a5,$sp,80
    sd	$zero,80($sp)
    sw	$zero,56($a5)
    # Line 1079
    mtc1	$t0,$f2
    # Line 1080
    sd	$zero,48($a5)
    mtc1	$a7,$f0
    sd	$zero,40($a5)
    sd	$zero,32($a5)
    # Line 1078
    dsll32	$a6,$a6,0x0
    # Line 1080
    sd	$zero,24($a5)
    # Line 1078
    dsrl32	$a6,$a6,0x0
    # Line 1080
    sd	$zero,16($a5)
    # Line 1078
    dmtc1	$a6,$f1
    # Line 1079
    cvt.s.w	$f2,$f2
    # Line 1080
    sd	$zero,8($a5)
    # Line 1085
    li	$a4,1
    # Line 1080
    cvt.s.w	$f0,$f0
    # Line 1087
    sb	$a4,91($sp)
    # Line 1086
    sb	$a4,90($sp)
    # Line 1078
    cvt.s.l	$f1,$f1
    # Line 1085
    sw	$a4,136($sp)
    # Line 1084
    sw	$zero,84($sp)
    # Line 1079
    add.s	$f2,$f2,$f3
    swc1	$f2,72($sp)
    # Line 1078
    swc1	$f1,68($sp)
    # Line 1080
    add.s	$f0,$f0,$f1
    swc1	$f0,76($sp)
    # Line 1088
    lw	$a3,1276($a3)
    # Line 1090
    sw	$zero,104($sp)
    # Line 1089
    sw	$a2,100($sp)
    # Line 1088
    sw	$a3,96($sp)
    # Line 1091
    lw	$a1,12($a0)
    sw	$a1,108($sp)
    # Line 1092
    lw	$v1,28($a0)
    sw	$v1,112($sp)
    # Line 1093
    lw	$v0,32($a0)
    sw	$v0,116($sp)
    # Line 1094
    lw	$at,8($a0)
    sw	$at,128($sp)
    # Line 1095
    lw	$ra,4($a0)
    sw	$ra,120($sp)
    # Line 1097
    addiu	$t9,$t9,-1072
    # Line 1096
    lw	$a1,4($a0)
    sw	$a1,124($sp)
    # Line 1097
    bal __glOdysseyGetCurrentTexture
    lw	$a0,0($a0)
    sw	$v0,132($sp)
    # Line 1100
    sw	$s1,144($sp)
    # Line 1101
    ld	$a1,184($sp)
    sw	$a1,148($sp)
    # Line 1104
    lw	$a5,31836($s6)
    # Line 1105
    ld	$a0,240($sp)
    # Line 1106
    ld	$a1,248($sp)
    # Line 1105
    lw	$a0,7572($a0)
    sw	$a0,31836($s6)
    # Line 1106
    li	$a2,8
    lw	$a1,0($a1)
    # Line 1116
    li	$s1,2
    # Line 1115
    lui	$t1,0x40
    # Line 1112
    lui	$a4,0x10
    # Line 1114
    lui	$t3,0x20
    # Line 1106
    beqz	$a1,.L0d9d0ca4
    # Line 1114
    nor	$t2,$t3,$zero
    # Line 1106
    beq	$a1,$a2,.L0d9d0ca4
    nop
    # Line 1112
    lbu	$a3,2520($s6)
    sltu	$a3,$zero,$a3
    lbu	$a1,2523($s6)
    nor	$a2,$a4,$zero
    sll	$a3,$a3,0x14
    and	$a0,$a0,$a2
    and	$a3,$a3,$a4
    sltu	$a1,$zero,$a1
    or	$a0,$a3,$a0
    sw	$a0,31836($s6)
.L0d9d0bbc:
    # Line 1115
    lbu	$a7,2522($s6)
    # Line 1116
    li	$a4,0x806f
    # Line 1114
    lbu	$t0,2521($s6)
    # Line 1116
    sll	$a6,$a1,0x17
    # Line 1115
    sltu	$a7,$zero,$a7
    sll	$a7,$a7,0x16
    # Line 1114
    sltu	$t0,$zero,$t0
    and	$t2,$a0,$t2
    sll	$t0,$t0,0x15
    # Line 1115
    and	$a7,$a7,$t1
    # Line 1114
    and	$t0,$t0,$t3
    # Line 1115
    nor	$t1,$t1,$zero
    # Line 1114
    or	$t0,$t0,$t2
    # Line 1115
    and	$t0,$t0,$t1
    # Line 1116
    lui	$t1,0x80
    # Line 1115
    or	$a7,$a7,$t0
    # Line 1116
    nor	$t0,$t1,$zero
    sd	$a5,160($sp)
    and	$a6,$a6,$t1
    and	$a7,$a7,$t0
    or	$a6,$a6,$a7
    beq	$a4,$s0,.L0d9d0cdc
    sw	$a6,31836($s6)
    # Line 1125
    # lw $t9, -31560($gp) # &__glOdysseyImageXfer
    addiu	$a4,$sp,144
    move	$a3,$zero
    addiu	$a2,$sp,64
    addiu	$a1,$sp,0
    jal	__glOdysseyImageXfer
    addiu	$a0,$sp,80
    sd	$s4,288($sp)
    sd	$s3,296($sp)
.L0d9d0c3c:
    ld	$s3,296($sp)
    ld	$s4,288($sp)
    # Line 1193
    ld	$s1,160($sp)
    sw	$s1,31836($s6)
    # Line 1203
    ld	$s6,256($sp)
    # Line 1202
    ld	$t1,232($sp)
    # Line 1194
    ld	$s1,240($sp)
    # Line 1201
    ld	$t2,248($sp)
    # Line 1194
    lw	$s0,26976($s1)
    ld	$ra,280($sp)
    ori	$s0,$s0,0x80
    sw	$s0,26976($s1)
    li	$t3,2
    sw	$t3,4120($zero)
    # Line 1201
    li	$t0,1
    sw	$t0,20($t2)
    # Line 1202
    sw	$t0,1280($t1)
    # Line 1203
    ld	$s0,264($sp)
    ld	$s1,272($sp)
    jr	$ra
    addiu	$sp,$sp,384
.L0d9d0c90:
    ld	$s6,256($sp)
    ld	$s0,264($sp)
    ld	$s1,272($sp)
    jr	$ra
    addiu	$sp,$sp,384
.L0d9d0ca4:
    # Line 1109
    lbu	$a1,2523($s6)
    lui	$t9,0x10
    sltu	$a1,$zero,$a1
    nor	$a2,$t9,$zero
    sll	$t8,$a1,0x14
    and	$a0,$a0,$a2
    and	$t8,$t8,$t9
    or	$a0,$t8,$a0
    b	.L0d9d0bbc
    sw	$a0,31836($s6)
.L0d9d0ccc:
    # Line 1060
    sw	$a2,40($sp)
    # Line 1059
    srl	$a0,$a0,0x1
    # Line 1060
    b	.L0d9d0a28
    sd	$a0,208($sp)
.L0d9d0cdc:
    # Line 1137
    ld	$v0,248($sp)
    lw	$v1,4($v0)
    lw	$v0,16($v0)
    sllv	$v1,$s1,$v1
    mult	$v0,$v1
    # Line 1147
    ld	$at,208($sp)
    lw	$ra,16($sp)
    sd	$s3,296($sp)
    # Line 1137
    mflo	$s3
    nop
    nop
    # Line 1147
    multu	$ra,$at
    lw	$t8,24($sp)
    dsll32	$t8,$t8,0x0
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f13
    mflo	$t9
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f12
    cvt.s.l	$f13,$f13
    cvt.s.l	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    sd	$s4,288($sp)
    # Line 1137
    sll	$s3,$s3,0x8
    # Line 1147
    sdc1	$f13,152($sp)
    jal	ceilf
    div.s	$f12,$f12,$f13
    # Line 1152
    ldc1	$f13,152($sp)
    mul.s	$f13,$f0,$f13
    trunc.l.s	$f13,$f13
    dmfc1	$at,$f13
    lw	$v0,20($sp)
    sll	$at,$at,0x0
    multu	$at,$v0
    # Line 1158
    lw	$ra,1208($s6)
    # Line 1152
    mflo	$s4
    nop
    nop
    # Line 1158
    multu	$ra,$s4
    lw	$t9,404($sp)
    ld	$s0,192($sp)
    mflo	$t8
    beqz	$t9,.L0d9d0c3c
    addu	$s0,$s0,$t8
    sd	$s5,312($sp)
    ld	$s5,216($sp)
    multu	$s5,$s3
    sd	$s2,304($sp)
    move	$s2,$s5
    addu	$s5,$s5,$t9
    mflo	$s1
    nop
    nop
    nop
    nop
    nop
.L0d9d0dc0:
    # Line 1186
    addiu	$a4,$sp,144
    # lw $t9, -31560($gp) # &__glOdysseyImageXfer
    move	$a3,$zero
    addiu	$a2,$sp,64
    addiu	$a1,$sp,0
    # Line 1183
    sw	$s0,44($sp)
    # Line 1180
    srl	$at,$s1,0x4
    # Line 1186
    addiu	$a0,$sp,80
    jal	__glOdysseyImageXfer
    # Line 1180
    sw	$at,104($sp)
    # Line 1163
    addiu	$s2,$s2,1
    addu	$s1,$s1,$s3
    bne	$s2,$s5,.L0d9d0dc0
    # Line 1189
    addu	$s0,$s4,$s0
    ld	$s2,304($sp)
    b	.L0d9d0c3c
    ld	$s5,312($sp)
.end LoadTextureFromHost

# Function: LoadTextureFromReadable
# Declared: Line 1206 (Source lines: 1210-1350)
# Address: 0x0d9d0e10 - 0x0d9d1198 (Size: 904 bytes, Frame: 144)
.ent LoadTextureFromReadable
LoadTextureFromReadable:
    # Line 1210
    addiu	$sp,$sp,-272
    sd	$s0,176($sp)
    sd	$s1,168($sp)
    move	$v0,$a1
    move	$s1,$a0
    sd	$s2,184($sp)
    move	$s2,$a2
    # Line 1224
    beqz	$a7,.L0d9d1124
    # Line 1218
    lw	$s0,4112($zero)
    # Line 1224
    lw	$a0,276($sp)
    beqz	$a0,.L0d9d1124
    nop
    sd	$a4,136($sp)
    sd	$a6,128($sp)
    sd	$a7,120($sp)
    sd	$a5,112($sp)
    # Line 1225
    lui	$a1,0x1
    addu	$a1,$s0,$a1
    sd	$a1,152($sp)
    lw	$a1,25624($a1)
    sd	$a3,104($sp)
    sd	$v0,96($sp)
    beqz	$a1,.L0d9d0e80
    sd	$ra,192($sp)
    # Line 1230
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,9536
    bal __glOdysseyGetCurrentTexture
    move	$a0,$s0
.L0d9d0e80:
    # Line 1233
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    move	$a0,$s0
    bal __glOdysseyGetCurrentTexture
    move	$a1,$s1
    # Line 1235
    ld	$t3,96($sp)
    sll	$t2,$t3,0x4
    addu	$t2,$t2,$t3
    sll	$t2,$t2,0x2
    addu	$t2,$v0,$t2
    lw	$a2,1404($t2)
    # Line 1233
    sd	$v0,144($sp)
    # Line 1235
    li	$a0,0x806f
    # Line 1246
    li	$t9,3553
    # Line 1235
    addiu	$ra,$t2,1364
    beqz	$a2,.L0d9d0f10
    sd	$ra,160($sp)
    # Line 1246
    beq	$a0,$s1,.L0d9d0eec
    # Line 1254
    subu	$s2,$s2,$a2
    # Line 1246
    beq	$s1,$t9,.L0d9d0efc
    li	$ra,3552
    beq	$s1,$ra,.L0d9d0f10
    # Line 1254
    addiu	$s2,$s2,16
    # Line 1257
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d1124
    ld	$ra,192($sp)
.L0d9d0eec:
    # Line 1248
    ld	$at,136($sp)
    subu	$v0,$at,$a2
    addiu	$at,$v0,16
    sd	$at,136($sp)
.L0d9d0efc:
    # Line 1251
    ld	$v1,104($sp)
    subu	$a0,$v1,$a2
    addiu	$v1,$a0,16
    sd	$v1,104($sp)
    # Line 1254
    addiu	$s2,$s2,16
.L0d9d0f10:
    # Line 1283
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 1275
    ld	$a1,96($sp)
    # Line 1266
    lw	$a5,276($sp)
    sd	$zero,16($sp)
    addiu	$a4,$sp,16
    sw	$zero,56($a4)
    sd	$zero,48($a4)
    sd	$zero,40($a4)
    sd	$zero,32($a4)
    sd	$zero,24($a4)
    sd	$zero,16($a4)
    sd	$zero,8($a4)
    # Line 1264
    ld	$a6,128($sp)
    # Line 1263
    ld	$t0,112($sp)
    # Line 1271
    li	$a3,1
    # Line 1264
    mtc1	$a6,$f2
    # Line 1265
    ld	$a7,120($sp)
    # Line 1273
    sb	$a3,27($sp)
    # Line 1263
    mtc1	$t0,$f3
    # Line 1266
    daddu	$a5,$a5,$a6
    # Line 1272
    sb	$a3,26($sp)
    # Line 1265
    daddu	$a7,$a7,$t0
    # Line 1266
    dmtc1	$a5,$f0
    # Line 1271
    sw	$a3,72($sp)
    # Line 1264
    cvt.s.w	$f2,$f2
    # Line 1265
    dmtc1	$a7,$f1
    # Line 1270
    sw	$zero,20($sp)
    # Line 1263
    cvt.s.w	$f3,$f3
    # Line 1274
    ld	$a2,144($sp)
    # Line 1266
    cvt.s.l	$f0,$f0
    # Line 1264
    swc1	$f2,4($sp)
    # Line 1265
    cvt.s.l	$f1,$f1
    # Line 1263
    swc1	$f3,0($sp)
    # Line 1266
    swc1	$f0,12($sp)
    # Line 1265
    swc1	$f1,8($sp)
    # Line 1274
    lw	$a2,1276($a2)
    # Line 1276
    sw	$zero,40($sp)
    # Line 1275
    sw	$a1,36($sp)
    # Line 1274
    sw	$a2,32($sp)
    # Line 1277
    lw	$a0,1376($t2)
    sw	$a0,44($sp)
    # Line 1278
    lw	$v1,1392($t2)
    sw	$v1,48($sp)
    # Line 1279
    lw	$v0,1396($t2)
    sw	$v0,52($sp)
    # Line 1280
    lw	$at,1372($t2)
    sw	$at,64($sp)
    # Line 1281
    lw	$ra,1368($t2)
    sw	$ra,56($sp)
    # Line 1283
    addiu	$t9,$t9,-1072
    # Line 1282
    lw	$t8,1368($t2)
    sw	$t8,60($sp)
    # Line 1283
    bal __glOdysseyGetCurrentTexture
    lw	$a0,1364($t2)
    # Line 1286
    sw	$s2,80($sp)
    # Line 1283
    sw	$v0,68($sp)
    # Line 1291
    ld	$a0,152($sp)
    # Line 1287
    ld	$a2,104($sp)
    sw	$a2,84($sp)
    # Line 1291
    lw	$a0,7572($a0)
    # Line 1290
    lw	$a1,31836($s0)
    sd	$a1,88($sp)
    # Line 1292
    ld	$a1,160($sp)
    # Line 1291
    sw	$a0,31836($s0)
    # Line 1292
    lw	$a1,0($a1)
    li	$a3,8
    # Line 1301
    lui	$t0,0x40
    # Line 1302
    li	$s2,2
    # Line 1298
    lui	$a5,0x10
    # Line 1292
    beqz	$a1,.L0d9d1170
    # Line 1298
    nor	$a2,$a5,$zero
    # Line 1292
    beq	$a1,$a3,.L0d9d1170
    nop
    # Line 1298
    lbu	$a4,2520($s0)
    sltu	$a4,$zero,$a4
    lbu	$a1,2523($s0)
    sll	$a4,$a4,0x14
    and	$a0,$a0,$a2
    and	$a4,$a4,$a5
    sltu	$a1,$zero,$a1
    or	$a0,$a4,$a0
    sw	$a0,31836($s0)
.L0d9d1058:
    # Line 1301
    lbu	$a6,2522($s0)
    # Line 1302
    sll	$a5,$a1,0x17
    # Line 1300
    lui	$t2,0x20
    lbu	$a7,2521($s0)
    nor	$t1,$t2,$zero
    # Line 1301
    sltu	$a6,$zero,$a6
    sll	$a6,$a6,0x16
    # Line 1300
    sltu	$a7,$zero,$a7
    and	$t1,$a0,$t1
    sll	$a7,$a7,0x15
    # Line 1301
    and	$a6,$a6,$t0
    # Line 1300
    and	$a7,$a7,$t2
    # Line 1301
    nor	$t0,$t0,$zero
    # Line 1300
    or	$a7,$a7,$t1
    # Line 1301
    and	$a7,$a7,$t0
    # Line 1302
    lui	$t0,0x80
    # Line 1301
    or	$a6,$a6,$a7
    # Line 1302
    nor	$a7,$t0,$zero
    and	$a5,$a5,$t0
    and	$a6,$a6,$a7
    or	$a5,$a5,$a6
    li	$a6,0x806f
    beq	$a6,$s1,.L0d9d1138
    sw	$a5,31836($s0)
.L0d9d10b8:
    # Line 1336
    addiu	$a4,$sp,80
    move	$a3,$zero
    # lw $t9, -31560($gp) # &__glOdysseyImageXfer
    addiu	$a2,$sp,0
    lui	$a1,0x1
    addiu	$a0,$sp,16
    ori	$a1,$a1,0x1dd4
    ld	$s1,88($sp)
    jal	__glOdysseyImageXfer
    addu	$a1,$s0,$a1
    # Line 1340
    sw	$s1,31836($s0)
    # Line 1350
    ld	$s0,176($sp)
    ld	$s1,168($sp)
    # Line 1349
    ld	$a3,144($sp)
    # Line 1341
    ld	$a6,152($sp)
    # Line 1348
    ld	$a4,160($sp)
    # Line 1341
    lw	$a5,26976($a6)
    ld	$ra,192($sp)
    ori	$a5,$a5,0x80
    sw	$a5,26976($a6)
    sw	$s2,4120($zero)
    # Line 1348
    li	$a2,1
    sw	$a2,20($a4)
    # Line 1349
    sw	$a2,1280($a3)
    # Line 1350
    ld	$s2,184($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d9d1124:
    ld	$s1,168($sp)
    ld	$s0,176($sp)
    ld	$s2,184($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d9d1138:
    # Line 1313
    ld	$t1,160($sp)
    lw	$t2,4($t1)
    lw	$t1,16($t1)
    sllv	$t2,$s2,$t2
    mult	$t1,$t2
    # Line 1324
    ld	$a7,136($sp)
    # Line 1313
    mflo	$t0
    nop
    sll	$t0,$t0,0x8
    # Line 1324
    multu	$a7,$t0
    mflo	$a6
    # Line 1330
    srl	$a6,$a6,0x4
    b	.L0d9d10b8
    sw	$a6,40($sp)
.L0d9d1170:
    # Line 1295
    lbu	$a1,2523($s0)
    lui	$t3,0x10
    sltu	$a1,$zero,$a1
    nor	$a2,$t3,$zero
    sll	$t2,$a1,0x14
    and	$a0,$a0,$a2
    and	$t2,$t2,$t3
    or	$a0,$t2,$a0
    b	.L0d9d1058
    sw	$a0,31836($s0)
.end LoadTextureFromReadable

# Function: DownsampleTextureThruHW
# Declared: Line 1363 (Source lines: 1369-1622)
# Address: 0x0d9d11a0 - 0x0d9d1b30 (Size: 2448 bytes, Frame: 240)
.ent DownsampleTextureThruHW
DownsampleTextureThruHW:
    # Line 1369
    addiu	$sp,$sp,-240
    sd	$s3,168($sp)
    sd	$s4,160($sp)
    sd	$s5,128($sp)
    sd	$a1,88($sp)
    sd	$a2,184($sp)
    sd	$s8,48($sp)
    sd	$s2,152($sp)
    sd	$s0,144($sp)
    # Line 1388
    lw	$s0,4112($zero)
    # Line 1369
    sd	$s6,176($sp)
    # Line 1400
    lw	$v0,32688($s0)
    lw	$v1,32692($s0)
    # Line 1369
    sd	$s1,136($sp)
    # Line 1415
    sll	$s1,$a1,0x4
    # Line 1401
    lw	$s2,32736($s0)
    # Line 1415
    addu	$s1,$s1,$a1
    # Line 1401
    sd	$s2,56($sp)
    # Line 1415
    sll	$s1,$s1,0x2
    # Line 1400
    sd	$v1,80($sp)
    # Line 1415
    addu	$s1,$a0,$s1
    lw	$at,1368($s1)
    li	$s6,2
    sd	$v0,72($sp)
    # Line 1369
    move	$s8,$a0
    # Line 1400
    lw	$a0,32696($s0)
    # Line 1415
    beq	$s6,$at,.L0d9d1a68
    # Line 1400
    sd	$a0,64($sp)
    sd	$zero,96($sp)
.L0d9d1214:
    # Line 1417
    li	$a5,3552
    lw	$t8,12($s8)
    beq	$a5,$t8,.L0d9d1b14
    lw	$a0,31744($s0)
    # Line 1424
    ori	$t9,$a0,0x10
    sw	$t9,31744($s0)
.L0d9d122c:
    # Line 1426
    lui	$s3,0x1
    addu	$s2,$s3,$s0
    lw	$at,26976($s2)
    ori	$at,$at,0x4
    sw	$at,26976($s2)
    sw	$s6,4120($zero)
    # Line 1434
    lw	$a4,1364($s1)
    beqz	$a4,.L0d9d1a84
    li	$a0,1
    beq	$a0,$a4,.L0d9d1b20
    # Line 1440
    li	$a0,5
    # Line 1445
    move	$v0,$a4
    sd	$ra,208($sp)
    # Line 1434
    li	$v1,8
    sd	$s7,216($sp)
    # Line 1443
    li	$a0,10
    xor	$v1,$a4,$v1
    movz	$v0,$a0,$v1
    sd	$v0,192($sp)
.L0d9d1278:
    # Line 1449
    ld	$t8,184($sp)
    sll	$s7,$t8,0x4
    addu	$s7,$s7,$t8
    sll	$s7,$s7,0x2
    addu	$s7,$s8,$s7
    lw	$a2,1404($s7)
    # Line 1457
    li	$a1,16
    # Line 1450
    lw	$a3,12($s8)
    # Line 1466
    lw	$a0,1392($s1)
    # Line 1457
    subu	$a4,$a1,$a2
    # Line 1466
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    # Line 1450
    xor	$a3,$a5,$a3
    movz	$a4,$zero,$a2
    # Line 1449
    sd	$a2,104($sp)
    # Line 1466
    addu	$s4,$a2,$a2
    # Line 1450
    movz	$a2,$zero,$a3
    sd	$a4,112($sp)
    # Line 1461
    subu	$a1,$a1,$a2
    # Line 1450
    sd	$a2,200($sp)
    movz	$a1,$zero,$a2
    # Line 1466
    subu	$a0,$a0,$s4
    jal	__glOdysseyImageLogBase2
    sd	$a1,120($sp)
    lw	$t8,31940($s0)
    # Line 1467
    # lw $t9, -31152($gp) # &__glOdysseyImageLogBase2
    # Line 1466
    li	$at,-31745
    sll	$ra,$v0,0xa
    # Line 1467
    ld	$s5,200($sp)
    # Line 1466
    andi	$ra,$ra,0x7c00
    and	$t8,$t8,$at
    or	$t8,$t8,$ra
    sw	$t8,31940($s0)
    # Line 1467
    lw	$a0,1396($s1)
    addu	$s5,$s5,$s5
    jal	__glOdysseyImageLogBase2
    subu	$a0,$a0,$s5
    lw	$t0,31940($s0)
    li	$t2,-993
    sll	$t1,$v0,0x5
    andi	$t1,$t1,0x3e0
    and	$t0,$t0,$t2
    # Line 1469
    ld	$v0,104($sp)
    # Line 1467
    or	$t0,$t0,$t1
    # Line 1468
    li	$t1,-32
    # Line 1469
    lui	$a7,0xff03
    # Line 1468
    and	$t0,$t0,$t1
    sw	$t0,31940($s0)
    # Line 1476
    lui	$t3,0xfc
    # Line 1469
    ori	$a7,$a7,0xffff
    lw	$t2,1392($s1)
    lui	$a6,0xfffe
    lw	$t0,31944($s0)
    lui	$t1,0x1
    sd	$s4,32($sp)
    ori	$t1,$t1,0xffff
    subu	$t2,$t2,$s4
    lw	$a5,31956($s0)
    and	$t0,$a6,$t0
    and	$t2,$t1,$t2
    or	$t0,$t0,$t2
    beqz	$v0,.L0d9d1a98
    sw	$t0,31944($s0)
    # Line 1476
    or	$t3,$t0,$t3
    # Line 1475
    ori	$a5,$a5,0x3000
    sw	$a5,31956($s0)
    # Line 1476
    sw	$t3,31944($s0)
.L0d9d1380:
    # Line 1481
    lw	$t0,1396($s1)
    lw	$a4,31948($s0)
    ld	$t8,200($sp)
    subu	$t0,$t0,$s5
    and	$a4,$a6,$a4
    and	$t0,$t1,$t0
    # Line 1484
    lui	$t1,0xfc
    # Line 1481
    or	$a4,$a4,$t0
    sw	$a4,31948($s0)
    beqz	$t8,.L0d9d1ab0
    # Line 1484
    or	$t1,$a4,$t1
    # Line 1483
    ori	$a5,$a5,0xc00
    sw	$a5,31956($s0)
    # Line 1484
    sw	$t1,31948($s0)
.L0d9d13b8:
    # Line 1491
    ld	$t3,104($sp)
    # Line 1489
    lw	$t2,31952($s0)
    # Line 1494
    lw	$t8,31964($s0)
    lui	$t9,0x100
    # Line 1489
    and	$t2,$a6,$t2
    # Line 1491
    ld	$a6,200($sp)
    # Line 1490
    and	$t2,$a7,$t2
    # Line 1491
    beqz	$t3,.L0d9d1a3c
    # Line 1490
    sw	$t2,31952($s0)
    # Line 1494
    or	$t8,$t8,$t9
.L0d9d13e0:
    # Line 1493
    lui	$t3,0x1000
    # Line 1494
    sw	$t8,31964($s0)
    # Line 1493
    nor	$t3,$t3,$zero
    and	$t3,$a5,$t3
    sw	$t3,31956($s0)
.L0d9d13f4:
    # Line 1499
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a0,192($sp)
    addiu	$t9,$t9,-896
    lw	$a1,1388($s1)
    bal __glOdysseyGetCurrentTexture
    sd	$s5,40($sp)
    # Line 1501
    lw	$a5,31956($s0)
    lui	$a7,0x380
    sll	$a6,$v0,0x17
    nor	$t0,$a7,$zero
    and	$a6,$a6,$a7
    and	$a5,$a5,$t0
    or	$a5,$a5,$a6
    sw	$a5,31956($s0)
    # Line 1502
    lw	$a4,26976($s2)
    # Line 1508
    ld	$a3,88($sp)
    # Line 1502
    ori	$a4,$a4,0x200
    sw	$a4,26976($s2)
    # Line 1508
    sll	$a3,$a3,0x2
    # Line 1502
    sw	$s6,4120($zero)
    # Line 1508
    addu	$a3,$s8,$a3
    lw	$a4,32688($s0)
    lui	$a2,0x1fff
    lw	$a3,1300($a3)
    lui	$a1,0xe000
    ori	$a2,$a2,0xffff
    and	$a2,$a2,$a3
    and	$a1,$a1,$a4
    or	$a1,$a1,$a2
    sw	$a1,32688($s0)
    # Line 1509
    lw	$v0,1368($s1)
    lui	$v1,0xc000
    lui	$a0,0x3fff
    lw	$at,32692($s0)
    ori	$a0,$a0,0xffff
    sll	$v0,$v0,0x1e
    and	$at,$at,$a0
    and	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 1510
    ld	$v0,96($sp)
    lui	$v1,0x1c00
    nor	$a0,$v1,$zero
    sll	$v0,$v0,0x1a
    and	$at,$at,$a0
    and	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 1511
    ld	$v0,192($sp)
    lui	$v1,0x3f0
    nor	$a0,$v1,$zero
    sll	$v0,$v0,0x14
    # Line 1513
    lw	$t9,32696($s0)
    # Line 1511
    and	$at,$at,$a0
    and	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,32692($s0)
    # Line 1512
    li	$a6,-4096
    lw	$ra,1376($s1)
    # Line 1513
    and	$t9,$a6,$t9
    sw	$t9,32696($s0)
    # Line 1512
    and	$at,$a6,$at
    andi	$ra,$ra,0xfff
    or	$ra,$ra,$at
    sw	$ra,32692($s0)
    # Line 1513
    lw	$t8,-26576($s2)
    lui	$s4,0x1
    ori	$s5,$s4,0x46
    ori	$s4,$s4,0x443
    beqz	$t8,.L0d9d151c
    li	$a5,250
    # Line 1524
    sw	$zero,-26576($s2)
    sw	$s4,0($s3)
    sw	$a5,0($s3)
    sw	$s5,0($s3)
    sw	$s5,0($s3)
.L0d9d151c:
    lui	$a4,0x1
    ori	$a4,$a4,0xebc
    sw	$a4,0($s3)
    lw	$a3,32688($s0)
    sw	$a3,0($s3)
    lw	$a2,32692($s0)
    sw	$a2,0($s3)
    lw	$a1,32696($s0)
    sw	$a1,0($s3)
    sw	$zero,-26576($s2)
    sw	$s4,0($s3)
    li	$a0,250
    sw	$a0,0($s3)
    sw	$s5,0($s3)
    sw	$s5,0($s3)
    # Line 1531
    lw	$v1,26976($s2)
    ori	$v1,$v1,0x1000
    sw	$v1,26976($s2)
    sw	$s6,4120($zero)
    # Line 1534
    lw	$at,32736($s0)
    li	$v0,-64
    and	$at,$at,$v0
    ori	$at,$at,0x3c
    sw	$at,32736($s0)
    # Line 1536
    lw	$ra,26976($s2)
    # Line 1540
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 1536
    ori	$ra,$ra,0x800
    sw	$ra,26976($s2)
    sw	$s6,4120($zero)
    # Line 1539
    lw	$t1,1376($s7)
    lw	$t2,-26976($s2)
    # Line 1540
    addiu	$t9,$t9,-1072
    # Line 1539
    and	$t2,$a6,$t2
    andi	$t1,$t1,0xfff
    or	$t1,$t1,$t2
    sw	$t1,-26976($s2)
    # Line 1540
    bal __glOdysseyGetCurrentTexture
    lw	$a0,1364($s7)
    # Line 1541
    # lw $t9, -31556($gp) # &__glOdysseyImageCalcFieldFormat
    ld	$s1,104($sp)
    jal	__glOdysseyImageCalcFieldFormat
    # Line 1540
    move	$a0,$v0
    # Line 1542
    lw	$t2,-26972($s2)
    li	$t8,-113
    sll	$t3,$v0,0x4
    andi	$t3,$t3,0x70
    and	$t2,$t2,$t8
    or	$t2,$t2,$t3
    sw	$t2,-26972($s2)
    # Line 1543
    lw	$t3,1372($s7)
    li	$t8,-897
    sll	$t3,$t3,0x7
    and	$t2,$t2,$t8
    andi	$t3,$t3,0x380
    or	$t2,$t2,$t3
    sw	$t2,-26972($s2)
    # Line 1544
    lw	$t3,1368($s7)
    li	$t8,-7169
    sll	$t3,$t3,0xa
    # Line 1548
    ld	$t1,184($sp)
    # Line 1544
    and	$t2,$t2,$t8
    andi	$t3,$t3,0x1c00
    or	$t2,$t2,$t3
    sw	$t2,-26972($s2)
    # Line 1548
    lui	$a7,0xe000
    # Line 1545
    li	$t3,0xe000
    lw	$t8,1368($s7)
    # Line 1548
    sll	$t1,$t1,0x2
    # Line 1545
    nor	$t3,$t3,$zero
    and	$t2,$t2,$t3
    sll	$t8,$t8,0xd
    # Line 1549
    ldc1	$f4,_lit8_3fe0000000000000
    # Line 1546
    lui	$t3,0x8
    # Line 1545
    andi	$t8,$t8,0xe000
    # Line 1549
    lw	$a5,26976($s2)
    # Line 1546
    nor	$t3,$t3,$zero
    # Line 1545
    or	$t2,$t2,$t8
    # Line 1548
    lw	$t0,-26980($s2)
    # Line 1546
    and	$t2,$t2,$t3
    # Line 1547
    lui	$t3,0x800
    # Line 1548
    addu	$t1,$s8,$t1
    # Line 1547
    or	$t2,$t2,$t3
    sw	$t2,-26972($s2)
    # Line 1548
    and	$a7,$a7,$t0
    lui	$t0,0x1fff
    lw	$t1,1300($t1)
    # Line 1549
    ldc1	$f5,_lit8_3ff0000000000000
    lui	$a6,0x20
    # Line 1548
    ori	$t0,$t0,0xffff
    # Line 1549
    or	$a5,$a5,$a6
    sw	$a5,26976($s2)
    # Line 1548
    and	$t0,$t0,$t1
    or	$a7,$a7,$t0
    sw	$a7,-26980($s2)
    # Line 1549
    sw	$s6,4120($zero)
    beqz	$s1,.L0d9d1ac8
    lw	$a0,1392($s7)
    # Line 1553
    ld	$t9,32($sp)
    subu	$t9,$a0,$t9
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f2
    cvt.d.l	$f2,$f2
    # Line 1554
    div.d	$f0,$f4,$f2
    # Line 1553
    ldc1	$f1,_lit8_bff0000000000000
    div.d	$f1,$f1,$f2
    # Line 1554
    add.d	$f0,$f5,$f0
    ld	$s8,48($sp)
    # Line 1553
    cvt.s.d	$f1,$f1
    sdc1	$f1,8($sp)
    # Line 1554
    cvt.s.d	$f0,$f0
    sdc1	$f0,16($sp)
.L0d9d16dc:
    # Line 1557
    ld	$ra,200($sp)
    beqz	$ra,.L0d9d1af0
    lw	$a0,1396($s7)
    # Line 1560
    ld	$at,40($sp)
    subu	$at,$a0,$at
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f7
    cvt.d.l	$f7,$f7
    # Line 1561
    div.d	$f3,$f4,$f7
    # Line 1560
    ldc1	$f6,_lit8_bff0000000000000
    div.d	$f6,$f6,$f7
    # Line 1561
    add.d	$f3,$f5,$f3
    # Line 1560
    cvt.s.d	$f6,$f6
    sdc1	$f6,24($sp)
    # Line 1561
    cvt.s.d	$f3,$f3
    sdc1	$f3,0($sp)
.L0d9d1720:
    # Line 1571
    lw	$a7,31780($s0)
    # Line 1575
    ld	$a4,112($sp)
    # Line 1573
    sw	$zero,31780($s0)
    # Line 1575
    lui	$a0,0xff
    # Line 1570
    lw	$s1,31776($s0)
    # Line 1575
    ori	$a0,$a0,0xf000
    sll	$a2,$a4,0xc
    and	$a2,$a0,$a2
    sw	$a2,31776($s0)
    # Line 1576
    lw	$a3,1392($s7)
    addu	$a3,$a3,$a4
    andi	$a3,$a3,0xfff
    or	$a2,$a2,$a3
    sw	$a2,31776($s0)
    # Line 1577
    ld	$a2,120($sp)
    sll	$a1,$a2,0xc
    and	$a0,$a0,$a1
    sw	$a0,31780($s0)
    # Line 1578
    lw	$a1,1396($s7)
    addu	$a1,$a1,$a2
    andi	$a1,$a1,0xfff
    or	$a0,$a0,$a1
    sw	$a0,31780($s0)
    # Line 1580
    lw	$v1,26976($s2)
    ori	$v1,$v1,0x10
    sw	$v1,26976($s2)
    sw	$s6,4120($zero)
    lw	$v0,26976($s2)
    beqz	$v0,.L0d9d17b0
    # Line 1593
    ld	$t8,112($sp)
    # Line 1583
    # lw $t9, -32148($gp) # &__glOdysseyValidateHardware
    sd	$a7,224($sp)
    jal	__glOdysseyValidateHardware
    move	$a0,$s0
    ld	$a7,224($sp)
    # Line 1593
    ld	$t8,112($sp)
.L0d9d17b0:
    mtc1	$zero,$f17
    ld	$t2,120($sp)
    dsll32	$a3,$t8,0x0
    # Line 1591
    li	$v0,7
    # Line 1593
    dsll32	$at,$t2,0x0
    # Line 1591
    lui	$t0,0x1
    # Line 1593
    dsrl32	$at,$at,0x0
    # Line 1591
    ori	$v1,$t0,0x4400
    sw	$v1,0($s3)
    # Line 1593
    dsrl32	$a3,$a3,0x0
    lui	$t9,0x8f80
    # Line 1591
    sw	$v0,0($s3)
    # Line 1593
    dmtc1	$a3,$f16
    ori	$t9,$t9,0xb968
    sw	$t9,0($s3)
    dmtc1	$at,$f15
    swc1	$f17,0($s3)
    swc1	$f17,0($s3)
    cvt.s.l	$f16,$f16
    swc1	$f17,0($s3)
    cvt.s.l	$f15,$f15
    swc1	$f17,0($s3)
    mtc1	$zero,$f12
    swc1	$f16,0($s3)
    swc1	$f15,0($s3)
    swc1	$f12,0($s3)
    lw	$t3,1392($s7)
    addu	$t3,$t3,$t8
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f14
    cvt.s.l	$f14,$f14
    swc1	$f14,0($s3)
    lw	$t1,1396($s7)
    addu	$t1,$t1,$t2
    dsll32	$t1,$t1,0x0
    dsrl32	$t1,$t1,0x0
    ld	$ra,208($sp)
    dmtc1	$t1,$f13
    ld	$a2,56($sp)
    ldc1	$f8,0($sp)
    ldc1	$f9,16($sp)
    cvt.s.l	$f13,$f13
    ldc1	$f10,24($sp)
    ldc1	$f11,8($sp)
    swc1	$f13,0($s3)
    swc1	$f12,0($s3)
    swc1	$f11,0($s3)
    swc1	$f10,0($s3)
    swc1	$f9,0($s3)
    swc1	$f8,0($s3)
    # Line 1601
    ori	$t0,$t0,0x4001
    sw	$t0,0($s3)
    lw	$a3,-26892($s2)
    ld	$a4,64($sp)
    li	$a1,250
    ld	$a5,72($sp)
    lui	$a0,0x1
    ld	$a6,80($sp)
    beqz	$a3,.L0d9d1988
    ori	$a0,$a0,0xebc
    ld	$s7,216($sp)
    sw	$s4,0($s3)
    move	$a5,$a1
    sw	$a5,0($s3)
    sw	$s5,0($s3)
    sw	$s5,0($s3)
    # Line 1610
    ld	$t9,72($sp)
    ld	$t8,80($sp)
    ld	$t3,64($sp)
    sw	$t3,32696($s0)
    sw	$t8,32692($s0)
    sw	$t9,32688($s0)
    # Line 1612
    sw	$zero,-26576($s2)
    sw	$s4,0($s3)
    sw	$a5,0($s3)
    sw	$s5,0($s3)
    lui	$t2,0x1
    sw	$s5,0($s3)
    ori	$t2,$t2,0xebc
    sw	$t2,0($s3)
    lw	$t1,32688($s0)
    sw	$t1,0($s3)
    lw	$t0,32692($s0)
    sw	$t0,0($s3)
    lw	$a6,32696($s0)
    sw	$a6,0($s3)
    sw	$zero,-26576($s2)
    sw	$s4,0($s3)
    sw	$a5,0($s3)
    sw	$s5,0($s3)
    sw	$s5,0($s3)
    # Line 1622
    ld	$s3,168($sp)
    ld	$s4,160($sp)
    # Line 1614
    lw	$a4,26976($s2)
    # Line 1616
    ld	$a3,56($sp)
    # Line 1614
    ori	$a4,$a4,0x1000
    sw	$a4,26976($s2)
    sw	$s6,4120($zero)
    # Line 1616
    sw	$a3,32736($s0)
    # Line 1617
    lw	$a2,26976($s2)
    # Line 1622
    ld	$s5,128($sp)
    # Line 1617
    ori	$a2,$a2,0x800
    sw	$a2,26976($s2)
    sw	$s6,4120($zero)
    # Line 1619
    sw	$s1,31776($s0)
    # Line 1620
    sw	$a7,31780($s0)
    # Line 1622
    ld	$s0,144($sp)
    # Line 1621
    lw	$a1,26976($s2)
    # Line 1622
    ld	$s1,136($sp)
    # Line 1621
    ori	$a1,$a1,0x10
    sw	$a1,26976($s2)
    move	$ra,$ra
    # Line 1622
    ld	$s2,152($sp)
    # Line 1621
    sw	$s6,4120($zero)
    # Line 1622
    ld	$s6,176($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d9d1988:
    ld	$s7,216($sp)
    # Line 1610
    sw	$a4,32696($s0)
    sw	$a6,32692($s0)
    sw	$a5,32688($s0)
    # Line 1612
    sw	$zero,-26576($s2)
    sw	$s4,0($s3)
    sw	$a1,0($s3)
    sw	$s5,0($s3)
    sw	$s5,0($s3)
    sw	$a0,0($s3)
    lw	$a4,32688($s0)
    sw	$a4,0($s3)
    lw	$a3,32692($s0)
    sw	$a3,0($s3)
    lw	$a0,32696($s0)
    sw	$a0,0($s3)
    sw	$zero,-26576($s2)
    sw	$s4,0($s3)
    sw	$a1,0($s3)
    sw	$s5,0($s3)
    sw	$s5,0($s3)
    # Line 1622
    ld	$s3,168($sp)
    # Line 1614
    lw	$v1,26976($s2)
    # Line 1622
    ld	$s4,160($sp)
    # Line 1614
    ori	$v1,$v1,0x1000
    sw	$v1,26976($s2)
    sw	$s6,4120($zero)
    # Line 1616
    sw	$a2,32736($s0)
    # Line 1617
    lw	$v0,26976($s2)
    # Line 1622
    ld	$s5,128($sp)
    # Line 1617
    ori	$v0,$v0,0x800
    sw	$v0,26976($s2)
    sw	$s6,4120($zero)
    # Line 1619
    sw	$s1,31776($s0)
    # Line 1620
    sw	$a7,31780($s0)
    # Line 1622
    ld	$s0,144($sp)
    # Line 1621
    lw	$at,26976($s2)
    # Line 1622
    ld	$s1,136($sp)
    # Line 1621
    ori	$at,$at,0x10
    sw	$at,26976($s2)
    # Line 1622
    ld	$s2,152($sp)
    # Line 1621
    sw	$s6,4120($zero)
    # Line 1622
    ld	$s6,176($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d9d1a3c:
    # Line 1491
    bnez	$a6,.L0d9d13e0
    # Line 1494
    or	$t8,$t8,$t9
    # Line 1496
    lui	$t1,0x1000
    # Line 1497
    lw	$a7,31964($s0)
    lui	$t0,0x100
    # Line 1496
    or	$t1,$a5,$t1
    sw	$t1,31956($s0)
    # Line 1497
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    b	.L0d9d13f4
    sw	$a7,31964($s0)
.L0d9d1a68:
    # Line 1415
    lw	$t3,1372($s1)
    move	$t8,$s6
    move	$t2,$zero
    xor	$t3,$s6,$t3
    movz	$t2,$t8,$t3
    b	.L0d9d1214
    sd	$t2,96($sp)
.L0d9d1a84:
    # Line 1436
    li	$t8,4
    sd	$t8,192($sp)
    sd	$ra,208($sp)
    b	.L0d9d1278
    sd	$s7,216($sp)
.L0d9d1a98:
    # Line 1479
    and	$ra,$a7,$t0
    sw	$ra,31944($s0)
    # Line 1478
    li	$t9,-12289
    and	$a5,$a5,$t9
    b	.L0d9d1380
    sw	$a5,31956($s0)
.L0d9d1ab0:
    # Line 1487
    and	$v0,$a7,$a4
    sw	$v0,31948($s0)
    # Line 1486
    li	$at,-3073
    and	$a5,$a5,$at
    b	.L0d9d13b8
    sw	$a5,31956($s0)
.L0d9d1ac8:
    # Line 1557
    mtc1	$a0,$f17
    cvt.d.w	$f17,$f17
    div.d	$f17,$f4,$f17
    mtc1	$zero,$f18
    sub.d	$f17,$f5,$f17
    ld	$s8,48($sp)
    sdc1	$f18,8($sp)
    cvt.s.d	$f17,$f17
    b	.L0d9d16dc
    sdc1	$f17,16($sp)
.L0d9d1af0:
    # Line 1564
    mtc1	$a0,$f18
    cvt.d.w	$f18,$f18
    div.d	$f18,$f4,$f18
    mtc1	$zero,$f19
    sub.d	$f18,$f5,$f18
    sdc1	$f19,24($sp)
    cvt.s.d	$f18,$f18
    b	.L0d9d1720
    sdc1	$f18,0($sp)
.L0d9d1b14:
    # Line 1422
    ori	$v1,$a0,0x8
    b	.L0d9d122c
    sw	$v1,31744($s0)
.L0d9d1b20:
    sd	$a0,192($sp)
    sd	$ra,208($sp)
    # Line 1440
    b	.L0d9d1278
    sd	$s7,216($sp)
.end DownsampleTextureThruHW

# Function: DoMipmapHackHW
# Declared: Line 1626 (Source lines: 1628-1739)
# Address: 0x0d9d1b30 - 0x0d9d1db4 (Size: 644 bytes, Frame: 160)
.ent DoMipmapHackHW
DoMipmapHackHW:
    # Line 1628
    addiu	$sp,$sp,-160
    sd	$a1,72($sp)
    sd	$s5,88($sp)
    sd	$ra,104($sp)
    sd	$s4,112($sp)
    # Line 1643
    # lw $t9, -31148($gp) # &__glOdysseyImageSaveUserBuzzRasterState
    # Line 1628
    sd	$s0,80($sp)
    move	$s0,$a0
    move	$s4,$a2
    sd	$s3,96($sp)
    move	$s3,$a3
    # Line 1643
    jal	__glOdysseyImageSaveUserBuzzRasterState
    # Line 1637
    lw	$s5,12($a1)
    sd	$s0,64($sp)
    sd	$s8,152($sp)
    sd	$s2,144($sp)
    # Line 1644
    # lw $t9, -31144($gp) # &__glOdysseyImageLoadBuzzRasterState
    sd	$s6,136($sp)
    sd	$s7,128($sp)
    move	$a0,$zero
    jal	__glOdysseyImageLoadBuzzRasterState
    sd	$s1,120($sp)
    # Line 1662
    addiu	$t8,$s4,1
    sd	$t8,56($sp)
    # Line 1647
    sll	$s7,$s4,0x4
    ld	$s6,72($sp)
    addu	$s7,$s7,$s4
    sd	$s4,40($sp)
    # Line 1662
    move	$s0,$t8
    # Line 1647
    sll	$s7,$s7,0x2
    # Line 1662
    la	$s4,sub_0d9d0000
    slt	$t8,$s3,$t8
    # Line 1647
    addu	$s6,$s6,$s7
    # Line 1662
    xori	$s8,$t8,0x1
    # Line 1650
    lw	$s7,1404($s6)
    sd	$s3,32($sp)
    # Line 1662
    addiu	$s4,$s4,944
    # Line 1661
    xori	$t9,$s5,0xde0
    sltiu	$t9,$t9,1
    # Line 1660
    lw	$s1,1392($s6)
    # Line 1661
    move	$v0,$s7
    lw	$s2,1396($s6)
    # Line 1660
    addu	$a0,$s7,$s7
    # Line 1661
    movn	$v0,$zero,$t9
    # Line 1662
    sd	$s8,48($sp)
    # Line 1660
    subu	$s1,$s1,$a0
    # Line 1661
    addu	$s8,$v0,$v0
    # Line 1647
    lw	$s6,1388($s6)
    # Line 1662
    bne	$zero,$t8,.L0d9d1c6c
    # Line 1661
    subu	$s2,$s2,$s8
    # Line 1662
    ld	$s3,32($sp)
    sd	$a0,24($sp)
    sd	$v0,16($sp)
    addiu	$s3,$s3,1
    nop
    nop
.L0d9d1c10:
    # Line 1668
    move	$a7,$zero
    move	$a5,$s7
    li	$a4,1
    move	$a1,$s0
    move	$a0,$s5
    move	$t9,$s4
    # Line 1666
    li	$t0,1
    sra	$s2,$s2,0x1
    # Line 1664
    sra	$s1,$s1,0x1
    # Line 1666
    sltiu	$t1,$s2,1
    # Line 1668
    ld	$a2,24($sp)
    # Line 1664
    sltiu	$a3,$s1,1
    # Line 1666
    movn	$s2,$t0,$t1
    # Line 1668
    ld	$a6,16($sp)
    # Line 1664
    movn	$s1,$t0,$a3
    # Line 1668
    addu	$a3,$s8,$s2
    sw	$s6,4($sp)
    bal __glOdysseyGetCurrentTexture
    addu	$a2,$a2,$s1
    beqz	$v0,.L0d9d1d58
    # Line 1679
    nop	# was lw $t9, -31144($gp) # &__glOdysseyImageLoadBuzzRasterState
    # Line 1662
    addiu	$s0,$s0,1
    bne	$s3,$s0,.L0d9d1c10
.L0d9d1c6c:
    # Line 1688
    ld	$a0,64($sp)
    ld	$a3,32($sp)
    # lw $t9, -30968($gp) # &__glOdysseyOpenPMObjReference
    ld	$a1,72($sp)
    li	$a5,1
    ld	$a2,40($sp)
    addiu	$a4,$a1,1300
    jal	__glOdysseyOpenPMObjReference
    lw	$a1,1276($a1)
    ld	$s5,72($sp)
    ld	$s8,152($sp)
    # Line 1706
    li	$s6,2
    # Line 1688
    beqz	$v0,.L0d9d1d94
    ld	$s7,128($sp)
    # Line 1706
    ld	$a2,48($sp)
    ld	$s0,56($sp)
    beqz	$a2,.L0d9d1d08
    ld	$s3,56($sp)
    la	$s4,sub_0d9d0000
    sll	$s2,$s3,0x4
    addu	$s2,$s2,$s3
    ld	$s3,32($sp)
    addiu	$s4,$s4,4512
    sll	$s2,$s2,0x2
    ld	$s1,40($sp)
    addiu	$s3,$s3,1
    addu	$s2,$s2,$s5
    nop
    nop
.L0d9d1ce0:
    # Line 1713
    move	$t9,$s4
    move	$a0,$s5
    move	$a1,$s1
    bal __glOdysseyGetCurrentTexture
    move	$a2,$s0
    # Line 1706
    addiu	$s0,$s0,1
    addiu	$s2,$s2,68
    addiu	$s1,$s1,1
    bne	$s3,$s0,.L0d9d1ce0
    # Line 1716
    sw	$s6,1316($s2)
.L0d9d1d08:
    ld	$s0,80($sp)
    # Line 1726
    ld	$a0,64($sp)
    # lw $t9, -30956($gp) # &__glOdysseyClosePMObjReference
    ld	$a3,32($sp)
    ld	$a2,40($sp)
    jal	__glOdysseyClosePMObjReference
    lw	$a1,1276($s5)
    # Line 1737
    # lw $t9, -31144($gp) # &__glOdysseyImageLoadBuzzRasterState
    ld	$s5,88($sp)
    jal	__glOdysseyImageLoadBuzzRasterState
    li	$a0,1
    ld	$ra,104($sp)
    # Line 1739
    li	$v0,1
.L0d9d1d3c:
    ld	$s2,144($sp)
    ld	$s3,96($sp)
    ld	$s6,136($sp)
    ld	$s4,112($sp)
    ld	$s1,120($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9d1d58:
    # Line 1679
    jalr	$t9
    li	$a0,1
    ld	$s8,152($sp)
    ld	$s2,144($sp)
    ld	$s6,136($sp)
    ld	$s7,128($sp)
    ld	$s1,120($sp)
    # Line 1739
    ld	$s0,80($sp)
    ld	$ra,104($sp)
    ld	$s3,96($sp)
    # Line 1681
    move	$v0,$zero
    # Line 1739
    ld	$s4,112($sp)
    ld	$s5,88($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9d1d94:
    # Line 1698
    # lw $t9, -31144($gp) # &__glOdysseyImageLoadBuzzRasterState
    ld	$s0,80($sp)
    ld	$s5,88($sp)
    jal	__glOdysseyImageLoadBuzzRasterState
    li	$a0,1
    ld	$ra,104($sp)
    # Line 1700
    b	.L0d9d1d3c
    move	$v0,$zero
.end DoMipmapHackHW

# Function: DoMipmapHack
# Declared: Line 1744 (Source lines: 1752-1816)
# Address: 0x0d9d1dc0 - 0x0d9d1f84 (Size: 452 bytes, Frame: 48)
.ent DoMipmapHack
DoMipmapHack:
    # Line 1752
    lw	$at,1280($a1)
    addiu	$sp,$sp,-48
    # Line 1798
    li	$a7,1
    # Line 1752
    sd	$s3,24($sp)
    move	$s3,$a0
    sd	$s0,16($sp)
    beqz	$at,.L0d9d1f68
    move	$s0,$a1
    # Line 1763
    li	$v1,0x8095
    lw	$v0,12($a1)
    lw	$a0,156($a1)
    sw	$zero,1280($a1)
    # Line 1772
    lui	$a1,0x1
    sd	$s1,8($sp)
    # Line 1763
    beq	$v0,$v1,.L0d9d1f54
    # Line 1772
    ori	$a1,$a1,0x9ddc
    addu	$a1,$a1,$s3
    # Line 1771
    lw	$s1,96($s0)
    # Line 1772
    lw	$a1,0($a1)
    # Line 1771
    slt	$a3,$s1,$a0
    # Line 1772
    subu	$a1,$a0,$a1
    movz	$s1,$a0,$a3
    slt	$a2,$a1,$s1
    sd	$s2,0($sp)
    beqz	$a2,.L0d9d1e4c
    # Line 1771
    lw	$s2,92($s0)
    # Line 1776
    subu	$a0,$a1,$s2
    move	$s1,$a1
    bltz	$a0,.L0d9d1f7c
    # Line 1780
    sll	$a2,$a0,0x8
    andi	$a2,$a2,0x3fff
    sw	$a2,204($s0)
.L0d9d1e40:
    # Line 1781
    lw	$a3,160($s0)
    ori	$a3,$a3,0x4000
    sw	$a3,160($s0)
.L0d9d1e4c:
    slt	$a4,$s2,$s1
    beqz	$a4,.L0d9d1ee8
.L0d9d1e54:
    # Line 1807
    li	$v0,1
    # Line 1798
    addiu	$a0,$s2,1
    lui	$a1,0x1
    slt	$a5,$s1,$a0
    addiu	$t0,$s1,1
    ori	$a1,$a1,0x6418
    bnez	$a5,.L0d9d1f04
    addu	$a1,$a1,$s3
    sll	$a6,$t0,0x4
    addu	$a6,$a6,$t0
    sll	$a5,$a0,0x4
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a0
    addu	$a6,$s0,$a6
    sll	$a5,$a5,0x2
    b	.L0d9d1ea8
    addu	$a5,$a5,$s0
    nop
    nop
.L0d9d1ea0:
    beq	$a5,$a6,.L0d9d1f04
    nop
.L0d9d1ea8:
    # Line 1799
    lw	$t0,1392($a5)
    # Line 1798
    addiu	$a5,$a5,68
    # Line 1799
    blez	$t0,.L0d9d1ea0
    lw	$t1,1316($a5)
    bne	$t1,$a7,.L0d9d1ea0
    nop
    # Line 1807
    ld	$s1,8($sp)
    ld	$s2,0($sp)
    ld	$s3,24($sp)
    # Line 1802
    lw	$t2,160($s0)
    # Line 1801
    sw	$zero,204($s0)
    # Line 1802
    ori	$t2,$t2,0x4000
    sw	$t2,160($s0)
    # Line 1807
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d1ee8:
    ld	$s2,0($sp)
    ld	$s0,16($sp)
    # Line 1787
    li	$v0,1
    # Line 1807
    ld	$s1,8($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d1f04:
    # Line 1798
    lw	$a1,0($a1)
    beqz	$a1,.L0d9d1f24
    # Line 1813
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,9536
    sd	$ra,32($sp)
    bal __glOdysseyGetCurrentTexture
    move	$a0,$s3
    ld	$ra,32($sp)
.L0d9d1f24:
    # Line 1816
    # lw $t9, -32712($gp) # &sub_0d9d0000
    move	$a1,$s0
    ld	$s0,16($sp)
    move	$a3,$s1
    ld	$s1,8($sp)
    addiu	$t9,$t9,6960
    move	$a2,$s2
    ld	$s2,0($sp)
    move	$a0,$s3
    ld	$s3,24($sp)
    bgezl	$zero,__glOdysseyGetCurrentTexture
    addiu	$sp,$sp,48
.L0d9d1f54:
    # Line 1769
    move	$s1,$a0
    blez	$a0,.L0d9d1ee8
    sd	$s2,0($sp)
    b	.L0d9d1e54
    # Line 1787
    move	$s2,$zero
.L0d9d1f68:
    # Line 1761
    li	$v0,1
    # Line 1807
    ld	$s0,16($sp)
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d1f7c:
    # Line 1778
    b	.L0d9d1e40
    sw	$zero,204($s0)
.end DoMipmapHack

# Function: __glOdysseyTextureActivate
# Declared: Line 1826 (Source lines: 1832-2026)
# Address: 0x0d9d1f90 - 0x0d9d2538 (Size: 1448 bytes, Frame: 224)
.ent __glOdysseyTextureActivate
__glOdysseyTextureActivate:
    # Line 1832
    lw	$a7,1276($a1)
    addiu	$sp,$sp,-96
    li	$at,-1
    sd	$s6,8($sp)
    move	$s6,$a0
    sd	$s0,0($sp)
    beq	$a7,$at,.L0d9d24b8
    move	$s0,$a1
    # Line 1859
    # lw $t9, -30968($gp) # &__glOdysseyOpenPMObjReference
    # Line 1851
    lw	$v1,92($s0)
    # Line 1843
    lw	$a3,156($a1)
    sd	$s1,56($sp)
    # Line 1859
    li	$a5,1
    # Line 1843
    lw	$s1,96($a1)
    # Line 1859
    addiu	$a4,$a1,1300
    move	$a1,$a7
    # Line 1851
    lw	$v0,12($s0)
    sd	$s3,72($sp)
    li	$s3,0x806f
    # Line 1843
    slt	$a2,$s1,$a3
    xor	$v0,$s3,$v0
    movz	$s1,$a3,$a2
    # Line 1859
    move	$a2,$v1
    movz	$s1,$v1,$v0
    sd	$ra,64($sp)
    jal	__glOdysseyOpenPMObjReference
    move	$a3,$s1
    beqz	$v0,.L0d9d24cc
    # Line 1865
    nop	# was lw $t9, -26792($gp) # &__glSetError
    sd	$s8,80($sp)
    # Line 1868
    lui	$t9,0x1
    sd	$s5,48($sp)
    addu	$t9,$s6,$t9
    sw	$s0,25624($t9)
    # Line 1869
    lw	$ra,92($s0)
    # Line 1870
    sw	$s1,25636($t9)
    # Line 1869
    sw	$ra,25632($t9)
    # Line 1876
    lw	$a5,92($s0)
    sd	$s7,40($sp)
    sd	$s4,32($sp)
    slt	$t8,$s1,$a5
    sd	$s2,24($sp)
    bnez	$t8,.L0d9d2254
    # Line 1868
    sd	$t9,16($sp)
    # Line 1876
    li	$s5,0x8467
    li	$s8,1
    li	$s4,0x8466
    lui	$t3,0xc000
    lui	$t2,0x3f0
    lui	$t8,0xe000
    li	$a0,4096
    li	$s2,-4096
    lui	$t1,0x3fff
    lui	$a1,0xfc0f
    ori	$t1,$t1,0xffff
    ori	$a1,$a1,0xffff
    lui	$ra,0x1fff
    sll	$a7,$a5,0x2
    ori	$ra,$ra,0xffff
    addu	$a7,$a7,$s0
    sll	$a4,$a5,0x4
    addiu	$t9,$s1,1
    addu	$a4,$a4,$a5
    sll	$s7,$t9,0x4
    sll	$a4,$a4,0x2
    addu	$s7,$s7,$t9
    addu	$a4,$a4,$s0
    sll	$s7,$s7,0x2
    b	.L0d9d2134
    addu	$s7,$s0,$s7
    nop
    nop
.L0d9d20b0:
    # Line 1904
    lw	$t9,1404($a4)
    lw	$a3,1392($a4)
    addu	$at,$t9,$t9
    subu	$a3,$a3,$at
    addiu	$a3,$a3,15
    sra	$a3,$a3,0x4
.L0d9d20c8:
    # Line 1908
    addiu	$v1,$a3,2
    movz	$v1,$a3,$t9
    sra	$a2,$v1,0x1f
    xor	$v0,$v1,$a2
    subu	$v0,$v0,$a2
    andi	$v0,$v0,0x1
    xor	$v0,$v0,$a2
    # Line 1910
    addiu	$a3,$v1,1
    # Line 1908
    subu	$v0,$v0,$a2
    # Line 1876
    addiu	$a7,$a7,4
    movz	$a3,$v1,$v0
    addiu	$a5,$a5,1
    # Line 1928
    move	$a6,$zero
    # Line 1910
    beq	$a3,$a0,.L0d9d21e0
    # Line 1913
    andi	$v1,$a3,0xfff
    or	$v1,$s1,$v1
    sw	$v1,4($t0)
.L0d9d210c:
    lw	$a2,12($s0)
    beq	$s3,$a2,.L0d9d21ec
    nop
.L0d9d2118:
    # Line 1931
    lw	$t9,8($t0)
    # Line 1876
    addiu	$a4,$a4,68
    # Line 1931
    andi	$a3,$a6,0xfff
    and	$t9,$s2,$t9
    or	$a3,$a3,$t9
    # Line 1876
    beq	$a4,$s7,.L0d9d2254
    # Line 1931
    sw	$a3,8($t0)
.L0d9d2134:
    # Line 1879
    lw	$t9,92($s0)
    subu	$t9,$a5,$t9
    sll	$t0,$t9,0x2
    subu	$t0,$t0,$t9
    sll	$t0,$t0,0x2
    # Line 1880
    lw	$v0,1300($a7)
    # Line 1879
    addu	$t0,$s6,$t0
    # Line 1880
    lw	$at,31968($t0)
    and	$v0,$ra,$v0
    and	$at,$t8,$at
    or	$at,$at,$v0
    sw	$at,31968($t0)
    # Line 1881
    lw	$t9,1364($s0)
    lw	$a6,31972($t0)
    sll	$t9,$t9,0x14
    and	$a6,$a1,$a6
    and	$t9,$t2,$t9
    or	$a6,$a6,$t9
    sw	$a6,31972($t0)
    # Line 1882
    lw	$t9,1368($s0)
    sll	$t9,$t9,0x1e
    and	$a6,$t1,$a6
    and	$t9,$t3,$t9
    or	$a6,$a6,$t9
    sw	$a6,31972($t0)
    # Line 1897
    lw	$a3,1388($a4)
    # Line 1879
    addiu	$t0,$t0,31968
    # Line 1897
    beq	$s4,$a3,.L0d9d21b0
    # Line 1910
    and	$s1,$s2,$a6
    # Line 1897
    bne	$s5,$a3,.L0d9d20b0
    nop
.L0d9d21b0:
    # Line 1901
    lw	$t9,1392($a4)
    addiu	$t9,$t9,1
    srl	$a3,$t9,0x1f
    addu	$a3,$a3,$t9
    sra	$a3,$a3,0x1
    addiu	$at,$a3,15
    addiu	$a3,$a3,30
    slt	$t9,$at,$zero
    movz	$a3,$at,$t9
    lw	$t9,1404($a4)
    b	.L0d9d20c8
    sra	$a3,$a3,0x4
.L0d9d21e0:
    # Line 1912
    ori	$at,$s1,0x1
    b	.L0d9d210c
    sw	$at,4($t0)
.L0d9d21ec:
    # Line 1916
    lw	$a2,1404($a4)
    lw	$a6,1396($a4)
    addu	$t9,$a2,$a2
    subu	$a6,$a6,$t9
    addiu	$a6,$a6,15
    sra	$a6,$a6,0x4
    # Line 1919
    addiu	$v1,$a6,2
    movz	$v1,$a6,$a2
    # Line 1921
    mult	$a3,$v1
    mflo	$a6
    slti	$v0,$a6,2
    bnez	$v0,.L0d9d224c
    # Line 1926
    move	$a3,$zero
    # Line 1921
    move	$a3,$zero
.L0d9d2224:
    # Line 1926
    addiu	$a3,$a3,1
    sllv	$at,$s8,$a3
    slt	$at,$at,$a6
    beqz	$at,.L0d9d224c
    nop
    addiu	$a3,$a3,1
    sllv	$v0,$s8,$a3
    slt	$v0,$v0,$a6
    bnez	$v0,.L0d9d2224
    nop
.L0d9d224c:
    # Line 1928
    b	.L0d9d2118
    move	$a6,$a3
.L0d9d2254:
    # Line 1876
    la	$s1,sub_0d9d0000
    addiu	$s1,$s1,-896
    # Line 1939
    move	$t9,$s1
    lw	$a1,1388($s0)
    bal __glOdysseyGetCurrentTexture
    lw	$a0,1364($s0)
    # Line 1941
    sll	$t8,$v0,0x17
    lw	$t9,180($s0)
    lui	$a3,0xfc7f
    lui	$a5,0x380
    ori	$a3,$a3,0xffff
    and	$t8,$a5,$t8
    and	$t9,$a3,$t9
    ld	$s8,80($sp)
    or	$t8,$t8,$t9
    ld	$s5,48($sp)
    # Line 1946
    srl	$a0,$t8,0x1
    ld	$s7,40($sp)
    # Line 1947
    li	$a1,2
    # Line 1946
    andi	$a0,$a0,0xf
    ld	$s4,32($sp)
    # Line 1947
    beq	$a0,$a1,.L0d9d230c
    # Line 1941
    sw	$t8,180($s0)
    # Line 1947
    li	$a4,3
    beq	$a0,$a4,.L0d9d2310
    # Line 1959
    nop	# was lw $t9, -30968($gp) # &__glOdysseyOpenPMObjReference
    # Line 1947
    li	$a5,4
    beq	$a0,$a5,.L0d9d230c
.L0d9d22c4:
    ld	$s1,56($sp)
    ld	$s3,72($sp)
    ld	$s2,24($sp)
    # Line 2020
    lw	$a7,32736($s6)
    # Line 2026
    ld	$s0,0($sp)
    # Line 2020
    li	$t0,-64
    and	$a7,$a7,$t0
    sw	$a7,32736($s6)
    # Line 2022
    ld	$a7,16($sp)
    ld	$ra,64($sp)
    lw	$a6,26976($a7)
    # Line 2026
    ld	$s6,8($sp)
    li	$v0,1
    # Line 2022
    ori	$a6,$a6,0x1c00
    sw	$a6,26976($a7)
    # Line 2026
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2022
    sw	$a1,4120($zero)
.L0d9d230c:
    # Line 1959
    # lw $t9, -30968($gp) # &__glOdysseyOpenPMObjReference
.L0d9d2310:
    # Line 1953
    ld	$s1,16($sp)
    # Line 1954
    lw	$s3,64($s0)
    # Line 1959
    li	$a5,1
    move	$a2,$zero
    # Line 1953
    lw	$s1,25616($s1)
    # Line 1959
    move	$a0,$s6
    # Line 1954
    negu	$s3,$s3
    # Line 1959
    addiu	$s2,$s3,-1
    addiu	$a4,$s1,1300
    lw	$a1,1276($s1)
    jal	__glOdysseyOpenPMObjReference
    move	$a3,$s2
    beqz	$v0,.L0d9d24f4
    # Line 1976
    ld	$t8,16($sp)
    sw	$s2,25644($t8)
    # Line 1975
    sw	$zero,25640($t8)
    # Line 1976
    blez	$s3,.L0d9d2478
    # Line 1974
    sw	$s1,25628($t8)
    # Line 1976
    lui	$t3,0xc000
    lui	$t2,0x3f0
    lui	$t8,0xe000
    li	$a0,4096
    li	$s2,-4096
    move	$a4,$zero
    lui	$t1,0x3fff
    ori	$t1,$t1,0xffff
    sll	$a3,$s3,0x1c
    lui	$a1,0xfc0f
    subu	$a3,$a3,$s3
    ori	$a1,$a1,0xffff
    sll	$a3,$a3,0x2
    lui	$ra,0x1fff
    addu	$a3,$a3,$s3
    ori	$ra,$ra,0xffff
    sll	$a3,$a3,0x2
    b	.L0d9d2410
    addu	$a3,$s6,$a3
    nop
    nop
    nop
.L0d9d23b0:
    # Line 2000
    or	$t0,$a6,$t0
    sw	$t0,32740($a3)
.L0d9d23b8:
    # Line 1981
    addiu	$a4,$a4,1
    # Line 2003
    lw	$v0,32736($a3)
    addu	$v1,$s1,$v1
    lw	$v1,1300($v1)
    and	$v0,$t8,$v0
    and	$v1,$ra,$v1
    or	$v0,$v0,$v1
    sw	$v0,32736($a3)
    # Line 2004
    lw	$at,1364($a7)
    sll	$at,$at,0x14
    and	$t9,$a1,$t0
    and	$at,$t2,$at
    or	$t9,$t9,$at
    sw	$t9,32740($a3)
    # Line 2005
    lw	$at,1368($a7)
    # Line 1981
    addiu	$a3,$a3,12
    # Line 2005
    sll	$at,$at,0x1e
    and	$t9,$t1,$t9
    and	$at,$t3,$at
    or	$t9,$t9,$at
    # Line 1981
    beq	$s3,$a4,.L0d9d2478
    # Line 2005
    sw	$t9,32728($a3)
.L0d9d2410:
    # Line 1976
    lw	$a5,156($s1)
    slt	$t0,$a5,$a4
    movz	$a5,$a4,$t0
    # Line 1993
    sll	$a7,$a5,0x4
    addu	$a7,$a7,$a5
    sll	$a7,$a7,0x2
    addu	$a7,$s1,$a7
    lw	$t9,1392($a7)
    addiu	$t9,$t9,15
    sra	$t9,$t9,0x4
    sra	$s0,$t9,0x1f
    xor	$t0,$t9,$s0
    subu	$t0,$t0,$s0
    andi	$t0,$t0,0x1
    xor	$t0,$t0,$s0
    # Line 1994
    lw	$a6,32740($a3)
    # Line 1993
    subu	$t0,$t0,$s0
    # Line 1994
    addiu	$s0,$t9,1
    movz	$s0,$t9,$t0
    and	$a6,$s2,$a6
    # Line 2003
    sll	$v1,$a5,0x2
    # Line 1994
    bne	$s0,$a0,.L0d9d23b0
    # Line 2000
    andi	$t0,$s0,0xfff
    # Line 1997
    ori	$t0,$a6,0x1
    b	.L0d9d23b8
    sw	$t0,32740($a3)
.L0d9d2478:
    # Line 2014
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-896
    lw	$a1,1388($s1)
    bal __glOdysseyGetCurrentTexture
    lw	$a0,1364($s1)
    # Line 2016
    sll	$at,$v0,0x17
    lui	$ra,0x380
    lw	$v1,180($s1)
    and	$ra,$ra,$at
    lui	$at,0xfc7f
    ori	$at,$at,0xffff
    li	$a1,2
    and	$at,$at,$v1
    or	$ra,$ra,$at
    b	.L0d9d22c4
    sw	$ra,180($s1)
.L0d9d24b8:
    # Line 1843
    move	$v0,$zero
    # Line 2026
    ld	$s0,0($sp)
    ld	$s6,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9d24cc:
    ld	$s3,72($sp)
    ld	$s1,56($sp)
    # Line 1865
    jal	sub_0d9d0000
    li	$a0,1285
    ld	$ra,64($sp)
    # Line 1866
    move	$v0,$zero
    # Line 2026
    ld	$s0,0($sp)
    ld	$s6,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9d24f4:
    # Line 1970
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s3,72($sp)
    ld	$s1,56($sp)
    ld	$s2,24($sp)
    jal	__glSetError
    li	$a0,1285
    # Line 1971
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,9536
    move	$a0,$s6
    bal __glOdysseyGetCurrentTexture
    move	$a1,$s0
    ld	$ra,64($sp)
    # Line 1972
    move	$v0,$zero
    # Line 2026
    ld	$s0,0($sp)
    ld	$s6,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glOdysseyTextureActivate

# Function: __glOdysseyTextureDeactivate
# Declared: Line 2031 (Source lines: 2036-2074)
# Address: 0x0d9d2540 - 0x0d9d2654 (Size: 276 bytes, Frame: 32)
.ent __glOdysseyTextureDeactivate
__glOdysseyTextureDeactivate:
    # Line 2036
    addiu	$sp,$sp,-32
    sd	$a0,0($sp)
    sd	$s1,24($sp)
    move	$s1,$a1
    # Line 2040
    lw	$a1,1276($a1)
    # lw $t9, -30956($gp) # &__glOdysseyClosePMObjReference
    # Line 2036
    sd	$s0,16($sp)
    # Line 2040
    lui	$s0,0x1
    sd	$ra,8($sp)
    addu	$s0,$a0,$s0
    lw	$a3,25636($s0)
    jal	__glOdysseyClosePMObjReference
    lw	$a2,25632($s0)
    # Line 2048
    sw	$zero,25624($s0)
    lui	$a2,0xdead
    ld	$ra,8($sp)
    ori	$a2,$a2,0xbeef
    # Line 2052
    sw	$a2,1360($s1)
    sw	$a2,1356($s1)
    sw	$a2,1352($s1)
    sw	$a2,1348($s1)
    sw	$a2,1344($s1)
    sw	$a2,1340($s1)
    sw	$a2,1336($s1)
    sw	$a2,1332($s1)
    sw	$a2,1328($s1)
    sw	$a2,1324($s1)
    sw	$a2,1320($s1)
    sw	$a2,1316($s1)
    sw	$a2,1312($s1)
    sw	$a2,1308($s1)
    sw	$a2,1304($s1)
    sw	$a2,1300($s1)
    # Line 2057
    lw	$s1,25628($s0)
    beqz	$s1,.L0d9d2644
    # Line 2059
    ld	$a0,0($sp)
    # lw $t9, -30956($gp) # &__glOdysseyClosePMObjReference
    lw	$a3,25644($s0)
    lw	$a2,25640($s0)
    jal	__glOdysseyClosePMObjReference
    lw	$a1,1276($s1)
    lui	$a0,0xbaad
    # Line 2074
    ld	$ra,8($sp)
    # Line 2059
    ori	$a0,$a0,0xcade
    # Line 2070
    sw	$a0,1360($s1)
    sw	$a0,1356($s1)
    sw	$a0,1352($s1)
    sw	$a0,1348($s1)
    sw	$a0,1344($s1)
    sw	$a0,1340($s1)
    sw	$a0,1336($s1)
    sw	$a0,1332($s1)
    sw	$a0,1328($s1)
    sw	$a0,1324($s1)
    sw	$a0,1320($s1)
    sw	$a0,1316($s1)
    sw	$a0,1312($s1)
    sw	$a0,1308($s1)
    sw	$a0,1304($s1)
    sw	$a0,1300($s1)
    # Line 2074
    ld	$s1,24($sp)
    # Line 2072
    sw	$zero,25628($s0)
    # Line 2074
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9d2644:
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdysseyTextureDeactivate

# Function: SetTexOffsetValues
# Declared: Line 2077 (Source lines: 2081-2100)
# Address: 0x0d9d2660 - 0x0d9d26cc (Size: 108 bytes, Frame: 0)
.ent SetTexOffsetValues
SetTexOffsetValues:
    # Line 2081
    lw	$at,1404($a0)
    # Line 2084
    lui	$a1,0x100
    # Line 2081
    beqz	$at,.L0d9d269c
    lw	$a2,180($a0)
    # Line 2099
    sw	$zero,216($a0)
    # Line 2098
    sw	$zero,212($a0)
    # Line 2097
    sw	$zero,208($a0)
    # Line 2083
    lui	$v0,0x1000
    # Line 2084
    lw	$v1,188($a0)
    # Line 2083
    nor	$v0,$v0,$zero
    and	$v0,$a2,$v0
    sw	$v0,180($a0)
    # Line 2084
    or	$v1,$v1,$a1
    # Line 2100
    jr	$ra
    # Line 2084
    sw	$v1,188($a0)
.L0d9d269c:
    # Line 2099
    sw	$zero,216($a0)
    # Line 2098
    sw	$zero,212($a0)
    # Line 2097
    sw	$zero,208($a0)
    # Line 2087
    lw	$a3,188($a0)
    lui	$a4,0x100
    # Line 2086
    lui	$a5,0x1000
    or	$a5,$a2,$a5
    sw	$a5,180($a0)
    # Line 2087
    nor	$a2,$a4,$zero
    and	$a2,$a3,$a2
    # Line 2100
    jr	$ra
    # Line 2087
    sw	$a2,188($a0)
.end SetTexOffsetValues

# Function: __glOdysseyValidateTexture
# Declared: Line 2103 (Source lines: 2104-2307)
# Address: 0x0d9d26d0 - 0x0d9d2ba4 (Size: 1236 bytes, Frame: 48)
.globl __glOdysseyValidateTexture
.ent __glOdysseyValidateTexture
__glOdysseyValidateTexture:
    # Line 2104
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    lui	$ra,0x12
    addiu	$ra,$ra,24256
    sd	$gp,16($sp)
    addu	$gp,$t9,$ra
    # Line 2114
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,9824
    # Line 2104
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$a0,8($sp)
    # Line 2114
    bal __glOdysseyGetCurrentTexture
    move	$a0,$a1
    # Line 2121
    lw	$a1,24($s0)
    li	$at,0x8097
    li	$a3,3553
    # Line 2167
    li	$a5,-31
    # Line 2121
    beq	$a1,$at,.L0d9d274c
    lw	$a2,12($s0)
    li	$v0,0x8098
    beq	$a1,$v0,.L0d9d274c
    li	$v1,0x8099
    beq	$a1,$v1,.L0d9d274c
    nop
    # Line 2174
    lw	$a0,160($s0)
    lui	$a1,0x10
    sd	$s1,0($sp)
    nor	$a1,$a1,$zero
    and	$a0,$a0,$a1
    b	.L0d9d2780
    sw	$a0,160($s0)
.L0d9d274c:
    # Line 2121
    beq	$a2,$a3,.L0d9d2a70
    sd	$s1,0($sp)
    # Line 2169
    lw	$a1,160($s0)
    lui	$a2,0x10
    # Line 2167
    lw	$a4,180($s0)
    # Line 2169
    nor	$a2,$a2,$zero
    and	$a1,$a1,$a2
    sw	$a1,160($s0)
    # Line 2167
    and	$a4,$a4,$a5
    ori	$a4,$a4,0x2
    sw	$a4,180($s0)
.L0d9d2778:
    # Line 2171
    ori	$a3,$a1,0x200
    sw	$a3,160($s0)
.L0d9d2780:
    # Line 2174
    lw	$a1,144($s0)
    # Line 2185
    move	$t9,$zero
    # Line 2174
    lw	$a2,92($s0)
    # Line 2183
    move	$at,$zero
    # Line 2191
    li	$s1,1
    # Line 2184
    lw	$t0,152($s0)
    move	$ra,$zero
    # Line 2174
    subu	$a1,$a1,$a2
    # Line 2184
    subu	$t0,$t0,$a2
    slti	$a0,$a1,1
    # Line 2183
    lw	$a5,148($s0)
    slti	$a7,$t0,1
    movz	$at,$a1,$a0
    movz	$t9,$t0,$a7
    subu	$a5,$a5,$a2
    # Line 2195
    sllv	$a6,$s1,$t9
    slti	$a4,$a5,1
    movz	$ra,$a5,$a4
    # Line 2193
    sllv	$a3,$s1,$ra
    mtc1	$a3,$f1
    # Line 2195
    mtc1	$a6,$f3
    # Line 2193
    lw	$t2,172($s0)
    # Line 2191
    sllv	$v1,$s1,$at
    # Line 2195
    lw	$t8,176($s0)
    # Line 2191
    mtc1	$v1,$f0
    # Line 2193
    cvt.s.w	$f1,$f1
    # Line 2189
    andi	$t9,$t9,0x1f
    # Line 2193
    lwc1	$f2,76($s0)
    # Line 2195
    cvt.s.w	$f3,$f3
    # Line 2191
    lui	$a4,0x1
    lui	$a6,0xfffe
    # Line 2195
    lwc1	$f4,80($s0)
    # Line 2187
    lw	$v0,164($s0)
    # Line 2191
    ori	$a4,$a4,0xffff
    # Line 2195
    and	$t8,$a6,$t8
    # Line 2191
    cvt.s.w	$f0,$f0
    # Line 2193
    and	$t2,$a6,$t2
    # Line 2188
    sll	$ra,$ra,0x5
    # Line 2193
    mul.s	$f1,$f1,$f2
    # Line 2191
    lwc1	$f2,72($s0)
    # Line 2187
    sll	$at,$at,0xa
    li	$v1,-31745
    # Line 2195
    mul.s	$f3,$f3,$f4
    # Line 2187
    andi	$at,$at,0x7c00
    and	$v0,$v0,$v1
    or	$at,$at,$v0
    # Line 2188
    li	$v0,-993
    # Line 2195
    trunc.w.s	$f3,$f3
    # Line 2191
    mul.s	$f0,$f0,$f2
    lw	$a7,168($s0)
    # Line 2188
    andi	$ra,$ra,0x3e0
    and	$at,$at,$v0
    # Line 2193
    trunc.w.s	$f1,$f1
    # Line 2188
    or	$ra,$ra,$at
    # Line 2189
    li	$at,-32
    # Line 2195
    mfc1	$t3,$f3
    # Line 2191
    trunc.w.s	$f0,$f0
    # Line 2202
    lw	$a5,1392($s0)
    # Line 2191
    and	$a6,$a6,$a7
    # Line 2189
    and	$ra,$ra,$at
    # Line 2193
    mfc1	$t1,$f1
    # Line 2189
    or	$t9,$t9,$ra
    sw	$t9,164($s0)
    # Line 2195
    and	$t3,$a4,$t3
    # Line 2191
    mfc1	$t0,$f0
    # Line 2193
    and	$t1,$a4,$t1
    # Line 2195
    or	$t3,$t3,$t8
    sw	$t3,176($s0)
    # Line 2193
    or	$t1,$t1,$t2
    sw	$t1,172($s0)
    # Line 2191
    and	$a4,$a4,$t0
    or	$a4,$a4,$a6
    # Line 2202
    beqz	$a5,.L0d9d29f4
    # Line 2191
    sw	$a4,168($s0)
    # Line 2202
    lw	$t1,1396($s0)
    beqz	$t1,.L0d9d29f4
    nop
    lw	$t2,1400($s0)
    beqz	$t2,.L0d9d29f4
    nop
    # Line 2206
    lw	$t3,12($s0)
    li	$t8,0x806f
    lw	$a1,36($s0)
    beq	$t3,$t8,.L0d9d2a54
    lw	$a3,40($s0)
    # Line 2212
    li	$t9,10497
    beq	$a3,$t9,.L0d9d28f0
    # Line 2217
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,23840
    move	$a0,$s0
    bal __glOdyim_GetTexImage
    li	$a1,10497
.L0d9d28f0:
    # Line 2225
    lw	$a1,20($s0)
.L0d9d28f4:
    li	$ra,9728
    # Line 2228
    li	$t2,3552
    lw	$t1,12($s0)
    # Line 2225
    beq	$a1,$ra,.L0d9d2a10
    # Line 2228
    li	$t3,3553
    # Line 2225
    li	$at,9729
    beq	$a1,$at,.L0d9d2a10
    li	$v0,0x8146
    beq	$a1,$v0,.L0d9d2a10
    nop
    # Line 2269
    lw	$a6,1396($s0)
    # Line 2270
    lw	$t8,96($s0)
    lw	$t1,156($s0)
    # Line 2267
    lw	$t2,1404($s0)
    # Line 2270
    lw	$a7,1400($s0)
    slt	$t3,$t1,$t8
    # Line 2268
    lw	$a5,1392($s0)
    addu	$t0,$t2,$t2
    movz	$t1,$t8,$t3
    # Line 2270
    subu	$a7,$a7,$t0
    # Line 2269
    subu	$a6,$a6,$t0
    # Line 2273
    blez	$t1,.L0d9d2a38
    # Line 2268
    subu	$a5,$a5,$t0
    # Line 2273
    li	$t8,3552
    li	$t9,3553
    li	$a4,1
    addiu	$a3,$s0,68
    lw	$a0,92($s0)
    addiu	$a1,$t1,1
    b	.L0d9d2978
    lw	$t3,1388($s0)
.L0d9d2970:
    # Line 2275
    beq	$a1,$a4,.L0d9d2a38
    addiu	$a3,$a3,68
.L0d9d2978:
    # Line 2280
    sra	$a6,$a6,0x1
    # Line 2284
    slt	$at,$a4,$a0
    # Line 2282
    sra	$a7,$a7,0x1
    # Line 2278
    sra	$a5,$a5,0x1
    # Line 2280
    sltiu	$v0,$a6,1
    movn	$a6,$s1,$v0
    # Line 2278
    sltiu	$ra,$a5,1
    # Line 2282
    sltiu	$v1,$a7,1
    # Line 2278
    movn	$a5,$s1,$ra
    # Line 2275
    addiu	$a4,$a4,1
    # Line 2282
    movn	$a7,$s1,$v1
    # Line 2284
    bnez	$at,.L0d9d2970
    # Line 2296
    addu	$v1,$t0,$a6
    # Line 2288
    lw	$a2,1404($a3)
    lw	$ra,1392($a3)
    lw	$t1,1388($a3)
    addu	$at,$t0,$a5
    bne	$a2,$t2,.L0d9d29f4
    # Line 2296
    lw	$v0,1396($a3)
    # Line 2288
    bne	$t1,$t3,.L0d9d29f4
    # Line 2302
    lw	$a2,1400($a3)
    # Line 2288
    bne	$ra,$at,.L0d9d29f8
    # Line 2206
    ld	$gp,16($sp)
    # Line 2295
    lw	$t1,12($s0)
    beq	$t8,$t1,.L0d9d2970
    nop
    # Line 2296
    bne	$v0,$v1,.L0d9d29f8
    # Line 2206
    ld	$gp,16($sp)
    # Line 2301
    beq	$t9,$t1,.L0d9d2970
    # Line 2302
    addu	$t1,$t0,$a7
    beq	$a2,$t1,.L0d9d2970
.L0d9d29f4:
    # Line 2206
    ld	$gp,16($sp)
.L0d9d29f8:
    ld	$ra,24($sp)
    # Line 2205
    sw	$zero,16($s0)
    # Line 2206
    ld	$s0,32($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d2a10:
    # Line 2228
    beq	$t1,$t2,.L0d9d2b40
    # Line 2206
    ld	$ra,24($sp)
    # Line 2228
    beq	$t1,$t3,.L0d9d2b44
    # Line 2237
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 2206
    ld	$gp,16($sp)
    # Line 2258
    sw	$s1,16($s0)
    # Line 2206
    ld	$s0,32($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d2a38:
    ld	$gp,16($sp)
    ld	$ra,24($sp)
    # Line 2307
    sw	$s1,16($s0)
    # Line 2206
    ld	$s0,32($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d2a54:
    beq	$a3,$a1,.L0d9d28f0
    # Line 2212
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,23840
    bal __glOdyim_GetTexImage
    move	$a0,$s0
    b	.L0d9d28f4
    # Line 2225
    lw	$a1,20($s0)
.L0d9d2a70:
    # Line 2126
    ld	$a2,8($sp)
    lui	$a1,0x1
    ori	$a1,$a1,0x6410
    addu	$a1,$a1,$a2
    lw	$a1,0($a1)
    # Line 2133
    lw	$ra,1364($s0)
    lw	$at,1364($a1)
    bne	$ra,$at,.L0d9d2b24
    nop
    lw	$a4,1396($a1)
    lw	$a3,1392($a1)
    mult	$a3,$a4
    mflo	$a2
    beqz	$a2,.L0d9d2b24
    nop
    # Line 2136
    lw	$a6,144($a1)
    lw	$a7,164($s0)
    lui	$t1,0x1f0
    nor	$t0,$t1,$zero
    sll	$a6,$a6,0x14
    # lw $t9, -32712($gp) # &sub_0d9d0000
    and	$a7,$a7,$t0
    and	$a6,$a6,$t1
    or	$a6,$a6,$a7
    sw	$a6,164($s0)
    # Line 2137
    lui	$t0,0xf
    lw	$a5,148($a1)
    # Line 2136
    addiu	$t9,$t9,7616
    # Line 2137
    ori	$t0,$t0,0x8000
    nor	$a7,$t0,$zero
    sll	$a5,$a5,0xf
    # Line 2143
    ld	$a0,8($sp)
    # Line 2137
    and	$a6,$a6,$a7
    and	$a5,$a5,$t0
    or	$a5,$a5,$a6
    # Line 2143
    bal __glOdysseyGetCurrentTexture
    # Line 2137
    sw	$a5,164($s0)
    # Line 2143
    beqz	$v0,.L0d9d2b24
    # Line 2155
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,24992
    move	$a0,$s0
    bal __glOdyim_GetTexImage
    lw	$a1,24($s0)
    b	.L0d9d2b38
    nop
.L0d9d2b24:
    # Line 2159
    lw	$ra,180($s0)
    li	$at,-31
    and	$ra,$ra,$at
    ori	$ra,$ra,0x2
    sw	$ra,180($s0)
.L0d9d2b38:
    b	.L0d9d2778
    lw	$a1,160($s0)
.L0d9d2b40:
    # Line 2237
    # lw $t9, -32712($gp) # &sub_0d9d0000
.L0d9d2b44:
    addiu	$t9,$t9,7616
    ld	$a0,8($sp)
    bal __glOdysseyGetCurrentTexture
    move	$a1,$s0
    beqz	$v0,.L0d9d2b74
    # Line 2206
    ld	$gp,16($sp)
    ld	$ra,24($sp)
    # Line 2250
    sw	$s1,16($s0)
    # Line 2206
    ld	$s0,32($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d2b74:
    ld	$gp,16($sp)
    # Line 2244
    lw	$ra,160($s0)
    # Line 2206
    ld	$s1,0($sp)
    # Line 2244
    ori	$ra,$ra,0x4000
    sw	$ra,160($s0)
    # Line 2206
    ld	$ra,24($sp)
    # Line 2245
    li	$at,2
    sw	$at,16($s0)
    # Line 2243
    sw	$zero,204($s0)
    # Line 2206
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdysseyValidateTexture

# Function: __glOdysseyValidateTextureState
# Declared: Line 2312 (Source lines: 2313-2495)
# Address: 0x0d9d2bb0 - 0x0d9d3064 (Size: 1204 bytes, Frame: 224)
.globl __glOdysseyValidateTextureState
.ent __glOdysseyValidateTextureState
__glOdysseyValidateTextureState:
    # Line 2313
    addiu	$sp,$sp,-96
    sd	$ra,8($sp)
    sd	$s0,72($sp)
    sd	$s8,64($sp)
    # Line 2322
    li	$s8,2
    sw	$s8,4120($zero)
    lui	$a3,0x1
    lw	$a1,1792($a0)
    # Line 2313
    move	$s0,$a0
    sd	$s6,56($sp)
    lui	$v0,0x12
    addiu	$v0,$v0,23008
    # Line 2322
    lw	$v1,11812($a0)
    dsll32	$at,$a1,0x1
    addu	$s6,$a3,$a0
    sd	$gp,80($sp)
    # Line 2313
    addu	$gp,$t9,$v0
    # Line 2322
    ori	$v1,$v1,0x1
    bgez	$at,.L0d9d2ee8
    sw	$v1,11812($a0)
    lw	$a1,25612($s6)
    lw	$a0,16($a1)
    beq	$a0,$s8,.L0d9d3014
    # Line 2329
    nop	# was lw $t9, -30640($gp) # &__glOdysseyValidateTexture
.L0d9d2c10:
    beqz	$a0,.L0d9d2ee4
    # Line 2336
    li	$a4,-3073
    # Line 2333
    lw	$a1,31744($s0)
    li	$a2,-9
    and	$a1,$a1,$a2
    # Line 2334
    li	$a2,-17
    and	$a1,$a1,$a2
    # Line 2335
    ori	$a1,$a1,0x20
    # Line 2336
    and	$a1,$a4,$a1
    ori	$a1,$a1,0x400
    sw	$a1,31744($s0)
    # Line 2338
    lw	$a0,26976($s6)
    sd	$s7,0($sp)
    ori	$a0,$a0,0x4
    sw	$a0,26976($s6)
    # Line 2340
    li	$a0,2
    # Line 2338
    sw	$s8,4120($zero)
.L0d9d2c54:
    # Line 2425
    sll	$s7,$a0,0x2
    addu	$s7,$s0,$s7
    lw	$a1,25624($s6)
    addu	$s7,$a3,$s7
    lw	$s7,25604($s7)
    # Line 2427
    lui	$t9,0x11
    # Line 2425
    beq	$a1,$s7,.L0d9d2c88
    # Line 2427
    ori	$t9,$t9,0xc200
    lw	$t8,26976($s6)
    or	$t8,$t8,$t9
    sw	$t8,26976($s6)
    sw	$s8,4120($zero)
    lw	$a1,25624($s6)
.L0d9d2c88:
    beqz	$a1,.L0d9d2ca4
    # Line 2441
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 2438
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,9536
    bal __glOdysseyGetCurrentTexture
    move	$a0,$s0
    # Line 2441
    # lw $t9, -32712($gp) # &sub_0d9d0000
.L0d9d2ca4:
    addiu	$t9,$t9,8080
    move	$a1,$s7
    bal __glOdysseyGetCurrentTexture
    move	$a0,$s0
    beqz	$v0,.L0d9d2fb8
    # Line 2476
    ld	$t8,-13832($gp)
    lw	$t1,180($s7)
    lui	$t3,0x7c
    lw	$t2,31956($s0)
    ori	$t3,$t3,0x1
    and	$t1,$t1,$t8
    and	$t2,$t2,$t3
    or	$t1,$t1,$t2
    sw	$t1,31956($s0)
    # Line 2480
    lw	$t0,164($s7)
    sw	$t0,31940($s0)
    # Line 2481
    lw	$a7,168($s7)
    sw	$a7,31944($s0)
    # Line 2482
    lw	$a6,172($s7)
    sw	$a6,31948($s0)
    # Line 2483
    lw	$a5,176($s7)
    sw	$a5,31952($s0)
    # Line 2484
    lw	$a4,184($s7)
    sw	$a4,31960($s0)
    # Line 2485
    lw	$a3,188($s7)
    sw	$a3,31964($s0)
    # Line 2488
    lw	$a2,192($s7)
    sw	$a2,-26844($s6)
    lw	$a1,196($s7)
    sw	$a1,-26840($s6)
    lw	$a0,200($s7)
    sw	$a0,-26836($s6)
    lw	$v1,204($s7)
    sw	$v1,-26832($s6)
    # Line 2489
    lw	$v0,208($s7)
    sw	$v0,-29332($s6)
    lw	$at,212($s7)
    sw	$at,-29328($s6)
    lw	$ra,216($s7)
    sw	$ra,-29324($s6)
    sd	$s1,48($sp)
    sd	$s5,40($sp)
    sd	$s4,32($sp)
    sd	$s2,24($sp)
    sd	$s3,16($sp)
    # Line 2490
    lw	$a5,220($s7)
    sw	$a5,-29460($s6)
    lw	$a2,224($s7)
    sw	$a2,-29456($s6)
    lw	$v1,228($s7)
    sw	$v1,-29452($s6)
    lw	$v0,232($s7)
    sw	$v0,-29448($s6)
    lw	$at,236($s7)
    sw	$at,-29444($s6)
    lw	$ra,240($s7)
    sw	$ra,-29440($s6)
    lw	$t9,244($s7)
    sw	$t9,-29436($s6)
    lw	$t8,248($s7)
    sw	$t8,-29432($s6)
    addiu	$a7,$s7,280
    addiu	$t1,$s6,-30720
    li	$t0,0x20
    # Line 2492
    li	$a3,256
    addiu	$s3,$s6,-30748
    move	$a0,$zero
    addiu	$s2,$s6,-30744
    addiu	$ra,$s6,-30740
    addiu	$a4,$s7,264
    addiu	$s1,$s6,-30736
    addiu	$a5,$s7,272
    addiu	$a6,$s6,-30728
    addiu	$t2,$s6,-30724
    addiu	$t3,$s7,276
    addiu	$t8,$s6,-30732
    addiu	$t9,$s7,268
    addiu	$s4,$s7,252
    # Line 2491
    sw	$s8,-29464($s6)
    addiu	$s0,$s7,260
    addiu	$s5,$s7,256
    nop
    nop
.L0d9d2df0:
    # Line 2492
    addu	$v1,$a0,$s4
    addu	$a1,$a0,$s3
    lw	$v1,0($v1)
    addu	$v0,$a0,$s5
    sw	$v1,0($a1)
    addu	$v1,$a0,$s2
    lw	$v0,0($v0)
    addu	$at,$a0,$s0
    sw	$v0,0($v1)
    addu	$v0,$a0,$ra
    lw	$at,0($at)
    addu	$a2,$a0,$a4
    sw	$at,0($v0)
    addu	$at,$a0,$s1
    lw	$a2,0($a2)
    addu	$a1,$a0,$t9
    sw	$a2,0($at)
    addu	$a2,$a0,$t8
    lw	$a1,0($a1)
    addu	$v1,$a0,$a5
    sw	$a1,0($a2)
    addu	$a1,$a0,$a6
    lw	$v1,0($v1)
    addu	$v0,$a0,$t3
    sw	$v1,0($a1)
    addu	$v1,$a0,$t2
    lw	$v0,0($v0)
    addiu	$a3,$a3,-8
    addu	$at,$a0,$a7
    sw	$v0,0($v1)
    addu	$v0,$a0,$t1
    lw	$at,0($at)
    addu	$a0,$a0,$t0
    bgtz	$a3,.L0d9d2df0
    sw	$at,0($v0)
    # Line 2409
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    ld	$s1,48($sp)
    ld	$s2,24($sp)
    ld	$s3,16($sp)
    ld	$s4,32($sp)
    # Line 2494
    lw	$a1,26976($s6)
    lw	$a0,160($s7)
    # Line 2409
    ld	$s5,40($sp)
    # Line 2494
    or	$a0,$a0,$a1
    sw	$a0,26976($s6)
    # Line 2409
    ld	$s6,56($sp)
    # Line 2494
    sw	$s8,4120($zero)
    # Line 2409
    ld	$ra,8($sp)
    # Line 2495
    sw	$zero,160($s7)
    # Line 2409
    ld	$s7,0($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9d2ec8:
    ld	$s6,56($sp)
.L0d9d2ecc:
    ld	$ra,8($sp)
    ld	$s8,64($sp)
    ld	$s0,72($sp)
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9d2ee4:
    # Line 2340
    lw	$a1,1792($s0)
.L0d9d2ee8:
    # Line 2347
    dsll32	$a2,$a1,0xe
    bgez	$a2,.L0d9d2f50
    move	$a4,$a1
    lw	$a1,25608($s6)
    lw	$a0,16($a1)
    beq	$a0,$s8,.L0d9d302c
    # Line 2355
    nop	# was lw $t9, -30640($gp) # &__glOdysseyValidateTexture
.L0d9d2f04:
    beqz	$a0,.L0d9d2f54
    # Line 2366
    and	$t0,$a3,$a4
    # Line 2359
    li	$a7,-9
    lw	$a6,31744($s0)
    and	$a6,$a6,$a7
    # Line 2361
    li	$a7,-33
    # Line 2360
    ori	$a6,$a6,0x10
    # Line 2362
    li	$a4,-3073
    # Line 2361
    and	$a6,$a6,$a7
    # Line 2362
    and	$a6,$a4,$a6
    ori	$a6,$a6,0x400
    sw	$a6,31744($s0)
    # Line 2364
    lw	$a5,26976($s6)
    sd	$s7,0($sp)
    ori	$a5,$a5,0x4
    sw	$a5,26976($s6)
    # Line 2366
    li	$a0,1
    b	.L0d9d2c54
    # Line 2364
    sw	$s8,4120($zero)
.L0d9d2f50:
    # Line 2366
    and	$t0,$a3,$a4
.L0d9d2f54:
    beqz	$t0,.L0d9d2fb4
    nop
    lw	$a1,25604($s6)
    lw	$a0,16($a1)
    beq	$a0,$s8,.L0d9d304c
    # Line 2375
    nop	# was lw $t9, -30640($gp) # &__glOdysseyValidateTexture
.L0d9d2f6c:
    beqz	$a0,.L0d9d2fb4
    # Line 2382
    li	$a4,-3073
    # Line 2379
    lw	$t2,31744($s0)
    # Line 2380
    li	$t3,-17
    # Line 2379
    ori	$t2,$t2,0x8
    # Line 2380
    and	$t2,$t2,$t3
    # Line 2381
    li	$t3,-33
    and	$t2,$t2,$t3
    # Line 2382
    and	$t2,$a4,$t2
    ori	$t2,$t2,0x400
    sw	$t2,31744($s0)
    # Line 2384
    lw	$t1,26976($s6)
    sd	$s7,0($sp)
    ori	$t1,$t1,0x4
    sw	$t1,26976($s6)
    # Line 2385
    move	$a0,$zero
    b	.L0d9d2c54
    # Line 2384
    sw	$s8,4120($zero)
.L0d9d2fb4:
    sd	$s7,0($sp)
.L0d9d2fb8:
    # Line 2398
    lw	$t9,31744($s0)
    li	$ra,-9
    and	$t9,$t9,$ra
    # Line 2399
    li	$ra,-17
    and	$t9,$t9,$ra
    # Line 2400
    li	$ra,-33
    # Line 2401
    li	$t8,-3073
    # Line 2400
    and	$t9,$t9,$ra
    # Line 2401
    and	$t8,$t8,$t9
    sw	$t8,31744($s0)
    # Line 2403
    lw	$t3,26976($s6)
    ori	$t3,$t3,0x4
    sw	$t3,26976($s6)
    sw	$s8,4120($zero)
    lw	$a1,25624($s6)
    beqz	$a1,.L0d9d2ec8
    ld	$s7,0($sp)
    # Line 2406
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,9536
    bal __glOdysseyGetCurrentTexture
    move	$a0,$s0
    b	.L0d9d2ecc
    ld	$s6,56($sp)
.L0d9d3014:
    # Line 2329
    bal __glOdysseyValidateTexture
    move	$a0,$s0
    lw	$a0,25612($s6)
    lui	$a3,0x1
    b	.L0d9d2c10
    lw	$a0,16($a0)
.L0d9d302c:
    sd	$a4,88($sp)
    # Line 2355
    bal __glOdysseyValidateTexture
    move	$a0,$s0
    lw	$a0,25608($s6)
    ld	$a4,88($sp)
    lui	$a3,0x1
    b	.L0d9d2f04
    lw	$a0,16($a0)
.L0d9d304c:
    # Line 2375
    bal __glOdysseyValidateTexture
    move	$a0,$s0
    lw	$a0,25604($s6)
    lui	$a3,0x1
    b	.L0d9d2f6c
    lw	$a0,16($a0)
.end __glOdysseyValidateTextureState

# Function: IsLegalRange
# Declared: Line 2503 (Source lines: 2508-2519)
# Address: 0x0d9d3070 - 0x0d9d30e8 (Size: 120 bytes, Frame: 16)
.ent IsLegalRange
IsLegalRange:
    # Line 2508
    addiu	$sp,$sp,-16
    # Line 2514
    addu	$v0,$a1,$a1
    # Line 2510
    bltz	$a1,.L0d9d30d8
    sd	$ra,0($sp)
    slti	$at,$a1,2
    move	$ra,$ra
    beqz	$at,.L0d9d30d8
    # Line 2515
    li	$a1,0x8000
    # Line 2514
    subu	$a0,$a0,$v0
    # Line 2519
    li	$v0,1
    # Line 2515
    bltz	$a0,.L0d9d30bc
    addiu	$v1,$a0,-1
    and	$v1,$a0,$v1
    bnez	$v1,.L0d9d30bc
    slt	$a1,$a1,$a0
    bnez	$a1,.L0d9d30c0
    # Line 2516
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2519
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d30bc:
    # Line 2516
    # lw $t9, -26792($gp) # &__glSetError
.L0d9d30c0:
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    # Line 2517
    move	$v0,$zero
    # Line 2519
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d30d8:
    ld	$ra,0($sp)
    # Line 2511
    move	$v0,$zero
    # Line 2519
    jr	$ra
    addiu	$sp,$sp,16
.end IsLegalRange

# Function: CheckSubImageSizes
# Declared: Line 2523 (Source lines: 2526-2582)
# Address: 0x0d9d30f0 - 0x0d9d323c (Size: 332 bytes, Frame: 192)
.ent CheckSubImageSizes
CheckSubImageSizes:
    # Line 2526
    addiu	$sp,$sp,-64
    sd	$a5,56($sp)
    sd	$a6,8($sp)
    sd	$a7,0($sp)
    sd	$ra,32($sp)
    sd	$s1,24($sp)
    sd	$s2,48($sp)
    # Line 2533
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    # Line 2526
    move	$s2,$a2
    sd	$s0,40($sp)
    move	$s0,$a3
    move	$s1,$a4
    sd	$a1,16($sp)
    # Line 2533
    move	$a1,$a0
    bal __glOdysseyGetCurrentTexture
    lw	$a0,4112($zero)
    # Line 2539
    ld	$a6,16($sp)
    ld	$a4,56($sp)
    sll	$a5,$a6,0x4
    # Line 2575
    ld	$at,8($sp)
    # Line 2539
    addu	$a5,$a5,$a6
    # Line 2565
    ld	$t9,0($sp)
    # Line 2539
    sll	$a5,$a5,0x2
    # Line 2565
    ld	$t8,8($sp)
    # Line 2539
    addu	$a5,$v0,$a5
    lw	$t0,1392($a5)
    # Line 2541
    lw	$a3,1400($a5)
    # Line 2559
    lw	$a7,1404($a5)
    # Line 2562
    li	$t3,1
    # Line 2543
    beqz	$t0,.L0d9d3234
    # Line 2540
    lw	$a2,1396($a5)
    # Line 2543
    beqz	$a2,.L0d9d3234
    nop
    beqz	$a3,.L0d9d3234
    # Line 2561
    li	$t1,1
    # Line 2560
    addu	$s2,$s2,$a7
    # Line 2562
    move	$t2,$a7
    slt	$t3,$t3,$a3
    # Line 2561
    slt	$t1,$t1,$a2
    # Line 2562
    movz	$t2,$zero,$t3
    # Line 2561
    movz	$a7,$zero,$t1
    # Line 2562
    addu	$s1,$s1,$t2
    # Line 2565
    bltz	$s2,.L0d9d3218
    # Line 2561
    addu	$s0,$s0,$a7
    # Line 2565
    bltz	$s0,.L0d9d321c
    # Line 2582
    ld	$ra,32($sp)
    # Line 2565
    bltz	$s1,.L0d9d321c
    # Line 2582
    ld	$ra,32($sp)
    # Line 2565
    bltz	$a4,.L0d9d321c
    # Line 2582
    ld	$ra,32($sp)
    # Line 2565
    bltz	$t8,.L0d9d321c
    # Line 2582
    ld	$ra,32($sp)
    # Line 2565
    bltz	$t9,.L0d9d3218
    # Line 2575
    addu	$ra,$s2,$a4
    slt	$ra,$t0,$ra
    bnez	$ra,.L0d9d3200
    # Line 2579
    li	$v0,1281
    # Line 2575
    addu	$at,$s0,$at
    slt	$at,$a2,$at
    bnez	$at,.L0d9d31fc
    ld	$v0,0($sp)
    addu	$v0,$s1,$v0
    slt	$v0,$a3,$v0
    bnez	$v0,.L0d9d3200
    # Line 2579
    li	$v0,1281
    b	.L0d9d3200
    # Line 2582
    move	$v0,$zero
.L0d9d31fc:
    # Line 2579
    li	$v0,1281
.L0d9d3200:
    # Line 2582
    ld	$ra,32($sp)
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9d3218:
    ld	$ra,32($sp)
.L0d9d321c:
    ld	$s0,40($sp)
    # Line 2572
    li	$v0,1281
    # Line 2582
    ld	$s1,24($sp)
    ld	$s2,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9d3234:
    # Line 2547
    b	.L0d9d3200
    li	$v0,1282
.end CheckSubImageSizes

# Function: CheckInternalFormat
# Declared: Line 2586 (Source lines: 2588-2641)
# Address: 0x0d9d3240 - 0x0d9d3648 (Size: 1032 bytes, Frame: 0)
.ent CheckInternalFormat
CheckInternalFormat:
    # Line 2588
    li	$a2,0x8047
    slt	$at,$a0,$a2
    bnez	$at,.L0d9d32a4
    slt	$v0,$a2,$a0
    beqz	$v0,.L0d9d3308
    li	$a2,0x8053
    slt	$v1,$a0,$a2
    bnez	$v1,.L0d9d3358
    slt	$a1,$a2,$a0
    beqz	$a1,.L0d9d3308
    li	$a2,0x8059
    slt	$a3,$a0,$a2
    bnez	$a3,.L0d9d3444
    slt	$a4,$a2,$a0
    beqz	$a4,.L0d9d3308
    li	$a2,0x8466
    slt	$a5,$a0,$a2
    bnez	$a5,.L0d9d3538
    slt	$a6,$a2,$a0
    beqz	$a6,.L0d9d3308
    li	$a7,0x8467
    bne	$a0,$a7,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d32a4:
    li	$a2,0x803c
    slt	$t0,$a0,$a2
    bnez	$t0,.L0d9d3310
    slt	$t1,$a2,$a0
    beqz	$t1,.L0d9d3308
    li	$a2,0x8042
    slt	$t2,$a0,$a2
    bnez	$t2,.L0d9d3400
    slt	$t3,$a2,$a0
    beqz	$t3,.L0d9d3308
    li	$a2,0x8045
    slt	$t8,$a0,$a2
    bnez	$t8,.L0d9d3518
    slt	$t9,$a2,$a0
    beqz	$t9,.L0d9d3308
    li	$at,0x8046
    bne	$a0,$at,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d32f4:
    slti	$v0,$a0,2
    bnez	$v0,.L0d9d3434
    li	$a6,1
    beqz	$a3,.L0d9d343c
    nop
.L0d9d3308:
    # Line 2638
    jr	$ra
    # Line 2641
    move	$v0,$zero
.L0d9d3310:
    # Line 2588
    slti	$a2,$a0,6407
    bnez	$a2,.L0d9d33a4
    slti	$a3,$a0,3
    slti	$v1,$a0,6408
    bnez	$v1,.L0d9d3308
    slti	$a2,$a0,6410
    bnez	$a2,.L0d9d34bc
    slti	$v0,$a0,6409
    slti	$a1,$a0,6411
    bnez	$a1,.L0d9d3308
    li	$a2,0x803b
    slt	$a3,$a0,$a2
    bnez	$a3,.L0d9d3600
    slt	$a4,$a2,$a0
    beqz	$a4,.L0d9d3308
    nop
    b	.L0d9d343c
    nop
.L0d9d3358:
    li	$a2,0x804d
    slt	$a5,$a0,$a2
    bnez	$a5,.L0d9d33cc
    slt	$a6,$a2,$a0
    beqz	$a6,.L0d9d3308
    li	$a2,0x8050
    slt	$a7,$a0,$a2
    bnez	$a7,.L0d9d34f4
    slt	$t0,$a2,$a0
    beqz	$t0,.L0d9d3308
    li	$a2,0x8052
    slt	$t1,$a0,$a2
    bnez	$t1,.L0d9d3638
    li	$a5,0x8051
    slt	$t2,$a2,$a0
    beqz	$t2,.L0d9d3308
    nop
    b	.L0d9d343c
    nop
.L0d9d33a4:
    bnez	$a3,.L0d9d32f4
    slti	$t3,$a0,4
    bnez	$t3,.L0d9d3308
    slti	$t8,$a0,6406
    bnez	$t8,.L0d9d3590
    li	$t8,4
    bnez	$a2,.L0d9d3308
    nop
    b	.L0d9d343c
    nop
.L0d9d33cc:
    li	$a2,0x804a
    slt	$t9,$a0,$a2
    bnez	$t9,.L0d9d3478
    slt	$at,$a2,$a0
    beqz	$at,.L0d9d3308
    li	$a2,0x804c
    slt	$v0,$a0,$a2
    bnez	$v0,.L0d9d35c4
    slt	$v1,$a2,$a0
    beqz	$v1,.L0d9d3308
    nop
    b	.L0d9d343c
    nop
.L0d9d3400:
    li	$a2,0x803f
    slt	$a1,$a0,$a2
    bnez	$a1,.L0d9d3498
    slt	$a3,$a2,$a0
    beqz	$a3,.L0d9d3308
    li	$a2,0x8041
    slt	$a4,$a0,$a2
    bnez	$a4,.L0d9d35ec
    slt	$a5,$a2,$a0
    beqz	$a5,.L0d9d3308
    nop
    b	.L0d9d343c
    nop
.L0d9d3434:
    beq	$a0,$a6,.L0d9d3308
    nop
.L0d9d343c:
    # Line 2638
    jr	$ra
    li	$v0,1281
.L0d9d3444:
    # Line 2588
    li	$a2,0x8056
    slt	$a7,$a0,$a2
    bnez	$a7,.L0d9d34d4
    slt	$t0,$a2,$a0
    beqz	$t0,.L0d9d3308
    li	$a2,0x8058
    slt	$t1,$a0,$a2
    bnez	$t1,.L0d9d3624
    slt	$t2,$a2,$a0
    beqz	$t2,.L0d9d3308
    nop
    b	.L0d9d343c
    nop
.L0d9d3478:
    li	$a2,0x8049
    slt	$t3,$a0,$a2
    bnez	$t3,.L0d9d355c
    slt	$t8,$a2,$a0
    beqz	$t8,.L0d9d3308
    nop
    b	.L0d9d343c
    nop
.L0d9d3498:
    li	$a2,0x803e
    slt	$t9,$a0,$a2
    bnez	$t9,.L0d9d3570
    li	$t2,0x803d
    slt	$at,$a2,$a0
    beqz	$at,.L0d9d3308
    nop
    b	.L0d9d343c
    nop
.L0d9d34bc:
    bnez	$v0,.L0d9d3580
    li	$t3,6408
    bnez	$a2,.L0d9d3308
    nop
    b	.L0d9d343c
    nop
.L0d9d34d4:
    li	$a2,0x8055
    slt	$v1,$a0,$a2
    bnez	$v1,.L0d9d35a0
    slt	$a1,$a2,$a0
    beqz	$a1,.L0d9d3308
    nop
    b	.L0d9d343c
    nop
.L0d9d34f4:
    li	$a2,0x804f
    slt	$a3,$a0,$a2
    bnez	$a3,.L0d9d35b4
    li	$at,0x804e
    slt	$a4,$a2,$a0
    beqz	$a4,.L0d9d3308
    nop
    b	.L0d9d343c
    nop
.L0d9d3518:
    li	$a2,0x8044
    slt	$a5,$a0,$a2
    bnez	$a5,.L0d9d35d8
    slt	$a6,$a2,$a0
    beqz	$a6,.L0d9d3308
    nop
    b	.L0d9d343c
    nop
.L0d9d3538:
    li	$a2,0x805b
    slt	$a7,$a0,$a2
    bnez	$a7,.L0d9d3614
    li	$a3,0x805a
    slt	$t0,$a2,$a0
    beqz	$t0,.L0d9d3308
    nop
    b	.L0d9d343c
    nop
.L0d9d355c:
    li	$t1,0x8048
    bne	$a0,$t1,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d3570:
    bne	$a0,$t2,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d3580:
    bne	$a0,$t3,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d3590:
    bne	$a0,$t8,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d35a0:
    li	$t9,0x8054
    bne	$a0,$t9,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d35b4:
    bne	$a0,$at,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d35c4:
    li	$v0,0x804b
    bne	$a0,$v0,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d35d8:
    li	$v1,0x8043
    bne	$a0,$v1,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d35ec:
    li	$a1,0x8040
    bne	$a0,$a1,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d3600:
    li	$a2,10768
    bne	$a0,$a2,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d3614:
    bne	$a0,$a3,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d3624:
    li	$a4,0x8057
    bne	$a0,$a4,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.L0d9d3638:
    bne	$a0,$a5,.L0d9d343c
    nop
    b	.L0d9d3308
    nop
.end CheckInternalFormat

# Function: CheckHostFormatType
# Declared: Line 2645 (Source lines: 2649-2806)
# Address: 0x0d9d3650 - 0x0d9d3a5c (Size: 1036 bytes, Frame: 0)
.ent CheckHostFormatType
CheckHostFormatType:
    # Line 2649
    li	$v0,0x8034
    sltu	$at,$a1,$v0
    bnez	$at,.L0d9d36a0
    sltu	$v1,$v0,$a1
    beqz	$v1,.L0d9d371c
    li	$v0,0x8364
    sltu	$a5,$a1,$v0
    bnez	$a5,.L0d9d37f8
    sltu	$a6,$v0,$a1
    beqz	$a6,.L0d9d3810
    li	$v0,0x8367
    sltu	$a7,$a1,$v0
    bnez	$a7,.L0d9d3964
    sltu	$t0,$v0,$a1
    beqz	$t0,.L0d9d371c
    li	$t1,0x8368
    bne	$a1,$t1,.L0d9d3890
    nop
    b	.L0d9d3720
    # Line 2692
    lw	$v0,0($a0)
.L0d9d36a0:
    # Line 2649
    sltiu	$v0,$a1,5125
    bnez	$v0,.L0d9d37b8
    sltiu	$t2,$a1,5126
    beqz	$t2,.L0d9d3834
    li	$v0,0x8032
    lw	$v0,0($a0)
.L0d9d36b8:
    # Line 2726
    sltiu	$t3,$v0,6409
.L0d9d36bc:
    bnez	$t3,.L0d9d377c
    sltiu	$t8,$v0,6410
    bnez	$t8,.L0d9d3754
    li	$a7,0x80e1
    sltu	$t9,$v0,$a7
    bnez	$t9,.L0d9d3898
    sltu	$at,$a7,$v0
    beqz	$at,.L0d9d3758
    # Line 2779
    li	$t8,0x85a2
    # Line 2726
    li	$a7,0x8467
    sltu	$v1,$v0,$a7
    bnez	$v1,.L0d9d39cc
    sltu	$a5,$a7,$v0
    beqz	$a5,.L0d9d39d8
    # Line 2739
    li	$a6,5123
    b	.L0d9d37f0
    nop
.L0d9d3700:
    # Line 2649
    li	$v0,0x8036
    sltu	$a6,$a1,$v0
    bnez	$a6,.L0d9d3988
    li	$t9,0x8035
    sltu	$a7,$v0,$a1
    bnez	$a7,.L0d9d3890
    nop
.L0d9d371c:
    # Line 2692
    lw	$v0,0($a0)
.L0d9d3720:
    li	$t0,6408
    beq	$v0,$t0,.L0d9d36bc
    # Line 2726
    sltiu	$t3,$v0,6409
    # Line 2692
    li	$t1,0x8000
    beq	$v0,$t1,.L0d9d36bc
    # Line 2726
    sltiu	$t3,$v0,6409
    # Line 2692
    li	$t2,0x80e1
    beq	$v0,$t2,.L0d9d36bc
    # Line 2726
    sltiu	$t3,$v0,6409
    # Line 2722
    jr	$ra
    # Line 2698
    li	$v0,1282
.L0d9d374c:
    # Line 2726
    li	$t3,6400
    bne	$v0,$t3,.L0d9d37f0
.L0d9d3754:
    # Line 2779
    li	$t8,0x85a2
.L0d9d3758:
    beq	$a4,$t8,.L0d9d3774
    li	$t9,0x85a3
    beq	$a4,$t9,.L0d9d3920
    # Line 2783
    li	$t0,6407
    # Line 2779
    li	$at,0x85a4
    beq	$a4,$at,.L0d9d3938
    nop
.L0d9d3774:
    # Line 2722
    jr	$ra
    # Line 2806
    move	$v0,$zero
.L0d9d377c:
    # Line 2726
    sltiu	$v1,$v0,6405
    bnez	$v1,.L0d9d37d4
    sltiu	$t2,$v0,6403
    sltiu	$a5,$v0,6406
    bnez	$a5,.L0d9d3758
    # Line 2779
    li	$t8,0x85a2
    # Line 2726
    sltiu	$a6,$v0,6407
    bnez	$a6,.L0d9d3950
    sltiu	$a7,$v0,6408
    bnez	$a7,.L0d9d3754
    li	$t0,6408
    bne	$v0,$t0,.L0d9d37f0
    nop
    b	.L0d9d3758
    # Line 2779
    li	$t8,0x85a2
.L0d9d37b8:
    # Line 2649
    sltiu	$a7,$a1,5122
    bnez	$a7,.L0d9d386c
    sltiu	$t1,$a1,5123
    beqz	$t1,.L0d9d38f4
    sltiu	$a6,$a1,5124
    b	.L0d9d36b8
    lw	$v0,0($a0)
.L0d9d37d4:
    # Line 2726
    bnez	$t2,.L0d9d374c
    sltiu	$t3,$v0,6404
    bnez	$t3,.L0d9d3758
    # Line 2779
    li	$t8,0x85a2
    # Line 2726
    li	$t8,6404
    beq	$v0,$t8,.L0d9d3758
    # Line 2779
    li	$t8,0x85a2
.L0d9d37f0:
    # Line 2722
    jr	$ra
    # Line 2776
    li	$v0,1280
.L0d9d37f8:
    # Line 2649
    li	$v0,0x8362
    sltu	$t9,$a1,$v0
    bnez	$t9,.L0d9d3700
    sltu	$at,$v0,$a1
    bnez	$at,.L0d9d3888
    li	$t3,0x8363
.L0d9d3810:
    # Line 2675
    lw	$v0,0($a0)
    li	$v1,6407
    beq	$v0,$v1,.L0d9d36bc
    # Line 2726
    sltiu	$t3,$v0,6409
    # Line 2675
    li	$a5,0x80e0
    beq	$v0,$a5,.L0d9d36bc
    # Line 2726
    sltiu	$t3,$v0,6409
    # Line 2722
    jr	$ra
    # Line 2680
    li	$v0,1282
.L0d9d3834:
    # Line 2649
    sltu	$a6,$a1,$v0
    bnez	$a6,.L0d9d38c8
    sltu	$a7,$v0,$a1
    bnez	$a7,.L0d9d3998
    li	$at,0x8033
.L0d9d3848:
    # Line 2664
    lw	$v0,0($a0)
    li	$t0,6407
    beq	$v0,$t0,.L0d9d36bc
    # Line 2726
    sltiu	$t3,$v0,6409
    # Line 2664
    li	$t1,0x80e0
    beq	$v0,$t1,.L0d9d36bc
    # Line 2726
    sltiu	$t3,$v0,6409
    # Line 2722
    jr	$ra
    # Line 2669
    li	$v0,1282
.L0d9d386c:
    # Line 2649
    sltiu	$t2,$a1,5121
    bnez	$t2,.L0d9d390c
    nop
    beqz	$a7,.L0d9d3890
    nop
    b	.L0d9d36b8
    lw	$v0,0($a0)
.L0d9d3888:
    beq	$a1,$t3,.L0d9d3848
    nop
.L0d9d3890:
    # Line 2722
    jr	$ra
    li	$v0,1280
.L0d9d3898:
    # Line 2726
    li	$a7,0x8000
    sltu	$t8,$v0,$a7
    bnez	$t8,.L0d9d3940
    li	$t1,6410
    sltu	$t9,$a7,$v0
    beqz	$t9,.L0d9d3758
    # Line 2779
    li	$t8,0x85a2
    # Line 2726
    li	$at,0x80e0
    bne	$v0,$at,.L0d9d37f0
    nop
    b	.L0d9d3758
    # Line 2779
    li	$t8,0x85a2
.L0d9d38c8:
    # Line 2649
    sltiu	$v0,$a1,6656
    bnez	$v0,.L0d9d39a8
    sltiu	$v1,$a1,6657
    beqz	$v1,.L0d9d3890
    nop
    lw	$v0,0($a0)
    li	$a5,6400
    beq	$v0,$a5,.L0d9d36bc
    # Line 2726
    sltiu	$t3,$v0,6409
    # Line 2722
    jr	$ra
    # Line 2652
    li	$v0,1280
.L0d9d38f4:
    # Line 2649
    bnez	$a6,.L0d9d39bc
    li	$v1,5123
    beqz	$v0,.L0d9d3890
    nop
    b	.L0d9d36b8
    lw	$v0,0($a0)
.L0d9d390c:
    li	$a7,5120
    bne	$a1,$a7,.L0d9d3890
    nop
    b	.L0d9d36b8
    lw	$v0,0($a0)
.L0d9d3920:
    # Line 2783
    beq	$v0,$t0,.L0d9d39e8
    li	$a4,6408
    beq	$a4,$v0,.L0d9d39ec
    # Line 2791
    li	$a7,5121
    # Line 2722
    jr	$ra
    # Line 2789
    li	$v0,1282
.L0d9d3938:
    # Line 2722
    jr	$ra
    # Line 2803
    li	$v0,1282
.L0d9d3940:
    # Line 2726
    bne	$v0,$t1,.L0d9d37f0
    nop
    b	.L0d9d3758
    # Line 2779
    li	$t8,0x85a2
.L0d9d3950:
    # Line 2726
    li	$t2,6406
    bne	$v0,$t2,.L0d9d37f0
    nop
    b	.L0d9d3758
    # Line 2779
    li	$t8,0x85a2
.L0d9d3964:
    # Line 2649
    li	$v0,0x8366
    sltu	$t3,$a1,$v0
    bnez	$t3,.L0d9d3a08
    li	$t1,0x8365
    sltu	$t8,$v0,$a1
    beqz	$t8,.L0d9d371c
    nop
    b	.L0d9d3890
    nop
.L0d9d3988:
    bne	$a1,$t9,.L0d9d3890
    nop
    b	.L0d9d3720
    # Line 2692
    lw	$v0,0($a0)
.L0d9d3998:
    # Line 2649
    bne	$a1,$at,.L0d9d3890
    nop
    b	.L0d9d3720
    # Line 2692
    lw	$v0,0($a0)
.L0d9d39a8:
    # Line 2649
    li	$v0,5126
    bne	$a1,$v0,.L0d9d3890
    nop
    b	.L0d9d36b8
    lw	$v0,0($a0)
.L0d9d39bc:
    bne	$a1,$v1,.L0d9d3890
    nop
    b	.L0d9d36b8
    lw	$v0,0($a0)
.L0d9d39cc:
    # Line 2726
    li	$a5,0x8466
    bne	$v0,$a5,.L0d9d37f0
    # Line 2739
    li	$a6,5123
.L0d9d39d8:
    beq	$a1,$a6,.L0d9d3758
    # Line 2779
    li	$t8,0x85a2
    # Line 2722
    jr	$ra
    # Line 2741
    li	$v0,1280
.L0d9d39e8:
    # Line 2791
    li	$a7,5121
.L0d9d39ec:
    beq	$a1,$a7,.L0d9d3a18
    # Line 2786
    sw	$a4,0($a0)
    # Line 2791
    li	$t0,5123
    beq	$a1,$t0,.L0d9d3a1c
    # Line 2794
    sra	$t3,$a2,0x1f
    # Line 2722
    jr	$ra
    # Line 2799
    li	$v0,1282
.L0d9d3a08:
    # Line 2649
    bne	$a1,$t1,.L0d9d3890
    nop
    b	.L0d9d3720
    # Line 2692
    lw	$v0,0($a0)
.L0d9d3a18:
    # Line 2794
    sra	$t3,$a2,0x1f
.L0d9d3a1c:
    xor	$t2,$a2,$t3
    subu	$t2,$t2,$t3
    andi	$t2,$t2,0x1
    xor	$t2,$t2,$t3
    subu	$t2,$t2,$t3
    bnez	$t2,.L0d9d3a54
    sra	$t8,$a3,0x1f
    xor	$t3,$a3,$t8
    subu	$t3,$t3,$t8
    andi	$t3,$t3,0x1
    xor	$t3,$t3,$t8
    subu	$t3,$t3,$t8
    beqz	$t3,.L0d9d3774
    nop
.L0d9d3a54:
    # Line 2722
    jr	$ra
    # Line 2795
    li	$v0,1282
.end CheckHostFormatType

# Function: CheckTargetLevel
# Declared: Line 2810 (Source lines: 2816-2834)
# Address: 0x0d9d3a60 - 0x0d9d3b18 (Size: 184 bytes, Frame: 0)
.ent CheckTargetLevel
CheckTargetLevel:
    # Line 2816
    sltiu	$a5,$a0,3554
    li	$a6,0x8063
    li	$a3,0x8064
    li	$a7,3552
    sltu	$at,$a0,$a3
    li	$t1,0x806f
    sltiu	$a4,$a0,3553
    bnez	$at,.L0d9d3ab4
    sltu	$v0,$a3,$a0
    li	$a3,0x8070
    sltu	$a2,$a3,$a0
    beqz	$v0,.L0d9d3adc
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0d9d3b00
    li	$a3,0x8095
    beqz	$a2,.L0d9d3adc
    nop
    bne	$a0,$a3,.L0d9d3b08
    nop
    b	.L0d9d3adc
    nop
.L0d9d3ab4:
    bnez	$a4,.L0d9d3ad4
    nop
    bnez	$a5,.L0d9d3adc
    nop
    bne	$a0,$a6,.L0d9d3b08
    nop
    b	.L0d9d3adc
    nop
.L0d9d3ad4:
    bne	$a0,$a7,.L0d9d3b08
    nop
.L0d9d3adc:
    # Line 2830
    bltz	$a1,.L0d9d3af8
    # Line 2831
    li	$v0,1281
    # Line 2830
    lw	$t0,4112($zero)
    lw	$t0,3732($t0)
    slt	$t0,$t0,$a1
    beqz	$t0,.L0d9d3b10
    nop
.L0d9d3af8:
    # Line 2826
    jr	$ra
    nop
.L0d9d3b00:
    # Line 2816
    beq	$a0,$t1,.L0d9d3adc
    nop
.L0d9d3b08:
    # Line 2826
    jr	$ra
    li	$v0,1280
.L0d9d3b10:
    jr	$ra
    # Line 2834
    move	$v0,$zero
.end CheckTargetLevel

# Function: TexImage
# Declared: Line 2842 (Source lines: 2847-2982)
# Address: 0x0d9d3b20 - 0x0d9d3fc0 (Size: 1184 bytes, Frame: 144)
.ent TexImage
TexImage:
    # Line 2847
    addiu	$sp,$sp,-272
    sd	$a1,168($sp)
    sd	$a2,160($sp)
    sd	$a3,152($sp)
    sd	$a4,120($sp)
    sd	$a5,128($sp)
    sd	$a6,144($sp)
    sd	$a7,136($sp)
    sd	$s1,176($sp)
    # Line 2852
    lw	$at,4120($zero)
    lw	$s1,4112($zero)
    li	$v0,1
    # Line 2847
    sd	$s0,184($sp)
    move	$s0,$a0
    # Line 2852
    beq	$at,$v0,.L0d9d3c0c
    sd	$ra,192($sp)
    # Line 2854
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    move	$a0,$s1
    bal __glOdysseyGetCurrentTexture
    move	$a1,$s0
    # Line 2860
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,14944
    # Line 2854
    sd	$v0,112($sp)
    # Line 2860
    move	$a0,$s0
    bal __glOdysseyValidateTextureState
    ld	$a1,168($sp)
    beqz	$v0,.L0d9d3bac
    # Line 2861
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
.L0d9d3b98:
    ld	$ra,192($sp)
.L0d9d3b9c:
    ld	$s1,176($sp)
    ld	$s0,184($sp)
    # Line 2982
    jr	$ra
    addiu	$sp,$sp,272
.L0d9d3bac:
    # Line 2864
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a3,152($sp)
    addiu	$t9,$t9,13904
    move	$a2,$zero
    lw	$a4,1224($s1)
    addiu	$a0,$sp,300
    bal __glOdysseyValidateTextureState
    lw	$a1,308($sp)
    beqz	$v0,.L0d9d3be4
    # Line 2866
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d9d3b9c
    ld	$ra,192($sp)
.L0d9d3be4:
    # Line 2869
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,12864
    bal __glOdysseyValidateTextureState
    ld	$a0,160($sp)
    beqz	$v0,.L0d9d3c20
    # Line 2870
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d9d3b9c
    ld	$ra,192($sp)
.L0d9d3c0c:
    # Line 2852
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d3b9c
    ld	$ra,192($sp)
.L0d9d3c20:
    # Line 2873
    ld	$a1,152($sp)
    # Line 2871
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 2873
    lw	$a0,284($sp)
    # Line 2871
    addiu	$t9,$t9,12400
    # Line 2873
    addu	$a0,$a0,$a1
    sd	$a0,48($sp)
    bal __glOdysseyValidateTextureState
    ld	$a1,144($sp)
    beqz	$v0,.L0d9d3f94
    ld	$a1,120($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    lw	$a0,292($sp)
    addiu	$t9,$t9,12400
    addu	$a0,$a0,$a1
    sd	$a0,40($sp)
    bal __glOdysseyValidateTextureState
    ld	$a1,136($sp)
    beqz	$v0,.L0d9d3f94
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,12400
    ld	$a0,128($sp)
    bal __glOdysseyValidateTextureState
    lw	$a1,276($sp)
    beqz	$v0,.L0d9d3f98
    # Line 2877
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 2879
    lw	$ra,1816($s1)
    andi	$ra,$ra,0x1
    beqz	$ra,.L0d9d3ca8
    nop	# was lw $t9, -32516($gp) # &__glOdysseyAsyncCheck
    move	$a0,$s1
    jal	__glOdysseyAsyncCheck
    li	$a1,1
    beqz	$v0,.L0d9d3b9c
    ld	$ra,192($sp)
.L0d9d3ca8:
    # Line 2888
    li	$t9,0x8063
    beq	$t9,$s0,.L0d9d3d2c
    li	$at,0x8064
    beq	$s0,$at,.L0d9d3d2c
    li	$v0,0x8070
    beq	$s0,$v0,.L0d9d3d30
    # Line 2891
    ld	$a2,168($sp)
    sd	$zero,32($sp)
.L0d9d3cc8:
    # Line 2893
    ld	$a1,168($sp)
    ld	$a2,48($sp)
    ld	$a3,40($sp)
    ld	$a4,128($sp)
    ld	$a5,144($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a6,136($sp)
    lw	$a7,276($sp)
    addiu	$t9,$t9,944
    ld	$v1,160($sp)
    move	$a0,$s0
    bal __glOdysseyGetCurrentTexture
    sw	$v1,4($sp)
    beqz	$v0,.L0d9d3b9c
    ld	$ra,192($sp)
    # Line 2956
    ld	$ra,32($sp)
    beqz	$ra,.L0d9d3ef8
    # Line 2902
    nop	# was lw $t9, -30984($gp) # &__glOdysseyDestroyPMObj
    ld	$a1,112($sp)
    move	$a0,$s1
    ld	$a2,168($sp)
    jal	__glOdysseyDestroyPMObj
    addiu	$a1,$a1,1276
    b	.L0d9d3b9c
    ld	$ra,192($sp)
.L0d9d3d2c:
    # Line 2891
    ld	$a2,168($sp)
.L0d9d3d30:
    # Line 2888
    li	$a3,1
    # Line 2891
    beqz	$a2,.L0d9d3cc8
    sd	$a3,32($sp)
    # Line 2914
    ld	$at,152($sp)
    ld	$a3,144($sp)
    ld	$t1,168($sp)
    li	$t0,1
    addu	$a3,$a3,$a3
    sllv	$t0,$t0,$t1
    subu	$at,$at,$a3
    mult	$t0,$at
    # Line 2915
    ld	$ra,136($sp)
    ld	$a7,120($sp)
    addu	$ra,$ra,$ra
    subu	$a7,$a7,$ra
    # Line 2914
    mflo	$a6
    nop
    nop
    # Line 2917
    mult	$t0,$a7
    # Line 2918
    lw	$a2,276($sp)
    ld	$t3,128($sp)
    addu	$a2,$a2,$a2
    subu	$t3,$t3,$a2
    # Line 2917
    mflo	$t2
    nop
    nop
    # Line 2920
    mult	$t0,$t3
    # Line 2918
    li	$a4,0x8070
    xor	$a5,$t9,$s0
    xor	$a4,$s0,$a4
    # Line 2914
    move	$t8,$a6
    movz	$t2,$a7,$a5
    # Line 2920
    mflo	$a5
    # Line 2925
    beqz	$a6,.L0d9d3fa8
    movz	$t3,$a5,$a4
.L0d9d3dbc:
    sd	$zero,104($sp)
    sd	$a2,72($sp)
    sd	$a3,64($sp)
    sd	$ra,56($sp)
.L0d9d3dcc:
    # Line 2930
    ld	$a6,136($sp)
.L0d9d3dd0:
    ld	$a5,144($sp)
    ld	$a1,104($sp)
    sltiu	$t1,$t2,1
    sltiu	$t9,$t3,1
    lw	$a7,276($sp)
    move	$t0,$t3
    li	$t3,1
    movn	$t2,$t3,$t1
    sd	$t2,80($sp)
    ld	$a2,64($sp)
    ld	$a3,56($sp)
    movn	$t0,$t3,$t9
    sd	$t0,96($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    move	$a0,$s0
    ld	$a4,72($sp)
    sltiu	$t1,$t8,1
    movn	$t8,$t3,$t1
    sd	$t8,88($sp)
    addiu	$t9,$t9,944
    addu	$a3,$a3,$t2
    addu	$a4,$a4,$t0
    ld	$t0,160($sp)
    sw	$t0,4($sp)
    bal __glOdysseyGetCurrentTexture
    addu	$a2,$a2,$t8
    beqz	$v0,.L0d9d3e7c
    # Line 2941
    ld	$t2,80($sp)
    # Line 2938
    ld	$t8,88($sp)
    # Line 2939
    sra	$t2,$t2,0x1
    # Line 2940
    ld	$t3,96($sp)
    # Line 2941
    ld	$t9,104($sp)
    # Line 2938
    sra	$t8,$t8,0x1
    # Line 2940
    sra	$t3,$t3,0x1
    # Line 2941
    addiu	$t9,$t9,1
    bnez	$t8,.L0d9d3dcc
    sd	$t9,104($sp)
    bnez	$t2,.L0d9d3dd0
    # Line 2930
    ld	$a6,136($sp)
    # Line 2941
    bnez	$t3,.L0d9d3dd0
    # Line 2930
    ld	$a6,136($sp)
    b	.L0d9d3ee0
    # Line 2954
    nop	# was lw $t9, -30988($gp) # &__glOdysseyDestroyPMObjGroup
.L0d9d3e7c:
    # Line 2930
    ld	$at,168($sp)
    sll	$ra,$at,0x4
    ld	$t9,112($sp)
    addu	$ra,$ra,$at
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    sdl	$zero,1364($t9)
    sdr	$zero,1371($t9)
    sdl	$zero,1372($t9)
    sdr	$zero,1379($t9)
    sdl	$zero,1380($t9)
    sdr	$zero,1387($t9)
    sdl	$zero,1388($t9)
    sdr	$zero,1395($t9)
    sdl	$zero,1396($t9)
    sdr	$zero,1403($t9)
    sdl	$zero,1404($t9)
    sdr	$zero,1411($t9)
    sdl	$zero,1412($t9)
    sdr	$zero,1419($t9)
    sdl	$zero,1420($t9)
    sdr	$zero,1427($t9)
    swl	$zero,1428($t9)
    swr	$zero,1431($t9)
    # Line 2954
    # lw $t9, -30988($gp) # &__glOdysseyDestroyPMObjGroup
.L0d9d3ee0:
    ld	$a1,112($sp)
    move	$a0,$s1
    jal	__glOdysseyDestroyPMObjGroup
    addiu	$a1,$a1,1276
    b	.L0d9d3b9c
    ld	$ra,192($sp)
.L0d9d3ef8:
    # Line 2961
    ld	$a7,112($sp)
    # Line 2962
    lw	$a4,316($sp)
    # Line 2961
    lw	$a6,160($a7)
    # Line 2960
    li	$a2,2
    # Line 2962
    lui	$a5,0x1
    # Line 2960
    sw	$a2,16($a7)
    # Line 2962
    addu	$a5,$s1,$a5
    # Line 2961
    ori	$a6,$a6,0x200
    sw	$a6,160($a7)
    # Line 2962
    lw	$a3,26980($a5)
    ori	$a3,$a3,0x200
    sw	$a3,26980($a5)
    beqz	$a4,.L0d9d3b98
    sw	$a2,4120($zero)
    # Line 2972
    ld	$a1,168($sp)
    lw	$a3,308($sp)
    lw	$a2,300($sp)
    ld	$t0,152($sp)
    ld	$ra,128($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$t1,120($sp)
    move	$a0,$s0
    sw	$t1,12($sp)
    addiu	$t9,$t9,2208
    move	$a7,$zero
    move	$a6,$zero
    sw	$ra,20($sp)
    move	$a5,$zero
    bal __glOdysseyGetCurrentTexture
    sw	$t0,4($sp)
    lw	$at,1816($s1)
    andi	$at,$at,0x1
    beqz	$at,.L0d9d3b98
    # Line 2978
    nop	# was lw $t9, -32512($gp) # &__glOdysseyAsyncDropMarker
    move	$a0,$s1
    jal	__glOdysseyAsyncDropMarker
    li	$a1,1
    b	.L0d9d3b9c
    ld	$ra,192($sp)
.L0d9d3f94:
    # Line 2877
    # lw $t9, -26792($gp) # &__glSetError
.L0d9d3f98:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9d3b9c
    ld	$ra,192($sp)
.L0d9d3fa8:
    # Line 2925
    bnez	$t2,.L0d9d3dbc
    nop
    bnez	$t3,.L0d9d3dbc
    nop
    b	.L0d9d3ee0
    # Line 2954
    nop	# was lw $t9, -30988($gp) # &__glOdysseyDestroyPMObjGroup
.end TexImage

# Function: CopyTexImage
# Declared: Line 2985 (Source lines: 2991-3040)
# Address: 0x0d9d3fc0 - 0x0d9d41c4 (Size: 516 bytes, Frame: 192)
.ent CopyTexImage
CopyTexImage:
    # Line 2995
    lw	$v1,4112($zero)
    # Line 2991
    addiu	$sp,$sp,-192
    sd	$a2,80($sp)
    sd	$a3,40($sp)
    sd	$a4,48($sp)
    sd	$a5,72($sp)
    sd	$a6,64($sp)
    sd	$a7,56($sp)
    # Line 2995
    lw	$at,4120($zero)
    # Line 2991
    sd	$s0,104($sp)
    # Line 2995
    li	$v0,1
    # Line 2991
    move	$s0,$a0
    sd	$s1,96($sp)
    move	$s1,$a1
    # Line 2995
    beq	$at,$v0,.L0d9d4190
    sd	$v1,88($sp)
    # Line 2997
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    ld	$a0,88($sp)
    sd	$ra,112($sp)
    bal __glOdysseyGetCurrentTexture
    move	$a1,$s0
    # Line 3003
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,14944
    move	$a0,$s0
    # Line 2997
    sd	$v0,32($sp)
    # Line 3003
    bal __glOdysseyValidateTextureState
    move	$a1,$s1
    beqz	$v0,.L0d9d404c
    # Line 3004
    nop	# was lw $t9, -26792($gp) # &__glSetError
    ld	$ra,112($sp)
    move	$a0,$v0
    # Line 3005
    ld	$s0,104($sp)
    ld	$s1,96($sp)
    jr	$t9
    addiu	$sp,$sp,192
.L0d9d404c:
    # Line 3007
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,12864
    bal __glOdysseyValidateTextureState
    ld	$a0,80($sp)
    beqz	$v0,.L0d9d407c
    # Line 3008
    nop	# was lw $t9, -26792($gp) # &__glSetError
    ld	$ra,112($sp)
    move	$a0,$v0
    # Line 3009
    ld	$s0,104($sp)
    ld	$s1,96($sp)
    jr	$t9
    addiu	$sp,$sp,192
.L0d9d407c:
    # Line 3011
    ld	$a1,56($sp)
    # Line 3009
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 3011
    ld	$a0,72($sp)
    # Line 3009
    addiu	$t9,$t9,12400
    # Line 3011
    addu	$a0,$a0,$a1
    sd	$a0,24($sp)
    bal __glOdysseyValidateTextureState
    lw	$a1,204($sp)
    beqz	$v0,.L0d9d41ac
    # Line 3014
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3011
    ld	$a1,64($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    lw	$a0,196($sp)
    addiu	$t9,$t9,12400
    addu	$a0,$a0,$a1
    sd	$a0,16($sp)
    bal __glOdysseyValidateTextureState
    lw	$a1,212($sp)
    beqz	$v0,.L0d9d41a8
    # Line 3023
    ld	$a2,24($sp)
    ld	$a3,16($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    lw	$a5,204($sp)
    move	$a0,$s0
    lw	$a6,212($sp)
    addiu	$t9,$t9,944
    move	$a1,$s1
    move	$a7,$zero
    ld	$a4,80($sp)
    sw	$a4,4($sp)
    bal __glOdysseyGetCurrentTexture
    li	$a4,1
    beqz	$v0,.L0d9d4180
    ld	$ra,112($sp)
    # Line 3034
    ld	$a5,40($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    move	$a0,$s0
    ld	$a6,48($sp)
    move	$a1,$s1
    ld	$a7,72($sp)
    addiu	$t9,$t9,3600
    move	$a2,$zero
    move	$a3,$zero
    ld	$at,64($sp)
    move	$a4,$zero
    bal __glOdysseyGetCurrentTexture
    sw	$at,4($sp)
    # Line 3040
    ld	$s0,104($sp)
    ld	$ra,112($sp)
    # Line 3038
    ld	$a1,32($sp)
    # Line 3039
    ld	$v1,88($sp)
    # Line 3038
    lw	$a0,160($a1)
    # Line 3037
    li	$at,2
    # Line 3039
    lui	$a2,0x1
    # Line 3037
    sw	$at,16($a1)
    # Line 3039
    addu	$v1,$v1,$a2
    # Line 3038
    ori	$a0,$a0,0x200
    sw	$a0,160($a1)
    # Line 3039
    lw	$v0,26980($v1)
    # Line 3040
    ld	$s1,96($sp)
    # Line 3039
    ori	$v0,$v0,0x200
    sw	$v0,26980($v1)
    # Line 3040
    addiu	$sp,$sp,192
    jr	$ra
    # Line 3039
    sw	$at,4120($zero)
.L0d9d4180:
    # Line 3040
    ld	$s0,104($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9d4190:
    # Line 2995
    # lw $t9, -26792($gp) # &__glSetError
    li	$a0,1282
    ld	$s0,104($sp)
    ld	$s1,96($sp)
    jr	$t9
    addiu	$sp,$sp,192
.L0d9d41a8:
    # Line 3014
    # lw $t9, -26792($gp) # &__glSetError
.L0d9d41ac:
    ld	$ra,112($sp)
    li	$a0,1281
    # Line 3015
    ld	$s0,104($sp)
    ld	$s1,96($sp)
    jr	$t9
    addiu	$sp,$sp,192
.end CopyTexImage

# Function: TexSubImage
# Declared: Line 3043 (Source lines: 3048-3100)
# Address: 0x0d9d41d0 - 0x0d9d43c4 (Size: 500 bytes, Frame: 192)
.ent TexSubImage
TexSubImage:
    # Line 3048
    addiu	$sp,$sp,-192
    sd	$a2,72($sp)
    sd	$a3,48($sp)
    sd	$a4,64($sp)
    sd	$a5,80($sp)
    sd	$a6,40($sp)
    sd	$a7,56($sp)
    sd	$s1,96($sp)
    # Line 3051
    lw	$s1,4112($zero)
    lw	$at,4120($zero)
    # Line 3048
    sd	$s0,88($sp)
    # Line 3051
    li	$v0,1
    # Line 3048
    move	$s0,$a0
    sd	$s2,104($sp)
    move	$s2,$a1
    # Line 3051
    beq	$at,$v0,.L0d9d4318
    sd	$ra,112($sp)
    # Line 3053
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    move	$a0,$s1
    bal __glOdysseyGetCurrentTexture
    move	$a1,$s0
    # Line 3059
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,14944
    move	$a0,$s0
    # Line 3053
    sd	$v0,32($sp)
    # Line 3059
    bal __glOdysseyValidateTextureState
    move	$a1,$s2
    beqz	$v0,.L0d9d4264
    # Line 3060
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    ld	$ra,112($sp)
.L0d9d4250:
    ld	$s0,88($sp)
    ld	$s1,96($sp)
    ld	$s2,104($sp)
    # Line 3100
    jr	$ra
    addiu	$sp,$sp,192
.L0d9d4264:
    # Line 3063
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a3,80($sp)
    ld	$a2,72($sp)
    addiu	$t9,$t9,13904
    lw	$a4,1224($s1)
    addiu	$a0,$sp,212
    bal __glOdysseyValidateTextureState
    lw	$a1,220($sp)
    beqz	$v0,.L0d9d429c
    # Line 3065
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d9d4250
    ld	$ra,112($sp)
.L0d9d429c:
    # Line 3067
    lw	$ra,1816($s1)
    andi	$ra,$ra,0x1
    beqz	$ra,.L0d9d42c0
    nop	# was lw $t9, -32516($gp) # &__glOdysseyAsyncCheck
    move	$a0,$s1
    jal	__glOdysseyAsyncCheck
    li	$a1,1
    beqz	$v0,.L0d9d4250
    ld	$ra,112($sp)
.L0d9d42c0:
    # Line 3074
    ld	$a2,72($sp)
    ld	$a3,48($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$t0,40($sp)
    lw	$a6,204($sp)
    lw	$a5,196($sp)
    addu	$a6,$a6,$t0
    ld	$t0,80($sp)
    addiu	$t9,$t9,12528
    move	$a0,$s0
    move	$a1,$s2
    ld	$a4,64($sp)
    ld	$a7,56($sp)
    bal __glOdysseyValidateTextureState
    addu	$a5,$a5,$t0
    beqz	$v0,.L0d9d432c
    # Line 3086
    ld	$a7,64($sp)
    # Line 3078
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d9d4250
    ld	$ra,112($sp)
.L0d9d4318:
    # Line 3051
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d4250
    ld	$ra,112($sp)
.L0d9d432c:
    # Line 3086
    ld	$a6,48($sp)
    ld	$a5,72($sp)
    ld	$at,40($sp)
    lw	$a3,220($sp)
    lw	$a4,228($sp)
    lw	$a2,212($sp)
    ld	$ra,56($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    sw	$ra,20($sp)
    ld	$ra,80($sp)
    addiu	$t9,$t9,2208
    move	$a0,$s0
    sw	$ra,4($sp)
    move	$a1,$s2
    bal __glOdysseyGetCurrentTexture
    sw	$at,12($sp)
    lw	$at,1816($s1)
    andi	$at,$at,0x1
    beqz	$at,.L0d9d4388
    # Line 3092
    nop	# was lw $t9, -32512($gp) # &__glOdysseyAsyncDropMarker
    move	$a0,$s1
    jal	__glOdysseyAsyncDropMarker
    li	$a1,1
.L0d9d4388:
    # Line 3100
    ld	$s0,88($sp)
    ld	$s2,104($sp)
    # Line 3098
    ld	$a1,32($sp)
    ld	$ra,112($sp)
    # Line 3099
    lui	$a0,0x1
    # Line 3098
    li	$v0,2
    # Line 3099
    addu	$a0,$s1,$a0
    # Line 3098
    sw	$v0,16($a1)
    # Line 3099
    lw	$v1,26980($a0)
    # Line 3100
    ld	$s1,96($sp)
    # Line 3099
    ori	$v1,$v1,0x200
    sw	$v1,26980($a0)
    # Line 3100
    addiu	$sp,$sp,192
    jr	$ra
    # Line 3099
    sw	$v0,4120($zero)
.end TexSubImage

# Function: CopyTexSubImage
# Declared: Line 3104 (Source lines: 3109-3148)
# Address: 0x0d9d43d0 - 0x0d9d4540 (Size: 368 bytes, Frame: 176)
.ent CopyTexSubImage
CopyTexSubImage:
    # Line 3113
    lw	$v1,4112($zero)
    # Line 3109
    addiu	$sp,$sp,-176
    sd	$a2,48($sp)
    sd	$a3,64($sp)
    sd	$a4,56($sp)
    sd	$a5,24($sp)
    sd	$a6,32($sp)
    sd	$a7,40($sp)
    # Line 3113
    lw	$at,4120($zero)
    # Line 3109
    sd	$s0,88($sp)
    # Line 3113
    li	$v0,1
    # Line 3109
    move	$s0,$a0
    sd	$s1,80($sp)
    move	$s1,$a1
    # Line 3113
    beq	$at,$v0,.L0d9d44b8
    sd	$v1,72($sp)
    # Line 3115
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    ld	$a0,72($sp)
    sd	$ra,96($sp)
    bal __glOdysseyGetCurrentTexture
    move	$a1,$s0
    # Line 3121
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,14944
    move	$a0,$s0
    # Line 3115
    sd	$v0,16($sp)
    # Line 3121
    bal __glOdysseyValidateTextureState
    move	$a1,$s1
    beqz	$v0,.L0d9d4460
    # Line 3129
    ld	$a4,56($sp)
    # Line 3122
    # lw $t9, -26792($gp) # &__glSetError
    ld	$ra,96($sp)
    move	$a0,$v0
    # Line 3123
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    jr	$t9
    addiu	$sp,$sp,176
.L0d9d4460:
    # Line 3129
    # lw $t9, -32712($gp) # &sub_0d9d0000
    lw	$t0,180($sp)
    lw	$a6,196($sp)
    li	$a7,1
    lw	$a5,188($sp)
    addu	$a6,$a6,$t0
    ld	$t0,40($sp)
    addiu	$t9,$t9,12528
    ld	$a3,64($sp)
    move	$a1,$s1
    move	$a0,$s0
    ld	$a2,48($sp)
    bal __glOdysseyValidateTextureState
    addu	$a5,$a5,$t0
    beqz	$v0,.L0d9d44d0
    # Line 3133
    nop	# was lw $t9, -26792($gp) # &__glSetError
    ld	$ra,96($sp)
    move	$a0,$v0
    # Line 3134
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    jr	$t9
    addiu	$sp,$sp,176
.L0d9d44b8:
    # Line 3113
    # lw $t9, -26792($gp) # &__glSetError
    li	$a0,1282
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    jr	$t9
    addiu	$sp,$sp,176
.L0d9d44d0:
    # Line 3140
    ld	$a2,48($sp)
    ld	$a3,64($sp)
    ld	$a4,56($sp)
    ld	$a5,24($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a6,32($sp)
    ld	$a7,40($sp)
    addiu	$t9,$t9,3600
    move	$a0,$s0
    lw	$at,180($sp)
    move	$a1,$s1
    bal __glOdysseyGetCurrentTexture
    sw	$at,4($sp)
    # Line 3147
    ld	$v1,72($sp)
    # Line 3148
    ld	$s0,88($sp)
    # Line 3147
    lui	$a0,0x1
    addu	$v1,$v1,$a0
    # Line 3146
    ld	$a0,16($sp)
    ld	$ra,96($sp)
    li	$at,2
    sw	$at,16($a0)
    # Line 3147
    lw	$v0,26980($v1)
    # Line 3148
    ld	$s1,80($sp)
    # Line 3147
    ori	$v0,$v0,0x200
    sw	$v0,26980($v1)
    # Line 3148
    addiu	$sp,$sp,176
    jr	$ra
    # Line 3147
    sw	$at,4120($zero)
.end CopyTexSubImage

# Function: __glOdyim_TexImage1D
# Declared: Line 3155 (Source lines: 3158-3190)
# Address: 0x0d9d4540 - 0x0d9d4680 (Size: 320 bytes, Frame: 144)
.globl __glOdyim_TexImage1D
.ent __glOdyim_TexImage1D
__glOdyim_TexImage1D:
    # Line 3161
    lw	$v0,4112($zero)
    # Line 3158
    addiu	$sp,$sp,-144
    # Line 3161
    lw	$at,4120($zero)
    # Line 3158
    sd	$s0,112($sp)
    # Line 3161
    li	$t2,1
    # Line 3158
    lui	$v1,0x12
    move	$s0,$a0
    sd	$ra,128($sp)
    addiu	$v1,$v1,16464
    sd	$gp,120($sp)
    # Line 3161
    beq	$at,$t2,.L0d9d466c
    # Line 3158
    addu	$gp,$t9,$v1
    sd	$a4,104($sp)
    sd	$a5,96($sp)
    sd	$a6,88($sp)
    sd	$a3,80($sp)
    sd	$a7,72($sp)
    sd	$a2,56($sp)
    # Line 3164
    li	$a0,3552
    sd	$a1,64($sp)
    li	$a1,0x8063
    beq	$s0,$a0,.L0d9d45c0
    sd	$v0,48($sp)
    beq	$s0,$a1,.L0d9d45c0
    # Line 3167
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,128($sp)
.L0d9d45b0:
    ld	$s0,112($sp)
    # Line 3190
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9d45c0:
    # Line 3172
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    ld	$a0,48($sp)
    jal	__glOdysseySetCurrentFilter
    li	$a1,1
    # Line 3173
    lw	$a2,0($v0)
    li	$a3,0x8010
    li	$a1,0x8016
    beq	$a2,$a3,.L0d9d4650
    lw	$a0,4($v0)
.L0d9d45e4:
    # Line 3178
    move	$v0,$zero
.L0d9d45e8:
    # Line 3182
    ld	$a1,64($sp)
    ld	$a2,56($sp)
    ld	$a3,80($sp)
    sw	$zero,20($sp)
    sw	$v0,12($sp)
    ld	$a6,104($sp)
    sw	$zero,4($sp)
    ld	$at,88($sp)
    ld	$ra,96($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$v1,72($sp)
    move	$a0,$s0
    sw	$v1,44($sp)
    addiu	$t9,$t9,15136
    move	$a7,$zero
    li	$a5,1
    sw	$ra,28($sp)
    li	$a4,1
    bal __glOdysseyValidateTextureState
    sw	$at,36($sp)
    # Line 3189
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    ld	$a0,48($sp)
    jal	__glOdysseySetCurrentFilter
    li	$a1,2
    b	.L0d9d45b0
    ld	$ra,128($sp)
.L0d9d4650:
    # Line 3173
    bne	$a0,$a1,.L0d9d45e4
    nop
    lw	$t2,64($v0)
    blez	$t2,.L0d9d45e4
    # Line 3176
    li	$v0,1
    b	.L0d9d45e8
    subu	$v0,$v0,$t2
.L0d9d466c:
    # Line 3161
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d45b0
    ld	$ra,128($sp)
.end __glOdyim_TexImage1D

# Function: __glOdyim_TexImage2D
# Declared: Line 3194 (Source lines: 3198-3250)
# Address: 0x0d9d4680 - 0x0d9d4884 (Size: 516 bytes, Frame: 208)
.globl __glOdyim_TexImage2D
.ent __glOdyim_TexImage2D
__glOdyim_TexImage2D:
    # Line 3201
    lw	$t2,4112($zero)
    # Line 3198
    move	$v0,$a5
    addiu	$sp,$sp,-208
    # Line 3201
    lw	$at,4120($zero)
    # Line 3198
    sd	$s0,112($sp)
    # Line 3201
    li	$t3,1
    # Line 3198
    lui	$v1,0x12
    move	$s0,$a0
    sd	$ra,128($sp)
    addiu	$v1,$v1,16144
    sd	$gp,120($sp)
    # Line 3201
    beq	$at,$t3,.L0d9d4870
    # Line 3198
    addu	$gp,$t9,$v1
    # Line 3204
    li	$a0,3553
    beq	$s0,$a0,.L0d9d46e0
    li	$a5,0x8064
    beq	$s0,$a5,.L0d9d46e0
    li	$a0,0x8095
    beq	$a0,$s0,.L0d9d46ec
    # Line 3208
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d4728
    ld	$ra,128($sp)
.L0d9d46e0:
    # Line 3211
    li	$a0,0x8095
    bne	$a0,$s0,.L0d9d4738
    nop
.L0d9d46ec:
    bnez	$v0,.L0d9d471c
    # Line 3216
    nop	# was lw $t9, -26792($gp) # &__glSetError
    sd	$a1,56($sp)
    sd	$a4,96($sp)
    sd	$a2,88($sp)
    sd	$a7,80($sp)
    sd	$a6,72($sp)
    sd	$a3,64($sp)
    sd	$t2,104($sp)
    # Line 3211
    beqz	$a1,.L0d9d4738
    sd	$v0,48($sp)
    # Line 3216
    # lw $t9, -26792($gp) # &__glSetError
.L0d9d471c:
    jal	__glSetError
    li	$a0,1281
.L0d9d4724:
    ld	$ra,128($sp)
.L0d9d4728:
    ld	$s0,112($sp)
    # Line 3250
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9d4738:
    sd	$a4,96($sp)
    sd	$a2,88($sp)
    sd	$a7,80($sp)
    sd	$a6,72($sp)
    sd	$a3,64($sp)
    sd	$v0,48($sp)
    # Line 3221
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    sd	$t2,104($sp)
    sd	$a1,56($sp)
    li	$a1,2
    jal	__glOdysseySetCurrentFilter
    ld	$a0,104($sp)
    # Line 3222
    lw	$t2,0($v0)
    li	$a6,0x8011
    # Line 3229
    move	$t3,$zero
    # Line 3222
    beq	$t2,$a6,.L0d9d4830
    li	$a7,0x8012
    beq	$t2,$a7,.L0d9d4830
    # Line 3229
    move	$t2,$zero
.L0d9d4784:
    # Line 3236
    ld	$a3,64($sp)
    ld	$a2,88($sp)
    ld	$a1,56($sp)
    ld	$a6,48($sp)
    ld	$ra,72($sp)
    # Line 3229
    ld	$v0,104($sp)
    # Line 3236
    ld	$t1,80($sp)
    # Line 3229
    lw	$v0,1796($v0)
    # Line 3236
    sw	$t1,36($sp)
    sw	$ra,28($sp)
    # Line 3232
    ld	$a4,96($sp)
    # Line 3236
    sw	$t2,12($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 3232
    addu	$at,$a4,$t3
    # Line 3236
    sw	$zero,4($sp)
    # Line 3232
    addu	$at,$t3,$at
    # Line 3229
    andi	$v0,$v0,0x20
    # Line 3236
    addiu	$t9,$t9,15136
    movz	$at,$t3,$v0
    sw	$at,20($sp)
    li	$a5,1
    move	$a0,$s0
    lw	$t0,212($sp)
    move	$a7,$a6
    bal __glOdysseyValidateTextureState
    sw	$t0,44($sp)
    li	$v1,0x8095
    bne	$v1,$s0,.L0d9d4724
    # Line 3247
    ld	$a1,104($sp)
    lui	$a2,0x1
    addu	$a1,$a1,$a2
    lw	$a3,25608($a1)
    # Line 3250
    ld	$gp,120($sp)
    # Line 3247
    li	$a2,2
    sw	$a2,16($a3)
    # Line 3248
    lw	$a1,25608($a1)
    ld	$ra,128($sp)
    lw	$a0,160($a1)
    # Line 3250
    ld	$s0,112($sp)
    addiu	$sp,$sp,208
    # Line 3248
    ori	$a0,$a0,0x200
    # Line 3250
    jr	$ra
    # Line 3248
    sw	$a0,160($a1)
.L0d9d4830:
    # Line 3222
    lw	$a3,4($v0)
    li	$a4,0x8016
    bne	$a3,$a4,.L0d9d4784
    # Line 3229
    move	$t2,$zero
    # Line 3225
    lw	$a6,68($v0)
    move	$t2,$zero
    # Line 3226
    li	$t0,1
    # Line 3222
    lw	$t1,64($v0)
    slti	$a5,$a6,1
    # Line 3226
    subu	$a6,$t0,$a6
    # Line 3225
    subu	$t0,$t0,$t1
    slti	$a7,$t1,1
    movz	$t2,$t0,$a7
    # Line 3226
    move	$t3,$zero
    b	.L0d9d4784
    movz	$t3,$a6,$a5
.L0d9d4870:
    # Line 3201
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d4728
    ld	$ra,128($sp)
.end __glOdyim_TexImage2D

# Function: __glOdyim_TexImage3D
# Declared: Line 3253 (Source lines: 3256-3294)
# Address: 0x0d9d4890 - 0x0d9d4a28 (Size: 408 bytes, Frame: 208)
.globl __glOdyim_TexImage3D
.ent __glOdyim_TexImage3D
__glOdyim_TexImage3D:
    # Line 3256
    addiu	$sp,$sp,-208
    sd	$s2,96($sp)
    # Line 3259
    lw	$s2,4112($zero)
    # Line 3256
    sd	$s1,120($sp)
    move	$v0,$a4
    move	$s1,$a7
    # Line 3259
    lw	$at,4120($zero)
    # Line 3256
    sd	$s0,112($sp)
    # Line 3259
    li	$t2,1
    # Line 3256
    lui	$v1,0x12
    move	$s0,$a0
    sd	$ra,128($sp)
    addiu	$v1,$v1,15616
    sd	$gp,104($sp)
    # Line 3259
    beq	$at,$t2,.L0d9d4a14
    # Line 3256
    addu	$gp,$t9,$v1
    # Line 3262
    li	$a0,0x806f
    beq	$s0,$a0,.L0d9d48f4
    li	$a4,0x8070
    beq	$s0,$a4,.L0d9d48f4
    # Line 3265
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d49a8
    # Line 3294
    ld	$gp,104($sp)
.L0d9d48f4:
    sd	$a1,88($sp)
    sd	$a2,80($sp)
    sd	$a3,72($sp)
    sd	$a6,64($sp)
    # Line 3266
    li	$a7,6656
    sd	$a5,56($sp)
    beq	$s1,$a7,.L0d9d4a00
    sd	$v0,48($sp)
    # Line 3274
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    move	$a0,$s2
    jal	__glOdysseySetCurrentFilter
    li	$a1,2
    # Line 3275
    lw	$a0,0($v0)
    li	$t0,0x8011
    # Line 3282
    move	$t3,$zero
    move	$t2,$zero
    # Line 3275
    beq	$a0,$t0,.L0d9d49c0
    li	$t1,0x8012
    beq	$a0,$t1,.L0d9d49c0
    nop
.L0d9d4944:
    # Line 3289
    ld	$a5,56($sp)
    ld	$a3,72($sp)
    ld	$a2,80($sp)
    ld	$a1,88($sp)
    # Line 3282
    lw	$at,1796($s2)
    # Line 3289
    sw	$s1,28($sp)
    sw	$t2,12($sp)
    # Line 3285
    ld	$a4,48($sp)
    # Line 3289
    ld	$a6,64($sp)
    sw	$a6,4($sp)
    # Line 3285
    addu	$ra,$a4,$t3
    # Line 3289
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 3282
    andi	$at,$at,0x20
    # Line 3285
    addu	$ra,$t3,$ra
    movz	$ra,$t3,$at
    # Line 3289
    sw	$ra,20($sp)
    lw	$t3,212($sp)
    addiu	$t9,$t9,15136
    sw	$t3,36($sp)
    move	$a0,$s0
    lw	$t2,220($sp)
    move	$a7,$a6
    bal __glOdysseyValidateTextureState
    sw	$t2,44($sp)
    # Line 3294
    ld	$gp,104($sp)
.L0d9d49a8:
    ld	$ra,128($sp)
    ld	$s0,112($sp)
    ld	$s1,120($sp)
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9d49c0:
    # Line 3275
    lw	$v1,4($v0)
    li	$a0,0x8016
    bne	$v1,$a0,.L0d9d4944
    nop
    # Line 3278
    lw	$a2,68($v0)
    move	$t2,$zero
    # Line 3279
    li	$a4,1
    # Line 3275
    lw	$a5,64($v0)
    slti	$a1,$a2,1
    # Line 3279
    subu	$a2,$a4,$a2
    # Line 3278
    subu	$a4,$a4,$a5
    slti	$a3,$a5,1
    movz	$t2,$a4,$a3
    # Line 3279
    move	$t3,$zero
    b	.L0d9d4944
    movz	$t3,$a2,$a1
.L0d9d4a00:
    # Line 3269
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d49a8
    # Line 3294
    ld	$gp,104($sp)
.L0d9d4a14:
    # Line 3259
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d49a8
    # Line 3294
    ld	$gp,104($sp)
.end __glOdyim_TexImage3D

# Function: __glOdyim_CopyTexImage1DEXT
# Declared: Line 3297 (Source lines: 3300-3330)
# Address: 0x0d9d4a30 - 0x0d9d4b54 (Size: 292 bytes, Frame: 240)
.globl __glOdyim_CopyTexImage1DEXT
.ent __glOdyim_CopyTexImage1DEXT
__glOdyim_CopyTexImage1DEXT:
    # Line 3303
    lw	$v0,4112($zero)
    # Line 3300
    addiu	$sp,$sp,-112
    # Line 3303
    lw	$at,4120($zero)
    # Line 3300
    sd	$s0,48($sp)
    # Line 3303
    li	$a7,1
    # Line 3300
    lui	$v1,0x12
    move	$s0,$a0
    sd	$ra,56($sp)
    addiu	$v1,$v1,15200
    sd	$gp,40($sp)
    # Line 3303
    beq	$at,$a7,.L0d9d4b40
    # Line 3300
    addu	$gp,$t9,$v1
    sd	$a4,104($sp)
    sd	$a5,96($sp)
    sd	$a6,88($sp)
    sd	$a3,80($sp)
    sd	$a1,72($sp)
    # Line 3303
    li	$a0,3552
    sd	$a2,64($sp)
    beq	$s0,$a0,.L0d9d4aa4
    sd	$v0,32($sp)
    # Line 3307
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,56($sp)
.L0d9d4a94:
    # Line 3330
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9d4aa4:
    # Line 3312
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    ld	$a0,32($sp)
    jal	__glOdysseySetCurrentFilter
    move	$a1,$a7
    ld	$a4,104($sp)
    ld	$a5,96($sp)
    ld	$t2,88($sp)
    # Line 3313
    lw	$a1,0($v0)
    ld	$a3,80($sp)
    li	$a6,0x8010
    ld	$t3,72($sp)
    li	$at,0x8016
    # Line 3318
    move	$a7,$zero
    # Line 3313
    beq	$a1,$a6,.L0d9d4b1c
    ld	$a2,64($sp)
.L0d9d4ae0:
    # Line 3322
    # lw $t9, -32712($gp) # &sub_0d9d0000
    sw	$zero,20($sp)
    addiu	$t9,$t9,16320
    move	$a0,$s0
    move	$a1,$t3
    sw	$t2,12($sp)
    sw	$zero,4($sp)
    bal __glOdysseyValidateTextureState
    li	$a6,1
    # Line 3329
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    ld	$a0,32($sp)
    jal	__glOdysseySetCurrentFilter
    li	$a1,2
    b	.L0d9d4a94
    ld	$ra,56($sp)
.L0d9d4b1c:
    # Line 3313
    lw	$ra,4($v0)
    bne	$ra,$at,.L0d9d4ae0
    nop
    lw	$a6,64($v0)
    blez	$a6,.L0d9d4ae0
    nop
    # Line 3316
    li	$a7,1
    b	.L0d9d4ae0
    subu	$a7,$a7,$a6
.L0d9d4b40:
    # Line 3303
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d4a94
    ld	$ra,56($sp)
.end __glOdyim_CopyTexImage1DEXT

# Function: __glOdyim_CopyTexImage2DEXT
# Declared: Line 3333 (Source lines: 3336-3368)
# Address: 0x0d9d4b60 - 0x0d9d4cb4 (Size: 340 bytes, Frame: 128)
.globl __glOdyim_CopyTexImage2DEXT
.ent __glOdyim_CopyTexImage2DEXT
__glOdyim_CopyTexImage2DEXT:
    # Line 3339
    lw	$v0,4112($zero)
    # Line 3336
    addiu	$sp,$sp,-128
    # Line 3339
    lw	$at,4120($zero)
    # Line 3336
    sd	$s0,96($sp)
    # Line 3339
    li	$t2,1
    # Line 3336
    lui	$v1,0x12
    move	$s0,$a0
    sd	$ra,112($sp)
    addiu	$v1,$v1,14896
    sd	$gp,104($sp)
    # Line 3339
    beq	$at,$t2,.L0d9d4ca0
    # Line 3336
    addu	$gp,$t9,$v1
    sd	$a2,80($sp)
    sd	$a3,72($sp)
    sd	$a4,64($sp)
    sd	$a1,56($sp)
    sd	$a7,48($sp)
    sd	$a5,40($sp)
    # Line 3339
    li	$a0,3553
    sd	$a6,32($sp)
    beq	$s0,$a0,.L0d9d4bd8
    sd	$v0,88($sp)
    # Line 3343
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,112($sp)
.L0d9d4bc8:
    # Line 3368
    ld	$gp,104($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9d4bd8:
    # Line 3348
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    ld	$a0,88($sp)
    jal	__glOdysseySetCurrentFilter
    li	$a1,2
    # Line 3349
    lw	$t2,0($v0)
    li	$a1,0x8011
    # Line 3356
    move	$a7,$zero
    # Line 3349
    beq	$t2,$a1,.L0d9d4c60
    li	$a2,0x8012
    beq	$t2,$a2,.L0d9d4c60
    # Line 3356
    move	$t2,$zero
.L0d9d4c04:
    # Line 3363
    ld	$a5,40($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    ld	$a2,80($sp)
    ld	$a1,56($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 3356
    ld	$t1,88($sp)
    # Line 3363
    ld	$t0,32($sp)
    addiu	$t9,$t9,16320
    # Line 3356
    lw	$t1,1796($t1)
    # Line 3363
    ld	$t3,48($sp)
    move	$a6,$t0
    # Line 3359
    addu	$t0,$t0,$t2
    # Line 3363
    sw	$t3,20($sp)
    # Line 3359
    addu	$t0,$t2,$t0
    # Line 3356
    andi	$t1,$t1,0x20
    # Line 3363
    sw	$t3,12($sp)
    movz	$t0,$t2,$t1
    move	$a0,$s0
    bal __glOdysseyValidateTextureState
    sw	$t0,4($sp)
    b	.L0d9d4bc8
    ld	$ra,112($sp)
.L0d9d4c60:
    # Line 3349
    lw	$t2,4($v0)
    li	$t3,0x8016
    bne	$t2,$t3,.L0d9d4c04
    # Line 3356
    move	$t2,$zero
    # Line 3352
    lw	$t9,68($v0)
    move	$a7,$zero
    # Line 3353
    li	$at,1
    # Line 3349
    lw	$v1,64($v0)
    slti	$t8,$t9,1
    # Line 3353
    subu	$t9,$at,$t9
    # Line 3352
    subu	$at,$at,$v1
    slti	$ra,$v1,1
    movz	$a7,$at,$ra
    # Line 3353
    move	$t2,$zero
    b	.L0d9d4c04
    movz	$t2,$t9,$t8
.L0d9d4ca0:
    # Line 3339
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d4bc8
    ld	$ra,112($sp)
.end __glOdyim_CopyTexImage2DEXT

# Function: __glOdyim_TexSubImage1D
# Declared: Line 3371 (Source lines: 3375-3405)
# Address: 0x0d9d4cc0 - 0x0d9d4df4 (Size: 308 bytes, Frame: 128)
.globl __glOdyim_TexSubImage1D
.ent __glOdyim_TexSubImage1D
__glOdyim_TexSubImage1D:
    # Line 3378
    lw	$v0,4112($zero)
    # Line 3375
    addiu	$sp,$sp,-128
    # Line 3378
    lw	$at,4120($zero)
    # Line 3375
    sd	$s0,64($sp)
    # Line 3378
    li	$t1,1
    # Line 3375
    lui	$v1,0x12
    move	$s0,$a0
    sd	$ra,72($sp)
    addiu	$v1,$v1,14544
    sd	$gp,56($sp)
    # Line 3378
    beq	$at,$t1,.L0d9d4de0
    # Line 3375
    addu	$gp,$t9,$v1
    sd	$a3,120($sp)
    sd	$a4,112($sp)
    sd	$a5,104($sp)
    sd	$a6,96($sp)
    sd	$a1,88($sp)
    # Line 3378
    li	$a0,3552
    sd	$a2,80($sp)
    beq	$s0,$a0,.L0d9d4d34
    sd	$v0,48($sp)
    # Line 3382
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,72($sp)
.L0d9d4d24:
    # Line 3405
    ld	$gp,56($sp)
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9d4d34:
    # Line 3387
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    ld	$a0,48($sp)
    jal	__glOdysseySetCurrentFilter
    move	$a1,$t1
    ld	$a5,120($sp)
    ld	$t2,112($sp)
    ld	$t3,104($sp)
    # Line 3388
    lw	$a3,0($v0)
    ld	$t8,96($sp)
    li	$a4,0x8010
    ld	$a1,88($sp)
    li	$at,0x8016
    beq	$a3,$a4,.L0d9d4dbc
    ld	$a2,80($sp)
.L0d9d4d6c:
    # Line 3393
    move	$v0,$zero
.L0d9d4d70:
    # Line 3397
    sw	$t8,36($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    move	$a0,$s0
    sw	$t3,28($sp)
    move	$a3,$zero
    sw	$t2,20($sp)
    addiu	$t9,$t9,16848
    move	$a4,$zero
    sw	$zero,12($sp)
    li	$a7,1
    sw	$v0,4($sp)
    bal __glOdysseyValidateTextureState
    li	$a6,1
    # Line 3404
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    ld	$a0,48($sp)
    jal	__glOdysseySetCurrentFilter
    li	$a1,2
    b	.L0d9d4d24
    ld	$ra,72($sp)
.L0d9d4dbc:
    # Line 3388
    lw	$ra,4($v0)
    bne	$ra,$at,.L0d9d4d6c
    nop
    lw	$a3,64($v0)
    blez	$a3,.L0d9d4d70
    # Line 3393
    move	$v0,$zero
    # Line 3391
    li	$v0,1
    b	.L0d9d4d70
    subu	$v0,$v0,$a3
.L0d9d4de0:
    # Line 3378
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d4d24
    ld	$ra,72($sp)
.end __glOdyim_TexSubImage1D

# Function: __glOdyim_TexSubImage2D
# Declared: Line 3409 (Source lines: 3413-3445)
# Address: 0x0d9d4e00 - 0x0d9d4f74 (Size: 372 bytes, Frame: 208)
.globl __glOdyim_TexSubImage2D
.ent __glOdyim_TexSubImage2D
__glOdyim_TexSubImage2D:
    # Line 3416
    lw	$v0,4112($zero)
    # Line 3413
    addiu	$sp,$sp,-208
    # Line 3416
    lw	$at,4120($zero)
    # Line 3413
    sd	$s0,112($sp)
    # Line 3416
    li	$t2,1
    # Line 3413
    lui	$v1,0x12
    move	$s0,$a0
    sd	$ra,128($sp)
    addiu	$v1,$v1,14224
    sd	$gp,120($sp)
    # Line 3416
    beq	$at,$t2,.L0d9d4f60
    # Line 3413
    addu	$gp,$t9,$v1
    sd	$a2,104($sp)
    sd	$a3,96($sp)
    sd	$a4,88($sp)
    sd	$a7,72($sp)
    sd	$a6,64($sp)
    sd	$a5,56($sp)
    # Line 3419
    li	$a0,3553
    sd	$a1,80($sp)
    li	$a1,0x8095
    beq	$s0,$a0,.L0d9d4e84
    sd	$v0,48($sp)
    beq	$s0,$a1,.L0d9d4e88
    # Line 3425
    nop	# was lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    # Line 3420
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,128($sp)
.L0d9d4e74:
    ld	$s0,112($sp)
    # Line 3445
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9d4e84:
    # Line 3425
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
.L0d9d4e88:
    ld	$a0,48($sp)
    jal	__glOdysseySetCurrentFilter
    li	$a1,2
    # Line 3426
    lw	$t2,0($v0)
    li	$a2,0x8011
    # Line 3433
    move	$t3,$zero
    # Line 3426
    beq	$t2,$a2,.L0d9d4f20
    li	$a3,0x8012
    beq	$t2,$a3,.L0d9d4f20
    # Line 3433
    move	$t2,$zero
.L0d9d4eb0:
    # Line 3440
    ld	$a5,88($sp)
    ld	$a3,96($sp)
    ld	$a2,104($sp)
    ld	$a1,80($sp)
    ld	$ra,64($sp)
    ld	$t1,72($sp)
    # Line 3433
    ld	$v0,48($sp)
    # Line 3436
    ld	$a6,56($sp)
    # Line 3433
    lw	$v0,1796($v0)
    # Line 3440
    sw	$t1,28($sp)
    sw	$ra,20($sp)
    # Line 3436
    addu	$at,$a6,$t2
    # Line 3440
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 3436
    addu	$at,$t2,$at
    # Line 3440
    sw	$t3,4($sp)
    # Line 3436
    addiu	$at,$at,-1
    # Line 3433
    andi	$v0,$v0,0x20
    # Line 3440
    addiu	$t9,$t9,16848
    movz	$at,$t2,$v0
    sw	$at,12($sp)
    li	$a7,1
    move	$a4,$zero
    lw	$t0,212($sp)
    move	$a0,$s0
    bal __glOdysseyValidateTextureState
    sw	$t0,36($sp)
    b	.L0d9d4e74
    ld	$ra,128($sp)
.L0d9d4f20:
    # Line 3426
    lw	$v1,4($v0)
    li	$a0,0x8016
    bne	$v1,$a0,.L0d9d4eb0
    # Line 3433
    move	$t2,$zero
    # Line 3429
    lw	$a2,68($v0)
    move	$t3,$zero
    # Line 3430
    li	$a4,1
    # Line 3426
    lw	$a5,64($v0)
    slti	$a1,$a2,1
    # Line 3430
    subu	$a2,$a4,$a2
    # Line 3429
    subu	$a4,$a4,$a5
    slti	$a3,$a5,1
    movz	$t3,$a4,$a3
    # Line 3430
    move	$t2,$zero
    b	.L0d9d4eb0
    movz	$t2,$a2,$a1
.L0d9d4f60:
    # Line 3416
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d4e74
    ld	$ra,128($sp)
.end __glOdyim_TexSubImage2D

# Function: __glOdyim_TexSubImage3D
# Declared: Line 3449 (Source lines: 3453-3489)
# Address: 0x0d9d4f80 - 0x0d9d510c (Size: 396 bytes, Frame: 208)
.globl __glOdyim_TexSubImage3D
.ent __glOdyim_TexSubImage3D
__glOdyim_TexSubImage3D:
    # Line 3453
    addiu	$sp,$sp,-208
    sd	$s1,104($sp)
    move	$v0,$a6
    sd	$s0,112($sp)
    # Line 3461
    li	$t0,6656
    # Line 3453
    move	$s0,$a0
    # Line 3456
    lw	$at,4120($zero)
    lw	$s1,4112($zero)
    li	$t2,1
    # Line 3453
    lui	$v1,0x12
    sd	$ra,128($sp)
    # Line 3456
    li	$a0,0x806f
    # Line 3453
    addiu	$v1,$v1,13840
    sd	$gp,120($sp)
    # Line 3456
    beq	$at,$t2,.L0d9d50f8
    # Line 3453
    addu	$gp,$t9,$v1
    # Line 3456
    beq	$s0,$a0,.L0d9d4fd8
    # Line 3460
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d5090
    ld	$ra,128($sp)
.L0d9d4fd8:
    sd	$a7,96($sp)
    sd	$a1,88($sp)
    sd	$a2,80($sp)
    sd	$a3,72($sp)
    # Line 3461
    lw	$a6,212($sp)
    sd	$a5,64($sp)
    sd	$a4,56($sp)
    beq	$a6,$t0,.L0d9d50e4
    sd	$v0,48($sp)
    # Line 3469
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    move	$a0,$s1
    jal	__glOdysseySetCurrentFilter
    li	$a1,2
    # Line 3470
    lw	$a0,0($v0)
    li	$t1,0x8011
    # Line 3477
    move	$t3,$zero
    # Line 3470
    beq	$a0,$t1,.L0d9d50a4
    li	$t2,0x8012
    beq	$a0,$t2,.L0d9d50a4
    # Line 3477
    move	$t2,$zero
.L0d9d5028:
    # Line 3484
    ld	$a7,96($sp)
    ld	$a5,64($sp)
    ld	$a4,56($sp)
    ld	$a3,72($sp)
    ld	$a2,80($sp)
    ld	$a1,88($sp)
    lw	$ra,212($sp)
    # Line 3480
    ld	$a6,48($sp)
    # Line 3477
    lw	$v0,1796($s1)
    # Line 3484
    sw	$t2,4($sp)
    # Line 3480
    addu	$at,$a6,$t3
    # Line 3484
    sw	$ra,20($sp)
    # Line 3480
    addu	$at,$t3,$at
    # Line 3484
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 3477
    andi	$v0,$v0,0x20
    # Line 3480
    addiu	$at,$at,-1
    movz	$at,$t3,$v0
    # Line 3484
    sw	$at,12($sp)
    lw	$t8,220($sp)
    addiu	$t9,$t9,16848
    sw	$t8,28($sp)
    lw	$t3,228($sp)
    move	$a0,$s0
    bal __glOdysseyValidateTextureState
    sw	$t3,36($sp)
    ld	$ra,128($sp)
.L0d9d5090:
    # Line 3489
    ld	$gp,120($sp)
    ld	$s0,112($sp)
    ld	$s1,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9d50a4:
    # Line 3470
    lw	$v1,4($v0)
    li	$a0,0x8016
    bne	$v1,$a0,.L0d9d5028
    # Line 3477
    move	$t2,$zero
    # Line 3473
    lw	$a2,68($v0)
    move	$t2,$zero
    # Line 3474
    li	$a4,1
    # Line 3470
    lw	$a5,64($v0)
    slti	$a1,$a2,1
    # Line 3474
    subu	$a2,$a4,$a2
    # Line 3473
    subu	$a4,$a4,$a5
    slti	$a3,$a5,1
    movz	$t2,$a4,$a3
    # Line 3474
    move	$t3,$zero
    b	.L0d9d5028
    movz	$t3,$a2,$a1
.L0d9d50e4:
    # Line 3464
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d5090
    ld	$ra,128($sp)
.L0d9d50f8:
    # Line 3456
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d5090
    ld	$ra,128($sp)
.end __glOdyim_TexSubImage3D

# Function: __glOdyim_CopyTexSubImage1DEXT
# Declared: Line 3492 (Source lines: 3496-3526)
# Address: 0x0d9d5110 - 0x0d9d5230 (Size: 288 bytes, Frame: 240)
.globl __glOdyim_CopyTexSubImage1DEXT
.ent __glOdyim_CopyTexSubImage1DEXT
__glOdyim_CopyTexSubImage1DEXT:
    # Line 3499
    lw	$v0,4112($zero)
    # Line 3496
    addiu	$sp,$sp,-112
    # Line 3499
    lw	$at,4120($zero)
    # Line 3496
    sd	$s0,48($sp)
    # Line 3499
    li	$a6,1
    # Line 3496
    lui	$v1,0x12
    move	$s0,$a0
    sd	$ra,56($sp)
    addiu	$v1,$v1,13440
    sd	$gp,40($sp)
    # Line 3499
    beq	$at,$a6,.L0d9d521c
    # Line 3496
    addu	$gp,$t9,$v1
    sd	$a3,96($sp)
    sd	$a4,88($sp)
    sd	$a5,80($sp)
    sd	$a1,72($sp)
    # Line 3499
    li	$a0,3552
    sd	$a2,64($sp)
    beq	$s0,$a0,.L0d9d5180
    sd	$v0,32($sp)
    # Line 3503
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,56($sp)
.L0d9d5170:
    # Line 3526
    ld	$gp,40($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9d5180:
    # Line 3508
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    ld	$a0,32($sp)
    jal	__glOdysseySetCurrentFilter
    move	$a1,$a6
    ld	$a5,96($sp)
    ld	$a6,88($sp)
    # Line 3509
    lw	$a1,0($v0)
    ld	$a7,80($sp)
    li	$a3,0x8010
    ld	$t2,72($sp)
    li	$at,0x8016
    beq	$a1,$a3,.L0d9d51fc
    ld	$a2,64($sp)
.L0d9d51b4:
    # Line 3514
    move	$v0,$zero
.L0d9d51b8:
    # Line 3518
    # lw $t9, -32712($gp) # &sub_0d9d0000
    move	$a0,$s0
    move	$a1,$t2
    sw	$zero,20($sp)
    addiu	$t9,$t9,17360
    move	$a3,$zero
    move	$a4,$zero
    sw	$v0,12($sp)
    li	$t0,1
    bal __glOdysseyValidateTextureState
    sw	$t0,4($sp)
    # Line 3525
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    ld	$a0,32($sp)
    jal	__glOdysseySetCurrentFilter
    li	$a1,2
    b	.L0d9d5170
    ld	$ra,56($sp)
.L0d9d51fc:
    # Line 3509
    lw	$ra,4($v0)
    bne	$ra,$at,.L0d9d51b4
    nop
    lw	$a3,64($v0)
    blez	$a3,.L0d9d51b4
    # Line 3512
    li	$v0,1
    b	.L0d9d51b8
    subu	$v0,$v0,$a3
.L0d9d521c:
    # Line 3499
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d5170
    ld	$ra,56($sp)
.end __glOdyim_CopyTexSubImage1DEXT

# Function: __glOdyim_CopyTexSubImage2DEXT
# Declared: Line 3529 (Source lines: 3533-3565)
# Address: 0x0d9d5230 - 0x0d9d5388 (Size: 344 bytes, Frame: 128)
.globl __glOdyim_CopyTexSubImage2DEXT
.ent __glOdyim_CopyTexSubImage2DEXT
__glOdyim_CopyTexSubImage2DEXT:
    # Line 3536
    lw	$v0,4112($zero)
    # Line 3533
    addiu	$sp,$sp,-128
    # Line 3536
    lw	$at,4120($zero)
    # Line 3533
    sd	$s0,96($sp)
    # Line 3536
    li	$t2,1
    # Line 3533
    lui	$v1,0x12
    move	$s0,$a0
    sd	$ra,112($sp)
    addiu	$v1,$v1,13152
    sd	$gp,104($sp)
    # Line 3536
    beq	$at,$t2,.L0d9d5374
    # Line 3533
    addu	$gp,$t9,$v1
    sd	$a2,80($sp)
    sd	$a3,72($sp)
    sd	$a4,64($sp)
    sd	$a1,56($sp)
    sd	$a6,48($sp)
    sd	$a5,40($sp)
    # Line 3536
    li	$a0,3553
    sd	$a7,32($sp)
    beq	$s0,$a0,.L0d9d52a8
    sd	$v0,88($sp)
    # Line 3540
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,112($sp)
.L0d9d5298:
    # Line 3565
    ld	$gp,104($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9d52a8:
    # Line 3545
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    ld	$a0,88($sp)
    jal	__glOdysseySetCurrentFilter
    li	$a1,2
    # Line 3546
    lw	$t2,0($v0)
    li	$a1,0x8011
    beq	$t2,$a1,.L0d9d5334
    li	$a2,0x8012
    beq	$t2,$a2,.L0d9d5334
    # Line 3553
    move	$t2,$zero
.L0d9d52d0:
    move	$t3,$zero
.L0d9d52d4:
    # Line 3560
    ld	$a7,48($sp)
    ld	$a6,40($sp)
    ld	$a5,64($sp)
    ld	$a3,72($sp)
    ld	$a2,80($sp)
    # Line 3556
    ld	$t8,32($sp)
    # Line 3553
    ld	$t1,88($sp)
    # Line 3560
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 3553
    lw	$t1,1796($t1)
    # Line 3556
    addu	$t0,$t8,$t2
    # Line 3560
    ld	$a1,56($sp)
    addiu	$t9,$t9,17360
    # Line 3556
    addu	$t0,$t2,$t0
    # Line 3560
    sw	$t3,12($sp)
    # Line 3556
    addiu	$t0,$t0,-1
    # Line 3553
    andi	$t1,$t1,0x20
    # Line 3560
    move	$a4,$zero
    sw	$t8,4($sp)
    movz	$t0,$t2,$t1
    move	$a0,$s0
    bal __glOdysseyValidateTextureState
    sw	$t0,20($sp)
    b	.L0d9d5298
    ld	$ra,112($sp)
.L0d9d5334:
    # Line 3546
    lw	$t2,4($v0)
    li	$t3,0x8016
    bne	$t2,$t3,.L0d9d52d0
    # Line 3553
    move	$t2,$zero
    # Line 3549
    lw	$t9,68($v0)
    move	$t3,$zero
    # Line 3550
    li	$at,1
    # Line 3546
    lw	$v1,64($v0)
    slti	$t8,$t9,1
    # Line 3550
    subu	$t9,$at,$t9
    # Line 3549
    subu	$at,$at,$v1
    slti	$ra,$v1,1
    movz	$t3,$at,$ra
    # Line 3550
    move	$t2,$zero
    b	.L0d9d52d4
    movz	$t2,$t9,$t8
.L0d9d5374:
    # Line 3536
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d5298
    ld	$ra,112($sp)
.end __glOdyim_CopyTexSubImage2DEXT

# Function: __glOdyim_CopyTexSubImage3DEXT
# Declared: Line 3568 (Source lines: 3572-3604)
# Address: 0x0d9d5390 - 0x0d9d54e8 (Size: 344 bytes, Frame: 192)
.globl __glOdyim_CopyTexSubImage3DEXT
.ent __glOdyim_CopyTexSubImage3DEXT
__glOdyim_CopyTexSubImage3DEXT:
    # Line 3575
    lw	$v0,4112($zero)
    # Line 3572
    addiu	$sp,$sp,-192
    # Line 3575
    lw	$at,4120($zero)
    # Line 3572
    sd	$s0,96($sp)
    # Line 3575
    li	$t2,1
    # Line 3572
    lui	$v1,0x12
    move	$s0,$a0
    sd	$ra,112($sp)
    addiu	$v1,$v1,12800
    sd	$gp,104($sp)
    # Line 3575
    beq	$at,$t2,.L0d9d54d4
    # Line 3572
    addu	$gp,$t9,$v1
    sd	$a3,80($sp)
    sd	$a4,72($sp)
    sd	$a5,64($sp)
    sd	$a2,56($sp)
    sd	$a7,48($sp)
    sd	$a6,40($sp)
    # Line 3575
    li	$a0,0x806f
    sd	$a1,32($sp)
    beq	$s0,$a0,.L0d9d5408
    sd	$v0,88($sp)
    # Line 3579
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,112($sp)
.L0d9d53f8:
    # Line 3604
    ld	$gp,104($sp)
    ld	$s0,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9d5408:
    # Line 3584
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    ld	$a0,88($sp)
    jal	__glOdysseySetCurrentFilter
    li	$a1,2
    # Line 3585
    lw	$t2,0($v0)
    li	$a1,0x8011
    beq	$t2,$a1,.L0d9d5494
    li	$a2,0x8012
    beq	$t2,$a2,.L0d9d5494
    # Line 3592
    move	$t2,$zero
.L0d9d5430:
    move	$t3,$zero
.L0d9d5434:
    # Line 3599
    ld	$a7,48($sp)
    ld	$a6,40($sp)
    ld	$a5,64($sp)
    ld	$a4,72($sp)
    ld	$a3,80($sp)
    ld	$a2,56($sp)
    # Line 3592
    lw	$t8,196($sp)
    ld	$t1,88($sp)
    # Line 3599
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 3592
    lw	$t1,1796($t1)
    # Line 3595
    addu	$t0,$t8,$t2
    # Line 3599
    ld	$a1,32($sp)
    addiu	$t9,$t9,17360
    # Line 3595
    addu	$t0,$t2,$t0
    # Line 3599
    sw	$t3,12($sp)
    # Line 3595
    addiu	$t0,$t0,-1
    # Line 3592
    andi	$t1,$t1,0x20
    # Line 3599
    sw	$t8,4($sp)
    movz	$t0,$t2,$t1
    move	$a0,$s0
    bal __glOdysseyValidateTextureState
    sw	$t0,20($sp)
    b	.L0d9d53f8
    ld	$ra,112($sp)
.L0d9d5494:
    # Line 3585
    lw	$t2,4($v0)
    li	$t3,0x8016
    bne	$t2,$t3,.L0d9d5430
    # Line 3592
    move	$t2,$zero
    # Line 3588
    lw	$t9,68($v0)
    move	$t3,$zero
    # Line 3589
    li	$at,1
    # Line 3585
    lw	$v1,64($v0)
    slti	$t8,$t9,1
    # Line 3589
    subu	$t9,$at,$t9
    # Line 3588
    subu	$at,$at,$v1
    slti	$ra,$v1,1
    movz	$t3,$at,$ra
    # Line 3589
    move	$t2,$zero
    b	.L0d9d5434
    movz	$t2,$t9,$t8
.L0d9d54d4:
    # Line 3575
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d53f8
    ld	$ra,112($sp)
.end __glOdyim_CopyTexSubImage3DEXT

# Function: __glOdyim_GetTexImage
# Declared: Line 3607 (Source lines: 3609-3876)
# Address: 0x0d9d54f0 - 0x0d9d5bb8 (Size: 1736 bytes, Frame: 240)
.globl __glOdyim_GetTexImage
.ent __glOdyim_GetTexImage
__glOdyim_GetTexImage:
    # Line 3609
    addiu	$sp,$sp,-368
    sd	$a4,240($sp)
    sd	$a3,248($sp)
    sd	$s3,264($sp)
    sw	$a2,340($sp)
    # Line 3627
    lw	$s3,4112($zero)
    # Line 3609
    sd	$s2,256($sp)
    move	$s2,$a1
    # Line 3627
    lw	$at,4120($zero)
    # Line 3609
    sd	$s0,272($sp)
    # Line 3627
    li	$v0,1
    # Line 3609
    lui	$v1,0x12
    move	$s0,$a0
    sd	$ra,304($sp)
    addiu	$v1,$v1,12448
    sd	$gp,280($sp)
    # Line 3627
    beq	$at,$v0,.L0d9d56a4
    # Line 3609
    addu	$gp,$t9,$v1
    # Line 3633
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,14944
    bal __glOdysseyValidateTextureState
    sd	$s1,296($sp)
    beqz	$v0,.L0d9d557c
    move	$s1,$v0
    # Line 3634
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
.L0d9d555c:
    ld	$s2,256($sp)
.L0d9d5560:
    ld	$s1,296($sp)
    ld	$ra,304($sp)
    ld	$s3,264($sp)
    ld	$s0,272($sp)
    # Line 3876
    ld	$gp,280($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L0d9d557c:
    # Line 3637
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,13904
    li	$a3,2
    move	$a2,$zero
    ld	$a1,248($sp)
    lw	$a4,1180($s3)
    bal __glOdysseyValidateTextureState
    addiu	$a0,$sp,340
    beqz	$v0,.L0d9d55b8
    move	$s1,$v0
    # Line 3639
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d9d5560
    ld	$s2,256($sp)
.L0d9d55b8:
    # Line 3642
    li	$ra,0x8063
    beq	$s0,$ra,.L0d9d5ae8
    # Line 3646
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3642
    li	$at,0x8064
    beq	$s0,$at,.L0d9d5ae8
    # Line 3646
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3642
    li	$v0,0x8070
    beq	$s0,$v0,.L0d9d5ae8
    # Line 3646
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 3647
    ld	$v1,240($sp)
    beqz	$v1,.L0d9d5ad0
    # Line 3651
    lui	$a1,0x1
    ori	$a1,$a1,0x6418
    addu	$a1,$a1,$s3
    lw	$a1,0($a1)
    beqz	$a1,.L0d9d5608
    # Line 3656
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,9536
    bal __glOdysseyGetCurrentTexture
    move	$a0,$s3
.L0d9d5608:
    # Line 3660
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    move	$a0,$s3
    bal __glOdysseyGetCurrentTexture
    move	$a1,$s0
    # Line 3662
    sll	$a6,$s2,0x4
    addu	$a6,$a6,$s2
    sll	$a6,$a6,0x2
    addu	$a6,$v0,$a6
    # Line 3665
    lw	$ra,1392($a6)
    beqz	$ra,.L0d9d555c
    # Line 3662
    addiu	$s1,$a6,1364
    # Line 3665
    lw	$a7,1396($a6)
    beqz	$a7,.L0d9d555c
    nop
    lw	$t0,1400($a6)
    beqz	$t0,.L0d9d555c
    # Line 3674
    li	$t3,3552
    beq	$t3,$s0,.L0d9d5af8
    sd	$v0,176($sp)
    li	$t1,3553
    beq	$s0,$t1,.L0d9d5a8c
    li	$a6,0x806f
    beq	$a6,$s0,.L0d9d5a8c
    move	$v0,$zero
    move	$a7,$zero
.L0d9d566c:
    # Line 3693
    lw	$t0,40($s1)
    beqz	$t0,.L0d9d5a24
    nop
    # Line 3708
    beq	$a6,$s0,.L0d9d5a3c
    li	$t2,3553
    beq	$s0,$t2,.L0d9d5a4c
    # Line 3710
    li	$t1,16
    # Line 3708
    beq	$t3,$s0,.L0d9d56b8
    # Line 3713
    li	$t1,16
    # Line 3722
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d5560
    ld	$s2,256($sp)
.L0d9d56a4:
    # Line 3627
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d555c
    sd	$s1,296($sp)
.L0d9d56b8:
    # Line 3713
    move	$t2,$zero
    sd	$zero,208($sp)
    subu	$t1,$t1,$t0
.L0d9d56c4:
    sd	$t1,216($sp)
    sd	$t2,168($sp)
    sd	$v0,160($sp)
    sd	$a7,288($sp)
.L0d9d56d4:
    # Line 3742
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 3715
    sw	$zero,56($sp)
    sd	$zero,48($sp)
    sd	$zero,40($sp)
    sd	$zero,32($sp)
    sd	$zero,24($sp)
    sd	$zero,16($sp)
    sd	$zero,8($sp)
    sd	$zero,0($sp)
    # Line 3730
    li	$a2,1
    # Line 3732
    sb	$a2,11($sp)
    # Line 3731
    sb	$a2,10($sp)
    # Line 3730
    sw	$a2,56($sp)
    # Line 3733
    ld	$a1,176($sp)
    # Line 3729
    sw	$zero,4($sp)
    # Line 3733
    lw	$a1,1276($a1)
    # Line 3735
    sw	$zero,24($sp)
    # Line 3734
    sw	$s2,20($sp)
    # Line 3733
    sw	$a1,16($sp)
    # Line 3736
    lw	$a0,12($s1)
    sw	$a0,28($sp)
    # Line 3737
    lw	$v1,28($s1)
    sw	$v1,32($sp)
    # Line 3738
    lw	$v0,32($s1)
    sw	$v0,36($sp)
    # Line 3739
    lw	$at,8($s1)
    sw	$at,48($sp)
    # Line 3740
    lw	$ra,4($s1)
    sw	$ra,40($sp)
    # Line 3742
    addiu	$t9,$t9,-1072
    # Line 3741
    lw	$ra,4($s1)
    sw	$ra,44($sp)
    # Line 3742
    bal __glOdysseyGetCurrentTexture
    lw	$a0,0($s1)
    # Line 3746
    ld	$a7,208($sp)
    # Line 3745
    ld	$t0,216($sp)
    # Line 3746
    dsll32	$a7,$a7,0x0
    # Line 3745
    dsll32	$t0,$t0,0x0
    dsrl32	$t0,$t0,0x0
    # Line 3746
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f1
    # Line 3745
    dmtc1	$t0,$f3
    # Line 3746
    cvt.s.l	$f1,$f1
    # Line 3745
    cvt.s.l	$f3,$f3
    # Line 3742
    sw	$v0,52($sp)
    # Line 3746
    swc1	$f1,68($sp)
    # Line 3745
    swc1	$f3,64($sp)
    # Line 3747
    lw	$a6,28($s1)
    mtc1	$a6,$f2
    sd	$s1,232($sp)
    ld	$s2,288($sp)
    cvt.s.w	$f2,$f2
    # Line 3754
    ld	$a3,240($sp)
    # Line 3755
    lw	$a0,340($sp)
    # Line 3756
    ld	$a1,248($sp)
    # Line 3759
    # lw $t9, -28148($gp) # &__glSpecElementsPerGroup
    # Line 3747
    add.s	$f2,$f2,$f3
    swc1	$f2,72($sp)
    # Line 3748
    lw	$a5,32($s1)
    addiu	$a4,$sp,80
    sd	$zero,80($sp)
    sw	$zero,56($a4)
    sd	$zero,48($a4)
    sd	$zero,40($a4)
    sd	$zero,32($a4)
    sd	$zero,24($a4)
    mtc1	$a5,$f0
    sd	$zero,16($a4)
    sd	$zero,8($a4)
    # Line 3756
    sw	$a1,92($sp)
    # Line 3748
    cvt.s.w	$f0,$f0
    # Line 3755
    sw	$a0,88($sp)
    # Line 3754
    sw	$a3,124($sp)
    # Line 3753
    sw	$zero,136($sp)
    # Line 3752
    sw	$zero,84($sp)
    # Line 3748
    add.s	$f0,$f0,$f1
    # Line 3759
    jal	__glSpecElementsPerGroup
    # Line 3748
    swc1	$f0,76($sp)
    # Line 3759
    # lw $t9, -28144($gp) # &__glSpecBytesPerElement
    move	$s1,$v0
    jal	__glSpecBytesPerElement
    ld	$a0,248($sp)
    mult	$s1,$v0
    lw	$t1,1180($s3)
    li	$t2,0x85a3
    mflo	$a0
    beq	$t1,$t2,.L0d9d5a5c
    # Line 3766
    li	$t9,1
    # Line 3768
    sw	$zero,120($sp)
.L0d9d5838:
    lw	$a1,1148($s3)
    beqz	$a1,.L0d9d5a68
    nop
.L0d9d5844:
    # Line 3770
    sw	$a1,96($sp)
    lw	$v0,1168($s3)
    beqz	$v0,.L0d9d5a78
    nop
.L0d9d5854:
    # Line 3774
    sw	$v0,100($sp)
    lw	$a1,1160($s3)
    # Line 3787
    ld	$t8,232($sp)
    # Line 3778
    move	$at,$a0
    # Line 3774
    sltu	$v1,$a1,$a0
    movz	$at,$a1,$v1
    # Line 3778
    sw	$at,104($sp)
    # Line 3783
    lw	$ra,1156($s3)
    sw	$ra,144($sp)
    # Line 3784
    lw	$t9,1152($s3)
    sw	$t9,148($sp)
    # Line 3787
    lw	$t8,28($t8)
    lw	$t3,1148($s3)
    addu	$t8,$t8,$s2
    sd	$t3,184($sp)
    sltu	$t3,$t3,$t8
    bnez	$t3,.L0d9d59d4
    # Line 3790
    li	$a2,0x806f
    bne	$a2,$s0,.L0d9d59e0
    sw	$zero,1148($s3)
    # Line 3812
    ld	$a7,232($sp)
.L0d9d58a8:
    lw	$t1,4($a7)
    li	$t0,2
    lw	$a7,16($a7)
    sllv	$t0,$t0,$t1
    mult	$a7,$t0
    # Line 3822
    lw	$a6,96($sp)
    # Line 3812
    mflo	$a3
    nop
    nop
    # Line 3822
    multu	$a6,$a0
    lw	$a4,104($sp)
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f13
    mflo	$a5
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f12
    cvt.s.l	$f13,$f13
    cvt.s.l	$f12,$f12
    # lw $t9, -17032($gp) # &ceilf
    sdc1	$f13,152($sp)
    # Line 3812
    sll	$a3,$a3,0x8
    sd	$a3,200($sp)
    # Line 3822
    jal	ceilf
    div.s	$f12,$f12,$f13
    # Line 3827
    ldc1	$f13,152($sp)
    mul.s	$f13,$f0,$f13
    trunc.l.s	$f13,$f13
    dmfc1	$v0,$f13
    lw	$v1,100($sp)
    sll	$v0,$v0,0x0
    multu	$v0,$v1
    # Line 3833
    lw	$ra,1164($s3)
    # Line 3827
    mflo	$at
    nop
    nop
    # Line 3833
    multu	$ra,$at
    ld	$t9,232($sp)
    lw	$t9,36($t9)
    ld	$s1,240($sp)
    mflo	$t8
    # Line 3827
    sd	$at,192($sp)
    # Line 3833
    beqz	$t9,.L0d9d59fc
    addu	$s1,$s1,$t8
    ld	$a0,168($sp)
    ld	$v1,200($sp)
    multu	$v1,$a0
    sd	$zero,224($sp)
    mflo	$s2
    nop
    nop
.L0d9d5978:
    # Line 3861
    addiu	$a4,$sp,144
    # lw $t9, -31560($gp) # &__glOdysseyImageXfer
    move	$a3,$zero
    addiu	$a2,$sp,64
    addiu	$a1,$sp,0
    # Line 3858
    sw	$s1,124($sp)
    # Line 3855
    srl	$a5,$s2,0x4
    # Line 3861
    addiu	$a0,$sp,80
    jal	__glOdysseyImageXfer
    # Line 3855
    sw	$a5,24($sp)
    # Line 3838
    ld	$a6,192($sp)
    ld	$t0,232($sp)
    ld	$a7,224($sp)
    lw	$t0,36($t0)
    addiu	$a7,$a7,1
    sd	$a7,224($sp)
    sltu	$a7,$a7,$t0
    ld	$t0,200($sp)
    # Line 3864
    addu	$s1,$a6,$s1
    # Line 3838
    bnez	$a7,.L0d9d5978
    addu	$s2,$s2,$t0
    b	.L0d9d5a00
    # Line 3871
    li	$t3,3552
.L0d9d59d4:
    # Line 3790
    li	$t1,0x806f
    beq	$t1,$s0,.L0d9d58a8
    # Line 3812
    ld	$a7,232($sp)
.L0d9d59e0:
    # Line 3800
    # lw $t9, -31560($gp) # &__glOdysseyImageXfer
    addiu	$a4,$sp,144
    move	$a3,$zero
    addiu	$a2,$sp,64
    addiu	$a1,$sp,0
    jal	__glOdysseyImageXfer
    addiu	$a0,$sp,80
.L0d9d59fc:
    # Line 3871
    li	$t3,3552
.L0d9d5a00:
    ld	$t2,184($sp)
    bne	$t3,$s0,.L0d9d555c
    sw	$t2,1148($s3)
    # Line 3874
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    move	$a0,$s3
    jal	__glOdysseySetCurrentFilter
    li	$a1,2
    b	.L0d9d5560
    ld	$s2,256($sp)
.L0d9d5a24:
    # Line 3715
    sd	$zero,168($sp)
    sd	$zero,208($sp)
    sd	$zero,216($sp)
    sd	$v0,160($sp)
    b	.L0d9d56d4
    sd	$a7,288($sp)
.L0d9d5a3c:
    # Line 3710
    li	$t1,16
    subu	$t1,$t1,$t0
    b	.L0d9d5a54
    move	$t2,$t1
.L0d9d5a4c:
    move	$t2,$zero
    subu	$t1,$t1,$t0
.L0d9d5a54:
    # Line 3713
    b	.L0d9d56c4
    sd	$t1,208($sp)
.L0d9d5a5c:
    # Line 3766
    sw	$t9,120($sp)
    b	.L0d9d5838
    # Line 3765
    srl	$a0,$a0,0x1
.L0d9d5a68:
    # Line 3770
    ld	$a1,232($sp)
    lw	$a1,28($a1)
    b	.L0d9d5844
    addu	$a1,$a1,$s2
.L0d9d5a78:
    # Line 3774
    ld	$v0,232($sp)
    ld	$v1,160($sp)
    lw	$v0,32($v0)
    b	.L0d9d5854
    addu	$v0,$v0,$v1
.L0d9d5a8c:
    # Line 3685
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    move	$a0,$s3
    li	$a1,2
    jal	__glOdysseySetCurrentFilter
    sd	$s1,232($sp)
    # Line 3686
    lw	$a7,0($v0)
    li	$v1,0x8011
    li	$a6,0x806f
    li	$t3,3552
    beq	$a7,$v1,.L0d9d5b34
    # Line 3685
    move	$s1,$v0
    # Line 3686
    li	$a0,0x8012
    beq	$a7,$a0,.L0d9d5b34
    # Line 3690
    move	$v0,$zero
    ld	$s1,232($sp)
    b	.L0d9d566c
    move	$a7,$zero
.L0d9d5ad0:
    # Line 3650
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d5560
    ld	$s2,256($sp)
    # Line 3646
    # lw $t9, -26792($gp) # &__glSetError
.L0d9d5ae8:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d5560
    ld	$s2,256($sp)
.L0d9d5af8:
    # Line 3676
    # lw $t9, -31272($gp) # &__glOdysseySetCurrentFilter
    move	$a0,$s3
    li	$a1,1
    jal	__glOdysseySetCurrentFilter
    sd	$s1,232($sp)
    # Line 3677
    lw	$a1,0($v0)
    li	$a2,0x8010
    li	$t3,3552
    beq	$a1,$a2,.L0d9d5b50
    # Line 3676
    move	$s1,$v0
    # Line 3680
    move	$a7,$zero
.L0d9d5b24:
    move	$v0,$zero
    li	$a6,0x806f
    b	.L0d9d566c
    ld	$s1,232($sp)
.L0d9d5b34:
    # Line 3686
    lw	$a3,4($s1)
    li	$a4,0x8016
    beq	$a3,$a4,.L0d9d5b68
    # Line 3690
    move	$v0,$zero
    move	$a7,$zero
    b	.L0d9d566c
    ld	$s1,232($sp)
.L0d9d5b50:
    # Line 3677
    lw	$a5,4($v0)
    li	$a6,0x8016
    beq	$a5,$a6,.L0d9d5b9c
    nop
    b	.L0d9d5b24
    # Line 3680
    move	$a7,$zero
.L0d9d5b68:
    # Line 3689
    lw	$t1,68($s1)
    move	$a7,$zero
    # Line 3690
    move	$v0,$zero
    # Line 3686
    lw	$t8,64($s1)
    # Line 3690
    li	$s1,1
    slti	$t0,$t1,1
    subu	$t1,$s1,$t1
    # Line 3689
    subu	$s1,$s1,$t8
    slti	$t2,$t8,1
    movz	$v0,$t1,$t0
    movz	$a7,$s1,$t2
    # Line 3690
    b	.L0d9d566c
    ld	$s1,232($sp)
.L0d9d5b9c:
    # Line 3677
    lw	$t9,64($v0)
    # Line 3680
    li	$t8,1
    move	$a7,$zero
    subu	$t8,$t8,$t9
    slti	$t2,$t9,1
    b	.L0d9d5b24
    movz	$a7,$t8,$t2
.end __glOdyim_GetTexImage

# Function: __glOdysseyTextureSetSWrap
# Declared: Line 3882 (Source lines: 3889-3917)
# Address: 0x0d9d5bc0 - 0x0d9d5c70 (Size: 176 bytes, Frame: 0)
.ent __glOdysseyTextureSetSWrap
__glOdysseyTextureSetSWrap:
    # Line 3893
    move	$a3,$zero
    # Line 3889
    li	$at,10497
    # Line 3914
    lui	$t2,0xfc
    # Line 3913
    li	$a6,-12289
    # Line 3889
    beq	$a1,$at,.L0d9d5c54
    # Line 3893
    move	$a4,$zero
    # Line 3889
    li	$v0,10496
    # Line 3902
    li	$a3,1
    # Line 3889
    beq	$a1,$v0,.L0d9d5c5c
    # Line 3902
    li	$a4,1
    # Line 3889
    li	$v1,0x812f
    beq	$a1,$v1,.L0d9d5c68
    li	$a2,0x812d
    # Line 3906
    li	$a4,63
    # Line 3889
    beq	$a1,$a2,.L0d9d5c0c
    # Line 3906
    li	$a3,3
    # Line 3908
    # lw $t9, -26792($gp) # &__glSetError
    jr	$t9
    li	$a0,1280
.L0d9d5c0c:
    # Line 3912
    sw	$a1,28($a0)
.L0d9d5c10:
    # Line 3916
    lw	$t0,160($a0)
    # Line 3914
    sll	$t1,$a4,0x12
    nor	$t3,$t2,$zero
    # Line 3913
    sll	$a4,$a3,0xc
    # Line 3914
    lw	$a7,168($a0)
    # Line 3913
    andi	$a4,$a4,0x3000
    # Line 3914
    and	$t1,$t1,$t2
    # Line 3913
    lw	$a5,180($a0)
    # Line 3916
    ori	$t0,$t0,0x200
    sw	$t0,160($a0)
    # Line 3914
    and	$a7,$a7,$t3
    # Line 3913
    and	$a3,$a5,$a6
    # Line 3914
    or	$a7,$a7,$t1
    sw	$a7,168($a0)
    # Line 3913
    or	$a3,$a3,$a4
    # Line 3917
    jr	$ra
    # Line 3913
    sw	$a3,180($a0)
.L0d9d5c54:
    b	.L0d9d5c10
    # Line 3912
    sw	$a1,28($a0)
.L0d9d5c5c:
    # Line 3898
    move	$a4,$zero
    b	.L0d9d5c0c
    li	$a3,2
.L0d9d5c68:
    # Line 3902
    b	.L0d9d5c10
    # Line 3912
    sw	$a1,28($a0)
.end __glOdysseyTextureSetSWrap

# Function: __glOdysseyTextureSetTWrap
# Declared: Line 3920 (Source lines: 3927-3955)
# Address: 0x0d9d5c70 - 0x0d9d5d20 (Size: 176 bytes, Frame: 0)
.ent __glOdysseyTextureSetTWrap
__glOdysseyTextureSetTWrap:
    # Line 3931
    move	$a3,$zero
    # Line 3927
    li	$at,10497
    # Line 3952
    lui	$t2,0xfc
    # Line 3951
    li	$a6,-3073
    # Line 3927
    beq	$a1,$at,.L0d9d5d04
    # Line 3931
    move	$a4,$zero
    # Line 3927
    li	$v0,10496
    # Line 3940
    li	$a3,1
    # Line 3927
    beq	$a1,$v0,.L0d9d5d0c
    # Line 3940
    li	$a4,1
    # Line 3927
    li	$v1,0x812f
    beq	$a1,$v1,.L0d9d5d18
    li	$a2,0x812d
    # Line 3944
    li	$a4,63
    # Line 3927
    beq	$a1,$a2,.L0d9d5cbc
    # Line 3944
    li	$a3,3
    # Line 3946
    # lw $t9, -26792($gp) # &__glSetError
    jr	$t9
    li	$a0,1280
.L0d9d5cbc:
    # Line 3950
    sw	$a1,32($a0)
.L0d9d5cc0:
    # Line 3954
    lw	$t0,160($a0)
    # Line 3952
    sll	$t1,$a4,0x12
    nor	$t3,$t2,$zero
    # Line 3951
    sll	$a4,$a3,0xa
    # Line 3952
    lw	$a7,172($a0)
    # Line 3951
    andi	$a4,$a4,0xc00
    # Line 3952
    and	$t1,$t1,$t2
    # Line 3951
    lw	$a5,180($a0)
    # Line 3954
    ori	$t0,$t0,0x200
    sw	$t0,160($a0)
    # Line 3952
    and	$a7,$a7,$t3
    # Line 3951
    and	$a3,$a5,$a6
    # Line 3952
    or	$a7,$a7,$t1
    sw	$a7,172($a0)
    # Line 3951
    or	$a3,$a3,$a4
    # Line 3955
    jr	$ra
    # Line 3951
    sw	$a3,180($a0)
.L0d9d5d04:
    b	.L0d9d5cc0
    # Line 3950
    sw	$a1,32($a0)
.L0d9d5d0c:
    # Line 3936
    move	$a4,$zero
    b	.L0d9d5cbc
    li	$a3,2
.L0d9d5d18:
    # Line 3940
    b	.L0d9d5cc0
    # Line 3950
    sw	$a1,32($a0)
.end __glOdysseyTextureSetTWrap

# Function: __glOdysseyTextureSetRWrap
# Declared: Line 3958 (Source lines: 3960-3999)
# Address: 0x0d9d5d20 - 0x0d9d5de0 (Size: 192 bytes, Frame: 0)
.ent __glOdysseyTextureSetRWrap
__glOdysseyTextureSetRWrap:
    # Line 3967
    lw	$v0,12($a0)
    # Line 3960
    move	$a3,$a1
    # Line 3967
    li	$at,10497
    xori	$v0,$v0,0x806f
    # Line 3976
    move	$a2,$zero
    # Line 3967
    movn	$a3,$at,$v0
    # Line 3995
    li	$a5,-769
    # Line 3965
    sw	$a1,36($a0)
    # Line 3996
    lui	$t1,0xfc
    nor	$t2,$t1,$zero
    # Line 3972
    beq	$a3,$at,.L0d9d5dc4
    # Line 3970
    sw	$a3,40($a0)
    # Line 3972
    li	$v1,10496
    beq	$a3,$v1,.L0d9d5dcc
    # Line 3985
    li	$a2,1
    # Line 3972
    li	$a1,0x812f
    beq	$a3,$a1,.L0d9d5dd8
    nop
    li	$a2,0x812d
    beq	$a3,$a2,.L0d9d5d7c
    # Line 3991
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jr	$t9
    li	$a0,1280
.L0d9d5d7c:
    # Line 3989
    li	$a2,3
    li	$a3,63
.L0d9d5d84:
    # Line 3998
    lw	$a7,160($a0)
    # Line 3995
    sll	$a4,$a2,0x8
    # Line 3996
    lw	$a6,176($a0)
    sll	$t0,$a3,0x12
    # Line 3995
    andi	$a4,$a4,0x300
    # Line 3996
    and	$t0,$t0,$t1
    # Line 3995
    lw	$a3,180($a0)
    # Line 3998
    ori	$a7,$a7,0x200
    sw	$a7,160($a0)
    # Line 3996
    and	$a6,$a6,$t2
    # Line 3995
    and	$a3,$a3,$a5
    # Line 3996
    or	$a6,$a6,$t0
    sw	$a6,176($a0)
    # Line 3995
    or	$a3,$a3,$a4
    # Line 3999
    jr	$ra
    # Line 3995
    sw	$a3,180($a0)
.L0d9d5dc4:
    b	.L0d9d5d84
    # Line 3976
    move	$a3,$zero
.L0d9d5dcc:
    # Line 3981
    move	$a3,$zero
    b	.L0d9d5d84
    li	$a2,2
.L0d9d5dd8:
    # Line 3985
    b	.L0d9d5d84
    li	$a3,1
.end __glOdysseyTextureSetRWrap

# Function: __glOdysseyTextureSetMaxLOD
# Declared: Line 4002 (Source lines: 4009-4022)
# Address: 0x0d9d5de0 - 0x0d9d5e40 (Size: 96 bytes, Frame: 0)
.ent __glOdysseyTextureSetMaxLOD
__glOdysseyTextureSetMaxLOD:
    # Line 4009
    lw	$a1,92($a0)
    lw	$v1,96($a0)
    subu	$v1,$v1,$a1
    mtc1	$v1,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f4,88($a0)
    c.lt.s $f3,$f4
    # Line 4019
    lwc1	$f2,_lit_41700000
    movf.s	$f3,$f4,$fcc2
    c.lt.s $f2,$f3
    lwc1	$f0,_lit_c1700000
    movf.s	$f2,$f3,$fcc1
    c.lt.s	$f2,$f0
    lwc1	$f1,_lit_43800000
    movf.s	$f0,$f2,$fcc0
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    # Line 4021
    lw	$v0,160($a0)
    # Line 4019
    mfc1	$at,$f0
    # Line 4021
    ori	$v0,$v0,0x4000
    sw	$v0,160($a0)
    # Line 4019
    andi	$at,$at,0x3fff
    # Line 4022
    jr	$ra
    # Line 4019
    sw	$at,204($a0)
.end __glOdysseyTextureSetMaxLOD

# Function: __glOdysseyTextureSetMinFilter
# Declared: Line 4025 (Source lines: 4027-4114)
# Address: 0x0d9d5e40 - 0x0d9d619c (Size: 860 bytes, Frame: 16)
.ent __glOdysseyTextureSetMinFilter
__glOdysseyTextureSetMinFilter:
    # Line 4033
    slti	$at,$a1,9985
    # Line 4027
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    # Line 4033
    bnez	$at,.L0d9d5eec
    # Line 4027
    move	$s0,$a0
    # Line 4033
    slti	$v0,$a1,9986
    beqz	$v0,.L0d9d5f88
    slti	$t1,$a1,9987
    # Line 4094
    lw	$v1,24($a0)
    # Line 4087
    lw	$a0,180($a0)
    # Line 4094
    li	$a3,0x832a
    # Line 4087
    li	$a2,-225
    # Line 4086
    sw	$a1,20($s0)
    # Line 4087
    and	$a0,$a0,$a2
    ori	$a0,$a0,0x60
    # Line 4094
    beq	$a3,$v1,.L0d9d6124
    # Line 4087
    sw	$a0,180($s0)
    # Line 4094
    beq	$a1,$a3,.L0d9d6124
    # Line 4097
    lui	$a3,0x2
    sd	$ra,8($sp)
    nor	$a3,$a3,$zero
    and	$a3,$a0,$a3
    sw	$a3,180($s0)
.L0d9d5e9c:
    # Line 4107
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,24032
    bal __glOdyim_GetTexImage
    move	$a0,$s0
    # Line 4113
    lw	$at,160($s0)
    ld	$ra,8($sp)
    # Line 4107
    li	$v0,2
    # Line 4111
    sw	$v0,16($s0)
    # Line 4113
    ori	$at,$at,0x200
    sw	$at,160($s0)
    # Line 4114
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d5ed0:
    # Line 4113
    lw	$v1,160($s0)
    # Line 4111
    sw	$a5,16($s0)
    # Line 4113
    ori	$v1,$v1,0x200
    sw	$v1,160($s0)
    # Line 4114
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d5eec:
    # Line 4033
    slti	$a0,$a1,9729
    bnez	$a0,.L0d9d5fd8
    li	$a4,9728
    slti	$a2,$a1,9730
    # Line 4046
    li	$a5,0x8098
    # Line 4033
    beqz	$a2,.L0d9d60a0
    # Line 4046
    li	$a6,0x8099
    lw	$a4,24($s0)
    li	$a3,0x8097
    beq	$a4,$a3,.L0d9d6138
    nop
    beq	$a4,$a5,.L0d9d6138
    nop
    beq	$a4,$a6,.L0d9d6138
    li	$a6,1
.L0d9d5f28:
    # Line 4087
    sll	$a2,$a6,0x5
    # Line 4097
    lui	$a6,0x2
    # Line 4087
    lw	$a0,180($s0)
    # Line 4094
    li	$a3,0x832a
    # Line 4087
    li	$a5,-225
    # Line 4086
    sw	$a1,20($s0)
    # Line 4087
    andi	$a2,$a2,0xe0
    and	$a0,$a0,$a5
    or	$a0,$a0,$a2
    # Line 4094
    beq	$a3,$a4,.L0d9d6140
    # Line 4087
    sw	$a0,180($s0)
    # Line 4094
    beq	$a1,$a3,.L0d9d6144
    # Line 4095
    lui	$t0,0x2
    # Line 4097
    nor	$a6,$a6,$zero
    and	$a6,$a0,$a6
    sw	$a6,180($s0)
.L0d9d5f68:
    # Line 4113
    lw	$a7,160($s0)
    # Line 4097
    li	$t0,2
    # Line 4111
    sw	$t0,16($s0)
    # Line 4113
    ori	$a7,$a7,0x200
    sw	$a7,160($s0)
    # Line 4114
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d5f88:
    # Line 4033
    bnez	$t1,.L0d9d6048
    li	$t1,9986
    slti	$t2,$a1,9988
    # Line 4087
    li	$a2,-225
    # Line 4033
    beqz	$t2,.L0d9d60e8
    li	$a3,0x832a
    # Line 4094
    lw	$t3,24($a0)
    # Line 4087
    lw	$a0,180($a0)
    # Line 4086
    sw	$a1,20($s0)
    # Line 4087
    and	$a0,$a0,$a2
    ori	$a0,$a0,0xa0
    # Line 4094
    beq	$a3,$t3,.L0d9d6188
    # Line 4087
    sw	$a0,180($s0)
    # Line 4094
    beq	$a1,$a3,.L0d9d6188
    # Line 4097
    lui	$a3,0x2
    sd	$ra,8($sp)
    nor	$a3,$a3,$zero
    and	$a3,$a0,$a3
    b	.L0d9d5e9c
    sw	$a3,180($s0)
.L0d9d5fd8:
    # Line 4033
    bne	$a1,$a4,.L0d9d6090
    # Line 4082
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4037
    lw	$a4,24($s0)
    li	$a5,0x8097
    beq	$a4,$a5,.L0d9d6118
    li	$a6,0x8098
    beq	$a4,$a6,.L0d9d6118
    # Line 4041
    li	$a5,2
    # Line 4037
    li	$a7,0x8099
    beq	$a4,$a7,.L0d9d6118
    # Line 4041
    move	$a6,$zero
.L0d9d6004:
    # Line 4094
    li	$a3,0x832a
    # Line 4087
    lw	$a0,180($s0)
    li	$a7,-225
    sll	$a2,$a6,0x5
    # Line 4086
    sw	$a1,20($s0)
    # Line 4087
    and	$a0,$a0,$a7
    andi	$a2,$a2,0xe0
    or	$a0,$a0,$a2
    # Line 4094
    beq	$a3,$a4,.L0d9d6150
    # Line 4087
    sw	$a0,180($s0)
    # Line 4094
    beq	$a1,$a3,.L0d9d6154
    # Line 4095
    lui	$t1,0x2
    # Line 4097
    lui	$t0,0x2
    nor	$t0,$t0,$zero
    and	$t0,$a0,$t0
    b	.L0d9d5ed0
    sw	$t0,180($s0)
.L0d9d6048:
    # Line 4087
    li	$a2,-225
    # Line 4033
    bne	$a1,$t1,.L0d9d608c
    # Line 4094
    li	$a3,0x832a
    lw	$t2,24($a0)
    # Line 4087
    lw	$a0,180($a0)
    # Line 4086
    sw	$a1,20($s0)
    # Line 4087
    and	$a0,$a0,$a2
    ori	$a0,$a0,0x80
    # Line 4094
    beq	$a3,$t2,.L0d9d6160
    # Line 4087
    sw	$a0,180($s0)
    # Line 4094
    beq	$a1,$a3,.L0d9d6160
    # Line 4097
    lui	$a3,0x2
    sd	$ra,8($sp)
    nor	$a3,$a3,$zero
    and	$a3,$a0,$a3
    b	.L0d9d5e9c
    sw	$a3,180($s0)
.L0d9d608c:
    # Line 4082
    # lw $t9, -26792($gp) # &__glSetError
.L0d9d6090:
    li	$a0,1280
    # Line 4083
    ld	$s0,0($sp)
    jr	$t9
    addiu	$sp,$sp,16
.L0d9d60a0:
    # Line 4033
    li	$a4,9984
    # Line 4087
    li	$a2,-225
    # Line 4033
    bne	$a1,$a4,.L0d9d608c
    # Line 4094
    li	$a3,0x832a
    lw	$a5,24($s0)
    # Line 4087
    lw	$a0,180($s0)
    # Line 4086
    sw	$a1,20($s0)
    # Line 4087
    and	$a0,$a0,$a2
    ori	$a0,$a0,0x40
    # Line 4094
    beq	$a3,$a5,.L0d9d6174
    # Line 4087
    sw	$a0,180($s0)
    # Line 4094
    beq	$a1,$a3,.L0d9d6174
    # Line 4097
    lui	$a3,0x2
    sd	$ra,8($sp)
    nor	$a3,$a3,$zero
    and	$a3,$a0,$a3
    b	.L0d9d5e9c
    sw	$a3,180($s0)
.L0d9d60e8:
    # Line 4033
    bne	$a1,$a3,.L0d9d6090
    # Line 4082
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4095
    li	$a5,2
    # Line 4087
    lw	$a4,180($a0)
    li	$a6,-225
    and	$a4,$a4,$a6
    # Line 4086
    sw	$a1,20($a0)
    # Line 4095
    lui	$a6,0x2
    # Line 4087
    ori	$a4,$a4,0x20
    # Line 4095
    or	$a4,$a4,$a6
    b	.L0d9d5ed0
    sw	$a4,180($a0)
.L0d9d6118:
    # Line 4041
    li	$a5,2
    b	.L0d9d6004
    move	$a6,$a5
.L0d9d6124:
    sd	$ra,8($sp)
    # Line 4095
    lui	$a7,0x2
    or	$a7,$a0,$a7
    b	.L0d9d5e9c
    sw	$a7,180($s0)
.L0d9d6138:
    # Line 4046
    b	.L0d9d5f28
    li	$a6,5
.L0d9d6140:
    # Line 4095
    lui	$t0,0x2
.L0d9d6144:
    or	$t0,$a0,$t0
    b	.L0d9d5f68
    sw	$t0,180($s0)
.L0d9d6150:
    lui	$t1,0x2
.L0d9d6154:
    or	$t1,$a0,$t1
    b	.L0d9d5ed0
    sw	$t1,180($s0)
.L0d9d6160:
    sd	$ra,8($sp)
    lui	$t2,0x2
    or	$t2,$a0,$t2
    b	.L0d9d5e9c
    sw	$t2,180($s0)
.L0d9d6174:
    sd	$ra,8($sp)
    lui	$t3,0x2
    or	$t3,$a0,$t3
    b	.L0d9d5e9c
    sw	$t3,180($s0)
.L0d9d6188:
    sd	$ra,8($sp)
    lui	$t8,0x2
    or	$t8,$a0,$t8
    b	.L0d9d5e9c
    sw	$t8,180($s0)
.end __glOdysseyTextureSetMinFilter

# Function: __glOdysseyTextureSetMagFilter
# Declared: Line 4117 (Source lines: 4119-4194)
# Address: 0x0d9d61a0 - 0x0d9d6304 (Size: 356 bytes, Frame: 16)
.ent __glOdysseyTextureSetMagFilter
__glOdysseyTextureSetMagFilter:
    # Line 4119
    addiu	$sp,$sp,-16
    # Line 4124
    li	$at,9728
    li	$a3,0x832a
    # Line 4169
    lui	$t2,0x2
    # Line 4119
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 4124
    beq	$a1,$at,.L0d9d6240
    sd	$ra,8($sp)
    li	$a0,0x8097
    li	$v0,9729
    # Line 4131
    li	$a4,1
    # Line 4124
    beq	$a1,$v0,.L0d9d62c4
    # Line 4131
    li	$a6,2
    # Line 4124
    beq	$a1,$a0,.L0d9d62cc
    # Line 4145
    li	$a4,4
    # Line 4124
    li	$v1,0x8098
    beq	$a1,$v1,.L0d9d62d8
    # Line 4142
    li	$a6,2
    # Line 4145
    li	$a6,2
    # Line 4124
    li	$a2,0x8099
    beq	$a1,$a2,.L0d9d62e0
    nop
    # Line 4166
    li	$a6,2
    # Line 4124
    beq	$a1,$a3,.L0d9d621c
    # Line 4159
    li	$a4,-31
    # Line 4154
    # lw $t9, -26792($gp) # &__glSetError
    move	$ra,$ra
    li	$a0,1280
    # Line 4155
    ld	$s0,0($sp)
    jr	$t9
    addiu	$sp,$sp,16
.L0d9d621c:
    # Line 4159
    lw	$a3,180($s0)
    # Line 4158
    sw	$a1,24($s0)
    # Line 4159
    and	$a3,$a3,$a4
    ori	$a3,$a3,0x2
    sw	$a3,180($s0)
.L0d9d6230:
    # Line 4167
    lui	$a5,0x2
    or	$a5,$a3,$a5
    b	.L0d9d6288
    sw	$a5,180($s0)
.L0d9d6240:
    # Line 4127
    move	$a4,$zero
    li	$a6,2
    li	$a0,0x8097
.L0d9d624c:
    # Line 4159
    li	$t0,-31
.L0d9d6250:
    lw	$a3,180($s0)
    # Line 4158
    sw	$a1,24($s0)
    # Line 4166
    li	$a5,0x832a
    # Line 4159
    sll	$a7,$a4,0x1
    # Line 4166
    lw	$t1,20($s0)
    # Line 4159
    andi	$a7,$a7,0x1e
    and	$a3,$a3,$t0
    or	$a3,$a3,$a7
    # Line 4166
    beq	$a1,$a5,.L0d9d6230
    # Line 4159
    sw	$a3,180($s0)
    # Line 4166
    beq	$a5,$t1,.L0d9d6230
    # Line 4169
    nor	$t2,$t2,$zero
    and	$t2,$a3,$t2
    sw	$t2,180($s0)
.L0d9d6288:
    # Line 4177
    beq	$a1,$a0,.L0d9d62e8
    li	$t3,0x8098
    beq	$a1,$t3,.L0d9d62ec
    # Line 4180
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4177
    li	$t8,0x8099
    beq	$a1,$t8,.L0d9d62ec
    # Line 4180
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
.L0d9d62a4:
    # Line 4192
    lw	$t9,160($s0)
    ld	$ra,8($sp)
    # Line 4184
    sw	$a6,16($s0)
    # Line 4192
    ori	$t9,$t9,0x1200
    sw	$t9,160($s0)
    # Line 4194
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d62c4:
    # Line 4131
    b	.L0d9d6250
    # Line 4159
    li	$t0,-31
.L0d9d62cc:
    # Line 4138
    li	$a6,2
    # Line 4139
    b	.L0d9d624c
    move	$a4,$a6
.L0d9d62d8:
    # Line 4142
    b	.L0d9d624c
    li	$a4,3
.L0d9d62e0:
    # Line 4145
    b	.L0d9d6250
    # Line 4159
    li	$t0,-31
.L0d9d62e8:
    # Line 4180
    # lw $t9, -32712($gp) # &sub_0d9d0000
.L0d9d62ec:
    addiu	$t9,$t9,24128
    move	$a0,$s0
    bal __glOdyim_GetTexImage
    lw	$a1,20($s0)
    b	.L0d9d62a4
    li	$a6,2
.end __glOdysseyTextureSetMagFilter

# Function: __glOdysseyTextureSetDetailLevel
# Declared: Line 4197 (Source lines: 4199-4213)
# Address: 0x0d9d6310 - 0x0d9d6368 (Size: 88 bytes, Frame: 0)
.ent __glOdysseyTextureSetDetailLevel
__glOdysseyTextureSetDetailLevel:
    # Line 4199
    bltz	$a1,.L0d9d6320
    # Line 4201
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jr	$t9
    li	$a0,1281
.L0d9d6320:
    # Line 4212
    lw	$a3,160($a0)
    ori	$a3,$a3,0x200
    # Line 4210
    negu	$v1,$a1
    li	$v0,15
    li	$at,15
    slt	$v0,$v0,$v1
    lui	$a2,0x3e00
    movz	$at,$v1,$v0
    lw	$v0,164($a0)
    # Line 4204
    sw	$a1,64($a0)
    # Line 4210
    nor	$v1,$a2,$zero
    sll	$at,$at,0x19
    # Line 4212
    sw	$a3,160($a0)
    # Line 4210
    and	$v0,$v0,$v1
    and	$at,$at,$a2
    or	$at,$at,$v0
    # Line 4213
    jr	$ra
    # Line 4210
    sw	$at,164($a0)
.end __glOdysseyTextureSetDetailLevel

# Function: __glOdysseyTextureSetDetailMode
# Declared: Line 4216 (Source lines: 4219-4237)
# Address: 0x0d9d6370 - 0x0d9d63d8 (Size: 104 bytes, Frame: 0)
.ent __glOdysseyTextureSetDetailMode
__glOdysseyTextureSetDetailMode:
    # Line 4219
    li	$at,260
    beq	$a1,$at,.L0d9d63b0
    li	$v0,8448
    beq	$a1,$v0,.L0d9d638c
    # Line 4232
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jr	$t9
    li	$a0,1280
.L0d9d638c:
    # Line 4227
    sw	$a1,68($a0)
    # Line 4236
    lw	$a2,160($a0)
    # Line 4228
    lw	$v1,164($a0)
    lui	$a1,0x8000
    # Line 4236
    ori	$a2,$a2,0x200
    sw	$a2,160($a0)
    # Line 4228
    or	$v1,$v1,$a1
    # Line 4237
    jr	$ra
    # Line 4228
    sw	$v1,164($a0)
.L0d9d63b0:
    # Line 4222
    sw	$a1,68($a0)
    # Line 4236
    lw	$a5,160($a0)
    # Line 4223
    lw	$a3,164($a0)
    lui	$a4,0x7fff
    ori	$a4,$a4,0xffff
    # Line 4236
    ori	$a5,$a5,0x200
    sw	$a5,160($a0)
    # Line 4223
    and	$a3,$a3,$a4
    # Line 4237
    jr	$ra
    # Line 4223
    sw	$a3,164($a0)
.end __glOdysseyTextureSetDetailMode

# Function: __glOdysseyTextureSetMaxClamp
# Declared: Line 4240 (Source lines: 4244-4253)
# Address: 0x0d9d63e0 - 0x0d9d6428 (Size: 72 bytes, Frame: 0)
.ent __glOdysseyTextureSetMaxClamp
__glOdysseyTextureSetMaxClamp:
    # Line 4244
    ldc1	$f0,_lit8_3ff0000000000000
    cvt.d.s	$f4,$f14
    c.lt.d	$f0,$f4
    bc1t	.L0d9d641c
    dmtc1	$zero,$f1
    c.lt.d $f4,$f1
    bc1t .L0d9d6420
    # Line 4245
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4248
    swc1	$f14,0($a1)
    # Line 4249
    lw	$at,160($a0)
    # Line 4252
    li	$v0,2
    sw	$v0,16($a0)
    # Line 4249
    ori	$at,$at,0x200
    # Line 4253
    jr	$ra
    # Line 4249
    sw	$at,160($a0)
.L0d9d641c:
    # Line 4245
    # lw $t9, -26792($gp) # &__glSetError
.L0d9d6420:
    jr	$t9
    li	$a0,1281
.end __glOdysseyTextureSetMaxClamp

# Function: __glOdyim_TexParameterfv
# Declared: Line 4257 (Source lines: 4260-4455)
# Address: 0x0d9d6430 - 0x0d9d6d10 (Size: 2272 bytes, Frame: 48)
.globl __glOdyim_TexParameterfv
.ent __glOdyim_TexParameterfv
__glOdyim_TexParameterfv:
    # Line 4260
    addiu	$sp,$sp,-48
    sd	$ra,40($sp)
    sd	$gp,24($sp)
    sd	$s0,16($sp)
    move	$v0,$a0
    # Line 4266
    lw	$at,4120($zero)
    li	$v1,1
    # Line 4260
    sd	$a2,0($sp)
    lui	$a2,0x12
    move	$s0,$a1
    # Line 4266
    lw	$a1,4112($zero)
    # Line 4260
    addiu	$a0,$a2,8544
    # Line 4266
    sd	$a1,8($sp)
    beq	$at,$v1,.L0d9d670c
    # Line 4260
    addu	$gp,$t9,$a0
    # Line 4271
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    ld	$a0,8($sp)
    bal __glOdysseyGetCurrentTexture
    move	$a1,$v0
    beqz	$v0,.L0d9d66e4
    # Line 4282
    li	$a1,0x813c
    sltu	$a3,$s0,$a1
    bnez	$a3,.L0d9d6524
    sltu	$a4,$a1,$s0
    bnez	$a4,.L0d9d6560
    ld	$a5,0($sp)
    mtc1	$zero,$f0
    lwc1	$f4,0($a5)
    c.lt.s	$f4,$f0
    bc1t	.L0d9d66f8
    sd	$v0,32($sp)
    # Line 4405
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4404
    ld	$s0,32($sp)
    # Line 4405
    addiu	$t9,$t9,24032
    # Line 4404
    li	$a6,1
    # Line 4403
    trunc.w.s	$f1,$f4
    # Line 4404
    sw	$a6,1280($s0)
    # Line 4405
    move	$a0,$s0
    bal __glOdyim_GetTexImage
    # Line 4403
    swc1	$f1,92($s0)
    # Line 4406
    lw	$ra,160($s0)
    # Line 4407
    li	$a5,2
    sw	$a5,16($s0)
    # Line 4408
    lui	$a1,0x1
    # Line 4406
    ori	$ra,$ra,0x200
    sw	$ra,160($s0)
.L0d9d64e8:
    # Line 4454
    ld	$v0,8($sp)
    # Line 4455
    ld	$gp,24($sp)
    ld	$ra,40($sp)
    # Line 4454
    addu	$v0,$a1,$v0
    lw	$at,26980($v0)
    # Line 4455
    ld	$s0,16($sp)
    # Line 4454
    ori	$at,$at,0x200
    sw	$at,26980($v0)
    # Line 4455
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4454
    sw	$a5,4120($zero)
.L0d9d6514:
    # Line 4455
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d6524:
    # Line 4282
    li	$a1,0x8072
    sltu	$v1,$s0,$a1
    bnez	$v1,.L0d9d6590
    sltiu	$a7,$s0,10242
    sltu	$a0,$a1,$s0
    beqz	$a0,.L0d9d6954
    li	$a1,0x80bf
    sltu	$a2,$s0,$a1
    bnez	$a2,.L0d9d6694
    sltu	$a3,$a1,$s0
    bnez	$a3,.L0d9d6980
    li	$a1,0x813b
    li	$a5,2
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d6560:
    li	$a1,0x8190
    sltu	$a4,$s0,$a1
    bnez	$a4,.L0d9d65e4
    sltu	$a5,$a1,$s0
    bnez	$a5,.L0d9d6720
    li	$a1,0x8369
    # Line 4434
    ld	$a6,0($sp)
    lwc1	$f2,0($a6)
    # Line 4436
    li	$a5,2
    lui	$a1,0x1
    b	.L0d9d64e8
    # Line 4434
    swc1	$f2,108($v0)
.L0d9d6590:
    # Line 4282
    bnez	$a7,.L0d9d664c
    sltiu	$at,$s0,10240
    sltiu	$t0,$s0,10243
    bnez	$t0,.L0d9d6ad0
    # Line 4285
    ld	$ra,0($sp)
    # Line 4282
    li	$a1,0x8066
    sltu	$t1,$s0,$a1
    bnez	$t1,.L0d9d69f4
    li	$at,10243
    sltu	$t2,$a1,$s0
    bnez	$t2,.L0d9d66e8
    # Line 4278
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4318
    ld	$t3,0($sp)
    mtc1	$zero,$f3
    lwc1	$f4,0($t3)
    c.lt.s $f4,$f3
    bc1t .L0d9d66f8
    # Line 4321
    li	$a5,2
    lui	$a1,0x1
    b	.L0d9d64e8
    # Line 4320
    swc1	$f4,60($v0)
.L0d9d65e4:
    # Line 4282
    li	$a1,0x817a
    sltu	$t8,$s0,$a1
    bnez	$t8,.L0d9d6778
    sltu	$t9,$a1,$s0
    beqz	$t9,.L0d9d6bb8
    li	$a1,0x818f
    sltu	$ra,$s0,$a1
    bnez	$ra,.L0d9d66d8
    sltu	$at,$a1,$s0
    bnez	$at,.L0d9d66e4
    sd	$v0,32($sp)
    # Line 4428
    ld	$s0,32($sp)
    ld	$v0,0($sp)
    # Line 4429
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4428
    lwc1	$f4,0($v0)
    # Line 4429
    addiu	$t9,$t9,-1440
    # Line 4428
    swc1	$f4,104($s0)
    # Line 4429
    bal __glOdysseyTextureDriverDestroy
    lwc1	$f12,0($v0)
    # Line 4430
    lw	$ra,160($s0)
    # Line 4431
    li	$a5,2
    lui	$a1,0x1
    # Line 4429
    sw	$v0,196($s0)
    # Line 4430
    ori	$ra,$ra,0x4000
    # Line 4431
    b	.L0d9d64e8
    # Line 4430
    sw	$ra,160($s0)
.L0d9d664c:
    # Line 4282
    bnez	$at,.L0d9d6838
    sltiu	$v1,$s0,10241
    bnez	$v1,.L0d9d6b60
    # Line 4301
    ld	$ra,0($sp)
    # Line 4282
    li	$a0,10241
    bne	$s0,$a0,.L0d9d66e8
    # Line 4278
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4297
    ld	$ra,0($sp)
    lwc1	$f5,0($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,24128
    trunc.w.s	$f5,$f5
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    mfc1	$a1,$f5
    # Line 4298
    li	$a5,2
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d6694:
    # Line 4282
    li	$a1,0x809b
    sltu	$at,$s0,$a1
    bnez	$at,.L0d9d69bc
    sltu	$v1,$a1,$s0
    bnez	$v1,.L0d9d66e8
    # Line 4278
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4328
    ld	$ra,0($sp)
    lwc1	$f6,0($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,25456
    trunc.w.s	$f6,$f6
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    mfc1	$a1,$f6
    # Line 4329
    li	$a5,2
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d66d8:
    # Line 4282
    li	$at,0x818e
    beq	$s0,$at,.L0d9d6cd4
    sd	$v0,32($sp)
.L0d9d66e4:
    # Line 4278
    # lw $t9, -26792($gp) # &__glSetError
.L0d9d66e8:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d6514
    ld	$ra,40($sp)
.L0d9d66f8:
    # Line 4400
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9d6514
    ld	$ra,40($sp)
.L0d9d670c:
    # Line 4266
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d6514
    ld	$ra,40($sp)
.L0d9d6720:
    # Line 4282
    sltu	$v1,$s0,$a1
    bnez	$v1,.L0d9d6a28
    sltu	$a0,$a1,$s0
    beqz	$a0,.L0d9d6cb0
    # Line 4439
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4282
    li	$a1,0x836b
    sltu	$a2,$s0,$a1
    bnez	$a2,.L0d9d6b88
    li	$at,0x836a
    sltu	$a3,$a1,$s0
    bnez	$a3,.L0d9d66e8
    # Line 4278
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4447
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a4,0($sp)
    addiu	$t9,$t9,25568
    move	$a0,$v0
    addiu	$a1,$v0,80
    bal __glOdyim_GetTexImage
    lwc1	$f14,0($a4)
    # Line 4448
    li	$a5,2
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d6778:
    # Line 4282
    li	$a1,0x8179
    sltu	$ra,$s0,$a1
    bnez	$ra,.L0d9d6a78
    sltu	$at,$a1,$s0
    bnez	$at,.L0d9d66e4
    sd	$v0,32($sp)
    # Line 4357
    ld	$v0,0($sp)
    ld	$s0,32($sp)
    lwc1	$f10,0($v0)
    swc1	$f10,112($s0)
    # Line 4358
    lwc1	$f9,4($v0)
    swc1	$f9,116($s0)
    # Line 4359
    lwc1	$f8,8($v0)
    # Line 4357
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4359
    swc1	$f8,120($s0)
    # Line 4360
    lwc1	$f7,12($v0)
    # Line 4357
    addiu	$t9,$t9,-1376
    # Line 4360
    swc1	$f7,124($s0)
    # Line 4361
    bal __glOdysseyTextureDriverDestroy
    lwc1	$f12,0($v0)
    # Line 4362
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$ra,0($sp)
    addiu	$t9,$t9,-1376
    # Line 4361
    sw	$v0,224($s0)
    # Line 4362
    lwc1	$f12,4($ra)
    bal __glOdysseyTextureDriverDestroy
    nop
    # Line 4363
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$ra,0($sp)
    addiu	$t9,$t9,-1376
    # Line 4362
    sw	$v0,232($s0)
    # Line 4363
    lwc1	$f12,8($ra)
    bal __glOdysseyTextureDriverDestroy
    nop
    # Line 4364
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$ra,0($sp)
    addiu	$t9,$t9,-1376
    # Line 4363
    sw	$v0,240($s0)
    # Line 4364
    lwc1	$f12,12($ra)
    bal __glOdysseyTextureDriverDestroy
    nop
    # Line 4365
    lw	$at,160($s0)
    # Line 4366
    li	$a5,2
    # Line 4364
    sw	$v0,248($s0)
    # Line 4365
    lui	$a1,0x1
    or	$at,$a1,$at
    # Line 4366
    b	.L0d9d64e8
    # Line 4365
    sw	$at,160($s0)
.L0d9d6838:
    # Line 4282
    li	$v1,4100
    bne	$s0,$v1,.L0d9d66e4
    sd	$v0,32($sp)
    # Line 4305
    # lw $t9, -26168($gp) # &__glClampColorf
    ld	$s0,32($sp)
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    jal	__glClampColorf
    addiu	$a1,$s0,44
    # Line 4306
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$ra,0($sp)
    addiu	$t9,$t9,-1504
    lwc1	$f12,0($ra)
    bal __glOdysseyTextureDriverDestroy
    nop
    sll	$a0,$v0,0xc
    lw	$v1,184($s0)
    lui	$a1,0xff00
    lui	$at,0xff
    ori	$v0,$a1,0xfff
    # Line 4308
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4306
    ori	$at,$at,0xf000
    and	$v0,$v0,$v1
    # Line 4308
    ld	$ra,0($sp)
    # Line 4306
    and	$at,$at,$a0
    # Line 4308
    addiu	$t9,$t9,-1504
    # Line 4306
    or	$at,$at,$v0
    sw	$at,184($s0)
    # Line 4308
    lwc1	$f12,4($ra)
    bal __glOdysseyTextureDriverDestroy
    nop
    lw	$a0,184($s0)
    # Line 4310
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4308
    andi	$at,$v0,0xfff
    li	$v1,-4096
    # Line 4310
    ld	$ra,0($sp)
    # Line 4308
    and	$v0,$v1,$a0
    # Line 4310
    addiu	$t9,$t9,-1504
    # Line 4308
    or	$at,$at,$v0
    sw	$at,184($s0)
    # Line 4310
    lwc1	$f12,8($ra)
    bal __glOdysseyTextureDriverDestroy
    nop
    lui	$at,0xff
    lw	$v1,188($s0)
    sll	$v0,$v0,0xc
    ori	$at,$at,0xf000
    # Line 4312
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4310
    and	$at,$at,$v0
    lui	$v0,0xff00
    ori	$v0,$v0,0xfff
    # Line 4312
    ld	$ra,0($sp)
    addiu	$t9,$t9,-1504
    # Line 4310
    and	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,188($s0)
    # Line 4312
    lwc1	$f12,12($ra)
    bal __glOdysseyTextureDriverDestroy
    nop
    # Line 4314
    lw	$a2,160($s0)
    li	$a5,2
    lui	$a1,0x1
    # Line 4312
    lw	$a0,188($s0)
    andi	$v0,$v0,0xfff
    li	$v1,-4096
    # Line 4314
    ori	$a2,$a2,0x200
    sw	$a2,160($s0)
    # Line 4312
    and	$v1,$v1,$a0
    or	$v0,$v0,$v1
    b	.L0d9d64e8
    sw	$v0,188($s0)
.L0d9d6954:
    # Line 4293
    ld	$ra,0($sp)
    lwc1	$f11,0($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,23840
    trunc.w.s	$f11,$f11
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    mfc1	$a1,$f11
    # Line 4294
    li	$a5,2
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d6980:
    # Line 4282
    sltu	$at,$s0,$a1
    bnez	$at,.L0d9d6af8
    sltu	$v1,$a1,$s0
    bnez	$v1,.L0d9d66e8
    # Line 4278
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4394
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4393
    ld	$ra,0($sp)
    lwc1	$f12,0($ra)
    # Line 4394
    addiu	$t9,$t9,24032
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    # Line 4393
    swc1	$f12,88($v0)
    # Line 4395
    li	$a5,2
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d69bc:
    # Line 4282
    li	$at,0x809a
    bne	$s0,$at,.L0d9d66e8
    # Line 4278
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4324
    ld	$ra,0($sp)
    lwc1	$f13,0($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,25360
    trunc.w.s	$f13,$f13
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    mfc1	$a1,$f13
    # Line 4325
    li	$a5,2
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d69f4:
    # Line 4282
    bne	$s0,$at,.L0d9d66e8
    # Line 4278
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4289
    ld	$ra,0($sp)
    lwc1	$f14,0($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,23664
    trunc.w.s	$f14,$f14
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    mfc1	$a1,$f14
    # Line 4290
    li	$a5,2
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d6a28:
    # Line 4282
    li	$v0,0x819b
    sltu	$at,$s0,$v0
    bnez	$at,.L0d9d6b28
    li	$a1,0x819a
    sltu	$v1,$v0,$s0
    bnez	$v1,.L0d9d66e8
    # Line 4278
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4343
    ld	$v1,0($sp)
    lwc1	$f15,0($v1)
    trunc.l.s	$f15,$f15
    dmfc1	$v0,$f15
    li	$a0,0x819c
    sll	$v0,$v0,0x0
    beq	$v0,$a0,.L0d9d6a70
    li	$a5,2
    li	$a0,0x819d
    bne	$v0,$a0,.L0d9d66e4
    li	$a5,2
.L0d9d6a70:
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d6a78:
    # Line 4282
    li	$a1,0x813d
    bne	$s0,$a1,.L0d9d66e8
    # Line 4278
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4411
    ld	$a2,0($sp)
    mtc1	$zero,$f16
    lwc1	$f4,0($a2)
    c.lt.s $f4,$f16
    bc1t .L0d9d66f8
    sd	$v0,32($sp)
    # Line 4417
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4415
    ld	$s0,32($sp)
    # Line 4417
    addiu	$t9,$t9,24032
    # Line 4415
    li	$a3,1
    # Line 4414
    trunc.w.s	$f17,$f4
    # Line 4415
    sw	$a3,1280($s0)
    # Line 4417
    move	$a0,$s0
    bal __glOdyim_GetTexImage
    # Line 4414
    swc1	$f17,96($s0)
    # Line 4419
    lui	$a1,0x1
    # Line 4418
    li	$a5,2
    # Line 4419
    b	.L0d9d64e8
    # Line 4418
    sw	$a5,16($s0)
.L0d9d6ad0:
    # Line 4285
    lwc1	$f18,0($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,23488
    trunc.w.s	$f18,$f18
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    mfc1	$a1,$f18
    # Line 4286
    li	$a5,2
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d6af8:
    # Line 4282
    li	$at,0x813a
    bne	$s0,$at,.L0d9d66e4
    # Line 4381
    ld	$v1,0($sp)
    lwc1	$f21,0($v1)
    lwc1	$f19,_lit_c1700000
    swc1	$f21,84($v0)
    lwc1	$f4,0($v1)
    c.lt.s $f4,$f19
    bc1f .L0d9d6c68
    # Line 4383
    li	$a0,12544
    b	.L0d9d6c98
    sw	$a0,200($v0)
.L0d9d6b28:
    # Line 4282
    bne	$s0,$a1,.L0d9d66e8
    # Line 4278
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4332
    ld	$v1,0($sp)
    lwc1	$f23,0($v1)
    trunc.l.s	$f23,$f23
    dmfc1	$v0,$f23
    sll	$v0,$v0,0x0
    beqz	$v0,.L0d9d6b54
    li	$a0,1
    bne	$a0,$v0,.L0d9d66e8
    # Line 4278
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6b54:
    # Line 4332
    li	$a5,2
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d6b60:
    # Line 4301
    lwc1	$f25,0($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,24992
    trunc.w.s	$f25,$f25
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    mfc1	$a1,$f25
    # Line 4302
    li	$a5,2
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d6b88:
    # Line 4282
    bne	$s0,$at,.L0d9d66e8
    # Line 4278
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4443
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$v1,0($sp)
    addiu	$t9,$t9,25568
    move	$a0,$v0
    addiu	$a1,$v0,76
    bal __glOdyim_GetTexImage
    lwc1	$f14,0($v1)
    # Line 4444
    li	$a5,2
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d6bb8:
    sd	$v0,32($sp)
    # Line 4369
    ld	$ra,0($sp)
    ld	$s0,32($sp)
    lwc1	$f0,0($ra)
    swc1	$f0,128($s0)
    # Line 4370
    lwc1	$f31,4($ra)
    swc1	$f31,132($s0)
    # Line 4371
    lwc1	$f29,8($ra)
    # Line 4369
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4371
    swc1	$f29,136($s0)
    # Line 4372
    lwc1	$f27,12($ra)
    # Line 4369
    addiu	$t9,$t9,-1376
    # Line 4372
    swc1	$f27,140($s0)
    # Line 4373
    lwc1	$f12,0($ra)
    bal __glOdysseyTextureDriverDestroy
    nop
    # Line 4374
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$ra,0($sp)
    addiu	$t9,$t9,-1376
    # Line 4373
    sw	$v0,220($s0)
    # Line 4374
    lwc1	$f12,4($ra)
    bal __glOdysseyTextureDriverDestroy
    nop
    # Line 4375
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$ra,0($sp)
    addiu	$t9,$t9,-1376
    # Line 4374
    sw	$v0,228($s0)
    # Line 4375
    lwc1	$f12,8($ra)
    bal __glOdysseyTextureDriverDestroy
    nop
    # Line 4376
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$ra,0($sp)
    addiu	$t9,$t9,-1376
    # Line 4375
    sw	$v0,236($s0)
    # Line 4376
    lwc1	$f12,12($ra)
    bal __glOdysseyTextureDriverDestroy
    nop
    # Line 4377
    lw	$at,160($s0)
    # Line 4378
    li	$a5,2
    # Line 4376
    sw	$v0,244($s0)
    # Line 4377
    lui	$a1,0x1
    or	$at,$a1,$at
    # Line 4378
    b	.L0d9d64e8
    # Line 4377
    sw	$at,160($s0)
.L0d9d6c68:
    # Line 4383
    lwc1	$f1,_lit_41700000
    c.lt.s $f1,$f4
    bc1f .L0d9d6c80
    # Line 4385
    li	$v1,3840
    b	.L0d9d6c98
    sw	$v1,200($v0)
.L0d9d6c80:
    # Line 4387
    lwc1	$f2,_lit_43800000
    mul.s	$f2,$f4,$f2
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    andi	$a0,$a0,0x3fff
    sw	$a0,200($v0)
.L0d9d6c98:
    # Line 4389
    lw	$a2,160($v0)
    # Line 4390
    li	$a5,2
    lui	$a1,0x1
    # Line 4389
    ori	$a2,$a2,0x4000
    # Line 4390
    b	.L0d9d64e8
    # Line 4389
    sw	$a2,160($v0)
.L0d9d6cb0:
    # Line 4439
    ld	$a3,0($sp)
    addiu	$t9,$t9,25568
    move	$a0,$v0
    addiu	$a1,$v0,72
    bal __glOdyim_GetTexImage
    lwc1	$f14,0($a3)
    # Line 4440
    li	$a5,2
    b	.L0d9d64e8
    lui	$a1,0x1
.L0d9d6cd4:
    # Line 4422
    ld	$s0,32($sp)
    ld	$at,0($sp)
    # Line 4423
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4422
    lwc1	$f3,0($at)
    # Line 4423
    addiu	$t9,$t9,-1440
    # Line 4422
    swc1	$f3,100($s0)
    # Line 4423
    bal __glOdysseyTextureDriverDestroy
    lwc1	$f12,0($at)
    # Line 4424
    lw	$ra,160($s0)
    # Line 4425
    li	$a5,2
    lui	$a1,0x1
    # Line 4423
    sw	$v0,192($s0)
    # Line 4424
    ori	$ra,$ra,0x4000
    # Line 4425
    b	.L0d9d64e8
    # Line 4424
    sw	$ra,160($s0)
.end __glOdyim_TexParameterfv

# Function: __glOdyim_TexParameterf
# Declared: Line 4459 (Source lines: 4462-4497)
# Address: 0x0d9d6d10 - 0x0d9d6f70 (Size: 608 bytes, Frame: 48)
.globl __glOdyim_TexParameterf
.ent __glOdyim_TexParameterf
__glOdyim_TexParameterf:
    # Line 4462
    addiu	$sp,$sp,-48
    # Line 4464
    li	$a3,0x813c
    # Line 4462
    lui	$at,0x12
    # Line 4464
    sltu	$v0,$a1,$a3
    # Line 4462
    swc1	$f14,32($sp)
    addiu	$at,$at,6272
    sd	$gp,0($sp)
    # Line 4464
    bnez	$v0,.L0d9d6d8c
    # Line 4462
    addu	$gp,$t9,$at
    # Line 4464
    sltu	$v0,$a3,$a1
    beqz	$v0,.L0d9d6e24
    sd	$ra,8($sp)
    li	$a3,0x8190
    sltu	$v1,$a1,$a3
    bnez	$v1,.L0d9d6e40
    sltu	$a2,$a3,$a1
    beqz	$a2,.L0d9d6e24
    li	$a3,0x8369
    sltu	$a4,$a1,$a3
    bnez	$a4,.L0d9d6ebc
    sltu	$a5,$a3,$a1
    beqz	$a5,.L0d9d6e24
    li	$a4,0x836a
    li	$a3,0x836b
    sltu	$a6,$a1,$a3
    bnez	$a6,.L0d9d6f60
    sltu	$a7,$a3,$a1
    beqz	$a7,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6d8c:
    # Line 4464
    li	$a3,0x8072
    sltu	$t0,$a1,$a3
    bnez	$t0,.L0d9d6dd8
    sd	$ra,8($sp)
    sltu	$t1,$a3,$a1
    beqz	$t1,.L0d9d6e24
    li	$a3,0x80bf
    sltu	$t2,$a1,$a3
    bnez	$t2,.L0d9d6e98
    sltu	$t3,$a3,$a1
    beqz	$t3,.L0d9d6e24
    li	$a3,0x813b
    sltu	$t8,$a1,$a3
    bnez	$t8,.L0d9d6f4c
    sltu	$t9,$a3,$a1
    beqz	$t9,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6dd8:
    # Line 4464
    sltiu	$a3,$a1,10242
    bnez	$a3,.L0d9d6e10
    sltiu	$ra,$a1,10243
    bnez	$ra,.L0d9d6e24
    li	$v0,10243
    li	$a3,0x8066
    sltu	$at,$a1,$a3
    bnez	$at,.L0d9d6f1c
    nop
    sltu	$v0,$a3,$a1
    beqz	$v0,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6e10:
    # Line 4464
    sltiu	$v1,$a1,10241
    bnez	$v1,.L0d9d6ee0
    li	$t9,10240
    beqz	$a3,.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6e24:
    # Line 4492
    # lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
.L0d9d6e28:
    bal __glOdyim_TexParameterfv
    addiu	$a2,$sp,32
    ld	$ra,8($sp)
.L0d9d6e34:
    # Line 4497
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d6e40:
    # Line 4464
    li	$a3,0x817a
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0d9d6e78
    sltu	$a4,$a3,$a1
    beqz	$a4,.L0d9d6e24
    li	$a2,0x818e
    li	$a3,0x818f
    sltu	$a5,$a1,$a3
    bnez	$a5,.L0d9d6f3c
    sltu	$a6,$a3,$a1
    beqz	$a6,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6e78:
    # Line 4464
    li	$a3,0x8179
    sltu	$a7,$a1,$a3
    bnez	$a7,.L0d9d6ef8
    sltu	$t0,$a3,$a1
    beqz	$t0,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6e98:
    # Line 4464
    li	$a3,0x809b
    sltu	$t1,$a1,$a3
    bnez	$t1,.L0d9d6f0c
    li	$at,0x809a
    sltu	$t2,$a3,$a1
    beqz	$t2,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6ebc:
    # Line 4464
    li	$a3,0x819b
    sltu	$t3,$a1,$a3
    li	$v1,0x819a
    bnez	$t3,.L0d9d6f2c
    sltu	$t8,$a3,$a1
    beqz	$t8,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6ee0:
    # Line 4464
    beq	$a1,$t9,.L0d9d6e24
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6ee8:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d6e34
    ld	$ra,8($sp)
.L0d9d6ef8:
    # Line 4464
    li	$ra,0x813d
    beq	$a1,$ra,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6f0c:
    # Line 4464
    beq	$a1,$at,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6f1c:
    # Line 4464
    beq	$a1,$v0,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6f2c:
    # Line 4464
    beq	$a1,$v1,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6f3c:
    # Line 4464
    beq	$a1,$a2,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6f4c:
    # Line 4464
    li	$a3,0x813a
    beq	$a1,$a3,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d6f60:
    # Line 4464
    beq	$a1,$a4,.L0d9d6e28
    # Line 4492
    nop	# was lw $t9, -30584($gp) # &__glOdyim_TexParameterfv
    b	.L0d9d6ee8
    # Line 4496
    nop	# was lw $t9, -26792($gp) # &__glSetError
.end __glOdyim_TexParameterf

# Function: __glOdyim_TexParameteriv
# Declared: Line 4503 (Source lines: 4506-4704)
# Address: 0x0d9d6f70 - 0x0d9d786c (Size: 2300 bytes, Frame: 48)
.globl __glOdyim_TexParameteriv
.ent __glOdyim_TexParameteriv
__glOdyim_TexParameteriv:
    # Line 4506
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    sd	$gp,24($sp)
    sd	$s0,16($sp)
    move	$v0,$a0
    # Line 4512
    lw	$at,4120($zero)
    li	$v1,1
    # Line 4506
    sd	$a2,0($sp)
    lui	$a2,0x12
    move	$s0,$a1
    # Line 4512
    lw	$a1,4112($zero)
    # Line 4506
    addiu	$a0,$a2,5664
    # Line 4512
    sd	$a1,8($sp)
    beq	$at,$v1,.L0d9d7238
    # Line 4506
    addu	$gp,$t9,$a0
    # Line 4517
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    ld	$a0,8($sp)
    bal __glOdysseyGetCurrentTexture
    move	$a1,$v0
    beqz	$v0,.L0d9d71e4
    # Line 4528
    li	$a1,0x813c
    sltu	$a3,$s0,$a1
    bnez	$a3,.L0d9d7058
    sltu	$a4,$a1,$s0
    bnez	$a4,.L0d9d7090
    ld	$a5,0($sp)
    lw	$a5,0($a5)
    bltz	$a5,.L0d9d759c
    sd	$v0,40($sp)
    # Line 4651
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4650
    ld	$s0,40($sp)
    # Line 4651
    addiu	$t9,$t9,24032
    # Line 4650
    li	$a6,1
    sw	$a6,1280($s0)
    # Line 4651
    move	$a0,$s0
    bal __glOdyim_GetTexImage
    # Line 4649
    sw	$a5,92($s0)
    # Line 4652
    lw	$ra,160($s0)
    # Line 4653
    li	$a6,2
    sw	$a6,16($s0)
    # Line 4654
    lui	$a1,0x1
    # Line 4652
    ori	$ra,$ra,0x200
    sw	$ra,160($s0)
.L0d9d701c:
    # Line 4703
    ld	$v0,8($sp)
    # Line 4704
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 4703
    addu	$v0,$a1,$v0
    lw	$at,26980($v0)
    # Line 4704
    ld	$s0,16($sp)
    # Line 4703
    ori	$at,$at,0x200
    sw	$at,26980($v0)
    # Line 4704
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4703
    sw	$a6,4120($zero)
.L0d9d7048:
    # Line 4704
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d7058:
    # Line 4528
    li	$a1,0x8072
    sltu	$v1,$s0,$a1
    bnez	$v1,.L0d9d70c8
    sltu	$a0,$a1,$s0
    beqz	$a0,.L0d9d73a0
    # Line 4539
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4528
    li	$a1,0x80bf
    sltu	$a2,$s0,$a1
    bnez	$a2,.L0d9d71f8
    sltu	$a3,$a1,$s0
    bnez	$a3,.L0d9d73c0
    li	$a6,2
    b	.L0d9d701c
    lui	$a1,0x1
.L0d9d7090:
    li	$a1,0x8190
    sltu	$a4,$s0,$a1
    bnez	$a4,.L0d9d711c
    sltu	$a5,$a1,$s0
    bnez	$a5,.L0d9d724c
    li	$a1,0x8369
    # Line 4680
    ld	$a6,0($sp)
    lw	$a6,0($a6)
    mtc1	$a6,$f0
    cvt.s.w	$f0,$f0
    # Line 4682
    lui	$a1,0x1
    li	$a6,2
    b	.L0d9d701c
    # Line 4680
    swc1	$f0,108($v0)
.L0d9d70c8:
    # Line 4528
    sltiu	$a7,$s0,10242
    bnez	$a7,.L0d9d7194
    sltiu	$t0,$s0,10243
    bnez	$t0,.L0d9d74e8
    li	$a1,0x8066
    sltu	$t1,$s0,$a1
    bnez	$t1,.L0d9d7430
    li	$ra,10243
    sltu	$t2,$a1,$s0
    bnez	$t2,.L0d9d71e8
    # Line 4524
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4564
    ld	$a5,0($sp)
    lw	$a5,0($a5)
    bltz	$a5,.L0d9d75a0
    # Line 4646
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4566
    mtc1	$a5,$f1
    cvt.s.w	$f1,$f1
    # Line 4567
    li	$a6,2
    lui	$a1,0x1
    b	.L0d9d701c
    # Line 4566
    swc1	$f1,60($v0)
.L0d9d711c:
    # Line 4528
    li	$a1,0x817a
    sltu	$a6,$s0,$a1
    bnez	$a6,.L0d9d72ac
    sltu	$a7,$a1,$s0
    beqz	$a7,.L0d9d772c
    li	$a1,0x818f
    sltu	$t0,$s0,$a1
    bnez	$t0,.L0d9d750c
    sltu	$t1,$a1,$s0
    bnez	$t1,.L0d9d71e4
    sd	$v0,40($sp)
    # Line 4674
    ld	$ra,0($sp)
    lw	$at,0($ra)
    mtc1	$at,$f13
    cvt.s.w	$f13,$f13
    ld	$s0,40($sp)
    swc1	$f13,104($s0)
    # Line 4675
    lw	$ra,0($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    mtc1	$ra,$f12
    addiu	$t9,$t9,-1440
    bal __glOdysseyTextureDriverDestroy
    cvt.s.w	$f12,$f12
    # Line 4676
    lw	$v1,160($s0)
    # Line 4677
    li	$a6,2
    lui	$a1,0x1
    # Line 4675
    sw	$v0,196($s0)
    # Line 4676
    ori	$v0,$v1,0x4000
    # Line 4677
    b	.L0d9d701c
    # Line 4676
    sw	$v0,160($s0)
.L0d9d7194:
    # Line 4528
    sltiu	$a0,$s0,10240
    bnez	$a0,.L0d9d71d8
    sltiu	$a1,$s0,10241
    bnez	$a1,.L0d9d76d4
    # Line 4547
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4528
    li	$a2,10241
    bne	$s0,$a2,.L0d9d71e8
    # Line 4524
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4543
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a1,0($sp)
    addiu	$t9,$t9,24128
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    lw	$a1,0($a1)
    # Line 4544
    li	$a6,2
    b	.L0d9d701c
    lui	$a1,0x1
.L0d9d71d8:
    # Line 4528
    li	$ra,4100
    beq	$s0,$ra,.L0d9d75b0
    sd	$v0,40($sp)
.L0d9d71e4:
    # Line 4524
    # lw $t9, -26792($gp) # &__glSetError
.L0d9d71e8:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d7048
    ld	$ra,32($sp)
.L0d9d71f8:
    # Line 4528
    li	$a1,0x809b
    sltu	$at,$s0,$a1
    bnez	$at,.L0d9d7408
    li	$at,0x809a
    sltu	$v1,$a1,$s0
    bnez	$v1,.L0d9d71e8
    # Line 4524
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4574
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a1,0($sp)
    addiu	$t9,$t9,25456
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    lw	$a1,0($a1)
    # Line 4575
    li	$a6,2
    b	.L0d9d701c
    lui	$a1,0x1
.L0d9d7238:
    # Line 4512
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d7048
    ld	$ra,32($sp)
.L0d9d724c:
    # Line 4528
    sltu	$ra,$s0,$a1
    bnez	$ra,.L0d9d745c
    sltu	$at,$a1,$s0
    beqz	$at,.L0d9d7840
    # Line 4685
    ld	$ra,0($sp)
    # Line 4528
    li	$a1,0x836b
    sltu	$v1,$s0,$a1
    bnez	$v1,.L0d9d76f4
    li	$ra,0x836a
    sltu	$a0,$a1,$s0
    bnez	$a0,.L0d9d71e8
    # Line 4524
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4695
    ld	$ra,0($sp)
    lw	$ra,0($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    mtc1	$ra,$f14
    addiu	$t9,$t9,25568
    move	$a0,$v0
    addiu	$a1,$v0,80
    bal __glOdyim_GetTexImage
    cvt.s.w	$f14,$f14
    # Line 4697
    li	$a6,2
    b	.L0d9d701c
    lui	$a1,0x1
.L0d9d72ac:
    # Line 4528
    li	$a1,0x8179
    sltu	$at,$s0,$a1
    bnez	$at,.L0d9d749c
    sltu	$v1,$a1,$s0
    bnez	$v1,.L0d9d71e4
    sd	$v0,40($sp)
    # Line 4603
    ld	$ra,0($sp)
    lw	$a0,0($ra)
    mtc1	$a0,$f16
    cvt.s.w	$f16,$f16
    ld	$s0,40($sp)
    swc1	$f16,112($s0)
    # Line 4604
    lw	$v1,4($ra)
    mtc1	$v1,$f15
    cvt.s.w	$f15,$f15
    swc1	$f15,116($s0)
    # Line 4605
    lw	$v0,8($ra)
    mtc1	$v0,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,120($s0)
    # Line 4606
    lw	$at,12($ra)
    mtc1	$at,$f13
    cvt.s.w	$f13,$f13
    swc1	$f13,124($s0)
    # Line 4607
    lw	$ra,0($ra)
    # Line 4603
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4607
    mtc1	$ra,$f12
    # Line 4603
    addiu	$t9,$t9,-1376
    # Line 4607
    bal __glOdysseyTextureDriverDestroy
    cvt.s.w	$f12,$f12
    # Line 4608
    ld	$ra,0($sp)
    # Line 4607
    sw	$v0,224($s0)
    # Line 4608
    lw	$ra,4($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    mtc1	$ra,$f12
    addiu	$t9,$t9,-1376
    bal __glOdysseyTextureDriverDestroy
    cvt.s.w	$f12,$f12
    # Line 4609
    ld	$ra,0($sp)
    # Line 4608
    sw	$v0,232($s0)
    # Line 4609
    lw	$ra,8($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    mtc1	$ra,$f12
    addiu	$t9,$t9,-1376
    bal __glOdysseyTextureDriverDestroy
    cvt.s.w	$f12,$f12
    # Line 4610
    ld	$ra,0($sp)
    # Line 4609
    sw	$v0,240($s0)
    # Line 4610
    lw	$ra,12($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    mtc1	$ra,$f12
    addiu	$t9,$t9,-1376
    bal __glOdysseyTextureDriverDestroy
    cvt.s.w	$f12,$f12
    # Line 4611
    lw	$at,160($s0)
    # Line 4612
    li	$a6,2
    # Line 4610
    sw	$v0,248($s0)
    # Line 4611
    lui	$a1,0x1
    or	$at,$a1,$at
    # Line 4612
    b	.L0d9d701c
    # Line 4611
    sw	$at,160($s0)
.L0d9d73a0:
    # Line 4539
    ld	$a1,0($sp)
    addiu	$t9,$t9,23840
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    lw	$a1,0($a1)
    # Line 4540
    li	$a6,2
    b	.L0d9d701c
    lui	$a1,0x1
.L0d9d73c0:
    # Line 4528
    li	$a1,0x813b
    sltu	$ra,$s0,$a1
    bnez	$ra,.L0d9d7564
    li	$a0,0x813a
    sltu	$at,$a1,$s0
    bnez	$at,.L0d9d71e4
    # Line 4639
    ld	$ra,0($sp)
    lw	$ra,0($ra)
    mtc1	$ra,$f13
    # Line 4640
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4639
    cvt.s.w	$f13,$f13
    # Line 4640
    addiu	$t9,$t9,24032
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    # Line 4639
    swc1	$f13,88($v0)
    # Line 4641
    li	$a6,2
    b	.L0d9d701c
    lui	$a1,0x1
.L0d9d7408:
    # Line 4528
    bne	$s0,$at,.L0d9d71e4
    # Line 4570
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a1,0($sp)
    addiu	$t9,$t9,25360
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    lw	$a1,0($a1)
    # Line 4571
    li	$a6,2
    b	.L0d9d701c
    lui	$a1,0x1
.L0d9d7430:
    # Line 4528
    bne	$s0,$ra,.L0d9d71e8
    # Line 4524
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4535
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a1,0($sp)
    addiu	$t9,$t9,23664
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    lw	$a1,0($a1)
    # Line 4536
    li	$a6,2
    b	.L0d9d701c
    lui	$a1,0x1
.L0d9d745c:
    # Line 4528
    li	$v0,0x819b
    sltu	$ra,$s0,$v0
    bnez	$ra,.L0d9d76a0
    sltu	$at,$v0,$s0
    bnez	$at,.L0d9d71e4
    # Line 4589
    ld	$a5,0($sp)
    lw	$a5,0($a5)
    li	$v0,0x819c
    beq	$a5,$v0,.L0d9d7494
    li	$a6,2
    li	$a6,0x819d
    bne	$a5,$a6,.L0d9d71e8
    # Line 4524
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4589
    li	$a6,2
.L0d9d7494:
    b	.L0d9d701c
    lui	$a1,0x1
.L0d9d749c:
    # Line 4528
    li	$a7,0x813d
    bne	$s0,$a7,.L0d9d71e8
    # Line 4524
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4657
    ld	$a5,0($sp)
    lw	$a5,0($a5)
    bltz	$a5,.L0d9d759c
    sd	$v0,40($sp)
    # Line 4663
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4661
    ld	$s0,40($sp)
    # Line 4663
    addiu	$t9,$t9,24032
    # Line 4661
    li	$a6,1
    sw	$a6,1280($s0)
    # Line 4663
    move	$a0,$s0
    bal __glOdyim_GetTexImage
    # Line 4660
    sw	$a5,96($s0)
    # Line 4665
    lui	$a1,0x1
    # Line 4664
    li	$a6,2
    # Line 4665
    b	.L0d9d701c
    # Line 4664
    sw	$a6,16($s0)
.L0d9d74e8:
    # Line 4531
    # lw $t9, -32712($gp) # &sub_0d9d0000
    ld	$a1,0($sp)
    addiu	$t9,$t9,23488
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    lw	$a1,0($a1)
    # Line 4532
    li	$a6,2
    b	.L0d9d701c
    lui	$a1,0x1
.L0d9d750c:
    # Line 4528
    li	$ra,0x818e
    bne	$s0,$ra,.L0d9d71e4
    sd	$v0,40($sp)
    # Line 4668
    ld	$ra,0($sp)
    lw	$at,0($ra)
    mtc1	$at,$f13
    cvt.s.w	$f13,$f13
    ld	$s0,40($sp)
    swc1	$f13,100($s0)
    # Line 4669
    lw	$ra,0($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    mtc1	$ra,$f12
    addiu	$t9,$t9,-1440
    bal __glOdysseyTextureDriverDestroy
    cvt.s.w	$f12,$f12
    # Line 4670
    lw	$v1,160($s0)
    # Line 4671
    li	$a6,2
    lui	$a1,0x1
    # Line 4669
    sw	$v0,192($s0)
    # Line 4670
    ori	$v0,$v1,0x4000
    # Line 4671
    b	.L0d9d701c
    # Line 4670
    sw	$v0,160($s0)
.L0d9d7564:
    # Line 4528
    bne	$s0,$a0,.L0d9d71e8
    # Line 4524
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4627
    ld	$a1,0($sp)
    lw	$a2,0($a1)
    mtc1	$a2,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,84($v0)
    lw	$a1,0($a1)
    slti	$a2,$a1,-15
    beqz	$a2,.L0d9d780c
    # Line 4629
    slti	$v1,$a1,16
    li	$a3,12544
    b	.L0d9d7828
    sw	$a3,200($v0)
.L0d9d759c:
    # Line 4646
    # lw $t9, -26792($gp) # &__glSetError
.L0d9d75a0:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9d7048
    ld	$ra,32($sp)
.L0d9d75b0:
    # Line 4551
    # lw $t9, -26156($gp) # &__glClampColori
    ld	$s0,40($sp)
    ld	$a0,8($sp)
    ld	$a2,0($sp)
    jal	__glClampColori
    addiu	$a1,$s0,44
    # Line 4552
    ld	$a5,0($sp)
    lw	$t8,0($a5)
    srl	$t9,$t8,0x1f
    addiu	$t9,$t9,-1
    lui	$a7,0xff00
    and	$t8,$t8,$t9
    lui	$t0,0xff
    srl	$t8,$t8,0x13
    lw	$t3,184($s0)
    ori	$t0,$t0,0xf000
    andi	$t8,$t8,0xfff
    ori	$a7,$a7,0xfff
    sll	$t8,$t8,0xc
    and	$t3,$a7,$t3
    and	$t8,$t0,$t8
    or	$t3,$t3,$t8
    sw	$t3,184($s0)
    # Line 4554
    lw	$t8,4($a5)
    srl	$t9,$t8,0x1f
    addiu	$t9,$t9,-1
    and	$t8,$t8,$t9
    li	$a4,-4096
    srl	$t8,$t8,0x13
    and	$t3,$a4,$t3
    andi	$t8,$t8,0xfff
    or	$t3,$t3,$t8
    sw	$t3,184($s0)
    # Line 4556
    lw	$t1,8($a5)
    srl	$t2,$t1,0x1f
    addiu	$t2,$t2,-1
    and	$t1,$t1,$t2
    srl	$t1,$t1,0x13
    lw	$t2,188($s0)
    andi	$t1,$t1,0xfff
    sll	$t1,$t1,0xc
    and	$a7,$a7,$t2
    and	$t0,$t0,$t1
    or	$a7,$a7,$t0
    sw	$a7,188($s0)
    # Line 4558
    lw	$a5,12($a5)
    srl	$t1,$a5,0x1f
    # Line 4560
    li	$a6,2
    # Line 4558
    addiu	$t1,$t1,-1
    # Line 4560
    lui	$a1,0x1
    lw	$t0,160($s0)
    # Line 4558
    and	$a5,$a5,$t1
    and	$a4,$a4,$a7
    srl	$a5,$a5,0x13
    # Line 4560
    ori	$t0,$t0,0x200
    sw	$t0,160($s0)
    # Line 4558
    andi	$a5,$a5,0xfff
    or	$a4,$a4,$a5
    b	.L0d9d701c
    sw	$a4,188($s0)
.L0d9d76a0:
    # Line 4528
    li	$ra,0x819a
    bne	$s0,$ra,.L0d9d71e8
    # Line 4524
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4578
    ld	$a5,0($sp)
    lw	$a5,0($a5)
    beqz	$a5,.L0d9d76cc
    li	$a6,2
    li	$a6,1
    bne	$a5,$a6,.L0d9d71e8
    # Line 4524
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4578
    li	$a6,2
.L0d9d76cc:
    b	.L0d9d701c
    lui	$a1,0x1
.L0d9d76d4:
    # Line 4547
    ld	$a1,0($sp)
    addiu	$t9,$t9,24992
    move	$a0,$v0
    bal __glOdyim_GetTexImage
    lw	$a1,0($a1)
    # Line 4548
    li	$a6,2
    b	.L0d9d701c
    lui	$a1,0x1
.L0d9d76f4:
    # Line 4528
    bne	$s0,$ra,.L0d9d71e8
    # Line 4524
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 4690
    ld	$ra,0($sp)
    lw	$ra,0($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    mtc1	$ra,$f14
    addiu	$t9,$t9,25568
    move	$a0,$v0
    addiu	$a1,$v0,76
    bal __glOdyim_GetTexImage
    cvt.s.w	$f14,$f14
    # Line 4692
    li	$a6,2
    b	.L0d9d701c
    lui	$a1,0x1
.L0d9d772c:
    # Line 4615
    ld	$ra,0($sp)
    lw	$a0,0($ra)
    mtc1	$a0,$f16
    sd	$v0,40($sp)
    cvt.s.w	$f16,$f16
    ld	$s0,40($sp)
    swc1	$f16,128($s0)
    # Line 4616
    lw	$v1,4($ra)
    mtc1	$v1,$f15
    cvt.s.w	$f15,$f15
    swc1	$f15,132($s0)
    # Line 4617
    lw	$v0,8($ra)
    mtc1	$v0,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,136($s0)
    # Line 4618
    lw	$at,12($ra)
    mtc1	$at,$f13
    cvt.s.w	$f13,$f13
    swc1	$f13,140($s0)
    # Line 4619
    lw	$ra,0($ra)
    # Line 4615
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4619
    mtc1	$ra,$f12
    # Line 4615
    addiu	$t9,$t9,-1376
    # Line 4619
    bal __glOdysseyTextureDriverDestroy
    cvt.s.w	$f12,$f12
    # Line 4620
    ld	$ra,0($sp)
    # Line 4619
    sw	$v0,220($s0)
    # Line 4620
    lw	$ra,4($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    mtc1	$ra,$f12
    addiu	$t9,$t9,-1376
    bal __glOdysseyTextureDriverDestroy
    cvt.s.w	$f12,$f12
    # Line 4621
    ld	$ra,0($sp)
    # Line 4620
    sw	$v0,228($s0)
    # Line 4621
    lw	$ra,8($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    mtc1	$ra,$f12
    addiu	$t9,$t9,-1376
    bal __glOdysseyTextureDriverDestroy
    cvt.s.w	$f12,$f12
    # Line 4622
    ld	$ra,0($sp)
    # Line 4621
    sw	$v0,236($s0)
    # Line 4622
    lw	$ra,12($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    mtc1	$ra,$f12
    addiu	$t9,$t9,-1376
    bal __glOdysseyTextureDriverDestroy
    cvt.s.w	$f12,$f12
    # Line 4623
    lw	$at,160($s0)
    # Line 4624
    li	$a6,2
    # Line 4622
    sw	$v0,244($s0)
    # Line 4623
    lui	$a1,0x1
    or	$at,$a1,$at
    # Line 4624
    b	.L0d9d701c
    # Line 4623
    sw	$at,160($s0)
.L0d9d780c:
    # Line 4629
    bnez	$v1,.L0d9d781c
    # Line 4631
    li	$a0,3840
    b	.L0d9d7828
    sw	$a0,200($v0)
.L0d9d781c:
    # Line 4633
    sll	$a2,$a1,0x8
    andi	$a2,$a2,0x3fff
    sw	$a2,200($v0)
.L0d9d7828:
    # Line 4635
    lw	$a3,160($v0)
    # Line 4636
    li	$a6,2
    lui	$a1,0x1
    # Line 4635
    ori	$a3,$a3,0x4000
    # Line 4636
    b	.L0d9d701c
    # Line 4635
    sw	$a3,160($v0)
.L0d9d7840:
    # Line 4685
    lw	$ra,0($ra)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    mtc1	$ra,$f14
    addiu	$t9,$t9,25568
    move	$a0,$v0
    addiu	$a1,$v0,72
    bal __glOdyim_GetTexImage
    cvt.s.w	$f14,$f14
    # Line 4687
    li	$a6,2
    b	.L0d9d701c
    lui	$a1,0x1
.end __glOdyim_TexParameteriv

# Function: __glOdyim_TexParameteri
# Declared: Line 4708 (Source lines: 4711-4746)
# Address: 0x0d9d7870 - 0x0d9d7ad0 (Size: 608 bytes, Frame: 48)
.globl __glOdyim_TexParameteri
.ent __glOdyim_TexParameteri
__glOdyim_TexParameteri:
    # Line 4711
    addiu	$sp,$sp,-48
    # Line 4713
    li	$a4,0x813c
    # Line 4711
    lui	$at,0x12
    # Line 4713
    sltu	$v0,$a1,$a4
    # Line 4711
    sw	$a2,36($sp)
    addiu	$at,$at,3360
    sd	$gp,0($sp)
    # Line 4713
    bnez	$v0,.L0d9d78ec
    # Line 4711
    addu	$gp,$t9,$at
    # Line 4713
    sltu	$v0,$a4,$a1
    beqz	$v0,.L0d9d7984
    sd	$ra,8($sp)
    li	$a3,0x8190
    sltu	$v1,$a1,$a3
    bnez	$v1,.L0d9d79a0
    sltu	$a2,$a3,$a1
    beqz	$a2,.L0d9d7984
    li	$a3,0x8369
    sltu	$a4,$a1,$a3
    bnez	$a4,.L0d9d7a1c
    sltu	$a5,$a3,$a1
    beqz	$a5,.L0d9d7984
    li	$a4,0x836a
    li	$a3,0x836b
    sltu	$a6,$a1,$a3
    bnez	$a6,.L0d9d7ac0
    sltu	$a7,$a3,$a1
    beqz	$a7,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d78ec:
    # Line 4713
    li	$a3,0x8072
    sltu	$t0,$a1,$a3
    bnez	$t0,.L0d9d7938
    sd	$ra,8($sp)
    sltu	$t1,$a3,$a1
    beqz	$t1,.L0d9d7984
    li	$a3,0x80bf
    sltu	$t2,$a1,$a3
    bnez	$t2,.L0d9d79f8
    sltu	$t3,$a3,$a1
    beqz	$t3,.L0d9d7984
    li	$a3,0x813b
    sltu	$t8,$a1,$a3
    bnez	$t8,.L0d9d7aac
    sltu	$t9,$a3,$a1
    beqz	$t9,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d7938:
    # Line 4713
    sltiu	$a3,$a1,10242
    bnez	$a3,.L0d9d7974
    sltiu	$v1,$a1,10241
    sltiu	$ra,$a1,10243
    bnez	$ra,.L0d9d7984
    li	$v0,10243
    li	$a3,0x8066
    sltu	$at,$a1,$a3
    bnez	$at,.L0d9d7a7c
    nop
    sltu	$v0,$a3,$a1
    beqz	$v0,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d7974:
    # Line 4713
    bnez	$v1,.L0d9d7a40
    li	$t9,10240
    beqz	$a3,.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d7984:
    # Line 4741
    # lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
.L0d9d7988:
    bal __glOdyim_TexParameteriv
    addiu	$a2,$sp,36
    ld	$ra,8($sp)
.L0d9d7994:
    # Line 4746
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d79a0:
    # Line 4713
    li	$a3,0x817a
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0d9d79d8
    sltu	$a4,$a3,$a1
    beqz	$a4,.L0d9d7984
    li	$a2,0x818e
    li	$a3,0x818f
    sltu	$a5,$a1,$a3
    bnez	$a5,.L0d9d7a9c
    sltu	$a6,$a3,$a1
    beqz	$a6,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d79d8:
    # Line 4713
    li	$a3,0x8179
    sltu	$a7,$a1,$a3
    bnez	$a7,.L0d9d7a58
    sltu	$t0,$a3,$a1
    beqz	$t0,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d79f8:
    # Line 4713
    li	$a3,0x809b
    sltu	$t1,$a1,$a3
    bnez	$t1,.L0d9d7a6c
    li	$at,0x809a
    sltu	$t2,$a3,$a1
    beqz	$t2,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d7a1c:
    # Line 4713
    li	$a3,0x819b
    sltu	$t3,$a1,$a3
    li	$v1,0x819a
    bnez	$t3,.L0d9d7a8c
    sltu	$t8,$a3,$a1
    beqz	$t8,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d7a40:
    # Line 4713
    beq	$a1,$t9,.L0d9d7984
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d7a48:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d7994
    ld	$ra,8($sp)
.L0d9d7a58:
    # Line 4713
    li	$ra,0x813d
    beq	$a1,$ra,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d7a6c:
    # Line 4713
    beq	$a1,$at,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d7a7c:
    # Line 4713
    beq	$a1,$v0,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d7a8c:
    # Line 4713
    beq	$a1,$v1,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d7a9c:
    # Line 4713
    beq	$a1,$a2,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d7aac:
    # Line 4713
    li	$a3,0x813a
    beq	$a1,$a3,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.L0d9d7ac0:
    # Line 4713
    beq	$a1,$a4,.L0d9d7988
    # Line 4741
    nop	# was lw $t9, -30576($gp) # &__glOdyim_TexParameteriv
    b	.L0d9d7a48
    # Line 4745
    nop	# was lw $t9, -26792($gp) # &__glSetError
.end __glOdyim_TexParameteri

# Function: __glOdysseyTextureSetOp
# Declared: Line 4755 (Source lines: 4757-4825)
# Address: 0x0d9d7ad0 - 0x0d9d7d38 (Size: 616 bytes, Frame: 16)
.ent __glOdysseyTextureSetOp
__glOdysseyTextureSetOp:
    # Line 4760
    li	$a4,260
    li	$at,7681
    # Line 4789
    sll	$t8,$a1,0x3
    # Line 4757
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    # Line 4760
    beq	$a2,$at,.L0d9d7b8c
    # Line 4757
    move	$s0,$a0
    # Line 4760
    li	$v0,0x8062
    beq	$a2,$v0,.L0d9d7b8c
    # Line 4789
    sll	$t1,$a1,0x3
    # Line 4780
    li	$t0,-8
    # Line 4760
    li	$v1,8448
    # Line 4789
    addu	$t1,$t1,$a1
    lui	$a5,0xfffb
    # Line 4760
    beq	$a2,$v1,.L0d9d7cf0
    # Line 4789
    ori	$a5,$a5,0x1400
    # Line 4760
    li	$a0,8449
    beq	$a2,$a0,.L0d9d7d08
    # Line 4789
    sll	$t1,$t1,0x2
    # Line 4760
    li	$a3,3042
    beq	$a2,$a3,.L0d9d7d20
    nop
    beq	$a2,$a4,.L0d9d7b40
    # Line 4784
    nop	# was lw $t9, -26792($gp) # &__glSetError
    li	$a0,1280
    # Line 4785
    ld	$s0,0($sp)
    jr	$t9
    addiu	$sp,$sp,16
.L0d9d7b40:
    # Line 4780
    lw	$a6,31920($s0)
    # Line 4789
    lw	$a7,2484($s0)
    # Line 4780
    and	$a6,$a6,$t0
    # Line 4789
    addu	$a7,$a7,$t1
    # Line 4780
    ori	$a6,$a6,0x5
    sw	$a6,31920($s0)
    # Line 4789
    addu	$a5,$a5,$a7
    sw	$a2,0($a5)
.L0d9d7b60:
    # Line 4805
    lw	$t0,31928($s0)
    # Line 4803
    lui	$a6,0xff
    lw	$a7,31924($s0)
    ori	$a6,$a6,0xf000
    # Line 4805
    or	$t0,$a6,$t0
    # Line 4803
    or	$a6,$a6,$a7
    # Line 4806
    ori	$t0,$t0,0xfff
    sw	$t0,31928($s0)
    # Line 4804
    ori	$a6,$a6,0xfff
    # Line 4806
    b	.L0d9d7cb0
    # Line 4804
    sw	$a6,31924($s0)
.L0d9d7b8c:
    # Line 4764
    lw	$a7,31920($s0)
    li	$t0,-8
    and	$a7,$a7,$t0
    ori	$a7,$a7,0x1
    sw	$a7,31920($s0)
.L0d9d7ba0:
    # Line 4789
    addu	$t8,$t8,$a1
    li	$t2,260
    lw	$t3,2484($s0)
    sll	$t8,$t8,0x2
    lui	$t1,0xfffb
    ori	$t1,$t1,0x1400
    addu	$t3,$t3,$t8
    addu	$t1,$t1,$t3
    beq	$a2,$t2,.L0d9d7b60
    sw	$a2,0($t1)
    # Line 4806
    # lw $t9, -32712($gp) # &sub_0d9d0000
    sd	$ra,8($sp)
    # Line 4808
    lw	$ra,2484($s0)
    # Line 4806
    addiu	$t9,$t9,-1504
    # Line 4808
    lwc1	$f12,4($ra)
    jal	sub_0d9d0000
    nop
    sll	$a0,$v0,0xc
    lw	$v1,31924($s0)
    lui	$a1,0xff00
    lui	$at,0xff
    ori	$v0,$a1,0xfff
    # Line 4810
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4808
    ori	$at,$at,0xf000
    and	$v0,$v0,$v1
    # Line 4810
    lw	$ra,2484($s0)
    # Line 4808
    and	$at,$at,$a0
    # Line 4810
    addiu	$t9,$t9,-1504
    # Line 4808
    or	$at,$at,$v0
    sw	$at,31924($s0)
    # Line 4810
    lwc1	$f12,8($ra)
    jal	sub_0d9d0000
    nop
    lw	$a0,31924($s0)
    # Line 4812
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4810
    andi	$at,$v0,0xfff
    li	$v1,-4096
    # Line 4812
    lw	$ra,2484($s0)
    # Line 4810
    and	$v0,$v1,$a0
    # Line 4812
    addiu	$t9,$t9,-1504
    # Line 4810
    or	$at,$at,$v0
    sw	$at,31924($s0)
    # Line 4812
    lwc1	$f12,12($ra)
    jal	sub_0d9d0000
    nop
    lui	$at,0xff
    lw	$v1,31928($s0)
    sll	$v0,$v0,0xc
    ori	$at,$at,0xf000
    # Line 4814
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4812
    and	$at,$at,$v0
    lui	$v0,0xff00
    ori	$v0,$v0,0xfff
    # Line 4814
    lw	$ra,2484($s0)
    addiu	$t9,$t9,-1504
    # Line 4812
    and	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,31928($s0)
    # Line 4814
    lwc1	$f12,16($ra)
    jal	sub_0d9d0000
    nop
    lw	$a0,31928($s0)
    li	$v1,-4096
    ld	$ra,8($sp)
    andi	$v0,$v0,0xfff
    and	$v1,$v1,$a0
    or	$v0,$v0,$v1
    sw	$v0,31928($s0)
.L0d9d7cb0:
    # Line 4820
    lui	$a3,0x1
    addu	$a3,$s0,$a3
    lw	$a6,25604($a3)
    li	$a1,2
    sw	$a1,16($a6)
    # Line 4821
    lw	$a5,25608($a3)
    sw	$a1,16($a5)
    # Line 4822
    lw	$a4,25612($a3)
    sw	$a1,16($a4)
    # Line 4824
    lw	$a2,26976($a3)
    # Line 4825
    ld	$s0,0($sp)
    # Line 4824
    ori	$a2,$a2,0x100
    sw	$a2,26976($a3)
    # Line 4825
    addiu	$sp,$sp,16
    jr	$ra
    # Line 4824
    sw	$a1,4120($zero)
.L0d9d7cf0:
    # Line 4768
    lw	$a4,31920($a0)
    li	$a5,-8
    and	$a4,$a4,$a5
    ori	$a4,$a4,0x2
    # Line 4769
    b	.L0d9d7ba0
    # Line 4768
    sw	$a4,31920($a0)
.L0d9d7d08:
    # Line 4772
    lw	$a6,31920($s0)
    li	$a7,-8
    and	$a6,$a6,$a7
    ori	$a6,$a6,0x3
    # Line 4773
    b	.L0d9d7ba0
    # Line 4772
    sw	$a6,31920($s0)
.L0d9d7d20:
    # Line 4776
    lw	$t0,31920($s0)
    li	$t1,-8
    and	$t0,$t0,$t1
    ori	$t0,$t0,0x4
    # Line 4777
    b	.L0d9d7ba0
    # Line 4776
    sw	$t0,31920($s0)
.end __glOdysseyTextureSetOp

# Function: __glOdyim_TexEnvfv
# Declared: Line 4829 (Source lines: 4832-4891)
# Address: 0x0d9d7d40 - 0x0d9d7fc0 (Size: 640 bytes, Frame: 48)
.globl __glOdyim_TexEnvfv
.ent __glOdyim_TexEnvfv
__glOdyim_TexEnvfv:
    # Line 4832
    move	$a6,$a2
    addiu	$sp,$sp,-48
    # Line 4838
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 4832
    lui	$v1,0x12
    move	$a4,$a0
    sd	$ra,32($sp)
    addiu	$v1,$v1,2128
    sd	$gp,24($sp)
    # Line 4838
    beq	$at,$v0,.L0d9d7fac
    # Line 4832
    addu	$gp,$t9,$v1
    # Line 4838
    li	$a0,8960
    beq	$a4,$a0,.L0d9d7d90
    # Line 4848
    li	$a2,8704
    # Line 4844
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d7db0
    ld	$ra,32($sp)
.L0d9d7d90:
    # Line 4848
    beq	$a1,$a2,.L0d9d7f74
    sd	$a5,0($sp)
    li	$a3,8705
    beq	$a1,$a3,.L0d9d7dbc
    # Line 4885
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0d9d7db0:
    # Line 4891
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d7dbc:
    # Line 4856
    ld	$a0,0($sp)
    # Line 4857
    # lw $t9, -26168($gp) # &__glClampColorf
    # Line 4856
    sll	$a5,$a4,0x3
    # Line 4857
    move	$a2,$a6
    # Line 4856
    addu	$a4,$a5,$a4
    lw	$a1,2484($a0)
    lui	$a3,0xfffb
    sll	$a4,$a4,0x2
    ori	$a3,$a3,0x1404
    sd	$a4,8($sp)
    addu	$a1,$a1,$a4
    addu	$a1,$a1,$a3
    # Line 4857
    jal	__glClampColorf
    # Line 4856
    sd	$a1,16($sp)
    # Line 4857
    ld	$a0,0($sp)
    ld	$a5,8($sp)
    lw	$a4,2484($a0)
    lui	$a3,0xfffb
    ori	$a3,$a3,0x1400
    addu	$a4,$a4,$a5
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
    li	$a4,260
    lui	$a2,0xff
    bne	$a3,$a4,.L0d9d7e48
    ori	$a2,$a2,0xf000
    # Line 4872
    lw	$a5,31928($a0)
    # Line 4870
    lw	$a4,31924($a0)
    # Line 4872
    or	$a5,$a2,$a5
    # Line 4870
    or	$a4,$a2,$a4
    # Line 4873
    ori	$a5,$a5,0xfff
    sw	$a5,31928($a0)
    # Line 4871
    ori	$a4,$a4,0xfff
    # Line 4873
    b	.L0d9d7f38
    # Line 4871
    sw	$a4,31924($a0)
.L0d9d7e48:
    # Line 4873
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4875
    ld	$ra,16($sp)
    # Line 4873
    addiu	$t9,$t9,-1504
    # Line 4875
    lwc1	$f12,0($ra)
    jal	sub_0d9d0000
    nop
    ld	$v1,0($sp)
    sll	$a1,$v0,0xc
    lui	$at,0xff
    # Line 4876
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4875
    lui	$a2,0xff00
    ori	$at,$at,0xf000
    lw	$a0,31924($v1)
    ori	$v0,$a2,0xfff
    and	$at,$at,$a1
    # Line 4876
    ld	$ra,16($sp)
    addiu	$t9,$t9,-1504
    # Line 4875
    and	$v0,$v0,$a0
    or	$at,$at,$v0
    sw	$at,31924($v1)
    # Line 4876
    lwc1	$f12,4($ra)
    jal	sub_0d9d0000
    nop
    ld	$v1,0($sp)
    # Line 4877
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4876
    lw	$a1,31924($v1)
    andi	$at,$v0,0xfff
    li	$a0,-4096
    # Line 4877
    ld	$ra,16($sp)
    addiu	$t9,$t9,-1504
    # Line 4876
    and	$v0,$a0,$a1
    or	$at,$at,$v0
    sw	$at,31924($v1)
    # Line 4877
    lwc1	$f12,8($ra)
    jal	sub_0d9d0000
    nop
    ld	$v1,0($sp)
    lui	$at,0xff
    # Line 4878
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4877
    sll	$v0,$v0,0xc
    ori	$at,$at,0xf000
    lw	$a0,31928($v1)
    and	$at,$at,$v0
    lui	$v0,0xff00
    ori	$v0,$v0,0xfff
    # Line 4878
    ld	$ra,16($sp)
    addiu	$t9,$t9,-1504
    # Line 4877
    and	$v0,$v0,$a0
    or	$at,$at,$v0
    sw	$at,31928($v1)
    # Line 4878
    lwc1	$f12,12($ra)
    jal	sub_0d9d0000
    nop
    ld	$a0,0($sp)
    lw	$a1,31928($a0)
    li	$v1,-4096
    andi	$v0,$v0,0xfff
    and	$v1,$v1,$a1
    or	$v0,$v0,$v1
    sw	$v0,31928($a0)
.L0d9d7f38:
    # Line 4880
    lui	$a1,0x1
    addu	$a1,$a0,$a1
    lw	$a2,26976($a1)
    ori	$a2,$a2,0x100
    sw	$a2,26976($a1)
    li	$a2,2
    sw	$a2,4120($zero)
.L0d9d7f54:
    # Line 4890
    lw	$a3,26980($a1)
    ld	$ra,32($sp)
    # Line 4891
    ld	$gp,24($sp)
    # Line 4890
    ori	$a3,$a3,0x200
    sw	$a3,26980($a1)
    # Line 4891
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4890
    sw	$a2,4120($zero)
.L0d9d7f74:
    # Line 4851
    lwc1	$f0,0($a6)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    trunc.l.s	$f0,$f0
    addiu	$t9,$t9,31440
    dmfc1	$a2,$f0
    ld	$a0,0($sp)
    move	$a1,$a4
    bal __glOdyim_TexParameteri
    sll	$a2,$a2,0x0
    ld	$a1,0($sp)
    li	$a2,2
    lui	$a3,0x1
    b	.L0d9d7f54
    addu	$a1,$a1,$a3
.L0d9d7fac:
    # Line 4838
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d7db0
    ld	$ra,32($sp)
.end __glOdyim_TexEnvfv

# Function: __glOdyim_TexEnvf
# Declared: Line 4895 (Source lines: 4898-4910)
# Address: 0x0d9d7fc0 - 0x0d9d8014 (Size: 84 bytes, Frame: 48)
.globl __glOdyim_TexEnvf
.ent __glOdyim_TexEnvf
__glOdyim_TexEnvf:
    # Line 4898
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    # Line 4900
    li	$at,8704
    # Line 4898
    lui	$v0,0x12
    sd	$ra,8($sp)
    addiu	$v0,$v0,1488
    sd	$gp,0($sp)
    # Line 4900
    beq	$a1,$at,.L0d9d8000
    # Line 4898
    addu	$gp,$t9,$v0
    # Line 4907
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9d7ff4:
    # Line 4910
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d8000:
    # Line 4903
    # lw $t9, -30568($gp) # &__glOdyim_TexEnvfv
    bal __glOdyim_TexEnvfv
    addiu	$a2,$sp,32
    b	.L0d9d7ff4
    ld	$ra,8($sp)
.end __glOdyim_TexEnvf

# Function: __glOdyim_TexEnviv
# Declared: Line 4914 (Source lines: 4917-4973)
# Address: 0x0d9d8020 - 0x0d9d8294 (Size: 628 bytes, Frame: 48)
.globl __glOdyim_TexEnviv
.ent __glOdyim_TexEnviv
__glOdyim_TexEnviv:
    # Line 4917
    move	$a6,$a2
    addiu	$sp,$sp,-48
    # Line 4920
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 4917
    lui	$v1,0x12
    move	$a4,$a0
    sd	$ra,32($sp)
    addiu	$v1,$v1,1392
    sd	$gp,24($sp)
    # Line 4920
    beq	$at,$v0,.L0d9d8280
    # Line 4917
    addu	$gp,$t9,$v1
    # Line 4920
    li	$a0,8960
    beq	$a4,$a0,.L0d9d8070
    # Line 4930
    li	$a2,8704
    # Line 4926
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d8094
    ld	$ra,32($sp)
.L0d9d8070:
    # Line 4930
    beq	$a1,$a2,.L0d9d8254
    sd	$a5,0($sp)
    li	$a3,8705
    beq	$a1,$a3,.L0d9d80a0
    # Line 4938
    ld	$a0,0($sp)
    # Line 4967
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0d9d8094:
    # Line 4973
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d80a0:
    # Line 4939
    # lw $t9, -26156($gp) # &__glClampColori
    # Line 4938
    sll	$a5,$a4,0x3
    # Line 4939
    move	$a2,$a6
    # Line 4938
    addu	$a4,$a5,$a4
    lw	$a1,2484($a0)
    lui	$a3,0xfffb
    sll	$a4,$a4,0x2
    ori	$a3,$a3,0x1404
    sd	$a4,8($sp)
    addu	$a1,$a1,$a4
    addu	$a1,$a1,$a3
    # Line 4939
    jal	__glClampColori
    # Line 4938
    sd	$a1,16($sp)
    # Line 4939
    ld	$a0,0($sp)
    ld	$a5,8($sp)
    lw	$a4,2484($a0)
    lui	$a3,0xfffb
    ori	$a3,$a3,0x1400
    addu	$a4,$a4,$a5
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
    li	$a4,260
    lui	$a2,0xff
    bne	$a3,$a4,.L0d9d8128
    ori	$a2,$a2,0xf000
    # Line 4954
    lw	$a5,31928($a0)
    # Line 4952
    lw	$a4,31924($a0)
    # Line 4954
    or	$a5,$a2,$a5
    # Line 4952
    or	$a4,$a2,$a4
    # Line 4955
    ori	$a5,$a5,0xfff
    sw	$a5,31928($a0)
    # Line 4953
    ori	$a4,$a4,0xfff
    # Line 4955
    b	.L0d9d8218
    # Line 4953
    sw	$a4,31924($a0)
.L0d9d8128:
    # Line 4955
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4957
    ld	$ra,16($sp)
    # Line 4955
    addiu	$t9,$t9,-1504
    # Line 4957
    lwc1	$f12,0($ra)
    jal	sub_0d9d0000
    nop
    ld	$v1,0($sp)
    sll	$a1,$v0,0xc
    lui	$at,0xff
    # Line 4958
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4957
    lui	$a2,0xff00
    ori	$at,$at,0xf000
    lw	$a0,31924($v1)
    ori	$v0,$a2,0xfff
    and	$at,$at,$a1
    # Line 4958
    ld	$ra,16($sp)
    addiu	$t9,$t9,-1504
    # Line 4957
    and	$v0,$v0,$a0
    or	$at,$at,$v0
    sw	$at,31924($v1)
    # Line 4958
    lwc1	$f12,4($ra)
    jal	sub_0d9d0000
    nop
    ld	$v1,0($sp)
    # Line 4959
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4958
    lw	$a1,31924($v1)
    andi	$at,$v0,0xfff
    li	$a0,-4096
    # Line 4959
    ld	$ra,16($sp)
    addiu	$t9,$t9,-1504
    # Line 4958
    and	$v0,$a0,$a1
    or	$at,$at,$v0
    sw	$at,31924($v1)
    # Line 4959
    lwc1	$f12,8($ra)
    jal	sub_0d9d0000
    nop
    ld	$v1,0($sp)
    lui	$at,0xff
    # Line 4960
    # lw $t9, -32712($gp) # &sub_0d9d0000
    # Line 4959
    sll	$v0,$v0,0xc
    ori	$at,$at,0xf000
    lw	$a0,31928($v1)
    and	$at,$at,$v0
    lui	$v0,0xff00
    ori	$v0,$v0,0xfff
    # Line 4960
    ld	$ra,16($sp)
    addiu	$t9,$t9,-1504
    # Line 4959
    and	$v0,$v0,$a0
    or	$at,$at,$v0
    sw	$at,31928($v1)
    # Line 4960
    lwc1	$f12,12($ra)
    jal	sub_0d9d0000
    nop
    ld	$a0,0($sp)
    lw	$a1,31928($a0)
    li	$v1,-4096
    andi	$v0,$v0,0xfff
    and	$v1,$v1,$a1
    or	$v0,$v0,$v1
    sw	$v0,31928($a0)
.L0d9d8218:
    # Line 4962
    lui	$a1,0x1
    addu	$a1,$a0,$a1
    lw	$a2,26976($a1)
    ori	$a2,$a2,0x100
    sw	$a2,26976($a1)
    li	$a2,2
    sw	$a2,4120($zero)
.L0d9d8234:
    # Line 4972
    lw	$a3,26980($a1)
    ld	$ra,32($sp)
    # Line 4973
    ld	$gp,24($sp)
    # Line 4972
    ori	$a3,$a3,0x200
    sw	$a3,26980($a1)
    # Line 4973
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4972
    sw	$a2,4120($zero)
.L0d9d8254:
    # Line 4933
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,31440
    ld	$a0,0($sp)
    move	$a1,$a4
    bal __glOdyim_TexParameteri
    lw	$a2,0($a6)
    ld	$a1,0($sp)
    li	$a2,2
    lui	$a3,0x1
    b	.L0d9d8234
    addu	$a1,$a1,$a3
.L0d9d8280:
    # Line 4920
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d8094
    ld	$ra,32($sp)
.end __glOdyim_TexEnviv

# Function: __glOdyim_TexEnvi
# Declared: Line 4977 (Source lines: 4980-4992)
# Address: 0x0d9d82a0 - 0x0d9d82f4 (Size: 84 bytes, Frame: 48)
.globl __glOdyim_TexEnvi
.ent __glOdyim_TexEnvi
__glOdyim_TexEnvi:
    # Line 4980
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    # Line 4982
    li	$at,8704
    # Line 4980
    lui	$v0,0x12
    sd	$ra,8($sp)
    addiu	$v0,$v0,752
    sd	$gp,0($sp)
    # Line 4982
    beq	$a1,$at,.L0d9d82e0
    # Line 4980
    addu	$gp,$t9,$v0
    # Line 4989
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9d82d4:
    # Line 4992
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d82e0:
    # Line 4985
    # lw $t9, -30560($gp) # &__glOdyim_TexEnviv
    bal __glOdyim_TexEnviv
    addiu	$a2,$sp,36
    b	.L0d9d82d4
    ld	$ra,8($sp)
.end __glOdyim_TexEnvi

# Function: QuickSortPairs
# Declared: Line 5008 (Source lines: 5009-5039)
# Address: 0x0d9d8300 - 0x0d9d84b4 (Size: 436 bytes, Frame: 32)
.ent QuickSortPairs
QuickSortPairs:
.L0d9d8300:
    # Line 5011
    move	$a4,$a1
    # Line 5009
    addiu	$sp,$sp,-32
    # Line 5010
    li	$v0,-2
    addu	$at,$a2,$a1
    # Line 5009
    sd	$s1,8($sp)
    move	$s1,$a0
    # Line 5010
    and	$at,$at,$v0
    # Line 5009
    sd	$s2,0($sp)
    # Line 5012
    slt	$v0,$a1,$a2
    # Line 5010
    sll	$at,$at,0x2
    # Line 5009
    move	$s2,$a2
    sd	$s0,16($sp)
    # Line 5010
    addu	$at,$a0,$at
    # Line 5012
    move	$s0,$a2
    beqz	$v0,.L0d9d8454
    # Line 5010
    lwc1	$f4,0($at)
    # Line 5017
    sll	$a5,$a1,0x3
    sll	$a6,$a2,0x3
    addu	$a6,$a6,$a0
    addu	$a5,$a5,$a0
    b	.L0d9d84a8
    move	$a0,$zero
.L0d9d8358:
    # Line 5023
    beqz	$a7,.L0d9d83a0
    nop
    addiu	$s0,$s0,-1
.L0d9d8364:
    sll	$a6,$s0,0x3
    addu	$a6,$s1,$a6
    lwc1	$f6,0($a6)
    c.le.s	$f6,$f4
    bc1f	.L0d9d83a0
    slt	$a7,$a4,$s0
    beqz	$a7,.L0d9d83a0
    nop
    addiu	$s0,$s0,-1
    sll	$a6,$s0,0x3
    addu	$a6,$s1,$a6
    lwc1	$f6,0($a6)
    c.le.s $f6,$f4
    bc1t .L0d9d8358
    slt	$a7,$a4,$s0
.L0d9d83a0:
    # Line 5026
    beq	$a4,$s0,.L0d9d844c
    nop
    # Line 5030
    swc1	$f6,0($a5)
    swc1	$f5,0($a6)
    # Line 5031
    lwc1	$f0,4($a5)
    lwc1	$f1,4($a6)
    swc1	$f1,4($a5)
    li	$a0,1
    # Line 5020
    slt	$a7,$a4,$s0
    # Line 5031
    swc1	$f0,4($a6)
    # Line 5020
    lwc1	$f5,0($a5)
.L0d9d83cc:
    # Line 5023
    lwc1	$f6,0($a6)
    # Line 5020
    c.lt.s $f4,$f5
    bc1f .L0d9d8434
    # Line 5023
    c.le.s $f6,$f4
    # Line 5020
    beqz	$a7,.L0d9d8434
    nop
    b	.L0d9d83f8
    addiu	$a4,$a4,1
.L0d9d83ec:
    beqz	$t0,.L0d9d8434
    nop
    addiu	$a4,$a4,1
.L0d9d83f8:
    sll	$a5,$a4,0x3
    addu	$a5,$s1,$a5
    lwc1	$f5,0($a5)
    c.lt.s $f4,$f5
    bc1f .L0d9d8434
    slt	$a7,$a4,$s0
    beqz	$a7,.L0d9d8434
    nop
    addiu	$a4,$a4,1
    sll	$a5,$a4,0x3
    addu	$a5,$s1,$a5
    lwc1	$f5,0($a5)
    c.lt.s $f4,$f5
    bc1t .L0d9d83ec
    slt	$t0,$a4,$s0
.L0d9d8434:
    # Line 5023
    bc1f .L0d9d83a0
    slt	$a7,$a4,$s0
    beqz	$a7,.L0d9d83a0
    nop
    b	.L0d9d8364
    addiu	$s0,$s0,-1
.L0d9d844c:
    # Line 5034
    bnez	$a0,.L0d9d8468
    # Line 5037
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
.L0d9d8454:
    # Line 5035
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9d8468:
    # Line 5037
    addiu	$t9,$t9,-32000
    addiu	$a2,$a4,-1
    sd	$ra,24($sp)
    bal .L0d9d8300
    move	$a0,$s1
    # Line 5038
    # lw $t9, -32708($gp) # &sub_0d9e0000
    ld	$ra,24($sp)
    addiu	$a1,$s0,1
    # Line 5039
    ld	$s0,16($sp)
    # Line 5038
    addiu	$t9,$t9,-32000
    move	$a0,$s1
    # Line 5039
    ld	$s1,8($sp)
    # Line 5038
    move	$a2,$s2
    # Line 5039
    ld	$s2,0($sp)
    bgezl	$zero,.L0d9d8300
    addiu	$sp,$sp,32
.L0d9d84a8:
    # Line 5020
    slt	$a7,$a4,$s0
    b	.L0d9d83cc
    lwc1	$f5,0($a5)
.end QuickSortPairs

# Function: SetDetailEntry
# Declared: Line 5042 (Source lines: 5043-5065)
# Address: 0x0d9d84c0 - 0x0d9d8584 (Size: 196 bytes, Frame: 0)
.ent SetDetailEntry
SetDetailEntry:
    # Line 5043
    dmtc1	$zero,$f0
    cvt.d.s	$f5,$f14
    c.lt.d	$f5,$f0
    # Line 5054
    lwc1	$f1,_lit_3f800000
    # Line 5061
    lui	$a6,0xff
    # Line 5043
    ldc1	$f4,_lit8_3ff0000000000000
    bc1f	.L0d9d84e8
    # Line 5061
    ori	$a6,$a6,0xf000
    # Line 5043
    b	.L0d9d84f0
    mtc1	$zero,$f14
.L0d9d84e8:
    # Line 5054
    c.lt.d $f4,$f5
    movt.s	$f14,$f1,$fcc1
.L0d9d84f0:
    lui	$a5,0xff
    cvt.d.s	$f5,$f14
    c.eq.d $f5,$f4
    sll	$a4,$a1,0x2
    addu	$a4,$a0,$a4
    ori	$a5,$a5,0xf000
    bc1t .L0d9d8560
    lw	$a3,0($a4)
    # Line 5061
    nor	$a6,$a6,$zero
    # Line 5059
    c.le.d $f4,$f5
    # Line 5061
    lwc1	$f4,_lit_457ff000
    # Line 5059
    bc1t .L0d9d852c
    # Line 5061
    and	$a6,$a3,$a6
    lwc1	$f4,_lit_45800000
    mul.s	$f4,$f14,$f4
.L0d9d852c:
    trunc.l.s	$f5,$f4
    dmfc1	$a7,$f5
    sll	$a7,$a7,0xc
    and	$a5,$a5,$a7
    # Line 5063
    lui	$a7,0x200
    nor	$a7,$a7,$zero
    # Line 5061
    or	$a5,$a5,$a6
    # Line 5064
    lui	$a6,0x800
    nor	$a6,$a6,$zero
    # Line 5063
    and	$a5,$a5,$a7
    # Line 5064
    and	$a5,$a5,$a6
    # Line 5065
    jr	$ra
    # Line 5064
    sw	$a5,0($a4)
.L0d9d8560:
    # Line 5059
    or	$a7,$a5,$a3
    # Line 5063
    lui	$t1,0x200
    # Line 5064
    lui	$t0,0x800
    # Line 5063
    nor	$t1,$t1,$zero
    # Line 5064
    nor	$t0,$t0,$zero
    # Line 5063
    and	$a7,$a7,$t1
    # Line 5064
    and	$a7,$a7,$t0
    # Line 5065
    jr	$ra
    # Line 5064
    sw	$a7,0($a4)
.end SetDetailEntry

# Function: __glOdysseyTextureSetDetailTable
# Declared: Line 5068 (Source lines: 5070-5117)
# Address: 0x0d9d8590 - 0x0d9d8738 (Size: 424 bytes, Frame: 224)
.globl __glOdysseyTextureSetDetailTable
.ent __glOdysseyTextureSetDetailTable
__glOdysseyTextureSetDetailTable:
    # Line 5070
    addiu	$sp,$sp,-96
    sd	$ra,64($sp)
    sd	$s5,32($sp)
    sd	$s1,40($sp)
    sd	$s4,56($sp)
    sd	$s2,88($sp)
    sd	$s7,24($sp)
    sd	$s8,8($sp)
    li	$s8,256
    sd	$s0,48($sp)
    move	$s0,$zero
    sd	$s3,80($sp)
    lui	$t8,0x12
    move	$s3,$zero
    sd	$s6,72($sp)
    addiu	$t8,$t8,0
    addiu	$s7,$a0,252
    sd	$gp,16($sp)
    addu	$gp,$t9,$t8
    move	$s2,$zero
    slt	$s4,$zero,$a1
    la	$s6,sub_0d9e0000
    move	$s1,$a2
    move	$s5,$a1
    sdc1	$f20,0($sp)
    ldc1	$f20,_lit8_3fa0000000000000
    b	.L0d9d8688
    addiu	$s6,$s6,-31552
.L0d9d8600:
    # Line 5085
    lwc1	$f0,0($t9)
    c.lt.s	$f4,$f0
    bc1f	.L0d9d8648
    nop
    addiu	$s0,$s0,1
.L0d9d8614:
    slt	$s4,$s0,$s5
    sll	$ra,$s0,0x3
    beqz	$s4,.L0d9d8648
    addu	$ra,$s1,$ra
    lwc1	$f1,0($ra)
    c.lt.s $f4,$f1
    bc1f .L0d9d8648
    nop
    addiu	$s0,$s0,1
    slt	$s4,$s0,$s5
    sll	$t9,$s0,0x3
    bnez	$s4,.L0d9d8600
    addu	$t9,$s1,$t9
.L0d9d8648:
    # Line 5109
    sll	$a4,$s0,0x3
.L0d9d864c:
    # Line 5085
    addiu	$a1,$s0,-1
    # Line 5094
    sll	$a2,$a1,0x3
    # Line 5085
    bltz	$a1,.L0d9d86f0
    # Line 5109
    addu	$a4,$s1,$a4
    # Line 5094
    addu	$a2,$s1,$a2
    bne	$s5,$s0,.L0d9d86bc
    lwc1	$f4,4($a2)
    # Line 5102
    mov.s	$f14,$f4
.L0d9d866c:
    # Line 5115
    move	$t9,$s6
    move	$a0,$s7
    bal __glOdyim_TexEnvi
    move	$a1,$s3
    # Line 5080
    addiu	$s3,$s3,1
    beq	$s3,$s8,.L0d9d8700
    addiu	$s2,$s2,-1
.L0d9d8688:
    # Line 5084
    beqz	$s4,.L0d9d8648
    sll	$a3,$s0,0x3
    mtc1	$s2,$f4
    cvt.d.w	$f4,$f4
    addu	$a3,$s1,$a3
    mul.d	$f4,$f4,$f20
    lwc1	$f2,0($a3)
    cvt.s.d	$f4,$f4
    c.lt.s $f4,$f2
    bc1f .L0d9d864c
    # Line 5109
    sll	$a4,$s0,0x3
    b	.L0d9d8614
    # Line 5085
    addiu	$s0,$s0,1
.L0d9d86bc:
    # Line 5109
    lwc1	$f16,0($a2)
    lwc1	$f15,0($a4)
    lwc1	$f14,4($a4)
    sub.s	$f15,$f15,$f16
    sub.s	$f14,$f14,$f4
    div.s	$f14,$f14,$f15
    mtc1	$s2,$f15
    cvt.d.w	$f15,$f15
    mul.d	$f15,$f15,$f20
    cvt.s.d	$f15,$f15
    sub.s	$f15,$f15,$f16
    b	.L0d9d866c
    madd.s	$f14,$f4,$f14,$f15
.L0d9d86f0:
    # Line 5094
    sll	$a5,$s0,0x3
    addu	$a5,$s1,$a5
    b	.L0d9d866c
    lwc1	$f14,4($a5)
.L0d9d8700:
    # Line 5117
    ld	$gp,16($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    ld	$s4,56($sp)
    ld	$s5,32($sp)
    ld	$s6,72($sp)
    ld	$ra,64($sp)
    ld	$s7,24($sp)
    ld	$s8,8($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glOdysseyTextureSetDetailTable

# Function: __glOdyim_DetailTexFuncSGIS
# Declared: Line 5121 (Source lines: 5122-5174)
# Address: 0x0d9d8740 - 0x0d9d893c (Size: 508 bytes, Frame: 208)
.globl __glOdyim_DetailTexFuncSGIS
.ent __glOdyim_DetailTexFuncSGIS
__glOdyim_DetailTexFuncSGIS:
    # Line 5122
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    # Line 5127
    lw	$s1,4112($zero)
    # Line 5122
    sd	$s0,8($sp)
    sd	$s6,24($sp)
    move	$s6,$a2
    move	$s0,$a1
    # Line 5127
    lw	$at,4120($zero)
    # Line 5122
    sd	$s3,32($sp)
    # Line 5127
    li	$v0,1
    # Line 5122
    lui	$v1,0x12
    move	$s3,$a0
    sd	$ra,48($sp)
    addiu	$v1,$v1,-432
    sd	$gp,0($sp)
    # Line 5127
    beq	$at,$v0,.L0d9d8928
    # Line 5122
    addu	$gp,$t9,$v1
    # Line 5127
    li	$a0,3553
    beq	$s3,$a0,.L0d9d87b8
    # Line 5130
    nop	# was lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d9d8798:
    # Line 5174
    ld	$gp,0($sp)
.L0d9d879c:
    ld	$s0,8($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s3,32($sp)
    ld	$s6,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9d87b8:
    # Line 5131
    blez	$a1,.L0d9d8918
    # Line 5135
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 5143
    lw	$t9,0($s1)
    sd	$s5,56($sp)
    addu	$s5,$a1,$a1
    move	$a0,$s1
    sll	$s5,$s5,0x2
    sd	$s4,64($sp)
    jal	__glSetError
    move	$a1,$s5
    # Line 5144
    lw	$t9,0($s1)
    # Line 5143
    move	$s4,$v0
    # Line 5144
    move	$a0,$s1
    move	$a1,$s5
    jalr	$t9
    sd	$s2,72($sp)
    # Line 5145
    beqz	$s4,.L0d9d88f8
    # Line 5144
    move	$s2,$v0
    # Line 5145
    beqz	$v0,.L0d9d88fc
    # Line 5146
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 5150
    # lw $t9, -30644($gp) # &__glOdysseyGetCurrentTexture
    move	$a0,$s1
    jal	__glOdysseyGetCurrentTexture
    move	$a1,$s3
    # Line 5153
    # lw $t9, -16968($gp) # &bcopy
    # Line 5150
    move	$s3,$v0
    # Line 5153
    move	$a0,$s6
    move	$a1,$s4
    jal	bcopy
    move	$a2,$s5
    la	$ra,sub_0daf0000
    lw	$t8,1288($s3)
    # Line 5161
    # lw $t9, -16968($gp) # &bcopy
    # Line 5153
    addiu	$ra,$ra,-14032
    # Line 5161
    move	$a2,$s5
    # Line 5158
    sw	$s0,1284($s3)
    xor	$ra,$t8,$ra
    # Line 5161
    move	$a1,$s2
    # Line 5157
    sw	$s4,1288($s3)
    movz	$t8,$zero,$ra
    # Line 5161
    move	$a0,$s6
    jal	bcopy
    sd	$t8,40($sp)
    # Line 5162
    # lw $t9, -32708($gp) # &sub_0d9e0000
    ld	$s4,64($sp)
    addiu	$t9,$t9,-32000
    ld	$s5,56($sp)
    move	$a0,$s2
    move	$a1,$zero
    ld	$s6,40($sp)
    bal __glOdyim_TexEnvi
    addiu	$a2,$s0,-1
    # Line 5165
    # lw $t9, -30552($gp) # &__glOdysseyTextureSetDetailTable
    move	$a0,$s3
    move	$a1,$s0
    bal __glOdysseyTextureSetDetailTable
    move	$a2,$s2
    # Line 5167
    lw	$v1,160($s3)
    lui	$a0,0x10
    # Line 5168
    lui	$v0,0x1
    addu	$v0,$s1,$v0
    # Line 5167
    or	$v1,$v1,$a0
    sw	$v1,160($s3)
    # Line 5168
    lw	$at,26980($v0)
    ori	$at,$at,0x200
    sw	$at,26980($v0)
    li	$ra,2
    sw	$ra,4120($zero)
    # Line 5171
    lw	$t9,12($s1)
    move	$a1,$s2
    jal	__glOdysseyTextureSetDetailTable
    move	$a0,$s1
    beqz	$s6,.L0d9d8798
    ld	$s2,72($sp)
    # Line 5173
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s6
    b	.L0d9d879c
    # Line 5174
    ld	$gp,0($sp)
.L0d9d88f8:
    # Line 5146
    # lw $t9, -26792($gp) # &__glSetError
.L0d9d88fc:
    ld	$s2,72($sp)
    ld	$s4,64($sp)
    ld	$s5,56($sp)
    jal	__glSetError
    li	$a0,1285
    b	.L0d9d879c
    # Line 5174
    ld	$gp,0($sp)
.L0d9d8918:
    # Line 5135
    jalr	$t9
    li	$a0,1281
    b	.L0d9d879c
    # Line 5174
    ld	$gp,0($sp)
.L0d9d8928:
    # Line 5127
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d879c
    # Line 5174
    ld	$gp,0($sp)
.end __glOdyim_DetailTexFuncSGIS

# Function: __glOdyim_BindTexture
# Declared: Line 5243 (Source lines: 5244-5350)
# Address: 0x0d9d8940 - 0x0d9d8bc0 (Size: 640 bytes, Frame: 208)
.globl __glOdyim_BindTexture
.ent __glOdyim_BindTexture
__glOdyim_BindTexture:
    # Line 5244
    addiu	$sp,$sp,-80
    sd	$s1,32($sp)
    # Line 5248
    lw	$s1,4112($zero)
    sd	$ra,48($sp)
    # Line 5244
    sd	$s3,0($sp)
    move	$s3,$a1
    # Line 5248
    lw	$at,4120($zero)
    # Line 5244
    sd	$s0,8($sp)
    # Line 5248
    li	$v0,1
    # Line 5244
    lui	$v1,0x12
    move	$s0,$a0
    sd	$s2,56($sp)
    addiu	$v1,$v1,-944
    sd	$gp,40($sp)
    # Line 5248
    beq	$at,$v0,.L0d9d8b88
    # Line 5244
    addu	$gp,$t9,$v1
    # Line 5250
    li	$a0,3552
    beq	$s0,$a0,.L0d9d8aa4
    li	$a1,3553
    beq	$s0,$a1,.L0d9d8ae8
    # Line 5257
    li	$ra,1
    # Line 5250
    li	$a2,0x8095
    beq	$s0,$a2,.L0d9d8b68
    # Line 5260
    li	$a4,3
    # Line 5250
    li	$a3,0x806f
    beq	$s0,$a3,.L0d9d89c8
    # Line 5263
    li	$a4,2
    # Line 5265
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s3,0($sp)
    ld	$s0,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9d8a90
    ld	$ra,48($sp)
.L0d9d89c8:
    # Line 5267
    beqz	$s3,.L0d9d8ab0
    sd	$a4,24($sp)
    # Line 5277
    # lw $t9, -25700($gp) # &__glNamesLockData
.L0d9d89d4:
    lui	$a1,0x1
    ori	$a1,$a1,0x6414
    move	$a0,$s1
    addu	$a1,$a1,$s1
    move	$a2,$s3
    jal	__glNamesLockData
    lw	$a1,0($a1)
    move	$s2,$v0
.L0d9d89f4:
    beqz	$s2,.L0d9d8af0
    nop
    # Line 5302
    lw	$a2,12($s2)
    bne	$a2,$s0,.L0d9d8b70
    ld	$s3,0($sp)
    ld	$s0,8($sp)
    # Line 5311
    lui	$v0,0x1
    addu	$a3,$v0,$s1
    sd	$a3,16($sp)
.L0d9d8a18:
    ld	$a0,24($sp)
    sll	$a0,$a0,0x2
    addu	$a0,$s1,$a0
    addu	$a0,$v0,$a0
    lw	$a1,25604($a0)
    lw	$a4,8($a1)
    beqz	$a4,.L0d9d8a48
    # Line 5319
    nop	# was lw $t9, -25692($gp) # &__glNamesUnlockData
    sd	$a0,64($sp)
    jal	__glNamesUnlockData
    move	$a0,$s1
    ld	$a0,64($sp)
.L0d9d8a48:
    # Line 5322
    sw	$s2,25604($a0)
    # Line 5325
    lw	$a4,160($s2)
    lui	$a5,0x11
    # Line 5337
    ld	$a1,16($sp)
    # Line 5325
    ori	$a5,$a5,0x4200
    or	$a4,$a4,$a5
    sw	$a4,160($s2)
    # Line 5337
    lw	$a3,26980($a1)
    ori	$a3,$a3,0x200
    sw	$a3,26980($a1)
    li	$a2,2
    sw	$a2,4120($zero)
    # Line 5346
    lw	$a1,25624($a1)
    beqz	$a1,.L0d9d8a90
    ld	$ra,48($sp)
    bne	$a1,$s2,.L0d9d8ad4
    # Line 5347
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
.L0d9d8a8c:
    ld	$ra,48($sp)
.L0d9d8a90:
    ld	$s2,56($sp)
    ld	$s1,32($sp)
    # Line 5350
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9d8aa4:
    sd	$zero,24($sp)
.L0d9d8aa8:
    # Line 5267
    bnez	$s3,.L0d9d89d4
    # Line 5277
    nop	# was lw $t9, -25700($gp) # &__glNamesLockData
.L0d9d8ab0:
    # Line 5275
    ld	$t8,24($sp)
    li	$t9,2452
    multu	$t8,$t9
    lui	$t8,0x1
    mflo	$s2
    ori	$t8,$t8,0x20f8
    addu	$s2,$s1,$s2
    b	.L0d9d89f4
    addu	$s2,$s2,$t8
.L0d9d8ad4:
    # Line 5347
    addiu	$t9,$t9,9536
    bal __glOdysseyGetCurrentTexture
    move	$a0,$s1
    b	.L0d9d8a90
    ld	$ra,48($sp)
.L0d9d8ae8:
    # Line 5257
    b	.L0d9d8aa8
    sd	$ra,24($sp)
.L0d9d8af0:
    # Line 5287
    lw	$t9,0($s1)
    move	$a0,$s1
    jal	__glNamesLockData
    li	$a1,2452
    beqz	$v0,.L0d9d8ba4
    move	$s2,$v0
    # Line 5293
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-2656
    move	$a0,$v0
    move	$a1,$s3
    jal	sub_0d9d0000
    move	$a2,$s0
    # Line 5294
    # lw $t9, -25704($gp) # &__glNamesNewData
    ld	$s0,8($sp)
    move	$a3,$s2
    lui	$a1,0x1
    move	$a2,$s3
    addu	$a1,$a1,$s1
    sd	$a1,16($sp)
    move	$a0,$s1
    jal	__glNamesNewData
    lw	$a1,25620($a1)
    andi	$a2,$v0,0xff
    lui	$v0,0x1
    beqz	$a2,.L0d9d8a8c
    ld	$s3,0($sp)
    # Line 5302
    lw	$a3,0($s2)
    addiu	$a3,$a3,1
    b	.L0d9d8a18
    sw	$a3,0($s2)
.L0d9d8b68:
    # Line 5260
    b	.L0d9d8aa8
    sd	$a4,24($sp)
.L0d9d8b70:
    # Line 5310
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s0,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d8a90
    ld	$ra,48($sp)
.L0d9d8b88:
    # Line 5248
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s3,0($sp)
    ld	$s0,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d8a90
    ld	$ra,48($sp)
.L0d9d8ba4:
    # Line 5290
    # lw $t9, -26792($gp) # &__glSetError
    ld	$s3,0($sp)
    ld	$s0,8($sp)
    jal	__glSetError
    li	$a0,1285
    b	.L0d9d8a90
    ld	$ra,48($sp)
.end __glOdyim_BindTexture

# Function: __glOdyim_DeleteTextures
# Declared: Line 5353 (Source lines: 5358-5451)
# Address: 0x0d9d8bc0 - 0x0d9d8e38 (Size: 632 bytes, Frame: 128)
.globl __glOdyim_DeleteTextures
.ent __glOdyim_DeleteTextures
__glOdyim_DeleteTextures:
    # Line 5358
    addiu	$sp,$sp,-128
    sd	$s5,32($sp)
    # Line 5364
    lw	$at,4120($zero)
    lw	$s5,4112($zero)
    li	$v0,1
    # Line 5358
    lui	$v1,0x12
    move	$a4,$a1
    sd	$ra,64($sp)
    addiu	$v1,$v1,-1584
    sd	$gp,24($sp)
    # Line 5364
    beq	$at,$v0,.L0d9d8e24
    # Line 5358
    addu	$gp,$t9,$v1
    sd	$s4,16($sp)
    # Line 5364
    lui	$s4,0x1
    bltz	$a0,.L0d9d8df8
    addu	$s4,$s4,$s5
    sd	$s3,56($sp)
    # Line 5370
    lw	$t9,25620($s4)
    sd	$t9,40($sp)
    # Line 5381
    lw	$a2,0($a1)
    # Line 5370
    sd	$t9,0($sp)
    # Line 5381
    sd	$a2,48($sp)
    blez	$a0,.L0d9d8df0
    move	$s3,$a2
    sd	$a2,48($sp)
    sd	$s2,88($sp)
    move	$s3,$a2
    sd	$s6,104($sp)
    li	$s6,4
    move	$s2,$a1
    sd	$s7,112($sp)
    sll	$s7,$a0,0x2
    sd	$s8,96($sp)
    lui	$s8,0x1
    sd	$s1,72($sp)
    addu	$s7,$s7,$a1
    ori	$s8,$s8,0x6404
    sd	$s0,80($sp)
    b	.L0d9d8ca0
    addu	$s8,$s5,$s8
.L0d9d8c60:
    # Line 5390
    beqz	$a4,.L0d9d8d54
    # Line 5395
    ld	$a3,48($sp)
    # Line 5413
    move	$s1,$zero
    move	$s0,$s8
.L0d9d8c70:
    lw	$a1,0($s0)
    lw	$at,8($a1)
    beq	$at,$a4,.L0d9d8ccc
    # Line 5419
    nop	# was lw $t9, -25692($gp) # &__glNamesUnlockData
    # Line 5414
    addiu	$s1,$s1,1
    bne	$s6,$s1,.L0d9d8c70
    addiu	$s0,$s0,4
.L0d9d8c8c:
    # Line 5442
    bne	$a4,$s3,.L0d9d8d2c
    # Line 5444
    ld	$a3,48($sp)
.L0d9d8c94:
    # Line 5382
    addiu	$s2,$s2,4
    beq	$s2,$s7,.L0d9d8d7c
    addiu	$s3,$s3,1
.L0d9d8ca0:
    # Line 5388
    lw	$a1,25624($s4)
    beqz	$a1,.L0d9d8c60
    lw	$a4,0($s2)
    lw	$v0,8($a1)
    bne	$v0,$a4,.L0d9d8c60
    # Line 5390
    nop	# was lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,9536
    bal __glOdysseyGetCurrentTexture
    move	$a0,$s5
    b	.L0d9d8c60
    lw	$a4,0($s2)
.L0d9d8ccc:
    # Line 5419
    jal	sub_0d9d0000
    move	$a0,$s5
    # Line 5424
    li	$a2,2452
    multu	$a2,$s1
    lui	$v1,0x1
    lui	$v0,0x1
    ori	$v0,$v0,0x20f8
    sll	$a1,$s1,0x2
    addu	$a1,$s5,$a1
    mflo	$a0
    addu	$v1,$v1,$a1
    addu	$a0,$s5,$a0
    addu	$v0,$v0,$a0
    sw	$v0,25604($v1)
    # Line 5425
    sw	$v0,0($s0)
    # Line 5427
    lui	$at,0x11
    lw	$v0,26976($s4)
    ori	$at,$at,0x4200
    or	$at,$at,$v0
    sw	$at,26976($s4)
    li	$ra,2
    sw	$ra,4120($zero)
    # Line 5431
    b	.L0d9d8c8c
    lw	$a4,0($s2)
.L0d9d8d2c:
    # Line 5444
    # lw $t9, -25680($gp) # &__glNamesDeleteRange
    move	$a0,$s5
    move	$a2,$a3
    ld	$a1,40($sp)
    jal	__glNamesDeleteRange
    subu	$a3,$s3,$a3
    # Line 5445
    lw	$a4,0($s2)
    sd	$a4,48($sp)
    b	.L0d9d8c94
    move	$s3,$a4
.L0d9d8d54:
    # Line 5395
    # lw $t9, -25680($gp) # &__glNamesDeleteRange
    move	$a0,$s5
    move	$a2,$a3
    ld	$a1,40($sp)
    jal	__glNamesDeleteRange
    subu	$a3,$s3,$a3
    # Line 5397
    lw	$s3,4($s2)
    sd	$s3,48($sp)
    # Line 5399
    b	.L0d9d8c94
    # Line 5398
    addiu	$s3,$s3,-1
.L0d9d8d7c:
    ld	$s2,88($sp)
    ld	$s8,96($sp)
    ld	$s6,104($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    ld	$s7,112($sp)
.L0d9d8d94:
    # Line 5448
    ld	$a3,48($sp)
.L0d9d8d98:
    # lw $t9, -25680($gp) # &__glNamesDeleteRange
    move	$a0,$s5
    move	$a2,$a3
    ld	$a1,0($sp)
    jal	__glNamesDeleteRange
    subu	$a3,$s3,$a3
    ld	$s3,56($sp)
    # Line 5451
    ld	$gp,24($sp)
    ld	$s5,32($sp)
    # Line 5450
    lw	$a5,26980($s4)
    ld	$ra,64($sp)
    ori	$a5,$a5,0x200
    sw	$a5,26980($s4)
    li	$a4,2
    sw	$a4,4120($zero)
    # Line 5451
    ld	$s4,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9d8de0:
    ld	$gp,24($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9d8df0:
    b	.L0d9d8d98
    # Line 5448
    ld	$a3,48($sp)
.L0d9d8df8:
    # Line 5367
    # lw $t9, -26792($gp) # &__glSetError
    sd	$a1,8($sp)
    li	$a0,1281
    jal	__glSetError
    sd	$s3,56($sp)
    # Line 5370
    lw	$a6,25620($s4)
    # Line 5381
    ld	$s3,8($sp)
    # Line 5370
    sd	$a6,0($sp)
    # Line 5381
    lw	$s3,0($s3)
    b	.L0d9d8d94
    sd	$s3,48($sp)
.L0d9d8e24:
    # Line 5364
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d8de0
    ld	$ra,64($sp)
.end __glOdyim_DeleteTextures

# Function: __glOdyim_GenTextures
# Declared: Line 5454 (Source lines: 5455-5468)
# Address: 0x0d9d8e40 - 0x0d9d8ed8 (Size: 152 bytes, Frame: 16)
.globl __glOdyim_GenTextures
.ent __glOdyim_GenTextures
__glOdyim_GenTextures:
    # Line 5455
    move	$a3,$a1
    addiu	$sp,$sp,-16
    # Line 5456
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 5455
    lui	$v1,0x12
    move	$a2,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,-2224
    sd	$gp,0($sp)
    # Line 5456
    beq	$at,$v0,.L0d9d8eb4
    # Line 5455
    addu	$gp,$t9,$v1
    # Line 5456
    bltz	$a0,.L0d9d8ec8
    # Line 5459
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 5463
    beqz	$a1,.L0d9d8ea8
    ld	$ra,8($sp)
    beqz	$a0,.L0d9d8ea8
    ld	$ra,8($sp)
    # Line 5467
    # lw $t9, -25672($gp) # &__glNamesGenNames
    lui	$a1,0x1
    ori	$a1,$a1,0x6414
    addu	$a1,$a1,$a5
    move	$a0,$a5
    jal	__glNamesGenNames
    lw	$a1,0($a1)
    ld	$ra,8($sp)
.L0d9d8ea8:
    # Line 5468
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d8eb4:
    # Line 5456
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d8ea8
    ld	$ra,8($sp)
.L0d9d8ec8:
    # Line 5459
    jalr	$t9
    li	$a0,1281
    b	.L0d9d8ea8
    ld	$ra,8($sp)
.end __glOdyim_GenTextures

# Function: __glOdysseyIsTextureResident
# Declared: Line 5471 (Source lines: 5473-5480)
# Address: 0x0d9d8ee0 - 0x0d9d8f4c (Size: 108 bytes, Frame: 16)
.globl __glOdysseyIsTextureResident
.ent __glOdysseyIsTextureResident
__glOdysseyIsTextureResident:
    # Line 5473
    addiu	$sp,$sp,-16
    # Line 5476
    lw	$a5,1276($a1)
    # Line 5473
    move	$a6,$a1
    lui	$a2,0x12
    lw	$v0,156($a1)
    # Line 5476
    li	$v1,-1
    # Line 5473
    lw	$a3,96($a1)
    addiu	$a1,$a2,-2384
    sd	$gp,0($sp)
    addu	$gp,$t9,$a1
    slt	$at,$a3,$v0
    # Line 5476
    bne	$a5,$v1,.L0d9d8f24
    movz	$a3,$v0,$at
    # Line 5478
    move	$v0,$zero
    # Line 5480
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d8f24:
    # lw $t9, -30972($gp) # &__glOdysseyPMObjGroupResident
    sd	$ra,8($sp)
    move	$a1,$a5
    jal	__glOdysseyPMObjGroupResident
    lw	$a2,92($a6)
    ld	$ra,8($sp)
    andi	$v0,$v0,0xff
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glOdysseyIsTextureResident

# Function: __glOdyim_AreTexturesResident
# Declared: Line 5487 (Source lines: 5489-5526)
# Address: 0x0d9d8f50 - 0x0d9d90e4 (Size: 404 bytes, Frame: 208)
.globl __glOdyim_AreTexturesResident
.ent __glOdyim_AreTexturesResident
__glOdyim_AreTexturesResident:
    # Line 5489
    addiu	$sp,$sp,-80
    sd	$s0,8($sp)
    # Line 5494
    lw	$s0,4112($zero)
    sd	$s3,40($sp)
    sd	$ra,32($sp)
    sd	$s7,56($sp)
    sd	$s5,64($sp)
    sd	$s2,48($sp)
    sd	$s1,72($sp)
    # Line 5501
    move	$s1,$a1
    # Line 5494
    lw	$at,4120($zero)
    # Line 5489
    lui	$v0,0x12
    sd	$s6,0($sp)
    # Line 5492
    li	$s6,1
    # Line 5501
    move	$s2,$a2
    sd	$s4,24($sp)
    # Line 5489
    addiu	$v0,$v0,-2496
    sd	$gp,16($sp)
    # Line 5494
    beq	$at,$s6,.L0d9d90c0
    # Line 5489
    addu	$gp,$t9,$v0
    # Line 5494
    bltz	$a0,.L0d9d90d4
    # Line 5497
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 5501
    blez	$a0,.L0d9d9034
    lui	$s4,0x1
    move	$s7,$s6
    addu	$s4,$s0,$s4
    sll	$s5,$a0,0x2
    b	.L0d9d8ff0
    addu	$s5,$s5,$a1
    nop
    nop
    nop
.L0d9d8fd0:
    # Line 5517
    sb	$s6,0($s2)
.L0d9d8fd4:
    # Line 5523
    # lw $t9, -25692($gp) # &__glNamesUnlockData
    move	$a0,$s0
    jal	__glNamesUnlockData
    move	$a1,$s3
    # Line 5501
    addiu	$s1,$s1,4
    beq	$s1,$s5,.L0d9d9038
    addiu	$s2,$s2,1
.L0d9d8ff0:
    lw	$a2,0($s1)
    beqz	$a2,.L0d9d906c
    # Line 5509
    nop	# was lw $t9, -25700($gp) # &__glNamesLockData
    move	$a0,$s0
    jal	__glNamesLockData
    lw	$a1,25620($s4)
    beqz	$v0,.L0d9d90ac
    move	$s3,$v0
    # Line 5516
    # lw $t9, -30532($gp) # &__glOdysseyIsTextureResident
    move	$a0,$s0
    bal __glOdysseyIsTextureResident
    move	$a1,$v0
    bnez	$v0,.L0d9d8fd0
    nop
    # Line 5521
    sb	$zero,0($s2)
    b	.L0d9d8fd4
    move	$s7,$zero
.L0d9d9034:
    move	$s7,$s6
.L0d9d9038:
    # Line 5526
    move	$v0,$s7
.L0d9d903c:
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s6,0($sp)
    ld	$s4,24($sp)
    ld	$s0,8($sp)
    ld	$s1,72($sp)
    ld	$ra,32($sp)
    ld	$s5,64($sp)
    ld	$s7,56($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9d906c:
    # Line 5504
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$s1,72($sp)
    ld	$s5,64($sp)
    ld	$s7,56($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    ld	$ra,32($sp)
    # Line 5526
    ld	$gp,16($sp)
    # Line 5505
    move	$v0,$zero
    # Line 5526
    ld	$s0,8($sp)
    ld	$s6,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9d90ac:
    # Line 5512
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # Line 5513
    b	.L0d9d903c
    move	$v0,$zero
.L0d9d90c0:
    # Line 5494
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d903c
    move	$v0,$zero
.L0d9d90d4:
    # Line 5497
    jalr	$t9
    li	$a0,1281
    # Line 5498
    b	.L0d9d903c
    move	$v0,$zero
.end __glOdyim_AreTexturesResident

# Function: Clampf
# Declared: Line 5531 (Source lines: 5531-5534)
# Address: 0x0d9d90f0 - 0x0d9d9114 (Size: 36 bytes, Frame: 0)
.ent Clampf
Clampf:
    # Line 5531
    c.lt.s	$f12,$f13
    bc1t	.L0d9d910c
    # Line 5534
    mov.s	$f0,$f13
    # Line 5533
    mov.s	$f0,$f14
    # Line 5532
    c.lt.s $f14,$f12
    # Line 5534
    jr	$ra
    movf.s	$f0,$f12,$fcc1
.L0d9d910c:
    jr	$ra
    nop
.end Clampf

# Function: __glOdyim_PrioritizeTextures
# Declared: Line 5538 (Source lines: 5540-5565)
# Address: 0x0d9d9120 - 0x0d9d9284 (Size: 356 bytes, Frame: 208)
.globl __glOdyim_PrioritizeTextures
.ent __glOdyim_PrioritizeTextures
__glOdyim_PrioritizeTextures:
    # Line 5540
    addiu	$sp,$sp,-80
    sd	$s2,16($sp)
    # Line 5544
    lw	$at,4120($zero)
    lw	$s2,4112($zero)
    li	$v0,1
    # Line 5540
    lui	$v1,0x12
    sd	$ra,24($sp)
    addiu	$v1,$v1,-2960
    sd	$gp,8($sp)
    # Line 5544
    beq	$at,$v0,.L0d9d926c
    # Line 5540
    addu	$gp,$t9,$v1
    # Line 5544
    bltz	$a0,.L0d9d9250
    lui	$v0,0x1
    # Line 5550
    blez	$a0,.L0d9d9248
    sd	$s5,0($sp)
    sd	$s0,56($sp)
    sd	$s1,64($sp)
    sdc1	$f20,72($sp)
    sd	$s3,40($sp)
    mtc1	$zero,$f20
    move	$s1,$a2
    sd	$s6,48($sp)
    move	$s0,$a1
    sll	$s3,$a0,0x2
    la	$s6,sub_0d9e0000
    addu	$s5,$v0,$s2
    addu	$s3,$s3,$a1
    sd	$s4,32($sp)
    b	.L0d9d91bc
    addiu	$s6,$s6,-28432
    nop
    nop
.L0d9d91a0:
    # Line 5561
    move	$a1,$s4
    move	$a0,$s2
    jalr	$t9
    # Line 5559
    swc1	$f0,60($s4)
.L0d9d91b0:
    # Line 5550
    addiu	$s0,$s0,4
    beq	$s0,$s3,.L0d9d91f8
    addiu	$s1,$s1,4
.L0d9d91bc:
    # Line 5552
    lw	$a2,0($s0)
    beqz	$a2,.L0d9d91b0
    # Line 5555
    nop	# was lw $t9, -25700($gp) # &__glNamesLockData
    move	$a0,$s2
    jal	__glNamesLockData
    lw	$a1,25620($s5)
    # Line 5557
    beqz	$v0,.L0d9d91b0
    # Line 5555
    move	$s4,$v0
    # Line 5559
    move	$t9,$s6
    lwc1	$f14,3544($s2)
    mov.s	$f13,$f20
    bal __glOdyim_AreTexturesResident
    lwc1	$f12,0($s1)
    b	.L0d9d91a0
    # Line 5561
    nop	# was lw $t9, -25692($gp) # &__glNamesUnlockData
.L0d9d91f8:
    ld	$s3,40($sp)
    ld	$s6,48($sp)
    ld	$s4,32($sp)
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    ldc1	$f20,72($sp)
.L0d9d9210:
    # Line 5565
    ld	$gp,8($sp)
    ld	$s2,16($sp)
    # Line 5564
    lw	$t8,26980($s5)
    ld	$ra,24($sp)
    ori	$t8,$t8,0x200
    sw	$t8,26980($s5)
    li	$s5,2
    sw	$s5,4120($zero)
    # Line 5565
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9d923c:
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9d9248:
    b	.L0d9d9210
    # Line 5550
    addu	$s5,$v0,$s2
.L0d9d9250:
    # Line 5547
    # lw $t9, -26792($gp) # &__glSetError
    li	$a0,1281
    jal	__glSetError
    sd	$s5,0($sp)
    lui	$s5,0x1
    b	.L0d9d9210
    addu	$s5,$s5,$s2
.L0d9d926c:
    # Line 5544
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 5565
    ld	$gp,8($sp)
    b	.L0d9d923c
    ld	$ra,24($sp)
.end __glOdyim_PrioritizeTextures

# Function: __glOdyim_IsTexture
# Declared: Line 5568 (Source lines: 5569-5588)
# Address: 0x0d9d9290 - 0x0d9d9360 (Size: 208 bytes, Frame: 32)
.globl __glOdyim_IsTexture
.ent __glOdyim_IsTexture
__glOdyim_IsTexture:
    # Line 5569
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 5572
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 5569
    lui	$v1,0x12
    move	$a2,$a0
    sd	$ra,16($sp)
    addiu	$v1,$v1,-3328
    sd	$gp,0($sp)
    # Line 5572
    beq	$at,$v0,.L0d9d933c
    # Line 5569
    addu	$gp,$t9,$v1
    # Line 5572
    beqz	$a0,.L0d9d9324
    # Line 5581
    nop	# was lw $t9, -25700($gp) # &__glNamesLockData
    lui	$a1,0x1
    ori	$a1,$a1,0x6414
    addu	$a1,$a1,$s0
    move	$a0,$s0
    jal	__glNamesLockData
    lw	$a1,0($a1)
    bnez	$v0,.L0d9d9300
    # Line 5586
    nop	# was lw $t9, -25692($gp) # &__glNamesUnlockData
    ld	$ra,16($sp)
    # Line 5584
    move	$v0,$zero
    # Line 5588
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9d9300:
    # Line 5586
    move	$a0,$s0
    jal	__glNamesUnlockData
    move	$a1,$v0
    ld	$ra,16($sp)
    # Line 5588
    li	$v0,1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9d9324:
    move	$ra,$ra
    # Line 5575
    move	$v0,$zero
    # Line 5588
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9d933c:
    # Line 5572
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    move	$v0,$zero
    # Line 5588
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glOdyim_IsTexture

.late_rodata
jtbl_0dae9384:
    .word .L0d9cfc04
    .word .L0d9cfbf4
    .word .L0d9cfc74
    .word .L0d9cfbf4
    .word .L0d9cfc6c
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfc64
    .word .L0d9cfc5c
    .word .L0d9cfc54
    .word .L0d9cfc4c
    .word .L0d9cfc44
    .word .L0d9cfc3c
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfc34
    .word .L0d9cfbfc
    .word .L0d9cfc2c
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfc24
    .word .L0d9cfc1c
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfbf4
    .word .L0d9cfc14
    .word .L0d9cfc0c
jtbl_0dae944c:
    .word .L0d9cfcac
    .word .L0d9cfcac
    .word .L0d9cfd18
    .word .L0d9cfd18
    .word .L0d9cfd10
    .word .L0d9cfd10
    .word .L0d9cfd08
    .word .L0d9cfd08
    .word .L0d9cfcac
    .word .L0d9cfd18
    .word .L0d9cfd10
    .word .L0d9cfd00
    .word .L0d9cfcb4
    .word .L0d9cfcb4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfd00
    .word .L0d9cfcb4
    .word .L0d9cfcb4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfcb4
    .word .L0d9cfcb4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfca4
    .word .L0d9cfd08
    .word .L0d9cfcb4
jtbl_0dae9514:
    .word .L0d9d0220
    .word .L0d9d0220
    .word .L0d9d037c
    .word .L0d9d037c
    .word .L0d9d036c
    .word .L0d9d036c
    .word .L0d9d0350
    .word .L0d9d0350
    .word .L0d9d0340
    .word .L0d9d0330
    .word .L0d9d020c
    .word .L0d9d031c
    .word .L0d9d0300
    .word .L0d9d02e0
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d02c8
    .word .L0d9d02ac
    .word .L0d9d0288
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0268
    .word .L0d9d0268
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0218
    .word .L0d9d0250
    .word .L0d9d0230

.rdata
_lit8_3fa0000000000000:
    .word 0x3fa00000, 0x00000000
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_401fffc000000000:
    .word 0x401fffc0, 0x00000000
_lit8_403fff0000000000:
    .word 0x403fff00, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit8_c020000000000000:
    .word 0xc0200000, 0x00000000
_lit8_c040000000000000:
    .word 0xc0400000, 0x00000000
_lit_3d800000:
    .word 0x3d800000
_lit_3f800000:
    .word 0x3f800000
_lit_40fffe00:
    .word 0x40fffe00
_lit_41700000:
    .word 0x41700000
_lit_41fff800:
    .word 0x41fff800
_lit_43800000:
    .word 0x43800000
_lit_447a0000:
    .word 0x447a0000
_lit_457ff000:
    .word 0x457ff000
_lit_45800000:
    .word 0x45800000
_lit_c1000000:
    .word 0xc1000000
_lit_c1700000:
    .word 0xc1700000
_lit_c2000000:
    .word 0xc2000000
_lit_c47a0000:
    .word 0xc47a0000

