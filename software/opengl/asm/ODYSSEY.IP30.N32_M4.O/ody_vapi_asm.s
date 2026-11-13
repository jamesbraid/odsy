# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/ODYSSEY.IP30.N32_M4.O/ody_vapi_asm.s
# Category: ODYSSEY.IP30.N32_M4.O
# Compiler Options: 
# Total Functions: 24

.text

# Function: __glOdyim_Vertex2d
# Declared: Line 67 (Source lines: 67-77)
# Address: 0x0dace5c0 - 0x0dace5e4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_Vertex2d
.ent __glOdyim_Vertex2d
__glOdyim_Vertex2d:
    # Line 67
    cvt.s.d	$f12,$f12
    # Line 68
    cvt.s.d	$f13,$f13
    # Line 69
    lui	$t0,0x8080
    # Line 70
    ori	$t0,$t0,0xc801
    # Line 72
    lui	$v0,0x1
    # Line 74
    sw	$t0,0($v0)
    # Line 75
    swc1	$f12,0($v0)
    # Line 76
    jr	$ra
    # Line 77
    swc1	$f13,0($v0)
.end __glOdyim_Vertex2d

# Function: __glOdyim_Vertex2dv
# Declared: Line 83 (Source lines: 83-95)
# Address: 0x0dace600 - 0x0dace62c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Vertex2dv
.ent __glOdyim_Vertex2dv
__glOdyim_Vertex2dv:
    # Line 83
    ldc1	$f12,0($a0)
    # Line 84
    cvt.s.d	$f12,$f12
    # Line 85
    ldc1	$f13,8($a0)
    # Line 86
    cvt.s.d	$f13,$f13
    # Line 87
    lui	$t0,0x8080
    # Line 88
    ori	$t0,$t0,0xc801
    # Line 90
    lui	$v0,0x1
    # Line 92
    sw	$t0,0($v0)
    # Line 93
    swc1	$f12,0($v0)
    # Line 94
    jr	$ra
    # Line 95
    swc1	$f13,0($v0)
.end __glOdyim_Vertex2dv

# Function: __glOdyim_Vertex2f
# Declared: Line 101 (Source lines: 101-109)
# Address: 0x0dace640 - 0x0dace65c (Size: 28 bytes, Frame: 0)
.globl __glOdyim_Vertex2f
.ent __glOdyim_Vertex2f
__glOdyim_Vertex2f:
    # Line 101
    lui	$t0,0x8080
    # Line 102
    ori	$t0,$t0,0xc801
    # Line 104
    lui	$v0,0x1
    # Line 106
    sw	$t0,0($v0)
    # Line 107
    swc1	$f12,0($v0)
    # Line 108
    jr	$ra
    # Line 109
    swc1	$f13,0($v0)
.end __glOdyim_Vertex2f

# Function: __glOdyim_Vertex2fv
# Declared: Line 115 (Source lines: 115-125)
# Address: 0x0dace680 - 0x0dace6a4 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_Vertex2fv
.ent __glOdyim_Vertex2fv
__glOdyim_Vertex2fv:
    # Line 115
    lwc1	$f12,0($a0)
    # Line 116
    lwc1	$f13,4($a0)
    # Line 117
    lui	$t0,0x8080
    # Line 118
    ori	$t0,$t0,0xc801
    # Line 120
    lui	$v0,0x1
    # Line 122
    sw	$t0,0($v0)
    # Line 123
    swc1	$f12,0($v0)
    # Line 124
    jr	$ra
    # Line 125
    swc1	$f13,0($v0)
.end __glOdyim_Vertex2fv

# Function: __glOdyim_Vertex2i
# Declared: Line 131 (Source lines: 131-143)
# Address: 0x0dace6c0 - 0x0dace6ec (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Vertex2i
.ent __glOdyim_Vertex2i
__glOdyim_Vertex2i:
    # Line 131
    mtc1	$a0,$f8
    # Line 132
    mtc1	$a1,$f9
    # Line 133
    cvt.s.w	$f12,$f8
    # Line 134
    cvt.s.w	$f13,$f9
    # Line 135
    lui	$t0,0x8080
    # Line 136
    ori	$t0,$t0,0xc800
    # Line 138
    lui	$v0,0x1
    # Line 140
    sw	$t0,0($v0)
    # Line 141
    sw	$a0,0($v0)
    # Line 142
    jr	$ra
    # Line 143
    sw	$a1,0($v0)
