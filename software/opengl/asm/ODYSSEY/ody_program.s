# Source: ../ODYSSEY/ody_program.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_program.c
# Total Functions: 3

.text

# Function: AddProgram
# Declared: Line 625 (Source lines: 625-1268)
# Address: 0x0d9c8880 - 0x0d9c9d84 (Size: 5380 bytes, Frame: 208)
.ent AddProgram
AddProgram:
    # Line 625
    addiu	$sp,$sp,-336
    sd	$s8,176($sp)
    # Line 648
    lw	$s8,1792($a0)
    # Line 625
    sd	$s0,152($sp)
    sd	$ra,160($sp)
    sd	$s2,184($sp)
    sd	$s1,144($sp)
    # Line 655
    # lw $t9, -29720($gp) # &__glOdysseyGetNumHWClipPlanes
    # Line 625
    sd	$s4,168($sp)
    # Line 642
    lui	$s4,0x1
    # Line 625
    move	$s1,$a0
    sd	$s7,136($sp)
    # Line 642
    addu	$s7,$s4,$a0
    # Line 625
    move	$s2,$a1
    # Line 655
    jal	__glOdysseyGetNumHWClipPlanes
    # Line 642
    lw	$s0,-22956($s7)
    # Line 656
    # lw $t9, -29716($gp) # &__glOdysseyGetNumSWClipPlanes
    # Line 655
    sd	$v0,128($sp)
    # Line 656
    jal	__glOdysseyGetNumSWClipPlanes
    move	$a0,$s1
    lbu	$at,26432($s7)
    beqz	$at,.L0d9c88e8
    sd	$v0,48($sp)
    # Line 662
    # lw $t9, -30124($gp) # &__glOdysseyUpdateTransform
    jal	__glOdysseyUpdateTransform
    move	$a0,$s1
.L0d9c88e8:
    sd	$s5,224($sp)
    # Line 670
    lw	$v0,1796($s1)
    sd	$s3,216($sp)
    # Line 669
    lbu	$v1,3220($s1)
    # Line 670
    andi	$v0,$v0,0x1000
    sd	$s6,208($sp)
    # Line 669
    sltiu	$v1,$v1,1
    # Line 670
    beqz	$v0,.L0d9c895c
    sd	$v1,200($sp)
    ld	$v1,200($sp)
    bnez	$v1,.L0d9c895c
    nop
    # Line 671
    lbu	$a0,1413($s1)
    andi	$a5,$s8,0x40
    beqz	$a0,.L0d9c94f4
    # Line 670
    li	$t1,1
    # Line 671
    beqz	$a5,.L0d9c94f4
    li	$a0,1
.L0d9c8930:
    # Line 674
    lbu	$a1,26021($s7)
    beqz	$a1,.L0d9c8978
    # Line 671
    move	$t2,$a0
    # Line 674
    li	$a4,1
    sd	$a4,88($sp)
    lbu	$a2,26020($s7)
    lbu	$a3,1412($s1)
    sd	$a3,120($sp)
    move	$t2,$a0
    b	.L0d9c898c
    sd	$a2,80($sp)
.L0d9c895c:
    # Line 671
    lbu	$a5,1413($s1)
    # Line 670
    move	$t1,$zero
    # Line 671
    beqz	$a5,.L0d9c9948
    andi	$a5,$s8,0x40
    beqz	$a5,.L0d9c9948
    li	$a0,1
.L0d9c8974:
    move	$t2,$a0
.L0d9c8978:
    sd	$zero,88($sp)
    # Line 674
    lbu	$a6,26020($s7)
    lbu	$a7,1412($s1)
    sd	$a7,120($sp)
    sd	$a6,80($sp)
.L0d9c898c:
    # Line 675
    lw	$t0,1416($s1)
    li	$t3,0x81fa
    beq	$t0,$t3,.L0d9c9564
    move	$a6,$zero
.L0d9c899c:
    dsll32	$t8,$s8,0x1
    bgez	$t8,.L0d9c9580
    # Line 677
    li	$t9,2
    li	$t9,3
    sd	$t9,192($sp)
.L0d9c89b0:
    # Line 681
    lui	$ra,0x3c
    and	$ra,$s8,$ra
    beqz	$ra,.L0d9c97e4
    # Line 686
    ld	$t9,192($sp)
    ld	$at,192($sp)
    beqz	$at,.L0d9c94ec
    nop
    lw	$v0,26428($s7)
    beqz	$v0,.L0d9c94ec
    li	$a4,1
.L0d9c89d8:
    dsll32	$v1,$s8,0xd
    move	$t9,$a4
    bgez	$v1,.L0d9c9920
    li	$s6,1
    # Line 697
    lw	$a0,1984($s1)
    li	$a1,9216
    beq	$a0,$a1,.L0d9c9500
    # Line 703
    move	$a7,$zero
    # Line 697
    li	$a2,9217
    beq	$a0,$a2,.L0d9c94fc
    move	$t0,$s6
    li	$a3,9218
    move	$a7,$zero
    xor	$a3,$a0,$a3
    move	$a1,$zero
    movz	$a7,$t0,$a3
.L0d9c8a18:
    # Line 714
    dsll32	$t0,$s8,0xc
    bgez	$t0,.L0d9c8a4c
    # Line 731
    dsll32	$at,$s8,0xb
    # Line 717
    lw	$a0,2108($s1)
    li	$t3,9216
    beq	$a0,$t3,.L0d9c9508
    li	$t8,9217
    beq	$a0,$t8,.L0d9c9508
    li	$ra,9218
    xor	$ra,$a0,$ra
    # Line 729
    ori	$at,$a7,0x2
    movz	$a7,$at,$ra
.L0d9c8a48:
    # Line 731
    dsll32	$at,$s8,0xb
.L0d9c8a4c:
    bgez	$at,.L0d9c8a6c
    # Line 742
    dsll32	$a0,$s8,0xa
    # Line 734
    lw	$a0,2232($s1)
    li	$v0,9216
    beq	$a0,$v0,.L0d9c9510
    li	$v1,9217
    beq	$a0,$v1,.L0d9c9510
.L0d9c8a68:
    # Line 742
    dsll32	$a0,$s8,0xa
.L0d9c8a6c:
    bgez	$a0,.L0d9c8a8c
    # Line 753
    li	$ra,1
    # Line 745
    lw	$a0,2356($s1)
    li	$a2,9216
    beq	$a0,$a2,.L0d9c9518
    li	$a3,9217
    beq	$a0,$a3,.L0d9c9518
.L0d9c8a88:
    # Line 753
    li	$ra,1
.L0d9c8a8c:
    # Line 758
    xor	$a0,$s6,$s2
    sltiu	$a0,$a0,1
    beqz	$a4,.L0d9c8aa8
    movn	$a7,$zero,$a0
    beqz	$t1,.L0d9c9800
    # Line 785
    move	$at,$a4
    # Line 758
    move	$t9,$zero
.L0d9c8aa8:
    # Line 794
    lui	$t0,0x200
    lw	$a3,31744($s1)
    sll	$a2,$t9,0x19
    nor	$a4,$t0,$zero
    and	$a2,$a2,$t0
    and	$a3,$a3,$a4
    or	$a2,$a2,$a3
    # Line 797
    beqz	$a6,.L0d9c8ad4
    # Line 794
    sw	$a2,31744($s1)
    # Line 797
    beqz	$t1,.L0d9c9810
    # Line 800
    ld	$v0,192($sp)
.L0d9c8ad4:
    sd	$zero,104($sp)
    move	$t3,$zero
.L0d9c8adc:
    # Line 825
    sll	$v0,$s2,0x5
    addu	$v0,$s1,$v0
    sll	$a0,$s0,0x2
    addu	$v0,$s4,$v0
    move	$s3,$a0
    beqz	$a5,.L0d9c95b8
    sw	$s0,-22940($v0)
    lw	$a4,3588($s1)
    blez	$a4,.L0d9c99b8
    sd	$s2,64($sp)
    ldc1	$f6,_lit8_3ff0000000000000
    ldc1	$f5,_lit8_4066800000000000
    sd	$ra,240($sp)
    lw	$ra,4($sp)
    lw	$t0,0($sp)
    sd	$t1,256($sp)
    dmtc1	$zero,$f4
    sd	$t2,248($sp)
    move	$s5,$zero
    move	$t2,$zero
    sd	$a5,264($sp)
    move	$t8,$zero
    move	$a5,$zero
    sd	$a0,72($sp)
    li	$t1,19
    move	$a6,$zero
    sd	$t9,272($sp)
    li	$a3,694
    lui	$a2,0x40
    ld	$s2,72($sp)
    sd	$t3,280($sp)
    li	$v1,668
    and	$a2,$s8,$a2
    sd	$a7,288($sp)
    movz	$v1,$a3,$a2
    addu	$a0,$s2,$s1
    sd	$v1,112($sp)
    b	.L0d9c9d78
    addu	$a0,$s4,$a0
    nop
    nop
.L0d9c8b80:
    # Line 851
    beqz	$a7,.L0d9c8cb8
    move	$ra,$a7
    beqz	$a4,.L0d9c8cc0
    nop
.L0d9c8b90:
    beqz	$t0,.L0d9c8cc0
    nop
.L0d9c8b98:
    or	$a2,$t9,$a2
    or	$a2,$t8,$a2
    # Line 862
    li	$t8,768
    # Line 851
    dsllv	$a2,$a2,$t1
    # Line 852
    addiu	$t1,$t1,4
    beqz	$a3,.L0d9c8cc8
    # Line 851
    or	$s5,$s5,$a2
    # Line 852
    ld	$a3,200($sp)
    bnez	$a3,.L0d9c9324
    # Line 862
    li	$t9,920
    addiu	$a0,$a0,4
    addiu	$s3,$s3,4
    addiu	$s0,$s0,1
    movn	$t8,$t9,$a4
    sw	$t8,-23984($a0)
