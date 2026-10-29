# BUZZ microcode: routine map

Release IRIX 6.5.30m. Every row is **established** from the records of `ucode/ODSY/buzz_xform.bin` (listing `ucode/disasm/buzz_xform.lst`, field split in `ucode/buzz_isa.md`); nothing here names an operation. The table is written by `scripts/buzz_routine_table.py`.

A routine is the run of records from its entry to the next record whose bits 1:0 are 1 or 2 (the end mark; `ucode/buzz_isa.md`, "Sequencing bits 1:0"). An entry is record 0, a record named in libGLcore's `AddProgram` list or by the lighting loader, or the record five after an end mark. Where two entries share an end mark (107 and 108, 119, 123 and 127, 145 and 159), the later entry is a tail of the earlier routine.

Columns:

- **Entry**, **End mark**, **Records**: the entry record, the record carrying the mark, and the routine's length including that record.
- **Kernel record**: the same routine's record number in the kernel's older copy (`buzz_ucode`, `ucode/buzz_ucode.md`). Records from 891 on sit 99 lower there; routines 792 to 890 are the 99 records the kernel copy lacks (`none`).
- **In list**: whether the entry is in libGLcore's per-program list, so the host can select it.
- **Idle**: records equal to the idle word.
- **Data addresses**: lowest and highest nonzero value of the provisional data-memory address field `ma` over the routine.
- **Lanes**: values of the provisional lane field `ln` other than 0.
- **Value-3 marks**: records of the routine whose bits 1:0 are 3.
- **Same shape as**: other entries with the same length whose records agree in every bit except the data-memory address and the three register-number fields. Two routines in a row differ only in operands, not in the operation fields.

What the table supports:

- **established.** Entries 77, 82, 87, 92, 97 and 102 are six one-record routines: a first record carrying the end mark, then four idle delay slots. They differ only in the two five-bit register-number fields of that record (`r1`, `r2` in `ucode/buzz_isa.md`): `r1` is 0x11, 0x11, 0x12, 0x12, 0x14, 0x18 and `r2` is 0x1a, 0x1d, 0x1a, 0x1d, 0x1a, 0x1a. Entry 87 is the third, entry 92 the fourth and entry 97 the fifth.
- **inferred.** Those six are one operation applied to different register pairs, because every other field is equal. Which GL state picks which pair is **unknown**: `AddProgram` builds the list from state flags by arithmetic, not by immediate loads that say why.
- **established.** Entry 51 is a 22-record routine with no idle record. Its data address field counts 0x100 to 0x10f and then holds 0x1e3; its lane field runs 4, 5, 6, 7 in groups. The record with the end mark (72) is followed by two idle records and two non-idle records (75, 76) before entry 77.
- **inferred.** A routine with a nonzero data address and lanes 4 to 7 moves four-component values through data memory; one with neither (26, 40, 303, 324) uses only registers and sequencer fields. Both are provisional readings of provisional fields.
- **unknown: no shipped software or published source depends on it.** What each routine computes. No shipped host program reads a result back (`ucode/buzz_isa.md`, pass 7), so the only witnesses are the records.

## Routines

