# Source: ../dlist/dl_table.c
# Category: dlist
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_table.c
# Total Functions: 9

.text

# Function: __glDisposeDlist
# Declared: Line 38 (Source lines: 39-53)
# Address: 0x0d9f8000 - 0x0d9f8048 (Size: 72 bytes, Frame: 16)
.globl __glDisposeDlist
.ent __glDisposeDlist
__glDisposeDlist:
    # Line 44
    lw	$v0,0($a1)
    # Line 39
    addiu	$sp,$sp,-16
    lui	$at,0x10
    # Line 44
    addiu	$v0,$v0,-1
    sd	$gp,0($sp)
    # Line 39
    addiu	$at,$at,1424
    # Line 44
    sw	$v0,0($a1)
    beqz	$v0,.L0d9f8030
    # Line 39
    addu	$gp,$t9,$at
.L0d9f8024:
    # Line 53
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f8030:
    # Line 50
    lw	$t9,4($a1)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0d9f8024
    ld	$ra,8($sp)
.end __glDisposeDlist

# Function: __glEmptyFreeDlist
# Declared: Line 62 (Source lines: 68-68)
# Address: 0x0d9f8050 - 0x0d9f8058 (Size: 8 bytes, Frame: 0)
.globl __glEmptyFreeDlist
.ent __glEmptyFreeDlist
__glEmptyFreeDlist:
    # Line 68
    jr	$ra
    nop
.end __glEmptyFreeDlist

# Function: __glEmptyExecuteDlist
# Declared: Line 72 (Source lines: 75-75)
# Address: 0x0d9f8060 - 0x0d9f8068 (Size: 8 bytes, Frame: 0)
.globl __glEmptyExecuteDlist
.ent __glEmptyExecuteDlist
__glEmptyExecuteDlist:
    # Line 75
    jr	$ra
    nop
.end __glEmptyExecuteDlist

# Function: __glDlistNewArray
# Declared: Line 80 (Source lines: 81-106)
# Address: 0x0d9f8070 - 0x0d9f8118 (Size: 168 bytes, Frame: 32)
.globl __glDlistNewArray
.ent __glDlistNewArray
__glDlistNewArray:
    # Line 81
    addiu	$sp,$sp,-32
    lui	$at,0x10
    sd	$gp,8($sp)
    addiu	$at,$at,1312
    addu	$gp,$t9,$at
    # Line 86
    lw	$t9,5016($a0)
    # Line 81
    sd	$ra,16($sp)
    # Line 86
    li	$a1,20
    # Line 81
    sd	$s1,24($sp)
    move	$s1,$a0
    # Line 86
    jalr	$t9
    sd	$s0,0($sp)
    beqz	$v0,.L0d9f80f0
    move	$s0,$v0
    # Line 97
    # lw $t9, -29212($gp) # &__glDlistHeapInit
    addiu	$a0,$v0,4
    # Line 93
    li	$v0,1
    # Line 97
    bal __glDlistHeapInit
    # Line 93
    sw	$v0,0($s0)
    # Line 97
    lw	$t9,4932($s1)
    beqz	$t9,.L0d9f80d8
    # Line 106
    ld	$ra,16($sp)
    # Line 103
    move	$a0,$s1
    jal	__glDlistHeapInit
    move	$a1,$s0
    # Line 106
    ld	$ra,16($sp)