.L0d9c8bd4:
    # Line 876
    move	$t8,$t3
    # Line 874
    addiu	$a0,$a0,4
    li	$t9,719
    li	$at,734
    addiu	$s3,$s3,4
    movn	$t9,$at,$a7
    sw	$t9,-23984($a0)
    addiu	$s0,$s0,1
    # Line 876
    lw	$a4,3588($s1)
    # Line 874
    move	$s2,$s3
.L0d9c8bfc:
    # Line 838
    slt	$at,$a5,$a4
    # Line 840
    sllv	$a2,$s6,$a5
    # Line 838
    beqz	$at,.L0d9c8d08
    addiu	$a6,$a6,116
    # Line 840
    lw	$v1,1800($s1)
.L0d9c8c10:
    and	$v1,$v1,$a2
    # Line 838
    addiu	$a5,$a5,1
    # Line 840
    beqz	$v1,.L0d9c8bfc
    # Line 851
    li	$t9,4
    # Line 844
    lw	$a7,1584($s1)
    addu	$a7,$a7,$a6
    lwc1	$f1,76($a7)
    # Line 845
    lwc1	$f0,100($a7)
    # Line 844
    cvt.d.s	$f1,$f1
    # Line 851
    li	$t8,8
    # Line 845
    cvt.d.s	$f0,$f0
    # Line 852
    move	$a3,$t2
    # Line 851
    li	$a2,2
    # Line 844
    c.eq.d $f1,$f4
    # Line 845
    li	$t0,1
    # Line 844
    li	$a4,1
    # Line 845
    c.eq.d	$f0,$f5
    # Line 852
    addiu	$t3,$t2,1
    # Line 846
    lwc1	$f3,108($a7)
    # Line 844
    movt	$a4,$zero,$fcc1
    # Line 852
    move	$t2,$t3
    # Line 846
    lwc1	$f7,112($a7)
    # Line 845
    movt	$t0,$zero,$fcc0
    # Line 846
    lwc1	$f2,104($a7)
    li	$a7,1
    beqz	$a4,.L0d9c8cac
    # Line 851
    movn	$a2,$s6,$a4
    # Line 846
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f6
    bc1f .L0d9c8b80
    nop
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f4
    bc1f .L0d9c8b80
    nop
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f4
    bc1f .L0d9c8b80
    nop
.L0d9c8cac:
    move	$a7,$zero
    # Line 851
    bnez	$a4,.L0d9c8b80
    # Line 846
    move	$ra,$zero
.L0d9c8cb8:
    # Line 851
    bnez	$a4,.L0d9c8b90
    move	$t9,$zero
.L0d9c8cc0:
    b	.L0d9c8b98
    move	$t8,$zero
.L0d9c8cc8:
    # Line 871
    addiu	$s3,$s3,8
    # Line 865
    li	$a2,656
    li	$at,641
    li	$a3,611
    ld	$v1,120($sp)
    li	$t8,626
    movn	$at,$a3,$a4
    # Line 871
    addiu	$s0,$s0,2
    ld	$t9,112($sp)
    # Line 865
    movn	$a2,$t8,$a4
    # Line 871
    sw	$t9,-23976($a0)
    addiu	$t8,$a0,8
    movz	$at,$a2,$v1
    # Line 865
    sw	$at,-23980($a0)
    b	.L0d9c8bd4
    # Line 871
    move	$a0,$t8
.L0d9c8d08:
    # Line 838
    sw	$t0,0($sp)
    ld	$a7,288($sp)
    ld	$t3,280($sp)
    ld	$t9,272($sp)
    ld	$a5,264($sp)
    ld	$t1,256($sp)
    ld	$t2,248($sp)
    sw	$ra,4($sp)
    li	$a6,2
    ld	$ra,240($sp)
.L0d9c8d30:
    beqz	$t1,.L0d9c95d0
    # Line 942
    move	$t0,$zero
    # Line 888
    lw	$v1,25724($s7)
    andi	$v1,$v1,0x1
    beqz	$v1,.L0d9c984c
    nop
    # Line 895
    lwc1	$f10,25804($s7)
    dmtc1	$zero,$f4
    # Line 896
    lwc1	$f8,25828($s7)
    # Line 895
    cvt.d.s	$f10,$f10
    # Line 896
    ldc1	$f9,_lit8_4066800000000000
    # Line 895
    c.eq.d $f10,$f4
    li	$a4,1
    # Line 896
    cvt.d.s	$f8,$f8
    # Line 895
    movt	$a4,$zero,$fcc6
    # Line 896
    c.eq.d $f8,$f9
    li	$t0,1
    # Line 897
    beqz	$a4,.L0d9c9358
    # Line 896
    movt	$t0,$zero,$fcc5
    # Line 897
    lwc1	$f11,25832($s7)
    ldc1	$f12,_lit8_3ff0000000000000
    cvt.d.s	$f11,$f11
    c.eq.d $f11,$f12
    bc1f .L0d9c8dbc
    li	$a0,1
    lwc1	$f12,25836($s7)
    cvt.d.s	$f12,$f12
    c.eq.d	$f12,$f4
    bc1f	.L0d9c8dbc
    li	$a0,1
    lwc1	$f13,25840($s7)
    cvt.d.s	$f13,$f13
    c.eq.d $f13,$f4
    bc1t .L0d9c9358
    li	$a0,1
.L0d9c8dbc:
    # Line 902
    beqz	$a0,.L0d9c9360
    li	$a2,4
    beqz	$a4,.L0d9c9368
    sd	$a2,96($sp)
.L0d9c8dcc:
    beqz	$t0,.L0d9c9368
    li	$t0,8
.L0d9c8dd4:
    ld	$a3,96($sp)
    move	$at,$a6
    movn	$at,$s6,$a4
    or	$a3,$a3,$at
    or	$a3,$t0,$a3
    sltu	$at,$zero,$a4
    dsll32	$a3,$a3,0x13
    sd	$at,56($sp)
    beqz	$t8,.L0d9c9894
    or	$s5,$s5,$a3
    # Line 916
    li	$a3,768
    addiu	$s3,$s3,4
    li	$v1,920
    addu	$a2,$s3,$s1
    movz	$v1,$a3,$a4
    addu	$a2,$s4,$a2
    addiu	$s0,$s0,1
    beqz	$a5,.L0d9c8e40
    sw	$v1,-23984($a2)
.L0d9c8e20:
    # Line 921
    addiu	$s3,$s3,4
    li	$at,911
    addu	$t0,$s3,$s1
    li	$a4,902
    addu	$t0,$s4,$t0
    addiu	$s0,$s0,1
    movz	$a4,$at,$t2
    sw	$a4,-23984($t0)
.L0d9c8e40:
    beqz	$a0,.L0d9c8e60
    nop
    # Line 926
    addiu	$s3,$s3,4
    addu	$a2,$s3,$s1
    addu	$a2,$s4,$a2
    addiu	$s0,$s0,1
    li	$v1,1094
    sw	$v1,-23984($a2)
.L0d9c8e60:
    # Line 942
    addiu	$s0,$s0,2
    # Line 928
    li	$t0,1
    addiu	$s2,$s3,4
    li	$a3,1071
    addu	$s2,$s2,$s1
    # Line 942
    addiu	$a4,$s3,8
    # Line 928
    addu	$s2,$s4,$s2
    sw	$a3,-23984($s2)
    # Line 942
    beqz	$t2,.L0d9c992c
    move	$s2,$a4
    li	$s3,1136
.L0d9c8e8c:
    addu	$at,$a4,$s1
    addu	$at,$s4,$at
    sw	$s3,-23984($at)
    ld	$s3,216($sp)
.L0d9c8e9c:
    # Line 999
    addu	$a0,$t0,$t8
    sll	$a0,$a0,0x2
    li	$v1,64
    addiu	$a0,$a0,19
    slt	$v1,$v1,$a0
    or	$t3,$v1,$t3
    beqz	$t3,.L0d9c963c
    # Line 1011
    ld	$v1,128($sp)
    ld	$s5,224($sp)
    # Line 1079
    li	$a5,1221
.L0d9c8ec4:
    beqz	$ra,.L0d9c9048
    # Line 1129
    ld	$t0,128($sp)
    # Line 1079
    beqz	$a7,.L0d9c9388
    dsll32	$a2,$s8,0x9
    bgez	$a2,.L0d9c9370
    nop
    # Line 1091
    addiu	$s0,$s0,2
    # Line 1090
    addu	$t8,$s2,$s1
    # Line 1091
    addiu	$s2,$s2,8
    addu	$a4,$s2,$s1
    # Line 1090
    addu	$t8,$s4,$t8
    # Line 1091
    addu	$a4,$s4,$a4
    # Line 1090
    li	$t0,127
    sw	$t0,-23980($t8)
    # Line 1091
    li	$a3,159
    # Line 1093
    beqz	$a1,.L0d9c9390
    # Line 1091
    sw	$a3,-23984($a4)
.L0d9c8f08:
    # Line 1097
    addiu	$s2,$s2,4
    addu	$v1,$s2,$s1
    addu	$v1,$s4,$v1
    addiu	$s0,$s0,1
    li	$at,51
    sw	$at,-23984($v1)
.L0d9c8f20:
    # Line 1103
    li	$a0,3
.L0d9c8f24:
    beq	$a1,$a0,.L0d9c9854
    nop
