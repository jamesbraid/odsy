# Role readings: `usr/cpu/sysgen/IP35boot/kernel.o`

Routine roles read from the whole body of each routine in this object. Cop0 register numbers are the raw register fields of the instructions.

- `resetcounter` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37464
  **Inferred.** Re-arms the timer from the argument in a0 and corrects for any overrun of the Compare value. It saves cop0 register 12 in t5 and writes 0x80 to it. It reads Count (cop0 register 9) into t4 and Compare (cop0 register 11) into t6. When t4 is below t6 it sets a0 to 0x3e8. Otherwise it takes the overrun t4 minus t6 into t0; an overrun above a0 also sets a0 to 0x3e8, and otherwise a0 becomes a0 minus t0. Any a0 below 0x3e8 is raised to 0x3e8. It then writes zero to Count, writes a0 to Compare, restores cop0 register 12 from t5 and returns through ra.

- `initcounter` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x374b8
  **Inferred.** Clears the timer and loads Compare from a0 with no arithmetic on the current count. It saves cop0 register 12 in t5, writes 0x80 to cop0 register 12, writes zero to cop0 register 9 (Count) and a0 to cop0 register 11 (Compare), restores cop0 register 12 from t5 and returns through ra.

- `utlbmiss_sharedseg2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e130
  **Inferred.** TLB refill tail. It forms a page-table address from k1 and k0 as they stand on entry: k1 is shifted right by 6 and then left by 4, k0 is subtracted, and the result is ORed with 0xc000000000000000 (addiu puts 3 in k0, dsll32 by 0x1e shifts it to bit 62). It loads the doubleword at that address plus 8 into k1, writes k1 to cop0 register 3 (EntryLo1 in the MIPS numbering), runs tlbwr to write the TLB entry at a random index, and returns with eret.

Skipped: `eutlbmiss_prolog_mp` at 0x2df1c and `elpg_utlbmiss` at 0x2e030. In this object their table sizes (100 and 80 bytes) hold only zero words (25 and 20 of them), and the symbol table gives size 0, so there is no routine body to read.
