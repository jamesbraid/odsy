# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/ODYSSEY.IP30.N32_M4.O/ody_napi_asm.s
# Category: ODYSSEY.IP30.N32_M4.O
# Compiler Options: 
# Total Functions: 10

.text

# Function: __glOdyim_Normal3b
# Declared: Line 81 (Source lines: 81-90)
# Address: 0x0dad3e80 - 0x0dad3ea0 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_Normal3b
.ent __glOdyim_Normal3b
__glOdyim_Normal3b:
    # Line 81
    lui	$a7,0xc180
    # Line 83
    lui	$v0,0x1
    # Line 85
    ori	$a7,$a7,0xcc16
    # Line 86
    sw	$a7,0($v0)
    # Line 87
    sw	$a0,0($v0)
    # Line 88
    sw	$a1,0($v0)
    # Line 89
    jr	$ra
    # Line 90
    sw	$a2,0($v0)
.end __glOdyim_Normal3b

# Function: __glOdyim_Normal3bv
# Declared: Line 114 (Source lines: 114-126)
# Address: 0x0dad3ec0 - 0x0dad3eec (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Normal3bv
.ent __glOdyim_Normal3bv
__glOdyim_Normal3bv:
    # Line 114
    lb	$t0,0($a0)
    # Line 115
    lui	$a7,0xc180
    # Line 117
    lui	$v0,0x1
    # Line 119
    lb	$t1,1($a0)
    # Line 120
    ori	$a7,$a7,0xcc16
    # Line 121
    lb	$t2,2($a0)
    # Line 122
    sw	$a7,0($v0)
    # Line 123
    sw	$t0,0($v0)
    # Line 124
    sw	$t1,0($v0)
    # Line 125
    jr	$ra
    # Line 126
    sw	$t2,0($v0)
.end __glOdyim_Normal3bv

# Function: __glOdyim_Normal3d
# Declared: Line 149 (Source lines: 149-161)
# Address: 0x0dad3f00 - 0x0dad3f2c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Normal3d
.ent __glOdyim_Normal3d
__glOdyim_Normal3d:
    # Line 149
    cvt.s.d	$f12,$f12
    # Line 150
    lui	$a7,0xc180
    # Line 151
    cvt.s.d	$f13,$f13
    # Line 153
    lui	$v0,0x1
    # Line 155
    ori	$a7,$a7,0xcc19
    # Line 156
    cvt.s.d	$f14,$f14
    # Line 157
    sw	$a7,0($v0)
    # Line 158
    swc1	$f12,0($v0)
    # Line 159
    swc1	$f13,0($v0)
    # Line 160
    jr	$ra
    # Line 161
    swc1	$f14,0($v0)
.end __glOdyim_Normal3d

# Function: __glOdyim_Normal3dv
# Declared: Line 168 (Source lines: 168-183)
# Address: 0x0dad3f40 - 0x0dad3f78 (Size: 56 bytes, Frame: 0)
.globl __glOdyim_Normal3dv
.ent __glOdyim_Normal3dv
__glOdyim_Normal3dv:
    # Line 168
    ldc1	$f4,0($a0)
    # Line 169
    lui	$a7,0xc180
    # Line 171
    lui	$v0,0x1
    # Line 173
    ldc1	$f5,8($a0)
    # Line 174
    ori	$a7,$a7,0xcc19
    # Line 175
    cvt.s.d	$f4,$f4
    # Line 176
    ldc1	$f6,16($a0)
    # Line 177
    cvt.s.d	$f5,$f5
    # Line 178
    sw	$a7,0($v0)
    # Line 179
    cvt.s.d	$f6,$f6
    # Line 180
    swc1	$f4,0($v0)
    # Line 181
    swc1	$f5,0($v0)
    # Line 182
    jr	$ra
    # Line 183
    swc1	$f6,0($v0)
.end __glOdyim_Normal3dv

# Function: __glOdyim_Normal3f
# Declared: Line 203 (Source lines: 203-212)
# Address: 0x0dad3f80 - 0x0dad3fa0 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_Normal3f
.ent __glOdyim_Normal3f
__glOdyim_Normal3f:
    # Line 203
    lui	$a7,0xc180
    # Line 205
    lui	$v0,0x1
    # Line 207
    ori	$a7,$a7,0xcc19
    # Line 208
    sw	$a7,0($v0)
    # Line 209
    swc1	$f12,0($v0)
    # Line 210
    swc1	$f13,0($v0)
    # Line 211
    jr	$ra
    # Line 212
    swc1	$f14,0($v0)