.L0d9c8f2c:
    # Line 1105
    beqz	$a1,.L0d9c98fc
    nop
    # Line 1106
    andi	$a0,$a1,0x1
.L0d9c8f38:
    beqz	$a0,.L0d9c8f5c
    # Line 1109
    andi	$a4,$a7,0x1
    addiu	$s2,$s2,4
    addu	$a3,$s2,$s1
    addu	$a3,$s4,$a3
    addiu	$s0,$s0,1
    li	$a2,77
    sw	$a2,-23984($a3)
    andi	$a4,$a7,0x1
.L0d9c8f5c:
    beqz	$a4,.L0d9c8f80
    # Line 1112
    andi	$at,$a1,0x2
    addiu	$s2,$s2,4
    addu	$t8,$s2,$s1
    addu	$t8,$s4,$t8
    addiu	$s0,$s0,1
    li	$t0,82
    sw	$t0,-23984($t8)
    andi	$at,$a1,0x2
.L0d9c8f80:
    beqz	$at,.L0d9c8fa4
    # Line 1115
    andi	$a2,$a7,0x2
    addiu	$s2,$s2,4
    addu	$a0,$s2,$s1
    addu	$a0,$s4,$a0
    addiu	$s0,$s0,1
    li	$v1,87
    sw	$v1,-23984($a0)
    andi	$a2,$a7,0x2
.L0d9c8fa4:
    beqz	$a2,.L0d9c8fc8
    # Line 1118
    andi	$a7,$a1,0x4
    addiu	$s2,$s2,4
    addu	$a4,$s2,$s1
    addu	$a4,$s4,$a4
    addiu	$s0,$s0,1
    li	$a3,92
    sw	$a3,-23984($a4)
    andi	$a7,$a1,0x4
.L0d9c8fc8:
    beqz	$a7,.L0d9c8fec
    # Line 1121
    andi	$at,$a1,0x8
    addiu	$s2,$s2,4
    addu	$t8,$s2,$s1
    addu	$t8,$s4,$t8
    addiu	$s0,$s0,1
    li	$t0,97
    sw	$t0,-23984($t8)
    andi	$at,$a1,0x8
.L0d9c8fec:
    beqz	$at,.L0d9c900c
    nop
    # Line 1124
    addiu	$s2,$s2,4
    addu	$a0,$s2,$s1
    addu	$a0,$s4,$a0
    addiu	$s0,$s0,1
    li	$v1,102
    sw	$v1,-23984($a0)
.L0d9c900c:
    # Line 1126
    addiu	$s2,$s2,4
    addu	$a2,$s2,$s1
    addu	$a2,$s4,$a2
    addiu	$s0,$s0,1
    li	$a1,108
    sw	$a1,-23984($a2)
.L0d9c9024:
    # Line 1129
    addiu	$s2,$s2,4
    li	$a7,119
    addu	$a4,$s2,$s1
    li	$a3,123
    addu	$a4,$s4,$a4
    addiu	$s0,$s0,1
    movz	$a3,$a7,$t9
    sw	$a3,-23984($a4)
    ld	$t0,128($sp)
.L0d9c9048:
    beqz	$t0,.L0d9c9084
    # Line 1137
    addu	$a1,$s2,$s1
    addu	$a1,$s4,$a1
    # Line 1139
    addiu	$s2,$s2,8
    li	$v1,26
    li	$t8,40
    movz	$t8,$v1,$ra
    ld	$v1,192($sp)
    addu	$at,$s2,$s1
    li	$a0,12
    # Line 1137
    sw	$zero,-23980($a1)
    # Line 1139
    addu	$at,$s4,$at
    addiu	$s0,$s0,2
    movz	$t8,$a0,$v1
    sw	$t8,-23984($at)
.L0d9c9084:
    # Line 1147
    beqz	$t3,.L0d9c9400
    nop
    # Line 1159
    addiu	$s2,$s2,4
    beqz	$t9,.L0d9c9878
    addiu	$s0,$s0,1
    li	$a1,1173
    addu	$a0,$s2,$s1
.L0d9c90a0:
    addu	$a0,$s4,$a0
    sw	$a1,-23984($a0)
    # Line 1173
    sw	$a5,-22924($v0)
    beqz	$t3,.L0d9c9438
    # Line 1172
    sw	$a5,-22928($v0)
.L0d9c90b4:
    # Line 1178
    sw	$s0,-22936($v0)
    # Line 1181
    addu	$a2,$s4,$s1
    # Line 1179
    li	$a3,515
    sw	$a3,-23980($a0)
    # Line 1181
    addu	$a2,$s2,$a2
    # Line 1180
    li	$a3,606
    sw	$a3,-23976($a0)
    # Line 1181
    sw	$a5,-23972($a2)
    # Line 1184
    lw	$a2,-22940($v0)
    sll	$a1,$a2,0x2
    addu	$a1,$s1,$a1
    addu	$a1,$s4,$a1
    lw	$a1,-23980($a1)
    # Line 1192
    sw	$a5,-22924($v0)
    # Line 1191
    sw	$a5,-22928($v0)
    # Line 1188
    sw	$a5,-22944($v0)
    # Line 1187
    sw	$a5,-22948($v0)
    # Line 1185
    addiu	$a2,$a2,1
    sw	$a2,-22940($v0)
    # Line 1181
    addiu	$s0,$s0,3
    # Line 1184
    sw	$a1,-22952($v0)
.L0d9c9108:
    # Line 1218
    lw	$a7,27960($s7)
    slti	$a4,$a7,2048
    bnez	$a4,.L0d9c92ec
    ld	$s6,208($sp)
    # Line 1232
    lw	$t1,-22952($v0)
    addiu	$a5,$t1,50
    sltiu	$a5,$a5,1849
    bnez	$a5,.L0d9c9134
    # Line 1231
    move	$a4,$a7
    # Line 1232
    sltu	$t0,$t1,$a7
    movn	$a4,$t1,$t0
.L0d9c9134:
    # Line 1233
    lw	$t2,-22948($v0)
    addiu	$t3,$t2,50
    sltiu	$t3,$t3,1849
    bnez	$t3,.L0d9c914c
    sltu	$t8,$t2,$a4
    movn	$a4,$t2,$t8
.L0d9c914c:
    # Line 1234
    lw	$t0,-22944($v0)
    addiu	$t9,$t0,50
    sltiu	$t9,$t9,1849
    bnez	$t9,.L0d9c9164
    sltu	$ra,$t0,$a4
    movn	$a4,$t0,$ra
.L0d9c9164:
    # Line 1235
    lw	$a1,-22956($s7)
    slt	$at,$a1,$s0
    beqz	$at,.L0d9c9210
    sltiu	$v1,$a4,1848
    sd	$v0,296($sp)
    sll	$v0,$a1,0x2
    sll	$a0,$s0,0x2
    addu	$a0,$a0,$s1
    subu	$v1,$s0,$a1
    move	$a5,$v1
    andi	$v1,$v1,0x1
    addu	$v0,$v0,$s1
    addu	$a0,$s4,$a0
    beqz	$v1,.L0d9c91bc
    addu	$v0,$s4,$v0
    # Line 1236
    lw	$a1,-23980($v0)
    addiu	$a2,$a1,50
    sltiu	$a2,$a2,1849
    bnez	$a2,.L0d9c91b8
    sltu	$a3,$a1,$a4
    movn	$a4,$a1,$a3
.L0d9c91b8:
    # Line 1235
    addiu	$v0,$v0,4
.L0d9c91bc:
    sra	$t3,$a5,0x1
    beqz	$t3,.L0d9c9208
    nop
    nop
    # Line 1236
    lw	$a1,-23980($v0)
.L0d9c91d0:
    addiu	$t8,$a1,50
    sltiu	$t8,$t8,1849
    bnez	$t8,.L0d9c91e4
    sltu	$t9,$a1,$a4
    movn	$a4,$a1,$t9
.L0d9c91e4:
    lw	$a1,-23976($v0)
    addiu	$ra,$a1,50
    sltiu	$ra,$ra,1849
    # Line 1235
    addiu	$v0,$v0,8
    # Line 1236
    bnez	$ra,.L0d9c9200
    sltu	$at,$a1,$a4
    movn	$a4,$a1,$at
.L0d9c9200:
    # Line 1235
    bnel	$v0,$a0,.L0d9c91d0
    # Line 1236
    lw	$a1,-23980($v0)
.L0d9c9208:
    ld	$v0,296($sp)
    # Line 1235
    sltiu	$v1,$a4,1848
.L0d9c9210:
    bnez	$v1,.L0d9c9520
    # Line 1240
    xor	$a1,$a7,$a4
    sltiu	$a1,$a1,1
    move	$a5,$a4
    movn	$a5,$zero,$a1
    # Line 1243
    sltiu	$a0,$a5,1849
    bnez	$a0,.L0d9c92e8
    sw	$a5,-22932($v0)
    sltu	$a2,$t1,$a5
    bnez	$a2,.L0d9c924c
    # Line 1252
    sltu	$a4,$t2,$a5
    subu	$a3,$t1,$a5
    addiu	$a3,$a3,1848
    sw	$a3,-22952($v0)
    sltu	$a4,$t2,$a5
.L0d9c924c:
    bnez	$a4,.L0d9c9264
    # Line 1253
    sltu	$t1,$t0,$a5
    subu	$a7,$t2,$a5
    addiu	$a7,$a7,1848
    sw	$a7,-22948($v0)
    sltu	$t1,$t0,$a5
.L0d9c9264:
    bnez	$t1,.L0d9c9274
    # Line 1254
    subu	$t2,$t0,$a5
    addiu	$t2,$t2,1848
    sw	$t2,-22944($v0)