.L0d9f80d8:
    ld	$gp,8($sp)
    move	$v0,$s0
    ld	$s0,0($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f80f0:
    # Line 89
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 106
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 91
    move	$v0,$zero
    # Line 106
    ld	$s0,0($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDlistNewArray

# Function: __glDlistFreeArray
# Declared: Line 109 (Source lines: 110-121)
# Address: 0x0d9f8120 - 0x0d9f8190 (Size: 112 bytes, Frame: 32)
.globl __glDlistFreeArray
.ent __glDlistFreeArray
__glDlistFreeArray:
    # Line 110
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    lw	$a3,4936($a0)
    move	$s0,$a1
    sd	$s1,8($sp)
    lui	$at,0x10
    move	$s1,$a0
    sd	$ra,24($sp)
    addiu	$at,$at,1136
    sd	$gp,16($sp)
    beqz	$a3,.L0d9f815c
    addu	$gp,$t9,$at
    # Line 114
    move	$t9,$a3
    jalr	$t9
    nop
.L0d9f815c:
    # Line 117
    # lw $t9, -29208($gp) # &__glDlistHeapFree
    bal __glDlistHeapFree
    addiu	$a0,$s0,4
    # Line 119
    lw	$t9,5024($s1)
    move	$a0,$s1
    jal	__glDlistHeapFree
    move	$a1,$s0
    ld	$ra,24($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 121
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDlistFreeArray

# Function: __glim_IsList
# Declared: Line 127 (Source lines: 128-145)
# Address: 0x0d9f8190 - 0x0d9f81fc (Size: 108 bytes, Frame: 16)
.globl __glim_IsList
.ent __glim_IsList
__glim_IsList:
    # Line 128
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x10
    move	$a2,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,1024
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d9f81dc
    addu	$gp,$t9,$v1
    # Line 142
    # lw $t9, -25676($gp) # &__glNamesIsName
    lw	$a0,4112($zero)
    jal	__glNamesIsName
    lw	$a1,4928($a0)
    ld	$ra,8($sp)
    # Line 145
    andi	$v0,$v0,0xff
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f81dc:
    # Line 133
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    # Line 145
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_IsList

# Function: __glim_GenLists
# Declared: Line 149 (Source lines: 150-174)
# Address: 0x0d9f8200 - 0x0d9f82a4 (Size: 164 bytes, Frame: 16)
.globl __glim_GenLists
.ent __glim_GenLists
__glim_GenLists:
    # Line 150
    move	$a2,$a0
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x10
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,912
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d9f8268
    addu	$gp,$t9,$v1
    # Line 157
    bltz	$a0,.L0d9f8288
    # Line 161
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 162
    bnez	$a0,.L0d9f8248
    # Line 165
    move	$v0,$zero
    # Line 174
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f8248:
    # Line 170
    # lw $t9, -25684($gp) # &__glNamesGenRange
    lw	$a0,4112($zero)
    jal	__glNamesGenRange
    lw	$a1,4928($a0)
    ld	$ra,8($sp)
    # Line 174
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f8268:
    # Line 155
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    # Line 174
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f8288:
    # Line 161
    jalr	$t9
    li	$a0,1281
    ld	$ra,8($sp)
    # Line 162
    move	$v0,$zero
    # Line 174
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GenLists

# Function: __glim_ListBase
# Declared: Line 178 (Source lines: 179-183)
# Address: 0x0d9f82b0 - 0x0d9f8308 (Size: 88 bytes, Frame: 16)
.globl __glim_ListBase
.ent __glim_ListBase
__glim_ListBase:
    # Line 179
    lw	$v0,4120($zero)
    li	$v1,1
    lui	$at,0x10
    addiu	$sp,$sp,-16
    addiu	$at,$at,736
    sd	$gp,0($sp)
    beq	$v0,$v1,.L0d9f82f0
    addu	$gp,$t9,$at
    # Line 182
    lw	$v0,4112($zero)
    # Line 183
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 182
    sw	$a0,1980($v0)
.L0d9f82e4:
    # Line 183
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f82f0:
    # Line 180
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9f82e4
    ld	$ra,8($sp)
.end __glim_ListBase

# Function: __glim_DeleteLists
# Declared: Line 185 (Source lines: 186-207)
# Address: 0x0d9f8310 - 0x0d9f8390 (Size: 128 bytes, Frame: 16)
.globl __glim_DeleteLists
.ent __glim_DeleteLists
__glim_DeleteLists:
    # Line 186
    move	$a3,$a1
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x10
    move	$a2,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,640
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d9f836c
    addu	$gp,$t9,$v1
    # Line 190
    bltz	$a1,.L0d9f8380
    # Line 193
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 194
    beqz	$a1,.L0d9f8360
    ld	$ra,8($sp)
    # Line 203
    # lw $t9, -25680($gp) # &__glNamesDeleteRange
    lw	$a0,4112($zero)
    jal	__glNamesDeleteRange
    lw	$a1,4928($a0)
    ld	$ra,8($sp)
.L0d9f8360:
    # Line 207
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9f836c:
    # Line 190
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9f8360
    ld	$ra,8($sp)
.L0d9f8380:
    # Line 193
    jalr	$t9
    li	$a0,1281
    b	.L0d9f8360
    ld	$ra,8($sp)
.end __glim_DeleteLists