.end __glOdyim_Vertex2i

# Function: __glOdyim_Vertex2iv
# Declared: Line 149 (Source lines: 149-163)
# Address: 0x0dace700 - 0x0dace734 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_Vertex2iv
.ent __glOdyim_Vertex2iv
__glOdyim_Vertex2iv:
    # Line 149
    lw	$a4,0($a0)
    # Line 150
    lw	$a5,4($a0)
    # Line 151
    mtc1	$a4,$f8
    # Line 152
    mtc1	$a5,$f9
    # Line 153
    cvt.s.w	$f12,$f8
    # Line 154
    cvt.s.w	$f13,$f9
    # Line 155
    lui	$t0,0x8080
    # Line 156
    ori	$t0,$t0,0xc800
    # Line 158
    lui	$v0,0x1
    # Line 160
    sw	$t0,0($v0)
    # Line 161
    sw	$a4,0($v0)
    # Line 162
    jr	$ra
    # Line 163
    sw	$a5,0($v0)
.end __glOdyim_Vertex2iv

# Function: __glOdyim_Vertex2s
# Declared: Line 169 (Source lines: 169-181)
# Address: 0x0dace740 - 0x0dace76c (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Vertex2s
.ent __glOdyim_Vertex2s
__glOdyim_Vertex2s:
    # Line 169
    mtc1	$a0,$f8
    # Line 170
    mtc1	$a1,$f9
    # Line 171
    cvt.s.w	$f12,$f8
    # Line 172
    cvt.s.w	$f13,$f9
    # Line 173
    lui	$t0,0x8080
    # Line 174
    ori	$t0,$t0,0xc800
    # Line 176
    lui	$v0,0x1
    # Line 178
    sw	$t0,0($v0)
    # Line 179
    sw	$a0,0($v0)
    # Line 180
    jr	$ra
    # Line 181
    sw	$a1,0($v0)
.end __glOdyim_Vertex2s

# Function: __glOdyim_Vertex2sv
# Declared: Line 187 (Source lines: 187-201)
# Address: 0x0dace780 - 0x0dace7b4 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_Vertex2sv
.ent __glOdyim_Vertex2sv
__glOdyim_Vertex2sv:
    # Line 187
    lh	$a4,0($a0)
    # Line 188
    lh	$a5,2($a0)
    # Line 189
    mtc1	$a4,$f8
    # Line 190
    mtc1	$a5,$f9
    # Line 191
    cvt.s.w	$f12,$f8
    # Line 192
    cvt.s.w	$f13,$f9
    # Line 193
    lui	$t0,0x8080
    # Line 194
    ori	$t0,$t0,0xc800
    # Line 196
    lui	$v0,0x1
    # Line 198
    sw	$t0,0($v0)
    # Line 199
    sw	$a4,0($v0)
    # Line 200
    jr	$ra
    # Line 201
    sw	$a5,0($v0)
.end __glOdyim_Vertex2sv

# Function: __glOdyim_Vertex3d
# Declared: Line 207 (Source lines: 207-222)
# Address: 0x0dace7c0 - 0x0dace7ec (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Vertex3d
.ent __glOdyim_Vertex3d
__glOdyim_Vertex3d:
    # Line 207
    cvt.s.d	$f12,$f12
    # Line 208
    cvt.s.d	$f13,$f13
    # Line 212
    cvt.s.d	$f14,$f14
    # Line 213
    lui	$t0,0x8080
    # Line 214
    ori	$t0,$t0,0xcc03
    # Line 216
    lui	$v0,0x1
    # Line 218
    sw	$t0,0($v0)
    # Line 219
    swc1	$f12,0($v0)
    # Line 220
    swc1	$f13,0($v0)
    # Line 221
    jr	$ra
    # Line 222
    swc1	$f14,0($v0)
.end __glOdyim_Vertex3d