.end __glOdyim_Normal3f

# Function: __glOdyim_Normal3fv
# Declared: Line 235 (Source lines: 235-246)
# Address: 0x0dad3fc0 - 0x0dad3fe8 (Size: 40 bytes, Frame: 0)
.globl __glOdyim_Normal3fv
.ent __glOdyim_Normal3fv
__glOdyim_Normal3fv:
    # Line 235
    ldl	$t1,4($a0)
    # Line 236
    lui	$a7,0xc180
    # Line 238
    lui	$v0,0x1
    # Line 240
    lwu	$t0,0($a0)
    # Line 241
    ori	$a7,$a7,0xcc19
    # Line 242
    ldr	$t1,11($a0)
    # Line 243
    sw	$a7,0($v0)
    # Line 244
    sw	$t0,0($v0)
    # Line 245
    jr	$ra
    # Line 246
    sd	$t1,0($v0)
.end __glOdyim_Normal3fv

# Function: __glOdyim_Normal3i
# Declared: Line 267 (Source lines: 267-276)
# Address: 0x0dad4000 - 0x0dad4020 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_Normal3i
.ent __glOdyim_Normal3i
__glOdyim_Normal3i:
    # Line 267
    lui	$a7,0xc180
    # Line 269
    lui	$v0,0x1
    # Line 271
    ori	$a7,$a7,0xcc18
    # Line 272
    sw	$a7,0($v0)
    # Line 273
    sw	$a0,0($v0)
    # Line 274
    sw	$a1,0($v0)
    # Line 275
    jr	$ra
    # Line 276
    sw	$a2,0($v0)
.end __glOdyim_Normal3i

# Function: __glOdyim_Normal3iv
# Declared: Line 299 (Source lines: 299-310)
# Address: 0x0dad4040 - 0x0dad4068 (Size: 40 bytes, Frame: 0)
.globl __glOdyim_Normal3iv
.ent __glOdyim_Normal3iv
__glOdyim_Normal3iv:
    # Line 299
    ldl	$t1,4($a0)
    # Line 300
    lui	$a7,0xc180
    # Line 302
    lui	$v0,0x1
    # Line 304
    lwu	$t0,0($a0)
    # Line 305
    ori	$a7,$a7,0xcc18
    # Line 306
    ldr	$t1,11($a0)
    # Line 307
    sw	$a7,0($v0)
    # Line 308
    sw	$t0,0($v0)
    # Line 309
    jr	$ra
    # Line 310
    sd	$t1,0($v0)
.end __glOdyim_Normal3iv

# Function: __glOdyim_Normal3s
# Declared: Line 331 (Source lines: 331-340)
# Address: 0x0dad4080 - 0x0dad40a0 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_Normal3s
.ent __glOdyim_Normal3s
__glOdyim_Normal3s:
    # Line 331
    lui	$a7,0xc180
    # Line 333
    lui	$v0,0x1
    # Line 335
    ori	$a7,$a7,0xcc17
    # Line 336
    sw	$a7,0($v0)
    # Line 337
    sw	$a0,0($v0)
    # Line 338
    sw	$a1,0($v0)
    # Line 339
    jr	$ra
    # Line 340
    sw	$a2,0($v0)
.end __glOdyim_Normal3s

# Function: __glOdyim_Normal3sv
# Declared: Line 364 (Source lines: 364-376)
# Address: 0x0dad40c0 - 0x0dad40ec (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Normal3sv
.ent __glOdyim_Normal3sv
__glOdyim_Normal3sv:
    # Line 364
    lh	$t0,0($a0)
    # Line 365
    lui	$a7,0xc180
    # Line 367
    lui	$v0,0x1
    # Line 369
    lh	$t1,2($a0)
    # Line 370
    ori	$a7,$a7,0xcc17
    # Line 371
    lh	$t2,4($a0)
    # Line 372
    sw	$a7,0($v0)
    # Line 373
    sw	$t0,0($v0)
    # Line 374
    sw	$t1,0($v0)
    # Line 375
    jr	$ra
    # Line 376
    sw	$t2,0($v0)
.end __glOdyim_Normal3sv

