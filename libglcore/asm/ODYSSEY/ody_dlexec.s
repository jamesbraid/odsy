# Source: ../ODYSSEY/ody_dlexec.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_dlexec.c
# Total Functions: 11

.text

# Function: __glOdyle_TexImage1D
# Declared: Line 53 (Source lines: 54-70)
# Address: 0x0d971470 - 0x0d971618 (Size: 424 bytes, Frame: 208)
.globl __glOdyle_TexImage1D
.ent __glOdyle_TexImage1D
__glOdyle_TexImage1D:
    # Line 54
    addiu	$sp,$sp,-80
    sd	$s1,64($sp)
    sd	$s0,48($sp)
    move	$s1,$a0
    lui	$at,0x18
    # Line 57
    lw	$s0,4112($zero)
    # Line 59
    addiu	$a3,$sp,0
    # Line 54
    addiu	$at,$at,28960
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 59
    addiu	$a2,$s0,1188
    # Line 60
    la	$a3,__glOdyssey_InternalUnpack
    # Line 59
    lw	$v0,1188($s0)
    lw	$a4,1204($s0)
    lw	$a5,1208($s0)
    lw	$a0,1196($s0)
    lw	$v1,1192($s0)
    lw	$a1,1200($s0)
    lw	$t0,1212($s0)
    lw	$t1,1216($s0)
    lw	$t2,1220($s0)
    lw	$t3,1224($s0)
    lw	$t8,1228($s0)
    sw	$t8,40($sp)
    sw	$t3,36($sp)
    sw	$t2,32($sp)
    sw	$t1,28($sp)
    sw	$t0,24($sp)
    sw	$a1,12($sp)
    sw	$v1,4($sp)
    sw	$a0,8($sp)
    sw	$a5,20($sp)
    addiu	$a5,$s0,1228
    sw	$a4,16($sp)
    addiu	$a4,$s0,1224
    addiu	$a0,$s0,1220
    sw	$v0,0($sp)
    sd	$ra,72($sp)
    # Line 60
    lw	$t9,0($a3)
    sw	$t9,1188($s0)
    lw	$t8,4($a3)
    sw	$t8,1192($s0)
    lw	$t3,8($a3)
    sw	$t3,1196($s0)
    lw	$t2,12($a3)
    sw	$t2,1200($s0)
    lw	$t1,16($a3)
    sw	$t1,1204($s0)
    lw	$t0,20($a3)
    sw	$t0,1208($s0)
    lw	$a1,24($a3)
    sw	$a1,1212($s0)
    lw	$v1,28($a3)
    sw	$v1,1216($s0)
    lw	$v0,32($a3)
    sw	$v0,1220($s0)
    lw	$at,36($a3)
    sw	$at,1224($s0)
    lw	$t9,40($a3)
    sw	$t9,1228($s0)
    # Line 63
    lw	$a6,24($s1)
    lw	$a5,20($s1)
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$t9,4352($zero)
    lw	$a2,8($s1)
    lw	$a1,4($s1)
    addiu	$a7,$s1,32
    jalr	$t9
    lw	$a0,0($s1)
    ld	$ra,72($sp)
    # Line 69
    addiu	$a0,$s0,1188
    addiu	$a2,$sp,0
    lw	$v1,40($sp)
    lw	$at,32($sp)
    lw	$v0,36($sp)
    lw	$a1,28($sp)
    lw	$a5,24($sp)
    lw	$a6,20($sp)
    lw	$a7,16($sp)
    lw	$t0,12($sp)
    lw	$t1,8($sp)
    lw	$t2,4($sp)
    lw	$t3,0($sp)
    sw	$t3,1188($s0)
    sw	$t2,1192($s0)
    sw	$t1,1196($s0)
    sw	$t0,1200($s0)
    sw	$a7,1204($s0)
    sw	$a6,1208($s0)
    sw	$a5,1212($s0)
    sw	$a1,1216($s0)
    sw	$v0,1224($s0)
    sw	$at,1220($s0)
    sw	$v1,1228($s0)
    # Line 70
    li	$v1,-4
    lw	$v0,28($s1)
    ld	$s0,48($sp)
    addiu	$v0,$v0,3
    ld	$gp,56($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s1,$v0
    ld	$s1,64($sp)
    addiu	$sp,$sp,80
    jr	$ra
    addiu	$v0,$v0,32
.end __glOdyle_TexImage1D

# Function: __glOdyle_TexImage2D
# Declared: Line 78 (Source lines: 79-95)
# Address: 0x0d971620 - 0x0d9717d4 (Size: 436 bytes, Frame: 224)
.globl __glOdyle_TexImage2D
.ent __glOdyle_TexImage2D
__glOdyle_TexImage2D:
    # Line 79
    addiu	$sp,$sp,-96
    sd	$s0,64($sp)
    # Line 84
    addiu	$a3,$sp,16
    # Line 79
    lui	$at,0x18
    # Line 82
    lw	$s0,4112($zero)
    # Line 79
    sd	$s1,80($sp)
    move	$s1,$a0
    addiu	$at,$at,28528
    sd	$gp,72($sp)
    addu	$gp,$t9,$at
    # Line 84
    addiu	$a2,$s0,1188
    lw	$v0,1188($s0)
    lw	$a4,1204($s0)
    lw	$a5,1208($s0)
    lw	$a0,1196($s0)
    lw	$t8,1228($s0)
    lw	$t3,1224($s0)
    lw	$t2,1220($s0)
    lw	$t1,1216($s0)
    lw	$t0,1212($s0)
    lw	$a1,1200($s0)
    lw	$v1,1192($s0)
    sw	$v1,4($a3)
    sw	$a1,12($a3)
    sw	$t0,24($a3)
    sw	$t1,28($a3)
    sw	$t2,32($a3)
    sw	$t3,36($a3)
    sw	$t8,40($a3)
    sw	$a0,8($a3)
    sw	$a5,20($a3)
    addiu	$a5,$s0,1228
    sw	$a4,16($a3)
    sw	$v0,16($sp)
    addiu	$a4,$s0,1224
    addiu	$a0,$s0,1220
    # Line 85
    la	$a3,__glOdyssey_InternalUnpack
    sd	$ra,88($sp)
    lw	$t9,0($a3)
    sw	$t9,1188($s0)
    lw	$t8,4($a3)
    sw	$t8,1192($s0)
    lw	$t3,8($a3)
    sw	$t3,1196($s0)
    lw	$t2,12($a3)
    sw	$t2,1200($s0)
    lw	$t1,16($a3)
    sw	$t1,1204($s0)
    lw	$t0,20($a3)
    sw	$t0,1208($s0)
    lw	$a1,24($a3)
    sw	$a1,1212($s0)
    lw	$v1,28($a3)
    sw	$v1,1216($s0)
    lw	$v0,32($a3)
    sw	$v0,1220($s0)
    lw	$at,36($a3)
    sw	$at,1224($s0)
    lw	$t9,40($a3)
    sw	$t9,1228($s0)
    # Line 88
    lw	$a7,28($s1)
    lw	$a6,24($s1)
    lw	$a5,20($s1)
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$a2,8($s1)
    lw	$a1,4($s1)
    lw	$a0,0($s1)
    addiu	$ra,$s1,36
    sw	$ra,4($sp)
    lw	$t9,4356($zero)
    jalr	$t9
    nop
    ld	$ra,88($sp)
    # Line 94
    addiu	$a0,$s0,1188
    addiu	$a2,$sp,16
    lw	$v1,40($a2)
    lw	$at,32($a2)
    lw	$v0,36($a2)
    lw	$a1,28($a2)
    lw	$a5,24($a2)
    lw	$a6,20($a2)
    lw	$a7,16($a2)
    lw	$t0,12($a2)
    lw	$t1,8($a2)
    lw	$t2,4($a2)
    lw	$t3,16($sp)
    sw	$t3,1188($s0)
    sw	$t2,1192($s0)
    sw	$t1,1196($s0)
    sw	$t0,1200($s0)
    sw	$a7,1204($s0)
    sw	$a6,1208($s0)
    sw	$a5,1212($s0)
    sw	$a1,1216($s0)
    sw	$v0,1224($s0)
    sw	$at,1220($s0)
    sw	$v1,1228($s0)
    # Line 95
    li	$v1,-4
    lw	$v0,32($s1)
    ld	$s0,64($sp)
    addiu	$v0,$v0,3
    ld	$gp,72($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s1,$v0
    ld	$s1,80($sp)
    addiu	$sp,$sp,96
    jr	$ra
    addiu	$v0,$v0,36
.end __glOdyle_TexImage2D

# Function: __glOdyle_TexImage3DEXT
# Declared: Line 103 (Source lines: 104-120)
# Address: 0x0d9717e0 - 0x0d97199c (Size: 444 bytes, Frame: 224)
.globl __glOdyle_TexImage3DEXT
.ent __glOdyle_TexImage3DEXT
__glOdyle_TexImage3DEXT:
    # Line 104
    addiu	$sp,$sp,-96
    sd	$s0,64($sp)
    # Line 109
    addiu	$a3,$sp,16
    # Line 104
    lui	$at,0x18
    # Line 107
    lw	$s0,4112($zero)
    # Line 104
    sd	$s1,80($sp)
    move	$s1,$a0
    addiu	$at,$at,28080
    sd	$gp,72($sp)
    addu	$gp,$t9,$at
    # Line 109
    addiu	$a2,$s0,1188
    lw	$v0,1188($s0)
    lw	$a4,1204($s0)
    lw	$a5,1208($s0)
    lw	$a0,1196($s0)
    lw	$t8,1228($s0)
    lw	$t3,1224($s0)
    lw	$t2,1220($s0)
    lw	$t1,1216($s0)
    lw	$t0,1212($s0)
    lw	$a1,1200($s0)
    lw	$v1,1192($s0)
    sw	$v1,4($a3)
    sw	$a1,12($a3)
    sw	$t0,24($a3)
    sw	$t1,28($a3)
    sw	$t2,32($a3)
    sw	$t3,36($a3)
    sw	$t8,40($a3)
    sw	$a0,8($a3)
    sw	$a5,20($a3)
    addiu	$a5,$s0,1228
    sw	$a4,16($a3)
    sw	$v0,16($sp)
    addiu	$a4,$s0,1224
    addiu	$a0,$s0,1220
    # Line 110
    la	$a3,__glOdyssey_InternalUnpack
    sd	$ra,88($sp)
    lw	$t9,0($a3)
    sw	$t9,1188($s0)
    lw	$t8,4($a3)
    sw	$t8,1192($s0)
    lw	$t3,8($a3)
    sw	$t3,1196($s0)
    lw	$t2,12($a3)
    sw	$t2,1200($s0)
    lw	$t1,16($a3)
    sw	$t1,1204($s0)
    lw	$t0,20($a3)
    sw	$t0,1208($s0)
    lw	$a1,24($a3)
    sw	$a1,1212($s0)
    lw	$v1,28($a3)
    sw	$v1,1216($s0)
    lw	$v0,32($a3)
    sw	$v0,1220($s0)
    lw	$at,36($a3)
    sw	$at,1224($s0)
    lw	$t9,40($a3)
    sw	$t9,1228($s0)
    # Line 113
    lw	$a7,28($s1)
    lw	$a6,24($s1)
    lw	$a5,20($s1)
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$a2,8($s1)
    lw	$a1,4($s1)
    lw	$a0,0($s1)
    lw	$at,32($s1)
    addiu	$ra,$s1,40
    sw	$ra,12($sp)
    sw	$at,4($sp)
    lw	$t9,4960($zero)
    jalr	$t9
    nop
    ld	$ra,88($sp)
    # Line 119
    addiu	$a0,$s0,1188
    addiu	$a2,$sp,16
    lw	$v1,36($a2)
    lw	$v0,32($a2)
    lw	$a1,40($a2)
    lw	$a5,28($a2)
    lw	$a6,24($a2)
    lw	$a7,20($a2)
    lw	$t0,16($a2)
    lw	$t1,12($a2)
    lw	$t2,8($a2)
    lw	$t3,4($a2)
    lw	$t8,16($sp)
    sw	$t8,1188($s0)
    sw	$t3,1192($s0)
    sw	$t2,1196($s0)
    sw	$t1,1200($s0)
    sw	$t0,1204($s0)
    sw	$a7,1208($s0)
    sw	$a6,1212($s0)
    sw	$a5,1216($s0)
    sw	$a1,1228($s0)
    sw	$v0,1220($s0)
    sw	$v1,1224($s0)
    # Line 120
    li	$v1,-4
    lw	$v0,36($s1)
    ld	$s0,64($sp)
    addiu	$v0,$v0,3
    ld	$gp,72($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s1,$v0
    ld	$s1,80($sp)
    addiu	$sp,$sp,96
    jr	$ra
    addiu	$v0,$v0,40
.end __glOdyle_TexImage3DEXT

# Function: __glOdyle_TexSubImage1DEXT
# Declared: Line 128 (Source lines: 129-144)
# Address: 0x0d9719a0 - 0x0d971b44 (Size: 420 bytes, Frame: 208)
.globl __glOdyle_TexSubImage1DEXT
.ent __glOdyle_TexSubImage1DEXT
__glOdyle_TexSubImage1DEXT:
    # Line 129
    addiu	$sp,$sp,-80
    sd	$s1,64($sp)
    sd	$s0,48($sp)
    move	$s1,$a0
    lui	$at,0x18
    # Line 132
    lw	$s0,4112($zero)
    # Line 134
    addiu	$a3,$sp,0
    # Line 129
    addiu	$at,$at,27632
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 134
    addiu	$a2,$s0,1188
    # Line 135
    la	$a3,__glOdyssey_InternalUnpack
    # Line 134
    lw	$v0,1188($s0)
    lw	$a4,1204($s0)
    lw	$a5,1208($s0)
    lw	$a0,1196($s0)
    lw	$v1,1192($s0)
    lw	$a1,1200($s0)
    lw	$t0,1212($s0)
    lw	$t1,1216($s0)
    lw	$t2,1220($s0)
    lw	$t3,1224($s0)
    lw	$t8,1228($s0)
    sw	$t8,40($sp)
    sw	$t3,36($sp)
    sw	$t2,32($sp)
    sw	$t1,28($sp)
    sw	$t0,24($sp)
    sw	$a1,12($sp)
    sw	$v1,4($sp)
    sw	$a0,8($sp)
    sw	$a5,20($sp)
    addiu	$a5,$s0,1228
    sw	$a4,16($sp)
    addiu	$a4,$s0,1224
    addiu	$a0,$s0,1220
    sw	$v0,0($sp)
    sd	$ra,72($sp)
    # Line 135
    lw	$t9,0($a3)
    sw	$t9,1188($s0)
    lw	$t8,4($a3)
    sw	$t8,1192($s0)
    lw	$t3,8($a3)
    sw	$t3,1196($s0)
    lw	$t2,12($a3)
    sw	$t2,1200($s0)
    lw	$t1,16($a3)
    sw	$t1,1204($s0)
    lw	$t0,20($a3)
    sw	$t0,1208($s0)
    lw	$a1,24($a3)
    sw	$a1,1212($s0)
    lw	$v1,28($a3)
    sw	$v1,1216($s0)
    lw	$v0,32($a3)
    sw	$v0,1220($s0)
    lw	$at,36($a3)
    sw	$at,1224($s0)
    lw	$t9,40($a3)
    sw	$t9,1228($s0)
    # Line 138
    lw	$a5,20($s1)
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$t9,4860($zero)
    lw	$a2,8($s1)
    lw	$a1,4($s1)
    addiu	$a6,$s1,28
    jalr	$t9
    lw	$a0,0($s1)
    ld	$ra,72($sp)
    # Line 143
    addiu	$a0,$s0,1188
    addiu	$a2,$sp,0
    lw	$v1,40($sp)
    lw	$at,32($sp)
    lw	$v0,36($sp)
    lw	$a1,28($sp)
    lw	$a5,24($sp)
    lw	$a6,20($sp)
    lw	$a7,16($sp)
    lw	$t0,12($sp)
    lw	$t1,8($sp)
    lw	$t2,4($sp)
    lw	$t3,0($sp)
    sw	$t3,1188($s0)
    sw	$t2,1192($s0)
    sw	$t1,1196($s0)
    sw	$t0,1200($s0)
    sw	$a7,1204($s0)
    sw	$a6,1208($s0)
    sw	$a5,1212($s0)
    sw	$a1,1216($s0)
    sw	$v0,1224($s0)
    sw	$at,1220($s0)
    sw	$v1,1228($s0)
    # Line 144
    li	$v1,-4
    lw	$v0,24($s1)
    ld	$s0,48($sp)
    addiu	$v0,$v0,3
    ld	$gp,56($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s1,$v0
    ld	$s1,64($sp)
    addiu	$sp,$sp,80
    jr	$ra
    addiu	$v0,$v0,28
.end __glOdyle_TexSubImage1DEXT

# Function: __glOdyle_TexSubImage2DEXT
# Declared: Line 152 (Source lines: 153-170)
# Address: 0x0d971b50 - 0x0d971d04 (Size: 436 bytes, Frame: 224)
.globl __glOdyle_TexSubImage2DEXT
.ent __glOdyle_TexSubImage2DEXT
__glOdyle_TexSubImage2DEXT:
    # Line 153
    addiu	$sp,$sp,-96
    sd	$s0,64($sp)
    # Line 158
    addiu	$a3,$sp,16
    # Line 153
    lui	$at,0x18
    # Line 156
    lw	$s0,4112($zero)
    # Line 153
    sd	$s1,80($sp)
    move	$s1,$a0
    addiu	$at,$at,27200
    sd	$gp,72($sp)
    addu	$gp,$t9,$at
    # Line 158
    addiu	$a2,$s0,1188
    lw	$v0,1188($s0)
    lw	$a4,1204($s0)
    lw	$a5,1208($s0)
    lw	$a0,1196($s0)
    lw	$t8,1228($s0)
    lw	$t3,1224($s0)
    lw	$t2,1220($s0)
    lw	$t1,1216($s0)
    lw	$t0,1212($s0)
    lw	$a1,1200($s0)
    lw	$v1,1192($s0)
    sw	$v1,4($a3)
    sw	$a1,12($a3)
    sw	$t0,24($a3)
    sw	$t1,28($a3)
    sw	$t2,32($a3)
    sw	$t3,36($a3)
    sw	$t8,40($a3)
    sw	$a0,8($a3)
    sw	$a5,20($a3)
    addiu	$a5,$s0,1228
    sw	$a4,16($a3)
    sw	$v0,16($sp)
    addiu	$a4,$s0,1224
    addiu	$a0,$s0,1220
    # Line 159
    la	$a3,__glOdyssey_InternalUnpack
    sd	$ra,88($sp)
    lw	$t9,0($a3)
    sw	$t9,1188($s0)
    lw	$t8,4($a3)
    sw	$t8,1192($s0)
    lw	$t3,8($a3)
    sw	$t3,1196($s0)
    lw	$t2,12($a3)
    sw	$t2,1200($s0)
    lw	$t1,16($a3)
    sw	$t1,1204($s0)
    lw	$t0,20($a3)
    sw	$t0,1208($s0)
    lw	$a1,24($a3)
    sw	$a1,1212($s0)
    lw	$v1,28($a3)
    sw	$v1,1216($s0)
    lw	$v0,32($a3)
    sw	$v0,1220($s0)
    lw	$at,36($a3)
    sw	$at,1224($s0)
    lw	$t9,40($a3)
    sw	$t9,1228($s0)
    # Line 162
    lw	$a7,28($s1)
    lw	$a6,24($s1)
    lw	$a5,20($s1)
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$a2,8($s1)
    lw	$a1,4($s1)
    lw	$a0,0($s1)
    addiu	$ra,$s1,36
    sw	$ra,4($sp)
    lw	$t9,4864($zero)
    jalr	$t9
    nop
    ld	$ra,88($sp)
    # Line 169
    addiu	$a0,$s0,1188
    addiu	$a2,$sp,16
    lw	$v1,40($a2)
    lw	$at,32($a2)
    lw	$v0,36($a2)
    lw	$a1,28($a2)
    lw	$a5,24($a2)
    lw	$a6,20($a2)
    lw	$a7,16($a2)
    lw	$t0,12($a2)
    lw	$t1,8($a2)
    lw	$t2,4($a2)
    lw	$t3,16($sp)
    sw	$t3,1188($s0)
    sw	$t2,1192($s0)
    sw	$t1,1196($s0)
    sw	$t0,1200($s0)
    sw	$a7,1204($s0)
    sw	$a6,1208($s0)
    sw	$a5,1212($s0)
    sw	$a1,1216($s0)
    sw	$v0,1224($s0)
    sw	$at,1220($s0)
    sw	$v1,1228($s0)
    # Line 170
    li	$v1,-4
    lw	$v0,32($s1)
    ld	$s0,64($sp)
    addiu	$v0,$v0,3
    ld	$gp,72($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s1,$v0
    ld	$s1,80($sp)
    addiu	$sp,$sp,96
    jr	$ra
    addiu	$v0,$v0,36
.end __glOdyle_TexSubImage2DEXT

# Function: __glOdyle_TexSubImage3DEXT
# Declared: Line 178 (Source lines: 179-196)
# Address: 0x0d971d10 - 0x0d971ed4 (Size: 452 bytes, Frame: 240)
.globl __glOdyle_TexSubImage3DEXT
.ent __glOdyle_TexSubImage3DEXT
__glOdyle_TexSubImage3DEXT:
    # Line 179
    addiu	$sp,$sp,-112
    sd	$s0,80($sp)
    # Line 184
    addiu	$a3,$sp,32
    # Line 179
    lui	$at,0x18
    # Line 182
    lw	$s0,4112($zero)
    # Line 179
    sd	$s1,96($sp)
    move	$s1,$a0
    addiu	$at,$at,26752
    sd	$gp,88($sp)
    addu	$gp,$t9,$at
    # Line 184
    addiu	$a2,$s0,1188
    lw	$v0,1188($s0)
    lw	$a4,1204($s0)
    lw	$a5,1208($s0)
    lw	$a0,1196($s0)
    lw	$t8,1228($s0)
    lw	$t3,1224($s0)
    lw	$t2,1220($s0)
    lw	$t1,1216($s0)
    lw	$t0,1212($s0)
    lw	$a1,1200($s0)
    lw	$v1,1192($s0)
    sw	$v1,4($a3)
    sw	$a1,12($a3)
    sw	$t0,24($a3)
    sw	$t1,28($a3)
    sw	$t2,32($a3)
    sw	$t3,36($a3)
    sw	$t8,40($a3)
    sw	$a0,8($a3)
    sw	$a5,20($a3)
    addiu	$a5,$s0,1228
    sw	$a4,16($a3)
    sw	$v0,32($sp)
    addiu	$a4,$s0,1224
    addiu	$a0,$s0,1220
    # Line 185
    la	$a3,__glOdyssey_InternalUnpack
    sd	$ra,104($sp)
    lw	$t9,0($a3)
    sw	$t9,1188($s0)
    lw	$t8,4($a3)
    sw	$t8,1192($s0)
    lw	$t3,8($a3)
    sw	$t3,1196($s0)
    lw	$t2,12($a3)
    sw	$t2,1200($s0)
    lw	$t1,16($a3)
    sw	$t1,1204($s0)
    lw	$t0,20($a3)
    sw	$t0,1208($s0)
    lw	$a1,24($a3)
    sw	$a1,1212($s0)
    lw	$v1,28($a3)
    sw	$v1,1216($s0)
    lw	$v0,32($a3)
    sw	$v0,1220($s0)
    lw	$at,36($a3)
    sw	$at,1224($s0)
    lw	$t9,40($a3)
    sw	$t9,1228($s0)
    # Line 188
    lw	$a7,28($s1)
    lw	$a6,24($s1)
    lw	$a5,20($s1)
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$a2,8($s1)
    lw	$a1,4($s1)
    lw	$a0,0($s1)
    lw	$v0,32($s1)
    sw	$v0,4($sp)
    lw	$at,36($s1)
    addiu	$ra,$s1,44
    sw	$ra,20($sp)
    sw	$at,12($sp)
    lw	$t9,4964($zero)
    jalr	$t9
    nop
    ld	$ra,104($sp)
    # Line 195
    addiu	$a0,$s0,1188
    addiu	$a2,$sp,32
    lw	$v1,32($a2)
    lw	$a1,36($a2)
    lw	$a5,40($a2)
    lw	$a6,28($a2)
    lw	$a7,24($a2)
    lw	$t0,20($a2)
    lw	$t1,16($a2)
    lw	$t2,12($a2)
    lw	$t3,8($a2)
    lw	$t8,4($a2)
    lw	$t9,32($sp)
    sw	$t9,1188($s0)
    sw	$t8,1192($s0)
    sw	$t3,1196($s0)
    sw	$t2,1200($s0)
    sw	$t1,1204($s0)
    sw	$t0,1208($s0)
    sw	$a7,1212($s0)
    sw	$a6,1216($s0)
    sw	$a5,1228($s0)
    sw	$a1,1224($s0)
    sw	$v1,1220($s0)
    # Line 196
    li	$v1,-4
    lw	$v0,40($s1)
    ld	$s0,80($sp)
    addiu	$v0,$v0,3
    ld	$gp,88($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s1,$v0
    ld	$s1,96($sp)
    addiu	$sp,$sp,112
    jr	$ra
    addiu	$v0,$v0,44
.end __glOdyle_TexSubImage3DEXT

# Function: __glOdyle_ConvolutionFilter1DEXT
# Declared: Line 204 (Source lines: 205-222)
# Address: 0x0d971ee0 - 0x0d972074 (Size: 404 bytes, Frame: 208)
.globl __glOdyle_ConvolutionFilter1DEXT
.ent __glOdyle_ConvolutionFilter1DEXT
__glOdyle_ConvolutionFilter1DEXT:
    # Line 205
    addiu	$sp,$sp,-80
    sd	$s1,64($sp)
    sd	$s0,48($sp)
    move	$s1,$a0
    lui	$at,0x18
    # Line 210
    lw	$s0,4112($zero)
    # Line 212
    addiu	$a3,$sp,0
    # Line 205
    addiu	$at,$at,26288
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 212
    addiu	$a2,$s0,1188
    # Line 213
    la	$a3,__glOdyssey_InternalUnpack
    # Line 212
    lw	$v0,1188($s0)
    lw	$a4,1204($s0)
    lw	$a5,1208($s0)
    lw	$a0,1196($s0)
    lw	$v1,1192($s0)
    lw	$a1,1200($s0)
    lw	$t0,1212($s0)
    lw	$t1,1216($s0)
    lw	$t2,1220($s0)
    lw	$t3,1224($s0)
    lw	$t8,1228($s0)
    sw	$t8,40($sp)
    sw	$t3,36($sp)
    sw	$t2,32($sp)
    sw	$t1,28($sp)
    sw	$t0,24($sp)
    sw	$a1,12($sp)
    sw	$v1,4($sp)
    sw	$a0,8($sp)
    sw	$a5,20($sp)
    addiu	$a5,$s0,1228
    sw	$a4,16($sp)
    addiu	$a4,$s0,1224
    addiu	$a0,$s0,1220
    sw	$v0,0($sp)
    sd	$ra,72($sp)
    # Line 213
    lw	$t9,0($a3)
    sw	$t9,1188($s0)
    lw	$t8,4($a3)
    sw	$t8,1192($s0)
    lw	$t3,8($a3)
    sw	$t3,1196($s0)
    lw	$t2,12($a3)
    sw	$t2,1200($s0)
    lw	$t1,16($a3)
    sw	$t1,1204($s0)
    lw	$t0,20($a3)
    sw	$t0,1208($s0)
    lw	$a1,24($a3)
    sw	$a1,1212($s0)
    lw	$v1,28($a3)
    sw	$v1,1216($s0)
    lw	$v0,32($a3)
    sw	$v0,1220($s0)
    lw	$at,36($a3)
    sw	$at,1224($s0)
    lw	$t9,40($a3)
    sw	$t9,1228($s0)
    # Line 216
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$t9,4868($zero)
    lw	$a2,8($s1)
    lw	$a1,4($s1)
    addiu	$a5,$s1,24
    jalr	$t9
    lw	$a0,0($s1)
    ld	$ra,72($sp)
    # Line 221
    addiu	$a0,$s0,1188
    addiu	$a2,$sp,0
    # Line 222
    ld	$gp,56($sp)
    # Line 221
    lw	$at,32($sp)
    lw	$v0,36($sp)
    lw	$v1,40($sp)
    lw	$a1,28($sp)
    lw	$a5,24($sp)
    lw	$a6,20($sp)
    lw	$a7,16($sp)
    lw	$t0,12($sp)
    lw	$t1,8($sp)
    lw	$t2,4($sp)
    lw	$t3,0($sp)
    sw	$t3,1188($s0)
    sw	$t2,1192($s0)
    sw	$t1,1196($s0)
    sw	$t0,1200($s0)
    sw	$a7,1204($s0)
    sw	$a6,1208($s0)
    sw	$a5,1212($s0)
    sw	$a1,1216($s0)
    sw	$v1,1228($s0)
    sw	$v0,1224($s0)
    sw	$at,1220($s0)
    # Line 222
    lw	$v0,20($s1)
    ld	$s0,48($sp)
    addu	$v0,$v0,$s1
    ld	$s1,64($sp)
    addiu	$sp,$sp,80
    jr	$ra
    addiu	$v0,$v0,24
.end __glOdyle_ConvolutionFilter1DEXT

# Function: __glOdyle_ConvolutionFilter2DEXT
# Declared: Line 230 (Source lines: 231-248)
# Address: 0x0d972080 - 0x0d972218 (Size: 408 bytes, Frame: 208)
.globl __glOdyle_ConvolutionFilter2DEXT
.ent __glOdyle_ConvolutionFilter2DEXT
__glOdyle_ConvolutionFilter2DEXT:
    # Line 231
    addiu	$sp,$sp,-80
    sd	$s1,64($sp)
    sd	$s0,48($sp)
    move	$s1,$a0
    lui	$at,0x18
    # Line 236
    lw	$s0,4112($zero)
    # Line 238
    addiu	$a3,$sp,0
    # Line 231
    addiu	$at,$at,25872
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 238
    addiu	$a2,$s0,1188
    # Line 239
    la	$a3,__glOdyssey_InternalUnpack
    # Line 238
    lw	$v0,1188($s0)
    lw	$a4,1204($s0)
    lw	$a5,1208($s0)
    lw	$a0,1196($s0)
    lw	$v1,1192($s0)
    lw	$a1,1200($s0)
    lw	$t0,1212($s0)
    lw	$t1,1216($s0)
    lw	$t2,1220($s0)
    lw	$t3,1224($s0)
    lw	$t8,1228($s0)
    sw	$t8,40($sp)
    sw	$t3,36($sp)
    sw	$t2,32($sp)
    sw	$t1,28($sp)
    sw	$t0,24($sp)
    sw	$a1,12($sp)
    sw	$v1,4($sp)
    sw	$a0,8($sp)
    sw	$a5,20($sp)
    addiu	$a5,$s0,1228
    sw	$a4,16($sp)
    addiu	$a4,$s0,1224
    addiu	$a0,$s0,1220
    sw	$v0,0($sp)
    sd	$ra,72($sp)
    # Line 239
    lw	$t9,0($a3)
    sw	$t9,1188($s0)
    lw	$t8,4($a3)
    sw	$t8,1192($s0)
    lw	$t3,8($a3)
    sw	$t3,1196($s0)
    lw	$t2,12($a3)
    sw	$t2,1200($s0)
    lw	$t1,16($a3)
    sw	$t1,1204($s0)
    lw	$t0,20($a3)
    sw	$t0,1208($s0)
    lw	$a1,24($a3)
    sw	$a1,1212($s0)
    lw	$v1,28($a3)
    sw	$v1,1216($s0)
    lw	$v0,32($a3)
    sw	$v0,1220($s0)
    lw	$at,36($a3)
    sw	$at,1224($s0)
    lw	$t9,40($a3)
    sw	$t9,1228($s0)
    # Line 242
    lw	$a5,20($s1)
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$t9,4872($zero)
    lw	$a2,8($s1)
    lw	$a1,4($s1)
    addiu	$a6,$s1,28
    jalr	$t9
    lw	$a0,0($s1)
    ld	$ra,72($sp)
    # Line 247
    addiu	$a0,$s0,1188
    addiu	$a2,$sp,0
    # Line 248
    ld	$gp,56($sp)
    # Line 247
    lw	$at,32($sp)
    lw	$v0,36($sp)
    lw	$v1,40($sp)
    lw	$a1,28($sp)
    lw	$a5,24($sp)
    lw	$a6,20($sp)
    lw	$a7,16($sp)
    lw	$t0,12($sp)
    lw	$t1,8($sp)
    lw	$t2,4($sp)
    lw	$t3,0($sp)
    sw	$t3,1188($s0)
    sw	$t2,1192($s0)
    sw	$t1,1196($s0)
    sw	$t0,1200($s0)
    sw	$a7,1204($s0)
    sw	$a6,1208($s0)
    sw	$a5,1212($s0)
    sw	$a1,1216($s0)
    sw	$v1,1228($s0)
    sw	$v0,1224($s0)
    sw	$at,1220($s0)
    # Line 248
    lw	$v0,24($s1)
    ld	$s0,48($sp)
    addu	$v0,$v0,$s1
    ld	$s1,64($sp)
    addiu	$sp,$sp,80
    jr	$ra
    addiu	$v0,$v0,28
.end __glOdyle_ConvolutionFilter2DEXT

# Function: __glOdyle_SeparableFilter2DEXT
# Declared: Line 274 (Source lines: 275-293)
# Address: 0x0d972220 - 0x0d9723cc (Size: 428 bytes, Frame: 208)
.globl __glOdyle_SeparableFilter2DEXT
.ent __glOdyle_SeparableFilter2DEXT
__glOdyle_SeparableFilter2DEXT:
    # Line 275
    addiu	$sp,$sp,-80
    sd	$s1,64($sp)
    sd	$s0,48($sp)
    move	$s1,$a0
    lui	$at,0x18
    # Line 280
    lw	$s0,4112($zero)
    # Line 282
    addiu	$a3,$sp,0
    # Line 275
    addiu	$at,$at,25456
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 282
    addiu	$a2,$s0,1188
    # Line 283
    la	$a3,__glOdyssey_InternalUnpack
    # Line 282
    lw	$v0,1188($s0)
    lw	$a4,1204($s0)
    lw	$a5,1208($s0)
    lw	$a0,1196($s0)
    lw	$v1,1192($s0)
    lw	$a1,1200($s0)
    lw	$t0,1212($s0)
    lw	$t1,1216($s0)
    lw	$t2,1220($s0)
    lw	$t3,1224($s0)
    lw	$t8,1228($s0)
    sw	$t8,40($sp)
    sw	$t3,36($sp)
    sw	$t2,32($sp)
    sw	$t1,28($sp)
    sw	$t0,24($sp)
    sw	$a1,12($sp)
    sw	$v1,4($sp)
    sw	$a0,8($sp)
    sw	$a5,20($sp)
    addiu	$a5,$s0,1228
    sw	$a4,16($sp)
    addiu	$a4,$s0,1224
    addiu	$a0,$s0,1220
    sw	$v0,0($sp)
    sd	$ra,72($sp)
    # Line 283
    lw	$t9,0($a3)
    sw	$t9,1188($s0)
    lw	$t8,4($a3)
    sw	$t8,1192($s0)
    lw	$t3,8($a3)
    sw	$t3,1196($s0)
    lw	$t2,12($a3)
    sw	$t2,1200($s0)
    lw	$t1,16($a3)
    sw	$t1,1204($s0)
    lw	$t0,20($a3)
    sw	$t0,1208($s0)
    lw	$a1,24($a3)
    sw	$a1,1212($s0)
    lw	$v1,28($a3)
    sw	$v1,1216($s0)
    lw	$v0,32($a3)
    sw	$v0,1220($s0)
    lw	$at,36($a3)
    sw	$at,1224($s0)
    lw	$t9,40($a3)
    sw	$t9,1228($s0)
    # Line 287
    lw	$a5,20($s1)
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$t9,4916($zero)
    lw	$a7,24($s1)
    lw	$a2,8($s1)
    addiu	$a6,$s1,32
    lw	$a1,4($s1)
    addu	$a7,$a7,$s1
    lw	$a0,0($s1)
    jalr	$t9
    addiu	$a7,$a7,32
    ld	$ra,72($sp)
    # Line 292
    addiu	$a0,$s0,1188
    addiu	$a2,$sp,0
    # Line 293
    ld	$gp,56($sp)
    # Line 292
    lw	$t0,32($sp)
    lw	$t1,36($sp)
    lw	$t2,40($sp)
    lw	$t3,28($sp)
    lw	$t8,24($sp)
    lw	$t9,20($sp)
    lw	$at,16($sp)
    lw	$v0,12($sp)
    lw	$v1,8($sp)
    lw	$a1,4($sp)
    lw	$a5,0($sp)
    sw	$a5,1188($s0)
    sw	$a1,1192($s0)
    sw	$v1,1196($s0)
    sw	$v0,1200($s0)
    sw	$at,1204($s0)
    sw	$t9,1208($s0)
    sw	$t8,1212($s0)
    sw	$t3,1216($s0)
    sw	$t2,1228($s0)
    sw	$t1,1224($s0)
    sw	$t0,1220($s0)
    # Line 293
    lw	$v1,24($s1)
    lw	$v0,28($s1)
    ld	$s0,48($sp)
    addu	$v1,$v1,$s1
    ld	$s1,64($sp)
    addiu	$sp,$sp,80
    addu	$v0,$v0,$v1
    jr	$ra
    addiu	$v0,$v0,32
.end __glOdyle_SeparableFilter2DEXT

# Function: __glOdyle_ColorTableSGI
# Declared: Line 301 (Source lines: 302-318)
# Address: 0x0d9723d0 - 0x0d972564 (Size: 404 bytes, Frame: 208)
.globl __glOdyle_ColorTableSGI
.ent __glOdyle_ColorTableSGI
__glOdyle_ColorTableSGI:
    # Line 302
    addiu	$sp,$sp,-80
    sd	$s1,64($sp)
    sd	$s0,48($sp)
    move	$s1,$a0
    lui	$at,0x18
    # Line 307
    lw	$s0,4112($zero)
    # Line 309
    addiu	$a3,$sp,0
    # Line 302
    addiu	$at,$at,25024
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 309
    addiu	$a2,$s0,1188
    # Line 310
    la	$a3,__glOdyssey_InternalUnpack
    # Line 309
    lw	$v0,1188($s0)
    lw	$a4,1204($s0)
    lw	$a5,1208($s0)
    lw	$a0,1196($s0)
    lw	$v1,1192($s0)
    lw	$a1,1200($s0)
    lw	$t0,1212($s0)
    lw	$t1,1216($s0)
    lw	$t2,1220($s0)
    lw	$t3,1224($s0)
    lw	$t8,1228($s0)
    sw	$t8,40($sp)
    sw	$t3,36($sp)
    sw	$t2,32($sp)
    sw	$t1,28($sp)
    sw	$t0,24($sp)
    sw	$a1,12($sp)
    sw	$v1,4($sp)
    sw	$a0,8($sp)
    sw	$a5,20($sp)
    addiu	$a5,$s0,1228
    sw	$a4,16($sp)
    addiu	$a4,$s0,1224
    addiu	$a0,$s0,1220
    sw	$v0,0($sp)
    sd	$ra,72($sp)
    # Line 310
    lw	$t9,0($a3)
    sw	$t9,1188($s0)
    lw	$t8,4($a3)
    sw	$t8,1192($s0)
    lw	$t3,8($a3)
    sw	$t3,1196($s0)
    lw	$t2,12($a3)
    sw	$t2,1200($s0)
    lw	$t1,16($a3)
    sw	$t1,1204($s0)
    lw	$t0,20($a3)
    sw	$t0,1208($s0)
    lw	$a1,24($a3)
    sw	$a1,1212($s0)
    lw	$v1,28($a3)
    sw	$v1,1216($s0)
    lw	$v0,32($a3)
    sw	$v0,1220($s0)
    lw	$at,36($a3)
    sw	$at,1224($s0)
    lw	$t9,40($a3)
    sw	$t9,1228($s0)
    # Line 313
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$t9,5128($zero)
    lw	$a2,8($s1)
    lw	$a1,4($s1)
    addiu	$a5,$s1,24
    jalr	$t9
    lw	$a0,0($s1)
    ld	$ra,72($sp)
    # Line 317
    addiu	$a0,$s0,1188
    addiu	$a2,$sp,0
    # Line 318
    ld	$gp,56($sp)
    # Line 317
    lw	$at,32($sp)
    lw	$v0,36($sp)
    lw	$v1,40($sp)
    lw	$a1,28($sp)
    lw	$a5,24($sp)
    lw	$a6,20($sp)
    lw	$a7,16($sp)
    lw	$t0,12($sp)
    lw	$t1,8($sp)
    lw	$t2,4($sp)
    lw	$t3,0($sp)
    sw	$t3,1188($s0)
    sw	$t2,1192($s0)
    sw	$t1,1196($s0)
    sw	$t0,1200($s0)
    sw	$a7,1204($s0)
    sw	$a6,1208($s0)
    sw	$a5,1212($s0)
    sw	$a1,1216($s0)
    sw	$v1,1228($s0)
    sw	$v0,1224($s0)
    sw	$at,1220($s0)
    # Line 318
    lw	$v0,20($s1)
    ld	$s0,48($sp)
    addu	$v0,$v0,$s1
    ld	$s1,64($sp)
    addiu	$sp,$sp,80
    jr	$ra
    addiu	$v0,$v0,24
.end __glOdyle_ColorTableSGI

# Function: __glOdyle_ColorSubTable
# Declared: Line 325 (Source lines: 326-342)
# Address: 0x0d972570 - 0x0d972704 (Size: 404 bytes, Frame: 208)
.globl __glOdyle_ColorSubTable
.ent __glOdyle_ColorSubTable
__glOdyle_ColorSubTable:
    # Line 326
    addiu	$sp,$sp,-80
    sd	$s1,64($sp)
    sd	$s0,48($sp)
    move	$s1,$a0
    lui	$at,0x18
    # Line 331
    lw	$s0,4112($zero)
    # Line 333
    addiu	$a3,$sp,0
    # Line 326
    addiu	$at,$at,24608
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 333
    addiu	$a2,$s0,1188
    # Line 334
    la	$a3,__glOdyssey_InternalUnpack
    # Line 333
    lw	$v0,1188($s0)
    lw	$a4,1204($s0)
    lw	$a5,1208($s0)
    lw	$a0,1196($s0)
    lw	$v1,1192($s0)
    lw	$a1,1200($s0)
    lw	$t0,1212($s0)
    lw	$t1,1216($s0)
    lw	$t2,1220($s0)
    lw	$t3,1224($s0)
    lw	$t8,1228($s0)
    sw	$t8,40($sp)
    sw	$t3,36($sp)
    sw	$t2,32($sp)
    sw	$t1,28($sp)
    sw	$t0,24($sp)
    sw	$a1,12($sp)
    sw	$v1,4($sp)
    sw	$a0,8($sp)
    sw	$a5,20($sp)
    addiu	$a5,$s0,1228
    sw	$a4,16($sp)
    addiu	$a4,$s0,1224
    addiu	$a0,$s0,1220
    sw	$v0,0($sp)
    sd	$ra,72($sp)
    # Line 334
    lw	$t9,0($a3)
    sw	$t9,1188($s0)
    lw	$t8,4($a3)
    sw	$t8,1192($s0)
    lw	$t3,8($a3)
    sw	$t3,1196($s0)
    lw	$t2,12($a3)
    sw	$t2,1200($s0)
    lw	$t1,16($a3)
    sw	$t1,1204($s0)
    lw	$t0,20($a3)
    sw	$t0,1208($s0)
    lw	$a1,24($a3)
    sw	$a1,1212($s0)
    lw	$v1,28($a3)
    sw	$v1,1216($s0)
    lw	$v0,32($a3)
    sw	$v0,1220($s0)
    lw	$at,36($a3)
    sw	$at,1224($s0)
    lw	$t9,40($a3)
    sw	$t9,1228($s0)
    # Line 337
    lw	$a4,16($s1)
    lw	$a3,12($s1)
    lw	$t9,5284($zero)
    lw	$a2,8($s1)
    lw	$a1,4($s1)
    addiu	$a5,$s1,24
    jalr	$t9
    lw	$a0,0($s1)
    ld	$ra,72($sp)
    # Line 341
    addiu	$a0,$s0,1188
    addiu	$a2,$sp,0
    # Line 342
    ld	$gp,56($sp)
    # Line 341
    lw	$at,32($sp)
    lw	$v0,36($sp)
    lw	$v1,40($sp)
    lw	$a1,28($sp)
    lw	$a5,24($sp)
    lw	$a6,20($sp)
    lw	$a7,16($sp)
    lw	$t0,12($sp)
    lw	$t1,8($sp)
    lw	$t2,4($sp)
    lw	$t3,0($sp)
    sw	$t3,1188($s0)
    sw	$t2,1192($s0)
    sw	$t1,1196($s0)
    sw	$t0,1200($s0)
    sw	$a7,1204($s0)
    sw	$a6,1208($s0)
    sw	$a5,1212($s0)
    sw	$a1,1216($s0)
    sw	$v1,1228($s0)
    sw	$v0,1224($s0)
    sw	$at,1220($s0)
    # Line 342
    lw	$v0,20($s1)
    ld	$s0,48($sp)
    addu	$v0,$v0,$s1
    ld	$s1,64($sp)
    addiu	$sp,$sp,80
    jr	$ra
    addiu	$v0,$v0,24
.end __glOdyle_ColorSubTable