| Entry | End mark | Records | Kernel record | In list | Idle | Data addresses | Lanes | Value-3 marks | Same shape as |
|---|---:|---:|---:|---|---:|---|---|---:|---|
| 0 | 7 | 8 | 0 | no | 0 | 0x120-0x127 | 4,5,6,7 | 0 | - |
| 12 | 21 | 10 | 12 | yes | 5 | - | 6,7 | 0 | - |
| 26 | 35 | 10 | 26 | yes | 5 | - | - | 0 | - |
| 40 | 46 | 7 | 40 | yes | 5 | - | - | 0 | - |
| 51 | 72 | 22 | 51 | yes | 0 | 0x100-0x1e3 | 4,5,6,7 | 0 | - |
| 77 | 77 | 1 | 77 | yes | 0 | - | - | 0 | 82, 87, 92, 97, 102 |
| 82 | 82 | 1 | 82 | yes | 0 | - | - | 0 | 77, 87, 92, 97, 102 |
| 87 | 87 | 1 | 87 | yes | 0 | - | - | 0 | 77, 82, 92, 97, 102 |
| 92 | 92 | 1 | 92 | yes | 0 | - | - | 0 | 77, 82, 87, 97, 102 |
| 97 | 97 | 1 | 97 | yes | 0 | - | - | 0 | 77, 82, 87, 92, 102 |
| 102 | 102 | 1 | 102 | yes | 0 | - | - | 0 | 77, 82, 87, 92, 97 |
| 107 | 114 | 8 | 107 | yes | 1 | - | - | 0 | - |
| 108 | 114 | 7 | 108 | yes | 1 | - | - | 0 | - |
| 119 | 140 | 22 | 119 | yes | 0 | 0x1e3-0x1e3 | 7 | 0 | - |
| 123 | 140 | 18 | 123 | yes | 0 | 0x1e3-0x1e3 | 7 | 0 | - |
| 127 | 140 | 14 | 127 | yes | 0 | 0x1e3-0x1e3 | 7 | 0 | - |
| 145 | 209 | 65 | 145 | yes | 6 | 0x1e0-0x1e8 | 4,5,6,7 | 0 | - |
| 159 | 209 | 51 | 159 | yes | 6 | 0x1e0-0x1e8 | 4,5,6,7 | 0 | - |
| 214 | 238 | 25 | 214 | no | 6 | - | - | 2 | - |
| 243 | 255 | 13 | 243 | no | 1 | - | - | 1 | - |
| 260 | 273 | 14 | 260 | no | 0 | - | - | 1 | - |
| 278 | 298 | 21 | 278 | no | 0 | 0x140-0x1f6 | 4,5 | 0 | - |
| 303 | 319 | 17 | 303 | no | 0 | - | - | 0 | - |
| 324 | 355 | 32 | 324 | no | 0 | - | - | 0 | - |
| 360 | 405 | 46 | 360 | no | 0 | 0x1e3-0x1e3 | - | 0 | - |
| 410 | 413 | 4 | 410 | yes | 2 | - | - | 0 | - |
| 418 | 438 | 21 | 418 | no | 0 | 0x200-0x20b | - | 0 | - |
| 443 | 451 | 9 | 443 | no | 2 | - | - | 0 | - |
| 456 | 474 | 19 | 456 | no | 0 | - | - | 0 | - |
| 479 | 485 | 7 | 479 | no | 2 | - | - | 0 | - |
| 490 | 510 | 21 | 490 | no | 1 | 0xf0-0x1ea | 4,5,6 | 0 | - |
| 515 | 515 | 1 | 515 | yes | 0 | - | - | 0 | 606 |
| 520 | 520 | 1 | 520 | no | 0 | - | - | 0 | 1153, 1158, 1163, 1168, 1173, 1178 ... |
| 525 | 537 | 13 | 525 | no | 4 | - | - | 0 | - |
| 542 | 558 | 17 | 542 | no | 1 | - | - | 0 | - |
| 563 | 579 | 17 | 563 | no | 1 | - | - | 0 | - |
| 584 | 600 | 17 | 584 | no | 1 | - | - | 0 | - |
| 605 | 606 | 2 | 605 | no | 1 | 0x1e3-0x1e3 | - | 0 | - |
| 606 | 606 | 1 | 606 | yes | 0 | 0x1e3-0x1e3 | - | 0 | 515 |
| 611 | 621 | 11 | 611 | yes | 0 | 0x1e2-0x209 | 4,5,6,7 | 0 | - |
| 626 | 636 | 11 | 626 | yes | 0 | 0x1e2-0x209 | 4,5,6,7 | 0 | - |
| 641 | 651 | 11 | 641 | yes | 0 | 0x1f4-0x209 | 7 | 0 | - |
| 656 | 663 | 8 | 656 | yes | 0 | 0x1e3-0x209 | 7 | 0 | - |
| 668 | 689 | 22 | 668 | no | 0 | 0x1e0-0x20d | 4,5,6,7 | 0 | - |
| 694 | 714 | 21 | 694 | yes | 0 | 0x1e0-0x20d | 4,5,6,7 | 0 | - |
| 719 | 729 | 11 | 719 | yes | 0 | 0xf0-0x20e | 4,5,6 | 0 | - |
| 734 | 753 | 20 | 734 | yes | 0 | 0xf0-0x20e | 4,5,6 | 0 | - |
| 758 | 763 | 6 | 758 | yes | 3 | - | - | 0 | - |
| 768 | 787 | 20 | 768 | yes | 0 | 0x1e0-0x20e | 4,5,6 | 0 | - |
| 779 | 787 | 9 | 779 | yes | 0 | 0x1e0-0x20b | 4,5,6 | 0 | - |
| 792 | 886 | 95 | none | no | 22 | 0x1e0-0x20e | 4,5,6,7 | 0 | - |
| 891 | 897 | 7 | 792 | yes | 0 | 0x20e-0x20e | 4,5,6 | 0 | - |
| 902 | 906 | 5 | 803 | yes | 1 | - | - | 0 | - |
| 911 | 915 | 5 | 812 | yes | 2 | - | - | 0 | - |
| 920 | 959 | 40 | 821 | yes | 0 | 0x1e0-0x20e | 4,5,6,7 | 0 | - |
| 931 | 959 | 29 | 832 | yes | 0 | 0x1e0-0x20b | 4,5,7 | 0 | - |
| 964 | 970 | 7 | 865 | yes | 0 | 0x20e-0x20e | 4,5,6 | 0 | - |
| 975 | 981 | 7 | 876 | yes | 0 | - | - | 0 | - |
| 986 | 992 | 7 | 887 | yes | 0 | - | - | 0 | - |
| 997 | 1008 | 12 | 898 | yes | 0 | - | 4,6 | 0 | - |
| 1013 | 1018 | 6 | 914 | yes | 0 | - | - | 0 | - |
| 1023 | 1030 | 8 | 924 | yes | 0 | - | - | 0 | - |
| 1035 | 1040 | 6 | 936 | yes | 0 | - | - | 0 | - |
| 1045 | 1052 | 8 | 946 | yes | 0 | - | - | 0 | - |
| 1057 | 1066 | 10 | 958 | yes | 0 | - | - | 0 | - |
| 1071 | 1089 | 19 | 972 | yes | 0 | 0x1e4-0x20e | 4,5,6,7 | 0 | - |
| 1094 | 1101 | 8 | 995 | yes | 0 | 0x207-0x207 | 4,5,6 | 0 | - |
| 1106 | 1114 | 9 | 1007 | no | 0 | - | 4 | 0 | - |
| 1119 | 1131 | 13 | 1020 | no | 0 | - | 4 | 0 | - |
| 1136 | 1148 | 13 | 1037 | yes | 0 | - | 4 | 0 | - |
| 1153 | 1153 | 1 | 1054 | no | 0 | - | - | 0 | 520, 1158, 1163, 1168, 1173, 1178 ... |
| 1158 | 1158 | 1 | 1059 | no | 0 | - | - | 0 | 520, 1153, 1163, 1168, 1173, 1178 ... |
| 1163 | 1163 | 1 | 1064 | no | 0 | - | - | 0 | 520, 1153, 1158, 1168, 1173, 1178 ... |
| 1168 | 1168 | 1 | 1069 | no | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1173, 1178 ... |
| 1173 | 1173 | 1 | 1074 | yes | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1168, 1178 ... |
| 1178 | 1178 | 1 | 1079 | no | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1168, 1173 ... |
| 1183 | 1183 | 1 | 1084 | no | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1168, 1173 ... |
| 1188 | 1188 | 1 | 1089 | no | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1168, 1173 ... |
| 1193 | 1193 | 1 | 1094 | no | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1168, 1173 ... |
| 1198 | 1206 | 9 | 1099 | yes | 0 | - | - | 0 | - |
| 1200 | 1206 | 7 | 1101 | yes | 0 | - | - | 0 | - |
| 1211 | 1211 | 1 | 1112 | yes | 0 | - | - | 0 | - |
| 1216 | 1216 | 1 | 1117 | yes | 0 | - | - | 0 | - |
| 1221 | 1221 | 1 | 1122 | no | 0 | - | - | 0 | 520, 1153, 1158, 1163, 1168, 1173 ... |
| 1226 | 1260 | 35 | 1127 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 0 | - |
| 1265 | 1281 | 17 | 1166 | no | 0 | 0x1-0xf9 | 4,5,6,7 | 0 | - |
| 1286 | 1290 | 5 | 1187 | no | 0 | 0x80-0x1e5 | 4,5,7 | 0 | - |
| 1295 | 1299 | 5 | 1196 | no | 0 | 0x1e0-0x1e3 | 7 | 0 | - |
| 1304 | 1308 | 5 | 1205 | no | 0 | 0x80-0x85 | 7 | 0 | - |
| 1313 | 1343 | 31 | 1214 | no | 0 | 0x1e1-0x1e1 | - | 1 | - |
| 1348 | 1363 | 16 | 1249 | no | 0 | 0x1e1-0x1e1 | - | 1 | - |
| 1368 | 1385 | 18 | 1269 | no | 0 | - | - | 1 | - |
| 1390 | 1428 | 39 | 1291 | no | 0 | 0x1e1-0x1eb | 7 | 2 | - |
| 1433 | 1452 | 20 | 1334 | no | 0 | 0x1e1-0x1eb | 7 | 1 | - |
| 1457 | 1478 | 22 | 1358 | no | 0 | 0x1e1-0x1eb | 7 | 1 | - |
| 1483 | 1515 | 33 | 1384 | no | 0 | - | - | 2 | - |
| 1520 | 1540 | 21 | 1421 | no | 0 | 0x1e0-0x1e3 | 4,5,6 | 1 | - |
| 1545 | 1575 | 31 | 1446 | no | 0 | 0x1e0-0x1e3 | 4,5,6 | 1 | - |
| 1580 | 1596 | 17 | 1481 | no | 0 | - | - | 1 | - |
| 1601 | 1618 | 18 | 1502 | no | 0 | - | - | 1 | - |
| 1623 | 1645 | 23 | 1524 | no | 0 | 0x1e0-0x1e3 | 4,5,6 | 1 | - |
| 1650 | 1684 | 35 | 1551 | no | 0 | 0x1e0-0x1e3 | 4,5,6 | 1 | - |
| 1689 | 1715 | 27 | 1590 | no | 0 | - | - | 1 | - |
| 1720 | 1747 | 28 | 1621 | no | 0 | - | - | 1 | - |
| 1752 | 1770 | 19 | 1653 | no | 0 | - | - | 1 | - |
| 1775 | 1793 | 19 | 1676 | no | 0 | - | - | 1 | - |
| 1798 | 1823 | 26 | 1699 | no | 0 | - | - | 1 | - |
| 1828 | 1857 | 30 | 1729 | no | 0 | - | - | 1 | - |
| 1862 | 1895 | 34 | 1763 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 1900 | 1950 | 51 | 1801 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 1955 | 1989 | 35 | 1856 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 1994 | 2045 | 52 | 1895 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2050 | 2084 | 35 | 1951 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2089 | 2140 | 52 | 1990 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2145 | 2179 | 35 | 2046 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2184 | 2235 | 52 | 2085 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2240 | 2263 | 24 | 2141 | no | 0 | - | - | 0 | - |
| 2268 | 2295 | 28 | 2169 | no | 0 | - | - | 0 | - |
| 2300 | 2327 | 28 | 2201 | no | 0 | 0x1e1-0x1e1 | - | 1 | - |
| 2332 | 2360 | 29 | 2233 | no | 0 | 0x1e1-0x1e1 | - | 1 | - |
| 2365 | 2403 | 39 | 2266 | no | 1 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2408 | 2471 | 64 | 2309 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2476 | 2515 | 40 | 2377 | no | 0 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2520 | 2585 | 66 | 2421 | no | 3 | 0x1-0x1e3 | 4,5,6,7 | 1 | - |
| 2590 | 2625 | 36 | 2491 | no | 1 | 0x80-0x1e5 | 4,5,6,7 | 1 | - |
| 2630 | 2686 | 57 | 2531 | no | 0 | 0x80-0x1e7 | 4,5,6,7 | 1 | - |
| 2691 | 2727 | 37 | 2592 | no | 1 | 0x80-0x1e9 | 4,5,6,7 | 1 | - |
| 2732 | 2789 | 58 | 2633 | no | 0 | 0x80-0x1ea | 4,5,6,7 | 1 | - |