# Function: __glOdyim_Vertex3dv
# Declared: Line 228 (Source lines: 228-243)
# Address: 0x0dace800 - 0x0dace838 (Size: 56 bytes, Frame: 0)
.globl __glOdyim_Vertex3dv
.ent __glOdyim_Vertex3dv
__glOdyim_Vertex3dv:
    # Line 228
    ldc1	$f12,0($a0)
    # Line 229
    cvt.s.d	$f12,$f12
    # Line 230
    ldc1	$f13,8($a0)
    # Line 231
    cvt.s.d	$f13,$f13
    # Line 232
    ldc1	$f14,16($a0)
    # Line 233
    cvt.s.d	$f14,$f14
    # Line 234
    lui	$t0,0x8080
    # Line 235
    ori	$t0,$t0,0xcc03
    # Line 237
    lui	$v0,0x1
    # Line 239
    sw	$t0,0($v0)
    # Line 240
    swc1	$f12,0($v0)
    # Line 241
    swc1	$f13,0($v0)
    # Line 242
    jr	$ra
    # Line 243
    swc1	$f14,0($v0)
.end __glOdyim_Vertex3dv

# Function: __glOdyim_Vertex3f
# Declared: Line 252 (Source lines: 252-261)
# Address: 0x0dace840 - 0x0dace860 (Size: 32 bytes, Frame: 0)
.globl __glOdyim_Vertex3f
.ent __glOdyim_Vertex3f
__glOdyim_Vertex3f:
    # Line 252
    lui	$t0,0x8080
    # Line 253
    ori	$t0,$t0,0xcc03
    # Line 255
    lui	$v0,0x1
    # Line 257
    sw	$t0,0($v0)
    # Line 258
    swc1	$f12,0($v0)
    # Line 259
    swc1	$f13,0($v0)
    # Line 260
    jr	$ra
    # Line 261
    swc1	$f14,0($v0)
.end __glOdyim_Vertex3f

# Function: __glOdyim_Vertex3fv
# Declared: Line 267 (Source lines: 267-279)
# Address: 0x0dace880 - 0x0dace8ac (Size: 44 bytes, Frame: 0)
.globl __glOdyim_Vertex3fv
.ent __glOdyim_Vertex3fv
__glOdyim_Vertex3fv:
    # Line 267
    lwc1	$f12,0($a0)
    # Line 268
    lwc1	$f13,4($a0)
    # Line 269
    lwc1	$f14,8($a0)
    # Line 270
    lui	$t0,0x8080
    # Line 271
    ori	$t0,$t0,0xcc03
    # Line 273
    lui	$v0,0x1
    # Line 275
    sw	$t0,0($v0)
    # Line 276
    swc1	$f12,0($v0)
    # Line 277
    swc1	$f13,0($v0)
    # Line 278
    jr	$ra
    # Line 279
    swc1	$f14,0($v0)
.end __glOdyim_Vertex3fv

# Function: __glOdyim_Vertex3i
# Declared: Line 285 (Source lines: 285-300)
# Address: 0x0dace8c0 - 0x0dace8f8 (Size: 56 bytes, Frame: 0)
.globl __glOdyim_Vertex3i
.ent __glOdyim_Vertex3i
__glOdyim_Vertex3i:
    # Line 285
    mtc1	$a0,$f8
    # Line 286
    mtc1	$a1,$f9
    # Line 287
    cvt.s.w	$f12,$f8
    # Line 288
    mtc1	$a2,$f8
    # Line 289
    cvt.s.w	$f13,$f9
    # Line 290
    cvt.s.w	$f14,$f8
    # Line 291
    lui	$t0,0x8080
    # Line 292
    ori	$t0,$t0,0xcc02
    # Line 294
    lui	$v0,0x1
    # Line 296
    sw	$t0,0($v0)
    # Line 297
    sw	$a0,0($v0)
    # Line 298
    sw	$a1,0($v0)
    # Line 299
    jr	$ra
    # Line 300
    sw	$a2,0($v0)
.end __glOdyim_Vertex3i

# Function: __glOdyim_Vertex3iv
# Declared: Line 306 (Source lines: 306-324)
# Address: 0x0dace900 - 0x0dace944 (Size: 68 bytes, Frame: 0)
.globl __glOdyim_Vertex3iv
.ent __glOdyim_Vertex3iv
__glOdyim_Vertex3iv:
    # Line 306
    lw	$a4,0($a0)
    # Line 307
    lw	$a5,4($a0)
    # Line 308
    lw	$a6,8($a0)
    # Line 309
    mtc1	$a4,$f8
    # Line 310
    mtc1	$a5,$f9
    # Line 311
    cvt.s.w	$f12,$f8
    # Line 312
    mtc1	$a6,$f8
    # Line 313
    cvt.s.w	$f13,$f9
    # Line 314
    cvt.s.w	$f14,$f8
    # Line 315
    lui	$t0,0x8080
    # Line 316
    ori	$t0,$t0,0xcc02
    # Line 318
    lui	$v0,0x1
    # Line 320
    sw	$t0,0($v0)
    # Line 321
    sw	$a4,0($v0)
    # Line 322
    sw	$a5,0($v0)
    # Line 323
    jr	$ra
    # Line 324
    sw	$a6,0($v0)