.L0d9c9274:
    lw	$a0,-22928($v0)
    sltu	$t3,$a0,$a5
    bnez	$t3,.L0d9c928c
    # Line 1255
    subu	$t8,$a0,$a5
    addiu	$t8,$t8,1848
    sw	$t8,-22928($v0)
.L0d9c928c:
    # Line 1256
    lw	$a1,-22956($s7)
    slt	$t9,$a1,$s0
    beqz	$t9,.L0d9c92e8
    sll	$a0,$s0,0x2
    subu	$v1,$s0,$a1
    move	$a4,$v1
    addu	$a0,$a0,$s1
    sll	$v0,$a1,0x2
    andi	$v1,$v1,0x1
    addu	$a0,$s4,$a0
    addu	$v0,$v0,$s1
    beqz	$v1,.L0d9c92dc
    addu	$v0,$s4,$v0
    lw	$a1,-23980($v0)
    sltu	$a2,$a1,$a5
    bnez	$a2,.L0d9c92d8
    # Line 1257
    subu	$a3,$a1,$a5
    addiu	$a3,$a3,1848
    sw	$a3,-23980($v0)
.L0d9c92d8:
    # Line 1256
    addiu	$v0,$v0,4
.L0d9c92dc:
    sra	$a7,$a4,0x1
    bnezl	$a7,.L0d9c93d0
    lw	$a1,-23980($v0)
.L0d9c92e8:
    ld	$s6,208($sp)