.end __glOdyim_Vertex3iv

# Function: __glOdyim_Vertex3s
# Declared: Line 330 (Source lines: 330-345)
# Address: 0x0dace980 - 0x0dace9b8 (Size: 56 bytes, Frame: 0)
.globl __glOdyim_Vertex3s
.ent __glOdyim_Vertex3s
__glOdyim_Vertex3s:
    # Line 330
    mtc1	$a0,$f8
    # Line 331
    mtc1	$a1,$f9
    # Line 332
    cvt.s.w	$f12,$f8
    # Line 333
    mtc1	$a2,$f8
    # Line 334
    cvt.s.w	$f13,$f9
    # Line 335
    cvt.s.w	$f14,$f8
    # Line 336
    lui	$t0,0x8080
    # Line 337
    ori	$t0,$t0,0xcc02
    # Line 339
    lui	$v0,0x1
    # Line 341
    sw	$t0,0($v0)
    # Line 342
    sw	$a0,0($v0)
    # Line 343
    sw	$a1,0($v0)
    # Line 344
    jr	$ra
    # Line 345
    sw	$a2,0($v0)
.end __glOdyim_Vertex3s

# Function: __glOdyim_Vertex3sv
# Declared: Line 351 (Source lines: 351-369)
# Address: 0x0dace9c0 - 0x0dacea04 (Size: 68 bytes, Frame: 0)
.globl __glOdyim_Vertex3sv
.ent __glOdyim_Vertex3sv
__glOdyim_Vertex3sv:
    # Line 351
    lh	$a4,0($a0)
    # Line 352
    lh	$a5,2($a0)
    # Line 353
    lh	$a6,4($a0)
    # Line 354
    mtc1	$a4,$f8
    # Line 355
    mtc1	$a5,$f9
    # Line 356
    cvt.s.w	$f12,$f8
    # Line 357
    mtc1	$a6,$f8
    # Line 358
    cvt.s.w	$f13,$f9
    # Line 359
    cvt.s.w	$f14,$f8
    # Line 360
    lui	$t0,0x8080
    # Line 361
    ori	$t0,$t0,0xcc02
    # Line 363
    lui	$v0,0x1
    # Line 365
    sw	$t0,0($v0)
    # Line 366
    sw	$a4,0($v0)
    # Line 367
    sw	$a5,0($v0)
    # Line 368
    jr	$ra
    # Line 369
    sw	$a6,0($v0)
.end __glOdyim_Vertex3sv

# Function: __glOdyim_Vertex4d
# Declared: Line 375 (Source lines: 375-393)
# Address: 0x0dacea40 - 0x0dacea74 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_Vertex4d
.ent __glOdyim_Vertex4d
__glOdyim_Vertex4d:
    # Line 375
    cvt.s.d	$f12,$f12
    # Line 376
    cvt.s.d	$f13,$f13
    # Line 381
    cvt.s.d	$f14,$f14
    # Line 382
    cvt.s.d	$f15,$f15
    # Line 383
    lui	$t0,0x8080
    # Line 384
    ori	$t0,$t0,0xd005
    # Line 386
    lui	$v0,0x1
    # Line 388
    sw	$t0,0($v0)
    # Line 389
    swc1	$f12,0($v0)
    # Line 390
    swc1	$f13,0($v0)
    # Line 391
    swc1	$f14,0($v0)
    # Line 392
    jr	$ra
    # Line 393
    swc1	$f15,0($v0)
.end __glOdyim_Vertex4d

# Function: __glOdyim_Vertex4dv
# Declared: Line 399 (Source lines: 399-417)
# Address: 0x0dacea80 - 0x0daceac4 (Size: 68 bytes, Frame: 0)
.globl __glOdyim_Vertex4dv
.ent __glOdyim_Vertex4dv
__glOdyim_Vertex4dv:
    # Line 399
    ldc1	$f12,0($a0)
    # Line 400
    cvt.s.d	$f12,$f12
    # Line 401
    ldc1	$f13,8($a0)
    # Line 402
    cvt.s.d	$f13,$f13
    # Line 403
    ldc1	$f14,16($a0)
    # Line 404
    cvt.s.d	$f14,$f14
    # Line 405
    ldc1	$f15,24($a0)
    # Line 406
    cvt.s.d	$f15,$f15
    # Line 407
    lui	$t0,0x8080
    # Line 408
    ori	$t0,$t0,0xd005
    # Line 410
    lui	$v0,0x1
    # Line 412
    sw	$t0,0($v0)
    # Line 413
    swc1	$f12,0($v0)
    # Line 414
    swc1	$f13,0($v0)
    # Line 415
    swc1	$f14,0($v0)
    # Line 416
    jr	$ra
    # Line 417
    swc1	$f15,0($v0)
.end __glOdyim_Vertex4dv

# Function: __glOdyim_Vertex4f
# Declared: Line 427 (Source lines: 427-437)
# Address: 0x0daceb00 - 0x0daceb24 (Size: 36 bytes, Frame: 0)
.globl __glOdyim_Vertex4f
.ent __glOdyim_Vertex4f
__glOdyim_Vertex4f:
    # Line 427
    lui	$t0,0x8080
    # Line 428
    ori	$t0,$t0,0xd005
    # Line 430
    lui	$v0,0x1
    # Line 432
    sw	$t0,0($v0)
    # Line 433
    swc1	$f12,0($v0)
    # Line 434
    swc1	$f13,0($v0)
    # Line 435
    swc1	$f14,0($v0)
    # Line 436
    jr	$ra
    # Line 437
    swc1	$f15,0($v0)
.end __glOdyim_Vertex4f

# Function: __glOdyim_Vertex4fv
# Declared: Line 443 (Source lines: 443-457)
# Address: 0x0daceb40 - 0x0daceb74 (Size: 52 bytes, Frame: 0)
.globl __glOdyim_Vertex4fv
.ent __glOdyim_Vertex4fv
__glOdyim_Vertex4fv:
    # Line 443
    lwc1	$f12,0($a0)
    # Line 444
    lwc1	$f13,4($a0)
    # Line 445
    lwc1	$f14,8($a0)
    # Line 446
    lwc1	$f15,12($a0)
    # Line 447
    lui	$t0,0x8080
    # Line 448
    ori	$t0,$t0,0xd005
    # Line 450
    lui	$v0,0x1
    # Line 452
    sw	$t0,0($v0)
    # Line 453
    swc1	$f12,0($v0)
    # Line 454
    swc1	$f13,0($v0)
    # Line 455
    swc1	$f14,0($v0)
    # Line 456
    jr	$ra
    # Line 457
    swc1	$f15,0($v0)
.end __glOdyim_Vertex4fv

# Function: __glOdyim_Vertex4i
# Declared: Line 463 (Source lines: 463-481)
# Address: 0x0daceb80 - 0x0dacebc4 (Size: 68 bytes, Frame: 0)
.globl __glOdyim_Vertex4i
.ent __glOdyim_Vertex4i
__glOdyim_Vertex4i:
    # Line 463
    mtc1	$a0,$f8
    # Line 464
    mtc1	$a1,$f9
    # Line 465
    cvt.s.w	$f12,$f8
    # Line 466
    cvt.s.w	$f13,$f9
    # Line 467
    mtc1	$a2,$f8
    # Line 468
    mtc1	$a3,$f9
    # Line 469
    cvt.s.w	$f14,$f8
    # Line 470
    cvt.s.w	$f15,$f9
    # Line 471
    lui	$t0,0x8080
    # Line 472
    ori	$t0,$t0,0xd004
    # Line 474
    lui	$v0,0x1
    # Line 476
    sw	$t0,0($v0)
    # Line 477
    sw	$a0,0($v0)
    # Line 478
    sw	$a1,0($v0)
    # Line 479
    sw	$a2,0($v0)
    # Line 480
    jr	$ra
    # Line 481
    sw	$a3,0($v0)
.end __glOdyim_Vertex4i