.L0d9c92ec:
    # Line 1264
    sw	$s0,-22956($s7)
    # Line 1268
    ld	$s0,152($sp)
    ld	$s1,144($sp)
    ld	$s2,184($sp)
    ld	$s4,168($sp)
    ld	$s8,176($sp)
    # Line 1267
    lw	$t0,26976($s7)
    # Line 1268
    ld	$ra,160($sp)
    # Line 1267
    ori	$t0,$t0,0x4
    sw	$t0,26976($s7)
    sw	$a6,4120($zero)
    # Line 1268
    ld	$s7,136($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L0d9c9324:
    # Line 860
    addiu	$s3,$s3,8
    addiu	$s0,$s0,2
    li	$t9,779
    # Line 859
    li	$at,891
    li	$v1,964
    # Line 860
    li	$a2,931
    # Line 859
    movn	$at,$v1,$a4
    # Line 860
    addiu	$t8,$a0,8
    # Line 859
    sw	$at,-23980($a0)
    # Line 860
    movn	$t9,$a2,$a4
    sw	$t9,-23976($a0)
    b	.L0d9c8bd4
    move	$a0,$t8
.L0d9c9358:
    # Line 902
    bnez	$a4,.L0d9c8dbc
    # Line 897
    move	$a0,$zero
.L0d9c9360:
    # Line 902
    bnez	$a4,.L0d9c8dcc
    sd	$zero,96($sp)
.L0d9c9368:
    b	.L0d9c8dd4
    move	$t0,$zero
.L0d9c9370:
    # Line 1093
    addiu	$s2,$s2,4
    addu	$a0,$s2,$s1
    addu	$a0,$s4,$a0
    addiu	$s0,$s0,1
    li	$v1,145
    sw	$v1,-23984($a0)
.L0d9c9388:
    bnez	$a1,.L0d9c8f08
    nop
.L0d9c9390:
    # Line 1100
    bnez	$a7,.L0d9c8f24
    # Line 1103
    li	$a0,3
    # Line 1101
    addiu	$s2,$s2,4
    addu	$a3,$s2,$s1
    addiu	$s0,$s0,1
    addu	$a3,$s4,$a3
    li	$a2,51
    b	.L0d9c8f20
    sw	$a2,-23984($a3)
    nop
    nop
    nop
.L0d9c93c0:
    # Line 1256
    addiu	$v0,$v0,8
    beq	$v0,$a0,.L0d9c92e8
    nop
    lw	$a1,-23980($v0)
.L0d9c93d0:
    sltu	$a4,$a1,$a5
    # Line 1257
    subu	$a7,$a1,$a5
    # Line 1256
    bnez	$a4,.L0d9c93e4
    # Line 1257
    addiu	$a7,$a7,1848
    sw	$a7,-23980($v0)
.L0d9c93e4:
    # Line 1256
    lw	$a1,-23976($v0)
    sltu	$t0,$a1,$a5
    # Line 1257
    subu	$t1,$a1,$a5
    # Line 1256
    bnez	$t0,.L0d9c93c0
    # Line 1257
    addiu	$t1,$t1,1848
    b	.L0d9c93c0
    sw	$t1,-23976($v0)
.L0d9c9400:
    # Line 1147
    beqz	$t9,.L0d9c9c14
    lw	$t2,8($sp)
    ld	$t2,0($t2)
    andi	$t2,$t2,0x40
    beqz	$t2,.L0d9c9c94
    # Line 1150
    lw	$a1,12($sp)
.L0d9c9418:
    # Line 1164
    addiu	$s2,$s2,4
    addu	$a0,$s2,$s1
    addu	$a0,$s4,$a0
    sw	$a1,-23984($a0)
    # Line 1173
    sw	$a5,-22924($v0)
    # Line 1164
    addiu	$s0,$s0,1
    # Line 1173
    bnez	$t3,.L0d9c90b4
    # Line 1172
    sw	$a5,-22928($v0)
.L0d9c9438:
    # Line 1197
    lw	$t0,8($sp)
    # Line 1199
    lw	$a1,16($sp)
    # Line 1197
    lw	$a4,8($t0)
    sw	$a4,-22952($v0)
    # Line 1198
    lw	$a3,12($t0)
    sw	$a3,-22948($v0)
    # Line 1199
    lw	$a2,16($t0)
    beqz	$a1,.L0d9c947c
    sw	$a2,-22944($v0)
    # Line 1203
    lw	$t1,-22940($v0)
    sll	$a7,$t1,0x2
    addu	$a7,$s1,$a7
    addu	$a7,$s4,$a7
    lw	$a7,-23980($a7)
    # Line 1204
    addiu	$t1,$t1,1
    sw	$t1,-22940($v0)
    # Line 1203
    sw	$a7,-22952($v0)
.L0d9c947c:
    # Line 1208
    sw	$s0,-22936($v0)
    # Line 1209
    addiu	$s0,$s0,1
    addu	$a0,$s4,$s1
    move	$a4,$t0
    addu	$a0,$s2,$a0
    li	$a2,515
    sw	$a2,-23980($a0)
    addiu	$a0,$a0,4
.L0d9c949c:
    # Line 1212
    lw	$a3,52($a4)
    sw	$a3,-23980($a0)
    # Line 1213
    lw	$a2,52($a4)
    # Line 1212
    addiu	$s0,$s0,1
    # Line 1213
    beq	$a5,$a2,.L0d9c94d0
    nop
    # Line 1212
    lw	$t1,56($a4)
    sw	$t1,-23976($a0)
    # Line 1213
    lw	$a7,56($a4)
    addiu	$a4,$a4,8
    # Line 1212
    addiu	$a0,$a0,8
    # Line 1213
    bne	$a5,$a7,.L0d9c949c
    # Line 1212
    addiu	$s0,$s0,1
.L0d9c94d0:
    # Line 1213
    beqz	$a1,.L0d9c9108
    nop
    # Line 1217
    lw	$t3,20($t0)
    sw	$t3,-22928($v0)
    # Line 1218
    lw	$t2,24($t0)
    b	.L0d9c9108
    sw	$t2,-22924($v0)
.L0d9c94ec:
    b	.L0d9c89d8
    # Line 686
    move	$a4,$zero
.L0d9c94f4:
    b	.L0d9c8930
    # Line 671
    move	$a0,$zero
.L0d9c94fc:
    # Line 703
    move	$a7,$zero
.L0d9c9500:
    b	.L0d9c8a18
    li	$a1,1
.L0d9c9508:
    b	.L0d9c8a48
    # Line 723
    ori	$a1,$a1,0x2
.L0d9c9510:
    b	.L0d9c8a68
    # Line 740
    ori	$a1,$a1,0x4
.L0d9c9518:
    b	.L0d9c8a88
    # Line 751
    ori	$a1,$a1,0x8
.L0d9c9520:
    ld	$s6,208($sp)
    # Line 1243
    li	$s2,1848
    sw	$s2,-22932($v0)
    # Line 1268
    ld	$s2,184($sp)
    ld	$s4,168($sp)
    ld	$s8,176($sp)
    # Line 1267
    lw	$s1,26976($s7)
    # Line 1264
    sw	$s0,-22956($s7)
    # Line 1267
    ori	$s0,$s1,0x4
    sw	$s0,26976($s7)
    sw	$a6,4120($zero)
    # Line 1268
    ld	$ra,160($sp)
    ld	$s0,152($sp)
    ld	$s1,144($sp)
    ld	$s7,136($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L0d9c9564:
    # Line 675
    beqz	$a5,.L0d9c899c
    move	$a6,$zero
    ld	$t8,200($sp)
    bnez	$t8,.L0d9c899c
    move	$a6,$zero
    b	.L0d9c899c
    li	$a6,1
.L0d9c9580:
    # Line 677
    lui	$at,0x2
    and	$v0,$s4,$s8
    sltu	$v0,$zero,$v0
    and	$at,$s8,$at
    movz	$t9,$v0,$at
    # Line 681
    bnez	$t9,.L0d9c89b0
    # Line 677
    sd	$t9,192($sp)
    # Line 686
    move	$a4,$zero
.L0d9c95a0:
    move	$t9,$a4
    move	$ra,$zero
    move	$a7,$zero
    move	$a1,$zero
    b	.L0d9c8a8c
    li	$s6,1
.L0d9c95b8:
    sd	$s2,64($sp)
    # Line 838
    move	$s2,$a0
    move	$t8,$zero
    move	$s5,$zero
    b	.L0d9c8d30
    li	$a6,2
.L0d9c95d0:
    # Line 942
    blez	$t8,.L0d9c99cc
    # Line 969
    move	$a4,$s2
    # Line 942
    ld	$v1,200($sp)
    bnez	$v1,.L0d9c9b6c
    # Line 951
    ld	$a0,104($sp)
    beqz	$a0,.L0d9c9a74
    # Line 960
    lw	$a4,4($sp)
    # Line 953
    li	$a2,768
    ld	$at,64($sp)
    addiu	$a4,$s3,4
    addiu	$a0,$s0,1
    addu	$a3,$a4,$s1
    move	$s3,$a4
    addu	$a3,$s4,$a3
    move	$s0,$a0
    beq	$s6,$at,.L0d9c9c1c
    sw	$a2,-23984($a3)
.L0d9c9614:
    # Line 958
    addiu	$s2,$s3,4
    li	$at,1023
    addu	$s3,$s2,$s1
    li	$a4,1057
    addu	$s3,$s4,$s3
    movz	$a4,$at,$t2
    sw	$a4,-23984($s3)
    addiu	$s0,$s0,1
    b	.L0d9c8e9c
    ld	$s3,216($sp)
.L0d9c963c:
    # Line 1011
    beqz	$v1,.L0d9c9950
    nop
.L0d9c9644:
    beqz	$a5,.L0d9c99a8
    lui	$a0,0x2
.L0d9c964c:
    li	$at,128
    li	$a3,4096
    lui	$v1,0x40
    ld	$a2,200($sp)
    li	$a5,8192
    and	$v1,$s8,$v1
    movz	$a5,$a3,$a2
    li	$a2,256
    li	$a3,16
    movz	$at,$a2,$v1
    ld	$a2,104($sp)
    li	$v1,8
    or	$a5,$a5,$at
    ld	$at,120($sp)
    li	$t3,4
    movz	$v1,$a3,$a2
    slti	$a4,$t8,1
    movn	$t3,$a6,$at
    move	$at,$zero
    or	$a5,$a5,$t3
    movz	$at,$a5,$a4
    sltu	$t3,$zero,$t2
    or	$at,$at,$v1
    beqz	$t1,.L0d9c99b0
    or	$t3,$t3,$at
.L0d9c96b0:
    li	$a3,128
    ld	$a5,80($sp)
    ld	$at,88($sp)
    li	$t8,0x8000
    li	$a2,16384
    movz	$a2,$t8,$a5
    move	$t8,$s4
    movz	$t8,$zero,$at
    lui	$a4,0x40
    and	$a4,$s8,$a4
    li	$a5,256
    slti	$v1,$t0,1
    movz	$a3,$a5,$a4
    move	$a5,$zero
    or	$a2,$a2,$a3
    movz	$a5,$a2,$v1
    or	$a5,$a5,$t8
.L0d9c96f4:
    la	$t8,__glim_Color3f
    # Line 1042
    ld	$a4,18048($t8)
    # Line 1011
    or	$at,$a0,$t3
    or	$s5,$a5,$s5
    or	$s5,$at,$s5
    addiu	$t8,$t8,18048
    # Line 1042
    beqz	$a4,.L0d9c9c0c
    # Line 1041
    move	$t0,$t8
    # Line 1042
    nor	$at,$a4,$zero
    and	$at,$s5,$at
    beqz	$at,.L0d9c9ccc
    nop
.L0d9c9724:
    # Line 1043
    ld	$a0,72($t0)
    addiu	$t0,$t0,72
    beqz	$a0,.L0d9c9740
    nor	$v1,$a0,$zero
    and	$v1,$s5,$v1
    bnez	$v1,.L0d9c9724
    nop
.L0d9c9740:
    # Line 1046
    beqz	$t9,.L0d9c9c38
    nop
    beqz	$a0,.L0d9c9bb4
    nop
    ld	$s5,224($sp)
    # Line 1057
    sw	$t0,8($sp)
.L0d9c9758:
    # Line 1061
    sltiu	$t3,$a0,1
    bnez	$t3,.L0d9c9bac
    nop
    # Line 1066
    lw	$a0,28($t0)
    # Line 1069
    li	$a5,1221
    beqz	$ra,.L0d9c9c6c
    # Line 1066
    sw	$a0,12($sp)
    # Line 1069
    li	$a5,1221
    li	$a0,1
.L0d9c977c:
    # Line 1073
    lw	$s0,-22956($s7)
    # Line 1069
    sw	$a0,16($sp)
    # Line 1073
    beqz	$a0,.L0d9c9c8c
    sll	$t8,$s0,0x2
    lw	$a2,32($t0)
    beq	$a5,$a2,.L0d9c9cd4
    move	$s2,$t8
    addu	$a0,$t8,$s1
    move	$a4,$t0
    addu	$a0,$s4,$a0
.L0d9c97a4:
    # Line 1079
    lw	$a3,36($a4)
    addiu	$s2,$s2,4
    lw	$a2,32($a4)
    addiu	$s0,$s0,1
    sw	$a2,-23980($a0)
    beq	$a5,$a3,.L0d9c8ec4
    nop
    lw	$t8,40($a4)
    addiu	$a0,$a0,8
    addiu	$s2,$s2,4
    addiu	$s0,$s0,1
    addiu	$a4,$a4,8
    bne	$a5,$t8,.L0d9c97a4
    sw	$a3,-23984($a0)
    b	.L0d9c8ec4
    nop
.L0d9c97e4:
    # Line 686
    beqz	$t9,.L0d9c95a0
    move	$a4,$zero
    lw	$ra,26428($s7)
    beqz	$ra,.L0d9c95a0
    move	$a4,$zero
    b	.L0d9c95a0
    li	$a4,1
.L0d9c9800:
    # Line 785
    movn	$at,$zero,$t2
    # Line 758
    move	$t9,$zero
    b	.L0d9c8aa8
    movz	$t9,$at,$a6
.L0d9c9810:
    # Line 800
    beqz	$v0,.L0d9c8ad4
    nop
    lw	$a2,3588($s1)
    lw	$v1,1800($s1)
    sllv	$a2,$s6,$a2
    addiu	$a2,$a2,-1
    and	$v1,$v1,$a2
    beqz	$v1,.L0d9c8ad4
    # Line 804
    ld	$a3,48($sp)
    # Line 800
    li	$a4,1
    # Line 804
    beqz	$a3,.L0d9c9cc4
    sd	$a4,104($sp)
    # Line 810
    move	$t3,$a0
    b	.L0d9c8adc
    li	$t2,1
.L0d9c984c:
    # Line 932
    b	.L0d9c95d0
    move	$t0,$zero
.L0d9c9854:
    # Line 1103
    bnez	$a7,.L0d9c8f2c
    nop
    # Line 1104
    addiu	$s2,$s2,4
    addu	$t0,$s2,$s1
    addiu	$s0,$s0,1
    addu	$t0,$s4,$t0
    li	$a7,107
    b	.L0d9c9024
    sw	$a7,-23984($t0)
.L0d9c9878:
    # Line 1159
    ld	$t8,104($sp)
    beqz	$t8,.L0d9c9c44
    nop
.L0d9c9884:
    beqz	$t2,.L0d9c9c58
    li	$a1,1193
.L0d9c988c:
    b	.L0d9c90a0
    addu	$a0,$s2,$s1
.L0d9c9894:
    # Line 902
    ld	$t0,80($sp)
    ld	$a3,120($sp)
    movn	$t0,$a3,$a5
    # Line 912
    li	$v1,694
    lui	$s3,0x40
    li	$at,668
    and	$s3,$s8,$s3
    # Line 906
    li	$a2,656
    # Line 912
    movz	$at,$v1,$s3
    # Line 906
    li	$v1,641
    li	$s3,626
    movz	$s3,$a2,$a4
    li	$a2,611
    addu	$a3,$s2,$s1
    movz	$a2,$v1,$a4
    movz	$a2,$s3,$t0
    # Line 912
    addiu	$s3,$s2,8
    # Line 906
    addu	$a3,$s4,$a3
    # Line 912
    addu	$v1,$s3,$s1
    # Line 906
    sw	$a2,-23980($a3)
    # Line 912
    addu	$v1,$s4,$v1
    addiu	$s0,$s0,2
    # Line 916
    bnez	$a5,.L0d9c8e20
    # Line 912
    sw	$at,-23984($v1)
    b	.L0d9c8e40
    nop
.L0d9c98fc:
    # Line 1105
    bne	$a7,$a0,.L0d9c8f38
    # Line 1106
    andi	$a0,$a1,0x1
    addiu	$s2,$s2,4
    addu	$at,$s2,$s1
    addiu	$s0,$s0,1
    addu	$at,$s4,$at
    li	$t8,108
    b	.L0d9c9024
    sw	$t8,-23984($at)
.L0d9c9920:
    # Line 714
    move	$a7,$zero
    b	.L0d9c8a18
    move	$a1,$zero
.L0d9c992c:
    # Line 942
    ld	$v1,88($sp)
    bnez	$v1,.L0d9c8e8c
    li	$s3,1136
    li	$a2,1106
    li	$s3,1119
    b	.L0d9c8e8c
    movz	$s3,$a2,$a0
.L0d9c9948:
    b	.L0d9c8974
    # Line 671
    move	$a0,$zero
.L0d9c9950:
    # Line 1011
    bnez	$ra,.L0d9c9644
    li	$a3,3584
    ld	$t3,192($sp)
    li	$a2,32
    li	$a0,64
    li	$a4,512
    movz	$a0,$a2,$t9
    li	$a2,1536
    movz	$a0,$zero,$t3
    slti	$v1,$t3,1
    slti	$at,$t3,2
    slti	$t3,$t3,3
    xori	$v1,$v1,0x1
    xori	$t3,$t3,0x1
    movz	$a4,$zero,$v1
    xori	$at,$at,0x1
    movz	$a3,$zero,$t3
    movz	$a2,$zero,$at
    or	$a2,$a2,$a3
    or	$a0,$a0,$a4
    bnez	$a5,.L0d9c964c
    or	$a0,$a0,$a2
.L0d9c99a8:
    bnez	$t1,.L0d9c96b0
    lui	$t3,0x4
.L0d9c99b0:
    b	.L0d9c96f4
    move	$a5,$zero
.L0d9c99b8:
    # Line 838
    move	$s2,$a0
    move	$t8,$zero
    move	$s5,$zero
    b	.L0d9c8d30
    li	$a6,2
.L0d9c99cc:
    # Line 969
    addu	$a0,$s2,$s1
    ld	$s3,216($sp)
    beqz	$a5,.L0d9c9cdc
    addu	$a0,$s4,$a0
    sd	$s2,320($sp)
    sd	$a0,32($sp)
    # Line 979
    addiu	$s0,$s0,2
    sd	$s0,40($sp)
    addiu	$a0,$s2,8
    # Line 978
    ld	$at,32($sp)
    # Line 979
    sd	$a0,24($sp)
    move	$a4,$a0
    addu	$a0,$a0,$s1
    # Line 978
    li	$a3,656
    # Line 979
    addu	$a0,$s4,$a0
    # Line 978
    sw	$a3,-23980($at)
    # Line 979
    li	$a2,694
    beqz	$t1,.L0d9c9a40
    sw	$a2,-23984($a0)
    # Line 981
    li	$a3,911
    addiu	$a0,$s2,12
    ld	$s0,40($sp)
    move	$a4,$a0
    addu	$a0,$a0,$s1
    li	$a2,902
    addu	$a0,$s4,$a0
    movz	$a2,$a3,$t2
    addiu	$s0,$s0,1
    sw	$a2,-23984($a0)
.L0d9c9a40:
    # Line 985
    li	$at,997
    li	$a3,975
    li	$a2,986
    movz	$a2,$a3,$t9
    addiu	$s2,$a4,8
    movz	$at,$a2,$t2
    addu	$v1,$s2,$s1
    # Line 984
    li	$a2,719
    sw	$a2,-23980($a0)
    # Line 985
    addu	$v1,$s4,$v1
    addiu	$s0,$s0,2
    b	.L0d9c8e9c
    sw	$at,-23984($v1)
.L0d9c9a74:
    # Line 960
    bnez	$a4,.L0d9c9a84
    lw	$at,0($sp)
    beqz	$at,.L0d9c9d08
    nop
.L0d9c9a84:
    sd	$t0,232($sp)
    sd	$t2,248($sp)
    sd	$t1,256($sp)
    sd	$a5,264($sp)
    sd	$t3,280($sp)
    sd	$a7,288($sp)
    sd	$v0,296($sp)
    sd	$a1,304($sp)
    sd	$t9,272($sp)
    # Line 961
    # lw $t9, -17004($gp) # &getenv
    la	$a0,__glim_Color3f
    sd	$t8,312($sp)
    sd	$ra,240($sp)
    jal	getenv
    addiu	$a0,$a0,19848
    ld	$t8,312($sp)
    ld	$a1,304($sp)
    ld	$a7,288($sp)
    ld	$t3,280($sp)
    ld	$t9,272($sp)
    ld	$a5,264($sp)
    ld	$t1,256($sp)
    ld	$t2,248($sp)
    li	$a6,2
    # Line 964
    li	$v1,792
    ld	$ra,240($sp)
    # Line 965
    li	$a4,780
    # Line 964
    addu	$a0,$s2,$s1
    ld	$t0,232($sp)
    # Line 961
    bnez	$v0,.L0d9c9b20
    # Line 964
    addu	$a0,$s4,$a0
    # Line 962
    addiu	$s3,$s3,4
    addu	$a3,$s3,$s1
    ld	$v0,296($sp)
    addiu	$s0,$s0,1
    addu	$a3,$s4,$a3
    li	$a2,768
    b	.L0d9c9b3c
    sw	$a2,-23984($a3)
.L0d9c9b20:
    # Line 965
    addiu	$s3,$s2,8
    ld	$v0,296($sp)
    addu	$at,$s3,$s1
    # Line 964
    sw	$v1,-23980($a0)
    # Line 965
    addu	$at,$s4,$at
    addiu	$s0,$s0,2
    sw	$a4,-23984($at)
.L0d9c9b3c:
    # Line 967
    li	$s2,1013
    li	$a4,1045
    movz	$a4,$s2,$t2
    addiu	$s2,$s3,4
    li	$a2,1035
    addu	$a3,$s2,$s1
    ld	$s3,216($sp)
    movz	$a2,$a4,$t9
    addu	$a3,$s4,$a3
    addiu	$s0,$s0,1
    b	.L0d9c8e9c
    sw	$a2,-23984($a3)
.L0d9c9b6c:
    # Line 949
    li	$a0,891
    # Line 951
    li	$a3,1013
    li	$at,1045
    # Line 949
    addu	$a2,$s2,$s1
    ld	$s3,216($sp)
    addu	$a2,$s4,$a2
    # Line 951
    addiu	$s2,$s2,12
    movz	$at,$a3,$t2
    # Line 949
    sw	$a0,-23980($a2)
    # Line 951
    addu	$v1,$s2,$s1
    # Line 950
    li	$a0,779
    sw	$a0,-23976($a2)
    # Line 951
    addu	$v1,$s4,$v1
    addiu	$s0,$s0,3
    b	.L0d9c8e9c
    sw	$at,-23984($v1)
.L0d9c9bac:
    b	.L0d9c8ec4
    # Line 1079
    li	$a5,1221
.L0d9c9bb4:
    # Line 1053
    beqz	$a4,.L0d9c9d38
    # Line 1052
    move	$t0,$t8
    # Line 1053
    lui	$a5,0x2
    or	$a5,$s5,$a5
    nor	$at,$a4,$zero
    li	$t3,-65
    and	$at,$a5,$at
    and	$at,$t3,$at
    beqz	$at,.L0d9c9d48
    ld	$s5,224($sp)
    ld	$s5,224($sp)
.L0d9c9be0:
    # Line 1054
    ld	$a0,72($t0)
    addiu	$t0,$t0,72
    beqz	$a0,.L0d9c9d30
    nor	$t8,$a0,$zero
    and	$t8,$a5,$t8
    and	$t8,$t3,$t8
    bnez	$t8,.L0d9c9be0
    nop
    sw	$t0,8($sp)
.L0d9c9c04:
    # Line 1057
    b	.L0d9c9758
    movn	$ra,$s6,$a0
.L0d9c9c0c:
    # Line 1043
    b	.L0d9c9740
    move	$a0,$a4
.L0d9c9c14:
    b	.L0d9c9418
    # Line 1150
    lw	$a1,12($sp)
.L0d9c9c1c:
    # Line 956
    addiu	$s3,$a4,4
    addu	$v1,$s3,$s1
    addiu	$s0,$a0,1
    addu	$v1,$s4,$v1
    li	$at,758
    b	.L0d9c9614
    sw	$at,-23984($v1)
.L0d9c9c38:
    ld	$s5,224($sp)
    # Line 1057
    b	.L0d9c9758
    sw	$t0,8($sp)
.L0d9c9c44:
    # Line 1159
    bnez	$t1,.L0d9c9884
    li	$a0,1178
    li	$a1,1183
    b	.L0d9c988c
    movz	$a1,$a0,$t2
.L0d9c9c58:
    ld	$a1,88($sp)
    bnez	$a1,.L0d9c988c
    li	$a1,1193
    b	.L0d9c988c
    li	$a1,1188
.L0d9c9c6c:
    # Line 1069
    ld	$a2,128($sp)
    bnez	$a2,.L0d9c977c
    li	$a0,1
    lw	$a3,8($t0)
    beq	$a5,$a3,.L0d9c977c
    li	$a0,1
    b	.L0d9c977c
    move	$a0,$zero
.L0d9c9c8c:
    b	.L0d9c8ec4
    # Line 1079
    move	$s2,$t8
.L0d9c9c94:
    # Line 1150
    li	$a1,1173
    # Line 1149
    addiu	$s0,$s0,2
    # Line 1148
    addu	$t1,$s2,$s1
    # Line 1149
    addiu	$s2,$s2,8
    addu	$a7,$s2,$s1
    # Line 1148
    addu	$t1,$s4,$t1
    # Line 1149
    addu	$a7,$s4,$a7
    # Line 1148
    li	$t0,1200
    sw	$t0,-23980($t1)
    # Line 1149
    li	$a4,1211
    # Line 1150
    b	.L0d9c9418
    # Line 1149
    sw	$a4,-23984($a7)
.L0d9c9cc4:
    b	.L0d9c8adc
    # Line 810
    move	$t3,$zero
.L0d9c9ccc:
    b	.L0d9c9740
    # Line 1043
    move	$a0,$a4
.L0d9c9cd4:
    b	.L0d9c8ec4
    # Line 1079
    move	$s2,$t8
.L0d9c9cdc:
    # Line 992
    li	$a2,1216
    li	$at,1211
    addiu	$s2,$s2,8
    movz	$at,$a2,$t9
    addu	$v1,$s2,$s1
    # Line 991
    li	$a2,1198
    sw	$a2,-23980($a0)
    # Line 992
    addu	$v1,$s4,$v1
    addiu	$s0,$s0,2
    b	.L0d9c8e9c
    sw	$at,-23984($v1)
.L0d9c9d08:
    # Line 967
    beqz	$t9,.L0d9c9d54
    # Line 972
    addiu	$s2,$s3,4
    # Line 970
    addiu	$s2,$s3,4
    addu	$a4,$s2,$s1
    addiu	$s0,$s0,1
    ld	$s3,216($sp)
    addu	$a4,$s4,$a4
    li	$a3,986
    b	.L0d9c8e9c
    sw	$a3,-23984($a4)
.L0d9c9d30:
    b	.L0d9c9c04
    # Line 1054
    sw	$t0,8($sp)
.L0d9c9d38:
    ld	$s5,224($sp)
    sw	$t8,8($sp)
    b	.L0d9c9c04
    move	$a0,$a4
.L0d9c9d48:
    sw	$t8,8($sp)
    b	.L0d9c9c04
    move	$a0,$a4
.L0d9c9d54:
    # Line 972
    li	$v1,975
    addu	$at,$s2,$s1
    li	$s3,997
    addu	$at,$s4,$at
    movz	$s3,$v1,$t2
    sw	$s3,-23984($at)
    addiu	$s0,$s0,1
    b	.L0d9c8e9c
    ld	$s3,216($sp)
.L0d9c9d78:
    # Line 840
    sllv	$a2,$s6,$a5
    b	.L0d9c8c10
    lw	$v1,1800($s1)
.end AddProgram

# Function: __glOdysseyValidateProgram
# Declared: Line 1271 (Source lines: 1271-1362)
# Address: 0x0d9c9d90 - 0x0d9c9edc (Size: 332 bytes, Frame: 48)
.globl __glOdysseyValidateProgram
.ent __glOdysseyValidateProgram
__glOdysseyValidateProgram:
    # Line 1271
    lui	$v0,0x2
    ori	$v0,$v0,0x1ef8
    addu	$v0,$v0,$a0
    addiu	$sp,$sp,-48
    lbu	$v0,0($v0)
    sd	$s0,24($sp)
    lui	$at,0x13
    lui	$s0,0x1
    sd	$a0,16($sp)
    addiu	$at,$at,-6144
    sd	$gp,32($sp)
    beqz	$v0,.L0d9c9de0
    addu	$gp,$t9,$at
    # Line 1362
    ld	$gp,32($sp)
    # Line 1308
    lui	$v1,0x2980
    ori	$v1,$v1,0x80c5
    sw	$v1,0($s0)
    # Line 1362
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9c9de0:
    sd	$ra,40($sp)
    # Line 1313
    ld	$a0,16($sp)
    sd	$s1,8($sp)
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addu	$s1,$s0,$a0
    # Line 1320
    lw	$ra,-22872($s1)
    # Line 1321
    sw	$zero,-22872($s1)
    # Line 1313
    addiu	$t9,$t9,-30592
    # Line 1320
    sd	$ra,0($sp)
    # Line 1324
    move	$a1,$zero
    bal __glOdyim_SoftBegin
    # Line 1313
    sw	$zero,-22956($s1)
    # Line 1327
    # lw $t9, -29716($gp) # &__glOdysseyGetNumSWClipPlanes
    jal	__glOdysseyGetNumSWClipPlanes
    ld	$a0,16($sp)
    beqz	$v0,.L0d9c9e3c
    ld	$ra,40($sp)
    # Line 1328
    # lw $t9, -32712($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-30592
    ld	$a0,16($sp)
    bal __glOdyim_SoftBegin
    li	$a1,1
    ld	$ra,40($sp)
.L0d9c9e3c:
    # Line 1332
    move	$a2,$zero
    lw	$v0,-22956($s1)
    lui	$a4,0x6000
    lui	$a3,0x2800
    ld	$at,0($sp)
    # Line 1362
    ld	$gp,32($sp)
    # Line 1332
    ori	$a3,$a3,0x8000
    ori	$a4,$a4,0x8000
    sw	$at,-22872($s1)
    beqz	$v0,.L0d9c9ebc
    move	$a0,$at
    move	$a0,$s1
    nop
.L0d9c9e70:
    # Line 1351
    sra	$t0,$a2,0xa
    andi	$a7,$a2,0x3ff
    sll	$t0,$t0,0x17
    or	$a7,$a7,$t0
    or	$a7,$a3,$a7
    sw	$a7,0($s0)
    # Line 1352
    lw	$a6,-23980($a0)
    srl	$a7,$a6,0xa
    andi	$a6,$a6,0x3ff
    sll	$a7,$a7,0x17
    or	$a6,$a6,$a7
    or	$a6,$a4,$a6
    sw	$a6,0($s0)
    # Line 1343
    lw	$a5,-22956($s1)
    addiu	$a2,$a2,1
    sltu	$a5,$a2,$a5
    bnez	$a5,.L0d9c9e70
    addiu	$a0,$a0,4
    lw	$a0,-22872($s1)
.L0d9c9ebc:
    # Line 1362
    ld	$s0,24($sp)
    # Line 1361
    sw	$a0,-22876($s1)
    # Line 1360
    sw	$a0,-22880($s1)
    # Line 1359
    sw	$a0,-22884($s1)
    # Line 1358
    sw	$a0,-22888($s1)
    # Line 1362
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glOdysseyValidateProgram

# Function: __glOdysseySetProgram
# Declared: Line 1368 (Source lines: 1373-1509)
# Address: 0x0d9c9ee0 - 0x0d9ca3a4 (Size: 1220 bytes, Frame: 0)
.globl __glOdysseySetProgram
.ent __glOdysseySetProgram
__glOdysseySetProgram:
    # Line 1374
    lui	$at,0x2
    ori	$at,$at,0x1ef8
    addu	$at,$at,$a0
    # Line 1373
    lui	$a3,0x1
    # Line 1374
    lbu	$at,0($at)
    # Line 1373
    addu	$t2,$a3,$a0
    # Line 1402
    lui	$a7,0x4000
    # Line 1380
    lui	$v0,0x2980
    # Line 1374
    lw	$a4,-22868($t2)
    # Line 1380
    ori	$v0,$v0,0x80c5
    # Line 1374
    beqz	$at,.L0d9c9f20
    # Line 1373
    lw	$a5,-22864($t2)
    # Line 1509
    jr	$ra
    # Line 1380
    sw	$v0,0($a3)
.L0d9c9f18:
    # Line 1509
    jr	$ra
    nop
.L0d9c9f20:
    # Line 1381
    lw	$v1,-22956($t2)
    # Line 1389
    sltu	$a2,$a5,$a4
    subu	$a6,$a5,$a4
    # Line 1381
    beqz	$v1,.L0d9c9f18
    # Line 1389
    addiu	$a6,$a6,1848
    beqz	$a4,.L0d9c9f4c
    lw	$t1,27956($t2)
    bnez	$a2,.L0d9c9f4c
    nop
    b	.L0d9c9f54
    # Line 1402
    ori	$a7,$a7,0x8000
.L0d9c9f4c:
    # Line 1389
    move	$a6,$a5
    # Line 1402
    ori	$a7,$a7,0x8000
.L0d9c9f54:
    andi	$t3,$a5,0x3ff
    lui	$t0,0x2700
    # Line 1389
    sll	$t8,$a6,0x2
    # Line 1402
    ori	$t0,$t0,0x8000
    srl	$t9,$a5,0xa
    sll	$t9,$t9,0x17
    # Line 1389
    subu	$t8,$t8,$a6
    sll	$t8,$t8,0x2
    # Line 1402
    or	$t3,$t3,$t9
    or	$t3,$t0,$t3
    sw	$t3,0($a3)
    # Line 1389
    addu	$t1,$t1,$t8
    # Line 1406
    lhu	$a2,10($t1)
    sra	$a5,$a2,0xa
    andi	$a2,$a2,0x3ff
    sll	$a5,$a5,0x17
    or	$a2,$a2,$a5
    or	$a2,$a7,$a2
    sw	$a2,0($a3)
    lhu	$v1,8($t1)
    sra	$a2,$v1,0xa
    andi	$v1,$v1,0x3ff
    sll	$a2,$a2,0x17
    or	$v1,$v1,$a2
    or	$v1,$a7,$v1
    sw	$v1,0($a3)
    lhu	$v0,6($t1)
    sra	$v1,$v0,0xa
    andi	$v0,$v0,0x3ff
    sll	$v1,$v1,0x17
    or	$v0,$v0,$v1
    or	$v0,$a7,$v0
    sw	$v0,0($a3)
    lhu	$at,4($t1)
    sra	$v0,$at,0xa
    andi	$at,$at,0x3ff
    sll	$v0,$v0,0x17
    or	$at,$at,$v0
    or	$at,$a7,$at
    sw	$at,0($a3)
    lhu	$t9,2($t1)
    sra	$at,$t9,0xa
    andi	$t9,$t9,0x3ff
    sll	$at,$at,0x17
    or	$t9,$t9,$at
    or	$t9,$a7,$t9
    sw	$t9,0($a3)
    lhu	$t3,0($t1)
    sra	$t9,$t3,0xa
    andi	$t3,$t3,0x3ff
    sll	$t9,$t9,0x17
    or	$t3,$t3,$t9
    or	$t3,$a7,$t3
    sw	$t3,0($a3)
    # Line 1419
    sll	$t3,$a1,0x5
    # Line 1435
    li	$at,199
    # Line 1419
    addu	$t3,$a0,$t3
    # Line 1415
    sw	$a1,-22872($t2)
    # Line 1419
    addu	$t3,$a3,$t3
    lw	$a5,-22932($t3)
    # Line 1422
    sll	$t8,$a5,0x2
    # Line 1419
    beqz	$a5,.L0d9ca398
    # Line 1422
    subu	$t8,$t8,$a5
    # Line 1419
    beq	$a5,$a4,.L0d9ca178
    ld	$a6,27952($t2)
    # Line 1435
    lw	$t1,27960($t2)
    subu	$t1,$t1,$a5
    # Line 1422
    sll	$a1,$a6,0x0
    # Line 1435
    slti	$t9,$t1,199
    li	$a4,1848
    movz	$t1,$at,$t9
    move	$a6,$zero
    # Line 1422
    sll	$t8,$t8,0x2
    # Line 1435
    blez	$t1,.L0d9ca170
    # Line 1422
    addu	$t8,$a1,$t8
    # Line 1435
    addiu	$a5,$t8,-2
    addiu	$a1,$t8,10
    # Line 1441
    sra	$t9,$a4,0xa
    andi	$t8,$a4,0x3ff
.L0d9ca090:
    sll	$t9,$t9,0x17
    or	$t8,$t8,$t9
    or	$t8,$t0,$t8
    sw	$t8,0($a3)
    # Line 1447
    lhu	$t9,0($a1)
    sra	$at,$t9,0xa
    andi	$t9,$t9,0x3ff
    sll	$at,$at,0x17
    or	$t9,$t9,$at
    or	$t9,$a7,$t9
    sw	$t9,0($a3)
    lhu	$t8,-2($a1)
    sra	$t9,$t8,0xa
    andi	$t8,$t8,0x3ff
    sll	$t9,$t9,0x17
    or	$t8,$t8,$t9
    or	$t8,$a7,$t8
    sw	$t8,0($a3)
    lhu	$a2,-4($a1)
    sra	$t8,$a2,0xa
    andi	$a2,$a2,0x3ff
    sll	$t8,$t8,0x17
    or	$a2,$a2,$t8
    or	$a2,$a7,$a2
    sw	$a2,0($a3)
    lhu	$v1,-6($a1)
    sra	$a2,$v1,0xa
    andi	$v1,$v1,0x3ff
    sll	$a2,$a2,0x17
    or	$v1,$v1,$a2
    or	$v1,$a7,$v1
    sw	$v1,0($a3)
    lhu	$v0,-8($a1)
    sra	$v1,$v0,0xa
    andi	$v0,$v0,0x3ff
    sll	$v1,$v1,0x17
    or	$v0,$v0,$v1
    or	$v0,$a7,$v0
    sw	$v0,0($a3)
    lhu	$at,-10($a1)
    sra	$v0,$at,0xa
    andi	$at,$at,0x3ff
    sll	$v0,$v0,0x17
    or	$at,$at,$v0
    or	$at,$a7,$at
    sw	$at,0($a3)
    # Line 1438
    addiu	$a4,$a4,1
    addiu	$a6,$a6,1
    addiu	$a5,$a5,12
    addiu	$a1,$a1,12
    # Line 1441
    andi	$t8,$a4,0x3ff
    # Line 1438
    bne	$t1,$a6,.L0d9ca090
    # Line 1441
    sra	$t9,$a4,0xa
    # Line 1438
    ld	$a1,27952($t2)
    lw	$a5,-22932($t3)
    sll	$a1,$a1,0x0
.L0d9ca170:
    # Line 1452
    b	.L0d9ca17c
    sw	$a5,-22868($t2)
.L0d9ca178:
    sll	$a1,$a6,0x0
.L0d9ca17c:
    # Line 1455
    lw	$a6,-22928($t3)
    sw	$a6,-22864($t2)
    # Line 1462
    lw	$a2,-22928($t3)
    # Line 1458
    lw	$a6,-22924($t3)
    # Line 1462
    srl	$a5,$a2,0xa
    andi	$a2,$a2,0x3ff
    # Line 1458
    sll	$a4,$a6,0x2
    subu	$a4,$a4,$a6
    # Line 1462
    sll	$a5,$a5,0x17
    or	$a2,$a2,$a5
    # Line 1458
    sll	$a4,$a4,0x2
    addu	$a4,$a1,$a4
    # Line 1462
    or	$a2,$t0,$a2
    sw	$a2,0($a3)
    # Line 1483
    lui	$a2,0x2900
    # Line 1466
    lhu	$v1,10($a4)
    sra	$a1,$v1,0xa
    andi	$v1,$v1,0x3ff
    sll	$a1,$a1,0x17
    or	$v1,$v1,$a1
    or	$v1,$a7,$v1
    sw	$v1,0($a3)
    lhu	$v0,8($a4)
    sra	$v1,$v0,0xa
    andi	$v0,$v0,0x3ff
    sll	$v1,$v1,0x17
    or	$v0,$v0,$v1
    or	$v0,$a7,$v0
    sw	$v0,0($a3)
    lhu	$at,6($a4)
    sra	$v0,$at,0xa
    andi	$at,$at,0x3ff
    sll	$v0,$v0,0x17
    or	$at,$at,$v0
    or	$at,$a7,$at
    sw	$at,0($a3)
    lhu	$t9,4($a4)
    sra	$at,$t9,0xa
    andi	$t9,$t9,0x3ff
    sll	$at,$at,0x17
    or	$t9,$t9,$at
    or	$t9,$a7,$t9
    sw	$t9,0($a3)
    lhu	$t1,2($a4)
    sra	$t9,$t1,0xa
    andi	$t1,$t1,0x3ff
    sll	$t9,$t9,0x17
    or	$t1,$t1,$t9
    or	$t1,$a7,$t1
    sw	$t1,0($a3)
    lhu	$t0,0($a4)
    # Line 1483
    ori	$a2,$a2,0x8000
    # Line 1466
    sra	$t1,$t0,0xa
    andi	$t0,$t0,0x3ff
    sll	$t1,$t1,0x17
    # Line 1485
    lui	$v0,0x9080
    # Line 1466
    or	$t0,$t0,$t1
    # Line 1485
    ori	$v0,$v0,0x8800
    # Line 1466
    or	$t0,$a7,$t0
    sw	$t0,0($a3)
    # Line 1470
    lw	$a6,-22936($t3)
    addiu	$a6,$a6,1
    sw	$a6,-24032($t2)
    # Line 1472
    lw	$a5,-22936($t3)
    sll	$a5,$a5,0x2
    addu	$a5,$a0,$a5
    addu	$a5,$a3,$a5
    lw	$a5,-23980($a5)
    sw	$a5,-24072($t2)
    # Line 1483
    lw	$a1,-24072($t2)
    lw	$a4,-24072($t2)
    srl	$a4,$a4,0xa
    andi	$a1,$a1,0x3ff
    sll	$a4,$a4,0x17
    or	$a1,$a1,$a4
    or	$a1,$a2,$a1
    sw	$a1,0($a3)
    # Line 1484
    lw	$v1,-24032($t2)
    lw	$a0,-24032($t2)
    lui	$a6,0x3300
    srl	$a0,$a0,0xa
    andi	$v1,$v1,0x3ff
    sll	$a0,$a0,0x17
    ori	$a6,$a6,0x8000
    or	$v1,$v1,$a0
    or	$v1,$a6,$v1
    sw	$v1,0($a3)
    # Line 1485
    sw	$v0,0($a3)
    # Line 1486
    sw	$zero,0($a3)
    # Line 1487
    sw	$zero,0($a3)
    # Line 1491
    lw	$at,-22940($t3)
    sw	$at,-24032($t2)
    # Line 1492
    lw	$t9,-22952($t3)
    sw	$t9,-24072($t2)
    # Line 1493
    lw	$t8,-22948($t3)
    sw	$t8,-24068($t2)
    # Line 1494
    lw	$t1,-22944($t3)
    sw	$t1,-24060($t2)
    # Line 1503
    lw	$a7,-24032($t2)
    lw	$t0,-24032($t2)
    srl	$t0,$t0,0xa
    andi	$a7,$a7,0x3ff
    sll	$t0,$t0,0x17
    or	$a7,$a7,$t0
    or	$a6,$a6,$a7
    sw	$a6,0($a3)
    # Line 1504
    lw	$a4,-24072($t2)
    lw	$a5,-24072($t2)
    srl	$a5,$a5,0xa
    andi	$a4,$a4,0x3ff
    sll	$a5,$a5,0x17
    or	$a4,$a4,$a5
    or	$a2,$a2,$a4
    sw	$a2,0($a3)
    # Line 1505
    lw	$a1,-24068($t2)
    lw	$a4,-24068($t2)
    lui	$a2,0x2a00
    srl	$a4,$a4,0xa
    andi	$a1,$a1,0x3ff
    sll	$a4,$a4,0x17
    ori	$a2,$a2,0x8000
    or	$a1,$a1,$a4
    or	$a1,$a1,$a2
    sw	$a1,0($a3)
    # Line 1506
    lw	$a0,-24060($t2)
    lw	$a2,-24060($t2)
    lui	$a1,0x2c00
    srl	$a2,$a2,0xa
    andi	$a0,$a0,0x3ff
    sll	$a2,$a2,0x17
    ori	$a1,$a1,0x8000
    or	$a0,$a0,$a2
    or	$a0,$a0,$a1
    # Line 1509
    jr	$ra
    # Line 1506
    sw	$a0,0($a3)
.L0d9ca398:
    # Line 1452
    ld	$a1,27952($t2)
    b	.L0d9ca17c
    sll	$a1,$a1,0x0
.end __glOdysseySetProgram

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4066800000000000:
    .word 0x40668000, 0x00000000