# Function: __glOdyim_Vertex4iv
# Declared: Line 487 (Source lines: 487-509)
# Address: 0x0dacec00 - 0x0dacec54 (Size: 84 bytes, Frame: 0)
.globl __glOdyim_Vertex4iv
.ent __glOdyim_Vertex4iv
__glOdyim_Vertex4iv:
    # Line 487
    lw	$a4,0($a0)
    # Line 488
    lw	$a5,4($a0)
    # Line 489
    lw	$a6,8($a0)
    # Line 490
    lw	$a7,12($a0)
    # Line 491
    mtc1	$a4,$f8
    # Line 492
    mtc1	$a5,$f9
    # Line 493
    cvt.s.w	$f12,$f8
    # Line 494
    cvt.s.w	$f13,$f9
    # Line 495
    mtc1	$a6,$f8
    # Line 496
    mtc1	$a7,$f9
    # Line 497
    cvt.s.w	$f14,$f8
    # Line 498
    cvt.s.w	$f15,$f9
    # Line 499
    lui	$t0,0x8080
    # Line 500
    ori	$t0,$t0,0xd004
    # Line 502
    lui	$v0,0x1
    # Line 504
    sw	$t0,0($v0)
    # Line 505
    sw	$a4,0($v0)
    # Line 506
    sw	$a5,0($v0)
    # Line 507
    sw	$a6,0($v0)
    # Line 508
    jr	$ra
    # Line 509
    sw	$a7,0($v0)
.end __glOdyim_Vertex4iv

# Function: __glOdyim_Vertex4s
# Declared: Line 515 (Source lines: 515-533)
# Address: 0x0dacec80 - 0x0dacecc4 (Size: 68 bytes, Frame: 0)
.globl __glOdyim_Vertex4s
.ent __glOdyim_Vertex4s
__glOdyim_Vertex4s:
    # Line 515
    mtc1	$a0,$f8
    # Line 516
    mtc1	$a1,$f9
    # Line 517
    cvt.s.w	$f12,$f8
    # Line 518
    cvt.s.w	$f13,$f9
    # Line 519
    mtc1	$a2,$f8
    # Line 520
    mtc1	$a3,$f9
    # Line 521
    cvt.s.w	$f14,$f8
    # Line 522
    cvt.s.w	$f15,$f9
    # Line 523
    lui	$t0,0x8080
    # Line 524
    ori	$t0,$t0,0xd004
    # Line 526
    lui	$v0,0x1
    # Line 528
    sw	$t0,0($v0)
    # Line 529
    sw	$a0,0($v0)
    # Line 530
    sw	$a1,0($v0)
    # Line 531
    sw	$a2,0($v0)
    # Line 532
    jr	$ra
    # Line 533
    sw	$a3,0($v0)
.end __glOdyim_Vertex4s

# Function: __glOdyim_Vertex4sv
# Declared: Line 539 (Source lines: 539-561)
# Address: 0x0daced00 - 0x0daced54 (Size: 84 bytes, Frame: 0)
.globl __glOdyim_Vertex4sv
.ent __glOdyim_Vertex4sv
__glOdyim_Vertex4sv:
    # Line 539
    lh	$a4,0($a0)
    # Line 540
    lh	$a5,2($a0)
    # Line 541
    lh	$a6,4($a0)
    # Line 542
    lh	$a7,6($a0)
    # Line 543
    mtc1	$a4,$f8
    # Line 544
    mtc1	$a5,$f9
    # Line 545
    cvt.s.w	$f12,$f8
    # Line 546
    cvt.s.w	$f13,$f9
    # Line 547
    mtc1	$a6,$f8
    # Line 548
    mtc1	$a7,$f9
    # Line 549
    cvt.s.w	$f14,$f8
    # Line 550
    cvt.s.w	$f15,$f9
    # Line 551
    lui	$t0,0x8080
    # Line 552
    ori	$t0,$t0,0xd004
    # Line 554
    lui	$v0,0x1
    # Line 556
    sw	$t0,0($v0)
    # Line 557
    sw	$a4,0($v0)
    # Line 558
    sw	$a5,0($v0)
    # Line 559
    sw	$a6,0($v0)
    # Line 560
    jr	$ra
    # Line 561
    sw	$a7,0($v0)
.end __glOdyim_Vertex4sv

